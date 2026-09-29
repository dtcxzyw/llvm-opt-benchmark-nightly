Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_qsort?download=true
inline.NumInlined: 86
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@SDL_qsort_r_REAL:bb.a
  %i.uw = getelementptr i8, ptr %next.gep516, i64 16 ; 2 uses
  %wide.load518 = load <4 x i32>, ptr %next.gep516, align 4, !alias.scope !145, !noalias !146
  %wide.load519 = load <4 x i32>, ptr %i.uw, align 4, !alias.scope !145, !noalias !146
  %i.ux = getelementptr i8, ptr %next.gep517, i64 16 ; 2 uses
  %wide.load520 = load <4 x i32>, ptr %next.gep517, align 4, !alias.scope !146
  %wide.load521 = load <4 x i32>, ptr %i.ux, align 4, !alias.scope !146
  store <4 x i32> %wide.load520, ptr %next.gep516, align 4, !alias.scope !145, !noalias !146
  store <4 x i32> %wide.load521, ptr %i.uw, align 4, !alias.scope !145, !noalias !146
  store <4 x i32> %wide.load518, ptr %next.gep517, align 4, !alias.scope !146
  store <4 x i32> %wide.load519, ptr %i.ux, align 4, !alias.scope !146
  %index.next522 = add nuw i64 %index515, 8       ; 2 uses
  %i.uy = icmp eq i64 %index.next522, %n.vec513
  br i1 %i.uy, label %middle.block523, label %vector.body514, !llvm.loop !111

middle.block523:                                  ; preds = %vector.body514
  br i1 %cmp.n524, label %.loopexit, label %.preheader301.i87.preheader682

.preheader301.i87.preheader682:                   ; preds = %vector.memcheck505, %.preheader301.i87.preheader, %middle.block523
  %.0234.i88.ph = phi ptr [ %.4.lcssa.i67, %vector.memcheck505 ], [ %.4.lcssa.i67, %.preheader301.i87.preheader ], [ %i.ut, %middle.block523 ] ; 2 uses
  %.0233.i89.ph = phi ptr [ %.4239.lcssa.i69, %vector.memcheck505 ], [ %.4239.lcssa.i69, %.preheader301.i87.preheader ], [ %i.uu, %middle.block523 ] ; 2 uses
  %.0232.i90.ph = phi i64 [ %2, %vector.memcheck505 ], [ %2, %.preheader301.i87.preheader ], [ %i.np, %middle.block523 ] ; 3 uses
  %i.uz = add i64 %.0232.i90.ph, -4               ; 2 uses
  %i.va = lshr i64 %i.uz, 2
  %i.vb = add nuw nsw i64 %i.va, 1
  %xtraiter733 = and i64 %i.vb, 3                 ; 2 uses
  %lcmp.mod734.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod734.not, label %.preheader301.i87.prol.loopexit, label %.preheader301.i87.prol

.preheader301.i87.prol:                           ; preds = %.preheader301.i87.preheader682, %.preheader301.i87.prol
  %.0234.i88.prol = phi ptr [ %i.ve, %.preheader301.i87.prol ], [ %.0234.i88.ph, %.preheader301.i87.preheader682 ] ; 3 uses
  %.0233.i89.prol = phi ptr [ %i.vf, %.preheader301.i87.prol ], [ %.0233.i89.ph, %.preheader301.i87.preheader682 ] ; 3 uses
  %.0232.i90.prol = phi i64 [ %i.vg, %.preheader301.i87.prol ], [ %.0232.i90.ph, %.preheader301.i87.preheader682 ]
  %prol.iter735 = phi i64 [ %prol.iter735.next, %.preheader301.i87.prol ], [ 0, %.preheader301.i87.preheader682 ]
  %i.vc = load i32, ptr %.0234.i88.prol, align 4
  %i.vd = load i32, ptr %.0233.i89.prol, align 4
  %i.ve = getelementptr inbounds nuw i8, ptr %.0234.i88.prol, i64 4 ; 2 uses
  store i32 %i.vd, ptr %.0234.i88.prol, align 4
  %i.vf = getelementptr inbounds nuw i8, ptr %.0233.i89.prol, i64 4 ; 2 uses
  store i32 %i.vc, ptr %.0233.i89.prol, align 4
  %i.vg = add i64 %.0232.i90.prol, -4             ; 2 uses
  %prol.iter735.next = add i64 %prol.iter735, 1   ; 2 uses
  %prol.iter735.cmp.not = icmp eq i64 %prol.iter735.next, %xtraiter733
  br i1 %prol.iter735.cmp.not, label %.preheader301.i87.prol.loopexit, label %.preheader301.i87.prol, !llvm.loop !112

.preheader301.i87.prol.loopexit:                  ; preds = %.preheader301.i87.prol, %.preheader301.i87.preheader682
  %.0234.i88.unr = phi ptr [ %.0234.i88.ph, %.preheader301.i87.preheader682 ], [ %i.ve, %.preheader301.i87.prol ]
  %.0233.i89.unr = phi ptr [ %.0233.i89.ph, %.preheader301.i87.preheader682 ], [ %i.vf, %.preheader301.i87.prol ]
  %.0232.i90.unr = phi i64 [ %.0232.i90.ph, %.preheader301.i87.preheader682 ], [ %i.vg, %.preheader301.i87.prol ]
  %i.vh = icmp ult i64 %i.uz, 12
  br i1 %i.vh, label %.loopexit, label %.preheader301.i87

.preheader301.i87:                                ; preds = %.preheader301.i87.prol.loopexit, %.preheader301.i87
  %.0234.i88 = phi ptr [ %i.vw, %.preheader301.i87 ], [ %.0234.i88.unr, %.preheader301.i87.prol.loopexit ] ; 6 uses
  %.0233.i89 = phi ptr [ %i.vx, %.preheader301.i87 ], [ %.0233.i89.unr, %.preheader301.i87.prol.loopexit ] ; 6 uses
  %.0232.i90 = phi i64 [ %i.vy, %.preheader301.i87 ], [ %.0232.i90.unr, %.preheader301.i87.prol.loopexit ]
  %i.vi = load i32, ptr %.0234.i88, align 4
  %i.vj = load i32, ptr %.0233.i89, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.0234.i88, i64 4 ; 2 uses
  store i32 %i.vj, ptr %.0234.i88, align 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.0233.i89, i64 4 ; 2 uses
  store i32 %i.vi, ptr %.0233.i89, align 4
  %i.vm = load i32, ptr %i.vk, align 4
  %i.vn = load i32, ptr %i.vl, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %.0234.i88, i64 8 ; 2 uses
  store i32 %i.vn, ptr %i.vk, align 4
  %i.vp = getelementptr inbounds nuw i8, ptr %.0233.i89, i64 8 ; 2 uses
  store i32 %i.vm, ptr %i.vl, align 4
  %i.vq = load i32, ptr %i.vo, align 4
  %i.vr = load i32, ptr %i.vp, align 4
  %i.vs = getelementptr inbounds nuw i8, ptr %.0234.i88, i64 12 ; 2 uses
  store i32 %i.vr, ptr %i.vo, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %.0233.i89, i64 12 ; 2 uses
  store i32 %i.vq, ptr %i.vp, align 4
  %i.vu = load i32, ptr %i.vs, align 4
  %i.vv = load i32, ptr %i.vt, align 4
  %i.vw = getelementptr inbounds nuw i8, ptr %.0234.i88, i64 16
  store i32 %i.vv, ptr %i.vs, align 4
  %i.vx = getelementptr inbounds nuw i8, ptr %.0233.i89, i64 16
  store i32 %i.vu, ptr %i.vt, align 4
  %i.vy = add i64 %.0232.i90, -16                 ; 2 uses
  %.not280.i91.3 = icmp eq i64 %i.vy, 0
  br i1 %.not280.i91.3, label %.loopexit, label %.preheader301.i87, !llvm.loop !113

.loopexit:                                        ; preds = %.preheader301.i87.prol.loopexit, %.preheader301.i87, %middle.block523
  %i.vz = getelementptr inbounds nuw i8, ptr %.4.lcssa.i67, i64 %2
  %i.wa = getelementptr inbounds i8, ptr %.4239.lcssa.i69, i64 %i.mh
  br label %bb.am

bb.ak:                                            ; preds = %._crit_edge.i68
  %i.wb = icmp eq ptr %.4.lcssa.i67, %.4239.lcssa.i69
  br i1 %i.wb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.wc = getelementptr inbounds nuw i8, ptr %.4.lcssa.i67, i64 %2
  %i.wd = getelementptr inbounds i8, ptr %.4239.lcssa.i69, i64 %i.mh
  br label %.loopexit303.i73

bb.am:                                            ; preds = %bb.ak, %.loopexit
  %.5240.i70 = phi ptr [ %i.wa, %.loopexit ], [ %.4239.lcssa.i69, %bb.ak ] ; 3 uses
  %.5.i71 = phi ptr [ %i.vz, %.loopexit ], [ %.4.lcssa.i67, %bb.ak ] ; 3 uses
  %.not281.i72 = icmp ugt ptr %.5.i71, %.5240.i70
  br i1 %.not281.i72, label %.loopexit303.i73, label %bb.aj, !llvm.loop !8

.loopexit303.i73:                                 ; preds = %bb.am, %bb.al
  %.6241.i74 = phi ptr [ %i.wd, %bb.al ], [ %.5240.i70, %bb.am ] ; 4 uses
  %.6.i75 = phi ptr [ %i.wc, %bb.al ], [ %.5.i71, %bb.am ] ; 4 uses
  %i.we = ptrtoint ptr %.6241.i74 to i64
  %i.wf = ptrtoint ptr %.0253320.i53 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 4 uses
  %i.wh = ptrtoint ptr %.0258319.i54 to i64
  %i.wi = ptrtoint ptr %.6.i75 to i64
  %i.wj = sub i64 %i.wh, %i.wi                    ; 5 uses
  %i.wk = icmp ult i64 %i.wg, %i.ly
  br i1 %i.wk, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.loopexit303.i73
  %.not284.i83 = icmp ult i64 %i.wj, %i.ly
  br i1 %.not284.i83, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.wl = icmp slt i32 %.0226321.i52, 1
  br i1 %i.wl, label %.thread.i21, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.wm = add nsw i32 %.0226321.i52, -1           ; 2 uses
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.wn ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 16           ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8            ; 2 uses
  %.pre.i84 = ptrtoint ptr %i.wr to i64
  %.pre350.i85 = ptrtoint ptr %i.wp to i64
  %.pre352.i86 = sub i64 %.pre.i84, %.pre350.i85
  br label %bb.au

bb.aq:                                            ; preds = %.loopexit303.i73
  %.not282.i76 = icmp ugt i64 %i.wg, %i.wj
  br i1 %.not282.i76, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ws = sext i32 %.0226321.i52 to i64
  %i.wt = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ws ; 2 uses
  store ptr %.6.i75, ptr %i.wt, align 16
  %i.wu = add nsw i32 %.0226321.i52, 1
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr %.0258319.i54, ptr %i.wv, align 8
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %.not283.i82 = icmp ult i64 %i.wj, %i.ly
  br i1 %.not283.i82, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ww = sext i32 %.0226321.i52 to i64
  %i.wx = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ww ; 2 uses
  store ptr %.0253320.i53, ptr %i.wx, align 16
  %i.wy = add nsw i32 %.0226321.i52, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store ptr %.6241.i74, ptr %i.wz, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.an
  %.pre-phi353.i77 = phi i64 [ %i.wg, %bb.as ], [ %i.wj, %bb.an ], [ %i.wj, %bb.at ], [ %i.wg, %bb.ar ], [ %.pre352.i86, %bb.ap ] ; 2 uses
  %.1259.i78 = phi ptr [ %.6241.i74, %bb.as ], [ %.0258319.i54, %bb.an ], [ %.0258319.i54, %bb.at ], [ %.6241.i74, %bb.ar ], [ %i.wr, %bb.ap ] ; 2 uses
  %.1254.i79 = phi ptr [ %.0253320.i53, %bb.as ], [ %.6.i75, %bb.an ], [ %.6.i75, %bb.at ], [ %.0253320.i53, %bb.ar ], [ %i.wp, %bb.ap ] ; 2 uses
  %.1.i80 = phi i32 [ %.0226321.i52, %bb.as ], [ %.0226321.i52, %bb.an ], [ %i.wy, %bb.at ], [ %i.wu, %bb.ar ], [ %i.wm, %bb.ap ]
  %i.xa = udiv i64 %.pre-phi353.i77, %2
  %i.xb = lshr i64 %i.xa, 1
  %i.xc = mul i64 %i.xb, %2
  %i.xd = getelementptr inbounds nuw i8, ptr %.1254.i79, i64 %i.xc ; 2 uses
  %.not274.i81 = icmp ult ptr %i.xd, %.1259.i78
  br i1 %.not274.i81, label %bb.ad, label %.thread.i21

.thread.i21:                                      ; preds = %bb.au, %bb.ao, %bb.ac, %bb.ab
  %i.xe = tail call i64 @llvm.umin.i64(i64 range(i64 2, 0) %1, i64 12)
  %i.xf = add nsw i64 %i.xe, -1
  %i.xg = mul i64 %i.xf, %2                       ; 2 uses
  %.not285325.i22 = icmp samesign eq i64 %i.xg, 0
  br i1 %.not285325.i22, label %.loopexit.i35, label %.lr.ph328.i23

.lr.ph328.i23:                                    ; preds = %.thread.i21
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 %i.xg
  %i.xi = sub i64 0, %2
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph328.i23
  %.8327.i24 = phi ptr [ %0, %.lr.ph328.i23 ], [ %spec.select.i26, %bb.av ] ; 2 uses
  %.8243326.i25 = phi ptr [ %i.xh, %.lr.ph328.i23 ], [ %i.xl, %bb.av ] ; 3 uses
  %i.xj = tail call i32 %3(ptr noundef %4, ptr noundef %.8327.i24, ptr noundef %.8243326.i25) #4, !inline_history !77
  %i.xk = icmp sgt i32 %i.xj, 0
  %spec.select.i26 = select i1 %i.xk, ptr %.8243326.i25, ptr %.8327.i24 ; 8 uses
  %i.xl = getelementptr inbounds i8, ptr %.8243326.i25, i64 %i.xi ; 2 uses
  %.not285.i27 = icmp eq ptr %i.xl, %0
  br i1 %.not285.i27, label %._crit_edge329.i28, label %bb.av, !llvm.loop !9

._crit_edge329.i28:                               ; preds = %bb.av
  %.not286.i29 = icmp eq ptr %spec.select.i26, %0
  br i1 %.not286.i29, label %.loopexit.i35, label %.preheader.i30.preheader

.preheader.i30.preheader:                         ; preds = %._crit_edge329.i28
  %i.xm = add i64 %2, -4                          ; 3 uses
  %i.xn = lshr i64 %i.xm, 2
  %i.xo = add nuw nsw i64 %i.xn, 1                ; 2 uses
  %min.iters.check654 = icmp ult i64 %i.xm, 44
  br i1 %min.iters.check654, label %.preheader.i30.preheader681, label %vector.memcheck647

vector.memcheck647:                               ; preds = %.preheader.i30.preheader
  %i.xp = and i64 %i.xm, -4
  %8 = add i64 %i.xp, 4                           ; 2 uses
  %scevgep648 = getelementptr i8, ptr %spec.select.i26, i64 %8
  %scevgep649 = getelementptr i8, ptr %0, i64 %8
  %bound0650 = icmp ult ptr %spec.select.i26, %scevgep649
  %bound1651 = icmp ult ptr %0, %scevgep648
  %found.conflict652 = and i1 %bound0650, %bound1651
  br i1 %found.conflict652, label %.preheader.i30.preheader681, label %vector.ph655

vector.ph655:                                     ; preds = %vector.memcheck647
  %n.vec656 = and i64 %i.xo, 9223372036854775800  ; 4 uses
  %i.xq = shl i64 %n.vec656, 2                    ; 2 uses
  %i.xr = getelementptr i8, ptr %spec.select.i26, i64 %i.xq
  %i.xs = getelementptr i8, ptr %0, i64 %i.xq
  %i.xt = shl i64 %n.vec656, 2
  %i.xu = sub i64 %2, %i.xt
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph655
  %index658 = phi i64 [ 0, %vector.ph655 ], [ %index.next665, %vector.body657 ] ; 2 uses
  %i.xv = shl i64 %index658, 2                    ; 2 uses
  %next.gep659 = getelementptr i8, ptr %spec.select.i26, i64 %i.xv ; 3 uses
  %next.gep660 = getelementptr i8, ptr %0, i64 %i.xv ; 3 uses
  %i.xw = getelementptr i8, ptr %next.gep659, i64 16 ; 2 uses
  %wide.load661 = load <4 x i32>, ptr %next.gep659, align 4, !alias.scope !147, !noalias !148
  %wide.load662 = load <4 x i32>, ptr %i.xw, align 4, !alias.scope !147, !noalias !148
  %i.xx = getelementptr i8, ptr %next.gep660, i64 16 ; 2 uses
  %wide.load663 = load <4 x i32>, ptr %next.gep660, align 4, !alias.scope !148
  %wide.load664 = load <4 x i32>, ptr %i.xx, align 4, !alias.scope !148
  store <4 x i32> %wide.load663, ptr %next.gep659, align 4, !alias.scope !147, !noalias !148
  store <4 x i32> %wide.load664, ptr %i.xw, align 4, !alias.scope !147, !noalias !148
  store <4 x i32> %wide.load661, ptr %next.gep660, align 4, !alias.scope !148
  store <4 x i32> %wide.load662, ptr %i.xx, align 4, !alias.scope !148
  %index.next665 = add nuw i64 %index658, 8       ; 2 uses
  %i.xy = icmp eq i64 %index.next665, %n.vec656
  br i1 %i.xy, label %middle.block666, label %vector.body657, !llvm.loop !117

middle.block666:                                  ; preds = %vector.body657
  %cmp.n667 = icmp eq i64 %i.xo, %n.vec656
  br i1 %cmp.n667, label %.loopexit.i35, label %.preheader.i30.preheader681

.preheader.i30.preheader681:                      ; preds = %vector.memcheck647, %.preheader.i30.preheader, %middle.block666
  %.0229.i31.ph = phi ptr [ %spec.select.i26, %vector.memcheck647 ], [ %spec.select.i26, %.preheader.i30.preheader ], [ %i.xr, %middle.block666 ] ; 2 uses
  %.0228.i32.ph = phi ptr [ %0, %vector.memcheck647 ], [ %0, %.preheader.i30.preheader ], [ %i.xs, %middle.block666 ] ; 2 uses
  %.0227.i33.ph = phi i64 [ %2, %vector.memcheck647 ], [ %2, %.preheader.i30.preheader ], [ %i.xu, %middle.block666 ] ; 3 uses
  %i.xz = add i64 %.0227.i33.ph, -4               ; 2 uses
  %i.ya = lshr i64 %i.xz, 2
  %i.yb = add nuw nsw i64 %i.ya, 1
  %xtraiter736 = and i64 %i.yb, 3                 ; 2 uses
  %lcmp.mod737.not = icmp eq i64 %xtraiter736, 0
  br i1 %lcmp.mod737.not, label %.preheader.i30.prol.loopexit, label %.preheader.i30.prol

.preheader.i30.prol:                              ; preds = %.preheader.i30.preheader681, %.preheader.i30.prol
  %.0229.i31.prol = phi ptr [ %i.ye, %.preheader.i30.prol ], [ %.0229.i31.ph, %.preheader.i30.preheader681 ] ; 3 uses
  %.0228.i32.prol = phi ptr [ %i.yf, %.preheader.i30.prol ], [ %.0228.i32.ph, %.preheader.i30.preheader681 ] ; 3 uses
  %.0227.i33.prol = phi i64 [ %i.yg, %.preheader.i30.prol ], [ %.0227.i33.ph, %.preheader.i30.preheader681 ]
  %prol.iter738 = phi i64 [ %prol.iter738.next, %.preheader.i30.prol ], [ 0, %.preheader.i30.preheader681 ]
  %i.yc = load i32, ptr %.0229.i31.prol, align 4
  %i.yd = load i32, ptr %.0228.i32.prol, align 4
  %i.ye = getelementptr inbounds nuw i8, ptr %.0229.i31.prol, i64 4 ; 2 uses
  store i32 %i.yd, ptr %.0229.i31.prol, align 4
  %i.yf = getelementptr inbounds nuw i8, ptr %.0228.i32.prol, i64 4 ; 2 uses
  store i32 %i.yc, ptr %.0228.i32.prol, align 4
  %i.yg = add i64 %.0227.i33.prol, -4             ; 2 uses
  %prol.iter738.next = add i64 %prol.iter738, 1   ; 2 uses
  %prol.iter738.cmp.not = icmp eq i64 %prol.iter738.next, %xtraiter736
  br i1 %prol.iter738.cmp.not, label %.preheader.i30.prol.loopexit, label %.preheader.i30.prol, !llvm.loop !118

.preheader.i30.prol.loopexit:                     ; preds = %.preheader.i30.prol, %.preheader.i30.preheader681
  %.0229.i31.unr = phi ptr [ %.0229.i31.ph, %.preheader.i30.preheader681 ], [ %i.ye, %.preheader.i30.prol ]
  %.0228.i32.unr = phi ptr [ %.0228.i32.ph, %.preheader.i30.preheader681 ], [ %i.yf, %.preheader.i30.prol ]
  %.0227.i33.unr = phi i64 [ %.0227.i33.ph, %.preheader.i30.preheader681 ], [ %i.yg, %.preheader.i30.prol ]
  %i.yh = icmp ult i64 %i.xz, 12
  br i1 %i.yh, label %.loopexit.i35, label %.preheader.i30

.preheader.i30:                                   ; preds = %.preheader.i30.prol.loopexit, %.preheader.i30
  %.0229.i31 = phi ptr [ %i.yw, %.preheader.i30 ], [ %.0229.i31.unr, %.preheader.i30.prol.loopexit ] ; 6 uses
  %.0228.i32 = phi ptr [ %i.yx, %.preheader.i30 ], [ %.0228.i32.unr, %.preheader.i30.prol.loopexit ] ; 6 uses
  %.0227.i33 = phi i64 [ %i.yy, %.preheader.i30 ], [ %.0227.i33.unr, %.preheader.i30.prol.loopexit ]
  %i.yi = load i32, ptr %.0229.i31, align 4
  %i.yj = load i32, ptr %.0228.i32, align 4
  %i.yk = getelementptr inbounds nuw i8, ptr %.0229.i31, i64 4 ; 2 uses
  store i32 %i.yj, ptr %.0229.i31, align 4
  %i.yl = getelementptr inbounds nuw i8, ptr %.0228.i32, i64 4 ; 2 uses
  store i32 %i.yi, ptr %.0228.i32, align 4
  %i.ym = load i32, ptr %i.yk, align 4
  %i.yn = load i32, ptr %i.yl, align 4
  %i.yo = getelementptr inbounds nuw i8, ptr %.0229.i31, i64 8 ; 2 uses
  store i32 %i.yn, ptr %i.yk, align 4
  %i.yp = getelementptr inbounds nuw i8, ptr %.0228.i32, i64 8 ; 2 uses
  store i32 %i.ym, ptr %i.yl, align 4
  %i.yq = load i32, ptr %i.yo, align 4
  %i.yr = load i32, ptr %i.yp, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %.0229.i31, i64 12 ; 2 uses
  store i32 %i.yr, ptr %i.yo, align 4
  %i.yt = getelementptr inbounds nuw i8, ptr %.0228.i32, i64 12 ; 2 uses
  store i32 %i.yq, ptr %i.yp, align 4
  %i.yu = load i32, ptr %i.ys, align 4
  %i.yv = load i32, ptr %i.yt, align 4
  %i.yw = getelementptr inbounds nuw i8, ptr %.0229.i31, i64 16
  store i32 %i.yv, ptr %i.ys, align 4
  %i.yx = getelementptr inbounds nuw i8, ptr %.0228.i32, i64 16
  store i32 %i.yu, ptr %i.yt, align 4
  %i.yy = add i64 %.0227.i33, -16                 ; 2 uses
  %.not287.i34.3 = icmp eq i64 %i.yy, 0
  br i1 %.not287.i34.3, label %.loopexit.i35, label %.preheader.i30, !llvm.loop !119

.loopexit.i35:                                    ; preds = %.preheader.i30.prol.loopexit, %.preheader.i30, %middle.block666, %._crit_edge329.i28, %.thread.i21
  %i.yz = mul i64 %2, %1                          ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 %i.yz
  %.not288339.i36 = icmp samesign eq i64 %2, %i.yz
  br i1 %.not288339.i36, label %qsort_r_aligned.exit, label %.lr.ph343.i37

.lr.ph343.i37:                                    ; preds = %.loopexit.i35
  %.10338.i38 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.zb = sub i64 0, %2
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge.thread.i47, %.lr.ph343.i37
  %.10341.i39 = phi ptr [ %.10338.i38, %.lr.ph343.i37 ], [ %.10.i48, %.critedge.thread.i47 ] ; 5 uses
  %.pn340.i40 = phi ptr [ %0, %.lr.ph343.i37 ], [ %.10341.i39, %.critedge.thread.i47 ] ; 3 uses
  %.not289331.i41 = icmp ult ptr %.pn340.i40, %0
  br i1 %.not289331.i41, label %.critedge.thread.i47, label %.lr.ph334.i42

.lr.ph334.i42:                                    ; preds = %bb.aw, %bb.ax
  %.0332.i43 = phi ptr [ %i.ze, %bb.ax ], [ %.pn340.i40, %bb.aw ] ; 3 uses
  %i.zc = tail call i32 %3(ptr noundef %4, ptr noundef %.0332.i43, ptr noundef %.10341.i39) #4, !inline_history !77
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %bb.ax, label %.critedge.i44

bb.ax:                                            ; preds = %.lr.ph334.i42
  %i.ze = getelementptr inbounds i8, ptr %.0332.i43, i64 %i.zb ; 3 uses
  %.not289.i50 = icmp ult ptr %i.ze, %0
  br i1 %.not289.i50, label %.critedge.i44, label %.lr.ph334.i42, !llvm.loop !10

.critedge.i44:                                    ; preds = %bb.ax, %.lr.ph334.i42
  %.0.lcssa.i45 = phi ptr [ %i.ze, %bb.ax ], [ %.0332.i43, %.lr.ph334.i42 ] ; 2 uses
  %.not290.i46 = icmp eq ptr %.0.lcssa.i45, %.pn340.i40
  br i1 %.not290.i46, label %.critedge.thread.i47, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i44
  %i.zf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i45, i64 %2 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr align 1 %.10341.i39, i64 range(i64 5, 4) %2, i1 false)
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %2
  %i.zh = ptrtoint ptr %.10341.i39 to i64
  %i.zi = ptrtoint ptr %i.zf to i64
  %i.zj = sub i64 %i.zh, %i.zi
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zg, ptr align 1 %i.zf, i64 %i.zj, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zf, ptr align 1 %i.lx, i64 range(i64 5, 4) %2, i1 false)
  br label %.critedge.thread.i47

.critedge.thread.i47:                             ; preds = %bb.ay, %.critedge.i44, %bb.aw
  %.10.i48 = getelementptr inbounds nuw i8, ptr %.10341.i39, i64 %2 ; 2 uses
  %.not288.i49 = icmp eq ptr %.10.i48, %i.za
  br i1 %.not288.i49, label %qsort_r_aligned.exit, label %bb.aw, !llvm.loop !11

qsort_r_aligned.exit:                             ; preds = %.critedge.thread.i47, %.loopexit.i35
  tail call void @SDL_free_REAL(ptr noundef %i.lx) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.cd

bb.az:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.zk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 4) #4 ; 8 uses
  %i.zl = shl i64 %1, 2                           ; 5 uses
  %i.zm = add i64 %i.zl, -52
  %i.zn = icmp ult i64 %i.zm, -48
  br i1 %i.zn, label %bb.ba, label %.lr.ph221.preheader.i

bb.ba:                                            ; preds = %bb.az
  %i.zo = getelementptr i8, ptr %0, i64 %i.zl
  %i.zp = getelementptr i8, ptr %i.zo, i64 -4     ; 2 uses
  %i.zq = add i64 %i.zl, -4                       ; 2 uses
  %i.zr = lshr exact i64 %i.zq, 1
  %i.zs = and i64 %i.zr, 9223372036854775804
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 %i.zs ; 2 uses
  %.not212.i = icmp ult ptr %i.zt, %i.zp
  br i1 %.not212.i, label %.lr.ph.i120, label %.lr.ph221.preheader.i

.lr.ph.i120:                                      ; preds = %bb.ba, %bb.bz
  %i.zu = phi ptr [ %i.acc, %bb.bz ], [ %i.zt, %bb.ba ] ; 14 uses
  %i.zv = phi i64 [ %.pre-phi247.i, %bb.bz ], [ %i.zq, %bb.ba ]
  %.0167215.i = phi i32 [ %.1.i126, %bb.bz ], [ 0, %bb.ba ] ; 8 uses
  %.0179214.i = phi ptr [ %.1180.i, %bb.bz ], [ %0, %bb.ba ] ; 14 uses
  %.0181213.i = phi ptr [ %.1182.i, %bb.bz ], [ %i.zp, %bb.ba ] ; 15 uses
  %i.zw = icmp ugt i64 %i.zv, 160
  br i1 %i.zw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i120
  %i.zx = tail call fastcc ptr @pivot_big(ptr noundef %.0179214.i, ptr noundef %i.zu, ptr noundef nonnull %.0181213.i, i64 noundef 4, ptr noundef readonly %3, ptr noundef %4)
  br label %bb.bl

bb.bc:                                            ; preds = %.lr.ph.i120
  %i.zy = tail call i32 %3(ptr noundef %4, ptr noundef %.0179214.i, ptr noundef %i.zu) #4, !inline_history !120
  %i.zz = icmp slt i32 %i.zy, 0
  %i.aaa = tail call i32 %3(ptr noundef %4, ptr noundef %i.zu, ptr noundef nonnull %.0181213.i) #4, !inline_history !120
  %i.aab = icmp sgt i32 %i.aaa, 0                 ; 2 uses
  br i1 %i.zz, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.aab, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.aac = load i32, ptr %i.zu, align 4
end_hunk_0
begin_hunk_1_@SDL_qsort_REAL:bb.a
  %i.yy = getelementptr i8, ptr %next.gep398, i64 16 ; 2 uses
  %wide.load400 = load <4 x i32>, ptr %next.gep398, align 4, !alias.scope !268, !noalias !269
  %wide.load401 = load <4 x i32>, ptr %i.yy, align 4, !alias.scope !268, !noalias !269
  %i.yz = getelementptr i8, ptr %next.gep399, i64 16 ; 2 uses
  %wide.load402 = load <4 x i32>, ptr %next.gep399, align 4, !alias.scope !269
  %wide.load403 = load <4 x i32>, ptr %i.yz, align 4, !alias.scope !269
  store <4 x i32> %wide.load402, ptr %next.gep398, align 4, !alias.scope !268, !noalias !269
  store <4 x i32> %wide.load403, ptr %i.yy, align 4, !alias.scope !268, !noalias !269
  store <4 x i32> %wide.load400, ptr %next.gep399, align 4, !alias.scope !269
  store <4 x i32> %wide.load401, ptr %i.yz, align 4, !alias.scope !269
  %index.next404 = add nuw i64 %index397, 8       ; 2 uses
  %i.za = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.za, label %middle.block405, label %vector.body396, !llvm.loop !234

middle.block405:                                  ; preds = %vector.body396
  br i1 %cmp.n406, label %.loopexit, label %.preheader301.i87.i.preheader562

.preheader301.i87.i.preheader562:                 ; preds = %vector.memcheck387, %.preheader301.i87.i.preheader, %middle.block405
  %.0234.i88.i.ph = phi ptr [ %.4.lcssa.i67.i, %vector.memcheck387 ], [ %.4.lcssa.i67.i, %.preheader301.i87.i.preheader ], [ %i.yv, %middle.block405 ] ; 2 uses
  %.0233.i89.i.ph = phi ptr [ %.4239.lcssa.i69.i, %vector.memcheck387 ], [ %.4239.lcssa.i69.i, %.preheader301.i87.i.preheader ], [ %i.yw, %middle.block405 ] ; 2 uses
  %.0232.i90.i.ph = phi i64 [ %2, %vector.memcheck387 ], [ %2, %.preheader301.i87.i.preheader ], [ %i.pq, %middle.block405 ] ; 3 uses
  %i.zb = add i64 %.0232.i90.i.ph, -4             ; 2 uses
  %i.zc = lshr i64 %i.zb, 2
  %i.zd = add nuw nsw i64 %i.zc, 1
  %xtraiter613 = and i64 %i.zd, 3                 ; 2 uses
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %.preheader301.i87.i.prol.loopexit, label %.preheader301.i87.i.prol

.preheader301.i87.i.prol:                         ; preds = %.preheader301.i87.i.preheader562, %.preheader301.i87.i.prol
  %.0234.i88.i.prol = phi ptr [ %i.zg, %.preheader301.i87.i.prol ], [ %.0234.i88.i.ph, %.preheader301.i87.i.preheader562 ] ; 3 uses
  %.0233.i89.i.prol = phi ptr [ %i.zh, %.preheader301.i87.i.prol ], [ %.0233.i89.i.ph, %.preheader301.i87.i.preheader562 ] ; 3 uses
  %.0232.i90.i.prol = phi i64 [ %i.zi, %.preheader301.i87.i.prol ], [ %.0232.i90.i.ph, %.preheader301.i87.i.preheader562 ]
  %prol.iter615 = phi i64 [ %prol.iter615.next, %.preheader301.i87.i.prol ], [ 0, %.preheader301.i87.i.preheader562 ]
  %i.ze = load i32, ptr %.0234.i88.i.prol, align 4
  %i.zf = load i32, ptr %.0233.i89.i.prol, align 4
  %i.zg = getelementptr inbounds nuw i8, ptr %.0234.i88.i.prol, i64 4 ; 2 uses
  store i32 %i.zf, ptr %.0234.i88.i.prol, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %.0233.i89.i.prol, i64 4 ; 2 uses
  store i32 %i.ze, ptr %.0233.i89.i.prol, align 4
  %i.zi = add i64 %.0232.i90.i.prol, -4           ; 2 uses
  %prol.iter615.next = add i64 %prol.iter615, 1   ; 2 uses
  %prol.iter615.cmp.not = icmp eq i64 %prol.iter615.next, %xtraiter613
  br i1 %prol.iter615.cmp.not, label %.preheader301.i87.i.prol.loopexit, label %.preheader301.i87.i.prol, !llvm.loop !235

.preheader301.i87.i.prol.loopexit:                ; preds = %.preheader301.i87.i.prol, %.preheader301.i87.i.preheader562
  %.0234.i88.i.unr = phi ptr [ %.0234.i88.i.ph, %.preheader301.i87.i.preheader562 ], [ %i.zg, %.preheader301.i87.i.prol ]
  %.0233.i89.i.unr = phi ptr [ %.0233.i89.i.ph, %.preheader301.i87.i.preheader562 ], [ %i.zh, %.preheader301.i87.i.prol ]
  %.0232.i90.i.unr = phi i64 [ %.0232.i90.i.ph, %.preheader301.i87.i.preheader562 ], [ %i.zi, %.preheader301.i87.i.prol ]
  %i.zj = icmp ult i64 %i.zb, 12
  br i1 %i.zj, label %.loopexit, label %.preheader301.i87.i

.preheader301.i87.i:                              ; preds = %.preheader301.i87.i.prol.loopexit, %.preheader301.i87.i
  %.0234.i88.i = phi ptr [ %i.zy, %.preheader301.i87.i ], [ %.0234.i88.i.unr, %.preheader301.i87.i.prol.loopexit ] ; 6 uses
  %.0233.i89.i = phi ptr [ %i.zz, %.preheader301.i87.i ], [ %.0233.i89.i.unr, %.preheader301.i87.i.prol.loopexit ] ; 6 uses
  %.0232.i90.i = phi i64 [ %i.aaa, %.preheader301.i87.i ], [ %.0232.i90.i.unr, %.preheader301.i87.i.prol.loopexit ]
  %i.zk = load i32, ptr %.0234.i88.i, align 4
  %i.zl = load i32, ptr %.0233.i89.i, align 4
  %i.zm = getelementptr inbounds nuw i8, ptr %.0234.i88.i, i64 4 ; 2 uses
  store i32 %i.zl, ptr %.0234.i88.i, align 4
  %i.zn = getelementptr inbounds nuw i8, ptr %.0233.i89.i, i64 4 ; 2 uses
  store i32 %i.zk, ptr %.0233.i89.i, align 4
  %i.zo = load i32, ptr %i.zm, align 4
  %i.zp = load i32, ptr %i.zn, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %.0234.i88.i, i64 8 ; 2 uses
  store i32 %i.zp, ptr %i.zm, align 4
  %i.zr = getelementptr inbounds nuw i8, ptr %.0233.i89.i, i64 8 ; 2 uses
  store i32 %i.zo, ptr %i.zn, align 4
  %i.zs = load i32, ptr %i.zq, align 4
  %i.zt = load i32, ptr %i.zr, align 4
  %i.zu = getelementptr inbounds nuw i8, ptr %.0234.i88.i, i64 12 ; 2 uses
  store i32 %i.zt, ptr %i.zq, align 4
  %i.zv = getelementptr inbounds nuw i8, ptr %.0233.i89.i, i64 12 ; 2 uses
  store i32 %i.zs, ptr %i.zr, align 4
  %i.zw = load i32, ptr %i.zu, align 4
  %i.zx = load i32, ptr %i.zv, align 4
  %i.zy = getelementptr inbounds nuw i8, ptr %.0234.i88.i, i64 16
  store i32 %i.zx, ptr %i.zu, align 4
  %i.zz = getelementptr inbounds nuw i8, ptr %.0233.i89.i, i64 16
  store i32 %i.zw, ptr %i.zv, align 4
  %i.aaa = add i64 %.0232.i90.i, -16              ; 2 uses
  %.not280.i91.i.3 = icmp eq i64 %i.aaa, 0
  br i1 %.not280.i91.i.3, label %.loopexit, label %.preheader301.i87.i, !llvm.loop !236

.loopexit:                                        ; preds = %.preheader301.i87.i.prol.loopexit, %.preheader301.i87.i, %middle.block405
  %i.aab = getelementptr inbounds nuw i8, ptr %.4.lcssa.i67.i, i64 %2
  %i.aac = getelementptr inbounds i8, ptr %.4239.lcssa.i69.i, i64 %i.oi
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge.i68.i
  %i.aad = icmp eq ptr %.4.lcssa.i67.i, %.4239.lcssa.i69.i
  br i1 %i.aad, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.aae = getelementptr inbounds nuw i8, ptr %.4.lcssa.i67.i, i64 %2
  %i.aaf = getelementptr inbounds i8, ptr %.4239.lcssa.i69.i, i64 %i.oi
  br label %.loopexit303.i73.i

bb.bg:                                            ; preds = %bb.be, %.loopexit
  %.5240.i70.i = phi ptr [ %i.aac, %.loopexit ], [ %.4239.lcssa.i69.i, %bb.be ] ; 3 uses
  %.5.i71.i = phi ptr [ %i.aab, %.loopexit ], [ %.4.lcssa.i67.i, %bb.be ] ; 3 uses
  %.not281.i72.i = icmp ugt ptr %.5.i71.i, %.5240.i70.i
  br i1 %.not281.i72.i, label %.loopexit303.i73.i, label %bb.bd, !llvm.loop !8

.loopexit303.i73.i:                               ; preds = %bb.bg, %bb.bf
  %.6241.i74.i = phi ptr [ %i.aaf, %bb.bf ], [ %.5240.i70.i, %bb.bg ] ; 4 uses
  %.6.i75.i = phi ptr [ %i.aae, %bb.bf ], [ %.5.i71.i, %bb.bg ] ; 4 uses
  %i.aag = ptrtoint ptr %.6241.i74.i to i64
  %i.aah = ptrtoint ptr %.0253320.i53.i to i64
  %i.aai = sub i64 %i.aag, %i.aah                 ; 4 uses
  %i.aaj = ptrtoint ptr %.0258319.i54.i to i64
  %i.aak = ptrtoint ptr %.6.i75.i to i64
  %i.aal = sub i64 %i.aaj, %i.aak                 ; 5 uses
  %i.aam = icmp ult i64 %i.aai, %i.nz
  br i1 %i.aam, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.loopexit303.i73.i
  %.not284.i83.i = icmp ult i64 %i.aal, %i.nz
  br i1 %.not284.i83.i, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.aan = icmp slt i32 %.0226321.i52.i, 1
  br i1 %i.aan, label %.thread.i21.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aao = add nsw i32 %.0226321.i52.i, -1        ; 2 uses
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.aap ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 16         ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8          ; 2 uses
  %.pre.i84.i = ptrtoint ptr %i.aat to i64
  %.pre350.i85.i = ptrtoint ptr %i.aar to i64
  %.pre352.i86.i = sub i64 %.pre.i84.i, %.pre350.i85.i
  br label %bb.bo

bb.bk:                                            ; preds = %.loopexit303.i73.i
  %.not282.i76.i = icmp ugt i64 %i.aai, %i.aal
  br i1 %.not282.i76.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aau = sext i32 %.0226321.i52.i to i64
  %i.aav = getelementptr inbounds [16 x i8], ptr %5, i64 %i.aau ; 2 uses
  store ptr %.6.i75.i, ptr %i.aav, align 16
  %i.aaw = add nsw i32 %.0226321.i52.i, 1
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  store ptr %.0258319.i54.i, ptr %i.aax, align 8
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %.not283.i82.i = icmp ult i64 %i.aal, %i.nz
  br i1 %.not283.i82.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aay = sext i32 %.0226321.i52.i to i64
  %i.aaz = getelementptr inbounds [16 x i8], ptr %5, i64 %i.aay ; 2 uses
  store ptr %.0253320.i53.i, ptr %i.aaz, align 16
  %i.aba = add nsw i32 %.0226321.i52.i, 1
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store ptr %.6241.i74.i, ptr %i.abb, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bh
  %.pre-phi353.i77.i = phi i64 [ %i.aai, %bb.bm ], [ %i.aal, %bb.bh ], [ %i.aal, %bb.bn ], [ %i.aai, %bb.bl ], [ %.pre352.i86.i, %bb.bj ] ; 2 uses
  %.1259.i78.i = phi ptr [ %.6241.i74.i, %bb.bm ], [ %.0258319.i54.i, %bb.bh ], [ %.0258319.i54.i, %bb.bn ], [ %.6241.i74.i, %bb.bl ], [ %i.aat, %bb.bj ] ; 2 uses
  %.1254.i79.i = phi ptr [ %.0253320.i53.i, %bb.bm ], [ %.6.i75.i, %bb.bh ], [ %.6.i75.i, %bb.bn ], [ %.0253320.i53.i, %bb.bl ], [ %i.aar, %bb.bj ] ; 2 uses
  %.1.i80.i = phi i32 [ %.0226321.i52.i, %bb.bm ], [ %.0226321.i52.i, %bb.bh ], [ %i.aba, %bb.bn ], [ %i.aaw, %bb.bl ], [ %i.aao, %bb.bj ]
  %i.abc = udiv i64 %.pre-phi353.i77.i, %2
  %i.abd = lshr i64 %i.abc, 1
  %i.abe = mul i64 %i.abd, %2
  %i.abf = getelementptr inbounds nuw i8, ptr %.1254.i79.i, i64 %i.abe ; 2 uses
  %.not274.i81.i = icmp ult ptr %i.abf, %.1259.i78.i
  br i1 %.not274.i81.i, label %bb.an, label %.thread.i21.i

.thread.i21.i:                                    ; preds = %bb.bo, %bb.bi, %bb.am, %bb.al
  %i.abg = tail call i64 @llvm.umin.i64(i64 range(i64 2, 0) %1, i64 12)
  %i.abh = add nsw i64 %i.abg, -1
  %i.abi = mul i64 %i.abh, %2                     ; 2 uses
  %.not285325.i22.i = icmp samesign eq i64 %i.abi, 0
  br i1 %.not285325.i22.i, label %.loopexit.i35.i, label %.lr.ph328.i23.i

.lr.ph328.i23.i:                                  ; preds = %.thread.i21.i
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 %i.abi
  %i.abk = sub i64 0, %2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph328.i23.i
  %.8327.i24.i = phi ptr [ %0, %.lr.ph328.i23.i ], [ %spec.select.i26.i, %bb.bp ] ; 2 uses
  %.8243326.i25.i = phi ptr [ %i.abj, %.lr.ph328.i23.i ], [ %i.abn, %bb.bp ] ; 3 uses
  %i.abl = tail call i32 %3(ptr noundef %.8327.i24.i, ptr noundef %.8243326.i25.i) #4, !inline_history !200
  %i.abm = icmp sgt i32 %i.abl, 0
  %spec.select.i26.i = select i1 %i.abm, ptr %.8243326.i25.i, ptr %.8327.i24.i ; 8 uses
  %i.abn = getelementptr inbounds i8, ptr %.8243326.i25.i, i64 %i.abk ; 2 uses
  %.not285.i27.i = icmp eq ptr %i.abn, %0
  br i1 %.not285.i27.i, label %._crit_edge329.i28.i, label %bb.bp, !llvm.loop !9

._crit_edge329.i28.i:                             ; preds = %bb.bp
  %.not286.i29.i = icmp eq ptr %spec.select.i26.i, %0
  br i1 %.not286.i29.i, label %.loopexit.i35.i, label %.preheader.i30.i.preheader

.preheader.i30.i.preheader:                       ; preds = %._crit_edge329.i28.i
  %i.abo = add i64 %2, -4                         ; 3 uses
  %i.abp = lshr i64 %i.abo, 2
  %i.abq = add nuw nsw i64 %i.abp, 1              ; 2 uses
  %min.iters.check536 = icmp ult i64 %i.abo, 44
  br i1 %min.iters.check536, label %.preheader.i30.i.preheader561, label %vector.memcheck529

vector.memcheck529:                               ; preds = %.preheader.i30.i.preheader
  %i.abr = and i64 %i.abo, -4
  %7 = add i64 %i.abr, 4                          ; 2 uses
  %scevgep530 = getelementptr i8, ptr %spec.select.i26.i, i64 %7
  %scevgep531 = getelementptr i8, ptr %0, i64 %7
  %bound0532 = icmp ult ptr %spec.select.i26.i, %scevgep531
  %bound1533 = icmp ult ptr %0, %scevgep530
  %found.conflict534 = and i1 %bound0532, %bound1533
  br i1 %found.conflict534, label %.preheader.i30.i.preheader561, label %vector.ph537

vector.ph537:                                     ; preds = %vector.memcheck529
  %n.vec538 = and i64 %i.abq, 9223372036854775800 ; 4 uses
  %i.abs = shl i64 %n.vec538, 2                   ; 2 uses
  %i.abt = getelementptr i8, ptr %spec.select.i26.i, i64 %i.abs
  %i.abu = getelementptr i8, ptr %0, i64 %i.abs
  %i.abv = shl i64 %n.vec538, 2
  %i.abw = sub i64 %2, %i.abv
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next547, %vector.body539 ] ; 2 uses
  %i.abx = shl i64 %index540, 2                   ; 2 uses
  %next.gep541 = getelementptr i8, ptr %spec.select.i26.i, i64 %i.abx ; 3 uses
  %next.gep542 = getelementptr i8, ptr %0, i64 %i.abx ; 3 uses
  %i.aby = getelementptr i8, ptr %next.gep541, i64 16 ; 2 uses
  %wide.load543 = load <4 x i32>, ptr %next.gep541, align 4, !alias.scope !270, !noalias !271
  %wide.load544 = load <4 x i32>, ptr %i.aby, align 4, !alias.scope !270, !noalias !271
  %i.abz = getelementptr i8, ptr %next.gep542, i64 16 ; 2 uses
  %wide.load545 = load <4 x i32>, ptr %next.gep542, align 4, !alias.scope !271
  %wide.load546 = load <4 x i32>, ptr %i.abz, align 4, !alias.scope !271
  store <4 x i32> %wide.load545, ptr %next.gep541, align 4, !alias.scope !270, !noalias !271
  store <4 x i32> %wide.load546, ptr %i.aby, align 4, !alias.scope !270, !noalias !271
  store <4 x i32> %wide.load543, ptr %next.gep542, align 4, !alias.scope !271
  store <4 x i32> %wide.load544, ptr %i.abz, align 4, !alias.scope !271
  %index.next547 = add nuw i64 %index540, 8       ; 2 uses
  %i.aca = icmp eq i64 %index.next547, %n.vec538
  br i1 %i.aca, label %middle.block548, label %vector.body539, !llvm.loop !240

middle.block548:                                  ; preds = %vector.body539
  %cmp.n549 = icmp eq i64 %i.abq, %n.vec538
  br i1 %cmp.n549, label %.loopexit.i35.i, label %.preheader.i30.i.preheader561

.preheader.i30.i.preheader561:                    ; preds = %vector.memcheck529, %.preheader.i30.i.preheader, %middle.block548
  %.0229.i31.i.ph = phi ptr [ %spec.select.i26.i, %vector.memcheck529 ], [ %spec.select.i26.i, %.preheader.i30.i.preheader ], [ %i.abt, %middle.block548 ] ; 2 uses
  %.0228.i32.i.ph = phi ptr [ %0, %vector.memcheck529 ], [ %0, %.preheader.i30.i.preheader ], [ %i.abu, %middle.block548 ] ; 2 uses
  %.0227.i33.i.ph = phi i64 [ %2, %vector.memcheck529 ], [ %2, %.preheader.i30.i.preheader ], [ %i.abw, %middle.block548 ] ; 3 uses
  %i.acb = add i64 %.0227.i33.i.ph, -4            ; 2 uses
  %i.acc = lshr i64 %i.acb, 2
  %i.acd = add nuw nsw i64 %i.acc, 1
  %xtraiter616 = and i64 %i.acd, 3                ; 2 uses
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %.preheader.i30.i.prol.loopexit, label %.preheader.i30.i.prol

.preheader.i30.i.prol:                            ; preds = %.preheader.i30.i.preheader561, %.preheader.i30.i.prol
  %.0229.i31.i.prol = phi ptr [ %i.acg, %.preheader.i30.i.prol ], [ %.0229.i31.i.ph, %.preheader.i30.i.preheader561 ] ; 3 uses
  %.0228.i32.i.prol = phi ptr [ %i.ach, %.preheader.i30.i.prol ], [ %.0228.i32.i.ph, %.preheader.i30.i.preheader561 ] ; 3 uses
  %.0227.i33.i.prol = phi i64 [ %i.aci, %.preheader.i30.i.prol ], [ %.0227.i33.i.ph, %.preheader.i30.i.preheader561 ]
  %prol.iter618 = phi i64 [ %prol.iter618.next, %.preheader.i30.i.prol ], [ 0, %.preheader.i30.i.preheader561 ]
  %i.ace = load i32, ptr %.0229.i31.i.prol, align 4
  %i.acf = load i32, ptr %.0228.i32.i.prol, align 4
  %i.acg = getelementptr inbounds nuw i8, ptr %.0229.i31.i.prol, i64 4 ; 2 uses
  store i32 %i.acf, ptr %.0229.i31.i.prol, align 4
  %i.ach = getelementptr inbounds nuw i8, ptr %.0228.i32.i.prol, i64 4 ; 2 uses
  store i32 %i.ace, ptr %.0228.i32.i.prol, align 4
  %i.aci = add i64 %.0227.i33.i.prol, -4          ; 2 uses
  %prol.iter618.next = add i64 %prol.iter618, 1   ; 2 uses
  %prol.iter618.cmp.not = icmp eq i64 %prol.iter618.next, %xtraiter616
  br i1 %prol.iter618.cmp.not, label %.preheader.i30.i.prol.loopexit, label %.preheader.i30.i.prol, !llvm.loop !241

.preheader.i30.i.prol.loopexit:                   ; preds = %.preheader.i30.i.prol, %.preheader.i30.i.preheader561
  %.0229.i31.i.unr = phi ptr [ %.0229.i31.i.ph, %.preheader.i30.i.preheader561 ], [ %i.acg, %.preheader.i30.i.prol ]
  %.0228.i32.i.unr = phi ptr [ %.0228.i32.i.ph, %.preheader.i30.i.preheader561 ], [ %i.ach, %.preheader.i30.i.prol ]
  %.0227.i33.i.unr = phi i64 [ %.0227.i33.i.ph, %.preheader.i30.i.preheader561 ], [ %i.aci, %.preheader.i30.i.prol ]
  %i.acj = icmp ult i64 %i.acb, 12
  br i1 %i.acj, label %.loopexit.i35.i, label %.preheader.i30.i

.preheader.i30.i:                                 ; preds = %.preheader.i30.i.prol.loopexit, %.preheader.i30.i
  %.0229.i31.i = phi ptr [ %i.acy, %.preheader.i30.i ], [ %.0229.i31.i.unr, %.preheader.i30.i.prol.loopexit ] ; 6 uses
  %.0228.i32.i = phi ptr [ %i.acz, %.preheader.i30.i ], [ %.0228.i32.i.unr, %.preheader.i30.i.prol.loopexit ] ; 6 uses
  %.0227.i33.i = phi i64 [ %i.ada, %.preheader.i30.i ], [ %.0227.i33.i.unr, %.preheader.i30.i.prol.loopexit ]
  %i.ack = load i32, ptr %.0229.i31.i, align 4
  %i.acl = load i32, ptr %.0228.i32.i, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %.0229.i31.i, i64 4 ; 2 uses
  store i32 %i.acl, ptr %.0229.i31.i, align 4
  %i.acn = getelementptr inbounds nuw i8, ptr %.0228.i32.i, i64 4 ; 2 uses
  store i32 %i.ack, ptr %.0228.i32.i, align 4
  %i.aco = load i32, ptr %i.acm, align 4
  %i.acp = load i32, ptr %i.acn, align 4
  %i.acq = getelementptr inbounds nuw i8, ptr %.0229.i31.i, i64 8 ; 2 uses
  store i32 %i.acp, ptr %i.acm, align 4
  %i.acr = getelementptr inbounds nuw i8, ptr %.0228.i32.i, i64 8 ; 2 uses
  store i32 %i.aco, ptr %i.acn, align 4
  %i.acs = load i32, ptr %i.acq, align 4
  %i.act = load i32, ptr %i.acr, align 4
  %i.acu = getelementptr inbounds nuw i8, ptr %.0229.i31.i, i64 12 ; 2 uses
  store i32 %i.act, ptr %i.acq, align 4
  %i.acv = getelementptr inbounds nuw i8, ptr %.0228.i32.i, i64 12 ; 2 uses
  store i32 %i.acs, ptr %i.acr, align 4
  %i.acw = load i32, ptr %i.acu, align 4
  %i.acx = load i32, ptr %i.acv, align 4
  %i.acy = getelementptr inbounds nuw i8, ptr %.0229.i31.i, i64 16
  store i32 %i.acx, ptr %i.acu, align 4
  %i.acz = getelementptr inbounds nuw i8, ptr %.0228.i32.i, i64 16
  store i32 %i.acw, ptr %i.acv, align 4
  %i.ada = add i64 %.0227.i33.i, -16              ; 2 uses
  %.not287.i34.i.3 = icmp eq i64 %i.ada, 0
  br i1 %.not287.i34.i.3, label %.loopexit.i35.i, label %.preheader.i30.i, !llvm.loop !242

.loopexit.i35.i:                                  ; preds = %.preheader.i30.i.prol.loopexit, %.preheader.i30.i, %middle.block548, %._crit_edge329.i28.i, %.thread.i21.i
  %i.adb = mul i64 %2, %1                         ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 %i.adb
  %.not288339.i36.i = icmp samesign eq i64 %2, %i.adb
  br i1 %.not288339.i36.i, label %qsort_r_aligned.exit.i, label %.lr.ph343.i37.i

.lr.ph343.i37.i:                                  ; preds = %.loopexit.i35.i
  %.10338.i38.i = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.add = sub i64 0, %2
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge.thread.i47.i, %.lr.ph343.i37.i
  %.10341.i39.i = phi ptr [ %.10338.i38.i, %.lr.ph343.i37.i ], [ %.10.i48.i, %.critedge.thread.i47.i ] ; 5 uses
  %.pn340.i40.i = phi ptr [ %0, %.lr.ph343.i37.i ], [ %.10341.i39.i, %.critedge.thread.i47.i ] ; 3 uses
  %.not289331.i41.i = icmp ult ptr %.pn340.i40.i, %0
  br i1 %.not289331.i41.i, label %.critedge.thread.i47.i, label %.lr.ph334.i42.i

.lr.ph334.i42.i:                                  ; preds = %bb.bq, %bb.br
  %.0332.i43.i = phi ptr [ %i.adg, %bb.br ], [ %.pn340.i40.i, %bb.bq ] ; 3 uses
  %i.ade = tail call i32 %3(ptr noundef %.0332.i43.i, ptr noundef %.10341.i39.i) #4, !inline_history !200
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %bb.br, label %.critedge.i44.i

bb.br:                                            ; preds = %.lr.ph334.i42.i
  %i.adg = getelementptr inbounds i8, ptr %.0332.i43.i, i64 %i.add ; 3 uses
  %.not289.i50.i = icmp ult ptr %i.adg, %0
  br i1 %.not289.i50.i, label %.critedge.i44.i, label %.lr.ph334.i42.i, !llvm.loop !10

.critedge.i44.i:                                  ; preds = %bb.br, %.lr.ph334.i42.i
  %.0.lcssa.i45.i = phi ptr [ %i.adg, %bb.br ], [ %.0332.i43.i, %.lr.ph334.i42.i ] ; 2 uses
  %.not290.i46.i = icmp eq ptr %.0.lcssa.i45.i, %.pn340.i40.i
  br i1 %.not290.i46.i, label %.critedge.thread.i47.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i44.i
  %i.adh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i45.i, i64 %2 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ny, ptr align 1 %.10341.i39.i, i64 range(i64 5, 4) %2, i1 false)
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 %2
  %i.adj = ptrtoint ptr %.10341.i39.i to i64
  %i.adk = ptrtoint ptr %i.adh to i64
  %i.adl = sub i64 %i.adj, %i.adk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.adi, ptr align 1 %i.adh, i64 %i.adl, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adh, ptr align 1 %i.ny, i64 range(i64 5, 4) %2, i1 false)
  br label %.critedge.thread.i47.i

.critedge.thread.i47.i:                           ; preds = %bb.bs, %.critedge.i44.i, %bb.bq
  %.10.i48.i = getelementptr inbounds nuw i8, ptr %.10341.i39.i, i64 %2 ; 2 uses
  %.not288.i49.i = icmp eq ptr %.10.i48.i, %i.adc
  br i1 %.not288.i49.i, label %qsort_r_aligned.exit.i, label %bb.bq, !llvm.loop !11

qsort_r_aligned.exit.i:                           ; preds = %.critedge.thread.i47.i, %.loopexit.i35.i
  tail call void @SDL_free_REAL(ptr noundef %i.ny) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %SDL_qsort_r_REAL.exit

bb.bt:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.adm = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 4) #4 ; 8 uses
  %i.adn = shl i64 %1, 2                          ; 5 uses
  %i.ado = add i64 %i.adn, -52
  %i.adp = icmp ult i64 %i.ado, -48
  br i1 %i.adp, label %bb.bu, label %.lr.ph221.preheader.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.adq = getelementptr i8, ptr %0, i64 %i.adn
  %i.adr = getelementptr i8, ptr %i.adq, i64 -4   ; 2 uses
  %i.ads = add i64 %i.adn, -4                     ; 2 uses
  %i.adt = lshr exact i64 %i.ads, 1
  %i.adu = and i64 %i.adt, 9223372036854775804
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 %i.adu ; 2 uses
  %.not212.i.i = icmp ult ptr %i.adv, %i.adr
  br i1 %.not212.i.i, label %.lr.ph.i120.i, label %.lr.ph221.preheader.i.i

.lr.ph.i120.i:                                    ; preds = %bb.bu, %bb.dd
  %i.adw = phi ptr [ %i.aie, %bb.dd ], [ %i.adv, %bb.bu ] ; 19 uses
  %i.adx = phi i64 [ %.pre-phi247.i.i, %bb.dd ], [ %i.ads, %bb.bu ]
  %.0167215.i.i = phi i32 [ %.1.i126.i, %bb.dd ], [ 0, %bb.bu ] ; 8 uses
  %.0179214.i.i = phi ptr [ %.1180.i.i, %bb.dd ], [ %0, %bb.bu ] ; 22 uses
  %.0181213.i.i = phi ptr [ %.1182.i.i, %bb.dd ], [ %i.adr, %bb.bu ] ; 23 uses
  %i.ady = icmp ugt i64 %i.adx, 160
  br i1 %i.ady, label %bb.bv, label %bb.ch

bb.bv:                                            ; preds = %.lr.ph.i120.i
  %i.adz = ptrtoint ptr %.0181213.i.i to i64
  %i.aea = ptrtoint ptr %.0179214.i.i to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  %i.aec = lshr i64 %i.aeb, 3
  %i.aed = and i64 %i.aec, 2305843009213693948    ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.0179214.i.i, i64 %i.aed ; 4 uses
  %i.aef = shl nuw nsw i64 %i.aed, 1              ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0179214.i.i, i64 %i.aef ; 4 uses
  %i.aeh = tail call i32 %3(ptr noundef %.0179214.i.i, ptr noundef %i.aee) #4, !inline_history !149
  %i.aei = icmp slt i32 %i.aeh, 0
  br i1 %i.aei, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.aej = tail call i32 %3(ptr noundef %i.aee, ptr noundef %i.aeg) #4, !inline_history !149
  %i.aek = icmp slt i32 %i.aej, 0
end_hunk_1
