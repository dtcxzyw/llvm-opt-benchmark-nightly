Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-draw?download=true
inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hb_gpu_draw_encode:bb.a
.preheader.i.i660:                                ; preds = %.critedge.i.loopexit.i670, %.preheader.preheader.i.i658
  %.01520.i.i661 = phi ptr [ %.015.i.i671, %.critedge.i.loopexit.i670 ], [ %.01519.i.i659, %.preheader.preheader.i.i658 ] ; 3 uses
  %.0.val.pre.i.i662 = load i32, ptr %.01520.i.i661, align 4, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i663 = zext i32 %.0.val.pre.i.i662 to i64
  %.phi.trans.insert22.i.i664 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i663
  %.phi.trans.insert23.i.i665 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i664, i64 16
  %.pre.i.i666 = load double, ptr %.phi.trans.insert23.i.i665, align 8, !tbaa !57
  br label %.lr.ph.i.i667

.lr.ph.i.i667:                                    ; preds = %bb.cb, %.preheader.i.i660
  %.017.i.i668 = phi ptr [ %i.wf, %bb.cb ], [ %.01520.i.i661, %.preheader.i.i660 ] ; 2 uses
  %i.wf = getelementptr inbounds i8, ptr %.017.i.i668, i64 -4 ; 4 uses
  %.val16.i.i669 = load i32, ptr %i.wf, align 4, !tbaa !45 ; 2 uses
  %i.wg = zext i32 %.val16.i.i669 to i64
  %i.wh = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !57
  %i.wk = fcmp ogt double %i.wj, %.pre.i.i666
  br i1 %i.wk, label %bb.cb, label %.critedge.i.loopexit.i670

.critedge.i.loopexit.i670:                        ; preds = %bb.cb, %.lr.ph.i.i667
  %.015.i.i671 = getelementptr inbounds nuw i8, ptr %.01520.i.i661, i64 4 ; 2 uses
  %i.wl = icmp ult ptr %.015.i.i671, %i.we
  br i1 %i.wl, label %.preheader.i.i660, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", !llvm.loop !107

bb.cb:                                            ; preds = %.lr.ph.i.i667
  store i32 %.0.val.pre.i.i662, ptr %i.wf, align 4, !tbaa !45
  store i32 %.val16.i.i669, ptr %.017.i.i668, align 4, !tbaa !45
  %i.wm = icmp ugt ptr %i.wf, %i.wd
  br i1 %i.wm, label %.lr.ph.i.i667, label %.critedge.i.loopexit.i670, !llvm.loop !108

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i670, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", %bb.ca
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 1 ; 2 uses
  %exitcond1029.not = icmp eq i64 %indvars.iv.next1026, %i.ii
  br i1 %exitcond1029.not, label %bb.cc, label %.preheader857, !llvm.loop !109

bb.cc:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit"
  %i.wn = add nuw i32 %.lcssa1207, %.lcssa1209    ; 2 uses
  %i.wo = shl nuw i32 %i.wn, 1
  %i.wp = icmp slt i32 %i.wn, 0
  br i1 %i.wp, label %.critedge501, label %.preheader856, !prof !38

.preheader856:                                    ; preds = %bb.cc
  %.not951 = icmp eq i32 %i.au, 1
  br i1 %.not951, label %._crit_edge894, label %.lr.ph893.preheader

.lr.ph893.preheader:                              ; preds = %.preheader856
  %umax1033 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 2)
  %wide.trip.count1034 = zext nneg i32 %umax1033 to i64
  %i.wq = add nsw i64 %wide.trip.count1034, -1    ; 2 uses
  %xtraiter1224 = and i64 %i.wq, 3                ; 3 uses
  %i.wr = icmp ult i32 %i.au, 5
  br i1 %i.wr, label %.lr.ph893.epil.preheader, label %.lr.ph893.preheader.new

.lr.ph893.preheader.new:                          ; preds = %.lr.ph893.preheader
  %unroll_iter1228 = and i64 %i.wq, -4
  br label %.lr.ph893

._crit_edge894.loopexit.unr-lcssa:                ; preds = %.lr.ph893
  %lcmp.mod1225.not = icmp eq i64 %xtraiter1224, 0
  br i1 %lcmp.mod1225.not, label %._crit_edge894, label %.lr.ph893.epil.preheader

.lr.ph893.epil.preheader:                         ; preds = %._crit_edge894.loopexit.unr-lcssa, %.lr.ph893.preheader
  %indvars.iv1030.epil.init = phi i64 [ 1, %.lr.ph893.preheader ], [ %indvars.iv.next1031.3, %._crit_edge894.loopexit.unr-lcssa ]
  %.0464892.epil.init = phi i32 [ 0, %.lr.ph893.preheader ], [ %spec.select.3, %._crit_edge894.loopexit.unr-lcssa ]
  %lcmp.mod1227 = icmp ne i64 %xtraiter1224, 0
  tail call void @llvm.assume(i1 %lcmp.mod1227)
  br label %.lr.ph893.epil

.lr.ph893.epil:                                   ; preds = %.lr.ph893.epil, %.lr.ph893.epil.preheader
  %indvars.iv1030.epil = phi i64 [ %indvars.iv1030.epil.init, %.lr.ph893.epil.preheader ], [ %indvars.iv.next1031.epil, %.lr.ph893.epil ] ; 2 uses
  %.0464892.epil = phi i32 [ %.0464892.epil.init, %.lr.ph893.epil.preheader ], [ %spec.select.epil, %.lr.ph893.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph893.epil.preheader ], [ %epil.iter.next, %.lr.ph893.epil ]
  %i.ws = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030.epil
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 48
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !154, !range !29, !noundef !30
  %i.wv = zext nneg i8 %i.wu to i32
  %spec.select.epil = add i32 %.0464892.epil, %i.wv ; 2 uses
  %indvars.iv.next1031.epil = add nuw nsw i64 %indvars.iv1030.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1224
  br i1 %epil.iter.cmp.not, label %._crit_edge894, label %.lr.ph893.epil, !llvm.loop !110

._crit_edge894:                                   ; preds = %._crit_edge894.loopexit.unr-lcssa, %.lr.ph893.epil, %.preheader856
  %.0464.lcssa = phi i32 [ 0, %.preheader856 ], [ %spec.select.3, %._crit_edge894.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph893.epil ]
  %i.ww = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.au, i32 %.0464.lcssa) ; 2 uses
  %i.wx = extractvalue { i32, i1 } %i.ww, 1
  br i1 %i.wx, label %.critedge501, label %bb.cd, !prof !38

.lr.ph893:                                        ; preds = %.lr.ph893, %.lr.ph893.preheader.new
  %indvars.iv1030 = phi i64 [ 1, %.lr.ph893.preheader.new ], [ %indvars.iv.next1031.3, %.lr.ph893 ] ; 5 uses
  %.0464892 = phi i32 [ 0, %.lr.ph893.preheader.new ], [ %spec.select.3, %.lr.ph893 ]
  %niter1229 = phi i64 [ 0, %.lr.ph893.preheader.new ], [ %niter1229.next.3, %.lr.ph893 ]
  %i.wy = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 48
  %i.xa = load i8, ptr %i.wz, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xb = zext nneg i8 %i.xa to i32
  %spec.select = add i32 %.0464892, %i.xb
  %i.xc = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 104
  %i.xe = load i8, ptr %i.xd, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xf = zext nneg i8 %i.xe to i32
  %spec.select.1 = add i32 %spec.select, %i.xf
  %i.xg = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 160
  %i.xi = load i8, ptr %i.xh, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xj = zext nneg i8 %i.xi to i32
  %spec.select.2 = add i32 %spec.select.1, %i.xj
  %i.xk = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 216
  %i.xm = load i8, ptr %i.xl, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xn = zext nneg i8 %i.xm to i32
  %spec.select.3 = add i32 %spec.select.2, %i.xn  ; 3 uses
  %indvars.iv.next1031.3 = add nuw nsw i64 %indvars.iv1030, 4 ; 2 uses
  %niter1229.next.3 = add nuw i64 %niter1229, 4   ; 2 uses
  %niter1229.ncmp.3 = icmp eq i64 %niter1229.next.3, %unroll_iter1228
  br i1 %niter1229.ncmp.3, label %._crit_edge894.loopexit.unr-lcssa, label %.lr.ph893, !llvm.loop !111

bb.cd:                                            ; preds = %._crit_edge894
  %i.xo = extractvalue { i32, i1 } %i.ww, 0
  %i.xp = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xo, i32 1) ; 2 uses
  %i.xq = extractvalue { i32, i1 } %i.xp, 1
  %i.xr = extractvalue { i32, i1 } %i.xp, 0
  br i1 %i.xq, label %.critedge501, label %bb.ce, !prof !38

bb.ce:                                            ; preds = %bb.cd
  %i.xs = add nuw nsw i32 %i.fl, %i.hq
  %i.xt = add nuw nsw i32 %i.xs, 2                ; 2 uses
  %i.xu = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xt, i32 %i.wo) ; 2 uses
  %i.xv = extractvalue { i32, i1 } %i.xu, 1
  %i.xw = extractvalue { i32, i1 } %i.xu, 0       ; 2 uses
  br i1 %i.xv, label %.critedge501, label %bb.cf, !prof !38

bb.cf:                                            ; preds = %bb.ce
  %i.xx = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xw, i32 %i.xr) ; 2 uses
  %i.xy = extractvalue { i32, i1 } %i.xx, 1
  %i.xz = extractvalue { i32, i1 } %i.xx, 0       ; 2 uses
  %i.ya = icmp ugt i32 %i.xz, 65536
  %or.cond = or i1 %i.xy, %i.ya
  br i1 %or.cond, label %.critedge501, label %bb.cg, !prof !44

bb.cg:                                            ; preds = %bb.cf
  %i.yb = shl nuw nsw i32 %i.xz, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !60
  %i.ye = call noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %i.yd, i32 noundef %i.yb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 23 uses
  %.not493 = icmp eq ptr %i.ye, null
  br i1 %.not493, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %.cont701, !prof !38

.cont701:                                         ; preds = %bb.cg
  store <4 x i16> %i.ez, ptr %i.ye, align 2, !tbaa !156
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = shufflevector <2 x i32> %i.fk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = trunc nuw nsw <2 x i32> %i.yg to <2 x i16>
  store <2 x i16> %i.yh, ptr %i.yf, align 2, !tbaa !156
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.yk = load <2 x i32>, ptr %i.yi, align 8, !tbaa !45
  %i.yl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yk, <2 x i32> splat (i32 -32768))
  %i.ym = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.yl, <2 x i32> splat (i32 32767))
  %i.yn = trunc nsw <2 x i32> %i.ym to <2 x i16>
  store <2 x i16> %i.yn, ptr %i.yj, align 2, !tbaa !156
  %i.yo = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i32 noundef %i.au)
  br i1 %i.yo, label %.preheader855, label %bb.ch, !prof !31

.preheader855:                                    ; preds = %.cont701
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.cm

bb.ch:                                            ; preds = %.cont701
  %i.yq = load ptr, ptr %i.yc, align 8, !tbaa !60 ; 3 uses
  %.not9.i682 = icmp eq ptr %i.yq, null
  br i1 %.not9.i682, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !63
  %i.yt = icmp eq ptr %i.ys, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.yt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !64
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !66
  %.not10.i683 = icmp eq ptr %i.ye, %i.yw
  br i1 %.not10.i683, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @hb_free(ptr noundef nonnull %i.ye) #16
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684

bb.cl:                                            ; preds = %bb.ct
  %i.yx = load ptr, ptr %i.ls, align 8, !tbaa !143
  %i.yy = load ptr, ptr %i.ic, align 8, !tbaa !135
  %foldExtExtBinop = fadd nnan <2 x double> %i.fc, %i.ff
  %i.yz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %2 = fmul nnan double %i.yz, 5.000000e-01       ; 2 uses
  %i.za = fmul nnan double %2, 4.000000e+00
  %3 = call double @llvm.round.f64(double %i.za)
  br label %bb.cu

bb.cm:                                            ; preds = %.preheader855, %bb.ct
  %indvars.iv1036 = phi i64 [ 0, %.preheader855 ], [ %indvars.iv.next1037, %bb.ct ] ; 4 uses
  %.0461895 = phi i32 [ %i.xw, %.preheader855 ], [ %i.aao, %bb.ct ] ; 5 uses
  %i.zb = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1036 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 48
  %i.zd = load i8, ptr %i.zc, align 8, !tbaa !154, !range !29, !noundef !30
  %i.ze = trunc nuw i8 %i.zd to i1
  br i1 %i.ze, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zf = load ptr, ptr %i.yp, align 8, !tbaa !157 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %indvars.iv1036
  store i32 %.0461895, ptr %i.zg, align 4, !tbaa !45
  %i.zh = zext i32 %.0461895 to i64
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.zh
  %i.zj = load <4 x double>, ptr %i.zb, align 8, !tbaa !42
  %i.zk = fmul <4 x double> %i.zj, splat (double 4.000000e+00)
  %i.zl = call <4 x double> @llvm.round.v4f64(<4 x double> %i.zk)
  %i.zm = fptosi <4 x double> %i.zl to <4 x i16>
  store <4 x i16> %i.zm, ptr %i.zi, align 2, !tbaa !156
  %i.zn = add i32 %.0461895, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.zo = add i32 %.0461895, -1
  %i.zp = load ptr, ptr %i.yp, align 8, !tbaa !157 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv1036
  store i32 %i.zo, ptr %i.zq, align 4, !tbaa !45
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.zr = phi ptr [ %i.zf, %bb.cn ], [ %i.zp, %bb.co ] ; 12 uses
  %.1462 = phi i32 [ %i.zn, %bb.cn ], [ %.0461895, %bb.co ] ; 2 uses
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 5 uses
  %i.zs = icmp samesign ult i64 %indvars.iv.next1037, %wide.trip.count
  br i1 %i.zs, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.zt = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv.next1037
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 48
  %i.zv = load i8, ptr %i.zu, align 8, !tbaa !154, !range !29, !noundef !30
  %i.zw = trunc nuw i8 %i.zv to i1
  %i.zx = xor i1 %i.zw, true
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.zy = phi i1 [ false, %bb.cp ], [ %i.zx, %bb.cq ]
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  %i.aaa = zext i32 %.1462 to i64
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aaa ; 2 uses
  %i.aac = load <2 x double>, ptr %i.zz, align 8, !tbaa !42
  %i.aad = fmul <2 x double> %i.aac, splat (double 4.000000e+00)
  %i.aae = call <2 x double> @llvm.round.v2f64(<2 x double> %i.aad)
  %i.aaf = fptosi <2 x double> %i.aae to <2 x i16>
  store <2 x i16> %i.aaf, ptr %i.aab, align 2, !tbaa !156
  br i1 %i.zy, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aag = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv.next1037
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load <2 x double>, ptr %i.aah, align 8, !tbaa !42
  %i.aaj = fmul <2 x double> %i.aai, splat (double 4.000000e+00)
  %i.aak = call <2 x double> @llvm.round.v2f64(<2 x double> %i.aaj)
  %i.aal = fptosi <2 x double> %i.aak to <2 x i16>
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.aam = phi <2 x i16> [ %i.aal, %bb.cs ], [ zeroinitializer, %bb.cr ]
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  store <2 x i16> %i.aam, ptr %i.aan, align 2, !tbaa !156
  %i.aao = add i32 %.1462, 1
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count
  br i1 %exitcond1040.not, label %bb.cl, label %bb.cm, !llvm.loop !112

.preheader853:                                    ; preds = %._crit_edge920
  %i.aap = load ptr, ptr %i.mc, align 8, !tbaa !144
  %i.aaq = load ptr, ptr %i.ig, align 8, !tbaa !136
  %foldExtExtBinop1198 = fadd nnan <2 x double> %i.fc, %i.ff
  %i.aar = extractelement <2 x double> %foldExtExtBinop1198, i64 1
  %4 = fmul nnan double %i.aar, 5.000000e-01      ; 2 uses
  %i.aas = fmul nnan double %4, 4.000000e+00
  %5 = call double @llvm.round.f64(double %i.aas)
  %i.aat = zext nneg i32 %i.fl to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aat
  br label %bb.db

bb.cu:                                            ; preds = %bb.cl, %._crit_edge920
  %indvars.iv1062 = phi i64 [ 0, %bb.cl ], [ %indvars.iv.next1063, %._crit_edge920 ] ; 4 uses
  %.0454922 = phi i32 [ %i.xt, %bb.cl ], [ %.2456.lcssa, %._crit_edge920 ] ; 5 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv1062
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !45 ; 8 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv1062
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !45 ; 7 uses
  %.not952 = icmp eq i32 %i.aax, 0
  br i1 %.not952, label %._crit_edge920, label %.lr.ph909

.lr.ph909:                                        ; preds = %bb.cu
  %i.aay = load ptr, ptr %i.et, align 8, !tbaa !133 ; 2 uses
  %i.aaz = load ptr, ptr %i.sh, align 8, !tbaa !149
  %i.aba = add i32 %i.aav, -1
  %wide.trip.count1048 = zext i32 %i.aax to i64   ; 6 uses
  br label %bb.cv

._crit_edge910:                                   ; preds = %.critedge
  %6 = fmul double %.1450, 4.000000e+00
  %7 = call double @llvm.round.f64(double %6)     ; 2 uses
  %i.abb = load ptr, ptr %i.sh, align 8, !tbaa !149 ; 3 uses
  %i.abc = add nsw i64 %wide.trip.count1048, -1   ; 2 uses
  %xtraiter1231 = and i64 %wide.trip.count1048, 1
  %i.abd = icmp eq i64 %i.abc, 0
  br i1 %i.abd, label %.epil.preheader1230, label %._crit_edge910.new

._crit_edge910.new:                               ; preds = %._crit_edge910
  %unroll_iter1236 = and i64 %wide.trip.count1048, 4294967294
  br label %bb.cy

bb.cv:                                            ; preds = %.lr.ph909, %.critedge
  %indvars.iv1044 = phi i64 [ 0, %.lr.ph909 ], [ %indvars.iv.next1045, %.critedge ] ; 2 uses
  %.0449906 = phi double [ %2, %.lr.ph909 ], [ %.1450, %.critedge ]
  %.0451905 = phi i32 [ %i.aax, %.lr.ph909 ], [ %.1452, %.critedge ] ; 2 uses
  %.0831904 = phi i32 [ %i.aax, %.lr.ph909 ], [ %.1832.lcssa, %.critedge ] ; 2 uses
  %i.abe = trunc nuw i64 %indvars.iv1044 to i32
  %i.abf = add i32 %i.aav, %i.abe
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.abg
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !45
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [56 x i8], ptr %i.aay, i64 %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !54 ; 2 uses
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 3 uses
  %.not495897 = icmp eq i32 %.0831904, 0
  br i1 %.not495897, label %.critedge, label %.lr.ph900

.lr.ph900:                                        ; preds = %bb.cv
  %i.abn = load ptr, ptr %i.si, align 8, !tbaa !150
  %i.abo = zext i32 %.0831904 to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph900, %bb.cx
  %indvars.iv1041 = phi i64 [ %i.abo, %.lr.ph900 ], [ %indvars.iv.next1042, %bb.cx ] ; 2 uses
  %i.abp = trunc nuw i64 %indvars.iv1041 to i32   ; 2 uses
  %i.abq = add i32 %i.aba, %i.abp
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !45
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [56 x i8], ptr %i.aay, i64 %i.abu
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !55
  %i.abx = fcmp ogt double %i.abw, %i.abm
  br i1 %i.abx, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1 ; 2 uses
  %i.aby = and i64 %indvars.iv.next1042, 4294967295
  %.not495 = icmp eq i64 %i.aby, 0
  br i1 %.not495, label %.critedge, label %bb.cw, !llvm.loop !113

.critedge:                                        ; preds = %bb.cw, %bb.cx, %bb.cv
  %.1832.lcssa = phi i32 [ 0, %bb.cv ], [ 0, %bb.cx ], [ %i.abp, %bb.cw ] ; 2 uses
  %i.abz = trunc nuw i64 %indvars.iv.next1045 to i32
  %.sroa.speculated691 = call i32 @llvm.umax.i32(i32 %i.abz, i32 %.1832.lcssa) ; 2 uses
  %i.aca = icmp ult i32 %.sroa.speculated691, %.0451905
  %.1452 = call i32 @llvm.umin.i32(i32 %.sroa.speculated691, i32 %.0451905)
  %.1450 = select i1 %i.aca, double %i.abm, double %.0449906 ; 2 uses
  %exitcond1049.not = icmp eq i64 %indvars.iv.next1045, %wide.trip.count1048
  br i1 %exitcond1049.not, label %._crit_edge910, label %bb.cv, !llvm.loop !114

.lr.ph919.unr-lcssa:                              ; preds = %bb.cy
  %lcmp.mod1233.not = icmp eq i64 %xtraiter1231, 0
  br i1 %lcmp.mod1233.not, label %.lr.ph919, label %.epil.preheader1230

.epil.preheader1230:                              ; preds = %.lr.ph919.unr-lcssa, %._crit_edge910
  %indvars.iv1050.epil.init = phi i64 [ 0, %._crit_edge910 ], [ %indvars.iv.next1051.1, %.lr.ph919.unr-lcssa ]
  %.1455912.epil.init = phi i32 [ %.0454922, %._crit_edge910 ], [ %i.adq, %.lr.ph919.unr-lcssa ] ; 2 uses
  %lcmp.mod1235 = trunc i32 %i.aax to i1
  call void @llvm.assume(i1 %lcmp.mod1235)
  %i.acb = trunc nuw i64 %indvars.iv1050.epil.init to i32
  %i.acc = add i32 %i.aav, %i.acb
  %i.acd = zext i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !45
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !45
  %i.acj = trunc i32 %i.aci to i16
  %i.ack = zext i32 %.1455912.epil.init to i64
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.ack
  %.scalar.epil = xor i16 %i.acj, -32768
  %i.acm = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar.epil, i64 0
  store <4 x i16> %i.acm, ptr %i.acl, align 2, !tbaa !156
  %i.acn = add i32 %.1455912.epil.init, 1
  br label %.lr.ph919

.lr.ph919:                                        ; preds = %.lr.ph919.unr-lcssa, %.epil.preheader1230
  %.lcssa1204 = phi i32 [ %i.adq, %.lr.ph919.unr-lcssa ], [ %i.acn, %.epil.preheader1230 ] ; 4 uses
  %i.aco = load ptr, ptr %i.si, align 8, !tbaa !150 ; 3 uses
  %xtraiter1239 = and i64 %wide.trip.count1048, 1
  %i.acp = icmp eq i64 %i.abc, 0
  br i1 %i.acp, label %.epil.preheader1238, label %.lr.ph919.new

.lr.ph919.new:                                    ; preds = %.lr.ph919
  %unroll_iter1244 = and i64 %wide.trip.count1048, 4294967294
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cy, %._crit_edge910.new
  %indvars.iv1050 = phi i64 [ 0, %._crit_edge910.new ], [ %indvars.iv.next1051.1, %bb.cy ] ; 3 uses
  %.1455912 = phi i32 [ %.0454922, %._crit_edge910.new ], [ %i.adq, %bb.cy ] ; 3 uses
  %niter1237 = phi i64 [ 0, %._crit_edge910.new ], [ %niter1237.next.1, %bb.cy ]
  %i.acq = trunc nuw i64 %indvars.iv1050 to i32
  %i.acr = add i32 %i.aav, %i.acq
  %i.acs = zext i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !45
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.acv
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !45
  %i.acy = trunc i32 %i.acx to i16
  %i.acz = zext i32 %.1455912 to i64
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.acz
  %.scalar = xor i16 %i.acy, -32768
  %i.adb = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar, i64 0
  store <4 x i16> %i.adb, ptr %i.ada, align 2, !tbaa !156
  %i.adc = add i32 %.1455912, 1
  %i.add = trunc i64 %indvars.iv1050 to i32
  %i.ade = or disjoint i32 %i.add, 1
  %i.adf = add i32 %i.aav, %i.ade
  %i.adg = zext i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !45
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !45
  %i.adm = trunc i32 %i.adl to i16
  %i.adn = zext i32 %i.adc to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.adn
  %.scalar.1 = xor i16 %i.adm, -32768
  %i.adp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar.1, i64 0
  store <4 x i16> %i.adp, ptr %i.ado, align 2, !tbaa !156
  %i.adq = add i32 %.1455912, 2                   ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter1237.next.1 = add i64 %niter1237, 2       ; 2 uses
  %niter1237.ncmp.1 = icmp eq i64 %niter1237.next.1, %unroll_iter1236
  br i1 %niter1237.ncmp.1, label %.lr.ph919.unr-lcssa, label %bb.cy, !llvm.loop !115

._crit_edge920.loopexit.unr-lcssa:                ; preds = %bb.cz
  %lcmp.mod1241.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1241.not, label %._crit_edge920, label %.epil.preheader1238

.epil.preheader1238:                              ; preds = %._crit_edge920.loopexit.unr-lcssa, %.lr.ph919
  %indvars.iv1056.epil.init = phi i64 [ 0, %.lr.ph919 ], [ %indvars.iv.next1057.1, %._crit_edge920.loopexit.unr-lcssa ]
  %.2456917.epil.init = phi i32 [ %.lcssa1204, %.lr.ph919 ], [ %i.afp, %._crit_edge920.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1243 = trunc i32 %i.aax to i1
  call void @llvm.assume(i1 %lcmp.mod1243)
  %i.adr = trunc nuw i64 %indvars.iv1056.epil.init to i32
  %i.ads = add i32 %i.aav, %i.adr
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !45
  %i.adw = zext i32 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.adw
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !45
  %i.adz = trunc i32 %i.ady to i16
  %i.aea = zext i32 %.2456917.epil.init to i64
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aea
  %.scalar1200.epil = xor i16 %i.adz, -32768
  %i.aec = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200.epil, i64 0
  store <4 x i16> %i.aec, ptr %i.aeb, align 2, !tbaa !156
  %i.aed = add i32 %.2456917.epil.init, 1
  br label %._crit_edge920

._crit_edge920:                                   ; preds = %.epil.preheader1238, %._crit_edge920.loopexit.unr-lcssa, %bb.cu
  %.1455.lcssa1155 = phi i32 [ %.0454922, %bb.cu ], [ %.lcssa1204, %._crit_edge920.loopexit.unr-lcssa ], [ %.lcssa1204, %.epil.preheader1238 ]
  %.in = phi double [ %3, %bb.cu ], [ %7, %._crit_edge920.loopexit.unr-lcssa ], [ %7, %.epil.preheader1238 ]
  %.2456.lcssa = phi i32 [ %.0454922, %bb.cu ], [ %i.afp, %._crit_edge920.loopexit.unr-lcssa ], [ %i.aed, %.epil.preheader1238 ] ; 2 uses
  %i.aee = fptosi double %.in to i16
  %i.aef = trunc i32 %i.aax to i16
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv1062 ; 4 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  store i16 %i.aef, ptr %i.aeh, align 2, !tbaa !159
  %i.aei = trunc i32 %.0454922 to i16
  %i.aej = xor i16 %i.aei, -32768
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 18
  store i16 %i.aej, ptr %i.aek, align 2, !tbaa !160
  %i.ael = trunc i32 %.1455.lcssa1155 to i16
  %i.aem = xor i16 %i.ael, -32768
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeg, i64 20
  store i16 %i.aem, ptr %i.aen, align 2, !tbaa !161
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 22
  store i16 %i.aee, ptr %i.aeo, align 2, !tbaa !162
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %exitcond1067.not = icmp eq i64 %indvars.iv.next1063, %i.ie
  br i1 %exitcond1067.not, label %.preheader853, label %bb.cu, !llvm.loop !116

bb.cz:                                            ; preds = %bb.cz, %.lr.ph919.new
  %indvars.iv1056 = phi i64 [ 0, %.lr.ph919.new ], [ %indvars.iv.next1057.1, %bb.cz ] ; 3 uses
  %.2456917 = phi i32 [ %.lcssa1204, %.lr.ph919.new ], [ %i.afp, %bb.cz ] ; 3 uses
  %niter1245 = phi i64 [ 0, %.lr.ph919.new ], [ %niter1245.next.1, %bb.cz ]
  %i.aep = trunc nuw i64 %indvars.iv1056 to i32
  %i.aeq = add i32 %i.aav, %i.aep
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.aer
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !45
  %i.aeu = zext i32 %i.aet to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aeu
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !45
  %i.aex = trunc i32 %i.aew to i16
  %i.aey = zext i32 %.2456917 to i64
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aey
  %.scalar1200 = xor i16 %i.aex, -32768
  %i.afa = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200, i64 0
  store <4 x i16> %i.afa, ptr %i.aez, align 2, !tbaa !156
  %i.afb = add i32 %.2456917, 1
  %i.afc = trunc i64 %indvars.iv1056 to i32
  %i.afd = or disjoint i32 %i.afc, 1
  %i.afe = add i32 %i.aav, %i.afd
  %i.aff = zext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !45
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !45
  %i.afl = trunc i32 %i.afk to i16
  %i.afm = zext i32 %i.afb to i64
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.afm
  %.scalar1200.1 = xor i16 %i.afl, -32768
  %i.afo = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200.1, i64 0
  store <4 x i16> %i.afo, ptr %i.afn, align 2, !tbaa !156
  %i.afp = add i32 %.2456917, 2                   ; 3 uses
  %indvars.iv.next1057.1 = add nuw nsw i64 %indvars.iv1056, 2 ; 2 uses
  %niter1245.next.1 = add i64 %niter1245, 2       ; 2 uses
  %niter1245.ncmp.1 = icmp eq i64 %niter1245.next.1, %unroll_iter1244
  br i1 %niter1245.ncmp.1, label %._crit_edge920.loopexit.unr-lcssa, label %bb.cz, !llvm.loop !117

bb.da:                                            ; preds = %._crit_edge947
  %i.afq = load ptr, ptr %i.yc, align 8, !tbaa !60
  store ptr null, ptr %i.yc, align 8, !tbaa !60
  %i.afr = load i32, ptr %i.a, align 4, !tbaa !45
  %i.afs = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.aft = call noundef ptr @_ZN9hb_blob_t16recycle_finalizeEPcjjPS_S0_(ptr noundef nonnull %i.ye, i32 noundef %i.afr, i32 noundef %i.yb, ptr noundef %i.afq, ptr noundef %i.afs)
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684

bb.db:                                            ; preds = %.preheader853, %._crit_edge947
  %indvars.iv1090 = phi i64 [ 0, %.preheader853 ], [ %indvars.iv.next1091, %._crit_edge947 ] ; 4 uses
  %.3457949 = phi i32 [ %.2456.lcssa, %.preheader853 ], [ %.5459.lcssa, %._crit_edge947 ] ; 5 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv1090
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !45 ; 8 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv1090
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !45 ; 7 uses
  %.not955 = icmp eq i32 %i.afx, 0
  br i1 %.not955, label %._crit_edge947, label %.lr.ph936

.lr.ph936:                                        ; preds = %bb.db
  %i.afy = load ptr, ptr %i.et, align 8, !tbaa !133 ; 2 uses
  %i.afz = load ptr, ptr %i.sj, align 8, !tbaa !151
  %i.aga = add i32 %i.afv, -1
  %wide.trip.count1076 = zext i32 %i.afx to i64   ; 6 uses
  br label %bb.dc

._crit_edge937:                                   ; preds = %.critedge3
  %8 = fmul double %.1442, 4.000000e+00
  %9 = call double @llvm.round.f64(double %8)     ; 2 uses
  %i.agb = load ptr, ptr %i.sj, align 8, !tbaa !151 ; 3 uses
  %i.agc = add nsw i64 %wide.trip.count1076, -1   ; 2 uses
  %xtraiter1247 = and i64 %wide.trip.count1076, 1
  %i.agd = icmp eq i64 %i.agc, 0
  br i1 %i.agd, label %.epil.preheader1246, label %._crit_edge937.new

._crit_edge937.new:                               ; preds = %._crit_edge937
  %unroll_iter1252 = and i64 %wide.trip.count1076, 4294967294
  br label %bb.df

bb.dc:                                            ; preds = %.lr.ph936, %.critedge3
  %indvars.iv1072 = phi i64 [ 0, %.lr.ph936 ], [ %indvars.iv.next1073, %.critedge3 ] ; 2 uses
  %.0441933 = phi double [ %4, %.lr.ph936 ], [ %.1442, %.critedge3 ]
  %.0443932 = phi i32 [ %i.afx, %.lr.ph936 ], [ %.1444, %.critedge3 ] ; 2 uses
  %.0931 = phi i32 [ %i.afx, %.lr.ph936 ], [ %.1.lcssa, %.critedge3 ] ; 2 uses
  %i.age = trunc nuw i64 %indvars.iv1072 to i32
  %i.agf = add i32 %i.afv, %i.age
  %i.agg = zext i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !45
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [56 x i8], ptr %i.afy, i64 %i.agj
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 24
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !56 ; 2 uses
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 1 ; 3 uses
  %.not494924 = icmp eq i32 %.0931, 0
  br i1 %.not494924, label %.critedge3, label %.lr.ph927

.lr.ph927:                                        ; preds = %bb.dc
  %i.agn = load ptr, ptr %i.sk, align 8, !tbaa !152
  %i.ago = zext i32 %.0931 to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph927, %bb.de
  %indvars.iv1068 = phi i64 [ %i.ago, %.lr.ph927 ], [ %indvars.iv.next1069, %bb.de ] ; 2 uses
  %i.agp = trunc nuw i64 %indvars.iv1068 to i32   ; 2 uses
  %i.agq = add i32 %i.aga, %i.agp
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.agr
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !45
  %i.agu = zext i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [56 x i8], ptr %i.afy, i64 %i.agu
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !57
  %i.agy = fcmp ogt double %i.agx, %i.agm
  br i1 %i.agy, label %bb.de, label %.critedge3

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -1 ; 2 uses
  %i.agz = and i64 %indvars.iv.next1069, 4294967295
  %.not494 = icmp eq i64 %i.agz, 0
  br i1 %.not494, label %.critedge3, label %bb.dd, !llvm.loop !118

.critedge3:                                       ; preds = %bb.dd, %bb.de, %bb.dc
  %.1.lcssa = phi i32 [ 0, %bb.dc ], [ 0, %bb.de ], [ %i.agp, %bb.dd ] ; 2 uses
  %i.aha = trunc nuw i64 %indvars.iv.next1073 to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.aha, i32 %.1.lcssa) ; 2 uses
  %i.ahb = icmp ult i32 %.sroa.speculated, %.0443932
  %.1444 = call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %.0443932)
  %.1442 = select i1 %i.ahb, double %i.agm, double %.0441933 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1073, %wide.trip.count1076
  br i1 %exitcond1077.not, label %._crit_edge937, label %bb.dc, !llvm.loop !119

.lr.ph946.unr-lcssa:                              ; preds = %bb.df
  %lcmp.mod1249.not = icmp eq i64 %xtraiter1247, 0
  br i1 %lcmp.mod1249.not, label %.lr.ph946, label %.epil.preheader1246

.epil.preheader1246:                              ; preds = %.lr.ph946.unr-lcssa, %._crit_edge937
  %indvars.iv1078.epil.init = phi i64 [ 0, %._crit_edge937 ], [ %indvars.iv.next1079.1, %.lr.ph946.unr-lcssa ]
  %.4458939.epil.init = phi i32 [ %.3457949, %._crit_edge937 ], [ %i.air, %.lr.ph946.unr-lcssa ] ; 2 uses
  %lcmp.mod1251 = trunc i32 %i.afx to i1
  call void @llvm.assume(i1 %lcmp.mod1251)
  %i.ahc = trunc nuw i64 %indvars.iv1078.epil.init to i32
  %i.ahd = add i32 %i.afv, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !45
  %i.ahh = zext i32 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !45
  %i.ahk = trunc i32 %i.ahj to i16
  %i.ahl = zext i32 %.4458939.epil.init to i64
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.ahl
  %.scalar1201.epil = xor i16 %i.ahk, -32768
  %i.ahn = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201.epil, i64 0
  store <4 x i16> %i.ahn, ptr %i.ahm, align 2, !tbaa !156
  %i.aho = add i32 %.4458939.epil.init, 1
  br label %.lr.ph946

.lr.ph946:                                        ; preds = %.lr.ph946.unr-lcssa, %.epil.preheader1246
  %.lcssa = phi i32 [ %i.air, %.lr.ph946.unr-lcssa ], [ %i.aho, %.epil.preheader1246 ] ; 4 uses
  %i.ahp = load ptr, ptr %i.sk, align 8, !tbaa !152 ; 3 uses
  %xtraiter1255 = and i64 %wide.trip.count1076, 1
  %i.ahq = icmp eq i64 %i.agc, 0
  br i1 %i.ahq, label %.epil.preheader1254, label %.lr.ph946.new

.lr.ph946.new:                                    ; preds = %.lr.ph946
  %unroll_iter1260 = and i64 %wide.trip.count1076, 4294967294
  br label %bb.dg

bb.df:                                            ; preds = %bb.df, %._crit_edge937.new
  %indvars.iv1078 = phi i64 [ 0, %._crit_edge937.new ], [ %indvars.iv.next1079.1, %bb.df ] ; 3 uses
  %.4458939 = phi i32 [ %.3457949, %._crit_edge937.new ], [ %i.air, %bb.df ] ; 3 uses
  %niter1253 = phi i64 [ 0, %._crit_edge937.new ], [ %niter1253.next.1, %bb.df ]
  %i.ahr = trunc nuw i64 %indvars.iv1078 to i32
  %i.ahs = add i32 %i.afv, %i.ahr
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.aht
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !45
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.ahw
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !45
  %i.ahz = trunc i32 %i.ahy to i16
  %i.aia = zext i32 %.4458939 to i64
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aia
  %.scalar1201 = xor i16 %i.ahz, -32768
  %i.aic = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201, i64 0
  store <4 x i16> %i.aic, ptr %i.aib, align 2, !tbaa !156
  %i.aid = add i32 %.4458939, 1
  %i.aie = trunc i64 %indvars.iv1078 to i32
  %i.aif = or disjoint i32 %i.aie, 1
  %i.aig = add i32 %i.afv, %i.aif
  %i.aih = zext i32 %i.aig to i64
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !45
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !45
  %i.ain = trunc i32 %i.aim to i16
  %i.aio = zext i32 %i.aid to i64
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aio
  %.scalar1201.1 = xor i16 %i.ain, -32768
  %i.aiq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201.1, i64 0
  store <4 x i16> %i.aiq, ptr %i.aip, align 2, !tbaa !156
  %i.air = add i32 %.4458939, 2                   ; 3 uses
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %niter1253.next.1 = add i64 %niter1253, 2       ; 2 uses
  %niter1253.ncmp.1 = icmp eq i64 %niter1253.next.1, %unroll_iter1252
  br i1 %niter1253.ncmp.1, label %.lr.ph946.unr-lcssa, label %bb.df, !llvm.loop !120

._crit_edge947.loopexit.unr-lcssa:                ; preds = %bb.dg
  %lcmp.mod1257.not = icmp eq i64 %xtraiter1255, 0
  br i1 %lcmp.mod1257.not, label %._crit_edge947, label %.epil.preheader1254

.epil.preheader1254:                              ; preds = %._crit_edge947.loopexit.unr-lcssa, %.lr.ph946
  %indvars.iv1084.epil.init = phi i64 [ 0, %.lr.ph946 ], [ %indvars.iv.next1085.1, %._crit_edge947.loopexit.unr-lcssa ]
  %.5459944.epil.init = phi i32 [ %.lcssa, %.lr.ph946 ], [ %i.akp, %._crit_edge947.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1259 = trunc i32 %i.afx to i1
  call void @llvm.assume(i1 %lcmp.mod1259)
  %i.ais = trunc nuw i64 %indvars.iv1084.epil.init to i32
  %i.ait = add i32 %i.afv, %i.ais
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !45
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aix
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !45
  %i.aja = trunc i32 %i.aiz to i16
  %i.ajb = zext i32 %.5459944.epil.init to i64
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.ajb
  %.scalar1202.epil = xor i16 %i.aja, -32768
  %i.ajd = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202.epil, i64 0
  store <4 x i16> %i.ajd, ptr %i.ajc, align 2, !tbaa !156
  %i.aje = add i32 %.5459944.epil.init, 1
  br label %._crit_edge947

._crit_edge947:                                   ; preds = %.epil.preheader1254, %._crit_edge947.loopexit.unr-lcssa, %bb.db
  %.4458.lcssa1159 = phi i32 [ %.3457949, %bb.db ], [ %.lcssa, %._crit_edge947.loopexit.unr-lcssa ], [ %.lcssa, %.epil.preheader1254 ]
  %.in1189 = phi double [ %5, %bb.db ], [ %9, %._crit_edge947.loopexit.unr-lcssa ], [ %9, %.epil.preheader1254 ]
  %.5459.lcssa = phi i32 [ %.3457949, %bb.db ], [ %i.akp, %._crit_edge947.loopexit.unr-lcssa ], [ %i.aje, %.epil.preheader1254 ]
  %i.ajf = fptosi double %.in1189 to i16
  %i.ajg = trunc i32 %i.afx to i16
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1090 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store i16 %i.ajg, ptr %i.ajh, align 2, !tbaa !159
  %i.aji = trunc i32 %.3457949 to i16
  %i.ajj = xor i16 %i.aji, -32768
  %i.ajk = getelementptr inbounds nuw i8, ptr %gep, i64 18
  store i16 %i.ajj, ptr %i.ajk, align 2, !tbaa !160
  %i.ajl = trunc i32 %.4458.lcssa1159 to i16
  %i.ajm = xor i16 %i.ajl, -32768
  %i.ajn = getelementptr inbounds nuw i8, ptr %gep, i64 20
  store i16 %i.ajm, ptr %i.ajn, align 2, !tbaa !161
  %i.ajo = getelementptr inbounds nuw i8, ptr %gep, i64 22
  store i16 %i.ajf, ptr %i.ajo, align 2, !tbaa !162
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1 ; 2 uses
  %exitcond1095.not = icmp eq i64 %indvars.iv.next1091, %i.ii
  br i1 %exitcond1095.not, label %bb.da, label %bb.db, !llvm.loop !121

bb.dg:                                            ; preds = %bb.dg, %.lr.ph946.new
  %indvars.iv1084 = phi i64 [ 0, %.lr.ph946.new ], [ %indvars.iv.next1085.1, %bb.dg ] ; 3 uses
  %.5459944 = phi i32 [ %.lcssa, %.lr.ph946.new ], [ %i.akp, %bb.dg ] ; 3 uses
  %niter1261 = phi i64 [ 0, %.lr.ph946.new ], [ %niter1261.next.1, %bb.dg ]
  %i.ajp = trunc nuw i64 %indvars.iv1084 to i32
  %i.ajq = add i32 %i.afv, %i.ajp
  %i.ajr = zext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ajr
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !45
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !45
  %i.ajx = trunc i32 %i.ajw to i16
  %i.ajy = zext i32 %.5459944 to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.ajy
  %.scalar1202 = xor i16 %i.ajx, -32768
  %i.aka = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202, i64 0
  store <4 x i16> %i.aka, ptr %i.ajz, align 2, !tbaa !156
  %i.akb = add i32 %.5459944, 1
  %i.akc = trunc i64 %indvars.iv1084 to i32
  %i.akd = or disjoint i32 %i.akc, 1
  %i.ake = add i32 %i.afv, %i.akd
  %i.akf = zext i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.akf
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !45
  %i.aki = zext i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aki
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !45
  %i.akl = trunc i32 %i.akk to i16
  %i.akm = zext i32 %i.akb to i64
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.akm
  %.scalar1202.1 = xor i16 %i.akl, -32768
  %i.ako = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202.1, i64 0
  store <4 x i16> %i.ako, ptr %i.akn, align 2, !tbaa !156
  %i.akp = add i32 %.5459944, 2                   ; 3 uses
  %indvars.iv.next1085.1 = add nuw nsw i64 %indvars.iv1084, 2 ; 2 uses
  %niter1261.next.1 = add i64 %niter1261, 2       ; 2 uses
  %niter1261.ncmp.1 = icmp eq i64 %niter1261.next.1, %unroll_iter1260
  br i1 %niter1261.ncmp.1, label %._crit_edge947.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !122

_ZN9hb_blob_t13recycle_abortEPcPS_.exit684:       ; preds = %bb.da, %bb.cj, %bb.ck, %bb.cg
  %.3 = phi ptr [ null, %bb.cg ], [ %i.aft, %bb.da ], [ null, %bb.cj ], [ null, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge501

.critedge501:                                     ; preds = %.epil.preheader, %bb.ar, %bb.aq, %.epil.preheader1212, %.critedge505, %bb.at, %bb.bo, %bb.bd, %bb.bc, %bb.au, %.critedge507, %bb.am, %bb.x, %bb.k, %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540, %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit, %bb.t, %bb.aa, %bb.cc, %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, %bb.ce, %bb.cf, %._crit_edge894, %bb.cd, %bb.bl, %bb.bh, %bb.ay, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i
  %.13 = phi ptr [ null, %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit ], [ %i.aw, %bb.i ], [ null, %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540 ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.aa ], [ null, %bb.k ], [ null, %bb.x ], [ null, %bb.t ], [ null, %bb.bh ], [ null, %bb.bl ], [ null, %.epil.preheader1212 ], [ null, %bb.bd ], [ null, %bb.am ], [ %.3, %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684 ], [ null, %bb.au ], [ null, %bb.ay ], [ null, %bb.bo ], [ null, %bb.cc ], [ null, %._crit_edge894 ], [ null, %bb.cd ], [ null, %bb.bc ], [ null, %.critedge507 ], [ null, %bb.cf ], [ null, %bb.ce ], [ null, %bb.at ], [ null, %.critedge505 ], [ null, %bb.aq ], [ null, %bb.ar ], [ null, %.epil.preheader ]
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akq, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.akr, align 8, !tbaa !32
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.aks, align 4, !tbaa !37
  store i8 1, ptr %i.ao, align 8, !tbaa !28
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !40 ; 2 uses
  %i.akv = icmp slt i32 %i.aku, 0
  br i1 %i.akv, label %bb.dh, label %"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit", !prof !38

bb.dh:                                            ; preds = %.critedge501
  %i.akw = xor i32 %i.aku, -1
  store i32 %i.akw, ptr %i.akt, align 8, !tbaa !40
  br label %"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit"

"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit": ; preds = %.critedge501, %bb.dh
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.akx, align 4, !tbaa !39
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> splat (double +inf), ptr %i.aky, align 8, !tbaa !42
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -inf), ptr %i.akz, align 8, !tbaa !42
  ret ptr %.13
}

declare ptr @hb_blob_get_empty() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = shl i32 %i.f, 2                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.e, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store i32 %1, ptr %i.c, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit

_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit:    ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i
  %.1.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !59
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = icmp eq ptr %i.b, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %.not34 = icmp ult i32 %i.g, %1
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %2, align 4, !tbaa !45
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !66
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = lshr i32 %1, 1
  %i.j = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %i.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.038 = phi i32 [ %1, %bb.f ], [ %i.l, %bb.e ]  ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.n = zext i32 %.038 to i64
  %i.o = tail call ptr @hb_realloc(ptr noundef %i.m, i64 noundef %i.n) #16 ; 3 uses
  %.not35 = icmp eq ptr %i.o, null
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %i.e, align 8, !tbaa !66
  store i32 %.038, ptr %i.f, align 8, !tbaa !67
  store i32 %.038, ptr %2, align 4, !tbaa !45
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !66
  store ptr %i.p, ptr %3, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %i.q = zext i32 %1 to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
end_hunk_0
