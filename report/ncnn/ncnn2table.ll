Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN8QuantNet31initialize_static_weight_scalesEv:bb.a
  %lcmp.mod942 = trunc i32 %i.en to i1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph485, %._crit_edge481
  %indvars.iv665 = phi i64 [ 0, %.lr.ph485 ], [ %indvars.iv.next666, %._crit_edge481 ] ; 3 uses
  %i.fb = mul nsw i64 %indvars.iv665, %i.dr
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fb ; 3 uses
  br i1 %i.dn, label %.lr.ph480.preheader, label %._crit_edge481

.lr.ph480.preheader:                              ; preds = %bb.e
  br i1 %i.ds, label %.lr.ph480.epil.preheader, label %.lr.ph480

._crit_edge481.loopexit.unr-lcssa:                ; preds = %.lr.ph480
  br i1 %lcmp.mod934.not, label %._crit_edge481, label %.lr.ph480.epil.preheader

.lr.ph480.epil.preheader:                         ; preds = %._crit_edge481.loopexit.unr-lcssa, %.lr.ph480.preheader
  %indvars.iv660.epil.init = phi i64 [ 0, %.lr.ph480.preheader ], [ %indvars.iv.next661.1, %._crit_edge481.loopexit.unr-lcssa ]
  %.0444477.epil.init = phi float [ 0.000000e+00, %.lr.ph480.preheader ], [ %.sroa.speculated424.1, %._crit_edge481.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod936)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv660.epil.init
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !161
  %i.ff = tail call noundef float @llvm.fabs.f32(float %i.fe) ; 2 uses
  %i.fg = fcmp olt float %.0444477.epil.init, %i.ff
  %.sroa.speculated424.epil = select i1 %i.fg, float %i.ff, float %.0444477.epil.init
  br label %._crit_edge481

._crit_edge481:                                   ; preds = %.lr.ph480.epil.preheader, %._crit_edge481.loopexit.unr-lcssa, %bb.e
  %.0444.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.speculated424.1, %._crit_edge481.loopexit.unr-lcssa ], [ %.sroa.speculated424.epil, %.lr.ph480.epil.preheader ] ; 2 uses
  %i.fh = fcmp oeq float %.0444.lcssa, 0.000000e+00
  %i.fi = fdiv float 1.270000e+02, %.0444.lcssa
  %i.fj = select i1 %i.fh, float 1.000000e+00, float %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv665
  store float %i.fj, ptr %i.fk, align 4, !tbaa !161
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge486, label %bb.e, !llvm.loop !232

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %.lr.ph480
  %indvars.iv660 = phi i64 [ %indvars.iv.next661.1, %.lr.ph480 ], [ 0, %.lr.ph480.preheader ] ; 3 uses
  %.0444477 = phi float [ %.sroa.speculated424.1, %.lr.ph480 ], [ 0.000000e+00, %.lr.ph480.preheader ] ; 2 uses
  %niter938 = phi i64 [ %niter938.next.1, %.lr.ph480 ], [ 0, %.lr.ph480.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv660
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !161
  %i.fn = tail call noundef float @llvm.fabs.f32(float %i.fm) ; 2 uses
  %i.fo = fcmp olt float %.0444477, %i.fn
  %.sroa.speculated424 = select i1 %i.fo, float %i.fn, float %.0444477 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv660
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !161
  %i.fs = tail call noundef float @llvm.fabs.f32(float %i.fr) ; 2 uses
  %i.ft = fcmp olt float %.sroa.speculated424, %i.fs
  %.sroa.speculated424.1 = select i1 %i.ft, float %i.fs, float %.sroa.speculated424 ; 3 uses
  %indvars.iv.next661.1 = add nuw nsw i64 %indvars.iv660, 2 ; 2 uses
  %niter938.next.1 = add i64 %niter938, 2         ; 2 uses
  %niter938.ncmp.1 = icmp eq i64 %niter938.next.1, %unroll_iter937
  br i1 %niter938.ncmp.1, label %._crit_edge481.loopexit.unr-lcssa, label %.lr.ph480, !llvm.loop !233

._crit_edge497:                                   ; preds = %._crit_edge492, %._crit_edge486
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cp, i64 680
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !116 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cp, i64 724
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !234 ; 4 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %._crit_edge497
  %wide.trip.count683 = zext nneg i32 %i.fx to i64 ; 2 uses
  %xtraiter945 = and i64 %wide.trip.count683, 1
  %i.fz = icmp eq i32 %i.fx, 1
  br i1 %i.fz, label %.lr.ph501.epil.preheader, label %.lr.ph501.preheader.new

.lr.ph501.preheader.new:                          ; preds = %.lr.ph501.preheader
  %unroll_iter949 = and i64 %wide.trip.count683, 2147483646
  br label %.lr.ph501

bb.f:                                             ; preds = %.lr.ph496, %._crit_edge492
  %indvars.iv675 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next676, %._crit_edge492 ] ; 3 uses
  %i.ga = mul nsw i64 %indvars.iv675, %i.ez
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ga ; 3 uses
  br i1 %i.eu, label %.lr.ph491.preheader, label %._crit_edge492

.lr.ph491.preheader:                              ; preds = %bb.f
  br i1 %i.fa, label %.lr.ph491.epil.preheader, label %.lr.ph491

._crit_edge492.loopexit.unr-lcssa:                ; preds = %.lr.ph491
  br i1 %lcmp.mod940.not, label %._crit_edge492, label %.lr.ph491.epil.preheader

.lr.ph491.epil.preheader:                         ; preds = %._crit_edge492.loopexit.unr-lcssa, %.lr.ph491.preheader
  %indvars.iv670.epil.init = phi i64 [ 0, %.lr.ph491.preheader ], [ %indvars.iv.next671.1, %._crit_edge492.loopexit.unr-lcssa ]
  %.0445488.epil.init = phi float [ 0.000000e+00, %.lr.ph491.preheader ], [ %.sroa.speculated418.1, %._crit_edge492.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod942)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv670.epil.init
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !161
  %i.ge = tail call noundef float @llvm.fabs.f32(float %i.gd) ; 2 uses
  %i.gf = fcmp olt float %.0445488.epil.init, %i.ge
  %.sroa.speculated418.epil = select i1 %i.gf, float %i.ge, float %.0445488.epil.init
  br label %._crit_edge492

._crit_edge492:                                   ; preds = %.lr.ph491.epil.preheader, %._crit_edge492.loopexit.unr-lcssa, %bb.f
  %.0445.lcssa = phi float [ 0.000000e+00, %bb.f ], [ %.sroa.speculated418.1, %._crit_edge492.loopexit.unr-lcssa ], [ %.sroa.speculated418.epil, %.lr.ph491.epil.preheader ] ; 2 uses
  %i.gg = fcmp oeq float %.0445.lcssa, 0.000000e+00
  %i.gh = fdiv float 1.270000e+02, %.0445.lcssa
  %i.gi = select i1 %i.gg, float 1.000000e+00, float %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv675
  store float %i.gi, ptr %i.gj, align 4, !tbaa !161
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond679.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count678
  br i1 %exitcond679.not, label %._crit_edge497, label %bb.f, !llvm.loop !235

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %.lr.ph491
  %indvars.iv670 = phi i64 [ %indvars.iv.next671.1, %.lr.ph491 ], [ 0, %.lr.ph491.preheader ] ; 3 uses
  %.0445488 = phi float [ %.sroa.speculated418.1, %.lr.ph491 ], [ 0.000000e+00, %.lr.ph491.preheader ] ; 2 uses
  %niter944 = phi i64 [ %niter944.next.1, %.lr.ph491 ], [ 0, %.lr.ph491.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv670
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !161
  %i.gm = tail call noundef float @llvm.fabs.f32(float %i.gl) ; 2 uses
  %i.gn = fcmp olt float %.0445488, %i.gm
  %.sroa.speculated418 = select i1 %i.gn, float %i.gm, float %.0445488 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv670
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !161
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq) ; 2 uses
  %i.gs = fcmp olt float %.sroa.speculated418, %i.gr
  %.sroa.speculated418.1 = select i1 %i.gs, float %i.gr, float %.sroa.speculated418 ; 3 uses
  %indvars.iv.next671.1 = add nuw nsw i64 %indvars.iv670, 2 ; 2 uses
  %niter944.next.1 = add i64 %niter944, 2         ; 2 uses
  %niter944.ncmp.1 = icmp eq i64 %niter944.next.1, %unroll_iter943
  br i1 %niter944.ncmp.1, label %._crit_edge492.loopexit.unr-lcssa, label %.lr.ph491, !llvm.loop !236

._crit_edge502.loopexit.unr-lcssa:                ; preds = %.lr.ph501
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %._crit_edge502, label %.lr.ph501.epil.preheader

.lr.ph501.epil.preheader:                         ; preds = %._crit_edge502.loopexit.unr-lcssa, %.lr.ph501.preheader
  %indvars.iv680.epil.init = phi i64 [ 0, %.lr.ph501.preheader ], [ %indvars.iv.next681.1, %._crit_edge502.loopexit.unr-lcssa ]
  %.0446498.epil.init = phi float [ 0.000000e+00, %.lr.ph501.preheader ], [ %.sroa.speculated412.1, %._crit_edge502.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod948 = trunc i32 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod948)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv680.epil.init
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !161
  %i.gv = tail call noundef float @llvm.fabs.f32(float %i.gu) ; 2 uses
  %i.gw = fcmp olt float %.0446498.epil.init, %i.gv
  %.sroa.speculated412.epil = select i1 %i.gw, float %i.gv, float %.0446498.epil.init
  br label %._crit_edge502

._crit_edge502:                                   ; preds = %.lr.ph501.epil.preheader, %._crit_edge502.loopexit.unr-lcssa, %._crit_edge497
  %.0446.lcssa = phi float [ 0.000000e+00, %._crit_edge497 ], [ %.sroa.speculated412.1, %._crit_edge502.loopexit.unr-lcssa ], [ %.sroa.speculated412.epil, %.lr.ph501.epil.preheader ] ; 2 uses
  %i.gx = fcmp oeq float %.0446.lcssa, 0.000000e+00
  %i.gy = fdiv float 1.270000e+02, %.0446.lcssa
  %i.gz = select i1 %i.gx, float 1.000000e+00, float %i.gy
  %i.ha = load ptr, ptr %i.bb, align 8, !tbaa !108 ; 2 uses
  %i.hb = getelementptr inbounds nuw [224 x i8], ptr %i.ha, i64 %indvars.iv685
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  store float %i.gz, ptr %i.hc, align 8, !tbaa !193
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %.preheader456, label %bb.c, !llvm.loop !237

.lr.ph501:                                        ; preds = %.lr.ph501, %.lr.ph501.preheader.new
  %indvars.iv680 = phi i64 [ 0, %.lr.ph501.preheader.new ], [ %indvars.iv.next681.1, %.lr.ph501 ] ; 3 uses
  %.0446498 = phi float [ 0.000000e+00, %.lr.ph501.preheader.new ], [ %.sroa.speculated412.1, %.lr.ph501 ] ; 2 uses
  %niter950 = phi i64 [ 0, %.lr.ph501.preheader.new ], [ %niter950.next.1, %.lr.ph501 ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv680
  %i.he = load float, ptr %i.hd, align 4, !tbaa !161
  %i.hf = tail call noundef float @llvm.fabs.f32(float %i.he) ; 2 uses
  %i.hg = fcmp olt float %.0446498, %i.hf
  %.sroa.speculated412 = select i1 %i.hg, float %i.hf, float %.0446498 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv680
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !161
  %i.hk = tail call noundef float @llvm.fabs.f32(float %i.hj) ; 2 uses
  %i.hl = fcmp olt float %.sroa.speculated412, %i.hk
  %.sroa.speculated412.1 = select i1 %i.hl, float %i.hk, float %.sroa.speculated412 ; 3 uses
  %indvars.iv.next681.1 = add nuw nsw i64 %indvars.iv680, 2 ; 2 uses
  %niter950.next.1 = add i64 %niter950, 2         ; 2 uses
  %niter950.ncmp.1 = icmp eq i64 %niter950.next.1, %unroll_iter949
  br i1 %niter950.ncmp.1, label %._crit_edge502.loopexit.unr-lcssa, label %.lr.ph501, !llvm.loop !238

.preheader454:                                    ; preds = %.split531, %.preheader456
  %i.hm = icmp sgt i32 %i.aj, 0
  br i1 %i.hm, label %.lr.ph587, label %.preheader452

.lr.ph587:                                        ; preds = %.preheader454
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %wide.trip.count821 = and i64 %i.ai, 2147483647
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph542, %.split531
  %indvars.iv750 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next751, %.split531 ] ; 5 uses
  %i.hp = load ptr, ptr %i.cf, align 8, !tbaa !144, !nonnull !145, !align !146
  %i.hq = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv750
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !156
  %i.ht = sext i32 %i.hs to i64
  %i.hu = load ptr, ptr %i.hp, align 8, !tbaa !150
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !151 ; 11 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 216
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !239
  %i.hz = icmp eq i32 %i.hy, 2                    ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 212
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !241 ; 2 uses
  %i.ic = sdiv i32 %i.ib, 2
  %1 = select i1 %i.hz, i32 %i.ic, i32 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 208 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !242 ; 2 uses
  %i.if = sdiv i32 %1, %i.ie                      ; 4 uses
  %i.ig = load ptr, ptr %i.cg, align 8, !tbaa !106
  %i.ih = getelementptr inbounds nuw [144 x i8], ptr %i.ig, i64 %indvars.iv750
  %i.ii = zext i1 %i.hz to i32                    ; 2 uses
  %i.ij = shl i32 %i.ie, %i.ii
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ih, i32 noundef %i.ij, i64 noundef 4, ptr noundef null)
  %i.ik = load ptr, ptr %i.cg, align 8, !tbaa !106
  %i.il = getelementptr inbounds nuw [144 x i8], ptr %i.ik, i64 %indvars.iv750
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  %i.in = load i32, ptr %i.id, align 8, !tbaa !242
  %i.io = shl i32 %i.in, %i.ii
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.im, i32 noundef %i.io, i64 noundef 4, ptr noundef null)
  %i.ip = load i32, ptr %i.id, align 8, !tbaa !242 ; 7 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.split, label %.split531

.split:                                           ; preds = %bb.g
  %wide.trip.count748 = select i1 %i.hz, i64 2, i64 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 240
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 288
  %i.it = getelementptr inbounds nuw i8, ptr %i.hw, i64 268
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hw, i64 224
  %i.iv = icmp sgt i32 %i.if, 0
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 312
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hw, i64 360
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hw, i64 340
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 296
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !200, !noalias !243
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !116, !noalias !243
  %i.jc = load i64, ptr %i.ix, align 8, !tbaa !118, !noalias !243
  %i.jd = load i64, ptr %i.iw, align 8, !tbaa !187, !noalias !243 ; 2 uses
  %factor.op.mul532 = mul i64 %i.jc, %i.jd
  %i.je = sext i32 %i.ja to i64
  %factor.op.mul = mul i64 %i.jd, %i.je
  %i.jf = load ptr, ptr %i.cg, align 8, !tbaa !106
  %i.jg = getelementptr inbounds nuw [144 x i8], ptr %i.jf, i64 %indvars.iv750 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !116 ; 2 uses
  %i.ji = load i32, ptr %i.it, align 4, !tbaa !200, !noalias !246
  %i.jj = load ptr, ptr %i.iu, align 8, !tbaa !116, !noalias !246 ; 2 uses
  %i.jk = load i64, ptr %i.is, align 8, !tbaa !118, !noalias !246
  %i.jl = load i64, ptr %i.ir, align 8, !tbaa !187, !noalias !246 ; 2 uses
  %factor.op.mul533 = mul i64 %i.jk, %i.jl        ; 2 uses
  %i.jm = sext i32 %i.ji to i64
  %factor.op.mul518 = mul i64 %i.jl, %i.jm        ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !116 ; 2 uses
  %i.jp = zext nneg i32 %i.ip to i64              ; 2 uses
  %wide.trip.count743 = zext nneg i32 %i.ip to i64 ; 6 uses
  br i1 %i.iv, label %.preheader455.us.us.preheader, label %.preheader455.us538.preheader

.preheader455.us538.preheader:                    ; preds = %.split
  %xtraiter951 = and i64 %wide.trip.count743, 1
  %i.jq = icmp eq i32 %i.ip, 1
  %unroll_iter955 = and i64 %wide.trip.count743, 2147483646
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  %lcmp.mod954 = trunc i32 %i.ip to i1
  br label %.preheader455.us538

.preheader455.us.us.preheader:                    ; preds = %.split
  %wide.trip.count733 = zext nneg i32 %i.if to i64 ; 2 uses
  %xtraiter958 = and i64 %wide.trip.count733, 1
  %i.jr = icmp eq i32 %i.if, 1
  %unroll_iter962 = and i64 %wide.trip.count733, 2147483646
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  %lcmp.mod961 = trunc i32 %i.if to i1
  %xtraiter965 = and i64 %wide.trip.count743, 1
  %i.js = icmp eq i32 %i.ip, 1
  %unroll_iter969 = and i64 %wide.trip.count743, 2147483646
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  %lcmp.mod968 = trunc i32 %i.ip to i1
  br label %.preheader455.us.us

.preheader455.us.us:                              ; preds = %.preheader455.us.us.preheader, %._crit_edge517.split.us.us.split.us.us
  %indvars.iv745 = phi i64 [ 0, %.preheader455.us.us.preheader ], [ %indvars.iv.next746, %._crit_edge517.split.us.us.split.us.us ] ; 4 uses
  %.reass.us535.us = mul i64 %factor.op.mul532, %indvars.iv745
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.reass.us535.us
  %i.ju = mul nuw nsw i64 %indvars.iv745, %i.jp
  %.reass534.us.us = mul i64 %factor.op.mul533, %indvars.iv745
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.reass534.us.us
  br label %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us

_ZN4ncnn3MatD2Ev.exit236.us.us.us.us:             ; preds = %._crit_edge513.us.us.us.us, %.preheader455.us.us
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %._crit_edge513.us.us.us.us ], [ 0, %.preheader455.us.us ] ; 4 uses
  %.reass.us.us.us.us = mul i64 %factor.op.mul, %indvars.iv740
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.reass.us.us.us.us ; 3 uses
  br i1 %i.jr, label %.epil.preheader957, label %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new:         ; preds = %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new
  %indvars.iv730 = phi i64 [ %indvars.iv.next731.1, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us ] ; 3 uses
  %.0450506.us.us.us.us = phi float [ %.sroa.speculated388.us.us.us.us.1, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us ] ; 2 uses
  %niter963 = phi i64 [ %niter963.next.1, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv730
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !161
  %i.jz = tail call noundef float @llvm.fabs.f32(float %i.jy) ; 2 uses
  %i.ka = fcmp olt float %.0450506.us.us.us.us, %i.jz
  %.sroa.speculated388.us.us.us.us = select i1 %i.ka, float %i.jz, float %.0450506.us.us.us.us ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv730
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !161
  %i.ke = tail call noundef float @llvm.fabs.f32(float %i.kd) ; 2 uses
  %i.kf = fcmp olt float %.sroa.speculated388.us.us.us.us, %i.ke
  %.sroa.speculated388.us.us.us.us.1 = select i1 %i.kf, float %i.ke, float %.sroa.speculated388.us.us.us.us ; 3 uses
  %indvars.iv.next731.1 = add nuw nsw i64 %indvars.iv730, 2 ; 2 uses
  %niter963.next.1 = add i64 %niter963, 2         ; 2 uses
  %niter963.ncmp.1 = icmp eq i64 %niter963.next.1, %unroll_iter962
  br i1 %niter963.ncmp.1, label %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new, !llvm.loop !249

._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new: ; preds = %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us ] ; 3 uses
  %.0451510.us.us.us.us = phi float [ %.sroa.speculated364.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new ], [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us ] ; 2 uses
  %niter970 = phi i64 [ %niter970.next.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv735
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !161
  %i.ki = tail call noundef float @llvm.fabs.f32(float %i.kh) ; 2 uses
  %i.kj = fcmp olt float %.0451510.us.us.us.us, %i.ki
  %.sroa.speculated364.us.us.us.us = select i1 %i.kj, float %i.ki, float %.0451510.us.us.us.us ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv735
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load float, ptr %i.kl, align 4, !tbaa !161
  %i.kn = tail call noundef float @llvm.fabs.f32(float %i.km) ; 2 uses
  %i.ko = fcmp olt float %.sroa.speculated364.us.us.us.us, %i.kn
  %.sroa.speculated364.us.us.us.us.1 = select i1 %i.ko, float %i.kn, float %.sroa.speculated364.us.us.us.us ; 3 uses
  %indvars.iv.next736.1 = add nuw nsw i64 %indvars.iv735, 2 ; 2 uses
  %niter970.next.1 = add i64 %niter970, 2         ; 2 uses
  %niter970.ncmp.1 = icmp eq i64 %niter970.next.1, %unroll_iter969
  br i1 %niter970.ncmp.1, label %._crit_edge513.us.us.us.us.unr-lcssa, label %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new, !llvm.loop !250

._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa: ; preds = %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us.new
  br i1 %lcmp.mod959.not, label %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us, label %.epil.preheader957

.epil.preheader957:                               ; preds = %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us
  %indvars.iv730.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us ], [ %indvars.iv.next731.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa ]
  %.0450506.us.us.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us ], [ %.sroa.speculated388.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod961)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv730.epil.init
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !161
  %i.kr = tail call noundef float @llvm.fabs.f32(float %i.kq) ; 2 uses
  %i.ks = fcmp olt float %.0450506.us.us.us.us.epil.init, %i.kr
  %.sroa.speculated388.us.us.us.us.epil = select i1 %i.ks, float %i.kr, float %.0450506.us.us.us.us.epil.init
  br label %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us

._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us:  ; preds = %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader957
  %.sroa.speculated388.us.us.us.us.lcssa = phi float [ %.sroa.speculated388.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated388.us.us.us.us.epil, %.epil.preheader957 ] ; 2 uses
  %i.kt = fcmp oeq float %.sroa.speculated388.us.us.us.us.lcssa, 0.000000e+00
  %i.ku = fdiv float 1.270000e+02, %.sroa.speculated388.us.us.us.us.lcssa
  %i.kv = select i1 %i.kt, float 1.000000e+00, float %i.ku
  %i.kw = add nuw nsw i64 %i.ju, %indvars.iv740   ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kw
  store float %i.kv, ptr %i.kx, align 4, !tbaa !161
  %.reass519.us.us.us.us = mul i64 %factor.op.mul518, %indvars.iv740
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.reass519.us.us.us.us ; 3 uses
  br i1 %i.js, label %.epil.preheader964, label %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new

._crit_edge513.us.us.us.us.unr-lcssa:             ; preds = %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us.new
  br i1 %lcmp.mod966.not, label %._crit_edge513.us.us.us.us, label %.epil.preheader964

.epil.preheader964:                               ; preds = %._crit_edge513.us.us.us.us.unr-lcssa, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us
  %indvars.iv735.epil.init = phi i64 [ 0, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us ], [ %indvars.iv.next736.1, %._crit_edge513.us.us.us.us.unr-lcssa ]
  %.0451510.us.us.us.us.epil.init = phi float [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit235_crit_edge.us.us.us.us ], [ %.sroa.speculated364.us.us.us.us.1, %._crit_edge513.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod968)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv735.epil.init
  %i.la = load float, ptr %i.kz, align 4, !tbaa !161
  %i.lb = tail call noundef float @llvm.fabs.f32(float %i.la) ; 2 uses
  %i.lc = fcmp olt float %.0451510.us.us.us.us.epil.init, %i.lb
  %.sroa.speculated364.us.us.us.us.epil = select i1 %i.lc, float %i.lb, float %.0451510.us.us.us.us.epil.init
  br label %._crit_edge513.us.us.us.us

._crit_edge513.us.us.us.us:                       ; preds = %._crit_edge513.us.us.us.us.unr-lcssa, %.epil.preheader964
  %.sroa.speculated364.us.us.us.us.lcssa = phi float [ %.sroa.speculated364.us.us.us.us.1, %._crit_edge513.us.us.us.us.unr-lcssa ], [ %.sroa.speculated364.us.us.us.us.epil, %.epil.preheader964 ] ; 2 uses
  %i.ld = fcmp oeq float %.sroa.speculated364.us.us.us.us.lcssa, 0.000000e+00
  %i.le = fdiv float 1.270000e+02, %.sroa.speculated364.us.us.us.us.lcssa
  %i.lf = select i1 %i.ld, float 1.000000e+00, float %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kw
  store float %i.lf, ptr %i.lg, align 4, !tbaa !161
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next741, %wide.trip.count743
  br i1 %exitcond744.not, label %._crit_edge517.split.us.us.split.us.us, label %_ZN4ncnn3MatD2Ev.exit236.us.us.us.us, !llvm.loop !251

._crit_edge517.split.us.us.split.us.us:           ; preds = %._crit_edge513.us.us.us.us
  %indvars.iv.next746 = add nuw nsw i64 %indvars.iv745, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next746, %wide.trip.count748
  br i1 %exitcond749.not, label %.split531, label %.preheader455.us.us, !llvm.loop !252

.preheader455.us538:                              ; preds = %.preheader455.us538.preheader, %._crit_edge517.split.split.us.us
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %._crit_edge517.split.split.us.us ], [ 0, %.preheader455.us538.preheader ] ; 3 uses
  %i.lh = mul nuw nsw i64 %indvars.iv710, %i.jp
  %.reass534.us540 = mul i64 %factor.op.mul533, %indvars.iv710
  %i.li = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.reass534.us540
  br label %_ZN4ncnn3MatD2Ev.exit236.us520.us

_ZN4ncnn3MatD2Ev.exit236.us520.us:                ; preds = %._crit_edge513.us528.us, %.preheader455.us538
  %indvars.iv705 = phi i64 [ %indvars.iv.next706, %._crit_edge513.us528.us ], [ 0, %.preheader455.us538 ] ; 3 uses
  %i.lj = add nuw nsw i64 %i.lh, %indvars.iv705   ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.lj
  store float 1.000000e+00, ptr %i.lk, align 4, !tbaa !161
  %.reass519.us522.us = mul i64 %factor.op.mul518, %indvars.iv705
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 %.reass519.us522.us ; 3 uses
  br i1 %i.jq, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit236.us520.us.new

_ZN4ncnn3MatD2Ev.exit236.us520.us.new:            ; preds = %_ZN4ncnn3MatD2Ev.exit236.us520.us, %_ZN4ncnn3MatD2Ev.exit236.us520.us.new
  %indvars.iv700 = phi i64 [ %indvars.iv.next701.1, %_ZN4ncnn3MatD2Ev.exit236.us520.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit236.us520.us ] ; 3 uses
  %.0451510.us524.us = phi float [ %.sroa.speculated364.us525.us.1, %_ZN4ncnn3MatD2Ev.exit236.us520.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit236.us520.us ] ; 2 uses
  %niter956 = phi i64 [ %niter956.next.1, %_ZN4ncnn3MatD2Ev.exit236.us520.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit236.us520.us ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv700
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !161
  %i.lo = tail call noundef float @llvm.fabs.f32(float %i.ln) ; 2 uses
  %i.lp = fcmp olt float %.0451510.us524.us, %i.lo
  %.sroa.speculated364.us525.us = select i1 %i.lp, float %i.lo, float %.0451510.us524.us ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv700
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !161
  %i.lt = tail call noundef float @llvm.fabs.f32(float %i.ls) ; 2 uses
  %i.lu = fcmp olt float %.sroa.speculated364.us525.us, %i.lt
  %.sroa.speculated364.us525.us.1 = select i1 %i.lu, float %i.lt, float %.sroa.speculated364.us525.us ; 3 uses
  %indvars.iv.next701.1 = add nuw nsw i64 %indvars.iv700, 2 ; 2 uses
  %niter956.next.1 = add i64 %niter956, 2         ; 2 uses
  %niter956.ncmp.1 = icmp eq i64 %niter956.next.1, %unroll_iter955
  br i1 %niter956.ncmp.1, label %._crit_edge513.us528.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit236.us520.us.new, !llvm.loop !250

._crit_edge513.us528.us.unr-lcssa:                ; preds = %_ZN4ncnn3MatD2Ev.exit236.us520.us.new
  br i1 %lcmp.mod952.not, label %._crit_edge513.us528.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge513.us528.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit236.us520.us
  %indvars.iv700.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit236.us520.us ], [ %indvars.iv.next701.1, %._crit_edge513.us528.us.unr-lcssa ]
  %.0451510.us524.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit236.us520.us ], [ %.sroa.speculated364.us525.us.1, %._crit_edge513.us528.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod954)
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv700.epil.init
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !161
  %i.lx = tail call noundef float @llvm.fabs.f32(float %i.lw) ; 2 uses
  %i.ly = fcmp olt float %.0451510.us524.us.epil.init, %i.lx
  %.sroa.speculated364.us525.us.epil = select i1 %i.ly, float %i.lx, float %.0451510.us524.us.epil.init
  br label %._crit_edge513.us528.us

._crit_edge513.us528.us:                          ; preds = %._crit_edge513.us528.us.unr-lcssa, %.epil.preheader
  %.sroa.speculated364.us525.us.lcssa = phi float [ %.sroa.speculated364.us525.us.1, %._crit_edge513.us528.us.unr-lcssa ], [ %.sroa.speculated364.us525.us.epil, %.epil.preheader ] ; 2 uses
  %i.lz = fcmp oeq float %.sroa.speculated364.us525.us.lcssa, 0.000000e+00
  %i.ma = fdiv float 1.270000e+02, %.sroa.speculated364.us525.us.lcssa
  %i.mb = select i1 %i.lz, float 1.000000e+00, float %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lj
  store float %i.mb, ptr %i.mc, align 4, !tbaa !161
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count743
  br i1 %exitcond709.not, label %._crit_edge517.split.split.us.us, label %_ZN4ncnn3MatD2Ev.exit236.us520.us, !llvm.loop !251

._crit_edge517.split.split.us.us:                 ; preds = %._crit_edge513.us528.us
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next711, %wide.trip.count748
  br i1 %exitcond714.not, label %.split531, label %.preheader455.us538, !llvm.loop !252

.split531:                                        ; preds = %._crit_edge517.split.split.us.us, %._crit_edge517.split.us.us.split.us.us, %bb.g
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count753
  br i1 %exitcond754.not, label %.preheader454, label %bb.g, !llvm.loop !253

.preheader452:                                    ; preds = %.split569, %.preheader454
  %i.md = icmp sgt i32 %i.as, 0
  br i1 %i.md, label %.lr.ph633, label %._crit_edge634

.lr.ph633:                                        ; preds = %.preheader452
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %wide.trip.count890 = and i64 %i.ar, 2147483647
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph587, %.split569
  %indvars.iv818 = phi i64 [ 0, %.lr.ph587 ], [ %indvars.iv.next819, %.split569 ] ; 5 uses
  %i.mg = load ptr, ptr %i.hn, align 8, !tbaa !144, !nonnull !145, !align !146
  %i.mh = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv818
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !156
  %i.mk = sext i32 %i.mj to i64
  %i.ml = load ptr, ptr %i.mg, align 8, !tbaa !150
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !151 ; 12 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 216
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !254
  %i.mq = icmp eq i32 %i.mp, 2                    ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 212
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !256 ; 2 uses
  %i.mt = sdiv i32 %i.ms, 2
  %2 = select i1 %i.mq, i32 %i.mt, i32 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 220 ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !257 ; 2 uses
  %i.mw = sdiv i32 %2, %i.mv                      ; 4 uses
  %i.mx = sdiv i32 %i.mw, 4                       ; 3 uses
  %i.my = load ptr, ptr %i.ho, align 8, !tbaa !106
  %i.mz = getelementptr inbounds nuw [144 x i8], ptr %i.my, i64 %indvars.iv818
  %i.na = shl nsw i32 %i.mv, 2
  %i.nb = zext i1 %i.mq to i32                    ; 2 uses
  %i.nc = shl i32 %i.na, %i.nb
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.mz, i32 noundef %i.nc, i64 noundef 4, ptr noundef null)
  %i.nd = load ptr, ptr %i.ho, align 8, !tbaa !106
  %i.ne = getelementptr inbounds nuw [144 x i8], ptr %i.nd, i64 %indvars.iv818
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  %i.ng = load i32, ptr %i.mu, align 4, !tbaa !257
  %i.nh = shl nsw i32 %i.ng, 2
  %i.ni = shl i32 %i.nh, %i.nb
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nf, i32 noundef %i.ni, i64 noundef 4, ptr noundef null)
  %i.nj = load i32, ptr %i.mu, align 4, !tbaa !257 ; 2 uses
  %i.nk = shl i32 %i.nj, 2                        ; 6 uses
  %i.nl = icmp sgt i32 %i.nj, 0
  br i1 %i.nl, label %.split568, label %.split569

.split568:                                        ; preds = %bb.h
  %wide.trip.count816 = select i1 %i.mq, i64 2, i64 1 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mn, i64 208
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mn, i64 248
  %i.no = getelementptr inbounds nuw i8, ptr %i.mn, i64 296
  %i.np = getelementptr inbounds nuw i8, ptr %i.mn, i64 276
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mn, i64 232
  %i.nr = icmp sgt i32 %i.mw, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mn, i64 320
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mn, i64 368
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mn, i64 348
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mn, i64 304
  %i.nw = load i32, ptr %i.nu, align 4, !tbaa !200, !noalias !258
  %i.nx = load ptr, ptr %i.nv, align 8, !tbaa !116, !noalias !258 ; 2 uses
  %i.ny = load i64, ptr %i.nt, align 8, !tbaa !118, !noalias !258
  %i.nz = load i64, ptr %i.ns, align 8, !tbaa !187, !noalias !258 ; 2 uses
  %factor.op.mul570 = mul i64 %i.ny, %i.nz        ; 2 uses
  %i.oa = sext i32 %i.nw to i64
  %factor.op.mul554 = mul i64 %i.nz, %i.oa        ; 2 uses
  %i.ob = load ptr, ptr %i.ho, align 8, !tbaa !106
  %i.oc = getelementptr inbounds nuw [144 x i8], ptr %i.ob, i64 %indvars.iv818 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !116 ; 10 uses
  %i.oe = ptrtoaddr ptr %i.od to i64
  %i.of = load i32, ptr %i.np, align 4, !tbaa !200, !noalias !261
  %i.og = load ptr, ptr %i.nq, align 8, !tbaa !116, !noalias !261 ; 2 uses
  %i.oh = load i64, ptr %i.no, align 8, !tbaa !118, !noalias !261
  %i.oi = load i64, ptr %i.nn, align 8, !tbaa !187, !noalias !261 ; 2 uses
  %factor.op.mul573 = mul i64 %i.oh, %i.oi        ; 2 uses
  %i.oj = sext i32 %i.of to i64
  %factor.op.mul555 = mul i64 %i.oi, %i.oj        ; 2 uses
  %i.ok = load i32, ptr %i.nm, align 8, !tbaa !264 ; 7 uses
  %i.ol = icmp sgt i32 %i.ok, 0                   ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 72
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !116 ; 10 uses
  %i.oo = ptrtoaddr ptr %i.on to i64
  %smax810 = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 1)
  %wide.trip.count811 = zext nneg i32 %smax810 to i64 ; 8 uses
  br i1 %i.nr, label %.split568.split.us, label %.split568.split

.split568.split.us:                               ; preds = %.split568
  %wide.trip.count800 = zext nneg i32 %i.mx to i64 ; 4 uses
  br i1 %i.ol, label %.preheader453.us.us.preheader, label %.preheader453.us.preheader

.preheader453.us.preheader:                       ; preds = %.split568.split.us
  %xtraiter981 = and i64 %wide.trip.count800, 1
  %i.op = and i32 %i.mw, 2147483644
  %i.oq = icmp eq i32 %i.op, 4
  %unroll_iter985 = and i64 %wide.trip.count800, 536870910
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  %lcmp.mod984 = trunc i32 %i.mx to i1
  br label %.preheader453.us

.preheader453.us.us.preheader:                    ; preds = %.split568.split.us
  %wide.trip.count805 = zext nneg i32 %i.ok to i64 ; 2 uses
  %xtraiter988 = and i64 %wide.trip.count800, 1
  %i.or = and i32 %i.mw, 2147483644
  %i.os = icmp eq i32 %i.or, 4
  %unroll_iter992 = and i64 %wide.trip.count800, 536870910
  %lcmp.mod989.not = icmp eq i64 %xtraiter988, 0
  %lcmp.mod991 = trunc i32 %i.mx to i1
  %xtraiter995 = and i64 %wide.trip.count805, 1
  %i.ot = icmp eq i32 %i.ok, 1
  %unroll_iter999 = and i64 %wide.trip.count805, 2147483646
  %lcmp.mod996.not = icmp eq i64 %xtraiter995, 0
  %lcmp.mod998 = trunc i32 %i.ok to i1
  br label %.preheader453.us.us

.preheader453.us.us:                              ; preds = %.preheader453.us.us.preheader, %._crit_edge553.split.us.us.split.us.us
  %indvars.iv813 = phi i64 [ 0, %.preheader453.us.us.preheader ], [ %indvars.iv.next814, %._crit_edge553.split.us.us.split.us.us ] ; 4 uses
  %.reass.us577.us = mul i64 %factor.op.mul570, %indvars.iv813
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.reass.us577.us
  %i.ov = trunc nuw nsw i64 %indvars.iv813 to i32
  %.reass572.us.us = mul i32 %i.nk, %i.ov
  %.reass574.us.us = mul i64 %factor.op.mul573, %indvars.iv813
  %i.ow = getelementptr inbounds nuw i8, ptr %i.og, i64 %.reass574.us.us
  %i.ox = sext i32 %.reass572.us.us to i64
  br label %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us

_ZN4ncnn3MatD2Ev.exit234.us.us.us.us:             ; preds = %._crit_edge550.us.us.us.us, %.preheader453.us.us
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %._crit_edge550.us.us.us.us ], [ 0, %.preheader453.us.us ] ; 4 uses
  %.reass.us.us578.us.us = mul i64 %factor.op.mul554, %indvars.iv807
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.reass.us.us578.us.us ; 3 uses
  br i1 %i.os, label %.epil.preheader987, label %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new:         ; preds = %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new
  %indvars.iv797 = phi i64 [ %indvars.iv.next798.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us ] ; 3 uses
  %.0449543.us.us.us.us = phi float [ %.sroa.speculated340.us.us.us.us.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us ] ; 2 uses
  %niter993 = phi i64 [ %niter993.next.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us ]
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv797
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !161
  %i.pb = tail call noundef float @llvm.fabs.f32(float %i.pa) ; 2 uses
  %i.pc = fcmp olt float %.0449543.us.us.us.us, %i.pb
  %.sroa.speculated340.us.us.us.us = select i1 %i.pc, float %i.pb, float %.0449543.us.us.us.us ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv797
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !161
  %i.pg = tail call noundef float @llvm.fabs.f32(float %i.pf) ; 2 uses
  %i.ph = fcmp olt float %.sroa.speculated340.us.us.us.us, %i.pg
  %.sroa.speculated340.us.us.us.us.1 = select i1 %i.ph, float %i.pg, float %.sroa.speculated340.us.us.us.us ; 3 uses
  %indvars.iv.next798.1 = add nuw nsw i64 %indvars.iv797, 2 ; 2 uses
  %niter993.next.1 = add i64 %niter993, 2         ; 2 uses
  %niter993.ncmp.1 = icmp eq i64 %niter993.next.1, %unroll_iter992
  br i1 %niter993.ncmp.1, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new, !llvm.loop !265

._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new: ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new
  %indvars.iv802 = phi i64 [ %indvars.iv.next803.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us ] ; 3 uses
  %.0448547.us.us.us.us = phi float [ %.sroa.speculated316.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new ], [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us ] ; 2 uses
  %niter1000 = phi i64 [ %niter1000.next.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us ]
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv802
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !161
  %i.pk = tail call noundef float @llvm.fabs.f32(float %i.pj) ; 2 uses
  %i.pl = fcmp olt float %.0448547.us.us.us.us, %i.pk
  %.sroa.speculated316.us.us.us.us = select i1 %i.pl, float %i.pk, float %.0448547.us.us.us.us ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv802
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.po = load float, ptr %i.pn, align 4, !tbaa !161
  %i.pp = tail call noundef float @llvm.fabs.f32(float %i.po) ; 2 uses
  %i.pq = fcmp olt float %.sroa.speculated316.us.us.us.us, %i.pp
  %.sroa.speculated316.us.us.us.us.1 = select i1 %i.pq, float %i.pp, float %.sroa.speculated316.us.us.us.us ; 3 uses
  %indvars.iv.next803.1 = add nuw nsw i64 %indvars.iv802, 2 ; 2 uses
  %niter1000.next.1 = add i64 %niter1000, 2       ; 2 uses
  %niter1000.ncmp.1 = icmp eq i64 %niter1000.next.1, %unroll_iter999
  br i1 %niter1000.ncmp.1, label %._crit_edge550.us.us.us.us.unr-lcssa, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new, !llvm.loop !266

._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa: ; preds = %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us.new
  br i1 %lcmp.mod989.not, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us, label %.epil.preheader987

.epil.preheader987:                               ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us
  %indvars.iv797.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us ], [ %indvars.iv.next798.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa ]
  %.0449543.us.us.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us ], [ %.sroa.speculated340.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod991)
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv797.epil.init
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !161
  %i.pt = tail call noundef float @llvm.fabs.f32(float %i.ps) ; 2 uses
  %i.pu = fcmp olt float %.0449543.us.us.us.us.epil.init, %i.pt
  %.sroa.speculated340.us.us.us.us.epil = select i1 %i.pu, float %i.pt, float %.0449543.us.us.us.us.epil.init
  br label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us

._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us:  ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader987
  %.sroa.speculated340.us.us.us.us.lcssa = phi float [ %.sroa.speculated340.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated340.us.us.us.us.epil, %.epil.preheader987 ] ; 2 uses
  %i.pv = fcmp oeq float %.sroa.speculated340.us.us.us.us.lcssa, 0.000000e+00
  %i.pw = fdiv float 1.270000e+02, %.sroa.speculated340.us.us.us.us.lcssa
  %i.px = select i1 %i.pv, float 1.000000e+00, float %i.pw
  %i.py = add nsw i64 %indvars.iv807, %i.ox       ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.py
  store float %i.px, ptr %i.pz, align 4, !tbaa !161
  %.reass556.us.us.us.us = mul i64 %factor.op.mul555, %indvars.iv807
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.reass556.us.us.us.us ; 3 uses
  br i1 %i.ot, label %.epil.preheader994, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new

._crit_edge550.us.us.us.us.unr-lcssa:             ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us.new
  br i1 %lcmp.mod996.not, label %._crit_edge550.us.us.us.us, label %.epil.preheader994

.epil.preheader994:                               ; preds = %._crit_edge550.us.us.us.us.unr-lcssa, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us
  %indvars.iv802.epil.init = phi i64 [ 0, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us ], [ %indvars.iv.next803.1, %._crit_edge550.us.us.us.us.unr-lcssa ]
  %.0448547.us.us.us.us.epil.init = phi float [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.us.us ], [ %.sroa.speculated316.us.us.us.us.1, %._crit_edge550.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod998)
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv802.epil.init
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !161
  %i.qd = tail call noundef float @llvm.fabs.f32(float %i.qc) ; 2 uses
  %i.qe = fcmp olt float %.0448547.us.us.us.us.epil.init, %i.qd
  %.sroa.speculated316.us.us.us.us.epil = select i1 %i.qe, float %i.qd, float %.0448547.us.us.us.us.epil.init
  br label %._crit_edge550.us.us.us.us

._crit_edge550.us.us.us.us:                       ; preds = %._crit_edge550.us.us.us.us.unr-lcssa, %.epil.preheader994
  %.sroa.speculated316.us.us.us.us.lcssa = phi float [ %.sroa.speculated316.us.us.us.us.1, %._crit_edge550.us.us.us.us.unr-lcssa ], [ %.sroa.speculated316.us.us.us.us.epil, %.epil.preheader994 ] ; 2 uses
  %i.qf = fcmp oeq float %.sroa.speculated316.us.us.us.us.lcssa, 0.000000e+00
  %i.qg = fdiv float 1.270000e+02, %.sroa.speculated316.us.us.us.us.lcssa
  %i.qh = select i1 %i.qf, float 1.000000e+00, float %i.qg
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.py
  store float %i.qh, ptr %i.qi, align 4, !tbaa !161
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %exitcond812.not = icmp eq i64 %indvars.iv.next808, %wide.trip.count811
  br i1 %exitcond812.not, label %._crit_edge553.split.us.us.split.us.us, label %_ZN4ncnn3MatD2Ev.exit234.us.us.us.us, !llvm.loop !267

._crit_edge553.split.us.us.split.us.us:           ; preds = %._crit_edge550.us.us.us.us
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next814, %wide.trip.count816
  br i1 %exitcond817.not, label %.split569, label %.preheader453.us.us, !llvm.loop !268

.preheader453.us:                                 ; preds = %.preheader453.us.preheader, %._crit_edge553.split.us.us.split
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %._crit_edge553.split.us.us.split ], [ 0, %.preheader453.us.preheader ] ; 3 uses
  %.reass.us577 = mul i64 %factor.op.mul570, %indvars.iv792
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.reass.us577
  %i.qk = trunc nuw nsw i64 %indvars.iv792 to i32
  %.reass572.us = mul i32 %i.nk, %i.qk
  %i.ql = sext i32 %.reass572.us to i64
  br label %_ZN4ncnn3MatD2Ev.exit234.us.us

_ZN4ncnn3MatD2Ev.exit234.us.us:                   ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us, %.preheader453.us
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us ], [ 0, %.preheader453.us ] ; 3 uses
  %.reass.us.us578 = mul i64 %factor.op.mul554, %indvars.iv786
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.reass.us.us578 ; 3 uses
  br i1 %i.oq, label %.epil.preheader980, label %_ZN4ncnn3MatD2Ev.exit234.us.us.new

_ZN4ncnn3MatD2Ev.exit234.us.us.new:               ; preds = %_ZN4ncnn3MatD2Ev.exit234.us.us, %_ZN4ncnn3MatD2Ev.exit234.us.us.new
  %indvars.iv781 = phi i64 [ %indvars.iv.next782.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us ] ; 3 uses
  %.0449543.us.us = phi float [ %.sroa.speculated340.us.us.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us.us ] ; 2 uses
  %niter986 = phi i64 [ %niter986.next.1, %_ZN4ncnn3MatD2Ev.exit234.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us ]
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv781
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !161
  %i.qp = tail call noundef float @llvm.fabs.f32(float %i.qo) ; 2 uses
  %i.qq = fcmp olt float %.0449543.us.us, %i.qp
  %.sroa.speculated340.us.us = select i1 %i.qq, float %i.qp, float %.0449543.us.us ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv781
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !161
  %i.qu = tail call noundef float @llvm.fabs.f32(float %i.qt) ; 2 uses
  %i.qv = fcmp olt float %.sroa.speculated340.us.us, %i.qu
  %.sroa.speculated340.us.us.1 = select i1 %i.qv, float %i.qu, float %.sroa.speculated340.us.us ; 3 uses
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781, 2 ; 2 uses
  %niter986.next.1 = add i64 %niter986, 2         ; 2 uses
  %niter986.ncmp.1 = icmp eq i64 %niter986.next.1, %unroll_iter985
  br i1 %niter986.ncmp.1, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit234.us.us.new, !llvm.loop !265

._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa: ; preds = %_ZN4ncnn3MatD2Ev.exit234.us.us.new
  br i1 %lcmp.mod982.not, label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us, label %.epil.preheader980

.epil.preheader980:                               ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit234.us.us
  %indvars.iv781.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit234.us.us ], [ %indvars.iv.next782.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa ]
  %.0449543.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us.us ], [ %.sroa.speculated340.us.us.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod984)
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv781.epil.init
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !161
  %i.qy = tail call noundef float @llvm.fabs.f32(float %i.qx) ; 2 uses
  %i.qz = fcmp olt float %.0449543.us.us.epil.init, %i.qy
  %.sroa.speculated340.us.us.epil = select i1 %i.qz, float %i.qy, float %.0449543.us.us.epil.init
  br label %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us

._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us:        ; preds = %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa, %.epil.preheader980
  %.sroa.speculated340.us.us.lcssa = phi float [ %.sroa.speculated340.us.us.1, %._ZN4ncnn3MatD2Ev.exit233_crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated340.us.us.epil, %.epil.preheader980 ] ; 2 uses
  %i.ra = fcmp oeq float %.sroa.speculated340.us.us.lcssa, 0.000000e+00
  %i.rb = fdiv float 1.270000e+02, %.sroa.speculated340.us.us.lcssa
  %i.rc = select i1 %i.ra, float 1.000000e+00, float %i.rb
  %i.rd = add nsw i64 %indvars.iv786, %i.ql       ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.rd
end_hunk_0
begin_hunk_1_@_ZN8QuantNet31initialize_static_weight_scalesEv:bb.a
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %wide.trip.count816
  br i1 %exitcond796.not, label %.split569, label %.preheader453.us, !llvm.loop !268

.split568.split:                                  ; preds = %.split568
  br i1 %i.ol, label %.preheader453.us581.preheader, label %.preheader453.preheader

.preheader453.preheader:                          ; preds = %.split568.split
  %min.iters.check = icmp slt i32 %i.nk, 8
  %i.rg = sub i64 %i.oe, %i.oo
  %diff.check = icmp ugt i64 %i.rg, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %wide.trip.count811, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count811
  %xtraiter971 = and i64 %wide.trip.count811, 1   ; 2 uses
  %lcmp.mod972.not = icmp eq i64 %xtraiter971, 0
  br label %.preheader453

.preheader453.us581.preheader:                    ; preds = %.split568.split
  %wide.trip.count768 = zext nneg i32 %i.ok to i64 ; 2 uses
  %xtraiter974 = and i64 %wide.trip.count768, 1
  %i.rh = icmp eq i32 %i.ok, 1
  %unroll_iter978 = and i64 %wide.trip.count768, 2147483646
  %lcmp.mod975.not = icmp eq i64 %xtraiter974, 0
  %lcmp.mod977 = trunc i32 %i.ok to i1
  br label %.preheader453.us581

.preheader453.us581:                              ; preds = %.preheader453.us581.preheader, %._crit_edge553.split.split.us.us
  %indvars.iv776 = phi i64 [ 0, %.preheader453.us581.preheader ], [ %indvars.iv.next777, %._crit_edge553.split.split.us.us ] ; 3 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv776 to i32
  %.reass572.us583 = mul i32 %i.nk, %i.ri
  %.reass574.us584 = mul i64 %factor.op.mul573, %indvars.iv776
  %i.rj = getelementptr inbounds nuw i8, ptr %i.og, i64 %.reass574.us584
  %i.rk = sext i32 %.reass572.us583 to i64
  br label %_ZN4ncnn3MatD2Ev.exit234.us557.us

_ZN4ncnn3MatD2Ev.exit234.us557.us:                ; preds = %._crit_edge550.us565.us, %.preheader453.us581
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %._crit_edge550.us565.us ], [ 0, %.preheader453.us581 ] ; 3 uses
  %i.rl = add nsw i64 %indvars.iv770, %i.rk       ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.rl
  store float 1.000000e+00, ptr %i.rm, align 4, !tbaa !161
  %.reass556.us559.us = mul i64 %factor.op.mul555, %indvars.iv770
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.reass556.us559.us ; 3 uses
  br i1 %i.rh, label %.epil.preheader973, label %_ZN4ncnn3MatD2Ev.exit234.us557.us.new

_ZN4ncnn3MatD2Ev.exit234.us557.us.new:            ; preds = %_ZN4ncnn3MatD2Ev.exit234.us557.us, %_ZN4ncnn3MatD2Ev.exit234.us557.us.new
  %indvars.iv765 = phi i64 [ %indvars.iv.next766.1, %_ZN4ncnn3MatD2Ev.exit234.us557.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us557.us ] ; 3 uses
  %.0448547.us561.us = phi float [ %.sroa.speculated316.us562.us.1, %_ZN4ncnn3MatD2Ev.exit234.us557.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us557.us ] ; 2 uses
  %niter979 = phi i64 [ %niter979.next.1, %_ZN4ncnn3MatD2Ev.exit234.us557.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.us557.us ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv765
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !161
  %i.rq = tail call noundef float @llvm.fabs.f32(float %i.rp) ; 2 uses
  %i.rr = fcmp olt float %.0448547.us561.us, %i.rq
  %.sroa.speculated316.us562.us = select i1 %i.rr, float %i.rq, float %.0448547.us561.us ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv765
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !161
  %i.rv = tail call noundef float @llvm.fabs.f32(float %i.ru) ; 2 uses
  %i.rw = fcmp olt float %.sroa.speculated316.us562.us, %i.rv
  %.sroa.speculated316.us562.us.1 = select i1 %i.rw, float %i.rv, float %.sroa.speculated316.us562.us ; 3 uses
  %indvars.iv.next766.1 = add nuw nsw i64 %indvars.iv765, 2 ; 2 uses
  %niter979.next.1 = add i64 %niter979, 2         ; 2 uses
  %niter979.ncmp.1 = icmp eq i64 %niter979.next.1, %unroll_iter978
  br i1 %niter979.ncmp.1, label %._crit_edge550.us565.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit234.us557.us.new, !llvm.loop !266

._crit_edge550.us565.us.unr-lcssa:                ; preds = %_ZN4ncnn3MatD2Ev.exit234.us557.us.new
  br i1 %lcmp.mod975.not, label %._crit_edge550.us565.us, label %.epil.preheader973

.epil.preheader973:                               ; preds = %._crit_edge550.us565.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit234.us557.us
  %indvars.iv765.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit234.us557.us ], [ %indvars.iv.next766.1, %._crit_edge550.us565.us.unr-lcssa ]
  %.0448547.us561.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit234.us557.us ], [ %.sroa.speculated316.us562.us.1, %._crit_edge550.us565.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod977)
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv765.epil.init
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !161
  %i.rz = tail call noundef float @llvm.fabs.f32(float %i.ry) ; 2 uses
  %i.sa = fcmp olt float %.0448547.us561.us.epil.init, %i.rz
  %.sroa.speculated316.us562.us.epil = select i1 %i.sa, float %i.rz, float %.0448547.us561.us.epil.init
  br label %._crit_edge550.us565.us

._crit_edge550.us565.us:                          ; preds = %._crit_edge550.us565.us.unr-lcssa, %.epil.preheader973
  %.sroa.speculated316.us562.us.lcssa = phi float [ %.sroa.speculated316.us562.us.1, %._crit_edge550.us565.us.unr-lcssa ], [ %.sroa.speculated316.us562.us.epil, %.epil.preheader973 ] ; 2 uses
  %i.sb = fcmp oeq float %.sroa.speculated316.us562.us.lcssa, 0.000000e+00
  %i.sc = fdiv float 1.270000e+02, %.sroa.speculated316.us562.us.lcssa
  %i.sd = select i1 %i.sb, float 1.000000e+00, float %i.sc
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.rl
  store float %i.sd, ptr %i.se, align 4, !tbaa !161
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond775.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count811
  br i1 %exitcond775.not, label %._crit_edge553.split.split.us.us, label %_ZN4ncnn3MatD2Ev.exit234.us557.us, !llvm.loop !267

._crit_edge553.split.split.us.us:                 ; preds = %._crit_edge550.us565.us
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 1 ; 2 uses
  %exitcond780.not = icmp eq i64 %indvars.iv.next777, %wide.trip.count816
  br i1 %exitcond780.not, label %.split569, label %.preheader453.us581, !llvm.loop !268

.preheader453:                                    ; preds = %.preheader453.preheader, %._crit_edge553.split.split
  %indvars.iv760 = phi i64 [ %indvars.iv.next761, %._crit_edge553.split.split ], [ 0, %.preheader453.preheader ] ; 2 uses
  %i.sf = trunc nuw nsw i64 %indvars.iv760 to i32
  %.reass572 = mul i32 %i.nk, %i.sf
  %i.sg = sext i32 %.reass572 to i64              ; 6 uses
  br i1 %or.cond, label %_ZN4ncnn3MatD2Ev.exit234.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader453, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader453 ] ; 2 uses
  %i.sh = add nsw i64 %index, %i.sg               ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.sh ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.si, align 4, !tbaa !161
  store <4 x float> splat (float 1.000000e+00), ptr %i.sj, align 4, !tbaa !161
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.sh ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.sk, align 4, !tbaa !161
  store <4 x float> splat (float 1.000000e+00), ptr %i.sl, align 4, !tbaa !161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sm = icmp eq i64 %index.next, %n.vec
  br i1 %i.sm, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge553.split.split, label %_ZN4ncnn3MatD2Ev.exit234.preheader

_ZN4ncnn3MatD2Ev.exit234.preheader:               ; preds = %.preheader453, %middle.block
  %indvars.iv755.ph = phi i64 [ 0, %.preheader453 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod972.not, label %_ZN4ncnn3MatD2Ev.exit234.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit234.prol

_ZN4ncnn3MatD2Ev.exit234.prol:                    ; preds = %_ZN4ncnn3MatD2Ev.exit234.preheader, %_ZN4ncnn3MatD2Ev.exit234.prol
  %indvars.iv755.prol = phi i64 [ %indvars.iv.next756.prol, %_ZN4ncnn3MatD2Ev.exit234.prol ], [ %indvars.iv755.ph, %_ZN4ncnn3MatD2Ev.exit234.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4ncnn3MatD2Ev.exit234.prol ], [ 0, %_ZN4ncnn3MatD2Ev.exit234.preheader ]
  %i.sn = add nsw i64 %indvars.iv755.prol, %i.sg  ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.sn
  store float 1.000000e+00, ptr %i.so, align 4, !tbaa !161
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.sn
  store float 1.000000e+00, ptr %i.sp, align 4, !tbaa !161
  %indvars.iv.next756.prol = add nuw nsw i64 %indvars.iv755.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter971
  br i1 %prol.iter.cmp.not, label %_ZN4ncnn3MatD2Ev.exit234.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit234.prol, !llvm.loop !272

_ZN4ncnn3MatD2Ev.exit234.prol.loopexit:           ; preds = %_ZN4ncnn3MatD2Ev.exit234.prol, %_ZN4ncnn3MatD2Ev.exit234.preheader
  %indvars.iv755.unr = phi i64 [ %indvars.iv755.ph, %_ZN4ncnn3MatD2Ev.exit234.preheader ], [ %indvars.iv.next756.prol, %_ZN4ncnn3MatD2Ev.exit234.prol ]
  %i.sq = sub nsw i64 %indvars.iv755.ph, %wide.trip.count811
  %i.sr = icmp ugt i64 %i.sq, -4
  br i1 %i.sr, label %._crit_edge553.split.split, label %_ZN4ncnn3MatD2Ev.exit234.preheader.new

_ZN4ncnn3MatD2Ev.exit234.preheader.new:           ; preds = %_ZN4ncnn3MatD2Ev.exit234.prol.loopexit
  %invariant.op = add i64 1, %i.sg
  %invariant.op1022 = add i64 2, %i.sg
  %invariant.op1024 = add i64 3, %i.sg
  br label %_ZN4ncnn3MatD2Ev.exit234

.split569:                                        ; preds = %._crit_edge553.split.split, %._crit_edge553.split.split.us.us, %._crit_edge553.split.us.us.split, %._crit_edge553.split.us.us.split.us.us, %bb.h
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %exitcond822.not = icmp eq i64 %indvars.iv.next819, %wide.trip.count821
  br i1 %exitcond822.not, label %.preheader452, label %bb.h, !llvm.loop !273

._crit_edge553.split.split:                       ; preds = %_ZN4ncnn3MatD2Ev.exit234.prol.loopexit, %_ZN4ncnn3MatD2Ev.exit234, %middle.block
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %exitcond764.not = icmp eq i64 %indvars.iv.next761, %wide.trip.count816
  br i1 %exitcond764.not, label %.split569, label %.preheader453, !llvm.loop !268

_ZN4ncnn3MatD2Ev.exit234:                         ; preds = %_ZN4ncnn3MatD2Ev.exit234, %_ZN4ncnn3MatD2Ev.exit234.preheader.new
  %indvars.iv755 = phi i64 [ %indvars.iv755.unr, %_ZN4ncnn3MatD2Ev.exit234.preheader.new ], [ %indvars.iv.next756.3, %_ZN4ncnn3MatD2Ev.exit234 ] ; 5 uses
  %i.ss = add nsw i64 %indvars.iv755, %i.sg       ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.ss
  store float 1.000000e+00, ptr %i.st, align 4, !tbaa !161
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ss
  store float 1.000000e+00, ptr %i.su, align 4, !tbaa !161
  %.reass = add i64 %indvars.iv755, %invariant.op ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.reass
  store float 1.000000e+00, ptr %i.sv, align 4, !tbaa !161
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.reass
  store float 1.000000e+00, ptr %i.sw, align 4, !tbaa !161
  %.reass1023 = add i64 %indvars.iv755, %invariant.op1022 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.reass1023
  store float 1.000000e+00, ptr %i.sx, align 4, !tbaa !161
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.reass1023
  store float 1.000000e+00, ptr %i.sy, align 4, !tbaa !161
  %.reass1025 = add i64 %indvars.iv755, %invariant.op1024 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.reass1025
  store float 1.000000e+00, ptr %i.sz, align 4, !tbaa !161
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.reass1025
  store float 1.000000e+00, ptr %i.ta, align 4, !tbaa !161
  %indvars.iv.next756.3 = add nuw nsw i64 %indvars.iv755, 4 ; 2 uses
  %exitcond759.not.3 = icmp eq i64 %indvars.iv.next756.3, %wide.trip.count811
  br i1 %exitcond759.not.3, label %._crit_edge553.split.split, label %_ZN4ncnn3MatD2Ev.exit234, !llvm.loop !274

._crit_edge634:                                   ; preds = %.split615, %.preheader452
  ret void

bb.i:                                             ; preds = %.lr.ph633, %.split615
  %indvars.iv887 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next888, %.split615 ] ; 5 uses
  %i.tb = load ptr, ptr %i.me, align 8, !tbaa !144, !nonnull !145, !align !146
  %i.tc = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %indvars.iv887
  %i.te = load i32, ptr %i.td, align 4, !tbaa !156
  %i.tf = sext i32 %i.te to i64
  %i.tg = load ptr, ptr %i.tb, align 8, !tbaa !150
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tf
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !151 ; 11 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 216
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !275
  %i.tl = icmp eq i32 %i.tk, 2                    ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 212
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !277 ; 2 uses
  %i.to = sdiv i32 %i.tn, 2
  %3 = select i1 %i.tl, i32 %i.to, i32 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ti, i64 208 ; 3 uses
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !278 ; 2 uses
  %i.tr = sdiv i32 %3, %i.tq                      ; 3 uses
  %i.ts = sdiv i32 %i.tr, 3                       ; 2 uses
  %i.tt = load ptr, ptr %i.mf, align 8, !tbaa !106
  %i.tu = getelementptr inbounds nuw [144 x i8], ptr %i.tt, i64 %indvars.iv887
  %i.tv = mul nsw i32 %i.tq, 3
  %i.tw = zext i1 %i.tl to i32                    ; 2 uses
  %i.tx = shl i32 %i.tv, %i.tw
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.tu, i32 noundef %i.tx, i64 noundef 4, ptr noundef null)
  %i.ty = load ptr, ptr %i.mf, align 8, !tbaa !106
  %i.tz = getelementptr inbounds nuw [144 x i8], ptr %i.ty, i64 %indvars.iv887
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.ub = load i32, ptr %i.tp, align 8, !tbaa !278
  %i.uc = mul nsw i32 %i.ub, 3
  %i.ud = shl i32 %i.uc, %i.tw
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ua, i32 noundef %i.ud, i64 noundef 4, ptr noundef null)
  %i.ue = load i32, ptr %i.tp, align 8, !tbaa !278 ; 8 uses
  %i.uf = mul i32 %i.ue, 3                        ; 3 uses
  %i.ug = icmp sgt i32 %i.ue, 0
  br i1 %i.ug, label %.split614, label %.split615

.split614:                                        ; preds = %bb.i
  %wide.trip.count885 = select i1 %i.tl, i64 2, i64 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ti, i64 240
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ti, i64 288
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ti, i64 268
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ti, i64 224
  %i.ul = icmp sgt i32 %i.tr, 2
  %i.um = getelementptr inbounds nuw i8, ptr %i.ti, i64 312
  %i.un = getelementptr inbounds nuw i8, ptr %i.ti, i64 360
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ti, i64 340
  %i.up = getelementptr inbounds nuw i8, ptr %i.ti, i64 296
  %i.uq = load i32, ptr %i.uo, align 4, !tbaa !200, !noalias !279
  %i.ur = load ptr, ptr %i.up, align 8, !tbaa !116, !noalias !279
  %i.us = load i64, ptr %i.un, align 8, !tbaa !118, !noalias !279
  %i.ut = load i64, ptr %i.um, align 8, !tbaa !187, !noalias !279 ; 2 uses
  %factor.op.mul616 = mul i64 %i.us, %i.ut
  %i.uu = sext i32 %i.uq to i64
  %factor.op.mul600 = mul i64 %i.ut, %i.uu
  %i.uv = load ptr, ptr %i.mf, align 8, !tbaa !106
  %i.uw = getelementptr inbounds nuw [144 x i8], ptr %i.uv, i64 %indvars.iv887 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !116 ; 2 uses
  %i.uy = load i32, ptr %i.uj, align 4, !tbaa !200, !noalias !282
  %i.uz = load ptr, ptr %i.uk, align 8, !tbaa !116, !noalias !282 ; 2 uses
  %i.va = load i64, ptr %i.ui, align 8, !tbaa !118, !noalias !282
  %i.vb = load i64, ptr %i.uh, align 8, !tbaa !187, !noalias !282 ; 2 uses
  %factor.op.mul619 = mul i64 %i.va, %i.vb        ; 2 uses
  %i.vc = sext i32 %i.uy to i64
  %factor.op.mul601 = mul i64 %i.vb, %i.vc        ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uw, i64 72
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !116 ; 2 uses
  %smax879 = tail call i32 @llvm.smax.i32(i32 %i.uf, i32 1)
  %wide.trip.count880 = zext nneg i32 %smax879 to i64 ; 2 uses
  br i1 %i.ul, label %.preheader.us.us.preheader, label %.preheader.us627.preheader

.preheader.us.us.preheader:                       ; preds = %.split614
  %wide.trip.count869 = zext nneg i32 %i.ts to i64 ; 2 uses
  %wide.trip.count874 = zext nneg i32 %i.ue to i64 ; 2 uses
  %xtraiter1009 = and i64 %wide.trip.count869, 1
  %.off = add nsw i32 %i.tr, -3
  %i.vf = icmp ult i32 %.off, 3
  %unroll_iter1013 = and i64 %wide.trip.count869, 1073741822
  %lcmp.mod1010.not = icmp eq i64 %xtraiter1009, 0
  %lcmp.mod1012 = trunc i32 %i.ts to i1
  %xtraiter1016 = and i64 %wide.trip.count874, 1
  %i.vg = icmp eq i32 %i.ue, 1
  %unroll_iter1020 = and i64 %wide.trip.count874, 2147483646
  %lcmp.mod1017.not = icmp eq i64 %xtraiter1016, 0
  %lcmp.mod1019 = trunc i32 %i.ue to i1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge599.split.us.us.split.us.us
  %indvars.iv882 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next883, %._crit_edge599.split.us.us.split.us.us ] ; 4 uses
  %.reass.us623.us = mul i64 %factor.op.mul616, %indvars.iv882
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.reass.us623.us
  %i.vi = trunc nuw nsw i64 %indvars.iv882 to i32
  %.reass618.us.us = mul i32 %i.uf, %i.vi
  %.reass620.us.us = mul i64 %factor.op.mul619, %indvars.iv882
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.reass620.us.us
  %i.vk = sext i32 %.reass618.us.us to i64
  br label %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us

_ZN4ncnn3MatD2Ev.exit232.us.us.us.us:             ; preds = %._crit_edge595.us.us.us.us, %.preheader.us.us
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %._crit_edge595.us.us.us.us ], [ 0, %.preheader.us.us ] ; 4 uses
  %.reass.us.us624.us.us = mul i64 %factor.op.mul600, %indvars.iv876
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 %.reass.us.us624.us.us ; 3 uses
  br i1 %i.vf, label %.epil.preheader1008, label %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new:         ; preds = %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new
  %indvars.iv866 = phi i64 [ %indvars.iv.next867.1, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us ] ; 3 uses
  %.0447588.us.us.us.us = phi float [ %.sroa.speculated292.us.us.us.us.1, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us ] ; 2 uses
  %niter1014 = phi i64 [ %niter1014.next.1, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us ]
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv866
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !161
  %i.vo = tail call noundef float @llvm.fabs.f32(float %i.vn) ; 2 uses
  %i.vp = fcmp olt float %.0447588.us.us.us.us, %i.vo
  %.sroa.speculated292.us.us.us.us = select i1 %i.vp, float %i.vo, float %.0447588.us.us.us.us ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv866
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !161
  %i.vt = tail call noundef float @llvm.fabs.f32(float %i.vs) ; 2 uses
  %i.vu = fcmp olt float %.sroa.speculated292.us.us.us.us, %i.vt
  %.sroa.speculated292.us.us.us.us.1 = select i1 %i.vu, float %i.vt, float %.sroa.speculated292.us.us.us.us ; 3 uses
  %indvars.iv.next867.1 = add nuw nsw i64 %indvars.iv866, 2 ; 2 uses
  %niter1014.next.1 = add i64 %niter1014, 2       ; 2 uses
  %niter1014.ncmp.1 = icmp eq i64 %niter1014.next.1, %unroll_iter1013
  br i1 %niter1014.ncmp.1, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new, !llvm.loop !285

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new: ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new
  %indvars.iv871 = phi i64 [ %indvars.iv.next872.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us ] ; 3 uses
  %.0442592.us.us.us.us = phi float [ %.sroa.speculated.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new ], [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us ] ; 2 uses
  %niter1021 = phi i64 [ %niter1021.next.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new ], [ 0, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv871
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !161
  %i.vx = tail call noundef float @llvm.fabs.f32(float %i.vw) ; 2 uses
  %i.vy = fcmp olt float %.0442592.us.us.us.us, %i.vx
  %.sroa.speculated.us.us.us.us = select i1 %i.vy, float %i.vx, float %.0442592.us.us.us.us ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv871
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !161
  %i.wc = tail call noundef float @llvm.fabs.f32(float %i.wb) ; 2 uses
  %i.wd = fcmp olt float %.sroa.speculated.us.us.us.us, %i.wc
  %.sroa.speculated.us.us.us.us.1 = select i1 %i.wd, float %i.wc, float %.sroa.speculated.us.us.us.us ; 3 uses
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %niter1021.next.1 = add i64 %niter1021, 2       ; 2 uses
  %niter1021.ncmp.1 = icmp eq i64 %niter1021.next.1, %unroll_iter1020
  br i1 %niter1021.ncmp.1, label %._crit_edge595.us.us.us.us.unr-lcssa, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new, !llvm.loop !286

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa: ; preds = %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us.new
  br i1 %lcmp.mod1010.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us, label %.epil.preheader1008

.epil.preheader1008:                              ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us
  %indvars.iv866.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us ], [ %indvars.iv.next867.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa ]
  %.0447588.us.us.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us ], [ %.sroa.speculated292.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1012)
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv866.epil.init
  %i.wf = load float, ptr %i.we, align 4, !tbaa !161
  %i.wg = tail call noundef float @llvm.fabs.f32(float %i.wf) ; 2 uses
  %i.wh = fcmp olt float %.0447588.us.us.us.us.epil.init, %i.wg
  %.sroa.speculated292.us.us.us.us.epil = select i1 %i.wh, float %i.wg, float %.0447588.us.us.us.us.epil.init
  br label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us:     ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader1008
  %.sroa.speculated292.us.us.us.us.lcssa = phi float [ %.sroa.speculated292.us.us.us.us.1, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated292.us.us.us.us.epil, %.epil.preheader1008 ] ; 2 uses
  %i.wi = fcmp oeq float %.sroa.speculated292.us.us.us.us.lcssa, 0.000000e+00
  %i.wj = fdiv float 1.270000e+02, %.sroa.speculated292.us.us.us.us.lcssa
  %i.wk = select i1 %i.wi, float 1.000000e+00, float %i.wj
  %i.wl = add nsw i64 %indvars.iv876, %i.vk       ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.wl
  store float %i.wk, ptr %i.wm, align 4, !tbaa !161
  %.reass602.us.us.us.us = mul i64 %factor.op.mul601, %indvars.iv876
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.reass602.us.us.us.us ; 3 uses
  br i1 %i.vg, label %.epil.preheader1015, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new

._crit_edge595.us.us.us.us.unr-lcssa:             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us.new
  br i1 %lcmp.mod1017.not, label %._crit_edge595.us.us.us.us, label %.epil.preheader1015

.epil.preheader1015:                              ; preds = %._crit_edge595.us.us.us.us.unr-lcssa, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us
  %indvars.iv871.epil.init = phi i64 [ 0, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us ], [ %indvars.iv.next872.1, %._crit_edge595.us.us.us.us.unr-lcssa ]
  %.0442592.us.us.us.us.epil.init = phi float [ 0.000000e+00, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us.us.us ], [ %.sroa.speculated.us.us.us.us.1, %._crit_edge595.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1019)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv871.epil.init
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !161
  %i.wq = tail call noundef float @llvm.fabs.f32(float %i.wp) ; 2 uses
  %i.wr = fcmp olt float %.0442592.us.us.us.us.epil.init, %i.wq
  %.sroa.speculated.us.us.us.us.epil = select i1 %i.wr, float %i.wq, float %.0442592.us.us.us.us.epil.init
  br label %._crit_edge595.us.us.us.us

._crit_edge595.us.us.us.us:                       ; preds = %._crit_edge595.us.us.us.us.unr-lcssa, %.epil.preheader1015
  %.sroa.speculated.us.us.us.us.lcssa = phi float [ %.sroa.speculated.us.us.us.us.1, %._crit_edge595.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.epil, %.epil.preheader1015 ] ; 2 uses
  %i.ws = fcmp oeq float %.sroa.speculated.us.us.us.us.lcssa, 0.000000e+00
  %i.wt = fdiv float 1.270000e+02, %.sroa.speculated.us.us.us.us.lcssa
  %i.wu = select i1 %i.ws, float 1.000000e+00, float %i.wt
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.wl
  store float %i.wu, ptr %i.wv, align 4, !tbaa !161
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 1 ; 2 uses
  %exitcond881.not = icmp eq i64 %indvars.iv.next877, %wide.trip.count880
  br i1 %exitcond881.not, label %._crit_edge599.split.us.us.split.us.us, label %_ZN4ncnn3MatD2Ev.exit232.us.us.us.us, !llvm.loop !287

._crit_edge599.split.us.us.split.us.us:           ; preds = %._crit_edge595.us.us.us.us
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1 ; 2 uses
  %exitcond886.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count885
  br i1 %exitcond886.not, label %.split615, label %.preheader.us.us, !llvm.loop !288

.preheader.us627.preheader:                       ; preds = %.split614
  %wide.trip.count837 = zext nneg i32 %i.ue to i64 ; 2 uses
  %xtraiter1002 = and i64 %wide.trip.count837, 1
  %i.ww = icmp eq i32 %i.ue, 1
  %unroll_iter1006 = and i64 %wide.trip.count837, 2147483646
  %lcmp.mod1003.not = icmp eq i64 %xtraiter1002, 0
  %lcmp.mod1005 = trunc i32 %i.ue to i1
  br label %.preheader.us627

.preheader.us627:                                 ; preds = %.preheader.us627.preheader, %._crit_edge599.split.split.us.us
  %indvars.iv845 = phi i64 [ 0, %.preheader.us627.preheader ], [ %indvars.iv.next846, %._crit_edge599.split.split.us.us ] ; 3 uses
  %i.wx = trunc nuw nsw i64 %indvars.iv845 to i32
  %.reass618.us629 = mul i32 %i.uf, %i.wx
  %.reass620.us630 = mul i64 %factor.op.mul619, %indvars.iv845
  %i.wy = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.reass620.us630
  %i.wz = sext i32 %.reass618.us629 to i64
  br label %_ZN4ncnn3MatD2Ev.exit232.us603.us

_ZN4ncnn3MatD2Ev.exit232.us603.us:                ; preds = %._crit_edge595.us611.us, %.preheader.us627
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %._crit_edge595.us611.us ], [ 0, %.preheader.us627 ] ; 3 uses
  %i.xa = add nsw i64 %indvars.iv839, %i.wz       ; 2 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.xa
  store float 1.000000e+00, ptr %i.xb, align 4, !tbaa !161
  %.reass602.us605.us = mul i64 %factor.op.mul601, %indvars.iv839
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 %.reass602.us605.us ; 3 uses
  br i1 %i.ww, label %.epil.preheader1001, label %_ZN4ncnn3MatD2Ev.exit232.us603.us.new

_ZN4ncnn3MatD2Ev.exit232.us603.us.new:            ; preds = %_ZN4ncnn3MatD2Ev.exit232.us603.us, %_ZN4ncnn3MatD2Ev.exit232.us603.us.new
  %indvars.iv834 = phi i64 [ %indvars.iv.next835.1, %_ZN4ncnn3MatD2Ev.exit232.us603.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.us603.us ] ; 3 uses
  %.0442592.us607.us = phi float [ %.sroa.speculated.us608.us.1, %_ZN4ncnn3MatD2Ev.exit232.us603.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit232.us603.us ] ; 2 uses
  %niter1007 = phi i64 [ %niter1007.next.1, %_ZN4ncnn3MatD2Ev.exit232.us603.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.us603.us ]
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv834
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !161
  %i.xf = tail call noundef float @llvm.fabs.f32(float %i.xe) ; 2 uses
  %i.xg = fcmp olt float %.0442592.us607.us, %i.xf
  %.sroa.speculated.us608.us = select i1 %i.xg, float %i.xf, float %.0442592.us607.us ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv834
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !161
  %i.xk = tail call noundef float @llvm.fabs.f32(float %i.xj) ; 2 uses
  %i.xl = fcmp olt float %.sroa.speculated.us608.us, %i.xk
  %.sroa.speculated.us608.us.1 = select i1 %i.xl, float %i.xk, float %.sroa.speculated.us608.us ; 3 uses
  %indvars.iv.next835.1 = add nuw nsw i64 %indvars.iv834, 2 ; 2 uses
  %niter1007.next.1 = add i64 %niter1007, 2       ; 2 uses
  %niter1007.ncmp.1 = icmp eq i64 %niter1007.next.1, %unroll_iter1006
  br i1 %niter1007.ncmp.1, label %._crit_edge595.us611.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit232.us603.us.new, !llvm.loop !286

._crit_edge595.us611.us.unr-lcssa:                ; preds = %_ZN4ncnn3MatD2Ev.exit232.us603.us.new
  br i1 %lcmp.mod1003.not, label %._crit_edge595.us611.us, label %.epil.preheader1001

.epil.preheader1001:                              ; preds = %._crit_edge595.us611.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit232.us603.us
  %indvars.iv834.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit232.us603.us ], [ %indvars.iv.next835.1, %._crit_edge595.us611.us.unr-lcssa ]
  %.0442592.us607.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit232.us603.us ], [ %.sroa.speculated.us608.us.1, %._crit_edge595.us611.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1005)
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv834.epil.init
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !161
  %i.xo = tail call noundef float @llvm.fabs.f32(float %i.xn) ; 2 uses
  %i.xp = fcmp olt float %.0442592.us607.us.epil.init, %i.xo
  %.sroa.speculated.us608.us.epil = select i1 %i.xp, float %i.xo, float %.0442592.us607.us.epil.init
  br label %._crit_edge595.us611.us

._crit_edge595.us611.us:                          ; preds = %._crit_edge595.us611.us.unr-lcssa, %.epil.preheader1001
  %.sroa.speculated.us608.us.lcssa = phi float [ %.sroa.speculated.us608.us.1, %._crit_edge595.us611.us.unr-lcssa ], [ %.sroa.speculated.us608.us.epil, %.epil.preheader1001 ] ; 2 uses
  %i.xq = fcmp oeq float %.sroa.speculated.us608.us.lcssa, 0.000000e+00
  %i.xr = fdiv float 1.270000e+02, %.sroa.speculated.us608.us.lcssa
  %i.xs = select i1 %i.xq, float 1.000000e+00, float %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.xa
  store float %i.xs, ptr %i.xt, align 4, !tbaa !161
end_hunk_1
