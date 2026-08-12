inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %i.we = icmp slt i32 %.1611.lcssa.us, %4
  br i1 %i.we, label %iter.check1019, label %.loopexit.us

iter.check1019:                                   ; preds = %.preheader95.us
  %i.wf = xor i32 %.1611.lcssa.us, -1
  %i.wg = add i32 %4, %i.wf                       ; 3 uses
  %i.wh = zext i32 %i.wg to i64
  %i.wi = add nuw nsw i64 %i.wh, 1                ; 5 uses
  %min.iters.check992 = icmp ult i32 %i.wg, 3
  br i1 %min.iters.check992, label %.lr.ph274.us.preheader, label %vector.memcheck966

vector.memcheck966:                               ; preds = %iter.check1019
  %scevgep967 = getelementptr i8, ptr %.22.lcssa.us, i64 16
  %i.wj = xor i32 %.1611.lcssa.us, -1
  %i.wk = add i32 %4, %i.wj
  %i.wl = zext i32 %i.wk to i64                   ; 2 uses
  %i.wm = shl nuw nsw i64 %i.wl, 4
  %scevgep968 = getelementptr i8, ptr %scevgep967, i64 %i.wm ; 4 uses
  %scevgep969 = getelementptr i8, ptr %.1614.lcssa.us, i64 4
  %i.wn = shl nuw nsw i64 %i.wl, 2                ; 4 uses
  %scevgep970 = getelementptr i8, ptr %scevgep969, i64 %i.wn
  %scevgep971 = getelementptr i8, ptr %.1617.lcssa.us, i64 4
  %scevgep972 = getelementptr i8, ptr %scevgep971, i64 %i.wn
  %scevgep973 = getelementptr i8, ptr %.1620.lcssa.us, i64 4
  %scevgep974 = getelementptr i8, ptr %scevgep973, i64 %i.wn
  %scevgep975 = getelementptr i8, ptr %.1623.lcssa.us, i64 4
  %scevgep976 = getelementptr i8, ptr %scevgep975, i64 %i.wn
  %bound0977 = icmp ult ptr %.22.lcssa.us, %scevgep970
  %bound1978 = icmp ult ptr %.1614.lcssa.us, %scevgep968
  %found.conflict979 = and i1 %bound0977, %bound1978
  %bound0980 = icmp ult ptr %.22.lcssa.us, %scevgep972
  %bound1981 = icmp ult ptr %.1617.lcssa.us, %scevgep968
  %found.conflict982 = and i1 %bound0980, %bound1981
  %conflict.rdx983 = or i1 %found.conflict979, %found.conflict982
  %bound0984 = icmp ult ptr %.22.lcssa.us, %scevgep974
  %bound1985 = icmp ult ptr %.1620.lcssa.us, %scevgep968
  %found.conflict986 = and i1 %bound0984, %bound1985
  %conflict.rdx987 = or i1 %conflict.rdx983, %found.conflict986
  %bound0988 = icmp ult ptr %.22.lcssa.us, %scevgep976
  %bound1989 = icmp ult ptr %.1623.lcssa.us, %scevgep968
  %found.conflict990 = and i1 %bound0988, %bound1989
  %conflict.rdx991 = or i1 %conflict.rdx987, %found.conflict990
  br i1 %conflict.rdx991, label %.lr.ph274.us.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck966
  %min.iters.check994 = icmp ult i32 %i.wg, 15
  br i1 %min.iters.check994, label %vec.epilog.ph1023, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.wo = and i64 %i.wi, 12
  %n.vec996 = and i64 %i.wi, 8589934576           ; 6 uses
  %i.wp = shl nuw nsw i64 %n.vec996, 4
  %i.wq = getelementptr i8, ptr %.22.lcssa.us, i64 %i.wp ; 2 uses
  %i.wr = trunc i64 %n.vec996 to i32
  %i.ws = add i32 %.1611.lcssa.us, %i.wr
  %i.wt = shl nuw nsw i64 %n.vec996, 2            ; 4 uses
  %i.wu = getelementptr i8, ptr %.1614.lcssa.us, i64 %i.wt
  %i.wv = getelementptr i8, ptr %.1617.lcssa.us, i64 %i.wt
  %i.ww = getelementptr i8, ptr %.1620.lcssa.us, i64 %i.wt
  %i.wx = getelementptr i8, ptr %.1623.lcssa.us, i64 %i.wt
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1009, %vector.body997 ] ; 3 uses
  %i.wy = shl i64 %index998, 4
  %next.gep999 = getelementptr i8, ptr %.22.lcssa.us, i64 %i.wy
  %i.wz = shl i64 %index998, 2                    ; 4 uses
  %next.gep1000 = getelementptr i8, ptr %.1614.lcssa.us, i64 %i.wz
  %next.gep1001 = getelementptr i8, ptr %.1617.lcssa.us, i64 %i.wz
  %next.gep1002 = getelementptr i8, ptr %.1620.lcssa.us, i64 %i.wz
  %next.gep1003 = getelementptr i8, ptr %.1623.lcssa.us, i64 %i.wz
  %wide.load1004 = load <16 x float>, ptr %next.gep1003, align 4, !tbaa !68, !alias.scope !202
  %wide.load1005 = load <16 x float>, ptr %next.gep1002, align 4, !tbaa !68, !alias.scope !205
  %wide.load1006 = load <16 x float>, ptr %next.gep1001, align 4, !tbaa !68, !alias.scope !207
  %wide.load1007 = load <16 x float>, ptr %next.gep1000, align 4, !tbaa !68, !alias.scope !209
  %i.xa = shufflevector <16 x float> %wide.load1004, <16 x float> %wide.load1005, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xb = shufflevector <16 x float> %wide.load1006, <16 x float> %wide.load1007, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1008 = shufflevector <32 x float> %i.xa, <32 x float> %i.xb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec1008, ptr %next.gep999, align 4, !tbaa !68, !alias.scope !211, !noalias !213
  %index.next1009 = add nuw i64 %index998, 16     ; 2 uses
  %i.xc = icmp eq i64 %index.next1009, %n.vec996
  br i1 %i.xc, label %middle.block1010, label %vector.body997, !llvm.loop !214

middle.block1010:                                 ; preds = %vector.body997
  %cmp.n1011 = icmp eq i64 %i.wi, %n.vec996
  br i1 %cmp.n1011, label %.loopexit.us, label %vec.epilog.iter.check1021

vec.epilog.iter.check1021:                        ; preds = %middle.block1010
  %min.epilog.iters.check1022 = icmp eq i64 %i.wo, 0
  br i1 %min.epilog.iters.check1022, label %.lr.ph274.us.preheader, label %vec.epilog.ph1023, !prof !215

vec.epilog.ph1023:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1021
  %vec.epilog.resume.val1012 = phi i64 [ %n.vec996, %vec.epilog.iter.check1021 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1024 = and i64 %i.wi, 8589934588          ; 5 uses
  %i.xd = shl nuw nsw i64 %n.vec1024, 4
  %i.xe = getelementptr i8, ptr %.22.lcssa.us, i64 %i.xd ; 2 uses
  %i.xf = trunc i64 %n.vec1024 to i32
  %i.xg = add i32 %.1611.lcssa.us, %i.xf
  %i.xh = shl nuw nsw i64 %n.vec1024, 2           ; 4 uses
  %i.xi = getelementptr i8, ptr %.1614.lcssa.us, i64 %i.xh
  %i.xj = getelementptr i8, ptr %.1617.lcssa.us, i64 %i.xh
  %i.xk = getelementptr i8, ptr %.1620.lcssa.us, i64 %i.xh
  %i.xl = getelementptr i8, ptr %.1623.lcssa.us, i64 %i.xh
  br label %vec.epilog.vector.body1025

vec.epilog.vector.body1025:                       ; preds = %vec.epilog.vector.body1025, %vec.epilog.ph1023
  %index1026 = phi i64 [ %vec.epilog.resume.val1012, %vec.epilog.ph1023 ], [ %index.next1037, %vec.epilog.vector.body1025 ] ; 3 uses
  %i.xm = shl i64 %index1026, 4
  %next.gep1027 = getelementptr i8, ptr %.22.lcssa.us, i64 %i.xm
  %i.xn = shl i64 %index1026, 2                   ; 4 uses
  %next.gep1028 = getelementptr i8, ptr %.1614.lcssa.us, i64 %i.xn
  %next.gep1029 = getelementptr i8, ptr %.1617.lcssa.us, i64 %i.xn
  %next.gep1030 = getelementptr i8, ptr %.1620.lcssa.us, i64 %i.xn
  %next.gep1031 = getelementptr i8, ptr %.1623.lcssa.us, i64 %i.xn
  %wide.load1032 = load <4 x float>, ptr %next.gep1031, align 4, !tbaa !68, !alias.scope !202
  %wide.load1033 = load <4 x float>, ptr %next.gep1030, align 4, !tbaa !68, !alias.scope !205
  %wide.load1034 = load <4 x float>, ptr %next.gep1029, align 4, !tbaa !68, !alias.scope !207
  %wide.load1035 = load <4 x float>, ptr %next.gep1028, align 4, !tbaa !68, !alias.scope !209
  %i.xo = shufflevector <4 x float> %wide.load1032, <4 x float> %wide.load1033, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <4 x float> %wide.load1034, <4 x float> %wide.load1035, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1036 = shufflevector <8 x float> %i.xo, <8 x float> %i.xp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec1036, ptr %next.gep1027, align 4, !tbaa !68, !alias.scope !211, !noalias !213
  %index.next1037 = add nuw i64 %index1026, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1037, %n.vec1024
  br i1 %i.xq, label %vec.epilog.middle.block1038, label %vec.epilog.vector.body1025, !llvm.loop !216

vec.epilog.middle.block1038:                      ; preds = %vec.epilog.vector.body1025
  %cmp.n1039 = icmp eq i64 %i.wi, %n.vec1024
  br i1 %cmp.n1039, label %.loopexit.us, label %.lr.ph274.us.preheader

.lr.ph274.us.preheader:                           ; preds = %vector.memcheck966, %iter.check1019, %vec.epilog.iter.check1021, %vec.epilog.middle.block1038
  %.23273.us.ph = phi ptr [ %.22.lcssa.us, %iter.check1019 ], [ %.22.lcssa.us, %vector.memcheck966 ], [ %i.wq, %vec.epilog.iter.check1021 ], [ %i.xe, %vec.epilog.middle.block1038 ] ; 6 uses
  %.2612272.us.ph = phi i32 [ %.1611.lcssa.us, %iter.check1019 ], [ %.1611.lcssa.us, %vector.memcheck966 ], [ %i.ws, %vec.epilog.iter.check1021 ], [ %i.xg, %vec.epilog.middle.block1038 ] ; 4 uses
  %.2615271.us.ph = phi ptr [ %.1614.lcssa.us, %iter.check1019 ], [ %.1614.lcssa.us, %vector.memcheck966 ], [ %i.wu, %vec.epilog.iter.check1021 ], [ %i.xi, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2618270.us.ph = phi ptr [ %.1617.lcssa.us, %iter.check1019 ], [ %.1617.lcssa.us, %vector.memcheck966 ], [ %i.wv, %vec.epilog.iter.check1021 ], [ %i.xj, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2621269.us.ph = phi ptr [ %.1620.lcssa.us, %iter.check1019 ], [ %.1620.lcssa.us, %vector.memcheck966 ], [ %i.ww, %vec.epilog.iter.check1021 ], [ %i.xk, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2624268.us.ph = phi ptr [ %.1623.lcssa.us, %iter.check1019 ], [ %.1623.lcssa.us, %vector.memcheck966 ], [ %i.wx, %vec.epilog.iter.check1021 ], [ %i.xl, %vec.epilog.middle.block1038 ] ; 3 uses
  %i.xr = sub i32 %4, %.2612272.us.ph
  %.neg = add i32 %.2612272.us.ph, 1
  %xtraiter1250 = and i32 %i.xr, 1
  %lcmp.mod1251.not = icmp eq i32 %xtraiter1250, 0
  br i1 %lcmp.mod1251.not, label %.lr.ph274.us.prol.loopexit, label %.lr.ph274.us.prol

.lr.ph274.us.prol:                                ; preds = %.lr.ph274.us.preheader
  %i.xs = load float, ptr %.2624268.us.ph, align 4, !tbaa !68
  store float %i.xs, ptr %.23273.us.ph, align 4, !tbaa !68
  %i.xt = load float, ptr %.2621269.us.ph, align 4, !tbaa !68
  %i.xu = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !68
  %i.xv = load float, ptr %.2618270.us.ph, align 4, !tbaa !68
  %i.xw = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 8
  store float %i.xv, ptr %i.xw, align 4, !tbaa !68
  %i.xx = load float, ptr %.2615271.us.ph, align 4, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 12
  store float %i.xx, ptr %i.xy, align 4, !tbaa !68
  %i.xz = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.2624268.us.ph, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.2621269.us.ph, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.2618270.us.ph, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %.2615271.us.ph, i64 4
  %i.ye = add nuw nsw i32 %.2612272.us.ph, 1
  br label %.lr.ph274.us.prol.loopexit

.lr.ph274.us.prol.loopexit:                       ; preds = %.lr.ph274.us.prol, %.lr.ph274.us.preheader
  %.lcssa1167.unr = phi ptr [ poison, %.lr.ph274.us.preheader ], [ %i.xz, %.lr.ph274.us.prol ]
  %.23273.us.unr = phi ptr [ %.23273.us.ph, %.lr.ph274.us.preheader ], [ %i.xz, %.lr.ph274.us.prol ]
  %.2612272.us.unr = phi i32 [ %.2612272.us.ph, %.lr.ph274.us.preheader ], [ %i.ye, %.lr.ph274.us.prol ]
  %.2615271.us.unr = phi ptr [ %.2615271.us.ph, %.lr.ph274.us.preheader ], [ %i.yd, %.lr.ph274.us.prol ]
  %.2618270.us.unr = phi ptr [ %.2618270.us.ph, %.lr.ph274.us.preheader ], [ %i.yc, %.lr.ph274.us.prol ]
  %.2621269.us.unr = phi ptr [ %.2621269.us.ph, %.lr.ph274.us.preheader ], [ %i.yb, %.lr.ph274.us.prol ]
  %.2624268.us.unr = phi ptr [ %.2624268.us.ph, %.lr.ph274.us.preheader ], [ %i.ya, %.lr.ph274.us.prol ]
  %i.yf = icmp eq i32 %4, %.neg
  br i1 %i.yf, label %.loopexit.us, label %.lr.ph274.us

.loopexit.us:                                     ; preds = %.lr.ph274.us.prol.loopexit, %.lr.ph274.us, %middle.block1010, %vec.epilog.middle.block1038, %.preheader95.us
  %.23.lcssa.us = phi ptr [ %.22.lcssa.us, %.preheader95.us ], [ %i.xe, %vec.epilog.middle.block1038 ], [ %i.wq, %middle.block1010 ], [ %.lcssa1167.unr, %.lr.ph274.us.prol.loopexit ], [ %i.vy, %.lr.ph274.us ] ; 2 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 4 ; 3 uses
  %i.yg = icmp slt i64 %indvars.iv.next446, %invariant.op546
  br i1 %i.yg, label %.lr.ph278.split.us, label %.preheader94.loopexit, !llvm.loop !217

.preheader96.us:                                  ; preds = %.lr.ph248.us, %.loopexit97.us.thread, %.loopexit97.us
  %.0622.lcssa.us = phi ptr [ %i.sy, %.loopexit97.us ], [ %i.rh, %.loopexit97.us.thread ], [ %i.ub, %.lr.ph248.us ] ; 2 uses
  %.0619.lcssa.us = phi ptr [ %i.tc, %.loopexit97.us ], [ %i.rl, %.loopexit97.us.thread ], [ %i.uc, %.lr.ph248.us ] ; 2 uses
  %.0616.lcssa.us = phi ptr [ %i.tg, %.loopexit97.us ], [ %i.rp, %.loopexit97.us.thread ], [ %i.ud, %.lr.ph248.us ] ; 2 uses
  %.0613.lcssa.us = phi ptr [ %i.tk, %.loopexit97.us ], [ %i.rt, %.loopexit97.us.thread ], [ %i.ue, %.lr.ph248.us ] ; 2 uses
  %.0610.lcssa.us = phi i32 [ 0, %.loopexit97.us ], [ 0, %.loopexit97.us.thread ], [ %i.qy, %.lr.ph248.us ] ; 3 uses
  %.21.lcssa.us = phi ptr [ %.20.us, %.loopexit97.us ], [ %.18277.us, %.loopexit97.us.thread ], [ %i.ua, %.lr.ph248.us ] ; 2 uses
  %i.yh = or disjoint i32 %.0610.lcssa.us, 3
  %i.yi = icmp slt i32 %i.yh, %4
  br i1 %i.yi, label %.lr.ph261.us, label %.preheader95.us

.lr.ph278.split:                                  ; preds = %.lr.ph278
  br i1 %i.qr, label %.lr.ph278.split.split.us, label %.lr.ph278.split.split.preheader

.lr.ph278.split.split.preheader:                  ; preds = %.lr.ph278.split
  %i.yj = add nuw i32 %.1587.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.yj)
  %i.yk = add i32 %smax, -4
  %i.yl = sub i32 %i.yk, %.1587.lcssa
  %i.ym = and i32 %i.yl, -4
  %i.yn = add nuw i32 %.1587.lcssa, %i.ym
  %i.yo = add nuw i32 %i.yn, 4
  br label %.preheader94

.lr.ph278.split.split.us:                         ; preds = %.lr.ph278.split
  br i1 %i.qu, label %.lr.ph240.us290.us.preheader, label %.loopexit97.us288.preheader

.loopexit97.us288.preheader:                      ; preds = %.lr.ph278.split.split.us
  %i.yp = add nuw i32 %.1587.lcssa, 7
  %smax438 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.yp)
  %i.yq = add i32 %smax438, -4
  %i.yr = sub i32 %i.yq, %.1587.lcssa
  %i.ys = and i32 %i.yr, -4
  %i.yt = add nuw i32 %.1587.lcssa, %i.ys
  %i.yu = add nuw i32 %i.yt, 4
  br label %.preheader94

.lr.ph240.us290.us.preheader:                     ; preds = %.lr.ph278.split.split.us
  %i.yv = zext nneg i32 %.1587.lcssa to i64
  %i.yw = sext i32 %1 to i64
  %i.yx = sext i32 %2 to i64
  %invariant.op545 = add nsw i64 %i.yx, -3
  %i.yy = add nsw i32 %4, -1
  %xtraiter1236 = and i32 %4, 7                   ; 3 uses
  %i.yz = icmp ult i32 %i.yy, 7
  %unroll_iter1241 = and i32 %4, 2147483640
  %lcmp.mod1238.not = icmp eq i32 %xtraiter1236, 0
  %lcmp.mod1240 = icmp ne i32 %xtraiter1236, 0
  br label %.lr.ph240.us290.us

.lr.ph240.us290.us:                               ; preds = %.lr.ph240.us290.us.preheader, %..loopexit97_crit_edge.us291.us
  %indvars.iv440 = phi i64 [ %i.yv, %.lr.ph240.us290.us.preheader ], [ %indvars.iv.next441, %..loopexit97_crit_edge.us291.us ] ; 2 uses
  %.18277.us282.us = phi ptr [ %.10.lcssa, %.lr.ph240.us290.us.preheader ], [ %.lcssa1168, %..loopexit97_crit_edge.us291.us ] ; 2 uses
  %i.za = load ptr, ptr %0, align 8, !tbaa !18
  %i.zb = add nsw i64 %indvars.iv440, %i.yw
  %i.zc = mul i64 %i.k, %i.zb
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zc
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.qt ; 2 uses
  br i1 %i.yz, label %.epil.preheader, label %.lr.ph240.us290.us.new

.lr.ph240.us290.us.new:                           ; preds = %.lr.ph240.us290.us, %.lr.ph240.us290.us.new
  %.19239.us284.us = phi ptr [ %i.aab, %.lr.ph240.us290.us.new ], [ %.18277.us282.us, %.lr.ph240.us290.us ] ; 9 uses
  %.0626237.us286.us = phi ptr [ %i.aac, %.lr.ph240.us290.us.new ], [ %i.ze, %.lr.ph240.us290.us ] ; 9 uses
  %niter1242 = phi i32 [ %niter1242.next.7, %.lr.ph240.us290.us.new ], [ 0, %.lr.ph240.us290.us ]
  %i.zf = load <4 x float>, ptr %.0626237.us286.us, align 16, !tbaa !116
  store <4 x float> %i.zf, ptr %.19239.us284.us, align 16, !tbaa !116
  %i.zg = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 16
  %i.zi = load <4 x float>, ptr %i.zh, align 16, !tbaa !116
  store <4 x float> %i.zi, ptr %i.zg, align 16, !tbaa !116
  %i.zj = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 32
  %i.zl = load <4 x float>, ptr %i.zk, align 16, !tbaa !116
  store <4 x float> %i.zl, ptr %i.zj, align 16, !tbaa !116
  %i.zm = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 48
  %i.zn = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 48
  %i.zo = load <4 x float>, ptr %i.zn, align 16, !tbaa !116
  store <4 x float> %i.zo, ptr %i.zm, align 16, !tbaa !116
  %i.zp = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 64
  %i.zr = load <4 x float>, ptr %i.zq, align 16, !tbaa !116
  store <4 x float> %i.zr, ptr %i.zp, align 16, !tbaa !116
  %i.zs = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 80
  %i.zt = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 80
  %i.zu = load <4 x float>, ptr %i.zt, align 16, !tbaa !116
  store <4 x float> %i.zu, ptr %i.zs, align 16, !tbaa !116
  %i.zv = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 96
  %i.zw = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 96
  %i.zx = load <4 x float>, ptr %i.zw, align 16, !tbaa !116
  store <4 x float> %i.zx, ptr %i.zv, align 16, !tbaa !116
  %i.zy = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 112
  %i.zz = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 112
  %i.aaa = load <4 x float>, ptr %i.zz, align 16, !tbaa !116
  store <4 x float> %i.aaa, ptr %i.zy, align 16, !tbaa !116
  %i.aab = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 128 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0626237.us286.us, i64 128 ; 2 uses
  %niter1242.next.7 = add nuw nsw i32 %niter1242, 8 ; 2 uses
  %niter1242.ncmp.7 = icmp eq i32 %niter1242.next.7, %unroll_iter1241
  br i1 %niter1242.ncmp.7, label %..loopexit97_crit_edge.us291.us.unr-lcssa, label %.lr.ph240.us290.us.new, !llvm.loop !197

..loopexit97_crit_edge.us291.us.unr-lcssa:        ; preds = %.lr.ph240.us290.us.new
  br i1 %lcmp.mod1238.not, label %..loopexit97_crit_edge.us291.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit97_crit_edge.us291.us.unr-lcssa, %.lr.ph240.us290.us
  %.19239.us284.us.epil.init = phi ptr [ %.18277.us282.us, %.lr.ph240.us290.us ], [ %i.aab, %..loopexit97_crit_edge.us291.us.unr-lcssa ]
  %.0626237.us286.us.epil.init = phi ptr [ %i.ze, %.lr.ph240.us290.us ], [ %i.aac, %..loopexit97_crit_edge.us291.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1240)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.19239.us284.us.epil = phi ptr [ %.19239.us284.us.epil.init, %.epil.preheader ], [ %i.aae, %bb.h ] ; 2 uses
  %.0626237.us286.us.epil = phi ptr [ %.0626237.us286.us.epil.init, %.epil.preheader ], [ %i.aaf, %bb.h ] ; 2 uses
  %epil.iter1237 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1237.next, %bb.h ]
  %i.aad = load <4 x float>, ptr %.0626237.us286.us.epil, align 16, !tbaa !116
  store <4 x float> %i.aad, ptr %.19239.us284.us.epil, align 16, !tbaa !116
  %i.aae = getelementptr inbounds nuw i8, ptr %.19239.us284.us.epil, i64 16 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0626237.us286.us.epil, i64 16
  %epil.iter1237.next = add i32 %epil.iter1237, 1 ; 2 uses
  %epil.iter1237.cmp.not = icmp eq i32 %epil.iter1237.next, %xtraiter1236
  br i1 %epil.iter1237.cmp.not, label %..loopexit97_crit_edge.us291.us, label %bb.h, !llvm.loop !218

..loopexit97_crit_edge.us291.us:                  ; preds = %bb.h, %..loopexit97_crit_edge.us291.us.unr-lcssa
  %.lcssa1168 = phi ptr [ %i.aab, %..loopexit97_crit_edge.us291.us.unr-lcssa ], [ %i.aae, %bb.h ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 4 ; 3 uses
  %i.aag = icmp slt i64 %indvars.iv.next441, %invariant.op545
  br i1 %i.aag, label %.lr.ph240.us290.us, label %.preheader94.loopexit353, !llvm.loop !217

bb.i:                                             ; preds = %.lr.ph234, %.loopexit100
  %indvars.iv435 = phi i64 [ %i.aq, %.lr.ph234 ], [ %indvars.iv.next436, %.loopexit100 ] ; 4 uses
  %.10233 = phi ptr [ %.0583.lcssa, %.lr.ph234 ], [ %.17, %.loopexit100 ] ; 9 uses
  switch i32 %i.b, label %.loopexit100 [
    i32 8, label %bb.j
    i32 4, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph191.preheader, label %.loopexit100

.lr.ph191.preheader:                              ; preds = %bb.j
  %i.aah = load ptr, ptr %0, align 8, !tbaa !18
  %i.aai = add nsw i64 %indvars.iv435, %i.as
  %i.aaj = mul i64 %i.k, %i.aai
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.aaj
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.aak, i64 %i.aj ; 2 uses
  br i1 %i.av, label %.lr.ph191.epil.preheader, label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %.lr.ph191
  %.11190 = phi ptr [ %i.abi, %.lr.ph191 ], [ %.10233, %.lr.ph191.preheader ] ; 9 uses
  %.0649188 = phi ptr [ %i.abj, %.lr.ph191 ], [ %i.aal, %.lr.ph191.preheader ] ; 9 uses
  %niter1235 = phi i32 [ %niter1235.next.7, %.lr.ph191 ], [ 0, %.lr.ph191.preheader ]
  %i.aam = load <8 x float>, ptr %.0649188, align 32, !tbaa !116
  store <8 x float> %i.aam, ptr %.11190, align 32, !tbaa !116
  %i.aan = getelementptr inbounds nuw i8, ptr %.11190, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %.0649188, i64 32
  %i.aap = load <8 x float>, ptr %i.aao, align 32, !tbaa !116
  store <8 x float> %i.aap, ptr %i.aan, align 32, !tbaa !116
  %i.aaq = getelementptr inbounds nuw i8, ptr %.11190, i64 64
  %i.aar = getelementptr inbounds nuw i8, ptr %.0649188, i64 64
  %i.aas = load <8 x float>, ptr %i.aar, align 32, !tbaa !116
  store <8 x float> %i.aas, ptr %i.aaq, align 32, !tbaa !116
  %i.aat = getelementptr inbounds nuw i8, ptr %.11190, i64 96
  %i.aau = getelementptr inbounds nuw i8, ptr %.0649188, i64 96
  %i.aav = load <8 x float>, ptr %i.aau, align 32, !tbaa !116
  store <8 x float> %i.aav, ptr %i.aat, align 32, !tbaa !116
  %i.aaw = getelementptr inbounds nuw i8, ptr %.11190, i64 128
  %i.aax = getelementptr inbounds nuw i8, ptr %.0649188, i64 128
  %i.aay = load <8 x float>, ptr %i.aax, align 32, !tbaa !116
  store <8 x float> %i.aay, ptr %i.aaw, align 32, !tbaa !116
  %i.aaz = getelementptr inbounds nuw i8, ptr %.11190, i64 160
  %i.aba = getelementptr inbounds nuw i8, ptr %.0649188, i64 160
  %i.abb = load <8 x float>, ptr %i.aba, align 32, !tbaa !116
  store <8 x float> %i.abb, ptr %i.aaz, align 32, !tbaa !116
  %i.abc = getelementptr inbounds nuw i8, ptr %.11190, i64 192
  %i.abd = getelementptr inbounds nuw i8, ptr %.0649188, i64 192
  %i.abe = load <8 x float>, ptr %i.abd, align 32, !tbaa !116
  store <8 x float> %i.abe, ptr %i.abc, align 32, !tbaa !116
  %i.abf = getelementptr inbounds nuw i8, ptr %.11190, i64 224
  %i.abg = getelementptr inbounds nuw i8, ptr %.0649188, i64 224
  %i.abh = load <8 x float>, ptr %i.abg, align 32, !tbaa !116
  store <8 x float> %i.abh, ptr %i.abf, align 32, !tbaa !116
  %i.abi = getelementptr inbounds nuw i8, ptr %.11190, i64 256 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0649188, i64 256 ; 2 uses
  %niter1235.next.7 = add nuw nsw i32 %niter1235, 8 ; 2 uses
  %niter1235.ncmp.7 = icmp eq i32 %niter1235.next.7, %unroll_iter1234
  br i1 %niter1235.ncmp.7, label %.loopexit100.loopexit.unr-lcssa, label %.lr.ph191, !llvm.loop !219

bb.k:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph197.preheader, label %.loopexit100

.lr.ph197.preheader:                              ; preds = %bb.k
  %i.abk = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.abl = add nsw i64 %indvars.iv435, %i.as      ; 2 uses
  %i.abm = add nsw i64 %i.abl, 4
  %i.abn = mul i64 %i.k, %i.abm
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abn
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abo, i64 %i.am ; 2 uses
  %i.abq = mul i64 %i.k, %i.abl
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abq
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.am ; 2 uses
  br i1 %i.au, label %.lr.ph197.epil.preheader, label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %.lr.ph197
  %.13196 = phi ptr [ %i.aco, %.lr.ph197 ], [ %.10233, %.lr.ph197.preheader ] ; 9 uses
  %.0646194 = phi ptr [ %i.acq, %.lr.ph197 ], [ %i.abp, %.lr.ph197.preheader ] ; 5 uses
  %.0647193 = phi ptr [ %i.acp, %.lr.ph197 ], [ %i.abs, %.lr.ph197.preheader ] ; 5 uses
  %niter1228 = phi i32 [ %niter1228.next.3, %.lr.ph197 ], [ 0, %.lr.ph197.preheader ]
  %i.abt = load <4 x float>, ptr %.0647193, align 16, !tbaa !116
  store <4 x float> %i.abt, ptr %.13196, align 16, !tbaa !116
  %i.abu = getelementptr inbounds nuw i8, ptr %.13196, i64 16
  %i.abv = load <4 x float>, ptr %.0646194, align 16, !tbaa !116
  store <4 x float> %i.abv, ptr %i.abu, align 16, !tbaa !116
  %i.abw = getelementptr inbounds nuw i8, ptr %.13196, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %.0647193, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %.0646194, i64 16
  %i.abz = load <4 x float>, ptr %i.abx, align 16, !tbaa !116
  store <4 x float> %i.abz, ptr %i.abw, align 16, !tbaa !116
  %i.aca = getelementptr inbounds nuw i8, ptr %.13196, i64 48
  %i.acb = load <4 x float>, ptr %i.aby, align 16, !tbaa !116
  store <4 x float> %i.acb, ptr %i.aca, align 16, !tbaa !116
  %i.acc = getelementptr inbounds nuw i8, ptr %.13196, i64 64
  %i.acd = getelementptr inbounds nuw i8, ptr %.0647193, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %.0646194, i64 32
  %i.acf = load <4 x float>, ptr %i.acd, align 16, !tbaa !116
  store <4 x float> %i.acf, ptr %i.acc, align 16, !tbaa !116
  %i.acg = getelementptr inbounds nuw i8, ptr %.13196, i64 80
  %i.ach = load <4 x float>, ptr %i.ace, align 16, !tbaa !116
  store <4 x float> %i.ach, ptr %i.acg, align 16, !tbaa !116
  %i.aci = getelementptr inbounds nuw i8, ptr %.13196, i64 96
  %i.acj = getelementptr inbounds nuw i8, ptr %.0647193, i64 48
  %i.ack = getelementptr inbounds nuw i8, ptr %.0646194, i64 48
  %i.acl = load <4 x float>, ptr %i.acj, align 16, !tbaa !116
  store <4 x float> %i.acl, ptr %i.aci, align 16, !tbaa !116
  %i.acm = getelementptr inbounds nuw i8, ptr %.13196, i64 112
  %i.acn = load <4 x float>, ptr %i.ack, align 16, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %i.we = icmp slt i32 %.1679.lcssa.us, %4
  br i1 %i.we, label %iter.check1071, label %.loopexit.us

iter.check1071:                                   ; preds = %.preheader95.us
  %i.wf = xor i32 %.1679.lcssa.us, -1
  %i.wg = add i32 %4, %i.wf                       ; 3 uses
  %i.wh = zext i32 %i.wg to i64
  %i.wi = add nuw nsw i64 %i.wh, 1                ; 5 uses
  %min.iters.check1044 = icmp ult i32 %i.wg, 3
  br i1 %min.iters.check1044, label %.lr.ph296.us.preheader, label %vector.memcheck1018

vector.memcheck1018:                              ; preds = %iter.check1071
  %scevgep1019 = getelementptr i8, ptr %.23.lcssa.us, i64 16
  %i.wj = xor i32 %.1679.lcssa.us, -1
  %i.wk = add i32 %4, %i.wj
  %i.wl = zext i32 %i.wk to i64                   ; 2 uses
  %i.wm = shl nuw nsw i64 %i.wl, 4
  %scevgep1020 = getelementptr i8, ptr %scevgep1019, i64 %i.wm ; 4 uses
  %scevgep1021 = getelementptr i8, ptr %.1682.lcssa.us, i64 4
  %i.wn = shl nuw nsw i64 %i.wl, 2                ; 4 uses
  %scevgep1022 = getelementptr i8, ptr %scevgep1021, i64 %i.wn
  %scevgep1023 = getelementptr i8, ptr %.1685.lcssa.us, i64 4
  %scevgep1024 = getelementptr i8, ptr %scevgep1023, i64 %i.wn
  %scevgep1025 = getelementptr i8, ptr %.1688.lcssa.us, i64 4
  %scevgep1026 = getelementptr i8, ptr %scevgep1025, i64 %i.wn
  %scevgep1027 = getelementptr i8, ptr %.1691.lcssa.us, i64 4
  %scevgep1028 = getelementptr i8, ptr %scevgep1027, i64 %i.wn
  %bound01029 = icmp ult ptr %.23.lcssa.us, %scevgep1022
  %bound11030 = icmp ult ptr %.1682.lcssa.us, %scevgep1020
  %found.conflict1031 = and i1 %bound01029, %bound11030
  %bound01032 = icmp ult ptr %.23.lcssa.us, %scevgep1024
  %bound11033 = icmp ult ptr %.1685.lcssa.us, %scevgep1020
  %found.conflict1034 = and i1 %bound01032, %bound11033
  %conflict.rdx1035 = or i1 %found.conflict1031, %found.conflict1034
  %bound01036 = icmp ult ptr %.23.lcssa.us, %scevgep1026
  %bound11037 = icmp ult ptr %.1688.lcssa.us, %scevgep1020
  %found.conflict1038 = and i1 %bound01036, %bound11037
  %conflict.rdx1039 = or i1 %conflict.rdx1035, %found.conflict1038
  %bound01040 = icmp ult ptr %.23.lcssa.us, %scevgep1028
  %bound11041 = icmp ult ptr %.1691.lcssa.us, %scevgep1020
  %found.conflict1042 = and i1 %bound01040, %bound11041
  %conflict.rdx1043 = or i1 %conflict.rdx1039, %found.conflict1042
  br i1 %conflict.rdx1043, label %.lr.ph296.us.preheader, label %vector.main.loop.iter.check1045

vector.main.loop.iter.check1045:                  ; preds = %vector.memcheck1018
  %min.iters.check1046 = icmp ult i32 %i.wg, 15
  br i1 %min.iters.check1046, label %vec.epilog.ph1075, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.main.loop.iter.check1045
  %i.wo = and i64 %i.wi, 12
  %n.vec1048 = and i64 %i.wi, 8589934576          ; 6 uses
  %i.wp = shl nuw nsw i64 %n.vec1048, 4
  %i.wq = getelementptr i8, ptr %.23.lcssa.us, i64 %i.wp ; 2 uses
  %i.wr = trunc i64 %n.vec1048 to i32
  %i.ws = add i32 %.1679.lcssa.us, %i.wr
  %i.wt = shl nuw nsw i64 %n.vec1048, 2           ; 4 uses
  %i.wu = getelementptr i8, ptr %.1682.lcssa.us, i64 %i.wt
  %i.wv = getelementptr i8, ptr %.1685.lcssa.us, i64 %i.wt
  %i.ww = getelementptr i8, ptr %.1688.lcssa.us, i64 %i.wt
  %i.wx = getelementptr i8, ptr %.1691.lcssa.us, i64 %i.wt
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1061, %vector.body1049 ] ; 3 uses
  %i.wy = shl i64 %index1050, 4
  %next.gep1051 = getelementptr i8, ptr %.23.lcssa.us, i64 %i.wy
  %i.wz = shl i64 %index1050, 2                   ; 4 uses
  %next.gep1052 = getelementptr i8, ptr %.1682.lcssa.us, i64 %i.wz
  %next.gep1053 = getelementptr i8, ptr %.1685.lcssa.us, i64 %i.wz
  %next.gep1054 = getelementptr i8, ptr %.1688.lcssa.us, i64 %i.wz
  %next.gep1055 = getelementptr i8, ptr %.1691.lcssa.us, i64 %i.wz
  %wide.load1056 = load <16 x float>, ptr %next.gep1055, align 4, !tbaa !68, !alias.scope !327
  %wide.load1057 = load <16 x float>, ptr %next.gep1054, align 4, !tbaa !68, !alias.scope !330
  %wide.load1058 = load <16 x float>, ptr %next.gep1053, align 4, !tbaa !68, !alias.scope !332
  %wide.load1059 = load <16 x float>, ptr %next.gep1052, align 4, !tbaa !68, !alias.scope !334
  %i.xa = shufflevector <16 x float> %wide.load1056, <16 x float> %wide.load1057, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xb = shufflevector <16 x float> %wide.load1058, <16 x float> %wide.load1059, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1060 = shufflevector <32 x float> %i.xa, <32 x float> %i.xb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec1060, ptr %next.gep1051, align 4, !tbaa !68, !alias.scope !336, !noalias !338
  %index.next1061 = add nuw i64 %index1050, 16    ; 2 uses
  %i.xc = icmp eq i64 %index.next1061, %n.vec1048
  br i1 %i.xc, label %middle.block1062, label %vector.body1049, !llvm.loop !339

middle.block1062:                                 ; preds = %vector.body1049
  %cmp.n1063 = icmp eq i64 %i.wi, %n.vec1048
  br i1 %cmp.n1063, label %.loopexit.us, label %vec.epilog.iter.check1073

vec.epilog.iter.check1073:                        ; preds = %middle.block1062
  %min.epilog.iters.check1074 = icmp eq i64 %i.wo, 0
  br i1 %min.epilog.iters.check1074, label %.lr.ph296.us.preheader, label %vec.epilog.ph1075, !prof !215

vec.epilog.ph1075:                                ; preds = %vector.main.loop.iter.check1045, %vec.epilog.iter.check1073
  %vec.epilog.resume.val1064 = phi i64 [ %n.vec1048, %vec.epilog.iter.check1073 ], [ 0, %vector.main.loop.iter.check1045 ]
  %n.vec1076 = and i64 %i.wi, 8589934588          ; 5 uses
  %i.xd = shl nuw nsw i64 %n.vec1076, 4
  %i.xe = getelementptr i8, ptr %.23.lcssa.us, i64 %i.xd ; 2 uses
  %i.xf = trunc i64 %n.vec1076 to i32
  %i.xg = add i32 %.1679.lcssa.us, %i.xf
  %i.xh = shl nuw nsw i64 %n.vec1076, 2           ; 4 uses
  %i.xi = getelementptr i8, ptr %.1682.lcssa.us, i64 %i.xh
  %i.xj = getelementptr i8, ptr %.1685.lcssa.us, i64 %i.xh
  %i.xk = getelementptr i8, ptr %.1688.lcssa.us, i64 %i.xh
  %i.xl = getelementptr i8, ptr %.1691.lcssa.us, i64 %i.xh
  br label %vec.epilog.vector.body1077

vec.epilog.vector.body1077:                       ; preds = %vec.epilog.vector.body1077, %vec.epilog.ph1075
  %index1078 = phi i64 [ %vec.epilog.resume.val1064, %vec.epilog.ph1075 ], [ %index.next1089, %vec.epilog.vector.body1077 ] ; 3 uses
  %i.xm = shl i64 %index1078, 4
  %next.gep1079 = getelementptr i8, ptr %.23.lcssa.us, i64 %i.xm
  %i.xn = shl i64 %index1078, 2                   ; 4 uses
  %next.gep1080 = getelementptr i8, ptr %.1682.lcssa.us, i64 %i.xn
  %next.gep1081 = getelementptr i8, ptr %.1685.lcssa.us, i64 %i.xn
  %next.gep1082 = getelementptr i8, ptr %.1688.lcssa.us, i64 %i.xn
  %next.gep1083 = getelementptr i8, ptr %.1691.lcssa.us, i64 %i.xn
  %wide.load1084 = load <4 x float>, ptr %next.gep1083, align 4, !tbaa !68, !alias.scope !327
  %wide.load1085 = load <4 x float>, ptr %next.gep1082, align 4, !tbaa !68, !alias.scope !330
  %wide.load1086 = load <4 x float>, ptr %next.gep1081, align 4, !tbaa !68, !alias.scope !332
  %wide.load1087 = load <4 x float>, ptr %next.gep1080, align 4, !tbaa !68, !alias.scope !334
  %i.xo = shufflevector <4 x float> %wide.load1084, <4 x float> %wide.load1085, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <4 x float> %wide.load1086, <4 x float> %wide.load1087, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1088 = shufflevector <8 x float> %i.xo, <8 x float> %i.xp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec1088, ptr %next.gep1079, align 4, !tbaa !68, !alias.scope !336, !noalias !338
  %index.next1089 = add nuw i64 %index1078, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1089, %n.vec1076
  br i1 %i.xq, label %vec.epilog.middle.block1090, label %vec.epilog.vector.body1077, !llvm.loop !340

vec.epilog.middle.block1090:                      ; preds = %vec.epilog.vector.body1077
  %cmp.n1091 = icmp eq i64 %i.wi, %n.vec1076
  br i1 %cmp.n1091, label %.loopexit.us, label %.lr.ph296.us.preheader

.lr.ph296.us.preheader:                           ; preds = %vector.memcheck1018, %iter.check1071, %vec.epilog.iter.check1073, %vec.epilog.middle.block1090
  %.24295.us.ph = phi ptr [ %.23.lcssa.us, %iter.check1071 ], [ %.23.lcssa.us, %vector.memcheck1018 ], [ %i.wq, %vec.epilog.iter.check1073 ], [ %i.xe, %vec.epilog.middle.block1090 ] ; 6 uses
  %.2680294.us.ph = phi i32 [ %.1679.lcssa.us, %iter.check1071 ], [ %.1679.lcssa.us, %vector.memcheck1018 ], [ %i.ws, %vec.epilog.iter.check1073 ], [ %i.xg, %vec.epilog.middle.block1090 ] ; 4 uses
  %.2683293.us.ph = phi ptr [ %.1682.lcssa.us, %iter.check1071 ], [ %.1682.lcssa.us, %vector.memcheck1018 ], [ %i.wu, %vec.epilog.iter.check1073 ], [ %i.xi, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2686292.us.ph = phi ptr [ %.1685.lcssa.us, %iter.check1071 ], [ %.1685.lcssa.us, %vector.memcheck1018 ], [ %i.wv, %vec.epilog.iter.check1073 ], [ %i.xj, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2689291.us.ph = phi ptr [ %.1688.lcssa.us, %iter.check1071 ], [ %.1688.lcssa.us, %vector.memcheck1018 ], [ %i.ww, %vec.epilog.iter.check1073 ], [ %i.xk, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2692290.us.ph = phi ptr [ %.1691.lcssa.us, %iter.check1071 ], [ %.1691.lcssa.us, %vector.memcheck1018 ], [ %i.wx, %vec.epilog.iter.check1073 ], [ %i.xl, %vec.epilog.middle.block1090 ] ; 3 uses
  %i.xr = sub i32 %4, %.2680294.us.ph
  %.neg = add i32 %.2680294.us.ph, 1
  %xtraiter1312 = and i32 %i.xr, 1
  %lcmp.mod1313.not = icmp eq i32 %xtraiter1312, 0
  br i1 %lcmp.mod1313.not, label %.lr.ph296.us.prol.loopexit, label %.lr.ph296.us.prol

.lr.ph296.us.prol:                                ; preds = %.lr.ph296.us.preheader
  %i.xs = load float, ptr %.2692290.us.ph, align 4, !tbaa !68
  store float %i.xs, ptr %.24295.us.ph, align 4, !tbaa !68
  %i.xt = load float, ptr %.2689291.us.ph, align 4, !tbaa !68
  %i.xu = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !68
  %i.xv = load float, ptr %.2686292.us.ph, align 4, !tbaa !68
  %i.xw = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 8
  store float %i.xv, ptr %i.xw, align 4, !tbaa !68
  %i.xx = load float, ptr %.2683293.us.ph, align 4, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 12
  store float %i.xx, ptr %i.xy, align 4, !tbaa !68
  %i.xz = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.2692290.us.ph, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.2689291.us.ph, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.2686292.us.ph, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %.2683293.us.ph, i64 4
  %i.ye = add nuw nsw i32 %.2680294.us.ph, 1
  br label %.lr.ph296.us.prol.loopexit

.lr.ph296.us.prol.loopexit:                       ; preds = %.lr.ph296.us.prol, %.lr.ph296.us.preheader
  %.lcssa1219.unr = phi ptr [ poison, %.lr.ph296.us.preheader ], [ %i.xz, %.lr.ph296.us.prol ]
  %.24295.us.unr = phi ptr [ %.24295.us.ph, %.lr.ph296.us.preheader ], [ %i.xz, %.lr.ph296.us.prol ]
  %.2680294.us.unr = phi i32 [ %.2680294.us.ph, %.lr.ph296.us.preheader ], [ %i.ye, %.lr.ph296.us.prol ]
  %.2683293.us.unr = phi ptr [ %.2683293.us.ph, %.lr.ph296.us.preheader ], [ %i.yd, %.lr.ph296.us.prol ]
  %.2686292.us.unr = phi ptr [ %.2686292.us.ph, %.lr.ph296.us.preheader ], [ %i.yc, %.lr.ph296.us.prol ]
  %.2689291.us.unr = phi ptr [ %.2689291.us.ph, %.lr.ph296.us.preheader ], [ %i.yb, %.lr.ph296.us.prol ]
  %.2692290.us.unr = phi ptr [ %.2692290.us.ph, %.lr.ph296.us.preheader ], [ %i.ya, %.lr.ph296.us.prol ]
  %i.yf = icmp eq i32 %4, %.neg
  br i1 %i.yf, label %.loopexit.us, label %.lr.ph296.us

.loopexit.us:                                     ; preds = %.lr.ph296.us.prol.loopexit, %.lr.ph296.us, %middle.block1062, %vec.epilog.middle.block1090, %.preheader95.us
  %.24.lcssa.us = phi ptr [ %.23.lcssa.us, %.preheader95.us ], [ %i.xe, %vec.epilog.middle.block1090 ], [ %i.wq, %middle.block1062 ], [ %.lcssa1219.unr, %.lr.ph296.us.prol.loopexit ], [ %i.vy, %.lr.ph296.us ] ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 4 ; 3 uses
  %i.yg = icmp slt i64 %indvars.iv.next478, %invariant.op588
  br i1 %i.yg, label %.lr.ph300.split.us, label %.preheader94.loopexit, !llvm.loop !341

.preheader96.us:                                  ; preds = %.lr.ph270.us, %.loopexit97.us.thread, %.loopexit97.us
  %.0690.lcssa.us = phi ptr [ %i.sy, %.loopexit97.us ], [ %i.rh, %.loopexit97.us.thread ], [ %i.ub, %.lr.ph270.us ] ; 2 uses
  %.0687.lcssa.us = phi ptr [ %i.tc, %.loopexit97.us ], [ %i.rl, %.loopexit97.us.thread ], [ %i.uc, %.lr.ph270.us ] ; 2 uses
  %.0684.lcssa.us = phi ptr [ %i.tg, %.loopexit97.us ], [ %i.rp, %.loopexit97.us.thread ], [ %i.ud, %.lr.ph270.us ] ; 2 uses
  %.0681.lcssa.us = phi ptr [ %i.tk, %.loopexit97.us ], [ %i.rt, %.loopexit97.us.thread ], [ %i.ue, %.lr.ph270.us ] ; 2 uses
  %.0678.lcssa.us = phi i32 [ 0, %.loopexit97.us ], [ 0, %.loopexit97.us.thread ], [ %i.qy, %.lr.ph270.us ] ; 3 uses
  %.22.lcssa.us = phi ptr [ %.21.us, %.loopexit97.us ], [ %.19299.us, %.loopexit97.us.thread ], [ %i.ua, %.lr.ph270.us ] ; 2 uses
  %i.yh = or disjoint i32 %.0678.lcssa.us, 3
  %i.yi = icmp slt i32 %i.yh, %4
  br i1 %i.yi, label %.lr.ph283.us, label %.preheader95.us

.lr.ph300.split:                                  ; preds = %.lr.ph300
  br i1 %i.qr, label %.lr.ph300.split.split.us, label %.lr.ph300.split.split.preheader

.lr.ph300.split.split.preheader:                  ; preds = %.lr.ph300.split
  %i.yj = add nuw i32 %.1655.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.yj)
  %i.yk = add i32 %smax, -4
  %i.yl = sub i32 %i.yk, %.1655.lcssa
  %i.ym = and i32 %i.yl, -4
  %i.yn = add nuw i32 %.1655.lcssa, %i.ym
  %i.yo = add nuw i32 %i.yn, 4
  br label %.preheader94

.lr.ph300.split.split.us:                         ; preds = %.lr.ph300.split
  br i1 %i.qu, label %.lr.ph262.us312.us.preheader, label %.loopexit97.us310.preheader

.loopexit97.us310.preheader:                      ; preds = %.lr.ph300.split.split.us
  %i.yp = add nuw i32 %.1655.lcssa, 7
  %smax470 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.yp)
  %i.yq = add i32 %smax470, -4
  %i.yr = sub i32 %i.yq, %.1655.lcssa
  %i.ys = and i32 %i.yr, -4
  %i.yt = add nuw i32 %.1655.lcssa, %i.ys
  %i.yu = add nuw i32 %i.yt, 4
  br label %.preheader94

.lr.ph262.us312.us.preheader:                     ; preds = %.lr.ph300.split.split.us
  %i.yv = zext nneg i32 %.1655.lcssa to i64
  %i.yw = sext i32 %1 to i64
  %i.yx = sext i32 %2 to i64
  %invariant.op587 = add nsw i64 %i.yx, -3
  %i.yy = add nsw i32 %4, -1
  %xtraiter1298 = and i32 %4, 7                   ; 3 uses
  %i.yz = icmp ult i32 %i.yy, 7
  %unroll_iter1303 = and i32 %4, 2147483640
  %lcmp.mod1300.not = icmp eq i32 %xtraiter1298, 0
  %lcmp.mod1302 = icmp ne i32 %xtraiter1298, 0
  br label %.lr.ph262.us312.us

.lr.ph262.us312.us:                               ; preds = %.lr.ph262.us312.us.preheader, %..loopexit97_crit_edge.us313.us
  %indvars.iv472 = phi i64 [ %i.yv, %.lr.ph262.us312.us.preheader ], [ %indvars.iv.next473, %..loopexit97_crit_edge.us313.us ] ; 2 uses
  %.19299.us304.us = phi ptr [ %.10.lcssa, %.lr.ph262.us312.us.preheader ], [ %.lcssa1220, %..loopexit97_crit_edge.us313.us ] ; 2 uses
  %i.za = load ptr, ptr %0, align 8, !tbaa !18
  %i.zb = add nsw i64 %indvars.iv472, %i.yw
  %i.zc = mul i64 %i.k, %i.zb
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zc
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.qt ; 2 uses
  br i1 %i.yz, label %.epil.preheader, label %.lr.ph262.us312.us.new

.lr.ph262.us312.us.new:                           ; preds = %.lr.ph262.us312.us, %.lr.ph262.us312.us.new
  %.20261.us306.us = phi ptr [ %i.aab, %.lr.ph262.us312.us.new ], [ %.19299.us304.us, %.lr.ph262.us312.us ] ; 9 uses
  %.0694259.us308.us = phi ptr [ %i.aac, %.lr.ph262.us312.us.new ], [ %i.ze, %.lr.ph262.us312.us ] ; 9 uses
  %niter1304 = phi i32 [ %niter1304.next.7, %.lr.ph262.us312.us.new ], [ 0, %.lr.ph262.us312.us ]
  %i.zf = load <4 x float>, ptr %.0694259.us308.us, align 16, !tbaa !116
  store <4 x float> %i.zf, ptr %.20261.us306.us, align 16, !tbaa !116
  %i.zg = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 16
  %i.zi = load <4 x float>, ptr %i.zh, align 16, !tbaa !116
  store <4 x float> %i.zi, ptr %i.zg, align 16, !tbaa !116
  %i.zj = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 32
  %i.zl = load <4 x float>, ptr %i.zk, align 16, !tbaa !116
  store <4 x float> %i.zl, ptr %i.zj, align 16, !tbaa !116
  %i.zm = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 48
  %i.zn = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 48
  %i.zo = load <4 x float>, ptr %i.zn, align 16, !tbaa !116
  store <4 x float> %i.zo, ptr %i.zm, align 16, !tbaa !116
  %i.zp = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 64
  %i.zr = load <4 x float>, ptr %i.zq, align 16, !tbaa !116
  store <4 x float> %i.zr, ptr %i.zp, align 16, !tbaa !116
  %i.zs = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 80
  %i.zt = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 80
  %i.zu = load <4 x float>, ptr %i.zt, align 16, !tbaa !116
  store <4 x float> %i.zu, ptr %i.zs, align 16, !tbaa !116
  %i.zv = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 96
  %i.zw = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 96
  %i.zx = load <4 x float>, ptr %i.zw, align 16, !tbaa !116
  store <4 x float> %i.zx, ptr %i.zv, align 16, !tbaa !116
  %i.zy = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 112
  %i.zz = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 112
  %i.aaa = load <4 x float>, ptr %i.zz, align 16, !tbaa !116
  store <4 x float> %i.aaa, ptr %i.zy, align 16, !tbaa !116
  %i.aab = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 128 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0694259.us308.us, i64 128 ; 2 uses
  %niter1304.next.7 = add nuw nsw i32 %niter1304, 8 ; 2 uses
  %niter1304.ncmp.7 = icmp eq i32 %niter1304.next.7, %unroll_iter1303
  br i1 %niter1304.ncmp.7, label %..loopexit97_crit_edge.us313.us.unr-lcssa, label %.lr.ph262.us312.us.new, !llvm.loop !322

..loopexit97_crit_edge.us313.us.unr-lcssa:        ; preds = %.lr.ph262.us312.us.new
  br i1 %lcmp.mod1300.not, label %..loopexit97_crit_edge.us313.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit97_crit_edge.us313.us.unr-lcssa, %.lr.ph262.us312.us
  %.20261.us306.us.epil.init = phi ptr [ %.19299.us304.us, %.lr.ph262.us312.us ], [ %i.aab, %..loopexit97_crit_edge.us313.us.unr-lcssa ]
  %.0694259.us308.us.epil.init = phi ptr [ %i.ze, %.lr.ph262.us312.us ], [ %i.aac, %..loopexit97_crit_edge.us313.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1302)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.20261.us306.us.epil = phi ptr [ %.20261.us306.us.epil.init, %.epil.preheader ], [ %i.aae, %bb.h ] ; 2 uses
  %.0694259.us308.us.epil = phi ptr [ %.0694259.us308.us.epil.init, %.epil.preheader ], [ %i.aaf, %bb.h ] ; 2 uses
  %epil.iter1299 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1299.next, %bb.h ]
  %i.aad = load <4 x float>, ptr %.0694259.us308.us.epil, align 16, !tbaa !116
  store <4 x float> %i.aad, ptr %.20261.us306.us.epil, align 16, !tbaa !116
  %i.aae = getelementptr inbounds nuw i8, ptr %.20261.us306.us.epil, i64 16 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0694259.us308.us.epil, i64 16
  %epil.iter1299.next = add i32 %epil.iter1299, 1 ; 2 uses
  %epil.iter1299.cmp.not = icmp eq i32 %epil.iter1299.next, %xtraiter1298
  br i1 %epil.iter1299.cmp.not, label %..loopexit97_crit_edge.us313.us, label %bb.h, !llvm.loop !342

..loopexit97_crit_edge.us313.us:                  ; preds = %bb.h, %..loopexit97_crit_edge.us313.us.unr-lcssa
  %.lcssa1220 = phi ptr [ %i.aab, %..loopexit97_crit_edge.us313.us.unr-lcssa ], [ %i.aae, %bb.h ] ; 2 uses
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 4 ; 3 uses
  %i.aag = icmp slt i64 %indvars.iv.next473, %invariant.op587
  br i1 %i.aag, label %.lr.ph262.us312.us, label %.preheader94.loopexit375, !llvm.loop !341

bb.i:                                             ; preds = %.lr.ph256, %.loopexit100
  %indvars.iv467 = phi i64 [ %i.aq, %.lr.ph256 ], [ %indvars.iv.next468, %.loopexit100 ] ; 4 uses
  %.10255 = phi ptr [ %.0651.lcssa, %.lr.ph256 ], [ %.18, %.loopexit100 ] ; 9 uses
  switch i32 %i.b, label %.loopexit100 [
    i32 8, label %bb.j
    i32 4, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph192.preheader, label %.loopexit100

.lr.ph192.preheader:                              ; preds = %bb.j
  %i.aah = load ptr, ptr %0, align 8, !tbaa !18
  %i.aai = add nsw i64 %indvars.iv467, %i.as
  %i.aaj = mul i64 %i.k, %i.aai
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.aaj
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.aak, i64 %i.aj ; 2 uses
  br i1 %i.av, label %.lr.ph192.epil.preheader, label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %.11191 = phi ptr [ %i.abi, %.lr.ph192 ], [ %.10255, %.lr.ph192.preheader ] ; 9 uses
  %.0758189 = phi ptr [ %i.abj, %.lr.ph192 ], [ %i.aal, %.lr.ph192.preheader ] ; 9 uses
  %niter1297 = phi i32 [ %niter1297.next.7, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ]
  %i.aam = load <8 x float>, ptr %.0758189, align 32, !tbaa !116
  store <8 x float> %i.aam, ptr %.11191, align 1, !tbaa !116
  %i.aan = getelementptr inbounds nuw i8, ptr %.11191, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %.0758189, i64 32
  %i.aap = load <8 x float>, ptr %i.aao, align 32, !tbaa !116
  store <8 x float> %i.aap, ptr %i.aan, align 1, !tbaa !116
  %i.aaq = getelementptr inbounds nuw i8, ptr %.11191, i64 64
  %i.aar = getelementptr inbounds nuw i8, ptr %.0758189, i64 64
  %i.aas = load <8 x float>, ptr %i.aar, align 32, !tbaa !116
  store <8 x float> %i.aas, ptr %i.aaq, align 1, !tbaa !116
  %i.aat = getelementptr inbounds nuw i8, ptr %.11191, i64 96
  %i.aau = getelementptr inbounds nuw i8, ptr %.0758189, i64 96
  %i.aav = load <8 x float>, ptr %i.aau, align 32, !tbaa !116
  store <8 x float> %i.aav, ptr %i.aat, align 1, !tbaa !116
  %i.aaw = getelementptr inbounds nuw i8, ptr %.11191, i64 128
  %i.aax = getelementptr inbounds nuw i8, ptr %.0758189, i64 128
  %i.aay = load <8 x float>, ptr %i.aax, align 32, !tbaa !116
  store <8 x float> %i.aay, ptr %i.aaw, align 1, !tbaa !116
  %i.aaz = getelementptr inbounds nuw i8, ptr %.11191, i64 160
  %i.aba = getelementptr inbounds nuw i8, ptr %.0758189, i64 160
  %i.abb = load <8 x float>, ptr %i.aba, align 32, !tbaa !116
  store <8 x float> %i.abb, ptr %i.aaz, align 1, !tbaa !116
  %i.abc = getelementptr inbounds nuw i8, ptr %.11191, i64 192
  %i.abd = getelementptr inbounds nuw i8, ptr %.0758189, i64 192
  %i.abe = load <8 x float>, ptr %i.abd, align 32, !tbaa !116
  store <8 x float> %i.abe, ptr %i.abc, align 1, !tbaa !116
  %i.abf = getelementptr inbounds nuw i8, ptr %.11191, i64 224
  %i.abg = getelementptr inbounds nuw i8, ptr %.0758189, i64 224
  %i.abh = load <8 x float>, ptr %i.abg, align 32, !tbaa !116
  store <8 x float> %i.abh, ptr %i.abf, align 1, !tbaa !116
  %i.abi = getelementptr inbounds nuw i8, ptr %.11191, i64 256 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0758189, i64 256 ; 2 uses
  %niter1297.next.7 = add nuw nsw i32 %niter1297, 8 ; 2 uses
  %niter1297.ncmp.7 = icmp eq i32 %niter1297.next.7, %unroll_iter1296
  br i1 %niter1297.ncmp.7, label %.loopexit100.loopexit.unr-lcssa, label %.lr.ph192, !llvm.loop !343

bb.k:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph198.preheader, label %.loopexit100

.lr.ph198.preheader:                              ; preds = %bb.k
  %i.abk = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.abl = add nsw i64 %indvars.iv467, %i.as      ; 2 uses
  %i.abm = add nsw i64 %i.abl, 4
  %i.abn = mul i64 %i.k, %i.abm
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abn
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abo, i64 %i.am ; 2 uses
  %i.abq = mul i64 %i.k, %i.abl
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abq
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.am ; 2 uses
  br i1 %i.au, label %.lr.ph198.epil.preheader, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %.13197 = phi ptr [ %i.aco, %.lr.ph198 ], [ %.10255, %.lr.ph198.preheader ] ; 9 uses
  %.0755195 = phi ptr [ %i.acq, %.lr.ph198 ], [ %i.abp, %.lr.ph198.preheader ] ; 5 uses
  %.0756194 = phi ptr [ %i.acp, %.lr.ph198 ], [ %i.abs, %.lr.ph198.preheader ] ; 5 uses
  %niter1290 = phi i32 [ %niter1290.next.3, %.lr.ph198 ], [ 0, %.lr.ph198.preheader ]
  %i.abt = load <4 x float>, ptr %.0756194, align 16, !tbaa !116
  store <4 x float> %i.abt, ptr %.13197, align 16, !tbaa !116
  %i.abu = getelementptr inbounds nuw i8, ptr %.13197, i64 16
  %i.abv = load <4 x float>, ptr %.0755195, align 16, !tbaa !116
  store <4 x float> %i.abv, ptr %i.abu, align 16, !tbaa !116
  %i.abw = getelementptr inbounds nuw i8, ptr %.13197, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %.0756194, i64 16
  %i.aby = getelementptr inbounds nuw i8, ptr %.0755195, i64 16
  %i.abz = load <4 x float>, ptr %i.abx, align 16, !tbaa !116
  store <4 x float> %i.abz, ptr %i.abw, align 16, !tbaa !116
  %i.aca = getelementptr inbounds nuw i8, ptr %.13197, i64 48
  %i.acb = load <4 x float>, ptr %i.aby, align 16, !tbaa !116
  store <4 x float> %i.acb, ptr %i.aca, align 16, !tbaa !116
  %i.acc = getelementptr inbounds nuw i8, ptr %.13197, i64 64
  %i.acd = getelementptr inbounds nuw i8, ptr %.0756194, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %.0755195, i64 32
  %i.acf = load <4 x float>, ptr %i.acd, align 16, !tbaa !116
  store <4 x float> %i.acf, ptr %i.acc, align 16, !tbaa !116
  %i.acg = getelementptr inbounds nuw i8, ptr %.13197, i64 80
  %i.ach = load <4 x float>, ptr %i.ace, align 16, !tbaa !116
  store <4 x float> %i.ach, ptr %i.acg, align 16, !tbaa !116
  %i.aci = getelementptr inbounds nuw i8, ptr %.13197, i64 96
  %i.acj = getelementptr inbounds nuw i8, ptr %.0756194, i64 48
  %i.ack = getelementptr inbounds nuw i8, ptr %.0755195, i64 48
  %i.acl = load <4 x float>, ptr %i.acj, align 16, !tbaa !116
  store <4 x float> %i.acl, ptr %i.aci, align 16, !tbaa !116
  %i.acm = getelementptr inbounds nuw i8, ptr %.13197, i64 112
  %i.acn = load <4 x float>, ptr %i.ack, align 16, !tbaa !116
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %.832011964 = phi ptr [ %.93202.lcssa, %bb.gs ], [ %.63199.lcssa, %.preheader1544 ] ; 4 uses
  %.432071963 = phi i32 [ %i.cjd, %bb.gs ], [ %.33206.lcssa, %.preheader1544 ]
  br i1 %i.aol, label %bb.gh, label %bb.go

bb.gh:                                            ; preds = %.lr.ph1968
  %.not3247 = icmp eq ptr %.511967, null
  br i1 %.not3247, label %.thread1413, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.aom, label %.thread1406, label %bb.gj

.thread1406:                                      ; preds = %bb.gi
  %i.chc = load float, ptr %.511967, align 4, !tbaa !68
  %i.chd = insertelement <4 x float> poison, float %i.chc, i64 0
  %i.che = shufflevector <4 x float> %i.chd, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1413

bb.gj:                                            ; preds = %bb.gi
  br i1 %or.cond25, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.chf = load <4 x float>, ptr %.511967, align 1, !tbaa !116
  br label %.thread1413

bb.gl:                                            ; preds = %bb.gj
  switch i32 %2, label %.thread1413 [
    i32 3, label %bb.gm
    i32 4, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.chg = load <4 x float>, ptr %.511967, align 1, !tbaa !116
  %i.chh = getelementptr inbounds nuw i8, ptr %.511967, i64 16
  br label %.thread1413

bb.gn:                                            ; preds = %bb.gl
  %i.chi = load float, ptr %.511967, align 4, !tbaa !68
  %i.chj = insertelement <4 x float> poison, float %i.chi, i64 0
  %i.chk = shufflevector <4 x float> %i.chj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chl = getelementptr inbounds nuw i8, ptr %.511967, i64 4
  br label %.thread1413

bb.go:                                            ; preds = %.lr.ph1968
  %i.chm = load <4 x float>, ptr %.1728721966, align 16, !tbaa !116
  br label %.thread1413

.thread1413:                                      ; preds = %bb.gl, %bb.gk, %.thread1406, %bb.gm, %bb.gh, %bb.gn, %bb.go
  %.3895 = phi nsz <4 x float> [ zeroinitializer, %bb.gh ], [ %i.chk, %bb.gn ], [ zeroinitializer, %bb.gl ], [ %i.chm, %bb.go ], [ %i.chg, %bb.gm ], [ %i.che, %.thread1406 ], [ %i.chf, %bb.gk ] ; 3 uses
  %.53 = phi ptr [ null, %bb.gh ], [ %i.chl, %bb.gn ], [ %.511967, %bb.gl ], [ %.511967, %bb.go ], [ %i.chh, %bb.gm ], [ %.511967, %.thread1406 ], [ %.511967, %bb.gk ] ; 2 uses
  br i1 %i.aon, label %.lr.ph1959.preheader, label %._crit_edge1960

.lr.ph1959.preheader:                             ; preds = %.thread1413
  br i1 %i.apc, label %.lr.ph1959.epil.preheader, label %.lr.ph1959

.lr.ph1959:                                       ; preds = %.lr.ph1959.preheader, %.lr.ph1959
  %.031261957 = phi ptr [ %i.cin, %.lr.ph1959 ], [ %.228491975, %.lr.ph1959.preheader ] ; 5 uses
  %.932021956 = phi ptr [ %i.cio, %.lr.ph1959 ], [ %.832011964, %.lr.ph1959.preheader ] ; 5 uses
  %.48961955 = phi <4 x float> [ %i.cim, %.lr.ph1959 ], [ %.3895, %.lr.ph1959.preheader ]
  %niter3668 = phi i32 [ %niter3668.next.3, %.lr.ph1959 ], [ 0, %.lr.ph1959.preheader ]
  %i.chn = load <4 x float>, ptr %.031261957, align 16, !tbaa !116
  %i.cho = load float, ptr %.932021956, align 4, !tbaa !68
  %i.chp = insertelement <4 x float> poison, float %i.cho, i64 0
  %i.chq = shufflevector <4 x float> %i.chp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chn, <4 x float> nofpclass(nan inf) %i.chq, <4 x float> nofpclass(nan inf) %.48961955)
  %i.chs = getelementptr inbounds nuw i8, ptr %.031261957, i64 16
  %i.cht = getelementptr inbounds nuw i8, ptr %.932021956, i64 4
  %i.chu = load <4 x float>, ptr %i.chs, align 16, !tbaa !116
  %i.chv = load float, ptr %i.cht, align 4, !tbaa !68
  %i.chw = insertelement <4 x float> poison, float %i.chv, i64 0
  %i.chx = shufflevector <4 x float> %i.chw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chu, <4 x float> nofpclass(nan inf) %i.chx, <4 x float> nofpclass(nan inf) %i.chr)
  %i.chz = getelementptr inbounds nuw i8, ptr %.031261957, i64 32
  %i.cia = getelementptr inbounds nuw i8, ptr %.932021956, i64 8
  %i.cib = load <4 x float>, ptr %i.chz, align 16, !tbaa !116
  %i.cic = load float, ptr %i.cia, align 4, !tbaa !68
  %i.cid = insertelement <4 x float> poison, float %i.cic, i64 0
  %i.cie = shufflevector <4 x float> %i.cid, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cib, <4 x float> nofpclass(nan inf) %i.cie, <4 x float> nofpclass(nan inf) %i.chy)
  %i.cig = getelementptr inbounds nuw i8, ptr %.031261957, i64 48
  %i.cih = getelementptr inbounds nuw i8, ptr %.932021956, i64 12
  %i.cii = load <4 x float>, ptr %i.cig, align 16, !tbaa !116
  %i.cij = load float, ptr %i.cih, align 4, !tbaa !68
  %i.cik = insertelement <4 x float> poison, float %i.cij, i64 0
  %i.cil = shufflevector <4 x float> %i.cik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cii, <4 x float> nofpclass(nan inf) %i.cil, <4 x float> nofpclass(nan inf) %i.cif) ; 3 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %.031261957, i64 64 ; 2 uses
  %i.cio = getelementptr inbounds nuw i8, ptr %.932021956, i64 16 ; 2 uses
  %niter3668.next.3 = add nuw nsw i32 %niter3668, 4 ; 2 uses
  %niter3668.ncmp.3 = icmp eq i32 %niter3668.next.3, %unroll_iter3667
  br i1 %niter3668.ncmp.3, label %._crit_edge1960.loopexit.unr-lcssa, label %.lr.ph1959, !llvm.loop !509

._crit_edge1960.loopexit.unr-lcssa:               ; preds = %.lr.ph1959
  br i1 %lcmp.mod3664.not, label %._crit_edge1960.loopexit, label %.lr.ph1959.epil.preheader

.lr.ph1959.epil.preheader:                        ; preds = %._crit_edge1960.loopexit.unr-lcssa, %.lr.ph1959.preheader
  %.031261957.epil.init = phi ptr [ %.228491975, %.lr.ph1959.preheader ], [ %i.cin, %._crit_edge1960.loopexit.unr-lcssa ]
  %.932021956.epil.init = phi ptr [ %.832011964, %.lr.ph1959.preheader ], [ %i.cio, %._crit_edge1960.loopexit.unr-lcssa ]
  %.48961955.epil.init = phi <4 x float> [ %.3895, %.lr.ph1959.preheader ], [ %i.cim, %._crit_edge1960.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3666)
  br label %.lr.ph1959.epil

.lr.ph1959.epil:                                  ; preds = %.lr.ph1959.epil, %.lr.ph1959.epil.preheader
  %.031261957.epil = phi ptr [ %i.ciu, %.lr.ph1959.epil ], [ %.031261957.epil.init, %.lr.ph1959.epil.preheader ] ; 2 uses
  %.932021956.epil = phi ptr [ %i.civ, %.lr.ph1959.epil ], [ %.932021956.epil.init, %.lr.ph1959.epil.preheader ] ; 2 uses
  %.48961955.epil = phi <4 x float> [ %i.cit, %.lr.ph1959.epil ], [ %.48961955.epil.init, %.lr.ph1959.epil.preheader ]
  %epil.iter3663 = phi i32 [ %epil.iter3663.next, %.lr.ph1959.epil ], [ 0, %.lr.ph1959.epil.preheader ]
  %i.cip = load <4 x float>, ptr %.031261957.epil, align 16, !tbaa !116
  %i.ciq = load float, ptr %.932021956.epil, align 4, !tbaa !68
  %i.cir = insertelement <4 x float> poison, float %i.ciq, i64 0
  %i.cis = shufflevector <4 x float> %i.cir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cit = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cip, <4 x float> nofpclass(nan inf) %i.cis, <4 x float> nofpclass(nan inf) %.48961955.epil) ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %.031261957.epil, i64 16
  %i.civ = getelementptr inbounds nuw i8, ptr %.932021956.epil, i64 4
  %epil.iter3663.next = add i32 %epil.iter3663, 1 ; 2 uses
  %epil.iter3663.cmp.not = icmp eq i32 %epil.iter3663.next, %xtraiter3662
  br i1 %epil.iter3663.cmp.not, label %._crit_edge1960.loopexit, label %.lr.ph1959.epil, !llvm.loop !510

._crit_edge1960.loopexit:                         ; preds = %.lr.ph1959.epil, %._crit_edge1960.loopexit.unr-lcssa
  %.lcssa3545 = phi <4 x float> [ %i.cim, %._crit_edge1960.loopexit.unr-lcssa ], [ %i.cit, %.lr.ph1959.epil ]
  %i.ciw = getelementptr i8, ptr %.832011964, i64 %i.aox
  %scevgep2558 = getelementptr i8, ptr %i.ciw, i64 4
  br label %._crit_edge1960

._crit_edge1960:                                  ; preds = %._crit_edge1960.loopexit, %.thread1413
  %.4896.lcssa = phi <4 x float> [ %.3895, %.thread1413 ], [ %.lcssa3545, %._crit_edge1960.loopexit ] ; 6 uses
  %.93202.lcssa = phi ptr [ %.832011964, %.thread1413 ], [ %scevgep2558, %._crit_edge1960.loopexit ]
  br i1 %9, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %._crit_edge1960
  switch i32 %i.b, label %bb.gs [
    i32 4, label %.thread1416
    i32 1, label %bb.gq
  ]

.thread1416:                                      ; preds = %bb.gp
  store <4 x float> %.4896.lcssa, ptr %.1231901965, align 16, !tbaa !116
  %i.cix = getelementptr inbounds nuw i8, ptr %.1231901965, i64 16
  br label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1231901965, align 4, !tbaa !68
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 1
  %i.ciy = getelementptr inbounds nuw [4 x i8], ptr %.1231901965, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.ciy, align 4, !tbaa !68
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 2
  %i.ciz = getelementptr inbounds nuw i8, ptr %.1231901965, i64 %.idx3257
  store float %.sroa.0.8.vec.extract, ptr %i.ciz, align 4, !tbaa !68
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 3
  %i.cja = getelementptr inbounds nuw i8, ptr %.1231901965, i64 %.idx3258
  store float %.sroa.0.12.vec.extract, ptr %i.cja, align 4, !tbaa !68
  %i.cjb = getelementptr inbounds nuw i8, ptr %.1231901965, i64 4
  br label %bb.gs

bb.gr:                                            ; preds = %._crit_edge1960
  store <4 x float> %.4896.lcssa, ptr %.1728721966, align 16, !tbaa !116
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gp, %.thread1416, %bb.gq, %bb.gr
  %.143192 = phi ptr [ %i.cjb, %bb.gq ], [ %.1231901965, %bb.gp ], [ %.1231901965, %bb.gr ], [ %i.cix, %.thread1416 ]
  %i.cjc = getelementptr inbounds nuw i8, ptr %.1728721966, i64 16 ; 2 uses
  %i.cjd = add nuw nsw i32 %.432071963, 1         ; 2 uses
  %exitcond2560.not = icmp eq i32 %i.cjd, %6
  br i1 %exitcond2560.not, label %._crit_edge1969, label %.lr.ph1968, !llvm.loop !511

._crit_edge1969:                                  ; preds = %bb.gs, %.preheader1544
  %.172872.lcssa = phi ptr [ %.162871.lcssa, %.preheader1544 ], [ %i.cjc, %bb.gs ] ; 2 uses
  %.51.lcssa = phi ptr [ %.48.lcssa, %.preheader1544 ], [ %.53, %bb.gs ] ; 2 uses
  %i.cje = getelementptr inbounds [4 x i8], ptr %.228491975, i64 %i.aop ; 2 uses
  %indvars.iv.next2562 = add nuw nsw i64 %indvars.iv2561, 4 ; 3 uses
  %i.cjf = icmp slt i64 %indvars.iv.next2562, %invariant.op2832
  br i1 %i.cjf, label %bb.eg, label %.preheader1543.loopexit, !llvm.loop !512

.preheader1538.loopexit:                          ; preds = %._crit_edge2090
  %i.cjg = trunc nsw i64 %indvars.iv.next2576 to i32
  br label %.preheader1538

.preheader1538:                                   ; preds = %.preheader1538.loopexit, %.preheader1543
  %.32888.lcssa = phi i32 [ %.22887.lcssa, %.preheader1543 ], [ %i.cjg, %.preheader1538.loopexit ] ; 2 uses
  %.182873.lcssa = phi ptr [ %.122867.lcssa, %.preheader1543 ], [ %.232878.lcssa, %.preheader1538.loopexit ]
  %.54.lcssa = phi ptr [ %.36.lcssa, %.preheader1543 ], [ %.69.lcssa, %.preheader1538.loopexit ]
  %.3.lcssa = phi ptr [ %.22849.lcssa, %.preheader1543 ], [ %i.dbb, %.preheader1538.loopexit ]
  %i.cjh = icmp slt i32 %.32888.lcssa, %4
  br i1 %i.cjh, label %.lr.ph2310, label %._crit_edge2311

.lr.ph2310:                                       ; preds = %.preheader1538
  %i.cji = sext i32 %5 to i64                     ; 2 uses
  %i.cjj = add i32 %2, -1
  %or.cond49 = icmp ult i32 %i.cjj, 2
  %i.cjk = icmp eq i32 %2, 4
  %i.cjl = sext i32 %3 to i64                     ; 2 uses
  %i.cjm = icmp sgt i32 %6, 15
  %i.cjn = icmp eq i32 %7, 0                      ; 5 uses
  %or.cond53 = icmp ult i32 %2, 3                 ; 5 uses
  %i.cjo = add i32 %2, -3
  %or.cond55 = icmp ult i32 %i.cjo, 2             ; 5 uses
  %i.cjp = icmp sgt i32 %8, 3                     ; 5 uses
  %i.cjq = sext i32 %8 to i64
  %i.cjr = add i32 %8, -4                         ; 5 uses
  %i.cjs = and i32 %i.cjr, -4
  %i.cjt = add nuw nsw i32 %i.cjs, 4              ; 5 uses
  %i.cju = and i32 %6, -16
  %i.cjv = lshr i32 %i.cjr, 2
  %i.cjw = zext nneg i32 %i.cjv to i64            ; 5 uses
  %i.cjx = shl nuw nsw i64 %i.cjw, 7
  %i.cjy = shl nuw nsw i64 %i.cjw, 6
  %i.cjz = shl nuw nsw i64 %i.cjw, 5
  %i.cka = shl nuw nsw i64 %i.cjw, 4
  %i.ckb = sext i32 %.32888.lcssa to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.ckc = add nuw nsw i64 %i.cjw, 1              ; 7 uses
  %min.iters.check3347 = icmp ult i32 %i.cjr, 12
  %n.vec3349 = and i64 %i.ckc, 2147483644         ; 5 uses
  %i.ckd = trunc nuw nsw i64 %n.vec3349 to i32
  %i.cke = shl i32 %i.ckd, 2
  %i.ckf = shl nuw nsw i64 %n.vec3349, 4
  %i.ckg = shl nuw nsw i64 %n.vec3349, 5
  %cmp.n3378 = icmp eq i64 %i.ckc, %n.vec3349
  %min.iters.check3186 = icmp ult i32 %i.cjr, 12
  %min.iters.check3188 = icmp ult i32 %i.cjr, 60
  %i.ckh = and i64 %i.ckc, 12
  %n.vec3190 = and i64 %i.ckc, 2147483632         ; 5 uses
  %i.cki = trunc nuw nsw i64 %n.vec3190 to i32
  %i.ckj = shl i32 %i.cki, 2
  %i.ckk = shl nuw nsw i64 %n.vec3190, 4          ; 2 uses
  %cmp.n3231 = icmp eq i64 %i.ckc, %n.vec3190
  %min.epilog.iters.check3242 = icmp eq i64 %i.ckh, 0
  %n.vec3244 = and i64 %i.ckc, 2147483644         ; 4 uses
  %i.ckl = trunc nuw nsw i64 %n.vec3244 to i32
  %i.ckm = shl i32 %i.ckl, 2
  %i.ckn = shl nuw nsw i64 %n.vec3244, 4          ; 2 uses
  %cmp.n3265 = icmp eq i64 %i.ckc, %n.vec3244
  br label %bb.jb

bb.gt:                                            ; preds = %.lr.ph2097, %._crit_edge2090
  %indvars.iv2575 = phi i64 [ %i.bqi, %.lr.ph2097 ], [ %indvars.iv.next2576, %._crit_edge2090 ] ; 3 uses
  %.32096 = phi ptr [ %.22849.lcssa, %.lr.ph2097 ], [ %i.dbb, %._crit_edge2090 ] ; 21 uses
  %.542095 = phi ptr [ %.36.lcssa, %.lr.ph2097 ], [ %.69.lcssa, %._crit_edge2090 ] ; 2 uses
  %.1828732094 = phi ptr [ %.122867.lcssa, %.lr.ph2097 ], [ %.232878.lcssa, %._crit_edge2090 ] ; 2 uses
  %i.cko = load ptr, ptr %1, align 8, !tbaa !18
  %i.ckp = add nsw i64 %indvars.iv2575, %i.bpt
  %i.ckq = mul i64 %i.k, %i.ckp
  %i.ckr = getelementptr inbounds nuw [4 x i8], ptr %i.cko, i64 %i.ckq
  %i.cks = getelementptr inbounds [4 x i8], ptr %i.ckr, i64 %i.bpq ; 2 uses
  %.not3240 = icmp eq ptr %.542095, null
  br i1 %.not3240, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %or.cond37, label %.thread1418, label %bb.gv

.thread1418:                                      ; preds = %bb.gu
  %i.ckt = load ptr, ptr %0, align 8, !tbaa !18
  %i.cku = getelementptr inbounds [4 x i8], ptr %i.ckt, i64 %i.bpt
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.cku, i64 %indvars.iv2575
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.bps, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ckw = load ptr, ptr %0, align 8, !tbaa !18
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.ckw, i64 %i.bpq
  br label %bb.gx

bb.gx:                                            ; preds = %.thread1418, %bb.gv, %bb.gw, %bb.gt
  %.56 = phi ptr [ %i.ckx, %bb.gw ], [ %.542095, %bb.gv ], [ null, %bb.gt ], [ %i.ckv, %.thread1418 ] ; 2 uses
  br i1 %i.bpu, label %.lr.ph1997, label %.preheader1542

.preheader1542:                                   ; preds = %bb.hi, %bb.gx
  %.03115.lcssa = phi ptr [ %i.cks, %bb.gx ], [ %.13116, %bb.hi ] ; 2 uses
  %.03105.lcssa = phi ptr [ %.0.val1, %bb.gx ], [ %.13106.lcssa, %bb.hi ] ; 2 uses
  %.03100.lcssa = phi i32 [ 0, %bb.gx ], [ %i.bqd, %bb.hi ] ; 3 uses
  %.192874.lcssa = phi ptr [ %.1828732094, %bb.gx ], [ %i.cnp, %bb.hi ] ; 2 uses
  %.57.lcssa = phi ptr [ %.56, %bb.gx ], [ %.59, %bb.hi ] ; 2 uses
  %i.cky = or disjoint i32 %.03100.lcssa, 7
  %i.ckz = icmp slt i32 %i.cky, %6
  br i1 %i.ckz, label %.lr.ph2022, label %.preheader1541

.lr.ph1997:                                       ; preds = %bb.gx, %bb.hi
  %.571995 = phi ptr [ %.59, %bb.hi ], [ %.56, %bb.gx ] ; 13 uses
  %.1928741994 = phi ptr [ %i.cnp, %bb.hi ], [ %.1828732094, %bb.gx ] ; 5 uses
  %.031001993 = phi i32 [ %i.cnq, %bb.hi ], [ 0, %bb.gx ]
  %.031051992 = phi ptr [ %.13106.lcssa, %bb.hi ], [ %.0.val1, %bb.gx ] ; 4 uses
  %.031151991 = phi ptr [ %.13116, %bb.hi ], [ %i.cks, %bb.gx ] ; 4 uses
  br i1 %i.bpv, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %.lr.ph1997
  %.not3245 = icmp eq ptr %.571995, null
  br i1 %.not3245, label %.thread1429, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  br i1 %i.bpw, label %.thread1420, label %bb.ha

.thread1420:                                      ; preds = %bb.gz
  %i.cla = load float, ptr %.571995, align 4, !tbaa !68
  %i.clb = insertelement <16 x float> poison, float %i.cla, i64 0
  %i.clc = shufflevector <16 x float> %i.clb, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %.thread1429

bb.ha:                                            ; preds = %bb.gz
  br i1 %or.cond37, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.cld = load float, ptr %.571995, align 4, !tbaa !68
  %i.cle = insertelement <16 x float> poison, float %i.cld, i64 0
  %i.clf = shufflevector <16 x float> %i.cle, <16 x float> poison, <16 x i32> zeroinitializer
  %i.clg = getelementptr inbounds nuw i8, ptr %.571995, i64 4
  %i.clh = load float, ptr %i.clg, align 4, !tbaa !68
  %i.cli = insertelement <16 x float> poison, float %i.clh, i64 0
  %i.clj = shufflevector <16 x float> %i.cli, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread1429

bb.hc:                                            ; preds = %bb.ha
  switch i32 %2, label %.thread1429 [
    i32 3, label %bb.hd
    i32 4, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.clk = load <16 x float>, ptr %.571995, align 1, !tbaa !116 ; 2 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %.571995, i64 64
  %i.clm = load <16 x float>, ptr %i.cll, align 1, !tbaa !116 ; 2 uses
  %i.cln = shufflevector <16 x float> %i.clk, <16 x float> %i.clm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.clo = shufflevector <16 x float> %i.clk, <16 x float> %i.clm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.clp = shufflevector <16 x float> %i.cln, <16 x float> %i.clo, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.clq = shufflevector <16 x float> %i.cln, <16 x float> %i.clo, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  %i.clr = getelementptr inbounds nuw i8, ptr %.571995, i64 128
  br label %.thread1429

bb.he:                                            ; preds = %bb.hc
  %i.cls = load <16 x float>, ptr %.571995, align 1, !tbaa !116 ; 2 uses
  %i.clt = getelementptr inbounds nuw i8, ptr %.571995, i64 64
  br label %.thread1429

bb.hf:                                            ; preds = %.lr.ph1997
  %i.clu = load <16 x float>, ptr %.1928741994, align 1, !tbaa !116 ; 2 uses
  %i.clv = getelementptr inbounds nuw i8, ptr %.1928741994, i64 64
  %i.clw = load <16 x float>, ptr %i.clv, align 1, !tbaa !116 ; 2 uses
  %i.clx = shufflevector <16 x float> %i.clu, <16 x float> %i.clw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cly = shufflevector <16 x float> %i.clu, <16 x float> %i.clw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.clz = shufflevector <16 x float> %i.clx, <16 x float> %i.cly, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %i.cma = shufflevector <16 x float> %i.clx, <16 x float> %i.cly, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  br label %.thread1429

.thread1429:                                      ; preds = %bb.hc, %bb.hb, %.thread1420, %bb.hd, %bb.gy, %bb.he, %bb.hf
  %.3875 = phi nsz <16 x float> [ zeroinitializer, %bb.gy ], [ %i.cls, %bb.he ], [ zeroinitializer, %bb.hc ], [ %i.clz, %bb.hf ], [ %i.clp, %bb.hd ], [ %i.clc, %.thread1420 ], [ %i.clf, %bb.hb ] ; 3 uses
  %.3870 = phi nsz <16 x float> [ zeroinitializer, %bb.gy ], [ %i.cls, %bb.he ], [ zeroinitializer, %bb.hc ], [ %i.cma, %bb.hf ], [ %i.clq, %bb.hd ], [ %i.clc, %.thread1420 ], [ %i.clj, %bb.hb ] ; 3 uses
  %.59 = phi ptr [ null, %bb.gy ], [ %i.clt, %bb.he ], [ %.571995, %bb.hc ], [ %.571995, %bb.hf ], [ %i.clr, %bb.hd ], [ %.571995, %.thread1420 ], [ %.571995, %bb.hb ] ; 2 uses
  br i1 %i.bpx, label %.lr.ph1986.preheader, label %._crit_edge1987

.lr.ph1986.preheader:                             ; preds = %.thread1429
  br i1 %i.bqm, label %.lr.ph1986.epil.preheader, label %.lr.ph1986

.lr.ph1986:                                       ; preds = %.lr.ph1986.preheader, %.lr.ph1986
  %.030591984 = phi ptr [ %i.cmx, %.lr.ph1986 ], [ %.32096, %.lr.ph1986.preheader ] ; 5 uses
  %.131061983 = phi ptr [ %i.cmy, %.lr.ph1986 ], [ %.031051992, %.lr.ph1986.preheader ] ; 3 uses
  %.48711982 = phi <16 x float> [ %i.cmw, %.lr.ph1986 ], [ %.3870, %.lr.ph1986.preheader ]
  %.48761981 = phi <16 x float> [ %i.cmr, %.lr.ph1986 ], [ %.3875, %.lr.ph1986.preheader ]
  %niter3676 = phi i32 [ %niter3676.next.1, %.lr.ph1986 ], [ 0, %.lr.ph1986.preheader ]
  %i.cmb = load <16 x float>, ptr %.131061983, align 1, !tbaa !116 ; 2 uses
  %i.cmc = load float, ptr %.030591984, align 4, !tbaa !68
  %i.cmd = insertelement <16 x float> poison, float %i.cmc, i64 0
  %i.cme = shufflevector <16 x float> %i.cmd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cme, <16 x float> nofpclass(nan inf) %i.cmb, <16 x float> nofpclass(nan inf) %.48761981)
  %i.cmg = getelementptr inbounds nuw i8, ptr %.030591984, i64 4
  %i.cmh = load float, ptr %i.cmg, align 4, !tbaa !68
  %i.cmi = insertelement <16 x float> poison, float %i.cmh, i64 0
  %i.cmj = shufflevector <16 x float> %i.cmi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmj, <16 x float> nofpclass(nan inf) %i.cmb, <16 x float> nofpclass(nan inf) %.48711982)
  %i.cml = getelementptr inbounds nuw i8, ptr %.030591984, i64 8
  %i.cmm = getelementptr inbounds nuw i8, ptr %.131061983, i64 64
  %i.cmn = load <16 x float>, ptr %i.cmm, align 1, !tbaa !116 ; 2 uses
  %i.cmo = load float, ptr %i.cml, align 4, !tbaa !68
  %i.cmp = insertelement <16 x float> poison, float %i.cmo, i64 0
  %i.cmq = shufflevector <16 x float> %i.cmp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmq, <16 x float> nofpclass(nan inf) %i.cmn, <16 x float> nofpclass(nan inf) %i.cmf) ; 3 uses
  %i.cms = getelementptr inbounds nuw i8, ptr %.030591984, i64 12
  %i.cmt = load float, ptr %i.cms, align 4, !tbaa !68
  %i.cmu = insertelement <16 x float> poison, float %i.cmt, i64 0
  %i.cmv = shufflevector <16 x float> %i.cmu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmv, <16 x float> nofpclass(nan inf) %i.cmn, <16 x float> nofpclass(nan inf) %i.cmk) ; 3 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %.030591984, i64 16 ; 2 uses
  %i.cmy = getelementptr inbounds nuw i8, ptr %.131061983, i64 128 ; 2 uses
  %niter3676.next.1 = add nuw nsw i32 %niter3676, 2 ; 2 uses
  %niter3676.ncmp.1 = icmp eq i32 %niter3676.next.1, %unroll_iter3675
  br i1 %niter3676.ncmp.1, label %._crit_edge1987.loopexit.unr-lcssa, label %.lr.ph1986, !llvm.loop !513

._crit_edge1987.loopexit.unr-lcssa:               ; preds = %.lr.ph1986
  br i1 %lcmp.mod3671.not, label %._crit_edge1987.loopexit, label %.lr.ph1986.epil.preheader

.lr.ph1986.epil.preheader:                        ; preds = %._crit_edge1987.loopexit.unr-lcssa, %.lr.ph1986.preheader
  %.030591984.epil.init = phi ptr [ %.32096, %.lr.ph1986.preheader ], [ %i.cmx, %._crit_edge1987.loopexit.unr-lcssa ] ; 2 uses
  %.131061983.epil.init = phi ptr [ %.031051992, %.lr.ph1986.preheader ], [ %i.cmy, %._crit_edge1987.loopexit.unr-lcssa ]
  %.48711982.epil.init = phi <16 x float> [ %.3870, %.lr.ph1986.preheader ], [ %i.cmw, %._crit_edge1987.loopexit.unr-lcssa ]
  %.48761981.epil.init = phi <16 x float> [ %.3875, %.lr.ph1986.preheader ], [ %i.cmr, %._crit_edge1987.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3674)
  %i.cmz = load <16 x float>, ptr %.131061983.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.cna = load float, ptr %.030591984.epil.init, align 4, !tbaa !68
  %i.cnb = insertelement <16 x float> poison, float %i.cna, i64 0
  %i.cnc = shufflevector <16 x float> %i.cnb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cnd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cnc, <16 x float> nofpclass(nan inf) %i.cmz, <16 x float> nofpclass(nan inf) %.48761981.epil.init)
end_hunk_2
begin_hunk_3_@_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit54

bb.g:                                             ; preds = %bb.f
  %i.eh = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 3 uses
  %.not3.i62 = icmp eq ptr %i.eh, null
  %i.ei = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i76 = icmp eq ptr %i.ei, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ei) #9
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.k:                                             ; preds = %bb.h
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.eo = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %.not.i65 = icmp eq ptr %i.eo, null
  br i1 %.not.i65, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit54
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit53

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %.not3.i66 = icmp eq ptr %i.er, null
  %i.es = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i74 = icmp eq ptr %i.es, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.es) #9
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.q:                                             ; preds = %bb.n
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit54, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.ey = add nsw i32 %.052137, %i.bj             ; 2 uses
  %i.ez = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4ncnn3MatD2Ev.exit56, label %._crit_edge.loopexit, !llvm.loop !810

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit53
  %.val.pre = load ptr, ptr %14, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ncnn3Mat7channelEi.exit
  %.val = phi ptr [ %.val.pre, %._crit_edge.loopexit ], [ %i.ch, %_ZN4ncnn3Mat7channelEi.exit ]
  call fastcc void @_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull readonly align 8 dereferenceable(72) %11, ptr noundef nonnull readonly align 8 dereferenceable(72) %12, i32 noundef %i.bk, i32 noundef %i.br, i32 noundef %.sroa.speculated121, i32 noundef %i.bs, i32 noundef %.sroa.speculated117, ptr noundef nonnull readonly align 8 dereferenceable(72) %13, float noundef nofpclass(nan inf) %i.bm, float noundef nofpclass(nan inf) %i.bn, i32 noundef %i.bl)
  %i.fb = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %.not.i69 = icmp eq ptr %i.fb, null
  br i1 %.not.i69, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.fc = atomicrmw add ptr %i.fb, i32 -1 acq_rel, align 4
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.fe = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.fe, null
  %i.ff = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.w, !inline_history !19

bb.u:                                             ; preds = %bb.s
  %.not.i73 = icmp eq ptr %i.ff, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ff) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.r, %._crit_edge, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.fl = add nsw i32 %.0139, 1
  %i.fm = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.0139, %i.fm
  br i1 %.not.not, label %bb.c, label %._crit_edge141

._crit_edge141:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge141, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit56
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fn = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.fn) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not1436 = icmp eq i32 %i.b, 0
  br i1 %.not1436, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not1437 = icmp eq i32 %i.c, 0
  br i1 %.not1437, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !18     ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.g = icmp sgt i32 %4, 15
  br i1 %i.g, label %.preheader2292.lr.ph, label %.preheader2282

.preheader2292.lr.ph:                             ; preds = %bb.g
  %i.h = icmp sgt i32 %6, 15
  %i.i = icmp eq i32 %7, 0                        ; 5 uses
  %i.j = icmp sgt i32 %8, 1                       ; 5 uses
  %i.k = shl i32 %8, 4
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = add i32 %8, -2                           ; 5 uses
  %i.n = and i32 %i.m, -2
  %i.o = add nuw nsw i32 %i.n, 2                  ; 5 uses
  %i.p = and i32 %6, -16
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 4 uses
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = shl nuw nsw i64 %i.r, 5
  %i.u = getelementptr i8, ptr %i.d, i64 %i.t
  %scevgep3558 = getelementptr i8, ptr %i.u, i64 32
  %i.v = shl nuw nsw i64 %i.r, 3
  %i.w = shl nuw nsw i64 %i.r, 2
  %i.x = and i64 %i.q, 4294967294
  %i.y = lshr i32 %i.m, 1                         ; 3 uses
  %i.z = add nuw i32 %i.y, 1                      ; 4 uses
  %i.aa = icmp eq i32 %i.y, 0
  %unroll_iter = and i32 %i.z, -2
  %i.ab = and i32 %i.m, 2
  %lcmp.mod.not.not = icmp eq i32 %i.ab, 0
  %lcmp.mod5294 = trunc i32 %i.z to i1
  %i.ac = icmp eq i32 %i.y, 0
  %unroll_iter5301 = and i32 %i.z, -2
  %i.ad = and i32 %i.m, 2
  %lcmp.mod5298.not.not = icmp eq i32 %i.ad, 0
  %lcmp.mod5300 = trunc i32 %i.z to i1
  br label %.preheader2292

.preheader2292:                                   ; preds = %.preheader2292.lr.ph, %._crit_edge2608
  %indvars.iv = phi ptr [ %scevgep3558, %.preheader2292.lr.ph ], [ %scevgep3559, %._crit_edge2608 ] ; 4 uses
  %.012102612 = phi ptr [ %i.d, %.preheader2292.lr.ph ], [ %i.ye, %._crit_edge2608 ] ; 13 uses
  %.012132611 = phi ptr [ %i.f, %.preheader2292.lr.ph ], [ %.5.lcssa, %._crit_edge2608 ] ; 2 uses
  %.012182610 = phi i32 [ 0, %.preheader2292.lr.ph ], [ %i.yf, %._crit_edge2608 ]
  br i1 %i.h, label %.lr.ph2493, label %.preheader2291

.preheader2282.loopexit:                          ; preds = %._crit_edge2608
  %i.ae = and i32 %4, 2147483632
  br label %.preheader2282

.preheader2282:                                   ; preds = %.preheader2282.loopexit, %bb.g
  %.01218.lcssa = phi i32 [ 0, %bb.g ], [ %i.ae, %.preheader2282.loopexit ] ; 3 uses
  %.01213.lcssa = phi ptr [ %i.f, %bb.g ], [ %.5.lcssa, %.preheader2282.loopexit ] ; 2 uses
  %.01210.lcssa = phi ptr [ %i.d, %bb.g ], [ %i.ye, %.preheader2282.loopexit ] ; 3 uses
  %i.af = or disjoint i32 %.01218.lcssa, 7
  %i.ag = icmp slt i32 %i.af, %4
  br i1 %i.ag, label %.preheader2281.lr.ph, label %.preheader2271

.preheader2281.lr.ph:                             ; preds = %.preheader2282
  %i.ah = icmp sgt i32 %6, 15
  %i.ai = icmp eq i32 %7, 0                       ; 5 uses
  %i.aj = icmp sgt i32 %8, 1                      ; 5 uses
  %i.ak = shl i32 %8, 3
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i32 %8, -2                          ; 5 uses
  %i.an = and i32 %i.am, -2
  %i.ao = add nuw nsw i32 %i.an, 2                ; 5 uses
  %i.ap = and i32 %6, -16
  %i.aq = zext i32 %i.am to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 1                       ; 3 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.as, 16               ; 2 uses
  %scevgep3570 = getelementptr i8, ptr %.01210.lcssa, i64 %i.at
  %i.au = shl nuw nsw i64 %i.ar, 3
  %i.av = shl nuw nsw i64 %i.ar, 2
  %i.aw = and i64 %i.aq, 4294967294
  %i.ax = lshr i32 %i.am, 1                       ; 3 uses
  %i.ay = add nuw i32 %i.ax, 1                    ; 4 uses
  %i.az = icmp eq i32 %i.ax, 0
  %unroll_iter5315 = and i32 %i.ay, -2
  %i.ba = and i32 %i.am, 2
  %lcmp.mod5311.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod5314 = trunc i32 %i.ay to i1
  %i.bb = icmp eq i32 %i.ax, 0
  %unroll_iter5327 = and i32 %i.ay, -2
  %i.bc = and i32 %i.am, 2
  %lcmp.mod5324.not.not = icmp eq i32 %i.bc, 0
  %lcmp.mod5326 = trunc i32 %i.ay to i1
  br label %.preheader2281

.preheader2291:                                   ; preds = %._crit_edge, %.preheader2292
  %.01238.lcssa = phi i32 [ 0, %.preheader2292 ], [ %i.p, %._crit_edge ] ; 3 uses
  %.01223.lcssa = phi ptr [ %i.e, %.preheader2292 ], [ %.21225.lcssa, %._crit_edge ] ; 2 uses
  %.11214.lcssa = phi ptr [ %.012132611, %.preheader2292 ], [ %i.jp, %._crit_edge ] ; 2 uses
  %i.bd = or disjoint i32 %.01238.lcssa, 7
  %i.be = icmp slt i32 %i.bd, %6
  br i1 %i.be, label %.lr.ph2530, label %.preheader2290

.lr.ph2493:                                       ; preds = %.preheader2292, %._crit_edge
  %.112142492 = phi ptr [ %i.jp, %._crit_edge ], [ %.012132611, %.preheader2292 ] ; 33 uses
  %.012232491 = phi ptr [ %.21225.lcssa, %._crit_edge ], [ %i.e, %.preheader2292 ] ; 2 uses
  %.012382490 = phi i32 [ %i.jq, %._crit_edge ], [ 0, %.preheader2292 ]
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph2493
  %i.bf = load <16 x i32>, ptr %.112142492, align 64, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %.112142492, i64 64
  %i.bh = load <16 x i32>, ptr %i.bg, align 64, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.112142492, i64 128
  %i.bj = load <16 x i32>, ptr %i.bi, align 64, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.112142492, i64 192
  %i.bl = load <16 x i32>, ptr %i.bk, align 64, !tbaa !116
  %i.bm = getelementptr inbounds nuw i8, ptr %.112142492, i64 256
  %i.bn = load <16 x i32>, ptr %i.bm, align 64, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %.112142492, i64 320
  %i.bp = load <16 x i32>, ptr %i.bo, align 64, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %.112142492, i64 384
  %i.br = load <16 x i32>, ptr %i.bq, align 64, !tbaa !116
  %i.bs = getelementptr inbounds nuw i8, ptr %.112142492, i64 448
  %i.bt = load <16 x i32>, ptr %i.bs, align 64, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %.112142492, i64 512
  %i.bv = load <16 x i32>, ptr %i.bu, align 64, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %.112142492, i64 576
  %i.bx = load <16 x i32>, ptr %i.bw, align 64, !tbaa !116
  %i.by = getelementptr inbounds nuw i8, ptr %.112142492, i64 640
  %i.bz = load <16 x i32>, ptr %i.by, align 64, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %.112142492, i64 704
  %i.cb = load <16 x i32>, ptr %i.ca, align 64, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %.112142492, i64 768
  %i.cd = load <16 x i32>, ptr %i.cc, align 64, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %.112142492, i64 832
  %i.cf = load <16 x i32>, ptr %i.ce, align 64, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %.112142492, i64 896
  %i.ch = load <16 x i32>, ptr %i.cg, align 64, !tbaa !116
  %i.ci = getelementptr inbounds nuw i8, ptr %.112142492, i64 960
  %i.cj = load <16 x i32>, ptr %i.ci, align 64, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph2493, %bb.h
  %i.ck = phi <16 x i32> [ %i.ch, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cl = phi <16 x i32> [ %i.cf, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cm = phi <16 x i32> [ %i.cd, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cn = phi <16 x i32> [ %i.cb, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.co = phi <16 x i32> [ %i.bz, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cp = phi <16 x i32> [ %i.bx, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cq = phi <16 x i32> [ %i.bv, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cr = phi <16 x i32> [ %i.bt, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cs = phi <16 x i32> [ %i.br, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.ct = phi <16 x i32> [ %i.bp, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cu = phi <16 x i32> [ %i.bn, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cv = phi <16 x i32> [ %i.bl, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cw = phi <16 x i32> [ %i.bj, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cx = phi <16 x i32> [ %i.bh, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cy = phi <16 x i32> [ %i.bf, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  %i.cz = phi <16 x i32> [ %i.cj, %bb.h ], [ zeroinitializer, %.lr.ph2493 ] ; 2 uses
  br i1 %i.j, label %.lr.ph, label %.preheader2287

.preheader2287:                                   ; preds = %.lr.ph, %bb.i
  %.lcssa2401 = phi <16 x i32> [ %i.cz, %bb.i ], [ %i.fm, %.lr.ph ] ; 2 uses
  %.lcssa2400 = phi <16 x i32> [ %i.ck, %bb.i ], [ %i.fk, %.lr.ph ] ; 2 uses
  %.lcssa2399 = phi <16 x i32> [ %i.cl, %bb.i ], [ %i.fi, %.lr.ph ] ; 2 uses
  %.lcssa2398 = phi <16 x i32> [ %i.cm, %bb.i ], [ %i.fg, %.lr.ph ] ; 2 uses
  %.lcssa2397 = phi <16 x i32> [ %i.cn, %bb.i ], [ %i.fe, %.lr.ph ] ; 2 uses
  %.lcssa2396 = phi <16 x i32> [ %i.co, %bb.i ], [ %i.fc, %.lr.ph ] ; 2 uses
  %.lcssa2395 = phi <16 x i32> [ %i.cp, %bb.i ], [ %i.ey, %.lr.ph ] ; 2 uses
  %.lcssa2394 = phi <16 x i32> [ %i.cq, %bb.i ], [ %i.ew, %.lr.ph ] ; 2 uses
  %.lcssa2393 = phi <16 x i32> [ %i.cr, %bb.i ], [ %i.et, %.lr.ph ] ; 2 uses
  %.lcssa2392 = phi <16 x i32> [ %i.cs, %bb.i ], [ %i.er, %.lr.ph ] ; 2 uses
  %.lcssa2391 = phi <16 x i32> [ %i.ct, %bb.i ], [ %i.ep, %.lr.ph ] ; 2 uses
  %.lcssa2390 = phi <16 x i32> [ %i.cu, %bb.i ], [ %i.el, %.lr.ph ] ; 2 uses
  %.lcssa2389 = phi <16 x i32> [ %i.cv, %bb.i ], [ %i.ei, %.lr.ph ] ; 2 uses
  %.lcssa2388 = phi <16 x i32> [ %i.cw, %bb.i ], [ %i.eg, %.lr.ph ] ; 2 uses
  %.lcssa2387 = phi <16 x i32> [ %i.cx, %bb.i ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.lcssa2386 = phi <16 x i32> [ %i.cy, %bb.i ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.01249.lcssa = phi i32 [ 0, %bb.i ], [ %i.o, %.lr.ph ] ; 2 uses
  %.01243.lcssa = phi ptr [ %.012102612, %bb.i ], [ %i.fn, %.lr.ph ]
  %.11224.lcssa = phi ptr [ %.012232491, %bb.i ], [ %i.fo, %.lr.ph ] ; 2 uses
  %i.da = icmp slt i32 %.01249.lcssa, %8
  br i1 %i.da, label %.lr.ph2472, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.112242450 = phi ptr [ %i.fo, %.lr.ph ], [ %.012232491, %bb.i ] ; 2 uses
  %.012432449 = phi ptr [ %i.fn, %.lr.ph ], [ %.012102612, %bb.i ] ; 2 uses
  %.012492448 = phi i32 [ %i.fp, %.lr.ph ], [ 0, %bb.i ]
  %i.db = phi <16 x i32> [ %i.dy, %.lr.ph ], [ %i.cy, %bb.i ]
  %i.dc = phi <16 x i32> [ %i.ec, %.lr.ph ], [ %i.cx, %bb.i ]
  %i.dd = phi <16 x i32> [ %i.eg, %.lr.ph ], [ %i.cw, %bb.i ]
  %i.de = phi <16 x i32> [ %i.ei, %.lr.ph ], [ %i.cv, %bb.i ]
  %i.df = phi <16 x i32> [ %i.el, %.lr.ph ], [ %i.cu, %bb.i ]
  %i.dg = phi <16 x i32> [ %i.ep, %.lr.ph ], [ %i.ct, %bb.i ]
  %i.dh = phi <16 x i32> [ %i.er, %.lr.ph ], [ %i.cs, %bb.i ]
  %i.di = phi <16 x i32> [ %i.et, %.lr.ph ], [ %i.cr, %bb.i ]
  %i.dj = phi <16 x i32> [ %i.ew, %.lr.ph ], [ %i.cq, %bb.i ]
  %i.dk = phi <16 x i32> [ %i.ey, %.lr.ph ], [ %i.cp, %bb.i ]
  %i.dl = phi <16 x i32> [ %i.fc, %.lr.ph ], [ %i.co, %bb.i ]
  %i.dm = phi <16 x i32> [ %i.fe, %.lr.ph ], [ %i.cn, %bb.i ]
  %i.dn = phi <16 x i32> [ %i.fg, %.lr.ph ], [ %i.cm, %bb.i ]
  %i.do = phi <16 x i32> [ %i.fi, %.lr.ph ], [ %i.cl, %bb.i ]
  %i.dp = phi <16 x i32> [ %i.fk, %.lr.ph ], [ %i.ck, %bb.i ]
  %i.dq = phi <16 x i32> [ %i.fm, %.lr.ph ], [ %i.cz, %bb.i ]
  %i.dr = load <32 x i8>, ptr %.012432449, align 1, !tbaa !116 ; 2 uses
  %i.ds = load <32 x i8>, ptr %.112242450, align 1, !tbaa !116 ; 2 uses
  %i.dt = sext <32 x i8> %i.dr to <32 x i16>      ; 5 uses
  %i.du = sext <32 x i8> %i.ds to <32 x i16>      ; 5 uses
  %.cast1472 = bitcast <32 x i16> %i.dt to <16 x i32>
  %i.dv = shufflevector <16 x i32> %.cast1472, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %.cast1474 = bitcast <32 x i16> %i.du to <16 x i32>
  %i.dw = shufflevector <16 x i32> %.cast1474, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.dx = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dt, <32 x i16> %i.du)
  %i.dy = add <16 x i32> %i.dx, %i.db             ; 2 uses
  %i.dz = shufflevector <32 x i8> %i.ds, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.ea = sext <32 x i8> %i.dz to <32 x i16>      ; 4 uses
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dt, <32 x i16> %i.ea)
  %i.ec = add <16 x i32> %i.eb, %i.dc             ; 2 uses
  %i.ed = shufflevector <32 x i8> %i.dr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.ee = sext <32 x i8> %i.ed to <32 x i16>      ; 4 uses
  %i.ef = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ee, <32 x i16> %i.du)
  %i.eg = add <16 x i32> %i.ef, %i.dd             ; 2 uses
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ee, <32 x i16> %i.ea)
  %i.ei = add <16 x i32> %i.eh, %i.de             ; 2 uses
  %i.ej = bitcast <16 x i32> %i.dw to <32 x i16>  ; 4 uses
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dt, <32 x i16> %i.ej)
  %i.el = add <16 x i32> %i.ek, %i.df             ; 2 uses
  %i.em = bitcast <16 x i32> %i.dw to <32 x i16>
  %i.en = shufflevector <32 x i16> %i.em, <32 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 4 uses
  %i.eo = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dt, <32 x i16> %i.en)
  %i.ep = add <16 x i32> %i.eo, %i.dg             ; 2 uses
  %i.eq = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ee, <32 x i16> %i.ej)
  %i.er = add <16 x i32> %i.eq, %i.dh             ; 2 uses
  %i.es = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ee, <32 x i16> %i.en)
  %i.et = add <16 x i32> %i.es, %i.di             ; 2 uses
  %i.eu = bitcast <16 x i32> %i.dv to <32 x i16>  ; 4 uses
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eu, <32 x i16> %i.du)
  %i.ew = add <16 x i32> %i.ev, %i.dj             ; 2 uses
  %i.ex = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eu, <32 x i16> %i.ea)
  %i.ey = add <16 x i32> %i.ex, %i.dk             ; 2 uses
  %i.ez = bitcast <16 x i32> %i.dv to <32 x i16>
  %i.fa = shufflevector <32 x i16> %i.ez, <32 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.fb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.fa, <32 x i16> %i.du)
  %i.fc = add <16 x i32> %i.fb, %i.dl             ; 2 uses
  %i.fd = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.fa, <32 x i16> %i.ea)
  %i.fe = add <16 x i32> %i.fd, %i.dm             ; 2 uses
  %i.ff = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eu, <32 x i16> %i.ej)
  %i.fg = add <16 x i32> %i.ff, %i.dn             ; 2 uses
  %i.fh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eu, <32 x i16> %i.en)
  %i.fi = add <16 x i32> %i.fh, %i.do             ; 2 uses
  %i.fj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.fa, <32 x i16> %i.ej)
  %i.fk = add <16 x i32> %i.fj, %i.dp             ; 2 uses
  %i.fl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.fa, <32 x i16> %i.en)
  %i.fm = add <16 x i32> %i.fl, %i.dq             ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012432449, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.112242450, i64 32 ; 2 uses
  %i.fp = add nuw nsw i32 %.012492448, 2          ; 2 uses
  %i.fq = or disjoint i32 %i.fp, 1
  %i.fr = icmp slt i32 %i.fq, %8
  br i1 %i.fr, label %.lr.ph, label %.preheader2287, !llvm.loop !811

.lr.ph2472:                                       ; preds = %.preheader2287, %.lr.ph2472
  %.212252471 = phi ptr [ %i.iy, %.lr.ph2472 ], [ %.11224.lcssa, %.preheader2287 ] ; 2 uses
  %.112442470 = phi ptr [ %i.ix, %.lr.ph2472 ], [ %.01243.lcssa, %.preheader2287 ] ; 2 uses
  %.112502469 = phi i32 [ %i.iz, %.lr.ph2472 ], [ %.01249.lcssa, %.preheader2287 ]
  %i.fs = phi <16 x i32> [ %i.ha, %.lr.ph2472 ], [ %.lcssa2386, %.preheader2287 ]
  %i.ft = phi <16 x i32> [ %i.hd, %.lr.ph2472 ], [ %.lcssa2387, %.preheader2287 ]
  %i.fu = phi <16 x i32> [ %i.hh, %.lr.ph2472 ], [ %.lcssa2388, %.preheader2287 ]
  %i.fv = phi <16 x i32> [ %i.hk, %.lr.ph2472 ], [ %.lcssa2389, %.preheader2287 ]
  %i.fw = phi <16 x i32> [ %i.hn, %.lr.ph2472 ], [ %.lcssa2390, %.preheader2287 ]
  %i.fx = phi <16 x i32> [ %i.hq, %.lr.ph2472 ], [ %.lcssa2391, %.preheader2287 ]
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.ut = getelementptr inbounds nuw i8, ptr %.412172583, i64 128 ; 2 uses
  %i.uu = add nuw nsw i32 %.312412581, 2          ; 3 uses
  %i.uv = or disjoint i32 %i.uu, 1
  %i.uw = icmp slt i32 %i.uv, %6
  br i1 %i.uw, label %.lr.ph2584, label %.preheader2288, !llvm.loop !824

.lr.ph2607:                                       ; preds = %.preheader2288, %._crit_edge2601
  %.52606 = phi ptr [ %i.yc, %._crit_edge2601 ], [ %.41217.lcssa, %.preheader2288 ] ; 3 uses
  %.1212352605 = phi ptr [ %.141237.lcssa, %._crit_edge2601 ], [ %.91232.lcssa, %.preheader2288 ] ; 4 uses
  %.412422604 = phi i32 [ %i.yd, %._crit_edge2601 ], [ %.31241.lcssa, %.preheader2288 ]
  br i1 %i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph2607
  %i.ux = load <16 x i32>, ptr %.52606, align 64, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph2607, %bb.p
  %i.uy = phi <16 x i32> [ %i.ux, %bb.p ], [ zeroinitializer, %.lr.ph2607 ] ; 3 uses
  br i1 %i.j, label %.lr.ph2592.preheader, label %.preheader2283

.lr.ph2592.preheader:                             ; preds = %bb.q
  br i1 %i.ac, label %.lr.ph2592.epil.preheader, label %.lr.ph2592

.preheader2283.loopexit.unr-lcssa:                ; preds = %.lr.ph2592
  br i1 %lcmp.mod5298.not.not, label %.lr.ph2592.epil.preheader, label %.preheader2283.loopexit

.lr.ph2592.epil.preheader:                        ; preds = %.preheader2283.loopexit.unr-lcssa, %.lr.ph2592.preheader
  %.1312362590.epil.init = phi ptr [ %.1212352605, %.lr.ph2592.preheader ], [ %i.xd, %.preheader2283.loopexit.unr-lcssa ]
  %.012672589.epil.init = phi ptr [ %.012102612, %.lr.ph2592.preheader ], [ %i.xc, %.preheader2283.loopexit.unr-lcssa ]
  %.epil.init5297 = phi <16 x i32> [ %i.uy, %.lr.ph2592.preheader ], [ %i.xb, %.preheader2283.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5300)
  %i.uz = load <32 x i8>, ptr %.012672589.epil.init, align 1, !tbaa !116
  %i.va = load float, ptr %.1312362590.epil.init, align 1, !tbaa !116
  %i.vb = insertelement <8 x float> poison, float %i.va, i64 0
  %i.vc = shufflevector <8 x float> %i.vb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vd = sext <32 x i8> %i.uz to <32 x i16>
  %i.ve = bitcast <8 x float> %i.vc to <32 x i8>
  %i.vf = sext <32 x i8> %i.ve to <32 x i16>
  %i.vg = bitcast <32 x i16> %i.vf to <16 x i32>
  %i.vh = shufflevector <16 x i32> %i.vg, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.vi = bitcast <16 x i32> %i.vh to <32 x i16>
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.vd, <32 x i16> %i.vi)
  %i.vk = add <16 x i32> %i.vj, %.epil.init5297
  br label %.preheader2283.loopexit

.preheader2283.loopexit:                          ; preds = %.preheader2283.loopexit.unr-lcssa, %.lr.ph2592.epil.preheader
  %.lcssa5285 = phi <16 x i32> [ %i.xb, %.preheader2283.loopexit.unr-lcssa ], [ %i.vk, %.lr.ph2592.epil.preheader ]
  %i.vl = getelementptr i8, ptr %.1212352605, i64 %i.x
  %scevgep3564 = getelementptr i8, ptr %i.vl, i64 2
  br label %.preheader2283

.preheader2283:                                   ; preds = %.preheader2283.loopexit, %bb.q
  %.lcssa2446 = phi <16 x i32> [ %i.uy, %bb.q ], [ %.lcssa5285, %.preheader2283.loopexit ] ; 3 uses
  %.01269.lcssa = phi i32 [ 0, %bb.q ], [ %i.o, %.preheader2283.loopexit ] ; 5 uses
  %.01267.lcssa = phi ptr [ %.012102612, %bb.q ], [ %indvars.iv, %.preheader2283.loopexit ] ; 3 uses
  %.131236.lcssa = phi ptr [ %.1212352605, %bb.q ], [ %scevgep3564, %.preheader2283.loopexit ] ; 4 uses
  %i.vm = icmp slt i32 %.01269.lcssa, %8
  br i1 %i.vm, label %.lr.ph2600.preheader, label %._crit_edge2601

.lr.ph2600.preheader:                             ; preds = %.preheader2283
  %i.vn = sub i32 %8, %.01269.lcssa
  %.neg = add i32 %.01269.lcssa, 1
  %xtraiter5303 = and i32 %i.vn, 1
  %lcmp.mod5304.not = icmp eq i32 %xtraiter5303, 0
  br i1 %lcmp.mod5304.not, label %.lr.ph2600.prol.loopexit, label %.lr.ph2600.prol

.lr.ph2600.prol:                                  ; preds = %.lr.ph2600.preheader
  %i.vo = load <16 x i8>, ptr %.01267.lcssa, align 16, !tbaa !116
  %i.vp = load i8, ptr %.131236.lcssa, align 1, !tbaa !116
  %i.vq = sext i8 %i.vp to i16
  %i.vr = insertelement <16 x i16> poison, i16 %i.vq, i64 0
  %i.vs = shufflevector <16 x i16> %i.vr, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.vt = sext <16 x i8> %i.vo to <16 x i16>
  %i.vu = mul <16 x i16> %i.vs, %i.vt
  %i.vv = sext <16 x i16> %i.vu to <16 x i32>
  %i.vw = add <16 x i32> %.lcssa2446, %i.vv       ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.01267.lcssa, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %.131236.lcssa, i64 1 ; 2 uses
  %i.vz = add nuw nsw i32 %.01269.lcssa, 1
  br label %.lr.ph2600.prol.loopexit

.lr.ph2600.prol.loopexit:                         ; preds = %.lr.ph2600.prol, %.lr.ph2600.preheader
  %.lcssa5287.unr = phi <16 x i32> [ poison, %.lr.ph2600.preheader ], [ %i.vw, %.lr.ph2600.prol ]
  %.lcssa5286.unr = phi ptr [ poison, %.lr.ph2600.preheader ], [ %i.vy, %.lr.ph2600.prol ]
  %.1412372599.unr = phi ptr [ %.131236.lcssa, %.lr.ph2600.preheader ], [ %i.vy, %.lr.ph2600.prol ]
  %.112682598.unr = phi ptr [ %.01267.lcssa, %.lr.ph2600.preheader ], [ %i.vx, %.lr.ph2600.prol ]
  %.112702597.unr = phi i32 [ %.01269.lcssa, %.lr.ph2600.preheader ], [ %i.vz, %.lr.ph2600.prol ]
  %.unr5305 = phi <16 x i32> [ %.lcssa2446, %.lr.ph2600.preheader ], [ %i.vw, %.lr.ph2600.prol ]
  %i.wa = icmp eq i32 %8, %.neg
  br i1 %i.wa, label %._crit_edge2601, label %.lr.ph2600

.lr.ph2592:                                       ; preds = %.lr.ph2592.preheader, %.lr.ph2592
  %.1312362590 = phi ptr [ %i.xd, %.lr.ph2592 ], [ %.1212352605, %.lr.ph2592.preheader ] ; 3 uses
  %.012672589 = phi ptr [ %i.xc, %.lr.ph2592 ], [ %.012102612, %.lr.ph2592.preheader ] ; 3 uses
  %i.wb = phi <16 x i32> [ %i.xb, %.lr.ph2592 ], [ %i.uy, %.lr.ph2592.preheader ]
  %niter5302 = phi i32 [ %niter5302.next.1, %.lr.ph2592 ], [ 0, %.lr.ph2592.preheader ]
  %i.wc = load <32 x i8>, ptr %.012672589, align 1, !tbaa !116
  %i.wd = load float, ptr %.1312362590, align 1, !tbaa !116
  %i.we = insertelement <8 x float> poison, float %i.wd, i64 0
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wg = sext <32 x i8> %i.wc to <32 x i16>
  %i.wh = bitcast <8 x float> %i.wf to <32 x i8>
  %i.wi = sext <32 x i8> %i.wh to <32 x i16>
  %i.wj = bitcast <32 x i16> %i.wi to <16 x i32>
  %i.wk = shufflevector <16 x i32> %i.wj, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.wl = bitcast <16 x i32> %i.wk to <32 x i16>
  %i.wm = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.wg, <32 x i16> %i.wl)
  %i.wn = add <16 x i32> %i.wm, %i.wb
  %i.wo = getelementptr inbounds nuw i8, ptr %.012672589, i64 32
  %i.wp = getelementptr inbounds nuw i8, ptr %.1312362590, i64 2
  %i.wq = load <32 x i8>, ptr %i.wo, align 1, !tbaa !116
  %i.wr = load float, ptr %i.wp, align 1, !tbaa !116
  %i.ws = insertelement <8 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <8 x float> %i.ws, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wu = sext <32 x i8> %i.wq to <32 x i16>
  %i.wv = bitcast <8 x float> %i.wt to <32 x i8>
  %i.ww = sext <32 x i8> %i.wv to <32 x i16>
  %i.wx = bitcast <32 x i16> %i.ww to <16 x i32>
  %i.wy = shufflevector <16 x i32> %i.wx, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.wz = bitcast <16 x i32> %i.wy to <32 x i16>
  %i.xa = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.wu, <32 x i16> %i.wz)
  %i.xb = add <16 x i32> %i.xa, %i.wn             ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.012672589, i64 64 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.1312362590, i64 4 ; 2 uses
  %niter5302.next.1 = add nuw nsw i32 %niter5302, 2 ; 2 uses
  %niter5302.ncmp.1.not = icmp eq i32 %niter5302.next.1, %unroll_iter5301
  br i1 %niter5302.ncmp.1.not, label %.preheader2283.loopexit.unr-lcssa, label %.lr.ph2592, !llvm.loop !825

.lr.ph2600:                                       ; preds = %.lr.ph2600.prol.loopexit, %.lr.ph2600
  %.1412372599 = phi ptr [ %i.ya, %.lr.ph2600 ], [ %.1412372599.unr, %.lr.ph2600.prol.loopexit ] ; 3 uses
  %.112682598 = phi ptr [ %i.xz, %.lr.ph2600 ], [ %.112682598.unr, %.lr.ph2600.prol.loopexit ] ; 3 uses
  %.112702597 = phi i32 [ %i.yb, %.lr.ph2600 ], [ %.112702597.unr, %.lr.ph2600.prol.loopexit ]
  %i.xe = phi <16 x i32> [ %i.xy, %.lr.ph2600 ], [ %.unr5305, %.lr.ph2600.prol.loopexit ]
  %i.xf = load <16 x i8>, ptr %.112682598, align 16, !tbaa !116
  %i.xg = load i8, ptr %.1412372599, align 1, !tbaa !116
  %i.xh = sext i8 %i.xg to i16
  %i.xi = insertelement <16 x i16> poison, i16 %i.xh, i64 0
  %i.xj = shufflevector <16 x i16> %i.xi, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.xk = sext <16 x i8> %i.xf to <16 x i16>
  %i.xl = mul <16 x i16> %i.xj, %i.xk
  %i.xm = sext <16 x i16> %i.xl to <16 x i32>
  %i.xn = add <16 x i32> %i.xe, %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %.112682598, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %.1412372599, i64 1
  %i.xq = load <16 x i8>, ptr %i.xo, align 16, !tbaa !116
  %i.xr = load i8, ptr %i.xp, align 1, !tbaa !116
  %i.xs = sext i8 %i.xr to i16
  %i.xt = insertelement <16 x i16> poison, i16 %i.xs, i64 0
  %i.xu = shufflevector <16 x i16> %i.xt, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.xv = sext <16 x i8> %i.xq to <16 x i16>
  %i.xw = mul <16 x i16> %i.xu, %i.xv
  %i.xx = sext <16 x i16> %i.xw to <16 x i32>
  %i.xy = add <16 x i32> %i.xn, %i.xx             ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.112682598, i64 32
  %i.ya = getelementptr inbounds nuw i8, ptr %.1412372599, i64 2 ; 2 uses
  %i.yb = add nuw nsw i32 %.112702597, 2          ; 2 uses
  %exitcond3565.not.1 = icmp eq i32 %i.yb, %8
  br i1 %exitcond3565.not.1, label %._crit_edge2601, label %.lr.ph2600, !llvm.loop !826

._crit_edge2601:                                  ; preds = %.lr.ph2600.prol.loopexit, %.lr.ph2600, %.preheader2283
  %.lcssa2447 = phi <16 x i32> [ %.lcssa2446, %.preheader2283 ], [ %.lcssa5287.unr, %.lr.ph2600.prol.loopexit ], [ %i.xy, %.lr.ph2600 ]
  %.141237.lcssa = phi ptr [ %.131236.lcssa, %.preheader2283 ], [ %.lcssa5286.unr, %.lr.ph2600.prol.loopexit ], [ %i.ya, %.lr.ph2600 ]
  store <16 x i32> %.lcssa2447, ptr %.52606, align 64, !tbaa !116
  %i.yc = getelementptr inbounds nuw i8, ptr %.52606, i64 64 ; 2 uses
  %i.yd = add nuw nsw i32 %.412422604, 1          ; 2 uses
  %exitcond3566.not = icmp eq i32 %i.yd, %6
  br i1 %exitcond3566.not, label %._crit_edge2608, label %.lr.ph2607, !llvm.loop !827

._crit_edge2608:                                  ; preds = %._crit_edge2601, %.preheader2288
  %.5.lcssa = phi ptr [ %.41217.lcssa, %.preheader2288 ], [ %i.yc, %._crit_edge2601 ] ; 2 uses
  %i.ye = getelementptr inbounds i8, ptr %.012102612, i64 %i.l ; 2 uses
  %i.yf = add nuw nsw i32 %.012182610, 16         ; 2 uses
  %i.yg = or disjoint i32 %i.yf, 15
  %i.yh = icmp slt i32 %i.yg, %4
  %scevgep3559 = getelementptr i8, ptr %indvars.iv, i64 %i.l
  br i1 %i.yh, label %.preheader2292, label %.preheader2282.loopexit, !llvm.loop !828

.preheader2281:                                   ; preds = %.preheader2281.lr.ph, %._crit_edge2764
  %indvars.iv3571 = phi ptr [ %scevgep3570, %.preheader2281.lr.ph ], [ %scevgep3572, %._crit_edge2764 ] ; 4 uses
  %.112112768 = phi ptr [ %.01210.lcssa, %.preheader2281.lr.ph ], [ %i.atp, %._crit_edge2764 ] ; 13 uses
  %.62767 = phi ptr [ %.01213.lcssa, %.preheader2281.lr.ph ], [ %.11.lcssa, %._crit_edge2764 ] ; 2 uses
  %.112192766 = phi i32 [ %.01218.lcssa, %.preheader2281.lr.ph ], [ %i.atq, %._crit_edge2764 ]
  br i1 %i.ah, label %.lr.ph2649, label %.preheader2280

.preheader2271:                                   ; preds = %._crit_edge2764, %.preheader2282
  %.11219.lcssa = phi i32 [ %.01218.lcssa, %.preheader2282 ], [ %i.atq, %._crit_edge2764 ] ; 3 uses
  %.6.lcssa = phi ptr [ %.01213.lcssa, %.preheader2282 ], [ %.11.lcssa, %._crit_edge2764 ] ; 2 uses
  %.11211.lcssa = phi ptr [ %.01210.lcssa, %.preheader2282 ], [ %i.atp, %._crit_edge2764 ] ; 3 uses
  %i.yi = or disjoint i32 %.11219.lcssa, 3
  %i.yj = icmp slt i32 %i.yi, %4
  br i1 %i.yj, label %.preheader2270.lr.ph, label %.preheader2260

.preheader2270.lr.ph:                             ; preds = %.preheader2271
  %i.yk = icmp sgt i32 %6, 15
  %i.yl = icmp eq i32 %7, 0                       ; 5 uses
  %i.ym = icmp sgt i32 %8, 1                      ; 5 uses
  %i.yn = shl i32 %8, 2
  %i.yo = sext i32 %i.yn to i64                   ; 2 uses
  %i.yp = add i32 %8, -2                          ; 5 uses
  %i.yq = and i32 %i.yp, -2
  %i.yr = add nuw nsw i32 %i.yq, 2                ; 5 uses
  %i.ys = and i32 %6, -16
  %i.yt = zext i32 %i.yp to i64                   ; 2 uses
  %i.yu = lshr i64 %i.yt, 1                       ; 3 uses
  %i.yv = shl nuw nsw i64 %i.yu, 4
  %i.yw = shl nuw nsw i64 %i.yu, 3
  %i.yx = add nuw nsw i64 %i.yw, 8                ; 2 uses
  %scevgep3583 = getelementptr i8, ptr %.11211.lcssa, i64 %i.yx
  %i.yy = shl nuw nsw i64 %i.yu, 2
  %i.yz = and i64 %i.yt, 4294967294
  %i.za = lshr i32 %i.yp, 1                       ; 3 uses
  %i.zb = add nuw i32 %i.za, 1                    ; 4 uses
  %i.zc = icmp eq i32 %i.za, 0
  %unroll_iter5341 = and i32 %i.zb, -2
  %i.zd = and i32 %i.yp, 2
  %lcmp.mod5337.not.not = icmp eq i32 %i.zd, 0
  %lcmp.mod5340 = trunc i32 %i.zb to i1
  %i.ze = icmp eq i32 %i.za, 0
  %unroll_iter5349 = and i32 %i.zb, -2
  %i.zf = and i32 %i.yp, 2
  %lcmp.mod5346.not.not = icmp eq i32 %i.zf, 0
  %lcmp.mod5348 = trunc i32 %i.zb to i1
  br label %.preheader2270

.preheader2280:                                   ; preds = %._crit_edge2636, %.preheader2281
  %.01337.lcssa = phi i32 [ 0, %.preheader2281 ], [ %i.ap, %._crit_edge2636 ] ; 3 uses
  %.01271.lcssa = phi ptr [ %i.e, %.preheader2281 ], [ %.21273.lcssa, %._crit_edge2636 ] ; 2 uses
  %.7.lcssa = phi ptr [ %.62767, %.preheader2281 ], [ %i.aec, %._crit_edge2636 ] ; 2 uses
  %i.zg = or disjoint i32 %.01337.lcssa, 7
  %i.zh = icmp slt i32 %i.zg, %6
  br i1 %i.zh, label %.lr.ph2686, label %.preheader2279

.lr.ph2649:                                       ; preds = %.preheader2281, %._crit_edge2636
  %.72648 = phi ptr [ %i.aec, %._crit_edge2636 ], [ %.62767, %.preheader2281 ] ; 17 uses
  %.012712647 = phi ptr [ %.21273.lcssa, %._crit_edge2636 ], [ %i.e, %.preheader2281 ] ; 2 uses
  %.013372646 = phi i32 [ %i.aed, %._crit_edge2636 ], [ 0, %.preheader2281 ]
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph2649
  %i.zi = load <16 x i32>, ptr %.72648, align 64, !tbaa !116
  %i.zj = getelementptr inbounds nuw i8, ptr %.72648, i64 64
  %i.zk = load <16 x i32>, ptr %i.zj, align 64, !tbaa !116
  %i.zl = getelementptr inbounds nuw i8, ptr %.72648, i64 128
  %i.zm = load <16 x i32>, ptr %i.zl, align 64, !tbaa !116
  %i.zn = getelementptr inbounds nuw i8, ptr %.72648, i64 192
  %i.zo = load <16 x i32>, ptr %i.zn, align 64, !tbaa !116
  %i.zp = getelementptr inbounds nuw i8, ptr %.72648, i64 256
  %i.zq = load <16 x i32>, ptr %i.zp, align 64, !tbaa !116
  %i.zr = getelementptr inbounds nuw i8, ptr %.72648, i64 320
  %i.zs = load <16 x i32>, ptr %i.zr, align 64, !tbaa !116
  %i.zt = getelementptr inbounds nuw i8, ptr %.72648, i64 384
  %i.zu = load <16 x i32>, ptr %i.zt, align 64, !tbaa !116
  %i.zv = getelementptr inbounds nuw i8, ptr %.72648, i64 448
  %i.zw = load <16 x i32>, ptr %i.zv, align 64, !tbaa !116
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph2649, %bb.r
  %i.zx = phi <16 x i32> [ %i.zi, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.zy = phi <16 x i32> [ %i.zk, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.zz = phi <16 x i32> [ %i.zm, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.aaa = phi <16 x i32> [ %i.zo, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.aab = phi <16 x i32> [ %i.zq, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.aac = phi <16 x i32> [ %i.zs, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.aad = phi <16 x i32> [ %i.zu, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  %i.aae = phi <16 x i32> [ %i.zw, %bb.r ], [ zeroinitializer, %.lr.ph2649 ] ; 2 uses
  br i1 %i.aj, label %.lr.ph2620, label %.preheader2276

.preheader2276:                                   ; preds = %.lr.ph2620, %bb.s
  %.lcssa2347 = phi <16 x i32> [ %i.zx, %bb.s ], [ %i.aaw, %.lr.ph2620 ] ; 2 uses
  %.lcssa2346 = phi <16 x i32> [ %i.zy, %bb.s ], [ %i.aba, %.lr.ph2620 ] ; 2 uses
  %.lcssa2345 = phi <16 x i32> [ %i.zz, %bb.s ], [ %i.abd, %.lr.ph2620 ] ; 2 uses
  %.lcssa2344 = phi <16 x i32> [ %i.aaa, %bb.s ], [ %i.abf, %.lr.ph2620 ] ; 2 uses
  %.lcssa2343 = phi <16 x i32> [ %i.aab, %bb.s ], [ %i.abi, %.lr.ph2620 ] ; 2 uses
  %.lcssa2342 = phi <16 x i32> [ %i.aac, %bb.s ], [ %i.abm, %.lr.ph2620 ] ; 2 uses
  %.lcssa2341 = phi <16 x i32> [ %i.aad, %bb.s ], [ %i.abo, %.lr.ph2620 ] ; 2 uses
  %.lcssa2340 = phi <16 x i32> [ %i.aae, %bb.s ], [ %i.abq, %.lr.ph2620 ] ; 2 uses
  %.01344.lcssa = phi i32 [ 0, %bb.s ], [ %i.ao, %.lr.ph2620 ] ; 2 uses
  %.01342.lcssa = phi ptr [ %.112112768, %bb.s ], [ %i.abr, %.lr.ph2620 ]
  %.11272.lcssa = phi ptr [ %.012712647, %bb.s ], [ %i.abs, %.lr.ph2620 ] ; 2 uses
  %i.aaf = icmp slt i32 %.01344.lcssa, %8
  br i1 %i.aaf, label %.lr.ph2635, label %._crit_edge2636

.lr.ph2620:                                       ; preds = %bb.s, %.lr.ph2620
  %.112722618 = phi ptr [ %i.abs, %.lr.ph2620 ], [ %.012712647, %bb.s ] ; 2 uses
  %.013422617 = phi ptr [ %i.abr, %.lr.ph2620 ], [ %.112112768, %bb.s ] ; 2 uses
  %.013442616 = phi i32 [ %i.abt, %.lr.ph2620 ], [ 0, %bb.s ]
  %i.aag = phi <16 x i32> [ %i.abq, %.lr.ph2620 ], [ %i.aae, %bb.s ]
  %i.aah = phi <16 x i32> [ %i.abo, %.lr.ph2620 ], [ %i.aad, %bb.s ]
  %i.aai = phi <16 x i32> [ %i.abm, %.lr.ph2620 ], [ %i.aac, %bb.s ]
  %i.aaj = phi <16 x i32> [ %i.abi, %.lr.ph2620 ], [ %i.aab, %bb.s ]
  %i.aak = phi <16 x i32> [ %i.abf, %.lr.ph2620 ], [ %i.aaa, %bb.s ]
  %i.aal = phi <16 x i32> [ %i.abd, %.lr.ph2620 ], [ %i.zz, %bb.s ]
  %i.aam = phi <16 x i32> [ %i.aba, %.lr.ph2620 ], [ %i.zy, %bb.s ]
  %i.aan = phi <16 x i32> [ %i.aaw, %.lr.ph2620 ], [ %i.zx, %bb.s ]
  %i.aao = load <16 x i8>, ptr %.013422617, align 16, !tbaa !116
  %i.aap = load <32 x i8>, ptr %.112722618, align 1, !tbaa !116 ; 2 uses
  %i.aaq = sext <16 x i8> %i.aao to <16 x i16>
  %i.aar = sext <32 x i8> %i.aap to <32 x i16>    ; 3 uses
  %i.aas = bitcast <32 x i16> %i.aar to <8 x i64>
  %i.aat = shufflevector <16 x i16> %i.aaq, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.aau = shufflevector <8 x i64> %i.aas, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.aav = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aat, <32 x i16> %i.aar)
  %i.aaw = add <16 x i32> %i.aav, %i.aan          ; 2 uses
  %i.aax = shufflevector <32 x i8> %i.aap, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.aay = sext <32 x i8> %i.aax to <32 x i16>    ; 2 uses
  %i.aaz = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aat, <32 x i16> %i.aay)
  %i.aba = add <16 x i32> %i.aaz, %i.aam          ; 2 uses
  %i.abb = shufflevector <32 x i16> %i.aat, <32 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.abc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.abb, <32 x i16> %i.aar)
  %i.abd = add <16 x i32> %i.abc, %i.aal          ; 2 uses
  %i.abe = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.abb, <32 x i16> %i.aay)
  %i.abf = add <16 x i32> %i.abe, %i.aak          ; 2 uses
  %i.abg = bitcast <8 x i64> %i.aau to <32 x i16> ; 2 uses
  %i.abh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aat, <32 x i16> %i.abg)
  %i.abi = add <16 x i32> %i.abh, %i.aaj          ; 2 uses
  %i.abj = bitcast <8 x i64> %i.aau to <32 x i16>
  %i.abk = shufflevector <32 x i16> %i.abj, <32 x i16> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 2 uses
  %i.abl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aat, <32 x i16> %i.abk)
  %i.abm = add <16 x i32> %i.abl, %i.aai          ; 2 uses
  %i.abn = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.abb, <32 x i16> %i.abg)
  %i.abo = add <16 x i32> %i.abn, %i.aah          ; 2 uses
  %i.abp = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.abb, <32 x i16> %i.abk)
  %i.abq = add <16 x i32> %i.abp, %i.aag          ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.013422617, i64 16 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.112722618, i64 32 ; 2 uses
  %i.abt = add nuw nsw i32 %.013442616, 2         ; 2 uses
  %i.abu = or disjoint i32 %i.abt, 1
  %i.abv = icmp slt i32 %i.abu, %8
  br i1 %i.abv, label %.lr.ph2620, label %.preheader2276, !llvm.loop !829

.lr.ph2635:                                       ; preds = %.preheader2276, %.lr.ph2635
  %.212732634 = phi ptr [ %i.adt, %.lr.ph2635 ], [ %.11272.lcssa, %.preheader2276 ] ; 2 uses
  %.113432633 = phi ptr [ %i.ads, %.lr.ph2635 ], [ %.01342.lcssa, %.preheader2276 ] ; 2 uses
  %.113452632 = phi i32 [ %i.adu, %.lr.ph2635 ], [ %.01344.lcssa, %.preheader2276 ]
  %i.abw = phi <16 x i32> [ %i.adr, %.lr.ph2635 ], [ %.lcssa2340, %.preheader2276 ]
  %i.abx = phi <16 x i32> [ %i.ado, %.lr.ph2635 ], [ %.lcssa2341, %.preheader2276 ]
  %i.aby = phi <16 x i32> [ %i.adl, %.lr.ph2635 ], [ %.lcssa2342, %.preheader2276 ]
  %i.abz = phi <16 x i32> [ %i.adi, %.lr.ph2635 ], [ %.lcssa2343, %.preheader2276 ]
  %i.aca = phi <16 x i32> [ %i.adf, %.lr.ph2635 ], [ %.lcssa2344, %.preheader2276 ]
  %i.acb = phi <16 x i32> [ %i.adc, %.lr.ph2635 ], [ %.lcssa2345, %.preheader2276 ]
  %i.acc = phi <16 x i32> [ %i.acy, %.lr.ph2635 ], [ %.lcssa2346, %.preheader2276 ]
  %i.acd = phi <16 x i32> [ %i.acv, %.lr.ph2635 ], [ %.lcssa2347, %.preheader2276 ]
  %i.ace = load <8 x i8>, ptr %.113432633, align 1, !tbaa !116
  %i.acf = load <16 x i8>, ptr %.212732634, align 16, !tbaa !116 ; 2 uses
  %i.acg = sext <8 x i8> %i.ace to <8 x i16>
  %i.ach = bitcast <8 x i16> %i.acg to <2 x i64>
  %i.aci = sext <16 x i8> %i.acf to <16 x i16>    ; 3 uses
  %i.acj = shufflevector <2 x i64> %i.ach, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ack = bitcast <4 x i64> %i.acj to <8 x i32>
  %i.acl = shufflevector <8 x i32> %i.ack, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.acm = shufflevector <16 x i8> %i.acf, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.acn = sext <16 x i8> %i.acm to <16 x i16>    ; 2 uses
  %i.aco = bitcast <16 x i16> %i.aci to <32 x i8>
  %i.acp = shufflevector <32 x i8> %i.aco, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.acq = bitcast <32 x i8> %i.acp to <16 x i16> ; 3 uses
  %i.acr = shufflevector <16 x i16> %i.acq, <16 x i16> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.acs = bitcast <4 x i64> %i.acj to <16 x i16> ; 4 uses
  %i.act = mul <16 x i16> %i.acs, %i.aci
  %i.acu = sext <16 x i16> %i.act to <16 x i32>
  %i.acv = add <16 x i32> %i.acd, %i.acu          ; 2 uses
  %i.acw = mul <16 x i16> %i.acn, %i.acs
  %i.acx = sext <16 x i16> %i.acw to <16 x i32>
  %i.acy = add <16 x i32> %i.acc, %i.acx          ; 2 uses
  %i.acz = bitcast <8 x i32> %i.acl to <16 x i16> ; 4 uses
  %i.ada = mul <16 x i16> %i.acz, %i.aci
  %i.adb = sext <16 x i16> %i.ada to <16 x i32>
  %i.adc = add <16 x i32> %i.acb, %i.adb          ; 2 uses
  %i.add = mul <16 x i16> %i.acn, %i.acz
  %i.ade = sext <16 x i16> %i.add to <16 x i32>
  %i.adf = add <16 x i32> %i.aca, %i.ade          ; 2 uses
  %i.adg = mul <16 x i16> %i.acq, %i.acs
  %i.adh = sext <16 x i16> %i.adg to <16 x i32>
  %i.adi = add <16 x i32> %i.abz, %i.adh          ; 2 uses
  %i.adj = mul <16 x i16> %i.acr, %i.acs
  %i.adk = sext <16 x i16> %i.adj to <16 x i32>
  %i.adl = add <16 x i32> %i.aby, %i.adk          ; 2 uses
  %i.adm = mul <16 x i16> %i.acz, %i.acq
  %i.adn = sext <16 x i16> %i.adm to <16 x i32>
  %i.ado = add <16 x i32> %i.abx, %i.adn          ; 2 uses
  %i.adp = mul <16 x i16> %i.acr, %i.acz
  %i.adq = sext <16 x i16> %i.adp to <16 x i32>
  %i.adr = add <16 x i32> %i.abw, %i.adq          ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.113432633, i64 8
  %i.adt = getelementptr inbounds nuw i8, ptr %.212732634, i64 16 ; 2 uses
  %i.adu = add nuw nsw i32 %.113452632, 1         ; 2 uses
  %exitcond3567.not = icmp eq i32 %i.adu, %8
  br i1 %exitcond3567.not, label %._crit_edge2636, label %.lr.ph2635, !llvm.loop !830

._crit_edge2636:                                  ; preds = %.lr.ph2635, %.preheader2276
  %.lcssa2355 = phi <16 x i32> [ %.lcssa2347, %.preheader2276 ], [ %i.acv, %.lr.ph2635 ]
  %.lcssa2354 = phi <16 x i32> [ %.lcssa2346, %.preheader2276 ], [ %i.acy, %.lr.ph2635 ]
  %.lcssa2353 = phi <16 x i32> [ %.lcssa2345, %.preheader2276 ], [ %i.adc, %.lr.ph2635 ]
  %.lcssa2352 = phi <16 x i32> [ %.lcssa2344, %.preheader2276 ], [ %i.adf, %.lr.ph2635 ]
  %.lcssa2351 = phi <16 x i32> [ %.lcssa2343, %.preheader2276 ], [ %i.adi, %.lr.ph2635 ]
  %.lcssa2350 = phi <16 x i32> [ %.lcssa2342, %.preheader2276 ], [ %i.adl, %.lr.ph2635 ]
  %.lcssa2349 = phi <16 x i32> [ %.lcssa2341, %.preheader2276 ], [ %i.ado, %.lr.ph2635 ]
  %.lcssa2348 = phi <16 x i32> [ %.lcssa2340, %.preheader2276 ], [ %i.adr, %.lr.ph2635 ]
  %.21273.lcssa = phi ptr [ %.11272.lcssa, %.preheader2276 ], [ %i.adt, %.lr.ph2635 ] ; 2 uses
  store <16 x i32> %.lcssa2355, ptr %.72648, align 64, !tbaa !116
  %i.adv = getelementptr inbounds nuw i8, ptr %.72648, i64 64
  store <16 x i32> %.lcssa2354, ptr %i.adv, align 64, !tbaa !116
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.aqe = getelementptr inbounds nuw i8, ptr %.102739, i64 64 ; 2 uses
  %i.aqf = add nuw nsw i32 %.313402737, 2         ; 3 uses
  %i.aqg = or disjoint i32 %i.aqf, 1
  %i.aqh = icmp slt i32 %i.aqg, %6
  br i1 %i.aqh, label %.lr.ph2740, label %.preheader2277, !llvm.loop !840

.lr.ph2763:                                       ; preds = %.preheader2277, %._crit_edge2757
  %.112762 = phi ptr [ %i.atn, %._crit_edge2757 ], [ %.10.lcssa, %.preheader2277 ] ; 3 uses
  %.1212832761 = phi ptr [ %.141285.lcssa, %._crit_edge2757 ], [ %.91280.lcssa, %.preheader2277 ] ; 4 uses
  %.413412760 = phi i32 [ %i.ato, %._crit_edge2757 ], [ %.31340.lcssa, %.preheader2277 ]
  br i1 %i.ai, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph2763
  %i.aqi = load <8 x i32>, ptr %.112762, align 32, !tbaa !116
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph2763, %bb.z
  %i.aqj = phi <8 x i32> [ %i.aqi, %bb.z ], [ zeroinitializer, %.lr.ph2763 ] ; 3 uses
  br i1 %i.aj, label %.lr.ph2748.preheader, label %.preheader2272

.lr.ph2748.preheader:                             ; preds = %bb.aa
  br i1 %i.bb, label %.lr.ph2748.epil.preheader, label %.lr.ph2748

.preheader2272.loopexit.unr-lcssa:                ; preds = %.lr.ph2748
  br i1 %lcmp.mod5324.not.not, label %.lr.ph2748.epil.preheader, label %.preheader2272.loopexit

.lr.ph2748.epil.preheader:                        ; preds = %.preheader2272.loopexit.unr-lcssa, %.lr.ph2748.preheader
  %.1312842746.epil.init = phi ptr [ %.1212832761, %.lr.ph2748.preheader ], [ %i.aso, %.preheader2272.loopexit.unr-lcssa ]
  %.013622745.epil.init = phi ptr [ %.112112768, %.lr.ph2748.preheader ], [ %i.asn, %.preheader2272.loopexit.unr-lcssa ]
  %.epil.init5323 = phi <8 x i32> [ %i.aqj, %.lr.ph2748.preheader ], [ %i.asm, %.preheader2272.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5326)
  %i.aqk = load <16 x i8>, ptr %.013622745.epil.init, align 16, !tbaa !116
  %i.aql = load float, ptr %.1312842746.epil.init, align 1, !tbaa !116
  %i.aqm = insertelement <4 x float> poison, float %i.aql, i64 0
  %i.aqn = sext <16 x i8> %i.aqk to <16 x i16>
  %i.aqo = bitcast <4 x float> %i.aqm to <16 x i8>
  %i.aqp = shufflevector <16 x i8> %i.aqo, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aqq = sext <16 x i8> %i.aqp to <16 x i16>
  %i.aqr = bitcast <16 x i16> %i.aqq to <8 x i32>
  %i.aqs = shufflevector <8 x i32> %i.aqr, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aqt = bitcast <8 x i32> %i.aqs to <16 x i16>
  %i.aqu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aqn, <16 x i16> %i.aqt)
  %i.aqv = add <8 x i32> %i.aqu, %.epil.init5323
  br label %.preheader2272.loopexit

.preheader2272.loopexit:                          ; preds = %.preheader2272.loopexit.unr-lcssa, %.lr.ph2748.epil.preheader
  %.lcssa5205 = phi <8 x i32> [ %i.asm, %.preheader2272.loopexit.unr-lcssa ], [ %i.aqv, %.lr.ph2748.epil.preheader ]
  %i.aqw = getelementptr i8, ptr %.1212832761, i64 %i.aw
  %scevgep3577 = getelementptr i8, ptr %i.aqw, i64 2
  br label %.preheader2272

.preheader2272:                                   ; preds = %.preheader2272.loopexit, %bb.aa
  %.lcssa2384 = phi <8 x i32> [ %i.aqj, %bb.aa ], [ %.lcssa5205, %.preheader2272.loopexit ] ; 3 uses
  %.01364.lcssa = phi i32 [ 0, %bb.aa ], [ %i.ao, %.preheader2272.loopexit ] ; 5 uses
  %.01362.lcssa = phi ptr [ %.112112768, %bb.aa ], [ %indvars.iv3571, %.preheader2272.loopexit ] ; 3 uses
  %.131284.lcssa = phi ptr [ %.1212832761, %bb.aa ], [ %scevgep3577, %.preheader2272.loopexit ] ; 4 uses
  %i.aqx = icmp slt i32 %.01364.lcssa, %8
  br i1 %i.aqx, label %.lr.ph2756.preheader, label %._crit_edge2757

.lr.ph2756.preheader:                             ; preds = %.preheader2272
  %i.aqy = sub i32 %8, %.01364.lcssa
  %.neg5431 = add i32 %.01364.lcssa, 1
  %xtraiter5329 = and i32 %i.aqy, 1
  %lcmp.mod5330.not = icmp eq i32 %xtraiter5329, 0
  br i1 %lcmp.mod5330.not, label %.lr.ph2756.prol.loopexit, label %.lr.ph2756.prol

.lr.ph2756.prol:                                  ; preds = %.lr.ph2756.preheader
  %i.aqz = load <8 x i8>, ptr %.01362.lcssa, align 1, !tbaa !116
  %i.ara = load i8, ptr %.131284.lcssa, align 1, !tbaa !116
  %i.arb = sext i8 %i.ara to i16
  %i.arc = insertelement <8 x i16> poison, i16 %i.arb, i64 0
  %i.ard = shufflevector <8 x i16> %i.arc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.are = sext <8 x i8> %i.aqz to <8 x i16>
  %i.arf = mul <8 x i16> %i.ard, %i.are
  %i.arg = sext <8 x i16> %i.arf to <8 x i32>
  %i.arh = add <8 x i32> %.lcssa2384, %i.arg      ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.01362.lcssa, i64 8
  %i.arj = getelementptr inbounds nuw i8, ptr %.131284.lcssa, i64 1 ; 2 uses
  %i.ark = add nuw nsw i32 %.01364.lcssa, 1
  br label %.lr.ph2756.prol.loopexit

.lr.ph2756.prol.loopexit:                         ; preds = %.lr.ph2756.prol, %.lr.ph2756.preheader
  %.lcssa5207.unr = phi <8 x i32> [ poison, %.lr.ph2756.preheader ], [ %i.arh, %.lr.ph2756.prol ]
  %.lcssa5206.unr = phi ptr [ poison, %.lr.ph2756.preheader ], [ %i.arj, %.lr.ph2756.prol ]
  %.1412852755.unr = phi ptr [ %.131284.lcssa, %.lr.ph2756.preheader ], [ %i.arj, %.lr.ph2756.prol ]
  %.113632754.unr = phi ptr [ %.01362.lcssa, %.lr.ph2756.preheader ], [ %i.ari, %.lr.ph2756.prol ]
  %.113652753.unr = phi i32 [ %.01364.lcssa, %.lr.ph2756.preheader ], [ %i.ark, %.lr.ph2756.prol ]
  %.unr5331 = phi <8 x i32> [ %.lcssa2384, %.lr.ph2756.preheader ], [ %i.arh, %.lr.ph2756.prol ]
  %i.arl = icmp eq i32 %8, %.neg5431
  br i1 %i.arl, label %._crit_edge2757, label %.lr.ph2756

.lr.ph2748:                                       ; preds = %.lr.ph2748.preheader, %.lr.ph2748
  %.1312842746 = phi ptr [ %i.aso, %.lr.ph2748 ], [ %.1212832761, %.lr.ph2748.preheader ] ; 3 uses
  %.013622745 = phi ptr [ %i.asn, %.lr.ph2748 ], [ %.112112768, %.lr.ph2748.preheader ] ; 3 uses
  %i.arm = phi <8 x i32> [ %i.asm, %.lr.ph2748 ], [ %i.aqj, %.lr.ph2748.preheader ]
  %niter5328 = phi i32 [ %niter5328.next.1, %.lr.ph2748 ], [ 0, %.lr.ph2748.preheader ]
  %i.arn = load <16 x i8>, ptr %.013622745, align 16, !tbaa !116
  %i.aro = load float, ptr %.1312842746, align 1, !tbaa !116
  %i.arp = insertelement <4 x float> poison, float %i.aro, i64 0
  %i.arq = sext <16 x i8> %i.arn to <16 x i16>
  %i.arr = bitcast <4 x float> %i.arp to <16 x i8>
  %i.ars = shufflevector <16 x i8> %i.arr, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.art = sext <16 x i8> %i.ars to <16 x i16>
  %i.aru = bitcast <16 x i16> %i.art to <8 x i32>
  %i.arv = shufflevector <8 x i32> %i.aru, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.arw = bitcast <8 x i32> %i.arv to <16 x i16>
  %i.arx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.arq, <16 x i16> %i.arw)
  %i.ary = add <8 x i32> %i.arx, %i.arm
  %i.arz = getelementptr inbounds nuw i8, ptr %.013622745, i64 16
  %i.asa = getelementptr inbounds nuw i8, ptr %.1312842746, i64 2
  %i.asb = load <16 x i8>, ptr %i.arz, align 16, !tbaa !116
  %i.asc = load float, ptr %i.asa, align 1, !tbaa !116
  %i.asd = insertelement <4 x float> poison, float %i.asc, i64 0
  %i.ase = sext <16 x i8> %i.asb to <16 x i16>
  %i.asf = bitcast <4 x float> %i.asd to <16 x i8>
  %i.asg = shufflevector <16 x i8> %i.asf, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ash = sext <16 x i8> %i.asg to <16 x i16>
  %i.asi = bitcast <16 x i16> %i.ash to <8 x i32>
  %i.asj = shufflevector <8 x i32> %i.asi, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ask = bitcast <8 x i32> %i.asj to <16 x i16>
  %i.asl = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ase, <16 x i16> %i.ask)
  %i.asm = add <8 x i32> %i.asl, %i.ary           ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.013622745, i64 32 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.1312842746, i64 4 ; 2 uses
  %niter5328.next.1 = add nuw nsw i32 %niter5328, 2 ; 2 uses
  %niter5328.ncmp.1.not = icmp eq i32 %niter5328.next.1, %unroll_iter5327
  br i1 %niter5328.ncmp.1.not, label %.preheader2272.loopexit.unr-lcssa, label %.lr.ph2748, !llvm.loop !841

.lr.ph2756:                                       ; preds = %.lr.ph2756.prol.loopexit, %.lr.ph2756
  %.1412852755 = phi ptr [ %i.atl, %.lr.ph2756 ], [ %.1412852755.unr, %.lr.ph2756.prol.loopexit ] ; 3 uses
  %.113632754 = phi ptr [ %i.atk, %.lr.ph2756 ], [ %.113632754.unr, %.lr.ph2756.prol.loopexit ] ; 3 uses
  %.113652753 = phi i32 [ %i.atm, %.lr.ph2756 ], [ %.113652753.unr, %.lr.ph2756.prol.loopexit ]
  %i.asp = phi <8 x i32> [ %i.atj, %.lr.ph2756 ], [ %.unr5331, %.lr.ph2756.prol.loopexit ]
  %i.asq = load <8 x i8>, ptr %.113632754, align 1, !tbaa !116
  %i.asr = load i8, ptr %.1412852755, align 1, !tbaa !116
  %i.ass = sext i8 %i.asr to i16
  %i.ast = insertelement <8 x i16> poison, i16 %i.ass, i64 0
  %i.asu = shufflevector <8 x i16> %i.ast, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.asv = sext <8 x i8> %i.asq to <8 x i16>
  %i.asw = mul <8 x i16> %i.asu, %i.asv
  %i.asx = sext <8 x i16> %i.asw to <8 x i32>
  %i.asy = add <8 x i32> %i.asp, %i.asx
  %i.asz = getelementptr inbounds nuw i8, ptr %.113632754, i64 8
  %i.ata = getelementptr inbounds nuw i8, ptr %.1412852755, i64 1
  %i.atb = load <8 x i8>, ptr %i.asz, align 1, !tbaa !116
  %i.atc = load i8, ptr %i.ata, align 1, !tbaa !116
  %i.atd = sext i8 %i.atc to i16
  %i.ate = insertelement <8 x i16> poison, i16 %i.atd, i64 0
  %i.atf = shufflevector <8 x i16> %i.ate, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.atg = sext <8 x i8> %i.atb to <8 x i16>
  %i.ath = mul <8 x i16> %i.atf, %i.atg
  %i.ati = sext <8 x i16> %i.ath to <8 x i32>
  %i.atj = add <8 x i32> %i.asy, %i.ati           ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.113632754, i64 16
  %i.atl = getelementptr inbounds nuw i8, ptr %.1412852755, i64 2 ; 2 uses
  %i.atm = add nuw nsw i32 %.113652753, 2         ; 2 uses
  %exitcond3578.not.1 = icmp eq i32 %i.atm, %8
  br i1 %exitcond3578.not.1, label %._crit_edge2757, label %.lr.ph2756, !llvm.loop !842

._crit_edge2757:                                  ; preds = %.lr.ph2756.prol.loopexit, %.lr.ph2756, %.preheader2272
  %.lcssa2385 = phi <8 x i32> [ %.lcssa2384, %.preheader2272 ], [ %.lcssa5207.unr, %.lr.ph2756.prol.loopexit ], [ %i.atj, %.lr.ph2756 ]
  %.141285.lcssa = phi ptr [ %.131284.lcssa, %.preheader2272 ], [ %.lcssa5206.unr, %.lr.ph2756.prol.loopexit ], [ %i.atl, %.lr.ph2756 ]
  store <8 x i32> %.lcssa2385, ptr %.112762, align 32, !tbaa !116
  %i.atn = getelementptr inbounds nuw i8, ptr %.112762, i64 32 ; 2 uses
  %i.ato = add nuw nsw i32 %.413412760, 1         ; 2 uses
  %exitcond3579.not = icmp eq i32 %i.ato, %6
  br i1 %exitcond3579.not, label %._crit_edge2764, label %.lr.ph2763, !llvm.loop !843

._crit_edge2764:                                  ; preds = %._crit_edge2757, %.preheader2277
  %.11.lcssa = phi ptr [ %.10.lcssa, %.preheader2277 ], [ %i.atn, %._crit_edge2757 ] ; 2 uses
  %i.atp = getelementptr inbounds i8, ptr %.112112768, i64 %i.al ; 2 uses
  %i.atq = add nuw nsw i32 %.112192766, 8         ; 3 uses
  %i.atr = or disjoint i32 %i.atq, 7
  %i.ats = icmp slt i32 %i.atr, %4
  %scevgep3572 = getelementptr i8, ptr %indvars.iv3571, i64 %i.al
  br i1 %i.ats, label %.preheader2281, label %.preheader2271, !llvm.loop !844

.preheader2270:                                   ; preds = %.preheader2270.lr.ph, %._crit_edge2904
  %indvars.iv3584 = phi ptr [ %scevgep3583, %.preheader2270.lr.ph ], [ %scevgep3585, %._crit_edge2904 ] ; 4 uses
  %.212122908 = phi ptr [ %.11211.lcssa, %.preheader2270.lr.ph ], [ %i.bkt, %._crit_edge2904 ] ; 13 uses
  %.122907 = phi ptr [ %.6.lcssa, %.preheader2270.lr.ph ], [ %.17.lcssa, %._crit_edge2904 ] ; 2 uses
  %.212202906 = phi i32 [ %.11219.lcssa, %.preheader2270.lr.ph ], [ %i.bku, %._crit_edge2904 ]
  br i1 %i.yk, label %.lr.ph2797, label %.preheader2269

.preheader2260:                                   ; preds = %._crit_edge2904, %.preheader2271
  %.21220.lcssa = phi i32 [ %.11219.lcssa, %.preheader2271 ], [ %i.bku, %._crit_edge2904 ] ; 3 uses
  %.12.lcssa = phi ptr [ %.6.lcssa, %.preheader2271 ], [ %.17.lcssa, %._crit_edge2904 ] ; 2 uses
  %.21212.lcssa = phi ptr [ %.11211.lcssa, %.preheader2271 ], [ %i.bkt, %._crit_edge2904 ] ; 3 uses
  %i.att = or disjoint i32 %.21220.lcssa, 1
  %i.atu = icmp slt i32 %i.att, %4
  br i1 %i.atu, label %.preheader2259.lr.ph, label %.preheader2249

.preheader2259.lr.ph:                             ; preds = %.preheader2260
  %i.atv = icmp sgt i32 %6, 15
  %i.atw = icmp eq i32 %7, 0                      ; 5 uses
  %i.atx = icmp sgt i32 %8, 1                     ; 5 uses
  %i.aty = shl i32 %8, 1
  %i.atz = sext i32 %i.aty to i64                 ; 2 uses
  %i.aua = add i32 %8, -2                         ; 6 uses
  %i.aub = and i32 %i.aua, -2
  %i.auc = add nuw nsw i32 %i.aub, 2              ; 6 uses
  %i.aud = and i32 %6, -16
  %i.aue = zext i32 %i.aua to i64                 ; 2 uses
  %i.auf = lshr i64 %i.aue, 1                     ; 4 uses
  %i.aug = shl nuw nsw i64 %i.auf, 4
  %i.auh = shl nuw nsw i64 %i.auf, 2
  %i.aui = add nuw nsw i64 %i.auh, 4              ; 2 uses
  %scevgep3596 = getelementptr i8, ptr %.21212.lcssa, i64 %i.aui
  %i.auj = shl nuw nsw i64 %i.auf, 3
  %i.auk = and i64 %i.aue, 4294967294
  %i.aul = add nuw nsw i64 %i.auf, 1              ; 10 uses
  %i.aum = add i32 %8, -2                         ; 4 uses
  %i.aun = lshr i32 %i.aum, 1                     ; 4 uses
  %i.auo = add nuw i32 %i.aun, 1                  ; 6 uses
  %i.aup = icmp eq i32 %i.aun, 0
  %unroll_iter5365 = and i32 %i.auo, -2
  %i.auq = and i32 %i.aum, 2
  %lcmp.mod5359.not.not = icmp eq i32 %i.auq, 0
  %lcmp.mod5364 = trunc i32 %i.auo to i1
  %i.aur = icmp eq i32 %i.aun, 0
  %unroll_iter5377 = and i32 %i.auo, -2
  %i.aus = and i32 %i.aum, 2
  %lcmp.mod5372.not.not = icmp eq i32 %i.aus, 0
  %lcmp.mod5376 = trunc i32 %i.auo to i1
  %i.aut = icmp eq i32 %i.aun, 0
  %unroll_iter5392 = and i32 %i.auo, -2
  %i.auu = and i32 %i.aum, 2
  %lcmp.mod5388.not.not = icmp eq i32 %i.auu, 0
  %lcmp.mod5391 = trunc i32 %i.auo to i1
  %min.iters.check4431 = icmp ult i32 %i.aua, 6
  %min.iters.check4433 = icmp ult i32 %i.aua, 62
  %i.auv = and i64 %i.aul, 28
  %n.vec4435 = and i64 %i.aul, 4294967264         ; 5 uses
  %i.auw = trunc nuw i64 %n.vec4435 to i32
  %i.aux = shl i32 %i.auw, 1
  %i.auy = shl nuw nsw i64 %n.vec4435, 2          ; 2 uses
  %cmp.n4476 = icmp eq i64 %i.aul, %n.vec4435
  %min.epilog.iters.check4487 = icmp eq i64 %i.auv, 0
  %n.vec4489 = and i64 %i.aul, 4294967292         ; 4 uses
  %i.auz = trunc nuw i64 %n.vec4489 to i32
  %i.ava = shl i32 %i.auz, 1
  %i.avb = shl nuw nsw i64 %n.vec4489, 2          ; 2 uses
  %cmp.n4510 = icmp eq i64 %i.aul, %n.vec4489
  %min.iters.check4259 = icmp ult i32 %i.aua, 14
  %min.iters.check4261 = icmp ult i32 %i.aua, 126
  %i.avc = and i64 %i.aul, 56
  %n.vec4263 = and i64 %i.aul, 4294967232         ; 6 uses
  %i.avd = trunc nuw i64 %n.vec4263 to i32
  %i.ave = shl i32 %i.avd, 1
  %i.avf = shl nuw nsw i64 %n.vec4263, 2
  %i.avg = shl nuw nsw i64 %n.vec4263, 1
  %cmp.n4322 = icmp eq i64 %i.aul, %n.vec4263
  %min.epilog.iters.check4331 = icmp eq i64 %i.avc, 0
  %n.vec4333 = and i64 %i.aul, 4294967288         ; 5 uses
  %i.avh = trunc nuw i64 %n.vec4333 to i32
  %i.avi = shl i32 %i.avh, 1
  %i.avj = shl nuw nsw i64 %n.vec4333, 2
  %i.avk = shl nuw nsw i64 %n.vec4333, 1
  %cmp.n4350 = icmp eq i64 %i.aul, %n.vec4333
  br label %.preheader2259

.preheader2269:                                   ; preds = %._crit_edge2788, %.preheader2270
  %.01381.lcssa = phi i32 [ 0, %.preheader2270 ], [ %i.ys, %._crit_edge2788 ] ; 3 uses
  %.01366.lcssa = phi ptr [ %i.e, %.preheader2270 ], [ %.21368.lcssa, %._crit_edge2788 ] ; 2 uses
  %.13.lcssa = phi ptr [ %.122907, %.preheader2270 ], [ %i.ayk, %._crit_edge2788 ] ; 2 uses
  %i.avl = or disjoint i32 %.01381.lcssa, 7
  %i.avm = icmp slt i32 %i.avl, %6
  br i1 %i.avm, label %.lr.ph2826, label %.preheader2268

.lr.ph2797:                                       ; preds = %.preheader2270, %._crit_edge2788
  %.132796 = phi ptr [ %i.ayk, %._crit_edge2788 ], [ %.122907, %.preheader2270 ] ; 9 uses
  %.013662795 = phi ptr [ %.21368.lcssa, %._crit_edge2788 ], [ %i.e, %.preheader2270 ] ; 2 uses
  %.013812794 = phi i32 [ %i.ayl, %._crit_edge2788 ], [ 0, %.preheader2270 ]
  br i1 %i.yl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph2797
  %i.avn = load <16 x i32>, ptr %.132796, align 1, !tbaa !116
  %i.avo = getelementptr inbounds nuw i8, ptr %.132796, i64 64
  %i.avp = load <16 x i32>, ptr %i.avo, align 1, !tbaa !116
  %i.avq = getelementptr inbounds nuw i8, ptr %.132796, i64 128
  %i.avr = load <16 x i32>, ptr %i.avq, align 1, !tbaa !116
  %i.avs = getelementptr inbounds nuw i8, ptr %.132796, i64 192
  %i.avt = load <16 x i32>, ptr %i.avs, align 1, !tbaa !116
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph2797, %bb.ab
  %i.avu = phi <16 x i32> [ %i.avn, %bb.ab ], [ zeroinitializer, %.lr.ph2797 ] ; 2 uses
  %i.avv = phi <16 x i32> [ %i.avp, %bb.ab ], [ zeroinitializer, %.lr.ph2797 ] ; 2 uses
  %i.avw = phi <16 x i32> [ %i.avr, %bb.ab ], [ zeroinitializer, %.lr.ph2797 ] ; 2 uses
  %i.avx = phi <16 x i32> [ %i.avt, %bb.ab ], [ zeroinitializer, %.lr.ph2797 ] ; 2 uses
  br i1 %i.ym, label %.lr.ph2776, label %.preheader2265

.preheader2265:                                   ; preds = %.lr.ph2776, %bb.ac
  %.lcssa2313 = phi <16 x i32> [ %i.avu, %bb.ac ], [ %i.awm, %.lr.ph2776 ] ; 2 uses
  %.lcssa2312 = phi <16 x i32> [ %i.avv, %bb.ac ], [ %i.awq, %.lr.ph2776 ] ; 2 uses
  %.lcssa2311 = phi <16 x i32> [ %i.avw, %bb.ac ], [ %i.awu, %.lr.ph2776 ] ; 2 uses
  %.lcssa2310 = phi <16 x i32> [ %i.avx, %bb.ac ], [ %i.aww, %.lr.ph2776 ] ; 2 uses
  %.01388.lcssa = phi i32 [ 0, %bb.ac ], [ %i.yr, %.lr.ph2776 ] ; 2 uses
  %.01386.lcssa = phi ptr [ %.212122908, %bb.ac ], [ %i.awx, %.lr.ph2776 ]
  %.11367.lcssa = phi ptr [ %.013662795, %bb.ac ], [ %i.awy, %.lr.ph2776 ] ; 2 uses
  %i.avy = icmp slt i32 %.01388.lcssa, %8
  br i1 %i.avy, label %.lr.ph2787, label %._crit_edge2788

.lr.ph2776:                                       ; preds = %bb.ac, %.lr.ph2776
  %.113672774 = phi ptr [ %i.awy, %.lr.ph2776 ], [ %.013662795, %bb.ac ] ; 2 uses
  %.013862773 = phi ptr [ %i.awx, %.lr.ph2776 ], [ %.212122908, %bb.ac ] ; 2 uses
  %.013882772 = phi i32 [ %i.awz, %.lr.ph2776 ], [ 0, %bb.ac ]
  %i.avz = phi <16 x i32> [ %i.aww, %.lr.ph2776 ], [ %i.avx, %bb.ac ]
  %i.awa = phi <16 x i32> [ %i.awu, %.lr.ph2776 ], [ %i.avw, %bb.ac ]
  %i.awb = phi <16 x i32> [ %i.awq, %.lr.ph2776 ], [ %i.avv, %bb.ac ]
  %i.awc = phi <16 x i32> [ %i.awm, %.lr.ph2776 ], [ %i.avu, %bb.ac ]
  %i.awd = load double, ptr %.013862773, align 1, !tbaa !116
  %i.awe = insertelement <4 x double> poison, double %i.awd, i64 0
  %i.awf = bitcast <4 x double> %i.awe to <4 x i64>
  %i.awg = shufflevector <4 x i64> %i.awf, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.awh = load <32 x i8>, ptr %.113672774, align 1, !tbaa !116 ; 2 uses
  %i.awi = bitcast <4 x i64> %i.awg to <32 x i8>  ; 2 uses
  %i.awj = sext <32 x i8> %i.awi to <32 x i16>    ; 2 uses
  %i.awk = sext <32 x i8> %i.awh to <32 x i16>    ; 2 uses
  %i.awl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.awj, <32 x i16> %i.awk)
  %i.awm = add <16 x i32> %i.awl, %i.awc          ; 2 uses
  %i.awn = shufflevector <32 x i8> %i.awh, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.awo = sext <32 x i8> %i.awn to <32 x i16>    ; 2 uses
  %i.awp = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.awj, <32 x i16> %i.awo)
  %i.awq = add <16 x i32> %i.awp, %i.awb          ; 2 uses
  %i.awr = shufflevector <32 x i8> %i.awi, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.aws = sext <32 x i8> %i.awr to <32 x i16>    ; 2 uses
  %i.awt = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aws, <32 x i16> %i.awk)
  %i.awu = add <16 x i32> %i.awt, %i.awa          ; 2 uses
  %i.awv = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.aws, <32 x i16> %i.awo)
  %i.aww = add <16 x i32> %i.awv, %i.avz          ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %.013862773, i64 8 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %.113672774, i64 32 ; 2 uses
  %i.awz = add nuw nsw i32 %.013882772, 2         ; 2 uses
  %i.axa = or disjoint i32 %i.awz, 1
  %i.axb = icmp slt i32 %i.axa, %8
  br i1 %i.axb, label %.lr.ph2776, label %.preheader2265, !llvm.loop !845

.lr.ph2787:                                       ; preds = %.preheader2265, %.lr.ph2787
  %.213682786 = phi ptr [ %i.ayf, %.lr.ph2787 ], [ %.11367.lcssa, %.preheader2265 ] ; 2 uses
  %.113872785 = phi ptr [ %i.aye, %.lr.ph2787 ], [ %.01386.lcssa, %.preheader2265 ] ; 2 uses
  %.113892784 = phi i32 [ %i.ayg, %.lr.ph2787 ], [ %.01388.lcssa, %.preheader2265 ]
  %i.axc = phi <16 x i32> [ %i.ayd, %.lr.ph2787 ], [ %.lcssa2310, %.preheader2265 ]
  %i.axd = phi <16 x i32> [ %i.aya, %.lr.ph2787 ], [ %.lcssa2311, %.preheader2265 ]
  %i.axe = phi <16 x i32> [ %i.axw, %.lr.ph2787 ], [ %.lcssa2312, %.preheader2265 ]
  %i.axf = phi <16 x i32> [ %i.axt, %.lr.ph2787 ], [ %.lcssa2313, %.preheader2265 ]
  %i.axg = load float, ptr %.113872785, align 1, !tbaa !116
  %i.axh = insertelement <4 x float> poison, float %i.axg, i64 0
  %i.axi = load <16 x i8>, ptr %.213682786, align 16, !tbaa !116 ; 2 uses
  %i.axj = bitcast <4 x float> %i.axh to <16 x i8>
  %i.axk = shufflevector <16 x i8> %i.axj, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.axl = sext <16 x i8> %i.axk to <16 x i16>    ; 3 uses
  %i.axm = sext <16 x i8> %i.axi to <16 x i16>    ; 2 uses
  %i.axn = bitcast <16 x i16> %i.axl to <8 x i32>
  %i.axo = shufflevector <8 x i32> %i.axn, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.axp = shufflevector <16 x i8> %i.axi, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.axq = sext <16 x i8> %i.axp to <16 x i16>    ; 2 uses
  %i.axr = mul nsw <16 x i16> %i.axl, %i.axm
  %i.axs = sext <16 x i16> %i.axr to <16 x i32>
  %i.axt = add <16 x i32> %i.axf, %i.axs          ; 2 uses
  %i.axu = mul nsw <16 x i16> %i.axq, %i.axl
  %i.axv = sext <16 x i16> %i.axu to <16 x i32>
  %i.axw = add <16 x i32> %i.axe, %i.axv          ; 2 uses
  %i.axx = bitcast <8 x i32> %i.axo to <16 x i16> ; 2 uses
  %i.axy = mul <16 x i16> %i.axx, %i.axm
  %i.axz = sext <16 x i16> %i.axy to <16 x i32>
  %i.aya = add <16 x i32> %i.axd, %i.axz          ; 2 uses
  %i.ayb = mul <16 x i16> %i.axq, %i.axx
  %i.ayc = sext <16 x i16> %i.ayb to <16 x i32>
  %i.ayd = add <16 x i32> %i.axc, %i.ayc          ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.113872785, i64 4
  %i.ayf = getelementptr inbounds nuw i8, ptr %.213682786, i64 16 ; 2 uses
  %i.ayg = add nuw nsw i32 %.113892784, 1         ; 2 uses
  %exitcond3580.not = icmp eq i32 %i.ayg, %8
  br i1 %exitcond3580.not, label %._crit_edge2788, label %.lr.ph2787, !llvm.loop !846

._crit_edge2788:                                  ; preds = %.lr.ph2787, %.preheader2265
  %.lcssa2317 = phi <16 x i32> [ %.lcssa2313, %.preheader2265 ], [ %i.axt, %.lr.ph2787 ]
  %.lcssa2316 = phi <16 x i32> [ %.lcssa2312, %.preheader2265 ], [ %i.axw, %.lr.ph2787 ]
  %.lcssa2315 = phi <16 x i32> [ %.lcssa2311, %.preheader2265 ], [ %i.aya, %.lr.ph2787 ]
  %.lcssa2314 = phi <16 x i32> [ %.lcssa2310, %.preheader2265 ], [ %i.ayd, %.lr.ph2787 ]
  %.21368.lcssa = phi ptr [ %.11367.lcssa, %.preheader2265 ], [ %i.ayf, %.lr.ph2787 ] ; 2 uses
  store <16 x i32> %.lcssa2317, ptr %.132796, align 1, !tbaa !116
  %i.ayh = getelementptr inbounds nuw i8, ptr %.132796, i64 64
  store <16 x i32> %.lcssa2316, ptr %i.ayh, align 1, !tbaa !116
  %i.ayi = getelementptr inbounds nuw i8, ptr %.132796, i64 128
  store <16 x i32> %.lcssa2315, ptr %i.ayi, align 1, !tbaa !116
  %i.ayj = getelementptr inbounds nuw i8, ptr %.132796, i64 192
  store <16 x i32> %.lcssa2314, ptr %i.ayj, align 1, !tbaa !116
  %i.ayk = getelementptr inbounds nuw i8, ptr %.132796, i64 256 ; 2 uses
  %i.ayl = add nuw nsw i32 %.013812794, 16        ; 2 uses
  %i.aym = or disjoint i32 %i.ayl, 15
  %i.ayn = icmp slt i32 %i.aym, %6
  br i1 %i.ayn, label %.lr.ph2797, label %.preheader2269, !llvm.loop !847

.preheader2268:                                   ; preds = %._crit_edge2817, %.preheader2269
  %.11382.lcssa = phi i32 [ %.01381.lcssa, %.preheader2269 ], [ %i.bbm, %._crit_edge2817 ] ; 3 uses
  %.31369.lcssa = phi ptr [ %.01366.lcssa, %.preheader2269 ], [ %.51371.lcssa, %._crit_edge2817 ] ; 2 uses
  %.14.lcssa = phi ptr [ %.13.lcssa, %.preheader2269 ], [ %i.bbl, %._crit_edge2817 ] ; 2 uses
  %i.ayo = or disjoint i32 %.11382.lcssa, 3
  %i.ayp = icmp slt i32 %i.ayo, %6
end_hunk_5
begin_hunk_6_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.111377.lcssa = phi ptr [ %.101376.lcssa, %.preheader2262 ], [ %i.bhi, %.lr.ph2872 ] ; 2 uses
  store <4 x i32> %.lcssa2337, ptr %.162879, align 16, !tbaa !116
  %i.bhk = getelementptr inbounds nuw i8, ptr %.162879, i64 16
  store <4 x i32> %.lcssa2336, ptr %i.bhk, align 16, !tbaa !116
  %i.bhl = getelementptr inbounds nuw i8, ptr %.162879, i64 32 ; 2 uses
  %i.bhm = add nuw nsw i32 %.313842877, 2         ; 3 uses
  %i.bhn = or disjoint i32 %i.bhm, 1
  %i.bho = icmp slt i32 %i.bhn, %6
  br i1 %i.bho, label %.lr.ph2880, label %.preheader2266, !llvm.loop !856

.lr.ph2903:                                       ; preds = %.preheader2266, %._crit_edge2897
  %.172902 = phi ptr [ %i.bkr, %._crit_edge2897 ], [ %.16.lcssa, %.preheader2266 ] ; 3 uses
  %.1213782901 = phi ptr [ %.141380.lcssa, %._crit_edge2897 ], [ %.91375.lcssa, %.preheader2266 ] ; 4 uses
  %.413852900 = phi i32 [ %i.bks, %._crit_edge2897 ], [ %.31384.lcssa, %.preheader2266 ]
  br i1 %i.yl, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph2903
  %i.bhp = load <4 x i32>, ptr %.172902, align 16, !tbaa !116
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph2903, %bb.aj
  %i.bhq = phi <4 x i32> [ %i.bhp, %bb.aj ], [ zeroinitializer, %.lr.ph2903 ] ; 3 uses
  br i1 %i.ym, label %.lr.ph2888.preheader, label %.preheader2261

.lr.ph2888.preheader:                             ; preds = %bb.ak
  br i1 %i.ze, label %.lr.ph2888.epil.preheader, label %.lr.ph2888

.preheader2261.loopexit.unr-lcssa:                ; preds = %.lr.ph2888
  br i1 %lcmp.mod5346.not.not, label %.lr.ph2888.epil.preheader, label %.preheader2261.loopexit

.lr.ph2888.epil.preheader:                        ; preds = %.preheader2261.loopexit.unr-lcssa, %.lr.ph2888.preheader
  %.1313792886.epil.init = phi ptr [ %.1213782901, %.lr.ph2888.preheader ], [ %i.bjo, %.preheader2261.loopexit.unr-lcssa ]
  %.014062885.epil.init = phi ptr [ %.212122908, %.lr.ph2888.preheader ], [ %i.bjn, %.preheader2261.loopexit.unr-lcssa ]
  %.epil.init5345 = phi <4 x i32> [ %i.bhq, %.lr.ph2888.preheader ], [ %i.bjm, %.preheader2261.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5348)
  %i.bhr = load <8 x i8>, ptr %.014062885.epil.init, align 1, !tbaa !116
  %i.bhs = load i16, ptr %.1313792886.epil.init, align 2, !tbaa !821
  %i.bht = insertelement <8 x i16> poison, i16 %i.bhs, i64 0
  %i.bhu = sext <8 x i8> %i.bhr to <8 x i16>
  %i.bhv = bitcast <8 x i16> %i.bht to <16 x i8>
  %i.bhw = shufflevector <16 x i8> %i.bhv, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhx = sext <8 x i8> %i.bhw to <8 x i16>
  %i.bhy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bhu, <8 x i16> %i.bhx)
  %i.bhz = add <4 x i32> %i.bhy, %.epil.init5345
  br label %.preheader2261.loopexit

.preheader2261.loopexit:                          ; preds = %.preheader2261.loopexit.unr-lcssa, %.lr.ph2888.epil.preheader
  %.lcssa5141 = phi <4 x i32> [ %i.bjm, %.preheader2261.loopexit.unr-lcssa ], [ %i.bhz, %.lr.ph2888.epil.preheader ]
  %i.bia = getelementptr i8, ptr %.1213782901, i64 %i.yz
  %scevgep3590 = getelementptr i8, ptr %i.bia, i64 2
  br label %.preheader2261

.preheader2261:                                   ; preds = %.preheader2261.loopexit, %bb.ak
  %.lcssa2338 = phi <4 x i32> [ %i.bhq, %bb.ak ], [ %.lcssa5141, %.preheader2261.loopexit ] ; 3 uses
  %.01408.lcssa = phi i32 [ 0, %bb.ak ], [ %i.yr, %.preheader2261.loopexit ] ; 5 uses
  %.01406.lcssa = phi ptr [ %.212122908, %bb.ak ], [ %indvars.iv3584, %.preheader2261.loopexit ] ; 3 uses
  %.131379.lcssa = phi ptr [ %.1213782901, %bb.ak ], [ %scevgep3590, %.preheader2261.loopexit ] ; 4 uses
  %i.bib = icmp slt i32 %.01408.lcssa, %8
  br i1 %i.bib, label %.lr.ph2896.preheader, label %._crit_edge2897

.lr.ph2896.preheader:                             ; preds = %.preheader2261
  %i.bic = sub i32 %8, %.01408.lcssa
  %.neg5432 = add i32 %.01408.lcssa, 1
  %xtraiter5351 = and i32 %i.bic, 1
  %lcmp.mod5352.not = icmp eq i32 %xtraiter5351, 0
  br i1 %lcmp.mod5352.not, label %.lr.ph2896.prol.loopexit, label %.lr.ph2896.prol

.lr.ph2896.prol:                                  ; preds = %.lr.ph2896.preheader
  %i.bid = load <8 x i8>, ptr %.01406.lcssa, align 1, !tbaa !116
  %i.bie = load i8, ptr %.131379.lcssa, align 1, !tbaa !116
  %i.bif = sext i8 %i.bie to i16
  %i.big = insertelement <8 x i16> poison, i16 %i.bif, i64 0
  %i.bih = shufflevector <8 x i16> %i.big, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bii = sext <8 x i8> %i.bid to <8 x i16>      ; 2 uses
  %i.bij = mul <8 x i16> %i.bih, %i.bii
  %i.bik = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bii, <8 x i16> %i.bih)
  %i.bil = shufflevector <8 x i16> %i.bij, <8 x i16> %i.bik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bim = bitcast <8 x i16> %i.bil to <4 x i32>
  %i.bin = add <4 x i32> %.lcssa2338, %i.bim      ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %.01406.lcssa, i64 4
  %i.bip = getelementptr inbounds nuw i8, ptr %.131379.lcssa, i64 1 ; 2 uses
  %i.biq = add nuw nsw i32 %.01408.lcssa, 1
  br label %.lr.ph2896.prol.loopexit

.lr.ph2896.prol.loopexit:                         ; preds = %.lr.ph2896.prol, %.lr.ph2896.preheader
  %.lcssa5143.unr = phi <4 x i32> [ poison, %.lr.ph2896.preheader ], [ %i.bin, %.lr.ph2896.prol ]
  %.lcssa5142.unr = phi ptr [ poison, %.lr.ph2896.preheader ], [ %i.bip, %.lr.ph2896.prol ]
  %.1413802895.unr = phi ptr [ %.131379.lcssa, %.lr.ph2896.preheader ], [ %i.bip, %.lr.ph2896.prol ]
  %.114072894.unr = phi ptr [ %.01406.lcssa, %.lr.ph2896.preheader ], [ %i.bio, %.lr.ph2896.prol ]
  %.114092893.unr = phi i32 [ %.01408.lcssa, %.lr.ph2896.preheader ], [ %i.biq, %.lr.ph2896.prol ]
  %.unr5353 = phi <4 x i32> [ %.lcssa2338, %.lr.ph2896.preheader ], [ %i.bin, %.lr.ph2896.prol ]
  %i.bir = icmp eq i32 %8, %.neg5432
  br i1 %i.bir, label %._crit_edge2897, label %.lr.ph2896

.lr.ph2888:                                       ; preds = %.lr.ph2888.preheader, %.lr.ph2888
  %.1313792886 = phi ptr [ %i.bjo, %.lr.ph2888 ], [ %.1213782901, %.lr.ph2888.preheader ] ; 3 uses
  %.014062885 = phi ptr [ %i.bjn, %.lr.ph2888 ], [ %.212122908, %.lr.ph2888.preheader ] ; 3 uses
  %i.bis = phi <4 x i32> [ %i.bjm, %.lr.ph2888 ], [ %i.bhq, %.lr.ph2888.preheader ]
  %niter5350 = phi i32 [ %niter5350.next.1, %.lr.ph2888 ], [ 0, %.lr.ph2888.preheader ]
  %i.bit = load <8 x i8>, ptr %.014062885, align 1, !tbaa !116
  %i.biu = load i16, ptr %.1313792886, align 2, !tbaa !821
  %i.biv = insertelement <8 x i16> poison, i16 %i.biu, i64 0
  %i.biw = sext <8 x i8> %i.bit to <8 x i16>
  %i.bix = bitcast <8 x i16> %i.biv to <16 x i8>
  %i.biy = shufflevector <16 x i8> %i.bix, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.biz = sext <8 x i8> %i.biy to <8 x i16>
  %i.bja = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.biw, <8 x i16> %i.biz)
  %i.bjb = add <4 x i32> %i.bja, %i.bis
  %i.bjc = getelementptr inbounds nuw i8, ptr %.014062885, i64 8
  %i.bjd = getelementptr inbounds nuw i8, ptr %.1313792886, i64 2
  %i.bje = load <8 x i8>, ptr %i.bjc, align 1, !tbaa !116
  %i.bjf = load i16, ptr %i.bjd, align 2, !tbaa !821
  %i.bjg = insertelement <8 x i16> poison, i16 %i.bjf, i64 0
  %i.bjh = sext <8 x i8> %i.bje to <8 x i16>
  %i.bji = bitcast <8 x i16> %i.bjg to <16 x i8>
  %i.bjj = shufflevector <16 x i8> %i.bji, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bjk = sext <8 x i8> %i.bjj to <8 x i16>
  %i.bjl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bjh, <8 x i16> %i.bjk)
  %i.bjm = add <4 x i32> %i.bjl, %i.bjb           ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %.014062885, i64 16 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %.1313792886, i64 4 ; 2 uses
  %niter5350.next.1 = add nuw nsw i32 %niter5350, 2 ; 2 uses
  %niter5350.ncmp.1.not = icmp eq i32 %niter5350.next.1, %unroll_iter5349
  br i1 %niter5350.ncmp.1.not, label %.preheader2261.loopexit.unr-lcssa, label %.lr.ph2888, !llvm.loop !857

.lr.ph2896:                                       ; preds = %.lr.ph2896.prol.loopexit, %.lr.ph2896
  %.1413802895 = phi ptr [ %i.bkp, %.lr.ph2896 ], [ %.1413802895.unr, %.lr.ph2896.prol.loopexit ] ; 3 uses
  %.114072894 = phi ptr [ %i.bko, %.lr.ph2896 ], [ %.114072894.unr, %.lr.ph2896.prol.loopexit ] ; 3 uses
  %.114092893 = phi i32 [ %i.bkq, %.lr.ph2896 ], [ %.114092893.unr, %.lr.ph2896.prol.loopexit ]
  %i.bjp = phi <4 x i32> [ %i.bkn, %.lr.ph2896 ], [ %.unr5353, %.lr.ph2896.prol.loopexit ]
  %i.bjq = load <8 x i8>, ptr %.114072894, align 1, !tbaa !116
  %i.bjr = load i8, ptr %.1413802895, align 1, !tbaa !116
  %i.bjs = sext i8 %i.bjr to i16
  %i.bjt = insertelement <8 x i16> poison, i16 %i.bjs, i64 0
  %i.bju = shufflevector <8 x i16> %i.bjt, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bjv = sext <8 x i8> %i.bjq to <8 x i16>      ; 2 uses
  %i.bjw = mul <8 x i16> %i.bju, %i.bjv
  %i.bjx = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bjv, <8 x i16> %i.bju)
  %i.bjy = shufflevector <8 x i16> %i.bjw, <8 x i16> %i.bjx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bjz = bitcast <8 x i16> %i.bjy to <4 x i32>
  %i.bka = add <4 x i32> %i.bjp, %i.bjz
  %i.bkb = getelementptr inbounds nuw i8, ptr %.114072894, i64 4
  %i.bkc = getelementptr inbounds nuw i8, ptr %.1413802895, i64 1
  %i.bkd = load <8 x i8>, ptr %i.bkb, align 1, !tbaa !116
  %i.bke = load i8, ptr %i.bkc, align 1, !tbaa !116
  %i.bkf = sext i8 %i.bke to i16
  %i.bkg = insertelement <8 x i16> poison, i16 %i.bkf, i64 0
  %i.bkh = shufflevector <8 x i16> %i.bkg, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bki = sext <8 x i8> %i.bkd to <8 x i16>      ; 2 uses
  %i.bkj = mul <8 x i16> %i.bkh, %i.bki
  %i.bkk = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bki, <8 x i16> %i.bkh)
  %i.bkl = shufflevector <8 x i16> %i.bkj, <8 x i16> %i.bkk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bkm = bitcast <8 x i16> %i.bkl to <4 x i32>
  %i.bkn = add <4 x i32> %i.bka, %i.bkm           ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.114072894, i64 8
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1413802895, i64 2 ; 2 uses
  %i.bkq = add nuw nsw i32 %.114092893, 2         ; 2 uses
  %exitcond3591.not.1 = icmp eq i32 %i.bkq, %8
  br i1 %exitcond3591.not.1, label %._crit_edge2897, label %.lr.ph2896, !llvm.loop !858

._crit_edge2897:                                  ; preds = %.lr.ph2896.prol.loopexit, %.lr.ph2896, %.preheader2261
  %.lcssa2339 = phi <4 x i32> [ %.lcssa2338, %.preheader2261 ], [ %.lcssa5143.unr, %.lr.ph2896.prol.loopexit ], [ %i.bkn, %.lr.ph2896 ]
  %.141380.lcssa = phi ptr [ %.131379.lcssa, %.preheader2261 ], [ %.lcssa5142.unr, %.lr.ph2896.prol.loopexit ], [ %i.bkp, %.lr.ph2896 ]
  store <4 x i32> %.lcssa2339, ptr %.172902, align 16, !tbaa !116
  %i.bkr = getelementptr inbounds nuw i8, ptr %.172902, i64 16 ; 2 uses
  %i.bks = add nuw nsw i32 %.413852900, 1         ; 2 uses
  %exitcond3592.not = icmp eq i32 %i.bks, %6
  br i1 %exitcond3592.not, label %._crit_edge2904, label %.lr.ph2903, !llvm.loop !859

._crit_edge2904:                                  ; preds = %._crit_edge2897, %.preheader2266
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader2266 ], [ %i.bkr, %._crit_edge2897 ] ; 2 uses
  %i.bkt = getelementptr inbounds i8, ptr %.212122908, i64 %i.yo ; 2 uses
  %i.bku = add nuw nsw i32 %.212202906, 4         ; 3 uses
  %i.bkv = or disjoint i32 %i.bku, 3
  %i.bkw = icmp slt i32 %i.bkv, %4
  %scevgep3585 = getelementptr i8, ptr %indvars.iv3584, i64 %i.yo
  br i1 %i.bkw, label %.preheader2270, label %.preheader2260, !llvm.loop !860

.preheader2259:                                   ; preds = %.preheader2259.lr.ph, %._crit_edge3050
  %indvars.iv3597 = phi ptr [ %scevgep3596, %.preheader2259.lr.ph ], [ %scevgep3598, %._crit_edge3050 ] ; 4 uses
  %.33054 = phi ptr [ %.21212.lcssa, %.preheader2259.lr.ph ], [ %i.cpc, %._crit_edge3050 ] ; 26 uses
  %.183053 = phi ptr [ %.12.lcssa, %.preheader2259.lr.ph ], [ %.23.lcssa, %._crit_edge3050 ] ; 2 uses
  %.312213052 = phi i32 [ %.21220.lcssa, %.preheader2259.lr.ph ], [ %i.cpd, %._crit_edge3050 ]
  br i1 %i.atv, label %.lr.ph2933, label %.preheader2258

.preheader2249:                                   ; preds = %._crit_edge3050, %.preheader2260
  %.31221.lcssa = phi i32 [ %.21220.lcssa, %.preheader2260 ], [ %i.cpd, %._crit_edge3050 ] ; 2 uses
  %.18.lcssa = phi ptr [ %.12.lcssa, %.preheader2260 ], [ %.23.lcssa, %._crit_edge3050 ]
  %.3.lcssa = phi ptr [ %.21212.lcssa, %.preheader2260 ], [ %i.cpc, %._crit_edge3050 ] ; 2 uses
  %i.bkx = icmp slt i32 %.31221.lcssa, %4
  br i1 %i.bkx, label %.preheader2248.lr.ph, label %.loopexit

.preheader2248.lr.ph:                             ; preds = %.preheader2249
  %i.bky = icmp sgt i32 %6, 15
  %i.bkz = icmp eq i32 %7, 0                      ; 5 uses
  %i.bla = icmp sgt i32 %8, 1                     ; 4 uses
  %i.blb = icmp sgt i32 %8, 3
  %i.blc = sext i32 %8 to i64                     ; 2 uses
  %i.bld = add i32 %8, -2                         ; 4 uses
  %i.ble = and i32 %i.bld, -2
  %i.blf = add nuw nsw i32 %i.ble, 2              ; 5 uses
  %i.blg = and i32 %6, -16
  %i.blh = zext i32 %i.bld to i64                 ; 2 uses
  %i.bli = lshr i64 %i.blh, 1                     ; 4 uses
  %i.blj = shl nuw nsw i64 %i.bli, 4
  %i.blk = and i64 %i.blh, 4294967294
  %i.bll = getelementptr i8, ptr %.3.lcssa, i64 %i.blk
  %scevgep3609 = getelementptr i8, ptr %i.bll, i64 2
  %i.blm = shl nuw nsw i64 %i.bli, 3
  %i.bln = shl nuw nsw i64 %i.bli, 2
  %i.blo = and i32 %8, -4                         ; 3 uses
  %i.blp = add i32 %8, -4                         ; 3 uses
  %i.blq = lshr i32 %i.blp, 2
  %narrow = add nuw nsw i32 %i.blq, 1
  %i.blr = zext nneg i32 %narrow to i64           ; 5 uses
  %i.bls = add nuw nsw i64 %i.bli, 1              ; 5 uses
  %i.blt = add i32 %8, -2                         ; 4 uses
  %i.blu = lshr i32 %i.blt, 1                     ; 4 uses
  %i.blv = add nuw i32 %i.blu, 1                  ; 6 uses
  %i.blw = icmp eq i32 %i.blu, 0
  %unroll_iter5402 = and i32 %i.blv, -2
  %i.blx = and i32 %i.blt, 2
  %lcmp.mod5397.not.not = icmp eq i32 %i.blx, 0
  %lcmp.mod5401 = trunc i32 %i.blv to i1
  %i.bly = icmp eq i32 %i.blu, 0
  %unroll_iter5414 = and i32 %i.blv, -2
  %i.blz = and i32 %i.blt, 2
  %lcmp.mod5410.not.not = icmp eq i32 %i.blz, 0
  %lcmp.mod5413 = trunc i32 %i.blv to i1
  %i.bma = icmp eq i32 %i.blu, 0
  %unroll_iter5425 = and i32 %i.blv, -2
  %i.bmb = and i32 %i.blt, 2
  %lcmp.mod5422.not.not = icmp eq i32 %i.bmb, 0
  %lcmp.mod5424 = trunc i32 %i.blv to i1
  %min.iters.check4821 = icmp ult i32 %i.bld, 14
  %min.iters.check4823 = icmp ult i32 %i.bld, 126
  %i.bmc = and i64 %i.bls, 56
  %n.vec4825 = and i64 %i.bls, 4294967232         ; 6 uses
  %i.bmd = trunc nuw i64 %n.vec4825 to i32
  %i.bme = shl i32 %i.bmd, 1
  %i.bmf = shl nuw nsw i64 %n.vec4825, 1
  %i.bmg = shl nuw nsw i64 %n.vec4825, 2
  %cmp.n4884 = icmp eq i64 %i.bls, %n.vec4825
  %min.epilog.iters.check4893 = icmp eq i64 %i.bmc, 0
  %n.vec4895 = and i64 %i.bls, 4294967288         ; 5 uses
  %i.bmh = trunc nuw i64 %n.vec4895 to i32
  %i.bmi = shl i32 %i.bmh, 1
  %i.bmj = shl nuw nsw i64 %n.vec4895, 1
  %i.bmk = shl nuw nsw i64 %n.vec4895, 2
  %cmp.n4912 = icmp eq i64 %i.bls, %n.vec4895
  %min.iters.check4569 = icmp ult i32 %i.blp, 12
  %min.iters.check4571 = icmp ult i32 %i.blp, 124
  %i.bml = and i64 %i.blr, 28
  %n.vec4573 = and i64 %i.blr, 2147483616         ; 5 uses
  %i.bmm = trunc nuw nsw i64 %n.vec4573 to i32
  %i.bmn = shl i32 %i.bmm, 2
  %i.bmo = shl nuw nsw i64 %n.vec4573, 2          ; 2 uses
  %cmp.n4614 = icmp eq i64 %n.vec4573, %i.blr
  %min.epilog.iters.check4625 = icmp eq i64 %i.bml, 0
  %n.vec4627 = and i64 %i.blr, 2147483644         ; 4 uses
  %i.bmp = trunc nuw nsw i64 %n.vec4627 to i32
  %i.bmq = shl i32 %i.bmp, 2
  %i.bmr = shl nuw nsw i64 %n.vec4627, 2          ; 2 uses
  %cmp.n4648 = icmp eq i64 %n.vec4627, %i.blr
  br label %.preheader2248

.preheader2258:                                   ; preds = %._crit_edge2926, %.preheader2259
  %.01419.lcssa = phi ptr [ %i.e, %.preheader2259 ], [ %.21421.lcssa, %._crit_edge2926 ] ; 2 uses
  %.01414.lcssa = phi i32 [ 0, %.preheader2259 ], [ %i.aud, %._crit_edge2926 ] ; 3 uses
  %.19.lcssa = phi ptr [ %.183053, %.preheader2259 ], [ %i.bpq, %._crit_edge2926 ] ; 2 uses
  %i.bms = or disjoint i32 %.01414.lcssa, 7
  %i.bmt = icmp slt i32 %i.bms, %6
  br i1 %i.bmt, label %.lr.ph2958, label %.preheader2257

.lr.ph2933:                                       ; preds = %.preheader2259, %._crit_edge2926
  %.192932 = phi ptr [ %i.bpq, %._crit_edge2926 ], [ %.183053, %.preheader2259 ] ; 5 uses
  %.014142931 = phi i32 [ %i.bpr, %._crit_edge2926 ], [ 0, %.preheader2259 ]
  %.014192930 = phi ptr [ %.21421.lcssa, %._crit_edge2926 ], [ %i.e, %.preheader2259 ] ; 3 uses
  br i1 %i.atw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph2933
  %i.bmu = load <16 x i32>, ptr %.192932, align 1, !tbaa !116
  %i.bmv = getelementptr inbounds nuw i8, ptr %.192932, i64 64
  %i.bmw = load <16 x i32>, ptr %i.bmv, align 1, !tbaa !116
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph2933, %bb.al
  %i.bmx = phi <16 x i32> [ %i.bmu, %bb.al ], [ zeroinitializer, %.lr.ph2933 ] ; 3 uses
  %i.bmy = phi <16 x i32> [ %i.bmw, %bb.al ], [ zeroinitializer, %.lr.ph2933 ] ; 3 uses
  br i1 %i.atx, label %.lr.ph2916.preheader, label %.preheader2254

.lr.ph2916.preheader:                             ; preds = %bb.am
  br i1 %i.aup, label %.lr.ph2916.epil.preheader, label %.lr.ph2916

.preheader2254.loopexit.unr-lcssa:                ; preds = %.lr.ph2916
  br i1 %lcmp.mod5359.not.not, label %.lr.ph2916.epil.preheader, label %.preheader2254

.lr.ph2916.epil.preheader:                        ; preds = %.preheader2254.loopexit.unr-lcssa, %.lr.ph2916.preheader
  %.014122913.epil.init = phi ptr [ %.33054, %.lr.ph2916.preheader ], [ %i.bot, %.preheader2254.loopexit.unr-lcssa ] ; 2 uses
  %.114202912.epil.init = phi ptr [ %.014192930, %.lr.ph2916.preheader ], [ %i.bou, %.preheader2254.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init5356 = phi <16 x i32> [ %i.bmy, %.lr.ph2916.preheader ], [ %i.bos, %.preheader2254.loopexit.unr-lcssa ]
  %.epil.init5358 = phi <16 x i32> [ %i.bmx, %.lr.ph2916.preheader ], [ %i.boo, %.preheader2254.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5364)
  %i.bmz = load float, ptr %.014122913.epil.init, align 1, !tbaa !116
  %i.bna = insertelement <8 x float> poison, float %i.bmz, i64 0
  %i.bnb = shufflevector <8 x float> %i.bna, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnc = load <32 x i8>, ptr %.114202912.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.bnd = bitcast <8 x float> %i.bnb to <32 x i8>
  %i.bne = sext <32 x i8> %i.bnd to <32 x i16>    ; 2 uses
  %i.bnf = sext <32 x i8> %i.bnc to <32 x i16>
  %i.bng = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bne, <32 x i16> %i.bnf)
  %i.bnh = add <16 x i32> %i.bng, %.epil.init5358
  %i.bni = shufflevector <32 x i8> %i.bnc, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bnj = sext <32 x i8> %i.bni to <32 x i16>
  %i.bnk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bne, <32 x i16> %i.bnj)
  %i.bnl = add <16 x i32> %i.bnk, %.epil.init5356
  %i.bnm = getelementptr inbounds nuw i8, ptr %.014122913.epil.init, i64 4
  %i.bnn = getelementptr inbounds nuw i8, ptr %.114202912.epil.init, i64 32
  br label %.preheader2254

.preheader2254:                                   ; preds = %.lr.ph2916.epil.preheader, %.preheader2254.loopexit.unr-lcssa, %bb.am
  %.lcssa2299 = phi <16 x i32> [ %i.bmx, %bb.am ], [ %i.boo, %.preheader2254.loopexit.unr-lcssa ], [ %i.bnh, %.lr.ph2916.epil.preheader ] ; 2 uses
  %.lcssa2298 = phi <16 x i32> [ %i.bmy, %bb.am ], [ %i.bos, %.preheader2254.loopexit.unr-lcssa ], [ %i.bnl, %.lr.ph2916.epil.preheader ] ; 2 uses
  %.11420.lcssa = phi ptr [ %.014192930, %bb.am ], [ %i.bou, %.preheader2254.loopexit.unr-lcssa ], [ %i.bnn, %.lr.ph2916.epil.preheader ] ; 2 uses
  %.01412.lcssa = phi ptr [ %.33054, %bb.am ], [ %i.bot, %.preheader2254.loopexit.unr-lcssa ], [ %i.bnm, %.lr.ph2916.epil.preheader ]
  %.01410.lcssa = phi i32 [ 0, %bb.am ], [ %i.auc, %.preheader2254.loopexit.unr-lcssa ], [ %i.auc, %.lr.ph2916.epil.preheader ] ; 2 uses
  %i.bno = icmp slt i32 %.01410.lcssa, %8
  br i1 %i.bno, label %.lr.ph2925, label %._crit_edge2926

.lr.ph2916:                                       ; preds = %.lr.ph2916.preheader, %.lr.ph2916
  %.014122913 = phi ptr [ %i.bot, %.lr.ph2916 ], [ %.33054, %.lr.ph2916.preheader ] ; 3 uses
  %.114202912 = phi ptr [ %i.bou, %.lr.ph2916 ], [ %.014192930, %.lr.ph2916.preheader ] ; 3 uses
  %i.bnp = phi <16 x i32> [ %i.bos, %.lr.ph2916 ], [ %i.bmy, %.lr.ph2916.preheader ]
  %i.bnq = phi <16 x i32> [ %i.boo, %.lr.ph2916 ], [ %i.bmx, %.lr.ph2916.preheader ]
  %niter5366 = phi i32 [ %niter5366.next.1, %.lr.ph2916 ], [ 0, %.lr.ph2916.preheader ]
  %i.bnr = load float, ptr %.014122913, align 1, !tbaa !116
  %i.bns = insertelement <8 x float> poison, float %i.bnr, i64 0
  %i.bnt = shufflevector <8 x float> %i.bns, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnu = load <32 x i8>, ptr %.114202912, align 1, !tbaa !116 ; 2 uses
  %i.bnv = bitcast <8 x float> %i.bnt to <32 x i8>
  %i.bnw = sext <32 x i8> %i.bnv to <32 x i16>    ; 2 uses
  %i.bnx = sext <32 x i8> %i.bnu to <32 x i16>
  %i.bny = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bnw, <32 x i16> %i.bnx)
  %i.bnz = add <16 x i32> %i.bny, %i.bnq
  %i.boa = shufflevector <32 x i8> %i.bnu, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bob = sext <32 x i8> %i.boa to <32 x i16>
  %i.boc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bnw, <32 x i16> %i.bob)
  %i.bod = add <16 x i32> %i.boc, %i.bnp
  %i.boe = getelementptr inbounds nuw i8, ptr %.014122913, i64 4
  %i.bof = getelementptr inbounds nuw i8, ptr %.114202912, i64 32
  %i.bog = load float, ptr %i.boe, align 1, !tbaa !116
  %i.boh = insertelement <8 x float> poison, float %i.bog, i64 0
  %i.boi = shufflevector <8 x float> %i.boh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.boj = load <32 x i8>, ptr %i.bof, align 1, !tbaa !116 ; 2 uses
  %i.bok = bitcast <8 x float> %i.boi to <32 x i8>
  %i.bol = sext <32 x i8> %i.bok to <32 x i16>    ; 2 uses
  %i.bom = sext <32 x i8> %i.boj to <32 x i16>
  %i.bon = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bol, <32 x i16> %i.bom)
  %i.boo = add <16 x i32> %i.bon, %i.bnz          ; 3 uses
  %i.bop = shufflevector <32 x i8> %i.boj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.boq = sext <32 x i8> %i.bop to <32 x i16>
  %i.bor = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bol, <32 x i16> %i.boq)
  %i.bos = add <16 x i32> %i.bor, %i.bod          ; 3 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %.014122913, i64 8 ; 3 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.114202912, i64 64 ; 3 uses
  %niter5366.next.1 = add nuw nsw i32 %niter5366, 2 ; 2 uses
  %niter5366.ncmp.1.not = icmp eq i32 %niter5366.next.1, %unroll_iter5365
  br i1 %niter5366.ncmp.1.not, label %.preheader2254.loopexit.unr-lcssa, label %.lr.ph2916, !llvm.loop !861

.lr.ph2925:                                       ; preds = %.preheader2254, %.lr.ph2925
  %.114112924 = phi i32 [ %i.bpo, %.lr.ph2925 ], [ %.01410.lcssa, %.preheader2254 ]
  %.114132923 = phi ptr [ %i.bpm, %.lr.ph2925 ], [ %.01412.lcssa, %.preheader2254 ] ; 2 uses
  %.214212922 = phi ptr [ %i.bpn, %.lr.ph2925 ], [ %.11420.lcssa, %.preheader2254 ] ; 2 uses
  %i.bov = phi <16 x i32> [ %i.bpl, %.lr.ph2925 ], [ %.lcssa2298, %.preheader2254 ]
  %i.bow = phi <16 x i32> [ %i.bpi, %.lr.ph2925 ], [ %.lcssa2299, %.preheader2254 ]
  %i.box = load i16, ptr %.114132923, align 2, !tbaa !821
  %i.boy = insertelement <8 x i16> poison, i16 %i.box, i64 0
  %i.boz = load <16 x i8>, ptr %.214212922, align 16, !tbaa !116 ; 2 uses
  %i.bpa = bitcast <8 x i16> %i.boy to <16 x i8>
  %i.bpb = shufflevector <16 x i8> %i.bpa, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bpc = sext <16 x i8> %i.bpb to <16 x i16>    ; 2 uses
  %i.bpd = sext <16 x i8> %i.boz to <16 x i16>
  %i.bpe = shufflevector <16 x i8> %i.boz, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bpf = sext <16 x i8> %i.bpe to <16 x i16>
  %i.bpg = mul nsw <16 x i16> %i.bpc, %i.bpd
  %i.bph = sext <16 x i16> %i.bpg to <16 x i32>
  %i.bpi = add <16 x i32> %i.bow, %i.bph          ; 2 uses
  %i.bpj = mul nsw <16 x i16> %i.bpf, %i.bpc
  %i.bpk = sext <16 x i16> %i.bpj to <16 x i32>
  %i.bpl = add <16 x i32> %i.bov, %i.bpk          ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %.114132923, i64 2
  %i.bpn = getelementptr inbounds nuw i8, ptr %.214212922, i64 16 ; 2 uses
  %i.bpo = add nuw nsw i32 %.114112924, 1         ; 2 uses
  %exitcond3593.not = icmp eq i32 %i.bpo, %8
  br i1 %exitcond3593.not, label %._crit_edge2926, label %.lr.ph2925, !llvm.loop !862

._crit_edge2926:                                  ; preds = %.lr.ph2925, %.preheader2254
  %.lcssa2301 = phi <16 x i32> [ %.lcssa2299, %.preheader2254 ], [ %i.bpi, %.lr.ph2925 ]
  %.lcssa2300 = phi <16 x i32> [ %.lcssa2298, %.preheader2254 ], [ %i.bpl, %.lr.ph2925 ]
  %.21421.lcssa = phi ptr [ %.11420.lcssa, %.preheader2254 ], [ %i.bpn, %.lr.ph2925 ] ; 2 uses
  store <16 x i32> %.lcssa2301, ptr %.192932, align 1, !tbaa !116
end_hunk_6
begin_hunk_7_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.gn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.gm)
  %i.go = fadd fast <16 x float> %i.gn, %i.gm
  %i.gp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.go, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gp, <16 x i8> zeroinitializer, i16 -1)
  %i.gr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gq, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.gr, ptr %i.gg, align 16, !tbaa !116
  %i.gs = getelementptr inbounds nuw i8, ptr %.5622.i.us, i64 32 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.4413621.i.us, i64 64
  %i.gu = add nuw nsw i32 %.1423620.i.us, 2       ; 2 uses
  %exitcond826.not.i.us.1 = icmp eq i32 %i.gu, %5
  br i1 %exitcond826.not.i.us.1, label %.loopexit591.i.us, label %.lr.ph623.i.us, !llvm.loop !971

.preheader601.i.us:                               ; preds = %.split.i.us
  br i1 %i.u, label %.lr.ph.i.us, label %.preheader599.i.us

.lr.ph.i.us:                                      ; preds = %.preheader601.i.us, %.lr.ph.i.us
  %.1604.i.us = phi ptr [ %i.hn, %.lr.ph.i.us ], [ %.0652.i.us, %.preheader601.i.us ] ; 3 uses
  %.0409603.i.us = phi ptr [ %i.ho, %.lr.ph.i.us ], [ %i.ak, %.preheader601.i.us ] ; 3 uses
  %.0420602.i.us = phi i32 [ %i.hp, %.lr.ph.i.us ], [ 0, %.preheader601.i.us ]
  %i.gv = load <16 x float>, ptr %.0409603.i.us, align 64, !tbaa !116
  %i.gw = getelementptr inbounds nuw i8, ptr %.0409603.i.us, i64 64
  %i.gx = load <16 x float>, ptr %i.gw, align 64, !tbaa !116
  %i.gy = fmul fast <16 x float> %i.gv, %i.t      ; 2 uses
  %i.gz = fmul fast <16 x float> %i.gx, %i.t      ; 2 uses
  %i.ha = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.gy)
  %i.hb = fadd fast <16 x float> %i.ha, %i.gy
  %i.hc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hc, <16 x i8> zeroinitializer, i16 -1)
  %i.he = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hd, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.hf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.gz)
  %i.hg = fadd fast <16 x float> %i.hf, %i.gz
  %i.hh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hi = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hh, <16 x i8> zeroinitializer, i16 -1)
  %i.hj = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hi, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.hk = shufflevector <16 x i8> %i.he, <16 x i8> %i.hj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.hl = shufflevector <16 x i8> %i.he, <16 x i8> %i.hj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.hk, ptr %.1604.i.us, align 16, !tbaa !116
  %i.hm = getelementptr inbounds nuw i8, ptr %.1604.i.us, i64 16
  store <16 x i8> %i.hl, ptr %i.hm, align 16, !tbaa !116
  %i.hn = getelementptr inbounds nuw i8, ptr %.1604.i.us, i64 32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0409603.i.us, i64 128 ; 2 uses
  %i.hp = add nuw nsw i32 %.0420602.i.us, 2       ; 2 uses
  %i.hq = or disjoint i32 %i.hp, 1
  %i.hr = icmp slt i32 %i.hq, %5
  br i1 %i.hr, label %.lr.ph.i.us, label %.preheader599.i.us, !llvm.loop !972

.preheader599.i.us:                               ; preds = %.lr.ph.i.us, %.preheader601.i.us
  %.0420.lcssa.i.us = phi i32 [ 0, %.preheader601.i.us ], [ %i.z, %.lr.ph.i.us ] ; 4 uses
  %.0409.lcssa.i.us = phi ptr [ %i.ak, %.preheader601.i.us ], [ %i.ho, %.lr.ph.i.us ] ; 3 uses
  %.1.lcssa.i.us = phi ptr [ %.0652.i.us, %.preheader601.i.us ], [ %i.hn, %.lr.ph.i.us ] ; 4 uses
  %i.hs = icmp slt i32 %.0420.lcssa.i.us, %5
  br i1 %i.hs, label %.lr.ph610.i.us.preheader, label %.loopexit591.i.us

.lr.ph610.i.us.preheader:                         ; preds = %.preheader599.i.us
  %.neg325 = or disjoint i32 %.0420.lcssa.i.us, 1
  br i1 %lcmp.mod311.not, label %.lr.ph610.i.us.prol.loopexit, label %.lr.ph610.i.us.prol

.lr.ph610.i.us.prol:                              ; preds = %.lr.ph610.i.us.preheader
  %i.ht = load <16 x float>, ptr %.0409.lcssa.i.us, align 64, !tbaa !116
  %i.hu = fmul fast <16 x float> %i.ht, %i.t      ; 2 uses
  %i.hv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hu)
  %i.hw = fadd fast <16 x float> %i.hv, %i.hu
  %i.hx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hx, <16 x i8> zeroinitializer, i16 -1)
  %i.hz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hy, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.hz, ptr %.1.lcssa.i.us, align 16, !tbaa !116
  %i.ia = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.us, i64 16 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0409.lcssa.i.us, i64 64
  %i.ic = or disjoint i32 %.0420.lcssa.i.us, 1
  br label %.lr.ph610.i.us.prol.loopexit

.lr.ph610.i.us.prol.loopexit:                     ; preds = %.lr.ph610.i.us.prol, %.lr.ph610.i.us.preheader
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph610.i.us.preheader ], [ %i.ia, %.lr.ph610.i.us.prol ]
  %.2609.i.us.unr = phi ptr [ %.1.lcssa.i.us, %.lr.ph610.i.us.preheader ], [ %i.ia, %.lr.ph610.i.us.prol ]
  %.1410608.i.us.unr = phi ptr [ %.0409.lcssa.i.us, %.lr.ph610.i.us.preheader ], [ %i.ib, %.lr.ph610.i.us.prol ]
  %.1421607.i.us.unr = phi i32 [ %.0420.lcssa.i.us, %.lr.ph610.i.us.preheader ], [ %i.ic, %.lr.ph610.i.us.prol ]
  %i.id = icmp eq i32 %5, %.neg325
  br i1 %i.id, label %.loopexit591.i.us, label %.lr.ph610.i.us

.lr.ph610.i.us:                                   ; preds = %.lr.ph610.i.us.prol.loopexit, %.lr.ph610.i.us
  %.2609.i.us = phi ptr [ %i.iu, %.lr.ph610.i.us ], [ %.2609.i.us.unr, %.lr.ph610.i.us.prol.loopexit ] ; 3 uses
  %.1410608.i.us = phi ptr [ %i.iv, %.lr.ph610.i.us ], [ %.1410608.i.us.unr, %.lr.ph610.i.us.prol.loopexit ] ; 3 uses
  %.1421607.i.us = phi i32 [ %i.iw, %.lr.ph610.i.us ], [ %.1421607.i.us.unr, %.lr.ph610.i.us.prol.loopexit ]
  %i.ie = load <16 x float>, ptr %.1410608.i.us, align 64, !tbaa !116
  %i.if = fmul fast <16 x float> %i.ie, %i.t      ; 2 uses
  %i.ig = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.if)
  %i.ih = fadd fast <16 x float> %i.ig, %i.if
  %i.ii = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ih, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ij = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ii, <16 x i8> zeroinitializer, i16 -1)
  %i.ik = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ij, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ik, ptr %.2609.i.us, align 16, !tbaa !116
  %i.il = getelementptr inbounds nuw i8, ptr %.2609.i.us, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %.1410608.i.us, i64 64
  %i.in = load <16 x float>, ptr %i.im, align 64, !tbaa !116
  %i.io = fmul fast <16 x float> %i.in, %i.t      ; 2 uses
  %i.ip = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.io)
  %i.iq = fadd fast <16 x float> %i.ip, %i.io
  %i.ir = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.iq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.is = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ir, <16 x i8> zeroinitializer, i16 -1)
  %i.it = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.is, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.it, ptr %i.il, align 16, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %.2609.i.us, i64 32 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.1410608.i.us, i64 128
  %i.iw = add nuw nsw i32 %.1421607.i.us, 2       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.iw, %5
  br i1 %exitcond.not.i.us.1, label %.loopexit591.i.us, label %.lr.ph610.i.us, !llvm.loop !973

.loopexit591.i.us:                                ; preds = %.lr.ph649.i.us.prol.loopexit, %.lr.ph649.i.us, %.lr.ph636.i.us, %.lr.ph623.i.us.prol.loopexit, %.lr.ph623.i.us, %.lr.ph610.i.us.prol.loopexit, %.lr.ph610.i.us, %.preheader599.i.us, %.preheader596.i.us, %.preheader593.i.us, %.preheader590.i.us, %.split.i.us
  %.12.i.us = phi ptr [ %.0652.i.us, %.split.i.us ], [ %.10.lcssa.i.us, %.preheader590.i.us ], [ %i.eh, %.lr.ph636.i.us ], [ %i.iu, %.lr.ph610.i.us ], [ %.7.lcssa.i.us, %.preheader593.i.us ], [ %i.gs, %.lr.ph623.i.us ], [ %.4.lcssa.i.us, %.preheader596.i.us ], [ %.1.lcssa.i.us, %.preheader599.i.us ], [ %.lcssa307.unr, %.lr.ph610.i.us.prol.loopexit ], [ %.lcssa304.unr, %.lr.ph623.i.us.prol.loopexit ], [ %.lcssa298.unr, %.lr.ph649.i.us.prol.loopexit ], [ %i.ck, %.lr.ph649.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.ix = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.iy = icmp samesign ult i64 %i.ix, %i.aa
  br i1 %i.iy, label %.split.i.us, label %.preheader589.loopexit.i, !llvm.loop !974

.preheader589.loopexit.i:                         ; preds = %.loopexit591.i.us, %.loopexit591.i.preheader
  %.us-phi = phi ptr [ %i.o, %.loopexit591.i.preheader ], [ %.12.i.us, %.loopexit591.i.us ]
  %.us-phi47 = phi i64 [ %i.af, %.loopexit591.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit591.i.us ]
  %i.iz = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader589.i

.preheader589.i:                                  ; preds = %.preheader589.loopexit.i, %bb.j
  %.0402.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.iz, %.preheader589.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader589.loopexit.i ] ; 2 uses
  %i.ja = or disjoint i32 %.0402.lcssa.i, 7
  %i.jb = icmp slt i32 %i.ja, %3
  br i1 %i.jb, label %.lr.ph696.i, label %.preheader579.i

.lr.ph696.i:                                      ; preds = %.preheader589.i
  %i.jc = mul nsw i32 %i.e, %4
  %i.jd = sext i32 %i.jc to i64
  %i.je = insertelement <8 x float> poison, float %6, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.jg = icmp sgt i32 %5, 1                      ; 3 uses
  %.idx459.i = shl i64 %i.n, 4                    ; 4 uses
  %i.jh = trunc i64 %i.n to i32
  %i.ji = insertelement <8 x i32> poison, i32 %i.jh, i64 0
  %i.jj = shufflevector <8 x i32> %i.ji, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jk = mul <8 x i32> %i.jj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.jl = and i32 %5, -2                          ; 3 uses
  %i.jm = zext nneg i32 %.0402.lcssa.i to i64
  %i.jn = sext i32 %3 to i64
  %i.jo = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.jn, -7
  %xtraiter312 = and i32 %5, 1
  %lcmp.mod313.not = icmp eq i32 %xtraiter312, 0
  %xtraiter314 = and i32 %5, 1
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  %xtraiter316 = and i32 %5, 1
  %lcmp.mod317.not = icmp eq i32 %xtraiter316, 0
  br label %bb.k

.preheader579.loopexit.i:                         ; preds = %.loopexit581.i
  %i.jp = trunc nuw nsw i64 %indvars.iv.next834.i to i32
  br label %.preheader579.i

.preheader579.i:                                  ; preds = %.preheader579.loopexit.i, %.preheader589.i
  %.1403.lcssa.i = phi i32 [ %.0402.lcssa.i, %.preheader589.i ], [ %i.jp, %.preheader579.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader589.i ], [ %.22.i, %.preheader579.loopexit.i ] ; 4 uses
  %i.jq = or disjoint i32 %.1403.lcssa.i, 3
  %i.jr = icmp slt i32 %i.jq, %3
  br i1 %i.jr, label %.lr.ph726.i, label %.preheader572.i

.lr.ph726.i:                                      ; preds = %.preheader579.i
  %i.js = load ptr, ptr %0, align 8, !tbaa !18
  %i.jt = mul nsw i32 %i.e, %4
  %i.ju = sext i32 %i.jt to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.js, i64 %i.ju ; 2 uses
  %i.jv = insertelement <4 x float> poison, float %6, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.jx = icmp sgt i32 %5, 1                      ; 2 uses
  %i.jy = trunc i64 %i.n to i32
  %i.jz = insertelement <4 x i32> poison, i32 %i.jy, i64 0
  %i.ka = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kb = mul <4 x i32> %i.ka, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.kc = and i32 %5, -2                          ; 2 uses
  %i.kd = zext i32 %.1403.lcssa.i to i64          ; 5 uses
  %i.ke = sext i32 %3 to i64
  %i.kf = sext i32 %2 to i64                      ; 2 uses
  %invariant.op915.i = add nsw i64 %i.ke, -3      ; 3 uses
  switch i32 %i.e, label %.loopexit574.i.preheader [
    i32 4, label %.preheader578.i.us.preheader
    i32 1, label %.preheader575.i.us.preheader
  ]

.preheader575.i.us.preheader:                     ; preds = %.lr.ph726.i
  %xtraiter318 = and i32 %5, 1
  %lcmp.mod319.not = icmp eq i32 %xtraiter318, 0
  br label %.preheader575.i.us

.preheader578.i.us.preheader:                     ; preds = %.lr.ph726.i
  %xtraiter320 = and i32 %5, 1
  %lcmp.mod321.not = icmp eq i32 %xtraiter320, 0
  br label %.preheader578.i.us

.loopexit574.i.preheader:                         ; preds = %.lr.ph726.i
  %i.kg = add nuw nsw i64 %i.kd, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op915.i, i64 %i.kg)
  %i.kh = xor i64 %i.kd, -1
  %i.ki = add nsw i64 %smax, %i.kh
  %i.kj = and i64 %i.ki, -4
  %i.kk = add nuw i64 %i.kj, %i.kd
  %i.kl = add nuw i64 %i.kk, 4
  br label %.preheader572.loopexit.i

.preheader578.i.us:                               ; preds = %.preheader578.i.us.preheader, %.loopexit574.i.us
  %indvars.iv838.i.us = phi i64 [ %indvars.iv.next839.i.us, %.loopexit574.i.us ], [ %i.kd, %.preheader578.i.us.preheader ] ; 2 uses
  %.23725.i.us = phi ptr [ %.29.i.us, %.loopexit574.i.us ], [ %.13.lcssa.i, %.preheader578.i.us.preheader ] ; 2 uses
  %i.km = add nsw i64 %indvars.iv838.i.us, %i.kf
  %i.kn = mul i64 %i.km, %i.n
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.kn ; 2 uses
  br i1 %i.jx, label %.lr.ph702.i.us, label %.preheader576.i.us

.lr.ph702.i.us:                                   ; preds = %.preheader578.i.us, %.lr.ph702.i.us
  %.24701.i.us = phi ptr [ %i.lh, %.lr.ph702.i.us ], [ %.23725.i.us, %.preheader578.i.us ] ; 2 uses
  %.0448700.i.us = phi ptr [ %i.li, %.lr.ph702.i.us ], [ %gep.i.us, %.preheader578.i.us ] ; 3 uses
  %.0453699.i.us = phi i32 [ %i.lj, %.lr.ph702.i.us ], [ 0, %.preheader578.i.us ]
  %i.ko = load <4 x float>, ptr %.0448700.i.us, align 16, !tbaa !116
  %i.kp = getelementptr inbounds nuw i8, ptr %.0448700.i.us, i64 16
  %i.kq = load <4 x float>, ptr %i.kp, align 16, !tbaa !116
  %i.kr = fmul fast <4 x float> %i.ko, %i.jw      ; 2 uses
  %i.ks = fmul fast <4 x float> %i.kq, %i.jw      ; 2 uses
  %i.kt = shufflevector <4 x float> %i.kr, <4 x float> %i.ks, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ku = shufflevector <4 x float> %i.kr, <4 x float> %i.ks, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kt)
  %i.kw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ku)
  %i.kx = fadd fast <4 x float> %i.kv, %i.kt
  %i.ky = fadd fast <4 x float> %i.kw, %i.ku
  %i.kz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kx)
  %i.la = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ky)
  %i.lb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kz, <4 x i32> %i.la)
  %i.lc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lb, <8 x i16> splat (i16 -127))
  %i.ld = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lc, <8 x i16> splat (i16 127))
  %i.le = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ld, <8 x i16> poison)
  %i.lf = bitcast <16 x i8> %i.le to <2 x i64>
  %i.lg = extractelement <2 x i64> %i.lf, i64 0
  store i64 %i.lg, ptr %.24701.i.us, align 8, !tbaa !975
  %i.lh = getelementptr inbounds nuw i8, ptr %.24701.i.us, i64 8 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0448700.i.us, i64 32 ; 2 uses
  %i.lj = add nuw nsw i32 %.0453699.i.us, 2       ; 2 uses
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %5
  br i1 %i.ll, label %.lr.ph702.i.us, label %.preheader576.i.us, !llvm.loop !976

.preheader576.i.us:                               ; preds = %.lr.ph702.i.us, %.preheader578.i.us
  %.0453.lcssa.i.us = phi i32 [ 0, %.preheader578.i.us ], [ %i.kc, %.lr.ph702.i.us ] ; 4 uses
  %.0448.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader578.i.us ], [ %i.li, %.lr.ph702.i.us ] ; 3 uses
  %.24.lcssa.i.us = phi ptr [ %.23725.i.us, %.preheader578.i.us ], [ %i.lh, %.lr.ph702.i.us ] ; 4 uses
  %i.lm = icmp slt i32 %.0453.lcssa.i.us, %5
  br i1 %i.lm, label %.lr.ph709.i.us.preheader, label %.loopexit574.i.us

.lr.ph709.i.us.preheader:                         ; preds = %.preheader576.i.us
  %.neg330 = or disjoint i32 %.0453.lcssa.i.us, 1
  br i1 %lcmp.mod321.not, label %.lr.ph709.i.us.prol.loopexit, label %.lr.ph709.i.us.prol

.lr.ph709.i.us.prol:                              ; preds = %.lr.ph709.i.us.preheader
  %i.ln = load <4 x float>, ptr %.0448.lcssa.i.us, align 16, !tbaa !116
  %i.lo = fmul fast <4 x float> %i.ln, %i.jw      ; 2 uses
  %i.lp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lo)
  %i.lq = fadd fast <4 x float> %i.lp, %i.lo
  %i.lr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lq) ; 2 uses
  %i.ls = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lr, <4 x i32> %i.lr)
  %i.lt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ls, <8 x i16> splat (i16 -127))
  %i.lu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lt, <8 x i16> splat (i16 127))
  %i.lv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lu, <8 x i16> poison)
  %i.lw = bitcast <16 x i8> %i.lv to <4 x i32>
  %i.lx = extractelement <4 x i32> %i.lw, i64 0
  store i32 %i.lx, ptr %.24.lcssa.i.us, align 4, !tbaa !45
  %i.ly = getelementptr inbounds nuw i8, ptr %.24.lcssa.i.us, i64 4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0448.lcssa.i.us, i64 16
  %i.ma = or disjoint i32 %.0453.lcssa.i.us, 1
  br label %.lr.ph709.i.us.prol.loopexit

.lr.ph709.i.us.prol.loopexit:                     ; preds = %.lr.ph709.i.us.prol, %.lr.ph709.i.us.preheader
  %.lcssa277.unr = phi ptr [ poison, %.lr.ph709.i.us.preheader ], [ %i.ly, %.lr.ph709.i.us.prol ]
  %.25708.i.us.unr = phi ptr [ %.24.lcssa.i.us, %.lr.ph709.i.us.preheader ], [ %i.ly, %.lr.ph709.i.us.prol ]
  %.1449707.i.us.unr = phi ptr [ %.0448.lcssa.i.us, %.lr.ph709.i.us.preheader ], [ %i.lz, %.lr.ph709.i.us.prol ]
  %.1454706.i.us.unr = phi i32 [ %.0453.lcssa.i.us, %.lr.ph709.i.us.preheader ], [ %i.ma, %.lr.ph709.i.us.prol ]
  %i.mb = icmp eq i32 %5, %.neg330
  br i1 %i.mb, label %.loopexit574.i.us, label %.lr.ph709.i.us

.lr.ph709.i.us:                                   ; preds = %.lr.ph709.i.us.prol.loopexit, %.lr.ph709.i.us
  %.25708.i.us = phi ptr [ %i.na, %.lr.ph709.i.us ], [ %.25708.i.us.unr, %.lr.ph709.i.us.prol.loopexit ] ; 3 uses
  %.1449707.i.us = phi ptr [ %i.nb, %.lr.ph709.i.us ], [ %.1449707.i.us.unr, %.lr.ph709.i.us.prol.loopexit ] ; 3 uses
  %.1454706.i.us = phi i32 [ %i.nc, %.lr.ph709.i.us ], [ %.1454706.i.us.unr, %.lr.ph709.i.us.prol.loopexit ]
  %i.mc = load <4 x float>, ptr %.1449707.i.us, align 16, !tbaa !116
  %i.md = fmul fast <4 x float> %i.mc, %i.jw      ; 2 uses
  %i.me = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.md)
  %i.mf = fadd fast <4 x float> %i.me, %i.md
  %i.mg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mf) ; 2 uses
  %i.mh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mg, <4 x i32> %i.mg)
  %i.mi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mh, <8 x i16> splat (i16 -127))
  %i.mj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mi, <8 x i16> splat (i16 127))
  %i.mk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mj, <8 x i16> poison)
  %i.ml = bitcast <16 x i8> %i.mk to <4 x i32>
  %i.mm = extractelement <4 x i32> %i.ml, i64 0
  store i32 %i.mm, ptr %.25708.i.us, align 4, !tbaa !45
  %i.mn = getelementptr inbounds nuw i8, ptr %.25708.i.us, i64 4
  %i.mo = getelementptr inbounds nuw i8, ptr %.1449707.i.us, i64 16
  %i.mp = load <4 x float>, ptr %i.mo, align 16, !tbaa !116
  %i.mq = fmul fast <4 x float> %i.mp, %i.jw      ; 2 uses
  %i.mr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mq)
  %i.ms = fadd fast <4 x float> %i.mr, %i.mq
  %i.mt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ms) ; 2 uses
  %i.mu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mt, <4 x i32> %i.mt)
  %i.mv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mu, <8 x i16> splat (i16 -127))
  %i.mw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mv, <8 x i16> splat (i16 127))
  %i.mx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mw, <8 x i16> poison)
  %i.my = bitcast <16 x i8> %i.mx to <4 x i32>
  %i.mz = extractelement <4 x i32> %i.my, i64 0
  store i32 %i.mz, ptr %i.mn, align 4, !tbaa !45
  %i.na = getelementptr inbounds nuw i8, ptr %.25708.i.us, i64 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.1449707.i.us, i64 32
  %i.nc = add nuw nsw i32 %.1454706.i.us, 2       ; 2 uses
  %exitcond836.not.i.us.1 = icmp eq i32 %i.nc, %5
  br i1 %exitcond836.not.i.us.1, label %.loopexit574.i.us, label %.lr.ph709.i.us, !llvm.loop !977

.loopexit574.i.us:                                ; preds = %.lr.ph709.i.us.prol.loopexit, %.lr.ph709.i.us, %.preheader576.i.us
  %.29.i.us = phi ptr [ %.24.lcssa.i.us, %.preheader576.i.us ], [ %.lcssa277.unr, %.lr.ph709.i.us.prol.loopexit ], [ %i.na, %.lr.ph709.i.us ] ; 2 uses
  %indvars.iv.next839.i.us = add nuw nsw i64 %indvars.iv838.i.us, 4 ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv.next839.i.us, %invariant.op915.i
  br i1 %i.nd, label %.preheader578.i.us, label %.preheader572.loopexit.i, !llvm.loop !978

.preheader575.i.us:                               ; preds = %.preheader575.i.us.preheader, %.loopexit574.i.us54
  %indvars.iv838.i.us51 = phi i64 [ %indvars.iv.next839.i.us56, %.loopexit574.i.us54 ], [ %i.kd, %.preheader575.i.us.preheader ] ; 2 uses
  %.23725.i.us52 = phi ptr [ %.29.i.us55, %.loopexit574.i.us54 ], [ %.13.lcssa.i, %.preheader575.i.us.preheader ] ; 2 uses
  %i.ne = add nsw i64 %indvars.iv838.i.us51, %i.kf
  %i.nf = mul i64 %i.ne, %i.n
  %gep.i.us53 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.nf ; 2 uses
  br i1 %i.jx, label %.lr.ph715.i.us, label %.preheader573.i.us

.lr.ph715.i.us:                                   ; preds = %.preheader575.i.us, %.lr.ph715.i.us
  %.27714.i.us = phi ptr [ %i.nz, %.lr.ph715.i.us ], [ %.23725.i.us52, %.preheader575.i.us ] ; 2 uses
  %.3451713.i.us = phi ptr [ %i.oa, %.lr.ph715.i.us ], [ %gep.i.us53, %.preheader575.i.us ] ; 3 uses
  %.0455712.i.us = phi i32 [ %i.ob, %.lr.ph715.i.us ], [ 0, %.preheader575.i.us ]
  %i.ng = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.3451713.i.us, <4 x i32> %i.kb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.3451713.i.us, i64 4
  %i.ni = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.nh, <4 x i32> %i.kb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.nj = shufflevector <4 x float> %i.ng, <4 x float> %i.ni, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.nk = shufflevector <4 x float> %i.ng, <4 x float> %i.ni, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.nl = fmul fast <4 x float> %i.nj, %i.jw      ; 2 uses
  %i.nm = fmul fast <4 x float> %i.nk, %i.jw      ; 2 uses
  %i.nn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nl)
  %i.no = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nm)
  %i.np = fadd fast <4 x float> %i.nn, %i.nl
  %i.nq = fadd fast <4 x float> %i.no, %i.nm
  %i.nr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.np)
  %i.ns = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nq)
  %i.nt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nr, <4 x i32> %i.ns)
  %i.nu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nt, <8 x i16> splat (i16 -127))
  %i.nv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nu, <8 x i16> splat (i16 127))
  %i.nw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nv, <8 x i16> poison)
  %i.nx = bitcast <16 x i8> %i.nw to <2 x i64>
  %i.ny = extractelement <2 x i64> %i.nx, i64 0
  store i64 %i.ny, ptr %.27714.i.us, align 8, !tbaa !975
  %i.nz = getelementptr inbounds nuw i8, ptr %.27714.i.us, i64 8 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.3451713.i.us, i64 8 ; 2 uses
  %i.ob = add nuw nsw i32 %.0455712.i.us, 2       ; 2 uses
  %i.oc = or disjoint i32 %i.ob, 1
  %i.od = icmp slt i32 %i.oc, %5
  br i1 %i.od, label %.lr.ph715.i.us, label %.preheader573.i.us, !llvm.loop !979

.preheader573.i.us:                               ; preds = %.lr.ph715.i.us, %.preheader575.i.us
  %.0455.lcssa.i.us = phi i32 [ 0, %.preheader575.i.us ], [ %i.kc, %.lr.ph715.i.us ] ; 4 uses
  %.3451.lcssa.i.us = phi ptr [ %gep.i.us53, %.preheader575.i.us ], [ %i.oa, %.lr.ph715.i.us ] ; 3 uses
  %.27.lcssa.i.us = phi ptr [ %.23725.i.us52, %.preheader575.i.us ], [ %i.nz, %.lr.ph715.i.us ] ; 4 uses
  %i.oe = icmp slt i32 %.0455.lcssa.i.us, %5
  br i1 %i.oe, label %.lr.ph722.i.us.preheader, label %.loopexit574.i.us54

.lr.ph722.i.us.preheader:                         ; preds = %.preheader573.i.us
  %.neg329 = or disjoint i32 %.0455.lcssa.i.us, 1
  br i1 %lcmp.mod319.not, label %.lr.ph722.i.us.prol.loopexit, label %.lr.ph722.i.us.prol

.lr.ph722.i.us.prol:                              ; preds = %.lr.ph722.i.us.preheader
  %i.of = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.3451.lcssa.i.us, <4 x i32> %i.kb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.og = fmul fast <4 x float> %i.of, %i.jw      ; 2 uses
  %i.oh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.og)
  %i.oi = fadd fast <4 x float> %i.oh, %i.og
  %i.oj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oi) ; 2 uses
  %i.ok = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oj, <4 x i32> %i.oj)
  %i.ol = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ok, <8 x i16> splat (i16 -127))
  %i.om = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ol, <8 x i16> splat (i16 127))
  %i.on = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.om, <8 x i16> poison)
  %i.oo = bitcast <16 x i8> %i.on to <4 x i32>
  %i.op = extractelement <4 x i32> %i.oo, i64 0
  store i32 %i.op, ptr %.27.lcssa.i.us, align 4, !tbaa !45
  %i.oq = getelementptr inbounds nuw i8, ptr %.27.lcssa.i.us, i64 4 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.3451.lcssa.i.us, i64 4
  %i.os = or disjoint i32 %.0455.lcssa.i.us, 1
  br label %.lr.ph722.i.us.prol.loopexit

.lr.ph722.i.us.prol.loopexit:                     ; preds = %.lr.ph722.i.us.prol, %.lr.ph722.i.us.preheader
  %.lcssa281.unr = phi ptr [ poison, %.lr.ph722.i.us.preheader ], [ %i.oq, %.lr.ph722.i.us.prol ]
  %.28721.i.us.unr = phi ptr [ %.27.lcssa.i.us, %.lr.ph722.i.us.preheader ], [ %i.oq, %.lr.ph722.i.us.prol ]
  %.4452720.i.us.unr = phi ptr [ %.3451.lcssa.i.us, %.lr.ph722.i.us.preheader ], [ %i.or, %.lr.ph722.i.us.prol ]
  %.1456719.i.us.unr = phi i32 [ %.0455.lcssa.i.us, %.lr.ph722.i.us.preheader ], [ %i.os, %.lr.ph722.i.us.prol ]
  %i.ot = icmp eq i32 %5, %.neg329
  br i1 %i.ot, label %.loopexit574.i.us54, label %.lr.ph722.i.us

.lr.ph722.i.us:                                   ; preds = %.lr.ph722.i.us.prol.loopexit, %.lr.ph722.i.us
  %.28721.i.us = phi ptr [ %i.ps, %.lr.ph722.i.us ], [ %.28721.i.us.unr, %.lr.ph722.i.us.prol.loopexit ] ; 3 uses
  %.4452720.i.us = phi ptr [ %i.pt, %.lr.ph722.i.us ], [ %.4452720.i.us.unr, %.lr.ph722.i.us.prol.loopexit ] ; 3 uses
  %.1456719.i.us = phi i32 [ %i.pu, %.lr.ph722.i.us ], [ %.1456719.i.us.unr, %.lr.ph722.i.us.prol.loopexit ]
end_hunk_7
begin_hunk_8_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.dy = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dz = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.dy, <32 x i8> splat (i8 -127))
  %i.ea = bitcast <32 x i8> %i.dx to <16 x i16>   ; 2 uses
  %i.eb = bitcast <32 x i8> %i.dz to <16 x i16>   ; 2 uses
  %i.ec = shufflevector <16 x i16> %i.ea, <16 x i16> %i.eb, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 16, i32 18, i32 20, i32 22, i32 8, i32 10, i32 12, i32 14, i32 24, i32 26, i32 28, i32 30>
  %i.ed = shufflevector <16 x i16> %i.ea, <16 x i16> %i.eb, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 17, i32 19, i32 21, i32 23, i32 9, i32 11, i32 13, i32 15, i32 25, i32 27, i32 29, i32 31>
  store <16 x i16> %i.ec, ptr %.51113.i.us.us, align 32, !tbaa !116
  %i.ee = getelementptr inbounds nuw i8, ptr %.51113.i.us.us, i64 32
  store <16 x i16> %i.ed, ptr %i.ee, align 32, !tbaa !116
  %i.ef = getelementptr inbounds nuw i8, ptr %.51113.i.us.us, i64 64 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.46561112.i.us.us, i64 %.idx740.i
  %i.eh = add nuw nsw i32 %.06651111.i.us.us, 4   ; 2 uses
  %i.ei = or disjoint i32 %i.eh, 3
  %i.ej = icmp slt i32 %i.ei, %5
  br i1 %i.ej, label %.lr.ph1114.i.us.us, label %.loopexit1093.i.loopexit18.us.us, !llvm.loop !1015

.loopexit1093.i.loopexit18.us.us:                 ; preds = %.lr.ph1114.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 16 ; 3 uses
  %i.ek = or disjoint i64 %indvars.iv.next.i.us.us, 15
  %i.el = icmp samesign ult i64 %i.ek, %i.ab
  br i1 %i.el, label %.loopexit1100.i.us.us, label %.preheader1091.loopexit.i, !llvm.loop !1014

.loopexit1100.i.us:                               ; preds = %.lr.ph1131.i.split.us, %.loopexit1093.i.loopexit19.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit1093.i.loopexit19.us ], [ 0, %.lr.ph1131.i.split.us ] ; 2 uses
  %.01130.i.us = phi ptr [ %i.hz, %.loopexit1093.i.loopexit19.us ], [ %i.o, %.lr.ph1131.i.split.us ]
  %i.em = load ptr, ptr %0, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.r
  %i.eo = add nsw i64 %indvars.iv.i.us, %i.ac
  %i.ep = mul nsw i64 %i.eo, %i.ad
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ep
  br label %.lr.ph1108.i.us

.lr.ph1108.i.us:                                  ; preds = %.loopexit1100.i.us, %.lr.ph1108.i.us
  %.31107.i.us = phi ptr [ %i.hz, %.lr.ph1108.i.us ], [ %.01130.i.us, %.loopexit1100.i.us ] ; 3 uses
  %.26541106.i.us = phi ptr [ %i.ia, %.lr.ph1108.i.us ], [ %i.eq, %.loopexit1100.i.us ] ; 9 uses
  %.06641105.i.us = phi i32 [ %i.ib, %.lr.ph1108.i.us ], [ 0, %.loopexit1100.i.us ]
  %i.er = load <16 x float>, ptr %.26541106.i.us, align 1, !tbaa !116
  %i.es = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 64
  %i.et = load <16 x float>, ptr %i.es, align 1, !tbaa !116
  %i.eu = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 128
  %i.ev = load <16 x float>, ptr %i.eu, align 1, !tbaa !116
  %i.ew = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 192
  %i.ex = load <16 x float>, ptr %i.ew, align 1, !tbaa !116
  %i.ey = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 256
  %i.ez = load <16 x float>, ptr %i.ey, align 1, !tbaa !116
  %i.fa = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 320
  %i.fb = load <16 x float>, ptr %i.fa, align 1, !tbaa !116
  %i.fc = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 384
  %i.fd = load <16 x float>, ptr %i.fc, align 1, !tbaa !116
  %i.fe = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 448
  %i.ff = load <16 x float>, ptr %i.fe, align 1, !tbaa !116
  %i.fg = fmul fast <16 x float> %i.er, %i.t      ; 2 uses
  %i.fh = fmul fast <16 x float> %i.et, %i.t      ; 2 uses
  %i.fi = fmul fast <16 x float> %i.ev, %i.t      ; 2 uses
  %i.fj = fmul fast <16 x float> %i.ex, %i.t      ; 2 uses
  %i.fk = fmul fast <16 x float> %i.ez, %i.t      ; 2 uses
  %i.fl = fmul fast <16 x float> %i.fb, %i.t      ; 2 uses
  %i.fm = fmul fast <16 x float> %i.fd, %i.t      ; 2 uses
  %i.fn = fmul fast <16 x float> %i.ff, %i.t      ; 2 uses
  %i.fo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fp = fadd fast <16 x float> %i.fo, %i.fg
  %i.fq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fq, <16 x i8> zeroinitializer, i16 -1)
  %i.fs = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fr, <16 x i8> splat (i8 -127))
  %i.ft = bitcast <16 x i8> %i.fs to <2 x i64>
  %i.fu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fh)
  %i.fv = fadd fast <16 x float> %i.fu, %i.fh
  %i.fw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fw, <16 x i8> zeroinitializer, i16 -1)
  %i.fy = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fx, <16 x i8> splat (i8 -127))
  %i.fz = bitcast <16 x i8> %i.fy to <2 x i64>
  %i.ga = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fi)
  %i.gb = fadd fast <16 x float> %i.ga, %i.fi
  %i.gc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gd = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gc, <16 x i8> zeroinitializer, i16 -1)
  %i.ge = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gd, <16 x i8> splat (i8 -127))
  %i.gf = bitcast <16 x i8> %i.ge to <2 x i64>
  %i.gg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fj)
  %i.gh = fadd fast <16 x float> %i.gg, %i.fj
  %i.gi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gi, <16 x i8> zeroinitializer, i16 -1)
  %i.gk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gj, <16 x i8> splat (i8 -127))
  %i.gl = bitcast <16 x i8> %i.gk to <2 x i64>
  %i.gm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fk)
  %i.gn = fadd fast <16 x float> %i.gm, %i.fk
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.go, <16 x i8> zeroinitializer, i16 -1)
  %i.gq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fl)
  %i.gr = fadd fast <16 x float> %i.gq, %i.fl
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gs, <16 x i8> zeroinitializer, i16 -1)
  %i.gu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fm)
  %i.gv = fadd fast <16 x float> %i.gu, %i.fm
  %i.gw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gw, <16 x i8> zeroinitializer, i16 -1)
  %i.gy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fn)
  %i.gz = fadd fast <16 x float> %i.gy, %i.fn
  %i.ha = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ha, <16 x i8> zeroinitializer, i16 -1)
  %i.hc = shufflevector <16 x i8> %i.gp, <16 x i8> %i.gx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hd = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.hc, <32 x i8> splat (i8 -127))
  %i.he = shufflevector <2 x i64> %i.ft, <2 x i64> %i.gf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = bitcast <8 x i64> %i.he to <16 x i32>
  %i.hg = bitcast <32 x i8> %i.hd to <8 x i32>
  %i.hh = shufflevector <8 x i32> %i.hg, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <16 x i32> %i.hf, <16 x i32> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.hj = shufflevector <16 x i8> %i.gt, <16 x i8> %i.hb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hk = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.hj, <32 x i8> splat (i8 -127))
  %i.hl = shufflevector <2 x i64> %i.fz, <2 x i64> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = bitcast <8 x i64> %i.hl to <16 x i32>
  %i.hn = bitcast <32 x i8> %i.hk to <8 x i32>
  %i.ho = shufflevector <8 x i32> %i.hn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hp = shufflevector <16 x i32> %i.hm, <16 x i32> %i.ho, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.hq = bitcast <16 x i32> %i.hi to <32 x i16>  ; 2 uses
  %i.hr = bitcast <16 x i32> %i.hp to <32 x i16>  ; 2 uses
  %i.hs = shufflevector <32 x i16> %i.hq, <32 x i16> %i.hr, <32 x i32> <i32 0, i32 4, i32 32, i32 36, i32 1, i32 5, i32 33, i32 37, i32 8, i32 12, i32 40, i32 44, i32 9, i32 13, i32 41, i32 45, i32 16, i32 20, i32 48, i32 52, i32 17, i32 21, i32 49, i32 53, i32 24, i32 28, i32 56, i32 60, i32 25, i32 29, i32 57, i32 61>
  %i.ht = shufflevector <32 x i16> %i.hq, <32 x i16> %i.hr, <32 x i32> <i32 2, i32 6, i32 34, i32 38, i32 3, i32 7, i32 35, i32 39, i32 10, i32 14, i32 42, i32 46, i32 11, i32 15, i32 43, i32 47, i32 18, i32 22, i32 50, i32 54, i32 19, i32 23, i32 51, i32 55, i32 26, i32 30, i32 58, i32 62, i32 27, i32 31, i32 59, i32 63>
  %i.hu = bitcast <32 x i16> %i.hs to <16 x i32>
  %i.hv = shufflevector <16 x i32> %i.hu, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  %i.hw = bitcast <32 x i16> %i.ht to <16 x i32>
  %i.hx = shufflevector <16 x i32> %i.hw, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  store <16 x i32> %i.hv, ptr %.31107.i.us, align 64, !tbaa !116
  %i.hy = getelementptr inbounds nuw i8, ptr %.31107.i.us, i64 64
  store <16 x i32> %i.hx, ptr %i.hy, align 64, !tbaa !116
  %i.hz = getelementptr inbounds nuw i8, ptr %.31107.i.us, i64 128 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.26541106.i.us, i64 %.idx741.i
  %i.ib = add nuw nsw i32 %.06641105.i.us, 8      ; 2 uses
  %i.ic = or disjoint i32 %i.ib, 7
  %i.id = icmp slt i32 %i.ic, %5
  br i1 %i.id, label %.lr.ph1108.i.us, label %.loopexit1093.i.loopexit19.us, !llvm.loop !1016

.loopexit1093.i.loopexit19.us:                    ; preds = %.lr.ph1108.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.ie = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.if = icmp samesign ult i64 %i.ie, %i.ab
  br i1 %i.if, label %.loopexit1100.i.us, label %.preheader1091.loopexit.i, !llvm.loop !1014

.preheader1091.loopexit.i:                        ; preds = %.loopexit1093.i.loopexit20, %.loopexit1093.i.loopexit19.us, %.loopexit1093.i.loopexit18.us.us, %.loopexit1093.i.us.us.us.us, %.loopexit1100.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.9.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.o, %.loopexit1100.i.us.us.us.preheader ], [ %i.hz, %.loopexit1093.i.loopexit19.us ], [ %i.ef, %.loopexit1093.i.loopexit18.us.us ], [ %i.yz, %.loopexit1093.i.loopexit20 ]
  %.us-phi53 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit1093.i.us.us.us.us ], [ %i.ag, %.loopexit1100.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit1093.i.loopexit19.us ], [ %indvars.iv.next.i.us.us, %.loopexit1093.i.loopexit18.us.us ], [ %indvars.iv.next.i, %.loopexit1093.i.loopexit20 ]
  %i.ig = trunc nuw nsw i64 %.us-phi53 to i32
  br label %.preheader1091.i

.preheader1091.i:                                 ; preds = %.preheader1091.loopexit.i, %bb.j
  %.0647.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ig, %.preheader1091.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader1091.loopexit.i ] ; 6 uses
  %i.ih = or disjoint i32 %.0647.lcssa.i, 7
  %i.ii = icmp slt i32 %i.ih, %3
  br i1 %i.ii, label %.lr.ph1166.i, label %.preheader1085.i

.lr.ph1166.i:                                     ; preds = %.preheader1091.i
  %i.ij = sext i32 %4 to i64
  %i.ik = mul i64 %i.n, %i.ij                     ; 4 uses
  %i.il = icmp ne i32 %i.e, 16
  %i.im = insertelement <16 x float> poison, float %6, i64 0
  %i.in = shufflevector <16 x float> %i.im, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.io = icmp slt i32 %5, 16
  %.idx738.i = shl i64 %i.n, 6
  %i.ip = insertelement <8 x float> poison, float %6, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer ; 17 uses
  %.idx737.i = shl i64 %i.n, 5
  %i.ir = icmp ne i32 %i.e, 4
  %i.is = icmp slt i32 %5, 4
  %.idx736.i = shl i64 %i.n, 4
  %i.it = icmp eq i32 %i.e, 1
  %i.iu = icmp sgt i32 %5, 1
  %.idx735.i = shl i64 %i.n, 3
  %i.iv = and i32 %5, -2
  %i.iw = zext i32 %.0647.lcssa.i to i64          ; 7 uses
  %i.ix = sext i32 %3 to i64
  %i.iy = sext i32 %2 to i64                      ; 4 uses
  %i.iz = sext i32 %i.e to i64                    ; 4 uses
  %brmerge1289.i = or i1 %i.io, %i.il
  %brmerge1295.i = or i1 %i.is, %i.ir
  %invariant.op.i = add nsw i64 %i.ix, -7         ; 5 uses
  br i1 %brmerge1289.i, label %.lr.ph1166.i.split.us, label %.lr.ph1137.i.preheader

.lr.ph1166.i.split.us:                            ; preds = %.lr.ph1166.i
  %i.ja = icmp slt i32 %5, 8
  %i.jb = icmp ne i32 %i.e, 8
  %brmerge1292.i = or i1 %i.ja, %i.jb
  br i1 %brmerge1292.i, label %.lr.ph1166.i.split.us.split.us, label %.loopexit1090.i.us

.lr.ph1166.i.split.us.split.us:                   ; preds = %.lr.ph1166.i.split.us
  br i1 %brmerge1295.i, label %.lr.ph1166.i.split.us.split.us.split.us, label %.loopexit1090.i.us.us

.lr.ph1166.i.split.us.split.us.split.us:          ; preds = %.lr.ph1166.i.split.us.split.us
  br i1 %i.it, label %.loopexit1090.i.us.us.us.us.preheader, label %.loopexit1090.i.us.us.us.preheader

.loopexit1090.i.us.us.us.us.preheader:            ; preds = %.lr.ph1166.i.split.us.split.us.split.us
  %xtraiter265 = and i32 %5, 1
  %lcmp.mod266.not = icmp eq i32 %xtraiter265, 0
  br label %.loopexit1090.i.us.us.us.us

.loopexit1090.i.us.us.us.preheader:               ; preds = %.lr.ph1166.i.split.us.split.us.split.us
  %i.jc = add nuw nsw i64 %i.iw, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.jc)
  %i.jd = xor i64 %i.iw, -1
  %i.je = add nsw i64 %smax, %i.jd
  %i.jf = and i64 %i.je, -8
  %i.jg = add nuw i64 %i.jf, %i.iw
  %i.jh = add nuw i64 %i.jg, 8
  br label %.preheader1085.loopexit.i

.loopexit1090.i.us.us.us.us:                      ; preds = %.loopexit1090.i.us.us.us.us.preheader, %.loopexit1087.i.us.us.us.us
  %indvars.iv1381.i.us.us.us.us = phi i64 [ %indvars.iv.next1382.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %i.iw, %.loopexit1090.i.us.us.us.us.preheader ] ; 2 uses
  %.101165.i.us.us.us.us = phi ptr [ %.19.i.us.us.us.us, %.loopexit1087.i.us.us.us.us ], [ %.0.lcssa.i, %.loopexit1090.i.us.us.us.us.preheader ] ; 2 uses
  %i.ji = load ptr, ptr %0, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.ik
  %i.jk = add nsw i64 %indvars.iv1381.i.us.us.us.us, %i.iy
  %i.jl = mul nuw nsw i64 %i.jk, %i.iz
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jl ; 2 uses
  br i1 %i.iu, label %.lr.ph1155.i.us.us.us.us, label %.preheader1086.i.us.us.us.us

.lr.ph1155.i.us.us.us.us:                         ; preds = %.loopexit1090.i.us.us.us.us, %.lr.ph1155.i.us.us.us.us
  %.171154.i.us.us.us.us = phi ptr [ %i.kj, %.lr.ph1155.i.us.us.us.us ], [ %.101165.i.us.us.us.us, %.loopexit1090.i.us.us.us.us ] ; 2 uses
  %.66751153.i.us.us.us.us = phi ptr [ %i.kk, %.lr.ph1155.i.us.us.us.us ], [ %i.jm, %.loopexit1090.i.us.us.us.us ] ; 3 uses
  %.06891152.i.us.us.us.us = phi i32 [ %i.kl, %.lr.ph1155.i.us.us.us.us ], [ 0, %.loopexit1090.i.us.us.us.us ]
  %i.jn = load <8 x float>, ptr %.66751153.i.us.us.us.us, align 1, !tbaa !116
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.66751153.i.us.us.us.us, i64 %i.n
  %i.jp = load <8 x float>, ptr %i.jo, align 1, !tbaa !116
  %i.jq = fmul fast <8 x float> %i.jn, %i.iq      ; 2 uses
  %i.jr = fmul fast <8 x float> %i.jp, %i.iq      ; 2 uses
  %i.js = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jq)
  %i.jt = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jr)
  %i.ju = fadd fast <8 x float> %i.js, %i.jq
  %i.jv = fadd fast <8 x float> %i.jt, %i.jr
  %i.jw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ju)
  %i.jx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jv)
  %i.jy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jw, <8 x i32> %i.jx)
  %i.jz = bitcast <16 x i16> %i.jy to <4 x i64>
  %i.ka = shufflevector <4 x i64> %i.jz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.kb = bitcast <4 x i64> %i.ka to <16 x i16>
  %i.kc = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.kb, <16 x i16> splat (i16 -127))
  %i.kd = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.kc, <16 x i16> splat (i16 127))
  %i.ke = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.kd, <16 x i16> poison)
  %i.kf = bitcast <32 x i8> %i.ke to <8 x i32>
  %i.kg = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kh = bitcast <4 x i32> %i.kg to <16 x i8>
  %i.ki = shufflevector <16 x i8> %i.kh, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.ki, ptr %.171154.i.us.us.us.us, align 16, !tbaa !116
  %i.kj = getelementptr inbounds nuw i8, ptr %.171154.i.us.us.us.us, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.66751153.i.us.us.us.us, i64 %.idx735.i ; 2 uses
  %i.kl = add nuw nsw i32 %.06891152.i.us.us.us.us, 2 ; 2 uses
  %i.km = or disjoint i32 %i.kl, 1
  %i.kn = icmp slt i32 %i.km, %5
  br i1 %i.kn, label %.lr.ph1155.i.us.us.us.us, label %.preheader1086.i.us.us.us.us, !llvm.loop !1017

.preheader1086.i.us.us.us.us:                     ; preds = %.lr.ph1155.i.us.us.us.us, %.loopexit1090.i.us.us.us.us
  %.0689.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit1090.i.us.us.us.us ], [ %i.iv, %.lr.ph1155.i.us.us.us.us ] ; 4 uses
  %.6675.lcssa.i.us.us.us.us = phi ptr [ %i.jm, %.loopexit1090.i.us.us.us.us ], [ %i.kk, %.lr.ph1155.i.us.us.us.us ] ; 3 uses
  %.17.lcssa.i.us.us.us.us = phi ptr [ %.101165.i.us.us.us.us, %.loopexit1090.i.us.us.us.us ], [ %i.kj, %.lr.ph1155.i.us.us.us.us ] ; 4 uses
  %i.ko = icmp slt i32 %.0689.lcssa.i.us.us.us.us, %5
  br i1 %i.ko, label %.lr.ph1162.i.us.us.us.us.preheader, label %.loopexit1087.i.us.us.us.us

.lr.ph1162.i.us.us.us.us.preheader:               ; preds = %.preheader1086.i.us.us.us.us
  %.neg281 = or disjoint i32 %.0689.lcssa.i.us.us.us.us, 1
  br i1 %lcmp.mod266.not, label %.lr.ph1162.i.us.us.us.us.prol.loopexit, label %.lr.ph1162.i.us.us.us.us.prol

.lr.ph1162.i.us.us.us.us.prol:                    ; preds = %.lr.ph1162.i.us.us.us.us.preheader
  %i.kp = load <8 x float>, ptr %.6675.lcssa.i.us.us.us.us, align 1, !tbaa !116
  %i.kq = fmul fast <8 x float> %i.kp, %i.iq      ; 2 uses
  %i.kr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kq)
  %i.ks = fadd fast <8 x float> %i.kr, %i.kq
  %i.kt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ks)
  %i.ku = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.kt, <16 x i8> zeroinitializer, i8 -1)
  %i.kv = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ku, <16 x i8> splat (i8 -127))
  %i.kw = bitcast <16 x i8> %i.kv to <2 x i64>
  %i.kx = extractelement <2 x i64> %i.kw, i64 0
  store i64 %i.kx, ptr %.17.lcssa.i.us.us.us.us, align 8, !tbaa !975
  %i.ky = getelementptr inbounds nuw i8, ptr %.17.lcssa.i.us.us.us.us, i64 8 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.6675.lcssa.i.us.us.us.us, i64 %i.n
  %i.la = or disjoint i32 %.0689.lcssa.i.us.us.us.us, 1
  br label %.lr.ph1162.i.us.us.us.us.prol.loopexit

.lr.ph1162.i.us.us.us.us.prol.loopexit:           ; preds = %.lr.ph1162.i.us.us.us.us.prol, %.lr.ph1162.i.us.us.us.us.preheader
  %.lcssa249.unr = phi ptr [ poison, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.ky, %.lr.ph1162.i.us.us.us.us.prol ]
  %.181161.i.us.us.us.us.unr = phi ptr [ %.17.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.ky, %.lr.ph1162.i.us.us.us.us.prol ]
  %.76761160.i.us.us.us.us.unr = phi ptr [ %.6675.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.kz, %.lr.ph1162.i.us.us.us.us.prol ]
  %.16901159.i.us.us.us.us.unr = phi i32 [ %.0689.lcssa.i.us.us.us.us, %.lr.ph1162.i.us.us.us.us.preheader ], [ %i.la, %.lr.ph1162.i.us.us.us.us.prol ]
  %i.lb = icmp eq i32 %5, %.neg281
  br i1 %i.lb, label %.loopexit1087.i.us.us.us.us, label %.lr.ph1162.i.us.us.us.us

.lr.ph1162.i.us.us.us.us:                         ; preds = %.lr.ph1162.i.us.us.us.us.prol.loopexit, %.lr.ph1162.i.us.us.us.us
  %.181161.i.us.us.us.us = phi ptr [ %i.lw, %.lr.ph1162.i.us.us.us.us ], [ %.181161.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ] ; 3 uses
  %.76761160.i.us.us.us.us = phi ptr [ %i.lx, %.lr.ph1162.i.us.us.us.us ], [ %.76761160.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.16901159.i.us.us.us.us = phi i32 [ %i.ly, %.lr.ph1162.i.us.us.us.us ], [ %.16901159.i.us.us.us.us.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ]
  %i.lc = load <8 x float>, ptr %.76761160.i.us.us.us.us, align 1, !tbaa !116
  %i.ld = fmul fast <8 x float> %i.lc, %i.iq      ; 2 uses
  %i.le = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ld)
  %i.lf = fadd fast <8 x float> %i.le, %i.ld
  %i.lg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf)
  %i.lh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.lg, <16 x i8> zeroinitializer, i8 -1)
  %i.li = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.lh, <16 x i8> splat (i8 -127))
  %i.lj = bitcast <16 x i8> %i.li to <2 x i64>
  %i.lk = extractelement <2 x i64> %i.lj, i64 0
  store i64 %i.lk, ptr %.181161.i.us.us.us.us, align 8, !tbaa !975
  %i.ll = getelementptr inbounds nuw i8, ptr %.181161.i.us.us.us.us, i64 8
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.76761160.i.us.us.us.us, i64 %i.n ; 2 uses
  %i.ln = load <8 x float>, ptr %i.lm, align 1, !tbaa !116
  %i.lo = fmul fast <8 x float> %i.ln, %i.iq      ; 2 uses
  %i.lp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.lo)
  %i.lq = fadd fast <8 x float> %i.lp, %i.lo
  %i.lr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lq)
  %i.ls = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.lr, <16 x i8> zeroinitializer, i8 -1)
  %i.lt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ls, <16 x i8> splat (i8 -127))
  %i.lu = bitcast <16 x i8> %i.lt to <2 x i64>
  %i.lv = extractelement <2 x i64> %i.lu, i64 0
  store i64 %i.lv, ptr %i.ll, align 8, !tbaa !975
  %i.lw = getelementptr inbounds nuw i8, ptr %.181161.i.us.us.us.us, i64 16 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.n
  %i.ly = add nuw nsw i32 %.16901159.i.us.us.us.us, 2 ; 2 uses
  %exitcond1380.not.i.us.us.us.us.1 = icmp eq i32 %i.ly, %5
  br i1 %exitcond1380.not.i.us.us.us.us.1, label %.loopexit1087.i.us.us.us.us, label %.lr.ph1162.i.us.us.us.us, !llvm.loop !1018

.loopexit1087.i.us.us.us.us:                      ; preds = %.lr.ph1162.i.us.us.us.us.prol.loopexit, %.lr.ph1162.i.us.us.us.us, %.preheader1086.i.us.us.us.us
  %.19.i.us.us.us.us = phi ptr [ %.17.lcssa.i.us.us.us.us, %.preheader1086.i.us.us.us.us ], [ %.lcssa249.unr, %.lr.ph1162.i.us.us.us.us.prol.loopexit ], [ %i.lw, %.lr.ph1162.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next1382.i.us.us.us.us = add nuw nsw i64 %indvars.iv1381.i.us.us.us.us, 8 ; 3 uses
  %i.lz = icmp slt i64 %indvars.iv.next1382.i.us.us.us.us, %invariant.op.i
  br i1 %i.lz, label %.loopexit1090.i.us.us.us.us, label %.preheader1085.loopexit.i, !llvm.loop !1019

.loopexit1090.i.us.us:                            ; preds = %.lr.ph1166.i.split.us.split.us, %.loopexit1087.i.loopexit15.us.us
  %indvars.iv1381.i.us.us = phi i64 [ %indvars.iv.next1382.i.us.us, %.loopexit1087.i.loopexit15.us.us ], [ %i.iw, %.lr.ph1166.i.split.us.split.us ] ; 2 uses
  %.101165.i.us.us = phi ptr [ %i.nz, %.loopexit1087.i.loopexit15.us.us ], [ %.0.lcssa.i, %.lr.ph1166.i.split.us.split.us ]
  %i.ma = load ptr, ptr %0, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ik
  %i.mc = add nsw i64 %indvars.iv1381.i.us.us, %i.iy
  %i.md = mul nsw i64 %i.mc, %i.iz
  %i.me = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.md
  br label %.lr.ph1149.i.us.us

.lr.ph1149.i.us.us:                               ; preds = %.loopexit1090.i.us.us, %.lr.ph1149.i.us.us
  %.151148.i.us.us = phi ptr [ %i.nz, %.lr.ph1149.i.us.us ], [ %.101165.i.us.us, %.loopexit1090.i.us.us ] ; 3 uses
  %.46731147.i.us.us = phi ptr [ %i.oa, %.lr.ph1149.i.us.us ], [ %i.me, %.loopexit1090.i.us.us ] ; 5 uses
  %.06881146.i.us.us = phi i32 [ %i.ob, %.lr.ph1149.i.us.us ], [ 0, %.loopexit1090.i.us.us ]
  %i.mf = load <8 x float>, ptr %.46731147.i.us.us, align 1, !tbaa !116
  %i.mg = getelementptr inbounds nuw i8, ptr %.46731147.i.us.us, i64 32
  %i.mh = load <8 x float>, ptr %i.mg, align 1, !tbaa !116
  %i.mi = getelementptr inbounds nuw i8, ptr %.46731147.i.us.us, i64 64
  %i.mj = load <8 x float>, ptr %i.mi, align 1, !tbaa !116
  %i.mk = getelementptr inbounds nuw i8, ptr %.46731147.i.us.us, i64 96
  %i.ml = load <8 x float>, ptr %i.mk, align 1, !tbaa !116
  %i.mm = fmul fast <8 x float> %i.mf, %i.iq      ; 2 uses
  %i.mn = fmul fast <8 x float> %i.mh, %i.iq      ; 2 uses
  %i.mo = fmul fast <8 x float> %i.mj, %i.iq      ; 2 uses
  %i.mp = fmul fast <8 x float> %i.ml, %i.iq      ; 2 uses
  %i.mq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mm)
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mn)
  %i.ms = fadd fast <8 x float> %i.mq, %i.mm
  %i.mt = fadd fast <8 x float> %i.mr, %i.mn
  %i.mu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ms)
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt)
  %i.mw = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.mu, <8 x i32> %i.mv)
  %i.mx = bitcast <16 x i16> %i.mw to <4 x i64>
  %i.my = shufflevector <4 x i64> %i.mx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mz = bitcast <4 x i64> %i.my to <16 x i16>
  %i.na = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.mz, <16 x i16> splat (i16 -127))
  %i.nb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.na, <16 x i16> splat (i16 127))
  %i.nc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.nb, <16 x i16> poison)
  %i.nd = bitcast <32 x i8> %i.nc to <8 x i32>
  %i.ne = shufflevector <8 x i32> %i.nd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mo)
  %i.ng = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mp)
  %i.nh = fadd fast <8 x float> %i.nf, %i.mo
  %i.ni = fadd fast <8 x float> %i.ng, %i.mp
  %i.nj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nh)
  %i.nk = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ni)
  %i.nl = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.nj, <8 x i32> %i.nk)
  %i.nm = bitcast <16 x i16> %i.nl to <4 x i64>
  %i.nn = shufflevector <4 x i64> %i.nm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.no = bitcast <4 x i64> %i.nn to <16 x i16>
  %i.np = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.no, <16 x i16> splat (i16 -127))
  %i.nq = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.np, <16 x i16> splat (i16 127))
  %i.nr = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.nq, <16 x i16> poison)
  %i.ns = bitcast <32 x i8> %i.nr to <8 x i32>
  %i.nt = shufflevector <8 x i32> %i.ns, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nu = bitcast <4 x i32> %i.ne to <8 x i16>    ; 2 uses
  %i.nv = bitcast <4 x i32> %i.nt to <8 x i16>    ; 2 uses
  %i.nw = shufflevector <8 x i16> %i.nu, <8 x i16> %i.nv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nx = shufflevector <8 x i16> %i.nu, <8 x i16> %i.nv, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i16> %i.nw, ptr %.151148.i.us.us, align 16, !tbaa !116
  %i.ny = getelementptr inbounds nuw i8, ptr %.151148.i.us.us, i64 16
  store <8 x i16> %i.nx, ptr %i.ny, align 16, !tbaa !116
  %i.nz = getelementptr inbounds nuw i8, ptr %.151148.i.us.us, i64 32 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.46731147.i.us.us, i64 %.idx736.i
  %i.ob = add nuw nsw i32 %.06881146.i.us.us, 4   ; 2 uses
  %i.oc = or disjoint i32 %i.ob, 3
  %i.od = icmp slt i32 %i.oc, %5
  br i1 %i.od, label %.lr.ph1149.i.us.us, label %.loopexit1087.i.loopexit15.us.us, !llvm.loop !1020

.loopexit1087.i.loopexit15.us.us:                 ; preds = %.lr.ph1149.i.us.us
  %indvars.iv.next1382.i.us.us = add nuw nsw i64 %indvars.iv1381.i.us.us, 8 ; 3 uses
  %i.oe = icmp slt i64 %indvars.iv.next1382.i.us.us, %invariant.op.i
  br i1 %i.oe, label %.loopexit1090.i.us.us, label %.preheader1085.loopexit.i, !llvm.loop !1019

.loopexit1090.i.us:                               ; preds = %.lr.ph1166.i.split.us, %.loopexit1087.i.loopexit16.us
  %indvars.iv1381.i.us = phi i64 [ %indvars.iv.next1382.i.us, %.loopexit1087.i.loopexit16.us ], [ %i.iw, %.lr.ph1166.i.split.us ] ; 2 uses
  %.101165.i.us = phi ptr [ %i.sa, %.loopexit1087.i.loopexit16.us ], [ %.0.lcssa.i, %.lr.ph1166.i.split.us ]
  %i.of = load ptr, ptr %0, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ik
  %i.oh = add nsw i64 %indvars.iv1381.i.us, %i.iy
  %i.oi = mul nsw i64 %i.oh, %i.iz
end_hunk_8
begin_hunk_9_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !68
  %i.wz = insertelement <16 x float> poison, float %i.wy, i64 0
  %i.xa = shufflevector <16 x float> %i.wz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xb = fmul fast <16 x float> %i.xa, %i.ue     ; 2 uses
  %i.xc = getelementptr i8, ptr %i.uk, i64 56
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !68
  %i.xe = insertelement <16 x float> poison, float %i.xd, i64 0
  %i.xf = shufflevector <16 x float> %i.xe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xg = fmul fast <16 x float> %i.xf, %i.ug     ; 2 uses
  %i.xh = getelementptr i8, ptr %i.uk, i64 60
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !68
  %i.xj = insertelement <16 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xl = fmul fast <16 x float> %i.xk, %i.ui     ; 2 uses
  %i.xm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.uo)
  %i.xn = fadd fast <16 x float> %i.xm, %i.uo
  %i.xo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xo, <16 x i8> zeroinitializer, i16 -1)
  %i.xq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xp, <16 x i8> splat (i8 -127))
  %i.xr = bitcast <16 x i8> %i.xq to <2 x i64>
  %i.xs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ut)
  %i.xt = fadd fast <16 x float> %i.xs, %i.ut
  %i.xu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.xv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.xu, <16 x i8> zeroinitializer, i16 -1)
  %i.xw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xv, <16 x i8> splat (i8 -127))
  %i.xx = bitcast <16 x i8> %i.xw to <2 x i64>
  %i.xy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.uy)
  %i.xz = fadd fast <16 x float> %i.xy, %i.uy
  %i.ya = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.xz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ya, <16 x i8> zeroinitializer, i16 -1)
  %i.yc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yb, <16 x i8> splat (i8 -127))
  %i.yd = bitcast <16 x i8> %i.yc to <2 x i64>
  %i.ye = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vd)
  %i.yf = fadd fast <16 x float> %i.ye, %i.vd
  %i.yg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yg, <16 x i8> zeroinitializer, i16 -1)
  %i.yi = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yh, <16 x i8> splat (i8 -127))
  %i.yj = bitcast <16 x i8> %i.yi to <2 x i64>
  %i.yk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vi)
  %i.yl = fadd fast <16 x float> %i.yk, %i.vi
  %i.ym = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yn = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ym, <16 x i8> zeroinitializer, i16 -1)
  %i.yo = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yn, <16 x i8> splat (i8 -127))
  %i.yp = bitcast <16 x i8> %i.yo to <2 x i64>
  %i.yq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vn)
  %i.yr = fadd fast <16 x float> %i.yq, %i.vn
  %i.ys = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ys, <16 x i8> zeroinitializer, i16 -1)
  %i.yu = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yt, <16 x i8> splat (i8 -127))
  %i.yv = bitcast <16 x i8> %i.yu to <2 x i64>
  %i.yw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vs)
  %i.yx = fadd fast <16 x float> %i.yw, %i.vs
  %i.yy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.yx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.yz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.yy, <16 x i8> zeroinitializer, i16 -1)
  %i.za = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yz, <16 x i8> splat (i8 -127))
  %i.zb = bitcast <16 x i8> %i.za to <2 x i64>
  %i.zc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.vx)
  %i.zd = fadd fast <16 x float> %i.zc, %i.vx
  %i.ze = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ze, <16 x i8> zeroinitializer, i16 -1)
  %i.zg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.zf, <16 x i8> splat (i8 -127))
  %i.zh = bitcast <16 x i8> %i.zg to <2 x i64>
  %i.zi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wc)
  %i.zj = fadd fast <16 x float> %i.zi, %i.wc
  %i.zk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zk, <16 x i8> zeroinitializer, i16 -1)
  %i.zm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wh)
  %i.zn = fadd fast <16 x float> %i.zm, %i.wh
  %i.zo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zo, <16 x i8> zeroinitializer, i16 -1)
  %i.zq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wm)
  %i.zr = fadd fast <16 x float> %i.zq, %i.wm
  %i.zs = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zt = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zs, <16 x i8> zeroinitializer, i16 -1)
  %i.zu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.wr)
  %i.zv = fadd fast <16 x float> %i.zu, %i.wr
  %i.zw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.zw, <16 x i8> zeroinitializer, i16 -1)
  %i.zy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ww)
  %i.zz = fadd fast <16 x float> %i.zy, %i.ww
  %i.aaa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.zz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aab = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aaa, <16 x i8> zeroinitializer, i16 -1)
  %i.aac = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xb)
  %i.aad = fadd fast <16 x float> %i.aac, %i.xb
  %i.aae = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aad, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aaf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aae, <16 x i8> zeroinitializer, i16 -1)
  %i.aag = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xg)
  %i.aah = fadd fast <16 x float> %i.aag, %i.xg
  %i.aai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aaj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aai, <16 x i8> zeroinitializer, i16 -1)
  %i.aak = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.xl)
  %i.aal = fadd fast <16 x float> %i.aak, %i.xl
  %i.aam = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aal, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aan = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aam, <16 x i8> zeroinitializer, i16 -1)
  %i.aao = shufflevector <16 x i8> %i.zl, <16 x i8> %i.aab, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aap = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.aao, <32 x i8> splat (i8 -127))
  %i.aaq = shufflevector <2 x i64> %i.xr, <2 x i64> %i.yp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aar = bitcast <8 x i64> %i.aaq to <16 x i32>
  %i.aas = bitcast <32 x i8> %i.aap to <8 x i32>
  %i.aat = shufflevector <8 x i32> %i.aas, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aau = shufflevector <16 x i32> %i.aar, <16 x i32> %i.aat, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aav = shufflevector <16 x i8> %i.zp, <16 x i8> %i.aaf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aaw = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.aav, <32 x i8> splat (i8 -127))
  %i.aax = shufflevector <2 x i64> %i.xx, <2 x i64> %i.yv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aay = bitcast <8 x i64> %i.aax to <16 x i32>
  %i.aaz = bitcast <32 x i8> %i.aaw to <8 x i32>
  %i.aba = shufflevector <8 x i32> %i.aaz, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abb = shufflevector <16 x i32> %i.aay, <16 x i32> %i.aba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abc = shufflevector <16 x i8> %i.zt, <16 x i8> %i.aaj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abd = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.abc, <32 x i8> splat (i8 -127))
  %i.abe = shufflevector <2 x i64> %i.yd, <2 x i64> %i.zb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abf = bitcast <8 x i64> %i.abe to <16 x i32>
  %i.abg = bitcast <32 x i8> %i.abd to <8 x i32>
  %i.abh = shufflevector <8 x i32> %i.abg, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abi = shufflevector <16 x i32> %i.abf, <16 x i32> %i.abh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abj = shufflevector <16 x i8> %i.zx, <16 x i8> %i.aan, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abk = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.abj, <32 x i8> splat (i8 -127))
  %i.abl = shufflevector <2 x i64> %i.yj, <2 x i64> %i.zh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abm = bitcast <8 x i64> %i.abl to <16 x i32>
  %i.abn = bitcast <32 x i8> %i.abk to <8 x i32>
  %i.abo = shufflevector <8 x i32> %i.abn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abp = shufflevector <16 x i32> %i.abm, <16 x i32> %i.abo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abq = bitcast <16 x i32> %i.aau to <32 x i16> ; 2 uses
  %i.abr = bitcast <16 x i32> %i.abb to <32 x i16> ; 2 uses
  %i.abs = shufflevector <32 x i16> %i.abq, <32 x i16> %i.abr, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.abt = shufflevector <32 x i16> %i.abq, <32 x i16> %i.abr, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.abu = bitcast <16 x i32> %i.abi to <32 x i16> ; 2 uses
  %i.abv = bitcast <16 x i32> %i.abp to <32 x i16> ; 2 uses
  %i.abw = shufflevector <32 x i16> %i.abu, <32 x i16> %i.abv, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59> ; 2 uses
  %i.abx = shufflevector <32 x i16> %i.abu, <32 x i16> %i.abv, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.aby = shufflevector <32 x i16> %i.abs, <32 x i16> %i.abw, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.abz = shufflevector <32 x i16> %i.abs, <32 x i16> %i.abw, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  %i.aca = shufflevector <32 x i16> %i.abt, <32 x i16> %i.abx, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 8, i32 9, i32 40, i32 41, i32 16, i32 17, i32 48, i32 49, i32 24, i32 25, i32 56, i32 57, i32 2, i32 3, i32 34, i32 35, i32 10, i32 11, i32 42, i32 43, i32 18, i32 19, i32 50, i32 51, i32 26, i32 27, i32 58, i32 59>
  %i.acb = shufflevector <32 x i16> %i.abt, <32 x i16> %i.abx, <32 x i32> <i32 4, i32 5, i32 36, i32 37, i32 12, i32 13, i32 44, i32 45, i32 20, i32 21, i32 52, i32 53, i32 28, i32 29, i32 60, i32 61, i32 6, i32 7, i32 38, i32 39, i32 14, i32 15, i32 46, i32 47, i32 22, i32 23, i32 54, i32 55, i32 30, i32 31, i32 62, i32 63>
  store <32 x i16> %i.aby, ptr %.11287.i, align 64, !tbaa !116
  %i.acc = getelementptr inbounds nuw i8, ptr %.11287.i, i64 64
  store <32 x i16> %i.abz, ptr %i.acc, align 64, !tbaa !116
  %i.acd = getelementptr inbounds nuw i8, ptr %.11287.i, i64 128
  store <32 x i16> %i.aca, ptr %i.acd, align 64, !tbaa !116
  %i.ace = getelementptr inbounds nuw i8, ptr %.11287.i, i64 192
  store <32 x i16> %i.acb, ptr %i.ace, align 64, !tbaa !116
  %i.acf = getelementptr inbounds nuw i8, ptr %.11287.i, i64 256 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.07871286.i, i64 %.idx877.i
  %i.ach = add nuw nsw i32 %.07971285.i, 16       ; 2 uses
  %i.aci = or disjoint i32 %i.ach, 15
  %i.acj = icmp slt i32 %i.aci, %5
  br i1 %i.acj, label %.lr.ph.i, label %.loopexit1279.i.loopexit20, !llvm.loop !1112

.loopexit1279.i.loopexit20:                       ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16 ; 3 uses
  %i.ack = or disjoint i64 %indvars.iv.next.i, 15
  %i.acl = icmp samesign ult i64 %i.ack, %i.z
  br i1 %i.acl, label %.lr.ph.i.preheader, label %.preheader1277.loopexit.i, !llvm.loop !1106

.preheader1268.loopexit.i:                        ; preds = %.loopexit1270.i.loopexit17, %.loopexit1270.i.loopexit16.us, %.loopexit1270.i.us.us
  %.us-phi54 = phi ptr [ %i.st, %.loopexit1270.i.loopexit16.us ], [ %.19.i.us.us, %.loopexit1270.i.us.us ], [ %i.atm, %.loopexit1270.i.loopexit17 ]
  %.us-phi55 = phi i64 [ %indvars.iv.next1530.i.us, %.loopexit1270.i.loopexit16.us ], [ %indvars.iv.next1530.i.us.us, %.loopexit1270.i.us.us ], [ %indvars.iv.next1530.i, %.loopexit1270.i.loopexit17 ]
  %i.acm = trunc nuw nsw i64 %.us-phi55 to i32
  br label %.preheader1268.i

.preheader1268.i:                                 ; preds = %.preheader1268.loopexit.i, %.preheader1277.i
  %.1783.lcssa.i = phi i32 [ %.0782.lcssa.i, %.preheader1277.i ], [ %i.acm, %.preheader1268.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader1277.i ], [ %.us-phi54, %.preheader1268.loopexit.i ] ; 3 uses
  %i.acn = or disjoint i32 %.1783.lcssa.i, 3
  %i.aco = icmp slt i32 %i.acn, %3
  br i1 %i.aco, label %.lr.ph1385.i, label %.preheader1262.i

.lr.ph1385.i:                                     ; preds = %.preheader1268.i
  %i.acp = sext i32 %4 to i64
  %i.acq = mul i64 %i.n, %i.acp
  %i.acr = icmp sgt i32 %5, 15
  %.idx869.i = shl i64 %i.n, 6
  %i.acs = icmp sgt i32 %5, 7
  %.idx868.i = shl i64 %i.n, 5
  %i.act = icmp sgt i32 %5, 3
  %.idx867.i = shl i64 %i.n, 4
  %i.acu = sext i32 %2 to i64                     ; 2 uses
  %i.acv = icmp sgt i32 %5, 1
  %.idx866.i = shl i64 %i.n, 3
  %i.acw = and i32 %5, -2
  %i.acx = zext i32 %.1783.lcssa.i to i64         ; 4 uses
  %i.acy = sext i32 %3 to i64
  %i.acz = sext i32 %i.e to i64
  %invariant.op1638.i = add nsw i64 %i.acy, -3    ; 2 uses
  %i.ada = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.adb = icmp eq i32 %i.ada, 1
  %i.adc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.adb, label %.split.i.us.preheader, label %.loopexit1264.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph1385.i
  %xtraiter260 = and i32 %5, 1
  %lcmp.mod261.not = icmp eq i32 %xtraiter260, 0
  br label %.split.i.us

.loopexit1264.i.preheader:                        ; preds = %.lr.ph1385.i
  %i.add = add nuw nsw i64 %i.acx, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op1638.i, i64 %i.add)
  %i.ade = xor i64 %i.acx, -1
  %i.adf = add nsw i64 %smax, %i.ade
  %i.adg = and i64 %i.adf, -4
  %i.adh = add nuw i64 %i.adg, %i.acx
  %i.adi = add nuw i64 %i.adh, 4
  br label %.preheader1262.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit1264.i.us
  %indvars.iv1533.i.us = phi i64 [ %indvars.iv.next1534.i.us, %.loopexit1264.i.us ], [ %i.acx, %.split.i.us.preheader ] ; 3 uses
  %.201384.i.us = phi ptr [ %.29.i.us, %.loopexit1264.i.us ], [ %.10.lcssa.i, %.split.i.us.preheader ] ; 9 uses
  %i.adj = load ptr, ptr %0, align 8, !tbaa !18
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.acq
  %i.adl = add nsw i64 %indvars.iv1533.i.us, %i.acu ; 4 uses
  %i.adm = mul nsw i64 %i.adl, %i.acz
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.adm ; 5 uses
  switch i32 %i.adc, label %.loopexit1264.i.us [
    i32 4, label %bb.q
    i32 3, label %bb.p
    i32 2, label %bb.o
    i32 0, label %bb.n
  ]

bb.n:                                             ; preds = %.split.i.us
  %i.ado = load ptr, ptr %6, align 8, !tbaa !18
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.acu
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv1533.i.us
  %i.adr = load <4 x float>, ptr %i.adq, align 16, !tbaa !116 ; 5 uses
  br i1 %i.acv, label %.lr.ph1374.i.us, label %.preheader1263.i.us

.lr.ph1374.i.us:                                  ; preds = %bb.n, %.lr.ph1374.i.us
  %.271373.i.us = phi ptr [ %i.ael, %.lr.ph1374.i.us ], [ %.201384.i.us, %bb.n ] ; 2 uses
  %.68321372.i.us = phi ptr [ %i.aem, %.lr.ph1374.i.us ], [ %i.adn, %bb.n ] ; 3 uses
  %.08371371.i.us = phi i32 [ %i.aen, %.lr.ph1374.i.us ], [ 0, %bb.n ]
  %i.ads = load <4 x float>, ptr %.68321372.i.us, align 1, !tbaa !116
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.68321372.i.us, i64 %i.n
  %i.adu = load <4 x float>, ptr %i.adt, align 1, !tbaa !116
  %i.adv = fmul fast <4 x float> %i.ads, %i.adr   ; 2 uses
  %i.adw = fmul fast <4 x float> %i.adu, %i.adr   ; 2 uses
  %i.adx = shufflevector <4 x float> %i.adv, <4 x float> %i.adw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ady = shufflevector <4 x float> %i.adv, <4 x float> %i.adw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.adz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.adx)
  %i.aea = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ady)
  %i.aeb = fadd fast <4 x float> %i.adz, %i.adx
  %i.aec = fadd fast <4 x float> %i.aea, %i.ady
  %i.aed = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeb)
  %i.aee = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aec)
  %i.aef = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aed, <4 x i32> %i.aee)
  %i.aeg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aef, <8 x i16> splat (i16 -127))
  %i.aeh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aeg, <8 x i16> splat (i16 127))
  %i.aei = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aeh, <8 x i16> poison)
  %i.aej = bitcast <16 x i8> %i.aei to <2 x i64>
  %i.aek = extractelement <2 x i64> %i.aej, i64 0
  store i64 %i.aek, ptr %.271373.i.us, align 8, !tbaa !975
  %i.ael = getelementptr inbounds nuw i8, ptr %.271373.i.us, i64 8 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.68321372.i.us, i64 %.idx866.i ; 2 uses
  %i.aen = add nuw nsw i32 %.08371371.i.us, 2     ; 2 uses
  %i.aeo = or disjoint i32 %i.aen, 1
  %i.aep = icmp slt i32 %i.aeo, %5
  br i1 %i.aep, label %.lr.ph1374.i.us, label %.preheader1263.i.us, !llvm.loop !1113

.preheader1263.i.us:                              ; preds = %.lr.ph1374.i.us, %bb.n
  %.0837.lcssa.i.us = phi i32 [ 0, %bb.n ], [ %i.acw, %.lr.ph1374.i.us ] ; 4 uses
  %.6832.lcssa.i.us = phi ptr [ %i.adn, %bb.n ], [ %i.aem, %.lr.ph1374.i.us ] ; 3 uses
  %.27.lcssa.i.us = phi ptr [ %.201384.i.us, %bb.n ], [ %i.ael, %.lr.ph1374.i.us ] ; 4 uses
  %i.aeq = icmp slt i32 %.0837.lcssa.i.us, %5
  br i1 %i.aeq, label %.lr.ph1381.i.us.preheader, label %.loopexit1264.i.us

.lr.ph1381.i.us.preheader:                        ; preds = %.preheader1263.i.us
  %.neg275 = or disjoint i32 %.0837.lcssa.i.us, 1
  br i1 %lcmp.mod261.not, label %.lr.ph1381.i.us.prol.loopexit, label %.lr.ph1381.i.us.prol

.lr.ph1381.i.us.prol:                             ; preds = %.lr.ph1381.i.us.preheader
  %i.aer = load <4 x float>, ptr %.6832.lcssa.i.us, align 1, !tbaa !116
  %i.aes = fmul fast <4 x float> %i.aer, %i.adr   ; 2 uses
  %i.aet = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aes)
  %i.aeu = fadd fast <4 x float> %i.aet, %i.aes
  %i.aev = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeu) ; 2 uses
  %i.aew = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aev, <4 x i32> %i.aev)
  %i.aex = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aew, <8 x i16> splat (i16 -127))
  %i.aey = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aex, <8 x i16> splat (i16 127))
  %i.aez = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aey, <8 x i16> poison)
  %i.afa = bitcast <16 x i8> %i.aez to <4 x i32>
  %i.afb = extractelement <4 x i32> %i.afa, i64 0
  store i32 %i.afb, ptr %.27.lcssa.i.us, align 4, !tbaa !45
  %i.afc = getelementptr inbounds nuw i8, ptr %.27.lcssa.i.us, i64 4 ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.6832.lcssa.i.us, i64 %i.n
  %i.afe = or disjoint i32 %.0837.lcssa.i.us, 1
  br label %.lr.ph1381.i.us.prol.loopexit

.lr.ph1381.i.us.prol.loopexit:                    ; preds = %.lr.ph1381.i.us.prol, %.lr.ph1381.i.us.preheader
  %.lcssa236.unr = phi ptr [ poison, %.lr.ph1381.i.us.preheader ], [ %i.afc, %.lr.ph1381.i.us.prol ]
  %.281380.i.us.unr = phi ptr [ %.27.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.afc, %.lr.ph1381.i.us.prol ]
  %.78331379.i.us.unr = phi ptr [ %.6832.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.afd, %.lr.ph1381.i.us.prol ]
  %.18381378.i.us.unr = phi i32 [ %.0837.lcssa.i.us, %.lr.ph1381.i.us.preheader ], [ %i.afe, %.lr.ph1381.i.us.prol ]
  %i.aff = icmp eq i32 %5, %.neg275
  br i1 %i.aff, label %.loopexit1264.i.us, label %.lr.ph1381.i.us

.lr.ph1381.i.us:                                  ; preds = %.lr.ph1381.i.us.prol.loopexit, %.lr.ph1381.i.us
  %.281380.i.us = phi ptr [ %i.age, %.lr.ph1381.i.us ], [ %.281380.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ] ; 3 uses
  %.78331379.i.us = phi ptr [ %i.agf, %.lr.ph1381.i.us ], [ %.78331379.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ] ; 2 uses
  %.18381378.i.us = phi i32 [ %i.agg, %.lr.ph1381.i.us ], [ %.18381378.i.us.unr, %.lr.ph1381.i.us.prol.loopexit ]
  %i.afg = load <4 x float>, ptr %.78331379.i.us, align 1, !tbaa !116
  %i.afh = fmul fast <4 x float> %i.afg, %i.adr   ; 2 uses
  %i.afi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afh)
  %i.afj = fadd fast <4 x float> %i.afi, %i.afh
  %i.afk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afj) ; 2 uses
  %i.afl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.afk, <4 x i32> %i.afk)
  %i.afm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afl, <8 x i16> splat (i16 -127))
  %i.afn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afm, <8 x i16> splat (i16 127))
  %i.afo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.afn, <8 x i16> poison)
  %i.afp = bitcast <16 x i8> %i.afo to <4 x i32>
  %i.afq = extractelement <4 x i32> %i.afp, i64 0
  store i32 %i.afq, ptr %.281380.i.us, align 4, !tbaa !45
  %i.afr = getelementptr inbounds nuw i8, ptr %.281380.i.us, i64 4
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.78331379.i.us, i64 %i.n ; 2 uses
  %i.aft = load <4 x float>, ptr %i.afs, align 1, !tbaa !116
  %i.afu = fmul fast <4 x float> %i.aft, %i.adr   ; 2 uses
  %i.afv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.afu)
  %i.afw = fadd fast <4 x float> %i.afv, %i.afu
  %i.afx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afw) ; 2 uses
  %i.afy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.afx, <4 x i32> %i.afx)
  %i.afz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.afy, <8 x i16> splat (i16 -127))
  %i.aga = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.afz, <8 x i16> splat (i16 127))
  %i.agb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aga, <8 x i16> poison)
  %i.agc = bitcast <16 x i8> %i.agb to <4 x i32>
  %i.agd = extractelement <4 x i32> %i.agc, i64 0
  store i32 %i.agd, ptr %i.afr, align 4, !tbaa !45
  %i.age = getelementptr inbounds nuw i8, ptr %.281380.i.us, i64 8 ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.n
  %i.agg = add nuw nsw i32 %.18381378.i.us, 2     ; 2 uses
  %exitcond1532.not.i.us.1 = icmp eq i32 %i.agg, %5
  br i1 %exitcond1532.not.i.us.1, label %.loopexit1264.i.us, label %.lr.ph1381.i.us, !llvm.loop !1114

bb.o:                                             ; preds = %.split.i.us
  %i.agh = load ptr, ptr %6, align 8, !tbaa !18
  %i.agi = getelementptr [4 x i8], ptr %i.agh, i64 %i.adl ; 4 uses
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !68
  %i.agk = insertelement <4 x float> poison, float %i.agj, i64 0
  %i.agl = shufflevector <4 x float> %i.agk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agm = getelementptr i8, ptr %i.agi, i64 4
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !68
  %i.ago = insertelement <4 x float> poison, float %i.agn, i64 0
  %i.agp = shufflevector <4 x float> %i.ago, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agq = getelementptr i8, ptr %i.agi, i64 8
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !68
  %i.ags = insertelement <4 x float> poison, float %i.agr, i64 0
  %i.agt = shufflevector <4 x float> %i.ags, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agu = getelementptr i8, ptr %i.agi, i64 12
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !68
  %i.agw = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.agx = shufflevector <4 x float> %i.agw, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.act, label %.lr.ph1368.i.us, label %.loopexit1264.i.us

.lr.ph1368.i.us:                                  ; preds = %bb.o, %.lr.ph1368.i.us
  %.251367.i.us = phi ptr [ %i.aig, %.lr.ph1368.i.us ], [ %.201384.i.us, %bb.o ] ; 2 uses
  %.48301366.i.us = phi ptr [ %i.aih, %.lr.ph1368.i.us ], [ %i.adn, %bb.o ] ; 5 uses
  %.08361365.i.us = phi i32 [ %i.aii, %.lr.ph1368.i.us ], [ 0, %bb.o ]
  %i.agy = load <4 x float>, ptr %.48301366.i.us, align 16, !tbaa !116
  %i.agz = getelementptr inbounds nuw i8, ptr %.48301366.i.us, i64 16
  %i.aha = load <4 x float>, ptr %i.agz, align 16, !tbaa !116
  %i.ahb = getelementptr inbounds nuw i8, ptr %.48301366.i.us, i64 32
  %i.ahc = load <4 x float>, ptr %i.ahb, align 16, !tbaa !116
  %i.ahd = getelementptr inbounds nuw i8, ptr %.48301366.i.us, i64 48
  %i.ahe = load <4 x float>, ptr %i.ahd, align 16, !tbaa !116
  %i.ahf = fmul fast <4 x float> %i.agy, %i.agl   ; 2 uses
  %i.ahg = fmul fast <4 x float> %i.aha, %i.agp   ; 2 uses
  %i.ahh = fmul fast <4 x float> %i.ahc, %i.agt   ; 2 uses
  %i.ahi = fmul fast <4 x float> %i.ahe, %i.agx   ; 2 uses
  %i.ahj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ahf)
  %i.ahk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ahg)
  %i.ahl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ahh)
  %i.ahm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ahi)
  %i.ahn = fadd fast <4 x float> %i.ahj, %i.ahf
  %i.aho = fadd fast <4 x float> %i.ahk, %i.ahg
  %i.ahp = fadd fast <4 x float> %i.ahl, %i.ahh
  %i.ahq = fadd fast <4 x float> %i.ahm, %i.ahi
  %i.ahr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahn)
  %i.ahs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aho)
  %i.aht = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahp)
  %i.ahu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahq)
  %i.ahv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ahr, <4 x i32> %i.ahs)
  %i.ahw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aht, <4 x i32> %i.ahu)
  %i.ahx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahv, <8 x i16> splat (i16 -127))
  %i.ahy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ahx, <8 x i16> splat (i16 127))
  %i.ahz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahw, <8 x i16> splat (i16 -127))
  %i.aia = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ahz, <8 x i16> splat (i16 127))
  %i.aib = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ahy, <8 x i16> %i.aia)
  %i.aic = bitcast <16 x i8> %i.aib to <8 x i16>
  %i.aid = shufflevector <8 x i16> %i.aic, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.aie = bitcast <8 x i16> %i.aid to <4 x i32>
  %i.aif = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aif, ptr %.251367.i.us, align 16, !tbaa !116
  %i.aig = getelementptr inbounds nuw i8, ptr %.251367.i.us, i64 16 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.48301366.i.us, i64 %.idx867.i
  %i.aii = add nuw nsw i32 %.08361365.i.us, 4     ; 2 uses
  %i.aij = or disjoint i32 %i.aii, 3
  %i.aik = icmp slt i32 %i.aij, %5
  br i1 %i.aik, label %.lr.ph1368.i.us, label %.loopexit1264.i.us, !llvm.loop !1115

bb.p:                                             ; preds = %.split.i.us
  %i.ail = load ptr, ptr %6, align 8, !tbaa !18
  %i.aim = getelementptr [4 x i8], ptr %i.ail, i64 %i.adl ; 4 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !68
  %i.aio = insertelement <8 x float> poison, float %i.ain, i64 0
  %i.aip = shufflevector <8 x float> %i.aio, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_9
begin_hunk_10_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.gr = shufflevector <8 x float> %i.go, <8 x float> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = fmul fast <16 x float> %i.gr, %i.am     ; 2 uses
  %i.gt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.gs)
  %i.gu = fadd fast <16 x float> %i.gt, %i.gs
  %i.gv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.gv, <16 x i8> zeroinitializer, i16 -1)
  %i.gx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.gw, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.gx, ptr %i.gm, align 16, !tbaa !116
  %i.gy = getelementptr inbounds nuw i8, ptr %.5649.i.us, i64 32 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.4443648.i.us, i64 64
  %i.ha = add nuw nsw i32 %.1455647.i.us, 2       ; 2 uses
  %exitcond853.not.i.us.1 = icmp eq i32 %i.ha, %5
  br i1 %exitcond853.not.i.us.1, label %.loopexit618.i.us, label %.lr.ph650.i.us, !llvm.loop !1138

.preheader628.i.us:                               ; preds = %.split.i.us
  br i1 %i.t, label %.lr.ph.i.us, label %.preheader626.i.us

.lr.ph.i.us:                                      ; preds = %.preheader628.i.us, %.lr.ph.i.us
  %.1631.i.us = phi ptr [ %i.ht, %.lr.ph.i.us ], [ %.0679.i.us, %.preheader628.i.us ] ; 3 uses
  %.0439630.i.us = phi ptr [ %i.hu, %.lr.ph.i.us ], [ %i.ai, %.preheader628.i.us ] ; 3 uses
  %.0452629.i.us = phi i32 [ %i.hv, %.lr.ph.i.us ], [ 0, %.preheader628.i.us ]
  %i.hb = load <16 x float>, ptr %.0439630.i.us, align 64, !tbaa !116
  %i.hc = getelementptr inbounds nuw i8, ptr %.0439630.i.us, i64 64
  %i.hd = load <16 x float>, ptr %i.hc, align 64, !tbaa !116
  %i.he = fmul fast <16 x float> %i.hb, %i.am     ; 2 uses
  %i.hf = fmul fast <16 x float> %i.hd, %i.am     ; 2 uses
  %i.hg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.he)
  %i.hh = fadd fast <16 x float> %i.hg, %i.he
  %i.hi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hj = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hi, <16 x i8> zeroinitializer, i16 -1)
  %i.hk = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hj, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.hl = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hf)
  %i.hm = fadd fast <16 x float> %i.hl, %i.hf
  %i.hn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ho = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hn, <16 x i8> zeroinitializer, i16 -1)
  %i.hp = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ho, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.hq = shufflevector <16 x i8> %i.hk, <16 x i8> %i.hp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.hr = shufflevector <16 x i8> %i.hk, <16 x i8> %i.hp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.hq, ptr %.1631.i.us, align 16, !tbaa !116
  %i.hs = getelementptr inbounds nuw i8, ptr %.1631.i.us, i64 16
  store <16 x i8> %i.hr, ptr %i.hs, align 16, !tbaa !116
  %i.ht = getelementptr inbounds nuw i8, ptr %.1631.i.us, i64 32 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0439630.i.us, i64 128 ; 2 uses
  %i.hv = add nuw nsw i32 %.0452629.i.us, 2       ; 2 uses
  %i.hw = or disjoint i32 %i.hv, 1
  %i.hx = icmp slt i32 %i.hw, %5
  br i1 %i.hx, label %.lr.ph.i.us, label %.preheader626.i.us, !llvm.loop !1139

.preheader626.i.us:                               ; preds = %.lr.ph.i.us, %.preheader628.i.us
  %.0452.lcssa.i.us = phi i32 [ 0, %.preheader628.i.us ], [ %i.y, %.lr.ph.i.us ] ; 4 uses
  %.0439.lcssa.i.us = phi ptr [ %i.ai, %.preheader628.i.us ], [ %i.hu, %.lr.ph.i.us ] ; 3 uses
  %.1.lcssa.i.us = phi ptr [ %.0679.i.us, %.preheader628.i.us ], [ %i.ht, %.lr.ph.i.us ] ; 4 uses
  %i.hy = icmp slt i32 %.0452.lcssa.i.us, %5
  br i1 %i.hy, label %.lr.ph637.i.us.preheader, label %.loopexit618.i.us

.lr.ph637.i.us.preheader:                         ; preds = %.preheader626.i.us
  %.neg329 = or disjoint i32 %.0452.lcssa.i.us, 1
  br i1 %lcmp.mod315.not, label %.lr.ph637.i.us.prol.loopexit, label %.lr.ph637.i.us.prol

.lr.ph637.i.us.prol:                              ; preds = %.lr.ph637.i.us.preheader
  %i.hz = load <16 x float>, ptr %.0439.lcssa.i.us, align 64, !tbaa !116
  %i.ia = fmul fast <16 x float> %i.hz, %i.am     ; 2 uses
  %i.ib = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ia)
  %i.ic = fadd fast <16 x float> %i.ib, %i.ia
  %i.id = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ic, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ie = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.id, <16 x i8> zeroinitializer, i16 -1)
  %i.if = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ie, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.if, ptr %.1.lcssa.i.us, align 16, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.us, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0439.lcssa.i.us, i64 64
  %i.ii = or disjoint i32 %.0452.lcssa.i.us, 1
  br label %.lr.ph637.i.us.prol.loopexit

.lr.ph637.i.us.prol.loopexit:                     ; preds = %.lr.ph637.i.us.prol, %.lr.ph637.i.us.preheader
  %.lcssa311.unr = phi ptr [ poison, %.lr.ph637.i.us.preheader ], [ %i.ig, %.lr.ph637.i.us.prol ]
  %.2636.i.us.unr = phi ptr [ %.1.lcssa.i.us, %.lr.ph637.i.us.preheader ], [ %i.ig, %.lr.ph637.i.us.prol ]
  %.1440635.i.us.unr = phi ptr [ %.0439.lcssa.i.us, %.lr.ph637.i.us.preheader ], [ %i.ih, %.lr.ph637.i.us.prol ]
  %.1453634.i.us.unr = phi i32 [ %.0452.lcssa.i.us, %.lr.ph637.i.us.preheader ], [ %i.ii, %.lr.ph637.i.us.prol ]
  %i.ij = icmp eq i32 %5, %.neg329
  br i1 %i.ij, label %.loopexit618.i.us, label %.lr.ph637.i.us

.lr.ph637.i.us:                                   ; preds = %.lr.ph637.i.us.prol.loopexit, %.lr.ph637.i.us
  %.2636.i.us = phi ptr [ %i.ja, %.lr.ph637.i.us ], [ %.2636.i.us.unr, %.lr.ph637.i.us.prol.loopexit ] ; 3 uses
  %.1440635.i.us = phi ptr [ %i.jb, %.lr.ph637.i.us ], [ %.1440635.i.us.unr, %.lr.ph637.i.us.prol.loopexit ] ; 3 uses
  %.1453634.i.us = phi i32 [ %i.jc, %.lr.ph637.i.us ], [ %.1453634.i.us.unr, %.lr.ph637.i.us.prol.loopexit ]
  %i.ik = load <16 x float>, ptr %.1440635.i.us, align 64, !tbaa !116
  %i.il = fmul fast <16 x float> %i.ik, %i.am     ; 2 uses
  %i.im = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.il)
  %i.in = fadd fast <16 x float> %i.im, %i.il
  %i.io = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.in, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ip = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.io, <16 x i8> zeroinitializer, i16 -1)
  %i.iq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ip, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.iq, ptr %.2636.i.us, align 16, !tbaa !116
  %i.ir = getelementptr inbounds nuw i8, ptr %.2636.i.us, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %.1440635.i.us, i64 64
  %i.it = load <16 x float>, ptr %i.is, align 64, !tbaa !116
  %i.iu = fmul fast <16 x float> %i.it, %i.am     ; 2 uses
  %i.iv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.iu)
  %i.iw = fadd fast <16 x float> %i.iv, %i.iu
  %i.ix = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.iw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.iy = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ix, <16 x i8> zeroinitializer, i16 -1)
  %i.iz = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.iy, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.iz, ptr %i.ir, align 16, !tbaa !116
  %i.ja = getelementptr inbounds nuw i8, ptr %.2636.i.us, i64 32 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1440635.i.us, i64 128
  %i.jc = add nuw nsw i32 %.1453634.i.us, 2       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.jc, %5
  br i1 %exitcond.not.i.us.1, label %.loopexit618.i.us, label %.lr.ph637.i.us, !llvm.loop !1140

.loopexit618.i.us:                                ; preds = %.lr.ph676.i.us.prol.loopexit, %.lr.ph676.i.us, %.lr.ph663.i.us, %.lr.ph650.i.us.prol.loopexit, %.lr.ph650.i.us, %.lr.ph637.i.us.prol.loopexit, %.lr.ph637.i.us, %.preheader626.i.us, %.preheader623.i.us, %.preheader620.i.us, %.preheader617.i.us, %.split.i.us
  %.12.i.us = phi ptr [ %.0679.i.us, %.split.i.us ], [ %.10.lcssa.i.us, %.preheader617.i.us ], [ %i.el, %.lr.ph663.i.us ], [ %i.ja, %.lr.ph637.i.us ], [ %.7.lcssa.i.us, %.preheader620.i.us ], [ %i.gy, %.lr.ph650.i.us ], [ %.4.lcssa.i.us, %.preheader623.i.us ], [ %.1.lcssa.i.us, %.preheader626.i.us ], [ %.lcssa311.unr, %.lr.ph637.i.us.prol.loopexit ], [ %.lcssa308.unr, %.lr.ph650.i.us.prol.loopexit ], [ %.lcssa302.unr, %.lr.ph676.i.us.prol.loopexit ], [ %i.cm, %.lr.ph676.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.jd = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.je = icmp samesign ult i64 %i.jd, %i.z
  br i1 %i.je, label %.split.i.us, label %.preheader616.loopexit.i, !llvm.loop !1141

.preheader616.loopexit.i:                         ; preds = %.loopexit618.i.us, %.loopexit618.i.preheader
  %.us-phi = phi ptr [ %i.o, %.loopexit618.i.preheader ], [ %.12.i.us, %.loopexit618.i.us ]
  %.us-phi47 = phi i64 [ %i.ad, %.loopexit618.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit618.i.us ]
  %i.jf = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader616.i

.preheader616.i:                                  ; preds = %.preheader616.loopexit.i, %bb.j
  %.0434.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.jf, %.preheader616.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.o, %bb.j ], [ %.us-phi, %.preheader616.loopexit.i ] ; 2 uses
  %i.jg = or disjoint i32 %.0434.lcssa.i, 7
  %i.jh = icmp slt i32 %i.jg, %3
  br i1 %i.jh, label %.lr.ph723.i, label %.preheader606.i

.lr.ph723.i:                                      ; preds = %.preheader616.i
  %i.ji = mul nsw i32 %i.e, %4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = sext i32 %2 to i64                      ; 2 uses
  %i.jl = icmp sgt i32 %5, 1                      ; 3 uses
  %.idx491.i = shl i64 %i.n, 4                    ; 4 uses
  %i.jm = trunc i64 %i.n to i32
  %i.jn = insertelement <8 x i32> poison, i32 %i.jm, i64 0
  %i.jo = shufflevector <8 x i32> %i.jn, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jp = mul <8 x i32> %i.jo, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.jq = and i32 %5, -2                          ; 3 uses
  %i.jr = zext nneg i32 %.0434.lcssa.i to i64
  %i.js = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.js, -7
  %xtraiter316 = and i32 %5, 1
  %lcmp.mod317.not = icmp eq i32 %xtraiter316, 0
  %xtraiter318 = and i32 %5, 1
  %lcmp.mod319.not = icmp eq i32 %xtraiter318, 0
  %xtraiter320 = and i32 %5, 1
  %lcmp.mod321.not = icmp eq i32 %xtraiter320, 0
  br label %bb.k

.preheader606.loopexit.i:                         ; preds = %.loopexit608.i
  %i.jt = trunc nuw nsw i64 %indvars.iv.next861.i to i32
  br label %.preheader606.i

.preheader606.i:                                  ; preds = %.preheader606.loopexit.i, %.preheader616.i
  %.1435.lcssa.i = phi i32 [ %.0434.lcssa.i, %.preheader616.i ], [ %i.jt, %.preheader606.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader616.i ], [ %.22.i, %.preheader606.loopexit.i ] ; 4 uses
  %i.ju = or disjoint i32 %.1435.lcssa.i, 3
  %i.jv = icmp slt i32 %i.ju, %3
  br i1 %i.jv, label %.lr.ph753.i, label %.preheader599.i

.lr.ph753.i:                                      ; preds = %.preheader606.i
  %i.jw = load ptr, ptr %0, align 8, !tbaa !18
  %i.jx = mul nsw i32 %i.e, %4
  %i.jy = sext i32 %i.jx to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.jw, i64 %i.jy ; 2 uses
  %i.jz = load ptr, ptr %6, align 8, !tbaa !18
  %i.ka = sext i32 %2 to i64                      ; 3 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka ; 2 uses
  %i.kc = icmp sgt i32 %5, 1                      ; 2 uses
  %i.kd = trunc i64 %i.n to i32
  %i.ke = insertelement <4 x i32> poison, i32 %i.kd, i64 0
  %i.kf = shufflevector <4 x i32> %i.ke, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kg = mul <4 x i32> %i.kf, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.kh = and i32 %5, -2                          ; 2 uses
  %i.ki = zext i32 %.1435.lcssa.i to i64          ; 5 uses
  %i.kj = sext i32 %3 to i64
  %invariant.op942.i = add nsw i64 %i.kj, -3      ; 3 uses
  switch i32 %i.e, label %.loopexit601.i.preheader [
    i32 4, label %.preheader605.i.us.preheader
    i32 1, label %.preheader602.i.us.preheader
  ]

.preheader602.i.us.preheader:                     ; preds = %.lr.ph753.i
  %xtraiter322 = and i32 %5, 1
  %lcmp.mod323.not = icmp eq i32 %xtraiter322, 0
  br label %.preheader602.i.us

.preheader605.i.us.preheader:                     ; preds = %.lr.ph753.i
  %xtraiter324 = and i32 %5, 1
  %lcmp.mod325.not = icmp eq i32 %xtraiter324, 0
  br label %.preheader605.i.us

.loopexit601.i.preheader:                         ; preds = %.lr.ph753.i
  %i.kk = add nuw nsw i64 %i.ki, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op942.i, i64 %i.kk)
  %i.kl = xor i64 %i.ki, -1
  %i.km = add nsw i64 %smax, %i.kl
  %i.kn = and i64 %i.km, -4
  %i.ko = add nuw i64 %i.kn, %i.ki
  %i.kp = add nuw i64 %i.ko, 4
  br label %.preheader599.loopexit.i

.preheader605.i.us:                               ; preds = %.preheader605.i.us.preheader, %.loopexit601.i.us
  %indvars.iv865.i.us = phi i64 [ %indvars.iv.next866.i.us, %.loopexit601.i.us ], [ %i.ki, %.preheader605.i.us.preheader ] ; 3 uses
  %.23752.i.us = phi ptr [ %.29.i.us, %.loopexit601.i.us ], [ %.13.lcssa.i, %.preheader605.i.us.preheader ] ; 2 uses
  %i.kq = add nsw i64 %indvars.iv865.i.us, %i.ka
  %i.kr = mul i64 %i.kq, %i.n
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.kr ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv865.i.us
  %i.kt = load <4 x float>, ptr %i.ks, align 16, !tbaa !116 ; 5 uses
  br i1 %i.kc, label %.lr.ph729.i.us, label %.preheader603.i.us

.lr.ph729.i.us:                                   ; preds = %.preheader605.i.us, %.lr.ph729.i.us
  %.24728.i.us = phi ptr [ %i.ln, %.lr.ph729.i.us ], [ %.23752.i.us, %.preheader605.i.us ] ; 2 uses
  %.0477727.i.us = phi ptr [ %i.lo, %.lr.ph729.i.us ], [ %gep.i.us, %.preheader605.i.us ] ; 3 uses
  %.0482726.i.us = phi i32 [ %i.lp, %.lr.ph729.i.us ], [ 0, %.preheader605.i.us ]
  %i.ku = load <4 x float>, ptr %.0477727.i.us, align 16, !tbaa !116
  %i.kv = getelementptr inbounds nuw i8, ptr %.0477727.i.us, i64 16
  %i.kw = load <4 x float>, ptr %i.kv, align 16, !tbaa !116
  %i.kx = fmul fast <4 x float> %i.ku, %i.kt      ; 2 uses
  %i.ky = fmul fast <4 x float> %i.kw, %i.kt      ; 2 uses
  %i.kz = shufflevector <4 x float> %i.kx, <4 x float> %i.ky, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.la = shufflevector <4 x float> %i.kx, <4 x float> %i.ky, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.lb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kz)
  %i.lc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.la)
  %i.ld = fadd fast <4 x float> %i.lb, %i.kz
  %i.le = fadd fast <4 x float> %i.lc, %i.la
  %i.lf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ld)
  %i.lg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.le)
  %i.lh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lf, <4 x i32> %i.lg)
  %i.li = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lh, <8 x i16> splat (i16 -127))
  %i.lj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.li, <8 x i16> splat (i16 127))
  %i.lk = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lj, <8 x i16> poison)
  %i.ll = bitcast <16 x i8> %i.lk to <2 x i64>
  %i.lm = extractelement <2 x i64> %i.ll, i64 0
  store i64 %i.lm, ptr %.24728.i.us, align 8, !tbaa !975
  %i.ln = getelementptr inbounds nuw i8, ptr %.24728.i.us, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.0477727.i.us, i64 32 ; 2 uses
  %i.lp = add nuw nsw i32 %.0482726.i.us, 2       ; 2 uses
  %i.lq = or disjoint i32 %i.lp, 1
  %i.lr = icmp slt i32 %i.lq, %5
  br i1 %i.lr, label %.lr.ph729.i.us, label %.preheader603.i.us, !llvm.loop !1142

.preheader603.i.us:                               ; preds = %.lr.ph729.i.us, %.preheader605.i.us
  %.0482.lcssa.i.us = phi i32 [ 0, %.preheader605.i.us ], [ %i.kh, %.lr.ph729.i.us ] ; 4 uses
  %.0477.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader605.i.us ], [ %i.lo, %.lr.ph729.i.us ] ; 3 uses
  %.24.lcssa.i.us = phi ptr [ %.23752.i.us, %.preheader605.i.us ], [ %i.ln, %.lr.ph729.i.us ] ; 4 uses
  %i.ls = icmp slt i32 %.0482.lcssa.i.us, %5
  br i1 %i.ls, label %.lr.ph736.i.us.preheader, label %.loopexit601.i.us

.lr.ph736.i.us.preheader:                         ; preds = %.preheader603.i.us
  %.neg334 = or disjoint i32 %.0482.lcssa.i.us, 1
  br i1 %lcmp.mod325.not, label %.lr.ph736.i.us.prol.loopexit, label %.lr.ph736.i.us.prol

.lr.ph736.i.us.prol:                              ; preds = %.lr.ph736.i.us.preheader
  %i.lt = load <4 x float>, ptr %.0477.lcssa.i.us, align 16, !tbaa !116
  %i.lu = fmul fast <4 x float> %i.lt, %i.kt      ; 2 uses
  %i.lv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lu)
  %i.lw = fadd fast <4 x float> %i.lv, %i.lu
  %i.lx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lw) ; 2 uses
  %i.ly = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lx, <4 x i32> %i.lx)
  %i.lz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ly, <8 x i16> splat (i16 -127))
  %i.ma = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lz, <8 x i16> splat (i16 127))
  %i.mb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ma, <8 x i16> poison)
  %i.mc = bitcast <16 x i8> %i.mb to <4 x i32>
  %i.md = extractelement <4 x i32> %i.mc, i64 0
  store i32 %i.md, ptr %.24.lcssa.i.us, align 4, !tbaa !45
  %i.me = getelementptr inbounds nuw i8, ptr %.24.lcssa.i.us, i64 4 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0477.lcssa.i.us, i64 16
  %i.mg = or disjoint i32 %.0482.lcssa.i.us, 1
  br label %.lr.ph736.i.us.prol.loopexit

.lr.ph736.i.us.prol.loopexit:                     ; preds = %.lr.ph736.i.us.prol, %.lr.ph736.i.us.preheader
  %.lcssa281.unr = phi ptr [ poison, %.lr.ph736.i.us.preheader ], [ %i.me, %.lr.ph736.i.us.prol ]
  %.25735.i.us.unr = phi ptr [ %.24.lcssa.i.us, %.lr.ph736.i.us.preheader ], [ %i.me, %.lr.ph736.i.us.prol ]
  %.1478734.i.us.unr = phi ptr [ %.0477.lcssa.i.us, %.lr.ph736.i.us.preheader ], [ %i.mf, %.lr.ph736.i.us.prol ]
  %.1483733.i.us.unr = phi i32 [ %.0482.lcssa.i.us, %.lr.ph736.i.us.preheader ], [ %i.mg, %.lr.ph736.i.us.prol ]
  %i.mh = icmp eq i32 %5, %.neg334
  br i1 %i.mh, label %.loopexit601.i.us, label %.lr.ph736.i.us

.lr.ph736.i.us:                                   ; preds = %.lr.ph736.i.us.prol.loopexit, %.lr.ph736.i.us
  %.25735.i.us = phi ptr [ %i.ng, %.lr.ph736.i.us ], [ %.25735.i.us.unr, %.lr.ph736.i.us.prol.loopexit ] ; 3 uses
  %.1478734.i.us = phi ptr [ %i.nh, %.lr.ph736.i.us ], [ %.1478734.i.us.unr, %.lr.ph736.i.us.prol.loopexit ] ; 3 uses
  %.1483733.i.us = phi i32 [ %i.ni, %.lr.ph736.i.us ], [ %.1483733.i.us.unr, %.lr.ph736.i.us.prol.loopexit ]
  %i.mi = load <4 x float>, ptr %.1478734.i.us, align 16, !tbaa !116
  %i.mj = fmul fast <4 x float> %i.mi, %i.kt      ; 2 uses
  %i.mk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mj)
  %i.ml = fadd fast <4 x float> %i.mk, %i.mj
  %i.mm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ml) ; 2 uses
  %i.mn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mm, <4 x i32> %i.mm)
  %i.mo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mn, <8 x i16> splat (i16 -127))
  %i.mp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mo, <8 x i16> splat (i16 127))
  %i.mq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mp, <8 x i16> poison)
  %i.mr = bitcast <16 x i8> %i.mq to <4 x i32>
  %i.ms = extractelement <4 x i32> %i.mr, i64 0
  store i32 %i.ms, ptr %.25735.i.us, align 4, !tbaa !45
  %i.mt = getelementptr inbounds nuw i8, ptr %.25735.i.us, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.1478734.i.us, i64 16
  %i.mv = load <4 x float>, ptr %i.mu, align 16, !tbaa !116
  %i.mw = fmul fast <4 x float> %i.mv, %i.kt      ; 2 uses
  %i.mx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mw)
  %i.my = fadd fast <4 x float> %i.mx, %i.mw
  %i.mz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.my) ; 2 uses
  %i.na = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mz, <4 x i32> %i.mz)
  %i.nb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.na, <8 x i16> splat (i16 -127))
  %i.nc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nb, <8 x i16> splat (i16 127))
  %i.nd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nc, <8 x i16> poison)
  %i.ne = bitcast <16 x i8> %i.nd to <4 x i32>
  %i.nf = extractelement <4 x i32> %i.ne, i64 0
  store i32 %i.nf, ptr %i.mt, align 4, !tbaa !45
  %i.ng = getelementptr inbounds nuw i8, ptr %.25735.i.us, i64 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1478734.i.us, i64 32
  %i.ni = add nuw nsw i32 %.1483733.i.us, 2       ; 2 uses
  %exitcond863.not.i.us.1 = icmp eq i32 %i.ni, %5
  br i1 %exitcond863.not.i.us.1, label %.loopexit601.i.us, label %.lr.ph736.i.us, !llvm.loop !1143

.loopexit601.i.us:                                ; preds = %.lr.ph736.i.us.prol.loopexit, %.lr.ph736.i.us, %.preheader603.i.us
  %.29.i.us = phi ptr [ %.24.lcssa.i.us, %.preheader603.i.us ], [ %.lcssa281.unr, %.lr.ph736.i.us.prol.loopexit ], [ %i.ng, %.lr.ph736.i.us ] ; 2 uses
  %indvars.iv.next866.i.us = add nuw nsw i64 %indvars.iv865.i.us, 4 ; 3 uses
  %i.nj = icmp slt i64 %indvars.iv.next866.i.us, %invariant.op942.i
  br i1 %i.nj, label %.preheader605.i.us, label %.preheader599.loopexit.i, !llvm.loop !1144

.preheader602.i.us:                               ; preds = %.preheader602.i.us.preheader, %.loopexit601.i.us54
  %indvars.iv865.i.us51 = phi i64 [ %indvars.iv.next866.i.us56, %.loopexit601.i.us54 ], [ %i.ki, %.preheader602.i.us.preheader ] ; 3 uses
  %.23752.i.us52 = phi ptr [ %.29.i.us55, %.loopexit601.i.us54 ], [ %.13.lcssa.i, %.preheader602.i.us.preheader ] ; 2 uses
  %i.nk = add nsw i64 %indvars.iv865.i.us51, %i.ka
  %i.nl = mul i64 %i.nk, %i.n
  %gep.i.us53 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.nl ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv865.i.us51
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !116 ; 5 uses
  br i1 %i.kc, label %.lr.ph742.i.us, label %.preheader600.i.us

.lr.ph742.i.us:                                   ; preds = %.preheader602.i.us, %.lr.ph742.i.us
  %.27741.i.us = phi ptr [ %i.oh, %.lr.ph742.i.us ], [ %.23752.i.us52, %.preheader602.i.us ] ; 2 uses
  %.3480740.i.us = phi ptr [ %i.oi, %.lr.ph742.i.us ], [ %gep.i.us53, %.preheader602.i.us ] ; 3 uses
  %.0484739.i.us = phi i32 [ %i.oj, %.lr.ph742.i.us ], [ 0, %.preheader602.i.us ]
  %i.no = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.3480740.i.us, <4 x i32> %i.kg, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.np = getelementptr inbounds nuw i8, ptr %.3480740.i.us, i64 4
  %i.nq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.np, <4 x i32> %i.kg, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.nr = fmul fast <4 x float> %i.no, %i.nn      ; 2 uses
  %i.ns = fmul fast <4 x float> %i.nq, %i.nn      ; 2 uses
  %i.nt = shufflevector <4 x float> %i.nr, <4 x float> %i.ns, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.nu = shufflevector <4 x float> %i.nr, <4 x float> %i.ns, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.nv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nt)
  %i.nw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nu)
  %i.nx = fadd fast <4 x float> %i.nv, %i.nt
  %i.ny = fadd fast <4 x float> %i.nw, %i.nu
  %i.nz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nx)
  %i.oa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ny)
  %i.ob = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nz, <4 x i32> %i.oa)
  %i.oc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ob, <8 x i16> splat (i16 -127))
  %i.od = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.oc, <8 x i16> splat (i16 127))
  %i.oe = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.od, <8 x i16> poison)
  %i.of = bitcast <16 x i8> %i.oe to <2 x i64>
  %i.og = extractelement <2 x i64> %i.of, i64 0
  store i64 %i.og, ptr %.27741.i.us, align 8, !tbaa !975
  %i.oh = getelementptr inbounds nuw i8, ptr %.27741.i.us, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.3480740.i.us, i64 8 ; 2 uses
  %i.oj = add nuw nsw i32 %.0484739.i.us, 2       ; 2 uses
  %i.ok = or disjoint i32 %i.oj, 1
  %i.ol = icmp slt i32 %i.ok, %5
  br i1 %i.ol, label %.lr.ph742.i.us, label %.preheader600.i.us, !llvm.loop !1145

.preheader600.i.us:                               ; preds = %.lr.ph742.i.us, %.preheader602.i.us
  %.0484.lcssa.i.us = phi i32 [ 0, %.preheader602.i.us ], [ %i.kh, %.lr.ph742.i.us ] ; 4 uses
  %.3480.lcssa.i.us = phi ptr [ %gep.i.us53, %.preheader602.i.us ], [ %i.oi, %.lr.ph742.i.us ] ; 3 uses
  %.27.lcssa.i.us = phi ptr [ %.23752.i.us52, %.preheader602.i.us ], [ %i.oh, %.lr.ph742.i.us ] ; 4 uses
  %i.om = icmp slt i32 %.0484.lcssa.i.us, %5
  br i1 %i.om, label %.lr.ph749.i.us.preheader, label %.loopexit601.i.us54

.lr.ph749.i.us.preheader:                         ; preds = %.preheader600.i.us
  %.neg333 = or disjoint i32 %.0484.lcssa.i.us, 1
  br i1 %lcmp.mod323.not, label %.lr.ph749.i.us.prol.loopexit, label %.lr.ph749.i.us.prol

.lr.ph749.i.us.prol:                              ; preds = %.lr.ph749.i.us.preheader
  %i.on = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.3480.lcssa.i.us, <4 x i32> %i.kg, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.oo = fmul fast <4 x float> %i.on, %i.nn      ; 2 uses
  %i.op = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.oo)
  %i.oq = fadd fast <4 x float> %i.op, %i.oo
  %i.or = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oq) ; 2 uses
  %i.os = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.or, <4 x i32> %i.or)
  %i.ot = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.os, <8 x i16> splat (i16 -127))
  %i.ou = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ot, <8 x i16> splat (i16 127))
  %i.ov = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ou, <8 x i16> poison)
  %i.ow = bitcast <16 x i8> %i.ov to <4 x i32>
  %i.ox = extractelement <4 x i32> %i.ow, i64 0
  store i32 %i.ox, ptr %.27.lcssa.i.us, align 4, !tbaa !45
  %i.oy = getelementptr inbounds nuw i8, ptr %.27.lcssa.i.us, i64 4 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.3480.lcssa.i.us, i64 4
  %i.pa = or disjoint i32 %.0484.lcssa.i.us, 1
  br label %.lr.ph749.i.us.prol.loopexit

.lr.ph749.i.us.prol.loopexit:                     ; preds = %.lr.ph749.i.us.prol, %.lr.ph749.i.us.preheader
  %.lcssa285.unr = phi ptr [ poison, %.lr.ph749.i.us.preheader ], [ %i.oy, %.lr.ph749.i.us.prol ]
  %.28748.i.us.unr = phi ptr [ %.27.lcssa.i.us, %.lr.ph749.i.us.preheader ], [ %i.oy, %.lr.ph749.i.us.prol ]
  %.4481747.i.us.unr = phi ptr [ %.3480.lcssa.i.us, %.lr.ph749.i.us.preheader ], [ %i.oz, %.lr.ph749.i.us.prol ]
  %.1485746.i.us.unr = phi i32 [ %.0484.lcssa.i.us, %.lr.ph749.i.us.preheader ], [ %i.pa, %.lr.ph749.i.us.prol ]
  %i.pb = icmp eq i32 %5, %.neg333
  br i1 %i.pb, label %.loopexit601.i.us54, label %.lr.ph749.i.us

end_hunk_10
begin_hunk_11_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %exitcond479.not.1 = icmp eq i32 %i.nm, %5
  br i1 %exitcond479.not.1, label %.loopexit274.us, label %.lr.ph366.us, !llvm.loop !1326

.preheader273.us:                                 ; preds = %.lr.ph353.us, %.loopexit276.us
  %.2246.lcssa.us = phi ptr [ %.1245.us, %.loopexit276.us ], [ %i.mh, %.lr.ph353.us ] ; 8 uses
  %.0241.lcssa.us = phi ptr [ %i.lk, %.loopexit276.us ], [ %i.mi, %.lr.ph353.us ] ; 8 uses
  %.0239.lcssa.us = phi ptr [ %i.ll, %.loopexit276.us ], [ %i.mj, %.lr.ph353.us ] ; 8 uses
  %.0237.lcssa.us = phi ptr [ %i.lm, %.loopexit276.us ], [ %i.mk, %.lr.ph353.us ] ; 8 uses
  %.0235.lcssa.us = phi i32 [ 0, %.loopexit276.us ], [ %i.iq, %.lr.ph353.us ] ; 7 uses
  %.19.lcssa.us = phi ptr [ %.18.us, %.loopexit276.us ], [ %i.mg, %.lr.ph353.us ] ; 12 uses
  %i.nn = icmp slt i32 %.0235.lcssa.us, %5
  br i1 %i.nn, label %iter.check710, label %.loopexit274.us

iter.check710:                                    ; preds = %.preheader273.us
  %i.no = xor i32 %.0235.lcssa.us, -1
  %i.np = add i32 %5, %i.no                       ; 3 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 5 uses
  %min.iters.check683 = icmp ult i32 %i.np, 7
  br i1 %min.iters.check683, label %.lr.ph366.us.preheader, label %vector.memcheck656

vector.memcheck656:                               ; preds = %iter.check710
  %scevgep657 = getelementptr i8, ptr %.19.lcssa.us, i64 8
  %i.ns = xor i32 %.0235.lcssa.us, -1
  %i.nt = add i32 %5, %i.ns
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = shl nuw nsw i64 %i.nu, 3
  %scevgep658 = getelementptr i8, ptr %scevgep657, i64 %i.nv ; 4 uses
  %scevgep659 = getelementptr i8, ptr %.0237.lcssa.us, i64 2
  %i.nw = shl nuw nsw i64 %i.nu, 1                ; 4 uses
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.nw
  %scevgep661 = getelementptr i8, ptr %.0239.lcssa.us, i64 2
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.nw
  %scevgep663 = getelementptr i8, ptr %.0241.lcssa.us, i64 2
  %scevgep664 = getelementptr i8, ptr %scevgep663, i64 %i.nw
  %scevgep665 = getelementptr i8, ptr %.2246.lcssa.us, i64 2
  %scevgep666 = getelementptr i8, ptr %scevgep665, i64 %i.nw
  %bound0667 = icmp ult ptr %.19.lcssa.us, %scevgep660
  %bound1668 = icmp ult ptr %.0237.lcssa.us, %scevgep658
  %found.conflict669 = and i1 %bound0667, %bound1668
  %bound0670 = icmp ult ptr %.19.lcssa.us, %scevgep662
  %bound1671 = icmp ult ptr %.0239.lcssa.us, %scevgep658
  %found.conflict672 = and i1 %bound0670, %bound1671
  %conflict.rdx673 = or i1 %found.conflict669, %found.conflict672
  %bound0674 = icmp ult ptr %.19.lcssa.us, %scevgep664
  %bound1675 = icmp ult ptr %.0241.lcssa.us, %scevgep658
  %found.conflict676 = and i1 %bound0674, %bound1675
  %conflict.rdx677 = or i1 %conflict.rdx673, %found.conflict676
  %bound0678 = icmp ult ptr %.19.lcssa.us, %scevgep666
  %bound1679 = icmp ult ptr %.2246.lcssa.us, %scevgep658
  %found.conflict680 = and i1 %bound0678, %bound1679
  %conflict.rdx681 = or i1 %conflict.rdx677, %found.conflict680
  br i1 %conflict.rdx681, label %.lr.ph366.us.preheader, label %vector.main.loop.iter.check684

vector.main.loop.iter.check684:                   ; preds = %vector.memcheck656
  %min.iters.check685 = icmp ult i32 %i.np, 31
  br i1 %min.iters.check685, label %vec.epilog.ph714, label %vector.ph686

vector.ph686:                                     ; preds = %vector.main.loop.iter.check684
  %i.nx = and i64 %i.nr, 24
  %n.vec687 = and i64 %i.nr, 8589934560           ; 6 uses
  %i.ny = shl nuw nsw i64 %n.vec687, 3
  %i.nz = getelementptr i8, ptr %.19.lcssa.us, i64 %i.ny ; 2 uses
  %i.oa = trunc i64 %n.vec687 to i32
  %i.ob = add i32 %.0235.lcssa.us, %i.oa
  %i.oc = shl nuw nsw i64 %n.vec687, 1            ; 4 uses
  %i.od = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oc
  %i.oe = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oc
  %i.of = getelementptr i8, ptr %.0241.lcssa.us, i64 %i.oc
  %i.og = getelementptr i8, ptr %.2246.lcssa.us, i64 %i.oc
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph686
  %index689 = phi i64 [ 0, %vector.ph686 ], [ %index.next700, %vector.body688 ] ; 3 uses
  %i.oh = shl i64 %index689, 3
  %next.gep690 = getelementptr i8, ptr %.19.lcssa.us, i64 %i.oh
  %i.oi = shl i64 %index689, 1                    ; 4 uses
  %next.gep691 = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oi
  %next.gep692 = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oi
  %next.gep693 = getelementptr i8, ptr %.0241.lcssa.us, i64 %i.oi
  %next.gep694 = getelementptr i8, ptr %.2246.lcssa.us, i64 %i.oi
  %wide.load695 = load <32 x i16>, ptr %next.gep694, align 2, !tbaa !821, !alias.scope !1327
  %wide.load696 = load <32 x i16>, ptr %next.gep693, align 2, !tbaa !821, !alias.scope !1330
  %wide.load697 = load <32 x i16>, ptr %next.gep692, align 2, !tbaa !821, !alias.scope !1332
  %wide.load698 = load <32 x i16>, ptr %next.gep691, align 2, !tbaa !821, !alias.scope !1334
  %i.oj = shufflevector <32 x i16> %wide.load695, <32 x i16> %wide.load696, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ok = shufflevector <32 x i16> %wide.load697, <32 x i16> %wide.load698, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec699 = shufflevector <64 x i16> %i.oj, <64 x i16> %i.ok, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec699, ptr %next.gep690, align 2, !tbaa !821, !alias.scope !1336, !noalias !1338
  %index.next700 = add nuw i64 %index689, 32      ; 2 uses
  %i.ol = icmp eq i64 %index.next700, %n.vec687
  br i1 %i.ol, label %middle.block701, label %vector.body688, !llvm.loop !1339

middle.block701:                                  ; preds = %vector.body688
  %cmp.n702 = icmp eq i64 %i.nr, %n.vec687
  br i1 %cmp.n702, label %.loopexit274.us, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block701
  %min.epilog.iters.check713 = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check713, label %.lr.ph366.us.preheader, label %vec.epilog.ph714, !prof !520

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check684, %vec.epilog.iter.check712
  %vec.epilog.resume.val703 = phi i64 [ %n.vec687, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check684 ]
  %n.vec715 = and i64 %i.nr, 8589934584           ; 5 uses
  %i.om = shl nuw nsw i64 %n.vec715, 3
  %i.on = getelementptr i8, ptr %.19.lcssa.us, i64 %i.om ; 2 uses
  %i.oo = trunc i64 %n.vec715 to i32
  %i.op = add i32 %.0235.lcssa.us, %i.oo
  %i.oq = shl nuw nsw i64 %n.vec715, 1            ; 4 uses
  %i.or = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oq
  %i.os = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oq
  %i.ot = getelementptr i8, ptr %.0241.lcssa.us, i64 %i.oq
  %i.ou = getelementptr i8, ptr %.2246.lcssa.us, i64 %i.oq
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph714
  %index717 = phi i64 [ %vec.epilog.resume.val703, %vec.epilog.ph714 ], [ %index.next728, %vec.epilog.vector.body716 ] ; 3 uses
  %i.ov = shl i64 %index717, 3
  %next.gep718 = getelementptr i8, ptr %.19.lcssa.us, i64 %i.ov
  %i.ow = shl i64 %index717, 1                    ; 4 uses
  %next.gep719 = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.ow
  %next.gep720 = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.ow
  %next.gep721 = getelementptr i8, ptr %.0241.lcssa.us, i64 %i.ow
  %next.gep722 = getelementptr i8, ptr %.2246.lcssa.us, i64 %i.ow
  %wide.load723 = load <8 x i16>, ptr %next.gep722, align 2, !tbaa !821, !alias.scope !1327
  %wide.load724 = load <8 x i16>, ptr %next.gep721, align 2, !tbaa !821, !alias.scope !1330
  %wide.load725 = load <8 x i16>, ptr %next.gep720, align 2, !tbaa !821, !alias.scope !1332
  %wide.load726 = load <8 x i16>, ptr %next.gep719, align 2, !tbaa !821, !alias.scope !1334
  %i.ox = shufflevector <8 x i16> %wide.load723, <8 x i16> %wide.load724, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oy = shufflevector <8 x i16> %wide.load725, <8 x i16> %wide.load726, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec727 = shufflevector <16 x i16> %i.ox, <16 x i16> %i.oy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec727, ptr %next.gep718, align 2, !tbaa !821, !alias.scope !1336, !noalias !1338
  %index.next728 = add nuw i64 %index717, 8       ; 2 uses
  %i.oz = icmp eq i64 %index.next728, %n.vec715
  br i1 %i.oz, label %vec.epilog.middle.block729, label %vec.epilog.vector.body716, !llvm.loop !1340

vec.epilog.middle.block729:                       ; preds = %vec.epilog.vector.body716
  %cmp.n730 = icmp eq i64 %i.nr, %n.vec715
  br i1 %cmp.n730, label %.loopexit274.us, label %.lr.ph366.us.preheader

.lr.ph366.us.preheader:                           ; preds = %vector.memcheck656, %iter.check710, %vec.epilog.iter.check712, %vec.epilog.middle.block729
  %.20365.us.ph = phi ptr [ %.19.lcssa.us, %iter.check710 ], [ %.19.lcssa.us, %vector.memcheck656 ], [ %i.nz, %vec.epilog.iter.check712 ], [ %i.on, %vec.epilog.middle.block729 ] ; 6 uses
  %.1236364.us.ph = phi i32 [ %.0235.lcssa.us, %iter.check710 ], [ %.0235.lcssa.us, %vector.memcheck656 ], [ %i.ob, %vec.epilog.iter.check712 ], [ %i.op, %vec.epilog.middle.block729 ] ; 4 uses
  %.1238363.us.ph = phi ptr [ %.0237.lcssa.us, %iter.check710 ], [ %.0237.lcssa.us, %vector.memcheck656 ], [ %i.od, %vec.epilog.iter.check712 ], [ %i.or, %vec.epilog.middle.block729 ] ; 3 uses
  %.1240362.us.ph = phi ptr [ %.0239.lcssa.us, %iter.check710 ], [ %.0239.lcssa.us, %vector.memcheck656 ], [ %i.oe, %vec.epilog.iter.check712 ], [ %i.os, %vec.epilog.middle.block729 ] ; 3 uses
  %.1242361.us.ph = phi ptr [ %.0241.lcssa.us, %iter.check710 ], [ %.0241.lcssa.us, %vector.memcheck656 ], [ %i.of, %vec.epilog.iter.check712 ], [ %i.ot, %vec.epilog.middle.block729 ] ; 3 uses
  %.3247360.us.ph = phi ptr [ %.2246.lcssa.us, %iter.check710 ], [ %.2246.lcssa.us, %vector.memcheck656 ], [ %i.og, %vec.epilog.iter.check712 ], [ %i.ou, %vec.epilog.middle.block729 ] ; 3 uses
  %i.pa = sub i32 %5, %.1236364.us.ph
  %.neg979 = add i32 %.1236364.us.ph, 1
  %xtraiter961 = and i32 %i.pa, 1
  %lcmp.mod962.not = icmp eq i32 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %.lr.ph366.us.prol.loopexit, label %.lr.ph366.us.prol

.lr.ph366.us.prol:                                ; preds = %.lr.ph366.us.preheader
  %i.pb = load i16, ptr %.3247360.us.ph, align 2, !tbaa !821
  store i16 %i.pb, ptr %.20365.us.ph, align 2, !tbaa !821
  %i.pc = load i16, ptr %.1242361.us.ph, align 2, !tbaa !821
  %i.pd = getelementptr inbounds nuw i8, ptr %.20365.us.ph, i64 2
  store i16 %i.pc, ptr %i.pd, align 2, !tbaa !821
  %i.pe = load i16, ptr %.1240362.us.ph, align 2, !tbaa !821
  %i.pf = getelementptr inbounds nuw i8, ptr %.20365.us.ph, i64 4
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !821
  %i.pg = load i16, ptr %.1238363.us.ph, align 2, !tbaa !821
  %i.ph = getelementptr inbounds nuw i8, ptr %.20365.us.ph, i64 6
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !821
  %i.pi = getelementptr inbounds nuw i8, ptr %.20365.us.ph, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.3247360.us.ph, i64 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.1242361.us.ph, i64 2
  %i.pl = getelementptr inbounds nuw i8, ptr %.1240362.us.ph, i64 2
  %i.pm = getelementptr inbounds nuw i8, ptr %.1238363.us.ph, i64 2
  %i.pn = add nuw nsw i32 %.1236364.us.ph, 1
  br label %.lr.ph366.us.prol.loopexit

.lr.ph366.us.prol.loopexit:                       ; preds = %.lr.ph366.us.prol, %.lr.ph366.us.preheader
  %.lcssa905.unr = phi ptr [ poison, %.lr.ph366.us.preheader ], [ %i.pi, %.lr.ph366.us.prol ]
  %.20365.us.unr = phi ptr [ %.20365.us.ph, %.lr.ph366.us.preheader ], [ %i.pi, %.lr.ph366.us.prol ]
  %.1236364.us.unr = phi i32 [ %.1236364.us.ph, %.lr.ph366.us.preheader ], [ %i.pn, %.lr.ph366.us.prol ]
  %.1238363.us.unr = phi ptr [ %.1238363.us.ph, %.lr.ph366.us.preheader ], [ %i.pm, %.lr.ph366.us.prol ]
  %.1240362.us.unr = phi ptr [ %.1240362.us.ph, %.lr.ph366.us.preheader ], [ %i.pl, %.lr.ph366.us.prol ]
  %.1242361.us.unr = phi ptr [ %.1242361.us.ph, %.lr.ph366.us.preheader ], [ %i.pk, %.lr.ph366.us.prol ]
  %.3247360.us.unr = phi ptr [ %.3247360.us.ph, %.lr.ph366.us.preheader ], [ %i.pj, %.lr.ph366.us.prol ]
  %i.po = icmp eq i32 %5, %.neg979
  br i1 %i.po, label %.loopexit274.us, label %.lr.ph366.us

.loopexit274.us:                                  ; preds = %.lr.ph366.us.prol.loopexit, %.lr.ph366.us, %middle.block701, %vec.epilog.middle.block729, %.preheader273.us
  %.20.lcssa.us = phi ptr [ %.19.lcssa.us, %.preheader273.us ], [ %i.on, %vec.epilog.middle.block729 ], [ %i.nz, %middle.block701 ], [ %.lcssa905.unr, %.lr.ph366.us.prol.loopexit ], [ %i.nh, %.lr.ph366.us ] ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 4 ; 3 uses
  %i.pp = icmp slt i64 %indvars.iv.next481, %invariant.op539
  %indvar.next740 = add i64 %indvar739, 1
  br i1 %i.pp, label %.lr.ph370.split.us, label %.preheader272.loopexit, !llvm.loop !1341

.lr.ph370.split:                                  ; preds = %.lr.ph370
  br i1 %i.im, label %.lr.ph370.split.split.preheader, label %.lr.ph370.split.split.us

.lr.ph370.split.split.preheader:                  ; preds = %.lr.ph370.split
  %i.pq = add nuw i32 %.1221.lcssa, 7
  %smax477 = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.pq)
  %i.pr = add i32 %smax477, -4
  %i.ps = sub i32 %i.pr, %.1221.lcssa
  %i.pt = and i32 %i.ps, -4
  %i.pu = add nuw i32 %.1221.lcssa, %i.pt
  %i.pv = add nuw i32 %i.pu, 4
  br label %.preheader272

.lr.ph370.split.split.us:                         ; preds = %.lr.ph370.split
  br i1 %i.in, label %.preheader275.us380.preheader, label %.preheader275.us380.us.preheader

.preheader275.us380.us.preheader:                 ; preds = %.lr.ph370.split.split.us
  %i.pw = zext i32 %.1221.lcssa to i64            ; 2 uses
  %i.px = sext i32 %2 to i64                      ; 2 uses
  %i.py = sext i32 %3 to i64
  %invariant.op538 = add nsw i64 %i.py, -3
  %i.pz = add nsw i64 %i.px, %i.pw
  %i.qa = mul i64 %i.l, %i.pz
  %i.qb = mul i64 %i.qa, -2
  %i.qc = shl nsw i64 %i.il, 1
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = mul i64 %i.l, -8
  %i.qf = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check628 = icmp ult i32 %5, 8
  %min.iters.check629 = icmp ult i32 %5, 32
  %i.qg = and i64 %i.qf, 24
  %n.vec631 = and i64 %i.qf, 2147483616           ; 5 uses
  %i.qh = shl nuw nsw i64 %n.vec631, 3            ; 2 uses
  %i.qi = trunc nuw nsw i64 %n.vec631 to i32
  %cmp.n642 = icmp eq i64 %n.vec631, %i.qf
  %min.epilog.iters.check = icmp eq i64 %i.qg, 0
  %n.vec646 = and i64 %i.qf, 2147483640           ; 4 uses
  %i.qj = shl nuw nsw i64 %n.vec646, 3            ; 2 uses
  %i.qk = trunc nuw nsw i64 %n.vec646 to i32
  %cmp.n652 = icmp eq i64 %n.vec646, %i.qf
  br label %iter.check

.preheader275.us380.preheader:                    ; preds = %.lr.ph370.split.split.us
  %i.ql = add nuw i32 %.1221.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.ql)
  %i.qm = add i32 %smax, -4
  %i.qn = sub i32 %i.qm, %.1221.lcssa
  %i.qo = and i32 %i.qn, -4
  %i.qp = add nuw i32 %.1221.lcssa, %i.qo
  %i.qq = add nuw i32 %i.qp, 4
  br label %.preheader272

iter.check:                                       ; preds = %.preheader275.us380.us.preheader, %..loopexit276_crit_edge.us384.us
  %indvar625 = phi i64 [ 0, %.preheader275.us380.us.preheader ], [ %indvar.next626, %..loopexit276_crit_edge.us384.us ] ; 2 uses
  %indvars.iv474 = phi i64 [ %i.pw, %.preheader275.us380.us.preheader ], [ %indvars.iv.next475, %..loopexit276_crit_edge.us384.us ] ; 2 uses
  %.16369.us374.us = phi ptr [ %.9.lcssa, %.preheader275.us380.us.preheader ], [ %.lcssa555, %..loopexit276_crit_edge.us384.us ] ; 7 uses
  %i.qr = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.qs = add nsw i64 %indvars.iv474, %i.px
  %i.qt = mul i64 %i.l, %i.qs
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qr, i64 %i.qt
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.qu, i64 %i.il ; 6 uses
  br i1 %min.iters.check628, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck623

vector.memcheck623:                               ; preds = %iter.check
  %i.qw = ptrtoaddr ptr %i.qr to i64
  %i.qx = mul i64 %i.qe, %indvar625
  %i.qy = add i64 %i.qd, %i.qx
  %.16369.us374.us624 = ptrtoaddr ptr %.16369.us374.us to i64
  %i.qz = add i64 %i.qy, %.16369.us374.us624
  %i.ra = sub i64 %i.qw, %i.qz
  %diff.check = icmp ugt i64 %i.ra, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck623
  br i1 %min.iters.check629, label %vec.epilog.ph, label %vector.ph630

vector.ph630:                                     ; preds = %vector.main.loop.iter.check
  %i.rb = getelementptr i8, ptr %.16369.us374.us, i64 %i.qh ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qv, i64 %i.qh
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph630
  %index633 = phi i64 [ 0, %vector.ph630 ], [ %index.next640, %vector.body632 ] ; 2 uses
  %i.rd = shl i64 %index633, 3                    ; 2 uses
  %next.gep634 = getelementptr i8, ptr %.16369.us374.us, i64 %i.rd ; 4 uses
  %next.gep635 = getelementptr i8, ptr %i.qv, i64 %i.rd ; 4 uses
  %i.re = getelementptr i8, ptr %next.gep635, i64 64
  %i.rf = getelementptr i8, ptr %next.gep635, i64 128
  %i.rg = getelementptr i8, ptr %next.gep635, i64 192
  %wide.load636 = load <8 x i64>, ptr %next.gep635, align 1, !tbaa !116
  %wide.load637 = load <8 x i64>, ptr %i.re, align 1, !tbaa !116
  %wide.load638 = load <8 x i64>, ptr %i.rf, align 1, !tbaa !116
  %wide.load639 = load <8 x i64>, ptr %i.rg, align 1, !tbaa !116
  %i.rh = getelementptr i8, ptr %next.gep634, i64 64
  %i.ri = getelementptr i8, ptr %next.gep634, i64 128
  %i.rj = getelementptr i8, ptr %next.gep634, i64 192
  store <8 x i64> %wide.load636, ptr %next.gep634, align 1, !tbaa !116
  store <8 x i64> %wide.load637, ptr %i.rh, align 1, !tbaa !116
  store <8 x i64> %wide.load638, ptr %i.ri, align 1, !tbaa !116
  store <8 x i64> %wide.load639, ptr %i.rj, align 1, !tbaa !116
  %index.next640 = add nuw i64 %index633, 32      ; 2 uses
  %i.rk = icmp eq i64 %index.next640, %n.vec631
  br i1 %i.rk, label %middle.block641, label %vector.body632, !llvm.loop !1342

middle.block641:                                  ; preds = %vector.body632
  br i1 %cmp.n642, label %..loopexit276_crit_edge.us384.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block641
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec631, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rl = getelementptr i8, ptr %.16369.us374.us, i64 %i.qj ; 2 uses
  %i.rm = getelementptr i8, ptr %i.qv, i64 %i.qj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index647 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next651, %vec.epilog.vector.body ] ; 2 uses
  %i.rn = shl i64 %index647, 3                    ; 2 uses
  %next.gep648 = getelementptr i8, ptr %.16369.us374.us, i64 %i.rn
  %next.gep649 = getelementptr i8, ptr %i.qv, i64 %i.rn
  %wide.load650 = load <8 x i64>, ptr %next.gep649, align 1, !tbaa !116
  store <8 x i64> %wide.load650, ptr %next.gep648, align 1, !tbaa !116
  %index.next651 = add nuw i64 %index647, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next651, %n.vec646
  br i1 %i.ro, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n652, label %..loopexit276_crit_edge.us384.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck623, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.17343.us376.us.ph = phi ptr [ %.16369.us374.us, %iter.check ], [ %.16369.us374.us, %vector.memcheck623 ], [ %i.rb, %vec.epilog.iter.check ], [ %i.rl, %vec.epilog.middle.block ] ; 2 uses
  %.0243342.us377.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck623 ], [ %i.qi, %vec.epilog.iter.check ], [ %i.qk, %vec.epilog.middle.block ] ; 4 uses
  %.0244341.us378.us.ph = phi ptr [ %i.qv, %iter.check ], [ %i.qv, %vector.memcheck623 ], [ %i.rc, %vec.epilog.iter.check ], [ %i.rm, %vec.epilog.middle.block ] ; 2 uses
  %i.rp = sub i32 %5, %.0243342.us377.us.ph
  %xtraiter955 = and i32 %i.rp, 7                 ; 2 uses
  %lcmp.mod956.not = icmp eq i32 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.17343.us376.us.prol = phi ptr [ %i.rr, %vec.epilog.scalar.ph.prol ], [ %.17343.us376.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0243342.us377.us.prol = phi i32 [ %i.rt, %vec.epilog.scalar.ph.prol ], [ %.0243342.us377.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0244341.us378.us.prol = phi ptr [ %i.rs, %vec.epilog.scalar.ph.prol ], [ %.0244341.us378.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter957 = phi i32 [ %prol.iter957.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.rq = load i64, ptr %.0244341.us378.us.prol, align 1, !tbaa !116
  store i64 %i.rq, ptr %.17343.us376.us.prol, align 1, !tbaa !116
  %i.rr = getelementptr inbounds nuw i8, ptr %.17343.us376.us.prol, i64 8 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0244341.us378.us.prol, i64 8 ; 2 uses
  %i.rt = add nuw nsw i32 %.0243342.us377.us.prol, 1 ; 2 uses
  %prol.iter957.next = add i32 %prol.iter957, 1   ; 2 uses
  %prol.iter957.cmp.not = icmp eq i32 %prol.iter957.next, %xtraiter955
  br i1 %prol.iter957.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1344

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa906.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.rr, %vec.epilog.scalar.ph.prol ]
  %.17343.us376.us.unr = phi ptr [ %.17343.us376.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rr, %vec.epilog.scalar.ph.prol ]
  %.0243342.us377.us.unr = phi i32 [ %.0243342.us377.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rt, %vec.epilog.scalar.ph.prol ]
  %.0244341.us378.us.unr = phi ptr [ %.0244341.us378.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rs, %vec.epilog.scalar.ph.prol ]
  %i.ru = sub i32 %.0243342.us377.us.ph, %5
  %i.rv = icmp ugt i32 %i.ru, -8
  br i1 %i.rv, label %..loopexit276_crit_edge.us384.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.17343.us376.us = phi ptr [ %i.ss, %vec.epilog.scalar.ph ], [ %.17343.us376.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0243342.us377.us = phi i32 [ %i.su, %vec.epilog.scalar.ph ], [ %.0243342.us377.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0244341.us378.us = phi ptr [ %i.st, %vec.epilog.scalar.ph ], [ %.0244341.us378.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.rw = load i64, ptr %.0244341.us378.us, align 1, !tbaa !116
  store i64 %i.rw, ptr %.17343.us376.us, align 1, !tbaa !116
  %i.rx = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 8
  %i.rz = load i64, ptr %i.ry, align 1, !tbaa !116
  store i64 %i.rz, ptr %i.rx, align 1, !tbaa !116
  %i.sa = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 16
  %i.sc = load i64, ptr %i.sb, align 1, !tbaa !116
  store i64 %i.sc, ptr %i.sa, align 1, !tbaa !116
  %i.sd = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 24
  %i.sf = load i64, ptr %i.se, align 1, !tbaa !116
  store i64 %i.sf, ptr %i.sd, align 1, !tbaa !116
  %i.sg = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 32
  %i.si = load i64, ptr %i.sh, align 1, !tbaa !116
  store i64 %i.si, ptr %i.sg, align 1, !tbaa !116
  %i.sj = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 40
  %i.sk = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 40
  %i.sl = load i64, ptr %i.sk, align 1, !tbaa !116
  store i64 %i.sl, ptr %i.sj, align 1, !tbaa !116
  %i.sm = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 48
  %i.sn = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 48
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !116
  store i64 %i.so, ptr %i.sm, align 1, !tbaa !116
  %i.sp = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 56
  %i.sq = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 56
  %i.sr = load i64, ptr %i.sq, align 1, !tbaa !116
  store i64 %i.sr, ptr %i.sp, align 1, !tbaa !116
  %i.ss = getelementptr inbounds nuw i8, ptr %.17343.us376.us, i64 64 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.0244341.us378.us, i64 64
  %i.su = add nuw nsw i32 %.0243342.us377.us, 8   ; 2 uses
  %exitcond473.not.7 = icmp eq i32 %i.su, %5
  br i1 %exitcond473.not.7, label %..loopexit276_crit_edge.us384.us, label %vec.epilog.scalar.ph, !llvm.loop !1345

..loopexit276_crit_edge.us384.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block641
  %.lcssa555 = phi ptr [ %i.rl, %vec.epilog.middle.block ], [ %i.rb, %middle.block641 ], [ %.lcssa906.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ss, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 4 ; 3 uses
  %i.sv = icmp slt i64 %indvars.iv.next475, %invariant.op538
  %indvar.next626 = add i64 %indvar625, 1
  br i1 %i.sv, label %iter.check, label %.preheader272.loopexit431, !llvm.loop !1341

bb.j:                                             ; preds = %.lr.ph338, %.loopexit278
  %indvar592 = phi i64 [ 0, %.lr.ph338 ], [ %indvar.next593, %.loopexit278 ] ; 2 uses
  %indvars.iv470 = phi i64 [ %i.bl, %.lr.ph338 ], [ %indvars.iv.next471, %.loopexit278 ] ; 2 uses
  %.9337 = phi ptr [ %.0219.lcssa, %.lr.ph338 ], [ %.15, %.loopexit278 ] ; 13 uses
  %i.sw = mul i64 %i.bw, %indvar592               ; 3 uses
  %i.sx = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.sy = add i64 %indvars.iv470, %i.bn
  %i.sz = mul i64 %i.l, %i.sy
  %i.ta = getelementptr [2 x i8], ptr %i.sx, i64 %i.sz
  %i.tb = getelementptr [2 x i8], ptr %i.ta, i64 %i.bb ; 10 uses
  br i1 %brmerge424, label %.loopexit281, label %.lr.ph321.preheader

.lr.ph321.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph321.epil.preheader, label %.lr.ph321

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %.10320 = phi ptr [ %i.ty, %.lr.ph321 ], [ %.9337, %.lr.ph321.preheader ] ; 9 uses
  %.0254318 = phi ptr [ %i.tz, %.lr.ph321 ], [ %i.tb, %.lr.ph321.preheader ] ; 9 uses
  %niter945 = phi i32 [ %niter945.next.7, %.lr.ph321 ], [ 0, %.lr.ph321.preheader ]
  %i.tc = load <2 x i64>, ptr %.0254318, align 1, !tbaa !116
  store <2 x i64> %i.tc, ptr %.10320, align 1, !tbaa !116
  %i.td = getelementptr inbounds nuw i8, ptr %.10320, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %.0254318, i64 16
  %i.tf = load <2 x i64>, ptr %i.te, align 1, !tbaa !116
  store <2 x i64> %i.tf, ptr %i.td, align 1, !tbaa !116
  %i.tg = getelementptr inbounds nuw i8, ptr %.10320, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %.0254318, i64 32
  %i.ti = load <2 x i64>, ptr %i.th, align 1, !tbaa !116
  store <2 x i64> %i.ti, ptr %i.tg, align 1, !tbaa !116
  %i.tj = getelementptr inbounds nuw i8, ptr %.10320, i64 48
  %i.tk = getelementptr inbounds nuw i8, ptr %.0254318, i64 48
  %i.tl = load <2 x i64>, ptr %i.tk, align 1, !tbaa !116
  store <2 x i64> %i.tl, ptr %i.tj, align 1, !tbaa !116
  %i.tm = getelementptr inbounds nuw i8, ptr %.10320, i64 64
  %i.tn = getelementptr inbounds nuw i8, ptr %.0254318, i64 64
  %i.to = load <2 x i64>, ptr %i.tn, align 1, !tbaa !116
  store <2 x i64> %i.to, ptr %i.tm, align 1, !tbaa !116
  %i.tp = getelementptr inbounds nuw i8, ptr %.10320, i64 80
  %i.tq = getelementptr inbounds nuw i8, ptr %.0254318, i64 80
  %i.tr = load <2 x i64>, ptr %i.tq, align 1, !tbaa !116
  store <2 x i64> %i.tr, ptr %i.tp, align 1, !tbaa !116
end_hunk_11
begin_hunk_12_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %i.me = getelementptr i8, ptr %i.md, i64 %i.iw
  %scevgep602 = getelementptr i8, ptr %i.me, i64 2
  %i.mf = getelementptr i8, ptr %.1.us464, i64 %.idx
  %i.mg = getelementptr i8, ptr %i.mf, i64 %i.iw
  %scevgep603 = getelementptr i8, ptr %i.mg, i64 2
  %i.mh = getelementptr i8, ptr %.1.us464, i64 %i.iy
  %scevgep604 = getelementptr i8, ptr %i.mh, i64 2
  %i.mi = getelementptr i8, ptr %.1.us464, i64 %i.iw
  %scevgep605 = getelementptr i8, ptr %i.mi, i64 2
  %bound0606 = icmp ult ptr %.18.us463, %scevgep602
  %bound1607 = icmp ult ptr %i.lz, %scevgep601
  %found.conflict608 = and i1 %bound0606, %bound1607
  %bound0609 = icmp ult ptr %.18.us463, %scevgep603
  %bound1610 = icmp ult ptr %i.ma, %scevgep601
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %found.conflict608, %found.conflict611
  %bound0613 = icmp ult ptr %.18.us463, %scevgep604
  %bound1614 = icmp ult ptr %i.mb, %scevgep601
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %conflict.rdx612, %found.conflict615
  %bound0617 = icmp ult ptr %.18.us463, %scevgep605
  %bound1618 = icmp ult ptr %.1.us464, %scevgep601
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %conflict.rdx616, %found.conflict619
  br i1 %conflict.rdx620, label %.lr.ph323.us.preheader, label %vector.main.loop.iter.check623

vector.main.loop.iter.check623:                   ; preds = %vector.memcheck600
  br i1 %min.iters.check624, label %vec.epilog.ph653, label %vector.ph625

vector.ph625:                                     ; preds = %vector.main.loop.iter.check623
  %i.mj = getelementptr i8, ptr %i.lz, i64 %i.jq
  %i.mk = getelementptr i8, ptr %i.ma, i64 %i.jq
  %i.ml = getelementptr i8, ptr %i.mb, i64 %i.jq
  %i.mm = getelementptr i8, ptr %.1.us464, i64 %i.jq
  %i.mn = getelementptr i8, ptr %.18.us463, i64 %i.jr ; 2 uses
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph625
  %index628 = phi i64 [ 0, %vector.ph625 ], [ %index.next639, %vector.body627 ] ; 3 uses
  %i.mo = shl i64 %index628, 1                    ; 4 uses
  %next.gep629 = getelementptr i8, ptr %i.lz, i64 %i.mo
  %next.gep630 = getelementptr i8, ptr %i.ma, i64 %i.mo
  %next.gep631 = getelementptr i8, ptr %i.mb, i64 %i.mo
  %next.gep632 = getelementptr i8, ptr %.1.us464, i64 %i.mo
  %i.mp = shl i64 %index628, 3
  %next.gep633 = getelementptr i8, ptr %.18.us463, i64 %i.mp
  %wide.load634 = load <32 x i16>, ptr %next.gep632, align 2, !tbaa !821, !alias.scope !1412
  %wide.load635 = load <32 x i16>, ptr %next.gep631, align 2, !tbaa !821, !alias.scope !1415
  %wide.load636 = load <32 x i16>, ptr %next.gep630, align 2, !tbaa !821, !alias.scope !1417
  %wide.load637 = load <32 x i16>, ptr %next.gep629, align 2, !tbaa !821, !alias.scope !1419
  %i.mq = shufflevector <32 x i16> %wide.load634, <32 x i16> %wide.load635, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.mr = shufflevector <32 x i16> %wide.load636, <32 x i16> %wide.load637, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec638 = shufflevector <64 x i16> %i.mq, <64 x i16> %i.mr, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec638, ptr %next.gep633, align 2, !tbaa !821, !alias.scope !1421, !noalias !1423
  %index.next639 = add nuw i64 %index628, 32      ; 2 uses
  %i.ms = icmp eq i64 %index.next639, %n.vec626
  br i1 %i.ms, label %middle.block640, label %vector.body627, !llvm.loop !1424

middle.block640:                                  ; preds = %vector.body627
  br i1 %cmp.n641, label %.loopexit244.us, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block640
  br i1 %min.epilog.iters.check652, label %.lr.ph323.us.preheader, label %vec.epilog.ph653, !prof !520

vec.epilog.ph653:                                 ; preds = %vector.main.loop.iter.check623, %vec.epilog.iter.check651
  %vec.epilog.resume.val642 = phi i64 [ %n.vec626, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check623 ]
  %i.mt = getelementptr i8, ptr %i.lz, i64 %i.jt
  %i.mu = getelementptr i8, ptr %i.ma, i64 %i.jt
  %i.mv = getelementptr i8, ptr %i.mb, i64 %i.jt
  %i.mw = getelementptr i8, ptr %.1.us464, i64 %i.jt
  %i.mx = getelementptr i8, ptr %.18.us463, i64 %i.ju ; 2 uses
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph653
  %index656 = phi i64 [ %vec.epilog.resume.val642, %vec.epilog.ph653 ], [ %index.next667, %vec.epilog.vector.body655 ] ; 3 uses
  %i.my = shl i64 %index656, 1                    ; 4 uses
  %next.gep657 = getelementptr i8, ptr %i.lz, i64 %i.my
  %next.gep658 = getelementptr i8, ptr %i.ma, i64 %i.my
  %next.gep659 = getelementptr i8, ptr %i.mb, i64 %i.my
  %next.gep660 = getelementptr i8, ptr %.1.us464, i64 %i.my
  %i.mz = shl i64 %index656, 3
  %next.gep661 = getelementptr i8, ptr %.18.us463, i64 %i.mz
  %wide.load662 = load <8 x i16>, ptr %next.gep660, align 2, !tbaa !821, !alias.scope !1412
  %wide.load663 = load <8 x i16>, ptr %next.gep659, align 2, !tbaa !821, !alias.scope !1415
  %wide.load664 = load <8 x i16>, ptr %next.gep658, align 2, !tbaa !821, !alias.scope !1417
  %wide.load665 = load <8 x i16>, ptr %next.gep657, align 2, !tbaa !821, !alias.scope !1419
  %i.na = shufflevector <8 x i16> %wide.load662, <8 x i16> %wide.load663, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nb = shufflevector <8 x i16> %wide.load664, <8 x i16> %wide.load665, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec666 = shufflevector <16 x i16> %i.na, <16 x i16> %i.nb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec666, ptr %next.gep661, align 2, !tbaa !821, !alias.scope !1421, !noalias !1423
  %index.next667 = add nuw i64 %index656, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next667, %n.vec654
  br i1 %i.nc, label %vec.epilog.middle.block668, label %vec.epilog.vector.body655, !llvm.loop !1425

vec.epilog.middle.block668:                       ; preds = %vec.epilog.vector.body655
  br i1 %cmp.n669, label %.loopexit244.us, label %.lr.ph323.us.preheader

.lr.ph323.us.preheader:                           ; preds = %vector.memcheck600, %iter.check649, %vec.epilog.iter.check651, %vec.epilog.middle.block668
  %.0195322.us.ph = phi i32 [ 0, %iter.check649 ], [ 0, %vector.memcheck600 ], [ %i.jp, %vec.epilog.iter.check651 ], [ %i.js, %vec.epilog.middle.block668 ] ; 4 uses
  %.0196321.us.ph = phi ptr [ %i.lz, %iter.check649 ], [ %i.lz, %vector.memcheck600 ], [ %i.mj, %vec.epilog.iter.check651 ], [ %i.mt, %vec.epilog.middle.block668 ] ; 3 uses
  %.0197320.us.ph = phi ptr [ %i.ma, %iter.check649 ], [ %i.ma, %vector.memcheck600 ], [ %i.mk, %vec.epilog.iter.check651 ], [ %i.mu, %vec.epilog.middle.block668 ] ; 3 uses
  %.0198319.us.ph = phi ptr [ %i.mb, %iter.check649 ], [ %i.mb, %vector.memcheck600 ], [ %i.ml, %vec.epilog.iter.check651 ], [ %i.mv, %vec.epilog.middle.block668 ] ; 3 uses
  %.2318.us.ph = phi ptr [ %.1.us464, %iter.check649 ], [ %.1.us464, %vector.memcheck600 ], [ %i.mm, %vec.epilog.iter.check651 ], [ %i.mw, %vec.epilog.middle.block668 ] ; 3 uses
  %.19317.us.ph = phi ptr [ %.18.us463, %iter.check649 ], [ %.18.us463, %vector.memcheck600 ], [ %i.mn, %vec.epilog.iter.check651 ], [ %i.mx, %vec.epilog.middle.block668 ] ; 6 uses
  %i.nd = sub i32 %5, %.0195322.us.ph
  %.neg913 = add i32 %.0195322.us.ph, 1
  %xtraiter895 = and i32 %i.nd, 1
  %lcmp.mod896.not = icmp eq i32 %xtraiter895, 0
  br i1 %lcmp.mod896.not, label %.lr.ph323.us.prol.loopexit, label %.lr.ph323.us.prol

.lr.ph323.us.prol:                                ; preds = %.lr.ph323.us.preheader
  %i.ne = load i16, ptr %.2318.us.ph, align 2, !tbaa !821
  store i16 %i.ne, ptr %.19317.us.ph, align 2, !tbaa !821
  %i.nf = load i16, ptr %.0198319.us.ph, align 2, !tbaa !821
  %i.ng = getelementptr inbounds nuw i8, ptr %.19317.us.ph, i64 2
  store i16 %i.nf, ptr %i.ng, align 2, !tbaa !821
  %i.nh = load i16, ptr %.0197320.us.ph, align 2, !tbaa !821
  %i.ni = getelementptr inbounds nuw i8, ptr %.19317.us.ph, i64 4
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !821
  %i.nj = load i16, ptr %.0196321.us.ph, align 2, !tbaa !821
  %i.nk = getelementptr inbounds nuw i8, ptr %.19317.us.ph, i64 6
  store i16 %i.nj, ptr %i.nk, align 2, !tbaa !821
  %i.nl = getelementptr inbounds nuw i8, ptr %.19317.us.ph, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.2318.us.ph, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.0198319.us.ph, i64 2
  %i.no = getelementptr inbounds nuw i8, ptr %.0197320.us.ph, i64 2
  %i.np = getelementptr inbounds nuw i8, ptr %.0196321.us.ph, i64 2
  %i.nq = add nuw nsw i32 %.0195322.us.ph, 1
  br label %.lr.ph323.us.prol.loopexit

.lr.ph323.us.prol.loopexit:                       ; preds = %.lr.ph323.us.prol, %.lr.ph323.us.preheader
  %.lcssa839.unr = phi ptr [ poison, %.lr.ph323.us.preheader ], [ %i.nl, %.lr.ph323.us.prol ]
  %.0195322.us.unr = phi i32 [ %.0195322.us.ph, %.lr.ph323.us.preheader ], [ %i.nq, %.lr.ph323.us.prol ]
  %.0196321.us.unr = phi ptr [ %.0196321.us.ph, %.lr.ph323.us.preheader ], [ %i.np, %.lr.ph323.us.prol ]
  %.0197320.us.unr = phi ptr [ %.0197320.us.ph, %.lr.ph323.us.preheader ], [ %i.no, %.lr.ph323.us.prol ]
  %.0198319.us.unr = phi ptr [ %.0198319.us.ph, %.lr.ph323.us.preheader ], [ %i.nn, %.lr.ph323.us.prol ]
  %.2318.us.unr = phi ptr [ %.2318.us.ph, %.lr.ph323.us.preheader ], [ %i.nm, %.lr.ph323.us.prol ]
  %.19317.us.unr = phi ptr [ %.19317.us.ph, %.lr.ph323.us.preheader ], [ %i.nl, %.lr.ph323.us.prol ]
  %i.nr = icmp eq i32 %5, %.neg913
  br i1 %i.nr, label %.loopexit244.us, label %.lr.ph323.us

.lr.ph323.us:                                     ; preds = %.lr.ph323.us.prol.loopexit, %.lr.ph323.us
  %.0195322.us = phi i32 [ %i.oq, %.lr.ph323.us ], [ %.0195322.us.unr, %.lr.ph323.us.prol.loopexit ]
  %.0196321.us = phi ptr [ %i.op, %.lr.ph323.us ], [ %.0196321.us.unr, %.lr.ph323.us.prol.loopexit ] ; 3 uses
  %.0197320.us = phi ptr [ %i.oo, %.lr.ph323.us ], [ %.0197320.us.unr, %.lr.ph323.us.prol.loopexit ] ; 3 uses
  %.0198319.us = phi ptr [ %i.on, %.lr.ph323.us ], [ %.0198319.us.unr, %.lr.ph323.us.prol.loopexit ] ; 3 uses
  %.2318.us = phi ptr [ %i.om, %.lr.ph323.us ], [ %.2318.us.unr, %.lr.ph323.us.prol.loopexit ] ; 3 uses
  %.19317.us = phi ptr [ %i.ol, %.lr.ph323.us ], [ %.19317.us.unr, %.lr.ph323.us.prol.loopexit ] ; 9 uses
  %i.ns = load i16, ptr %.2318.us, align 2, !tbaa !821
  store i16 %i.ns, ptr %.19317.us, align 2, !tbaa !821
  %i.nt = load i16, ptr %.0198319.us, align 2, !tbaa !821
  %i.nu = getelementptr inbounds nuw i8, ptr %.19317.us, i64 2
  store i16 %i.nt, ptr %i.nu, align 2, !tbaa !821
  %i.nv = load i16, ptr %.0197320.us, align 2, !tbaa !821
  %i.nw = getelementptr inbounds nuw i8, ptr %.19317.us, i64 4
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !821
  %i.nx = load i16, ptr %.0196321.us, align 2, !tbaa !821
  %i.ny = getelementptr inbounds nuw i8, ptr %.19317.us, i64 6
  store i16 %i.nx, ptr %i.ny, align 2, !tbaa !821
  %i.nz = getelementptr inbounds nuw i8, ptr %.19317.us, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %.2318.us, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.0198319.us, i64 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.0197320.us, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %.0196321.us, i64 2
  %i.oe = load i16, ptr %i.oa, align 2, !tbaa !821
  store i16 %i.oe, ptr %i.nz, align 2, !tbaa !821
  %i.of = load i16, ptr %i.ob, align 2, !tbaa !821
  %i.og = getelementptr inbounds nuw i8, ptr %.19317.us, i64 10
  store i16 %i.of, ptr %i.og, align 2, !tbaa !821
  %i.oh = load i16, ptr %i.oc, align 2, !tbaa !821
  %i.oi = getelementptr inbounds nuw i8, ptr %.19317.us, i64 12
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !821
  %i.oj = load i16, ptr %i.od, align 2, !tbaa !821
  %i.ok = getelementptr inbounds nuw i8, ptr %.19317.us, i64 14
  store i16 %i.oj, ptr %i.ok, align 2, !tbaa !821
  %i.ol = getelementptr inbounds nuw i8, ptr %.19317.us, i64 16 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.2318.us, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.0198319.us, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %.0197320.us, i64 4
  %i.op = getelementptr inbounds nuw i8, ptr %.0196321.us, i64 4
  %i.oq = add nuw nsw i32 %.0195322.us, 2         ; 2 uses
  %exitcond430.not.1 = icmp eq i32 %i.oq, %5
  br i1 %exitcond430.not.1, label %.loopexit244.us, label %.lr.ph323.us, !llvm.loop !1426

.loopexit244.us:                                  ; preds = %.lr.ph323.us.prol.loopexit, %.lr.ph323.us, %middle.block640, %vec.epilog.middle.block668, %.loopexit246.us
  %.19.lcssa.us = phi ptr [ %.16326.us, %.loopexit246.us ], [ %i.mx, %vec.epilog.middle.block668 ], [ %i.mn, %middle.block640 ], [ %.lcssa839.unr, %.lr.ph323.us.prol.loopexit ], [ %i.ol, %.lr.ph323.us ] ; 2 uses
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 4 ; 3 uses
  %i.or = icmp slt i64 %indvars.iv.next432, %invariant.op488
  %indvar.next679 = add i64 %indvar678, 1
  br i1 %i.or, label %.lr.ph327.split.us, label %.preheader243.loopexit, !llvm.loop !1427

.lr.ph327.split:                                  ; preds = %.lr.ph327
  br i1 %i.im, label %.lr.ph327.split.split.preheader, label %.lr.ph327.split.split.us

.lr.ph327.split.split.preheader:                  ; preds = %.lr.ph327.split
  %i.os = add nuw i32 %.1206.lcssa, 7
  %smax428 = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.os)
  %i.ot = add i32 %smax428, -4
  %i.ou = sub i32 %i.ot, %.1206.lcssa
  %i.ov = and i32 %i.ou, -4
  %i.ow = add nuw i32 %.1206.lcssa, %i.ov
  %i.ox = add nuw i32 %i.ow, 4
  br label %.preheader243

.lr.ph327.split.split.us:                         ; preds = %.lr.ph327.split
  br i1 %i.in, label %.preheader245.us337.preheader, label %.preheader245.us337.us.preheader

.preheader245.us337.us.preheader:                 ; preds = %.lr.ph327.split.split.us
  %i.oy = zext i32 %.1206.lcssa to i64            ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = sext i32 %3 to i64
  %invariant.op487 = add nsw i64 %i.pa, -3
  %i.pb = add nsw i64 %i.oz, %i.oy
  %i.pc = mul i64 %i.l, %i.pb
  %i.pd = mul i64 %i.pc, -2
  %i.pe = shl nsw i64 %i.il, 1
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = mul i64 %i.l, -8
  %i.ph = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check572 = icmp ult i32 %5, 8
  %min.iters.check573 = icmp ult i32 %5, 32
  %i.pi = and i64 %i.ph, 24
  %n.vec575 = and i64 %i.ph, 2147483616           ; 5 uses
  %i.pj = trunc nuw nsw i64 %n.vec575 to i32
  %i.pk = shl nuw nsw i64 %n.vec575, 3            ; 2 uses
  %cmp.n586 = icmp eq i64 %n.vec575, %i.ph
  %min.epilog.iters.check = icmp eq i64 %i.pi, 0
  %n.vec590 = and i64 %i.ph, 2147483640           ; 4 uses
  %i.pl = trunc nuw nsw i64 %n.vec590 to i32
  %i.pm = shl nuw nsw i64 %n.vec590, 3            ; 2 uses
  %cmp.n596 = icmp eq i64 %n.vec590, %i.ph
  br label %iter.check

.preheader245.us337.preheader:                    ; preds = %.lr.ph327.split.split.us
  %i.pn = add nuw i32 %.1206.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.pn)
  %i.po = add i32 %smax, -4
  %i.pp = sub i32 %i.po, %.1206.lcssa
  %i.pq = and i32 %i.pp, -4
  %i.pr = add nuw i32 %.1206.lcssa, %i.pq
  %i.ps = add nuw i32 %i.pr, 4
  br label %.preheader243

iter.check:                                       ; preds = %.preheader245.us337.us.preheader, %..loopexit246_crit_edge.us341.us
  %indvar569 = phi i64 [ 0, %.preheader245.us337.us.preheader ], [ %indvar.next570, %..loopexit246_crit_edge.us341.us ] ; 2 uses
  %indvars.iv425 = phi i64 [ %i.oy, %.preheader245.us337.us.preheader ], [ %indvars.iv.next426, %..loopexit246_crit_edge.us341.us ] ; 2 uses
  %.16326.us331.us = phi ptr [ %.9.lcssa, %.preheader245.us337.us.preheader ], [ %.lcssa499, %..loopexit246_crit_edge.us341.us ] ; 7 uses
  %i.pt = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.pu = add nsw i64 %indvars.iv425, %i.oz
  %i.pv = mul i64 %i.l, %i.pu
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %i.pv
  %i.px = getelementptr inbounds [2 x i8], ptr %i.pw, i64 %i.il ; 6 uses
  br i1 %min.iters.check572, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck567

vector.memcheck567:                               ; preds = %iter.check
  %i.py = ptrtoaddr ptr %i.pt to i64
  %i.pz = mul i64 %i.pg, %indvar569
  %i.qa = add i64 %i.pf, %i.pz
  %.16326.us331.us568 = ptrtoaddr ptr %.16326.us331.us to i64
  %i.qb = add i64 %i.qa, %.16326.us331.us568
  %i.qc = sub i64 %i.py, %i.qb
  %diff.check = icmp ugt i64 %i.qc, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck567
  br i1 %min.iters.check573, label %vec.epilog.ph, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check
  %i.qd = getelementptr i8, ptr %i.px, i64 %i.pk
  %i.qe = getelementptr i8, ptr %.16326.us331.us, i64 %i.pk ; 2 uses
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph574
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next584, %vector.body576 ] ; 2 uses
  %i.qf = shl i64 %index577, 3                    ; 2 uses
  %next.gep578 = getelementptr i8, ptr %i.px, i64 %i.qf ; 4 uses
  %next.gep579 = getelementptr i8, ptr %.16326.us331.us, i64 %i.qf ; 4 uses
  %i.qg = getelementptr i8, ptr %next.gep578, i64 64
  %i.qh = getelementptr i8, ptr %next.gep578, i64 128
  %i.qi = getelementptr i8, ptr %next.gep578, i64 192
  %wide.load580 = load <8 x i64>, ptr %next.gep578, align 1, !tbaa !116
  %wide.load581 = load <8 x i64>, ptr %i.qg, align 1, !tbaa !116
  %wide.load582 = load <8 x i64>, ptr %i.qh, align 1, !tbaa !116
  %wide.load583 = load <8 x i64>, ptr %i.qi, align 1, !tbaa !116
  %i.qj = getelementptr i8, ptr %next.gep579, i64 64
  %i.qk = getelementptr i8, ptr %next.gep579, i64 128
  %i.ql = getelementptr i8, ptr %next.gep579, i64 192
  store <8 x i64> %wide.load580, ptr %next.gep579, align 1, !tbaa !116
  store <8 x i64> %wide.load581, ptr %i.qj, align 1, !tbaa !116
  store <8 x i64> %wide.load582, ptr %i.qk, align 1, !tbaa !116
  store <8 x i64> %wide.load583, ptr %i.ql, align 1, !tbaa !116
  %index.next584 = add nuw i64 %index577, 32      ; 2 uses
  %i.qm = icmp eq i64 %index.next584, %n.vec575
  br i1 %i.qm, label %middle.block585, label %vector.body576, !llvm.loop !1428

middle.block585:                                  ; preds = %vector.body576
  br i1 %cmp.n586, label %..loopexit246_crit_edge.us341.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block585
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec575, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.qn = getelementptr i8, ptr %i.px, i64 %i.pm
  %i.qo = getelementptr i8, ptr %.16326.us331.us, i64 %i.pm ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index591 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next595, %vec.epilog.vector.body ] ; 2 uses
  %i.qp = shl i64 %index591, 3                    ; 2 uses
  %next.gep592 = getelementptr i8, ptr %i.px, i64 %i.qp
  %next.gep593 = getelementptr i8, ptr %.16326.us331.us, i64 %i.qp
  %wide.load594 = load <8 x i64>, ptr %next.gep592, align 1, !tbaa !116
  store <8 x i64> %wide.load594, ptr %next.gep593, align 1, !tbaa !116
  %index.next595 = add nuw i64 %index591, 8       ; 2 uses
  %i.qq = icmp eq i64 %index.next595, %n.vec590
  br i1 %i.qq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1429

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n596, label %..loopexit246_crit_edge.us341.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck567, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0199313.us333.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck567 ], [ %i.pj, %vec.epilog.iter.check ], [ %i.pl, %vec.epilog.middle.block ] ; 4 uses
  %.0200312.us334.us.ph = phi ptr [ %i.px, %iter.check ], [ %i.px, %vector.memcheck567 ], [ %i.qd, %vec.epilog.iter.check ], [ %i.qn, %vec.epilog.middle.block ] ; 2 uses
  %.17311.us335.us.ph = phi ptr [ %.16326.us331.us, %iter.check ], [ %.16326.us331.us, %vector.memcheck567 ], [ %i.qe, %vec.epilog.iter.check ], [ %i.qo, %vec.epilog.middle.block ] ; 2 uses
  %i.qr = sub i32 %5, %.0199313.us333.us.ph
  %xtraiter889 = and i32 %i.qr, 7                 ; 2 uses
  %lcmp.mod890.not = icmp eq i32 %xtraiter889, 0
  br i1 %lcmp.mod890.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0199313.us333.us.prol = phi i32 [ %i.qv, %vec.epilog.scalar.ph.prol ], [ %.0199313.us333.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0200312.us334.us.prol = phi ptr [ %i.qu, %vec.epilog.scalar.ph.prol ], [ %.0200312.us334.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.17311.us335.us.prol = phi ptr [ %i.qt, %vec.epilog.scalar.ph.prol ], [ %.17311.us335.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter891 = phi i32 [ %prol.iter891.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qs = load i64, ptr %.0200312.us334.us.prol, align 1, !tbaa !116
  store i64 %i.qs, ptr %.17311.us335.us.prol, align 1, !tbaa !116
  %i.qt = getelementptr inbounds nuw i8, ptr %.17311.us335.us.prol, i64 8 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0200312.us334.us.prol, i64 8 ; 2 uses
  %i.qv = add nuw nsw i32 %.0199313.us333.us.prol, 1 ; 2 uses
  %prol.iter891.next = add i32 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i32 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1430

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa840.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.qt, %vec.epilog.scalar.ph.prol ]
  %.0199313.us333.us.unr = phi i32 [ %.0199313.us333.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qv, %vec.epilog.scalar.ph.prol ]
  %.0200312.us334.us.unr = phi ptr [ %.0200312.us334.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qu, %vec.epilog.scalar.ph.prol ]
  %.17311.us335.us.unr = phi ptr [ %.17311.us335.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qt, %vec.epilog.scalar.ph.prol ]
  %i.qw = sub i32 %.0199313.us333.us.ph, %5
  %i.qx = icmp ugt i32 %i.qw, -8
  br i1 %i.qx, label %..loopexit246_crit_edge.us341.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0199313.us333.us = phi i32 [ %i.rw, %vec.epilog.scalar.ph ], [ %.0199313.us333.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0200312.us334.us = phi ptr [ %i.rv, %vec.epilog.scalar.ph ], [ %.0200312.us334.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.17311.us335.us = phi ptr [ %i.ru, %vec.epilog.scalar.ph ], [ %.17311.us335.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.qy = load i64, ptr %.0200312.us334.us, align 1, !tbaa !116
  store i64 %i.qy, ptr %.17311.us335.us, align 1, !tbaa !116
  %i.qz = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 8
  %i.rb = load i64, ptr %i.ra, align 1, !tbaa !116
  store i64 %i.rb, ptr %i.qz, align 1, !tbaa !116
  %i.rc = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 16
  %i.re = load i64, ptr %i.rd, align 1, !tbaa !116
  store i64 %i.re, ptr %i.rc, align 1, !tbaa !116
  %i.rf = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 24
  %i.rh = load i64, ptr %i.rg, align 1, !tbaa !116
  store i64 %i.rh, ptr %i.rf, align 1, !tbaa !116
  %i.ri = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 32
  %i.rk = load i64, ptr %i.rj, align 1, !tbaa !116
  store i64 %i.rk, ptr %i.ri, align 1, !tbaa !116
  %i.rl = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 40
  %i.rm = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 40
  %i.rn = load i64, ptr %i.rm, align 1, !tbaa !116
  store i64 %i.rn, ptr %i.rl, align 1, !tbaa !116
  %i.ro = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 48
  %i.rp = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 48
  %i.rq = load i64, ptr %i.rp, align 1, !tbaa !116
  store i64 %i.rq, ptr %i.ro, align 1, !tbaa !116
  %i.rr = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 56
  %i.rs = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 56
  %i.rt = load i64, ptr %i.rs, align 1, !tbaa !116
  store i64 %i.rt, ptr %i.rr, align 1, !tbaa !116
  %i.ru = getelementptr inbounds nuw i8, ptr %.17311.us335.us, i64 64 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0200312.us334.us, i64 64
  %i.rw = add nuw nsw i32 %.0199313.us333.us, 8   ; 2 uses
  %exitcond424.not.7 = icmp eq i32 %i.rw, %5
  br i1 %exitcond424.not.7, label %..loopexit246_crit_edge.us341.us, label %vec.epilog.scalar.ph, !llvm.loop !1431

..loopexit246_crit_edge.us341.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block585
  %.lcssa499 = phi ptr [ %i.qo, %vec.epilog.middle.block ], [ %i.qe, %middle.block585 ], [ %.lcssa840.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ru, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 4 ; 3 uses
  %i.rx = icmp slt i64 %indvars.iv.next426, %invariant.op487
  %indvar.next570 = add i64 %indvar569, 1
  br i1 %i.rx, label %iter.check, label %.preheader243.loopexit388, !llvm.loop !1427

bb.j:                                             ; preds = %.lr.ph308, %.loopexit248
  %indvar536 = phi i64 [ 0, %.lr.ph308 ], [ %indvar.next537, %.loopexit248 ] ; 2 uses
  %indvars.iv421 = phi i64 [ %i.bl, %.lr.ph308 ], [ %indvars.iv.next422, %.loopexit248 ] ; 2 uses
  %.9307 = phi ptr [ %.0201.lcssa, %.lr.ph308 ], [ %.15, %.loopexit248 ] ; 13 uses
  %i.ry = mul i64 %i.bw, %indvar536               ; 3 uses
  %i.rz = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.sa = add i64 %indvars.iv421, %i.bn
  %i.sb = mul i64 %i.l, %i.sa
  %i.sc = getelementptr [2 x i8], ptr %i.rz, i64 %i.sb
  %i.sd = getelementptr [2 x i8], ptr %i.sc, i64 %i.bb ; 10 uses
  br i1 %brmerge381, label %.loopexit251, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph291.epil.preheader, label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %.10290 = phi ptr [ %i.ta, %.lr.ph291 ], [ %.9307, %.lr.ph291.preheader ] ; 9 uses
  %.0213288 = phi ptr [ %i.tb, %.lr.ph291 ], [ %i.sd, %.lr.ph291.preheader ] ; 9 uses
  %niter879 = phi i32 [ %niter879.next.7, %.lr.ph291 ], [ 0, %.lr.ph291.preheader ]
  %i.se = load <2 x i64>, ptr %.0213288, align 1, !tbaa !116
  store <2 x i64> %i.se, ptr %.10290, align 1, !tbaa !116
  %i.sf = getelementptr inbounds nuw i8, ptr %.10290, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.0213288, i64 16
  %i.sh = load <2 x i64>, ptr %i.sg, align 1, !tbaa !116
  store <2 x i64> %i.sh, ptr %i.sf, align 1, !tbaa !116
  %i.si = getelementptr inbounds nuw i8, ptr %.10290, i64 32
  %i.sj = getelementptr inbounds nuw i8, ptr %.0213288, i64 32
  %i.sk = load <2 x i64>, ptr %i.sj, align 1, !tbaa !116
  store <2 x i64> %i.sk, ptr %i.si, align 1, !tbaa !116
  %i.sl = getelementptr inbounds nuw i8, ptr %.10290, i64 48
  %i.sm = getelementptr inbounds nuw i8, ptr %.0213288, i64 48
  %i.sn = load <2 x i64>, ptr %i.sm, align 1, !tbaa !116
  store <2 x i64> %i.sn, ptr %i.sl, align 1, !tbaa !116
  %i.so = getelementptr inbounds nuw i8, ptr %.10290, i64 64
  %i.sp = getelementptr inbounds nuw i8, ptr %.0213288, i64 64
  %i.sq = load <2 x i64>, ptr %i.sp, align 1, !tbaa !116
  store <2 x i64> %i.sq, ptr %i.so, align 1, !tbaa !116
  %i.sr = getelementptr inbounds nuw i8, ptr %.10290, i64 80
  %i.ss = getelementptr inbounds nuw i8, ptr %.0213288, i64 80
  %i.st = load <2 x i64>, ptr %i.ss, align 1, !tbaa !116
  store <2 x i64> %i.st, ptr %i.sr, align 1, !tbaa !116
end_hunk_12
begin_hunk_13_@_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.abx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aby = bitcast <8 x i16> %i.abx to <4 x float>
  %i.abz = load i16, ptr %i.abt, align 2, !tbaa !821
  %i.aca = zext i16 %i.abz to i32
  %i.acb = shl nuw i32 %i.aca, 16
  %i.acc = insertelement <4 x i32> poison, i32 %i.acb, i64 0
  %i.acd = bitcast <4 x i32> %i.acc to <4 x float>
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aby, <4 x float> nofpclass(nan inf) %i.ace, <4 x float> nofpclass(nan inf) %i.abr) ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.010791930.us, i64 16 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.911181929.us, i64 4 ; 2 uses
  %niter3579.next.1 = add nuw nsw i32 %niter3579, 2 ; 2 uses
  %niter3579.ncmp.1 = icmp eq i32 %niter3579.next.1, %unroll_iter3578
  br i1 %niter3579.ncmp.1, label %._crit_edge1934.us.unr-lcssa, label %.lr.ph1933.us, !llvm.loop !1540

._crit_edge1934.us.unr-lcssa:                     ; preds = %.lr.ph1933.us
  br i1 %lcmp.mod3575.not, label %._crit_edge1934.us, label %.lr.ph1933.us.epil.preheader

.lr.ph1933.us.epil.preheader:                     ; preds = %._crit_edge1934.us.unr-lcssa, %.lr.ph1933.us.preheader
  %.010791930.us.epil.init = phi ptr [ %.21951, %.lr.ph1933.us.preheader ], [ %i.acg, %._crit_edge1934.us.unr-lcssa ]
  %.911181929.us.epil.init = phi ptr [ %.811171937.us, %.lr.ph1933.us.preheader ], [ %i.ach, %._crit_edge1934.us.unr-lcssa ]
  %.115341928.us.epil.init = phi <4 x float> [ %.115341928.us.ph, %.lr.ph1933.us.preheader ], [ %i.acf, %._crit_edge1934.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3577)
  %i.aci = load i64, ptr %.010791930.us.epil.init, align 1, !tbaa !116
  %i.acj = insertelement <2 x i64> poison, i64 %i.aci, i64 0
  %i.ack = bitcast <2 x i64> %i.acj to <8 x i16>
  %i.acl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ack, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acm = bitcast <8 x i16> %i.acl to <4 x float>
  %i.acn = load i16, ptr %.911181929.us.epil.init, align 2, !tbaa !821
  %i.aco = zext i16 %i.acn to i32
  %i.acp = shl nuw i32 %i.aco, 16
  %i.acq = insertelement <4 x i32> poison, i32 %i.acp, i64 0
  %i.acr = bitcast <4 x i32> %i.acq to <4 x float>
  %i.acs = shufflevector <4 x float> %i.acr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.act = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.acm, <4 x float> nofpclass(nan inf) %i.acs, <4 x float> nofpclass(nan inf) %.115341928.us.epil.init)
  br label %._crit_edge1934.us

._crit_edge1934.us:                               ; preds = %._crit_edge1934.us.unr-lcssa, %.lr.ph1933.us.epil.preheader
  %.lcssa3479 = phi <4 x float> [ %i.acf, %._crit_edge1934.us.unr-lcssa ], [ %i.act, %.lr.ph1933.us.epil.preheader ]
  %i.acu = getelementptr i8, ptr %.811171937.us, i64 %i.lg
  %scevgep2487 = getelementptr i8, ptr %i.acu, i64 2
  store <4 x float> %.lcssa3479, ptr %.171939.us, align 16, !tbaa !116
  %i.acv = getelementptr inbounds nuw i8, ptr %.171939.us, i64 16 ; 2 uses
  %i.acw = add nuw nsw i32 %.411081938.us, 1      ; 2 uses
  %exitcond2489.not = icmp eq i32 %i.acw, %6
  br i1 %exitcond2489.not, label %._crit_edge1941, label %.lr.ph1940.split.us, !llvm.loop !1541

.lr.ph1940.split:                                 ; preds = %.lr.ph1940
  br i1 %.not1210, label %.lr.ph1940.split.split.us.preheader, label %.lr.ph1940.split.split.preheader

.lr.ph1940.split.split.preheader:                 ; preds = %.lr.ph1940.split
  %scevgep2483 = getelementptr i8, ptr %.16.lcssa, i64 16
  %i.acx = sub i32 %i.lf, %.31107.lcssa
  %i.acy = zext i32 %i.acx to i64
  %i.acz = shl nuw nsw i64 %i.acy, 4
  %scevgep2484 = getelementptr i8, ptr %scevgep2483, i64 %i.acz
  br label %._crit_edge1941

.lr.ph1940.split.split.us.preheader:              ; preds = %.lr.ph1940.split
  %i.ada = sub i32 %i.lf, %.31107.lcssa
  %i.adb = zext i32 %i.ada to i64
  %i.adc = shl nuw nsw i64 %i.adb, 4              ; 2 uses
  %i.add = add nuw nsw i64 %i.adc, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.16.lcssa, i8 0, i64 %i.add, i1 false), !tbaa !116
  %scevgep2485 = getelementptr i8, ptr %.16.lcssa, i64 16
  %scevgep2486 = getelementptr i8, ptr %scevgep2485, i64 %i.adc
  br label %._crit_edge1941

.lr.ph1924:                                       ; preds = %.preheader1561, %._crit_edge1917
  %.161923 = phi ptr [ %i.afa, %._crit_edge1917 ], [ %.15.lcssa, %.preheader1561 ] ; 5 uses
  %.311071922 = phi i32 [ %i.afb, %._crit_edge1917 ], [ %.21106.lcssa, %.preheader1561 ]
  %.611151921 = phi ptr [ %.71116.lcssa, %._crit_edge1917 ], [ %.41113.lcssa, %.preheader1561 ] ; 4 uses
  br i1 %.not1210, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1924
  %i.ade = load <4 x float>, ptr %.161923, align 16, !tbaa !116
  %i.adf = getelementptr inbounds nuw i8, ptr %.161923, i64 16
  %i.adg = load <4 x float>, ptr %i.adf, align 16, !tbaa !116
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph1924
  %.01531 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1924 ], [ %i.adg, %bb.ac ] ; 3 uses
  %.01529 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1924 ], [ %i.ade, %bb.ac ] ; 3 uses
  br i1 %i.kv, label %.lr.ph1916.preheader, label %._crit_edge1917

.lr.ph1916.preheader:                             ; preds = %bb.ad
  br i1 %i.lj, label %.lr.ph1916.epil.preheader, label %.lr.ph1916

.lr.ph1916:                                       ; preds = %.lr.ph1916.preheader, %.lr.ph1916
  %.010811913 = phi ptr [ %i.aej, %.lr.ph1916 ], [ %.21951, %.lr.ph1916.preheader ] ; 3 uses
  %.711161912 = phi ptr [ %i.aek, %.lr.ph1916 ], [ %.611151921, %.lr.ph1916.preheader ] ; 3 uses
  %.115301911 = phi <4 x float> [ %i.aeh, %.lr.ph1916 ], [ %.01529, %.lr.ph1916.preheader ]
  %.115321910 = phi <4 x float> [ %i.aei, %.lr.ph1916 ], [ %.01531, %.lr.ph1916.preheader ]
  %niter3573 = phi i32 [ %niter3573.next.1, %.lr.ph1916 ], [ 0, %.lr.ph1916.preheader ]
  %i.adh = load i64, ptr %.010811913, align 1, !tbaa !116
  %i.adi = insertelement <2 x i64> poison, i64 %i.adh, i64 0
  %i.adj = bitcast <2 x i64> %i.adi to <8 x i16>
  %i.adk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adl = bitcast <8 x i16> %i.adk to <4 x float> ; 2 uses
  %i.adm = load float, ptr %.711161912, align 1, !tbaa !116
  %i.adn = insertelement <4 x float> poison, float %i.adm, i64 0
  %i.ado = bitcast <4 x float> %i.adn to <8 x i16>
  %i.adp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ado, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.adq = bitcast <8 x i16> %i.adp to <4 x float> ; 2 uses
  %i.adr = shufflevector <4 x float> %i.adq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ads = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.adl, <4 x float> nofpclass(nan inf) %i.adq, <4 x float> nofpclass(nan inf) %.115301911)
  %i.adt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.adl, <4 x float> nofpclass(nan inf) %i.adr, <4 x float> nofpclass(nan inf) %.115321910)
  %i.adu = getelementptr inbounds nuw i8, ptr %.010811913, i64 8
  %i.adv = getelementptr inbounds nuw i8, ptr %.711161912, i64 4
  %i.adw = load i64, ptr %i.adu, align 1, !tbaa !116
  %i.adx = insertelement <2 x i64> poison, i64 %i.adw, i64 0
  %i.ady = bitcast <2 x i64> %i.adx to <8 x i16>
  %i.adz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ady, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aea = bitcast <8 x i16> %i.adz to <4 x float> ; 2 uses
  %i.aeb = load float, ptr %i.adv, align 1, !tbaa !116
  %i.aec = insertelement <4 x float> poison, float %i.aeb, i64 0
  %i.aed = bitcast <4 x float> %i.aec to <8 x i16>
  %i.aee = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.aef = bitcast <8 x i16> %i.aee to <4 x float> ; 2 uses
  %i.aeg = shufflevector <4 x float> %i.aef, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aeh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aea, <4 x float> nofpclass(nan inf) %i.aef, <4 x float> nofpclass(nan inf) %i.ads) ; 3 uses
  %i.aei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aea, <4 x float> nofpclass(nan inf) %i.aeg, <4 x float> nofpclass(nan inf) %i.adt) ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.010811913, i64 16 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.711161912, i64 8 ; 2 uses
  %niter3573.next.1 = add nuw nsw i32 %niter3573, 2 ; 2 uses
  %niter3573.ncmp.1 = icmp eq i32 %niter3573.next.1, %unroll_iter3572
  br i1 %niter3573.ncmp.1, label %._crit_edge1917.loopexit.unr-lcssa, label %.lr.ph1916, !llvm.loop !1542

._crit_edge1917.loopexit.unr-lcssa:               ; preds = %.lr.ph1916
  br i1 %lcmp.mod3568.not, label %._crit_edge1917.loopexit, label %.lr.ph1916.epil.preheader

.lr.ph1916.epil.preheader:                        ; preds = %._crit_edge1917.loopexit.unr-lcssa, %.lr.ph1916.preheader
  %.010811913.epil.init = phi ptr [ %.21951, %.lr.ph1916.preheader ], [ %i.aej, %._crit_edge1917.loopexit.unr-lcssa ]
  %.711161912.epil.init = phi ptr [ %.611151921, %.lr.ph1916.preheader ], [ %i.aek, %._crit_edge1917.loopexit.unr-lcssa ]
  %.115301911.epil.init = phi <4 x float> [ %.01529, %.lr.ph1916.preheader ], [ %i.aeh, %._crit_edge1917.loopexit.unr-lcssa ]
  %.115321910.epil.init = phi <4 x float> [ %.01531, %.lr.ph1916.preheader ], [ %i.aei, %._crit_edge1917.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3571)
  %i.ael = load i64, ptr %.010811913.epil.init, align 1, !tbaa !116
  %i.aem = insertelement <2 x i64> poison, i64 %i.ael, i64 0
  %i.aen = bitcast <2 x i64> %i.aem to <8 x i16>
  %i.aeo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aen, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aep = bitcast <8 x i16> %i.aeo to <4 x float> ; 2 uses
  %i.aeq = load float, ptr %.711161912.epil.init, align 1, !tbaa !116
  %i.aer = insertelement <4 x float> poison, float %i.aeq, i64 0
  %i.aes = bitcast <4 x float> %i.aer to <8 x i16>
  %i.aet = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aes, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.aeu = bitcast <8 x i16> %i.aet to <4 x float> ; 2 uses
  %i.aev = shufflevector <4 x float> %i.aeu, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aew = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aep, <4 x float> nofpclass(nan inf) %i.aeu, <4 x float> nofpclass(nan inf) %.115301911.epil.init)
  %i.aex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aep, <4 x float> nofpclass(nan inf) %i.aev, <4 x float> nofpclass(nan inf) %.115321910.epil.init)
  br label %._crit_edge1917.loopexit

._crit_edge1917.loopexit:                         ; preds = %._crit_edge1917.loopexit.unr-lcssa, %.lr.ph1916.epil.preheader
  %.lcssa3476 = phi <4 x float> [ %i.aeh, %._crit_edge1917.loopexit.unr-lcssa ], [ %i.aew, %.lr.ph1916.epil.preheader ]
  %.lcssa3475 = phi <4 x float> [ %i.aei, %._crit_edge1917.loopexit.unr-lcssa ], [ %i.aex, %.lr.ph1916.epil.preheader ]
  %i.aey = getelementptr i8, ptr %.611151921, i64 %i.le
  %scevgep2481 = getelementptr i8, ptr %i.aey, i64 4
  br label %._crit_edge1917

._crit_edge1917:                                  ; preds = %._crit_edge1917.loopexit, %bb.ad
  %.11532.lcssa = phi <4 x float> [ %.01531, %bb.ad ], [ %.lcssa3475, %._crit_edge1917.loopexit ]
  %.11530.lcssa = phi <4 x float> [ %.01529, %bb.ad ], [ %.lcssa3476, %._crit_edge1917.loopexit ]
  %.71116.lcssa = phi ptr [ %.611151921, %bb.ad ], [ %scevgep2481, %._crit_edge1917.loopexit ] ; 2 uses
  store <4 x float> %.11530.lcssa, ptr %.161923, align 16, !tbaa !116
  %i.aez = getelementptr inbounds nuw i8, ptr %.161923, i64 16
  store <4 x float> %.11532.lcssa, ptr %i.aez, align 16, !tbaa !116
  %i.afa = getelementptr inbounds nuw i8, ptr %.161923, i64 32 ; 2 uses
  %i.afb = add nuw nsw i32 %.311071922, 2         ; 3 uses
  %i.afc = or disjoint i32 %i.afb, 1
  %i.afd = icmp slt i32 %i.afc, %6
  br i1 %i.afd, label %.lr.ph1924, label %.preheader1560, !llvm.loop !1543

._crit_edge1941:                                  ; preds = %._crit_edge1934.us, %.lr.ph1940.split.split.preheader, %.lr.ph1940.split.split.us.preheader, %.preheader1560
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader1560 ], [ %scevgep2486, %.lr.ph1940.split.split.us.preheader ], [ %scevgep2484, %.lr.ph1940.split.split.preheader ], [ %i.acv, %._crit_edge1934.us ] ; 2 uses
  %i.afe = getelementptr inbounds [2 x i8], ptr %.21951, i64 %i.kx ; 2 uses
  %i.aff = add nuw nsw i32 %.29321949, 4          ; 3 uses
  %i.afg = or disjoint i32 %i.aff, 3
  %i.afh = icmp slt i32 %i.afg, %4
  br i1 %i.afh, label %.preheader1564, label %.preheader1559, !llvm.loop !1544

.preheader1558:                                   ; preds = %.preheader1558.lr.ph, %._crit_edge2047
  %.32051 = phi ptr [ %.2.lcssa, %.preheader1558.lr.ph ], [ %i.auz, %._crit_edge2047 ] ; 19 uses
  %.182050 = phi ptr [ %.12.lcssa, %.preheader1558.lr.ph ], [ %.23.lcssa, %._crit_edge2047 ] ; 2 uses
  %.39332049 = phi i32 [ %.2932.lcssa, %.preheader1558.lr.ph ], [ %i.ava, %._crit_edge2047 ]
  br i1 %i.un, label %.lr.ph1970, label %.preheader1557

.preheader1553:                                   ; preds = %._crit_edge2047, %.preheader1559
  %.3933.lcssa = phi i32 [ %.2932.lcssa, %.preheader1559 ], [ %i.ava, %._crit_edge2047 ] ; 2 uses
  %.18.lcssa = phi ptr [ %.12.lcssa, %.preheader1559 ], [ %.23.lcssa, %._crit_edge2047 ]
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader1559 ], [ %i.auz, %._crit_edge2047 ]
  %i.afi = icmp slt i32 %.3933.lcssa, %4
  br i1 %i.afi, label %.preheader1552.lr.ph, label %.loopexit

.preheader1552.lr.ph:                             ; preds = %.preheader1553
  %i.afj = icmp sgt i32 %6, 15
  %.not1200 = icmp eq i32 %7, 0                   ; 5 uses
  %i.afk = icmp sgt i32 %8, 3                     ; 5 uses
  %i.afl = sext i32 %8 to i64
  %i.afm = add i32 %8, -4                         ; 6 uses
  %i.afn = and i32 %i.afm, -4
  %i.afo = add nuw nsw i32 %i.afn, 4              ; 5 uses
  %i.afp = and i32 %6, -16
  %i.afq = lshr i32 %i.afm, 2
  %i.afr = zext nneg i32 %i.afq to i64            ; 5 uses
  %i.afs = shl nuw nsw i64 %i.afr, 6
  %i.aft = shl nuw nsw i64 %i.afr, 5
  %i.afu = shl nuw nsw i64 %i.afr, 4
  %i.afv = shl nuw nsw i64 %i.afr, 3
  %i.afw = add nuw nsw i64 %i.afr, 1              ; 10 uses
  %min.iters.check3221 = icmp ult i32 %i.afm, 12
  %min.iters.check3223 = icmp ult i32 %i.afm, 60
  %i.afx = and i64 %i.afw, 12
  %n.vec3225 = and i64 %i.afw, 2147483632         ; 6 uses
  %i.afy = trunc nuw nsw i64 %n.vec3225 to i32
  %i.afz = shl i32 %i.afy, 2
  %i.aga = shl nuw nsw i64 %n.vec3225, 3
  %i.agb = shl nuw nsw i64 %n.vec3225, 4
  %cmp.n3254 = icmp eq i64 %i.afw, %n.vec3225
  %min.epilog.iters.check3269 = icmp eq i64 %i.afx, 0
  %n.vec3271 = and i64 %i.afw, 2147483644         ; 5 uses
  %i.agc = trunc nuw nsw i64 %n.vec3271 to i32
  %i.agd = shl i32 %i.agc, 2
  %i.age = shl nuw nsw i64 %n.vec3271, 3
  %i.agf = shl nuw nsw i64 %n.vec3271, 4
  %cmp.n3300 = icmp eq i64 %i.afw, %n.vec3271
  %min.iters.check3060 = icmp ult i32 %i.afm, 28
  %min.iters.check3062 = icmp ult i32 %i.afm, 124
  %i.agg = and i64 %i.afw, 24
  %n.vec3064 = and i64 %i.afw, 2147483616         ; 5 uses
  %i.agh = trunc nuw nsw i64 %n.vec3064 to i32
  %i.agi = shl i32 %i.agh, 2
  %i.agj = shl nuw nsw i64 %n.vec3064, 3          ; 2 uses
  %cmp.n3105 = icmp eq i64 %i.afw, %n.vec3064
  %min.epilog.iters.check3116 = icmp eq i64 %i.agg, 0
  %n.vec3118 = and i64 %i.afw, 2147483640         ; 4 uses
  %i.agk = trunc nuw nsw i64 %n.vec3118 to i32
  %i.agl = shl i32 %i.agk, 2
  %i.agm = shl nuw nsw i64 %n.vec3118, 3          ; 2 uses
  %cmp.n3139 = icmp eq i64 %i.afw, %n.vec3118
  br label %.preheader1552

.preheader1557:                                   ; preds = %._crit_edge1963, %.preheader1558
  %.01068.lcssa = phi ptr [ %i.c, %.preheader1558 ], [ %.11069.lcssa, %._crit_edge1963 ] ; 2 uses
  %.01063.lcssa = phi i32 [ 0, %.preheader1558 ], [ %i.uu, %._crit_edge1963 ] ; 3 uses
  %.19.lcssa = phi ptr [ %.182050, %.preheader1558 ], [ %i.ahv, %._crit_edge1963 ] ; 2 uses
  %i.agn = or disjoint i32 %.01063.lcssa, 7
  %i.ago = icmp slt i32 %i.agn, %6
  br i1 %i.ago, label %.lr.ph1988, label %.preheader1556

.lr.ph1970:                                       ; preds = %.preheader1558, %._crit_edge1963
  %.191969 = phi ptr [ %i.ahv, %._crit_edge1963 ], [ %.182050, %.preheader1558 ] ; 5 uses
  %.010631968 = phi i32 [ %i.ahw, %._crit_edge1963 ], [ 0, %.preheader1558 ]
  %.010681967 = phi ptr [ %.11069.lcssa, %._crit_edge1963 ], [ %i.c, %.preheader1558 ] ; 3 uses
  br i1 %.not1205, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1970
  %i.agp = load <16 x float>, ptr %.191969, align 1, !tbaa !116
  %i.agq = getelementptr inbounds nuw i8, ptr %.191969, i64 64
  %i.agr = load <16 x float>, ptr %i.agq, align 1, !tbaa !116
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph1970
  %.01061 = phi nsz <16 x float> [ %i.agp, %bb.ae ], [ zeroinitializer, %.lr.ph1970 ] ; 2 uses
  %.01059 = phi nsz <16 x float> [ %i.agr, %bb.ae ], [ zeroinitializer, %.lr.ph1970 ] ; 2 uses
  br i1 %i.uo, label %.lr.ph1962, label %._crit_edge1963

.lr.ph1962:                                       ; preds = %bb.af, %.lr.ph1962
  %.010571960 = phi i32 [ %i.ahs, %.lr.ph1962 ], [ 0, %bb.af ]
  %.010581959 = phi ptr [ %i.ahq, %.lr.ph1962 ], [ %.32051, %bb.af ] ; 2 uses
  %.110601958 = phi <16 x float> [ %i.ahp, %.lr.ph1962 ], [ %.01059, %bb.af ]
  %.110621957 = phi <16 x float> [ %i.aho, %.lr.ph1962 ], [ %.01061, %bb.af ]
  %.110691956 = phi ptr [ %i.ahr, %.lr.ph1962 ], [ %.010681967, %bb.af ] ; 2 uses
  %i.ags = load i32, ptr %.010581959, align 4, !tbaa !45
  %i.agt = insertelement <8 x i32> poison, i32 %i.ags, i64 0
  %i.agu = shufflevector <8 x i32> %i.agt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.agv = bitcast <8 x i32> %i.agu to <16 x i16> ; 2 uses
  %i.agw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.agv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.agx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.agv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.agy = shufflevector <16 x i16> %i.agw, <16 x i16> %i.agx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.agz = shufflevector <16 x i16> %i.agw, <16 x i16> %i.agx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aha = bitcast <16 x i16> %i.agy to <8 x i32>
  %i.ahb = bitcast <16 x i16> %i.agz to <8 x i32>
  %i.ahc = shufflevector <8 x i32> %i.aha, <8 x i32> %i.ahb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahd = bitcast <16 x i32> %i.ahc to <16 x float> ; 2 uses
  %i.ahe = load <16 x i16>, ptr %.110691956, align 1, !tbaa !116 ; 2 uses
  %i.ahf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ahe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ahg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ahe, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ahh = shufflevector <16 x i16> %i.ahf, <16 x i16> %i.ahg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahi = shufflevector <16 x i16> %i.ahf, <16 x i16> %i.ahg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahj = bitcast <16 x i16> %i.ahh to <8 x i32>
  %i.ahk = bitcast <16 x i16> %i.ahi to <8 x i32>
  %i.ahl = shufflevector <8 x i32> %i.ahj, <8 x i32> %i.ahk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahm = bitcast <16 x i32> %i.ahl to <16 x float> ; 2 uses
  %i.ahn = shufflevector <16 x float> %i.ahm, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.aho = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahd, <16 x float> nofpclass(nan inf) %i.ahm, <16 x float> nofpclass(nan inf) %.110621957) ; 2 uses
  %i.ahp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahd, <16 x float> nofpclass(nan inf) %i.ahn, <16 x float> nofpclass(nan inf) %.110601958) ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.010581959, i64 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %.110691956, i64 32
  %i.ahs = add nuw nsw i32 %.010571960, 1         ; 2 uses
  %exitcond2491.not = icmp eq i32 %i.ahs, %8
  br i1 %exitcond2491.not, label %._crit_edge1963.loopexit, label %.lr.ph1962, !llvm.loop !1545

._crit_edge1963.loopexit:                         ; preds = %.lr.ph1962
  %i.aht = getelementptr i8, ptr %.010681967, i64 %i.ut
  %scevgep2490 = getelementptr i8, ptr %i.aht, i64 32
  br label %._crit_edge1963

._crit_edge1963:                                  ; preds = %._crit_edge1963.loopexit, %bb.af
  %.11069.lcssa = phi ptr [ %.010681967, %bb.af ], [ %scevgep2490, %._crit_edge1963.loopexit ] ; 2 uses
  %.11062.lcssa = phi <16 x float> [ %.01061, %bb.af ], [ %i.aho, %._crit_edge1963.loopexit ]
  %.11060.lcssa = phi <16 x float> [ %.01059, %bb.af ], [ %i.ahp, %._crit_edge1963.loopexit ]
  store <16 x float> %.11062.lcssa, ptr %.191969, align 1, !tbaa !116
  %i.ahu = getelementptr inbounds nuw i8, ptr %.191969, i64 64
  store <16 x float> %.11060.lcssa, ptr %i.ahu, align 1, !tbaa !116
  %i.ahv = getelementptr inbounds nuw i8, ptr %.191969, i64 128 ; 2 uses
  %i.ahw = add nuw nsw i32 %.010631968, 16        ; 2 uses
  %i.ahx = or disjoint i32 %i.ahw, 15
  %i.ahy = icmp slt i32 %i.ahx, %6
  br i1 %i.ahy, label %.lr.ph1970, label %.preheader1557, !llvm.loop !1546

.preheader1556:                                   ; preds = %._crit_edge1981, %.preheader1557
  %.21070.lcssa = phi ptr [ %.01068.lcssa, %.preheader1557 ], [ %.31071.lcssa, %._crit_edge1981 ] ; 2 uses
  %.11064.lcssa = phi i32 [ %.01063.lcssa, %.preheader1557 ], [ %i.aiz, %._crit_edge1981 ] ; 3 uses
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader1557 ], [ %i.aiy, %._crit_edge1981 ] ; 2 uses
  %i.ahz = or disjoint i32 %.11064.lcssa, 3
  %i.aia = icmp slt i32 %i.ahz, %6
  br i1 %i.aia, label %.lr.ph2006, label %.preheader1555

.lr.ph1988:                                       ; preds = %.preheader1557, %._crit_edge1981
  %.201987 = phi ptr [ %i.aiy, %._crit_edge1981 ], [ %.19.lcssa, %.preheader1557 ] ; 5 uses
  %.110641986 = phi i32 [ %i.aiz, %._crit_edge1981 ], [ %.01063.lcssa, %.preheader1557 ]
  %.210701985 = phi ptr [ %.31071.lcssa, %._crit_edge1981 ], [ %.01068.lcssa, %.preheader1557 ] ; 3 uses
  br i1 %.not1205, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph1988
  %i.aib = load <8 x float>, ptr %.201987, align 1, !tbaa !116
  %i.aic = getelementptr inbounds nuw i8, ptr %.201987, i64 32
  %i.aid = load <8 x float>, ptr %i.aic, align 1, !tbaa !116
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph1988
  %.01537 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph1988 ], [ %i.aid, %bb.ag ] ; 2 uses
  %.01535 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph1988 ], [ %i.aib, %bb.ag ] ; 2 uses
  br i1 %i.uo, label %.lr.ph1980, label %._crit_edge1981

.lr.ph1980:                                       ; preds = %bb.ah, %.lr.ph1980
  %.010491978 = phi i32 [ %i.aiv, %.lr.ph1980 ], [ 0, %bb.ah ]
  %.010501977 = phi ptr [ %i.ait, %.lr.ph1980 ], [ %.32051, %bb.ah ] ; 2 uses
  %.310711976 = phi ptr [ %i.aiu, %.lr.ph1980 ], [ %.210701985, %bb.ah ] ; 2 uses
  %.115361975 = phi <8 x float> [ %i.air, %.lr.ph1980 ], [ %.01535, %bb.ah ]
  %.115381974 = phi <8 x float> [ %i.ais, %.lr.ph1980 ], [ %.01537, %bb.ah ]
  %i.aie = load float, ptr %.010501977, align 1, !tbaa !116
  %i.aif = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.aig = load <8 x i16>, ptr %.310711976, align 1, !tbaa !116 ; 2 uses
  %i.aih = bitcast <4 x float> %i.aif to <8 x i16> ; 2 uses
  %i.aii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.aij = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aih, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 8, i32 7, i32 9>
  %i.aik = shufflevector <8 x i16> %i.aii, <8 x i16> %i.aij, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ail = bitcast <16 x i16> %i.aik to <8 x float> ; 2 uses
  %i.aim = shufflevector <8 x float> %i.ail, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ain = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aig, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aio = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aig, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aip = shufflevector <8 x i16> %i.ain, <8 x i16> %i.aio, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aiq = bitcast <16 x i16> %i.aip to <8 x float> ; 2 uses
  %i.air = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ail, <8 x float> nofpclass(nan inf) %i.aiq, <8 x float> nofpclass(nan inf) %.115361975) ; 2 uses
  %i.ais = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aim, <8 x float> nofpclass(nan inf) %i.aiq, <8 x float> nofpclass(nan inf) %.115381974) ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.010501977, i64 4
  %i.aiu = getelementptr inbounds nuw i8, ptr %.310711976, i64 16
  %i.aiv = add nuw nsw i32 %.010491978, 1         ; 2 uses
  %exitcond2493.not = icmp eq i32 %i.aiv, %8
  br i1 %exitcond2493.not, label %._crit_edge1981.loopexit, label %.lr.ph1980, !llvm.loop !1547

._crit_edge1981.loopexit:                         ; preds = %.lr.ph1980
  %i.aiw = getelementptr i8, ptr %.210701985, i64 %i.uv
  %scevgep2492 = getelementptr i8, ptr %i.aiw, i64 16
  br label %._crit_edge1981

._crit_edge1981:                                  ; preds = %._crit_edge1981.loopexit, %bb.ah
  %.11538.lcssa = phi <8 x float> [ %.01537, %bb.ah ], [ %i.ais, %._crit_edge1981.loopexit ]
  %.11536.lcssa = phi <8 x float> [ %.01535, %bb.ah ], [ %i.air, %._crit_edge1981.loopexit ]
  %.31071.lcssa = phi ptr [ %.210701985, %bb.ah ], [ %scevgep2492, %._crit_edge1981.loopexit ] ; 2 uses
  store <8 x float> %.11536.lcssa, ptr %.201987, align 1, !tbaa !116
  %i.aix = getelementptr inbounds nuw i8, ptr %.201987, i64 32
  store <8 x float> %.11538.lcssa, ptr %i.aix, align 1, !tbaa !116
  %i.aiy = getelementptr inbounds nuw i8, ptr %.201987, i64 64 ; 2 uses
  %i.aiz = add nuw nsw i32 %.110641986, 8         ; 3 uses
  %i.aja = or disjoint i32 %i.aiz, 7
  %i.ajb = icmp slt i32 %i.aja, %6
  br i1 %i.ajb, label %.lr.ph1988, label %.preheader1556, !llvm.loop !1548

.preheader1555:                                   ; preds = %._crit_edge1999, %.preheader1556
  %.41072.lcssa = phi ptr [ %.21070.lcssa, %.preheader1556 ], [ %.51073.lcssa, %._crit_edge1999 ] ; 2 uses
  %.21065.lcssa = phi i32 [ %.11064.lcssa, %.preheader1556 ], [ %i.ald, %._crit_edge1999 ] ; 3 uses
  %.21.lcssa = phi ptr [ %.20.lcssa, %.preheader1556 ], [ %i.alc, %._crit_edge1999 ] ; 2 uses
  %i.ajc = or disjoint i32 %.21065.lcssa, 1
  %i.ajd = icmp slt i32 %i.ajc, %6
  br i1 %i.ajd, label %.lr.ph2028.preheader, label %.preheader1554

.lr.ph2028.preheader:                             ; preds = %.preheader1555
  %i.aje = getelementptr i8, ptr %.32051, i64 %i.vd
  %i.ajf = getelementptr i8, ptr %.32051, i64 %i.vf
end_hunk_13
