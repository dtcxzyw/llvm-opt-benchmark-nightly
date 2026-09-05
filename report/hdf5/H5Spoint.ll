Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Spoint?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@H5S__point_deserialize:bb.a
    i8 8, label %.preheader.us
  ]

.preheader.us.us318.preheader:                    ; preds = %.preheader.lr.ph.split.us
  %i.fl = add nsw i32 %i.ba, -1
  %xtraiter = and i32 %i.ba, 7                    ; 3 uses
  %i.fm = icmp ult i32 %i.fl, 7
  %unroll_iter = and i32 %i.ba, 56
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod387 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us.us318

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.fn = add nsw i32 %i.ba, -1
  %xtraiter389 = and i32 %i.ba, 3                 ; 3 uses
  %i.fo = icmp ult i32 %i.fn, 3
  %unroll_iter395 = and i32 %i.ba, 60
  %lcmp.mod391.not = icmp eq i32 %xtraiter389, 0
  %lcmp.mod394 = icmp ne i32 %xtraiter389, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us
  %.0206305.us.us = phi i32 [ %i.hi, %._crit_edge.split.us.us.us ], [ 0, %.preheader.us.us.preheader ]
  %.3304.us.us = phi ptr [ %.lcssa378, %._crit_edge.split.us.us.us ], [ %.2211253, %.preheader.us.us.preheader ] ; 2 uses
  %.0212303.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.us.us ], [ %i.fj, %.preheader.us.us.preheader ] ; 2 uses
  br i1 %i.fo, label %.epil.preheader388, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %.4290.us.us.us = phi ptr [ %i.gx, %.preheader.us.us.new ], [ %.3304.us.us, %.preheader.us.us ] ; 9 uses
  %.1213289.us.us.us = phi ptr [ %i.gy, %.preheader.us.us.new ], [ %.0212303.us.us, %.preheader.us.us ] ; 5 uses
  %niter396 = phi i32 [ %niter396.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.fp = load i8, ptr %.4290.us.us.us, align 1, !tbaa !15
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !15
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 8
  %i.fv = or disjoint i64 %i.fu, %i.fq
  store i64 %i.fv, ptr %.1213289.us.us.us, align 8, !tbaa !25
  %i.fw = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 2
  %i.fx = getelementptr inbounds nuw i8, ptr %.1213289.us.us.us, i64 8
  %i.fy = load i8, ptr %i.fw, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !15
  %i.gc = zext i8 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 8
  %i.ge = or disjoint i64 %i.gd, %i.fz
  store i64 %i.ge, ptr %i.fx, align 8, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.1213289.us.us.us, i64 16
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 5
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !15
  %i.gl = zext i8 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 8
  %i.gn = or disjoint i64 %i.gm, %i.gi
  store i64 %i.gn, ptr %i.gg, align 8, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 6
  %i.gp = getelementptr inbounds nuw i8, ptr %.1213289.us.us.us, i64 24
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !15
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 7
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !15
  %i.gu = zext i8 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 8
  %i.gw = or disjoint i64 %i.gv, %i.gr
  store i64 %i.gw, ptr %i.gp, align 8, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %.4290.us.us.us, i64 8 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1213289.us.us.us, i64 32 ; 3 uses
  %niter396.next.3 = add i32 %niter396, 4         ; 2 uses
  %niter396.ncmp.3 = icmp eq i32 %niter396.next.3, %unroll_iter395
  br i1 %niter396.ncmp.3, label %._crit_edge.split.us.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !62

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod391.not, label %._crit_edge.split.us.us.us, label %.epil.preheader388

.epil.preheader388:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.preheader.us.us
  %.4290.us.us.us.epil.init = phi ptr [ %.3304.us.us, %.preheader.us.us ], [ %i.gx, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.1213289.us.us.us.epil.init = phi ptr [ %.0212303.us.us, %.preheader.us.us ], [ %i.gy, %._crit_edge.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod394)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader388
  %.4290.us.us.us.epil = phi ptr [ %.4290.us.us.us.epil.init, %.epil.preheader388 ], [ %i.hg, %bb.ba ] ; 3 uses
  %.1213289.us.us.us.epil = phi ptr [ %.1213289.us.us.us.epil.init, %.epil.preheader388 ], [ %i.hh, %bb.ba ] ; 2 uses
  %epil.iter390 = phi i32 [ 0, %.epil.preheader388 ], [ %epil.iter390.next, %bb.ba ]
  %i.gz = load i8, ptr %.4290.us.us.us.epil, align 1, !tbaa !15
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %.4290.us.us.us.epil, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !15
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 8
  %i.hf = or disjoint i64 %i.he, %i.ha
  store i64 %i.hf, ptr %.1213289.us.us.us.epil, align 8, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %.4290.us.us.us.epil, i64 2 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.1213289.us.us.us.epil, i64 8 ; 2 uses
  %epil.iter390.next = add i32 %epil.iter390, 1   ; 2 uses
  %epil.iter390.cmp.not = icmp eq i32 %epil.iter390.next, %xtraiter389
  br i1 %epil.iter390.cmp.not, label %._crit_edge.split.us.us.us, label %bb.ba, !llvm.loop !63

._crit_edge.split.us.us.us:                       ; preds = %bb.ba, %._crit_edge.split.us.us.us.unr-lcssa
  %.lcssa378 = phi ptr [ %i.gx, %._crit_edge.split.us.us.us.unr-lcssa ], [ %i.hg, %bb.ba ] ; 2 uses
  %.lcssa = phi ptr [ %i.gy, %._crit_edge.split.us.us.us.unr-lcssa ], [ %i.hh, %bb.ba ]
  %i.hi = add i32 %.0206305.us.us, 1              ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = icmp ugt i64 %.1208254, %i.hj
  br i1 %i.hk, label %.preheader.us.us, label %._crit_edge306, !llvm.loop !64

.preheader.us.us318:                              ; preds = %.preheader.us.us318.preheader, %._crit_edge.split.split.us.us.us
  %.0206305.us.us319 = phi i32 [ %i.iv, %._crit_edge.split.split.us.us.us ], [ 0, %.preheader.us.us318.preheader ]
  %.3304.us.us320 = phi ptr [ %.lcssa381, %._crit_edge.split.split.us.us.us ], [ %.2211253, %.preheader.us.us318.preheader ] ; 2 uses
  %.0212303.us.us321 = phi ptr [ %.lcssa380, %._crit_edge.split.split.us.us.us ], [ %i.fj, %.preheader.us.us318.preheader ] ; 2 uses
  br i1 %i.fm, label %.epil.preheader, label %.preheader.us.us318.new

.preheader.us.us318.new:                          ; preds = %.preheader.us.us318, %.preheader.us.us318.new
  %.4290.us296.us.us = phi ptr [ %i.ip, %.preheader.us.us318.new ], [ %.3304.us.us320, %.preheader.us.us318 ] ; 9 uses
  %.1213289.us297.us.us = phi ptr [ %i.iq, %.preheader.us.us318.new ], [ %.0212303.us.us321, %.preheader.us.us318 ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.preheader.us.us318.new ], [ 0, %.preheader.us.us318 ]
  %i.hl = load i32, ptr %.4290.us296.us.us, align 1
  %i.hm = zext i32 %i.hl to i64
  store i64 %i.hm, ptr %.1213289.us297.us.us, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 8
  %i.hp = load i32, ptr %i.hn, align 1
  %i.hq = zext i32 %i.hp to i64
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !25
  %i.hr = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 16
  %i.ht = load i32, ptr %i.hr, align 1
  %i.hu = zext i32 %i.ht to i64
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !25
  %i.hv = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 12
  %i.hw = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 24
  %i.hx = load i32, ptr %i.hv, align 1
  %i.hy = zext i32 %i.hx to i64
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !25
  %i.hz = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 32
  %i.ib = load i32, ptr %i.hz, align 1
  %i.ic = zext i32 %i.ib to i64
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 20
  %i.ie = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 40
  %i.if = load i32, ptr %i.id, align 1
  %i.ig = zext i32 %i.if to i64
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !25
  %i.ih = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 48
  %i.ij = load i32, ptr %i.ih, align 1
  %i.ik = zext i32 %i.ij to i64
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 28
  %i.im = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 56
  %i.in = load i32, ptr %i.il, align 1
  %i.io = zext i32 %i.in to i64
  store i64 %i.io, ptr %i.im, align 8, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us, i64 32 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us, i64 64 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.split.us.us.us.unr-lcssa, label %.preheader.us.us318.new, !llvm.loop !62

._crit_edge.split.split.us.us.us.unr-lcssa:       ; preds = %.preheader.us.us318.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.split.us.us.us.unr-lcssa, %.preheader.us.us318
  %.4290.us296.us.us.epil.init = phi ptr [ %.3304.us.us320, %.preheader.us.us318 ], [ %i.ip, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.1213289.us297.us.us.epil.init = phi ptr [ %.0212303.us.us321, %.preheader.us.us318 ], [ %i.iq, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod387)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.epil.preheader
  %.4290.us296.us.us.epil = phi ptr [ %.4290.us296.us.us.epil.init, %.epil.preheader ], [ %i.it, %bb.bb ] ; 2 uses
  %.1213289.us297.us.us.epil = phi ptr [ %.1213289.us297.us.us.epil.init, %.epil.preheader ], [ %i.iu, %bb.bb ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bb ]
  %i.ir = load i32, ptr %.4290.us296.us.us.epil, align 1
  %i.is = zext i32 %i.ir to i64
  store i64 %i.is, ptr %.1213289.us297.us.us.epil, align 8, !tbaa !25
  %i.it = getelementptr inbounds nuw i8, ptr %.4290.us296.us.us.epil, i64 4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1213289.us297.us.us.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.split.us.us.us, label %bb.bb, !llvm.loop !65

._crit_edge.split.split.us.us.us:                 ; preds = %bb.bb, %._crit_edge.split.split.us.us.us.unr-lcssa
  %.lcssa381 = phi ptr [ %i.ip, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.it, %bb.bb ] ; 2 uses
  %.lcssa380 = phi ptr [ %i.iq, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.iu, %bb.bb ]
  %i.iv = add i32 %.0206305.us.us319, 1           ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = icmp ugt i64 %.1208254, %i.iw
  br i1 %i.ix, label %.preheader.us.us318, label %._crit_edge306, !llvm.loop !64

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %._crit_edge.split.split.us311
  %.0206305.us = phi i32 [ %i.km, %._crit_edge.split.split.us311 ], [ 0, %.preheader.lr.ph.split.us ]
  %.3304.us = phi ptr [ %i.kj, %._crit_edge.split.split.us311 ], [ %.2211253, %.preheader.lr.ph.split.us ]
  %.0212303.us = phi ptr [ %i.kl, %._crit_edge.split.split.us311 ], [ %i.fj, %.preheader.lr.ph.split.us ]
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader.us, %bb.bc
  %.0205291.us308 = phi i32 [ 0, %.preheader.us ], [ %i.kk, %bb.bc ]
  %.4290.us309 = phi ptr [ %.3304.us, %.preheader.us ], [ %i.kj, %bb.bc ] ; 9 uses
  %.1213289.us310 = phi ptr [ %.0212303.us, %.preheader.us ], [ %i.kl, %bb.bc ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 7
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 6
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !15
  %i.jd = zext i8 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.ja, 16
  %i.jf = shl nuw nsw i64 %i.jd, 8
  %i.jg = or disjoint i64 %i.je, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 5
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !15
  %i.jj = zext i8 %i.ji to i64
  %i.jk = or disjoint i64 %i.jg, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 4
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !15
  %i.jn = zext i8 %i.jm to i64
  %i.jo = shl nuw nsw i64 %i.jk, 16
  %i.jp = shl nuw nsw i64 %i.jn, 8
  %i.jq = or disjoint i64 %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 3
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i64
  %i.ju = or disjoint i64 %i.jq, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 2
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !15
  %i.jx = zext i8 %i.jw to i64
  %i.jy = shl i64 %i.ju, 16
  %i.jz = shl nuw nsw i64 %i.jx, 8
  %i.ka = or disjoint i64 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !15
  %i.kd = zext i8 %i.kc to i64
  %i.ke = or disjoint i64 %i.ka, %i.kd
  %i.kf = shl nuw i64 %i.ke, 8
  %i.kg = load i8, ptr %.4290.us309, align 1, !tbaa !15
  %i.kh = zext i8 %i.kg to i64
  %i.ki = or disjoint i64 %i.kf, %i.kh
  store i64 %i.ki, ptr %.1213289.us310, align 8, !tbaa !25
  %i.kj = getelementptr inbounds nuw i8, ptr %.4290.us309, i64 8 ; 3 uses
  %i.kk = add nuw nsw i32 %.0205291.us308, 1      ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.1213289.us310, i64 8 ; 2 uses
  %exitcond.not = icmp eq i32 %i.kk, %i.ba
  br i1 %exitcond.not, label %._crit_edge.split.split.us311, label %bb.bc, !llvm.loop !62

._crit_edge.split.split.us311:                    ; preds = %bb.bc
  %i.km = add i32 %.0206305.us, 1                 ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp ugt i64 %.1208254, %i.kn
  br i1 %i.ko, label %.preheader.us, label %._crit_edge306, !llvm.loop !64

bb.bd:                                            ; preds = %bb.az
  %i.kp = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.kq = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !25
  %i.kr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_deserialize, i32 noundef 1501, i64 noundef %i.kp, i64 noundef %i.kq, ptr noundef nonnull @.str.45) #15 ; 0 uses
  br label %bb.bh

.split.us:                                        ; preds = %.preheader.lr.ph.split.us
  %i.ks = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.kt = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !25
  %i.ku = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_deserialize, i32 noundef 1517, i64 noundef %i.ks, i64 noundef %i.kt, ptr noundef nonnull @.str.30) #15 ; 0 uses
  br label %bb.bh

._crit_edge306:                                   ; preds = %._crit_edge.split.split.us311, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us, %.preheader280
  %.3.lcssa = phi ptr [ %.2211253, %.preheader280 ], [ %.lcssa378, %._crit_edge.split.us.us.us ], [ %.lcssa381, %._crit_edge.split.split.us.us.us ], [ %i.kj, %._crit_edge.split.split.us311 ]
  %i.kv = call i32 @H5S_select_elements(ptr noundef nonnull %.0216, i32 noundef 0, i64 noundef %.1208254, ptr noundef nonnull %i.fj)
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %._crit_edge306
  %i.kx = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.ky = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !25
  %i.kz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_deserialize, i32 noundef 1523, i64 noundef %i.kx, i64 noundef %i.ky, ptr noundef nonnull @.str.46) #15 ; 0 uses
  br label %bb.bh

bb.bf:                                            ; preds = %._crit_edge306
  store ptr %.3.lcssa, ptr %1, align 8, !tbaa !35
  %i.la = load ptr, ptr %0, align 8, !tbaa !67
  %.not = icmp eq ptr %i.la, null
  br i1 %.not, label %bb.bg, label %.thread356

bb.bg:                                            ; preds = %bb.bf
  store ptr %.0216, ptr %0, align 8, !tbaa !67
  br label %.thread356

bb.bh:                                            ; preds = %bb.be, %.split.us, %bb.bd, %bb.ay, %bb.au, %bb.ar, %bb.aq, %bb.am, %bb.ai, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j
  %.0214.ph = phi ptr [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.w ], [ null, %bb.ab ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %bb.ai ], [ %i.fj, %bb.be ], [ %i.fj, %.split.us ], [ null, %bb.bd ], [ null, %bb.ay ], [ null, %bb.au ], [ null, %bb.j ], [ null, %bb.ar ], [ null, %bb.ad ], [ null, %bb.y ], [ null, %bb.s ], [ null, %bb.l ] ; 2 uses
  %.pr = load ptr, ptr %0, align 8, !tbaa !67
  %i.lb = icmp eq ptr %.pr, null
  br i1 %i.lb, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.lc = call i32 @H5S_close(ptr noundef nonnull %.0216) #15
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.le = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.lf = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !25
  %i.lg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_deserialize, i32 noundef 1536, i64 noundef %i.le, i64 noundef %i.lf, ptr noundef nonnull @.str.47) #15 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %.not240 = icmp eq ptr %.0214.ph, null
  br i1 %.not240, label %.thread266, label %.thread356

.thread356:                                       ; preds = %bb.bf, %bb.bg, %bb.bk
  %.1361 = phi i32 [ -1, %bb.bk ], [ 0, %bb.bg ], [ 0, %bb.bf ]
  %.0214355360 = phi ptr [ %.0214.ph, %bb.bk ], [ %i.fj, %bb.bg ], [ %i.fj, %bb.bf ]
  %i.lh = call ptr @H5MM_xfree(ptr noundef nonnull %.0214355360) #15 ; 0 uses
  br label %.thread266

.thread266:                                       ; preds = %bb.h, %bb.d, %bb.bk, %.thread356, %bb.a
  %.2 = phi i32 [ %.1361, %.thread356 ], [ -1, %bb.bk ], [ 0, %bb.a ], [ -1, %bb.d ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__point_bounds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.loopexit, !prof !14

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = add nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !25
  %i.s = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !25
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__point_bounds, i32 noundef 1718, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.48) #15 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.p, ptr %i.u, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = load i64, ptr %i.n, align 8, !tbaa !25
  %i.aa = add nsw i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__point_offset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !14

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@H5S__point_is_regular:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__point_shape_same(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.loopexit46, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24   ; 6 uses
  %i.l = add i32 %i.i, -1                         ; 5 uses
  %i.m = add i32 %i.k, -1                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader51

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.y = zext i32 %i.m to i64                     ; 3 uses
  %i.z = sext i32 %i.l to i64                     ; 3 uses
  %i.aa = zext nneg i32 %i.k to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.aa, 2147483644              ; 4 uses
  %i.ab = sub nsw i64 %i.z, %n.vec                ; 2 uses
  %i.ac = sub nsw i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = sub i64 %i.z, %index                    ; 2 uses
  %i.ae = sub i64 %i.y, %index
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !tbaa !25
  %wide.load103 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ad ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %wide.load104 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !25
  %wide.load105 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !25
  %i.al = sub nsw <2 x i64> %wide.load, %wide.load104
  %i.am = sub nsw <2 x i64> %wide.load103, %wide.load105
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  store <2 x i64> %i.al, ptr %i.ao, align 8, !tbaa !25
  store <2 x i64> %i.am, ptr %i.ap, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %.preheader51.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv84.ph = phi i64 [ %i.z, %.lr.ph ], [ %i.ab, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.y, %.lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

.preheader51.loopexit:                            ; preds = %scalar.ph, %middle.block
  %indvars.iv.next85.lcssa = phi i64 [ %i.ab, %middle.block ], [ %indvars.iv.next85, %scalar.ph ]
  %i.ar = trunc nsw i64 %indvars.iv.next85.lcssa to i32
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.loopexit, %bb.b
  %.041.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ar, %.preheader51.loopexit ] ; 2 uses
  %i.as = icmp sgt i32 %.041.lcssa, -1
  br i1 %i.as, label %.lr.ph56, label %.preheader49

.lr.ph56:                                         ; preds = %.preheader51
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.au = add nuw i32 %.041.lcssa, 1
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.aw, i1 false), !tbaa !25
  br label %.preheader49

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv84
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bb = sub nsw i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv84
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !25
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader51.loopexit, label %scalar.ph, !llvm.loop !70

.preheader49:                                     ; preds = %.lr.ph56, %.preheader51
  %.04363 = load ptr, ptr %i.u, align 8, !tbaa !29 ; 3 uses
  %.04464 = load ptr, ptr %i.q, align 8, !tbaa !29 ; 3 uses
  %i.bd = icmp ne ptr %.04464, null
  %i.be = icmp ne ptr %.04363, null
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.preheader47.lr.ph, label %.loopexit46

.preheader47.lr.ph:                               ; preds = %.preheader49
  br i1 %i.v, label %.preheader47.us.preheader, label %.preheader47.lr.ph.split

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %i.bg = sext i32 %i.l to i64
  %i.bh = sub i32 %i.l, %i.k
  %i.bi = sub i32 %i.i, %i.k
  %i.bj = icmp sgt i32 %i.bi, 0
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %.loopexit.us
  %.04466.us = phi ptr [ %.044.us, %.loopexit.us ], [ %.04464, %.preheader47.us.preheader ] ; 2 uses
  %.04365.us = phi ptr [ %.043.us, %.loopexit.us ], [ %.04363, %.preheader47.us.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04466.us, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04365.us, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader47.us, %bb.d
  %indvars.iv92 = phi i64 [ %i.bg, %.preheader47.us ], [ %indvars.iv.next93, %bb.d ] ; 3 uses
  %.158.us = phi i32 [ %i.m, %.preheader47.us ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv92
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv92
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = zext nneg i32 %.158.us to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %.not45.us = icmp eq i64 %i.bq, %i.bt
  br i1 %.not45.us, label %bb.d, label %.loopexit46

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1
  %i.bu = add nsw i32 %.158.us, -1
  %i.bv = icmp sgt i32 %.158.us, 0
  br i1 %i.bv, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !71

bb.e:                                             ; preds = %.lr.ph62.us
  %i.bw = add nsw i32 %.361.us, -1
  %i.bx = icmp sgt i32 %.361.us, 0
  br i1 %i.bx, label %.lr.ph62.us, label %.loopexit.us, !llvm.loop !72

.lr.ph62.us:                                      ; preds = %..preheader_crit_edge.us, %bb.e
  %.361.us = phi i32 [ %i.bw, %bb.e ], [ %i.bh, %..preheader_crit_edge.us ] ; 3 uses
  %i.by = zext nneg i32 %.361.us to i64           ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !25
  %.not.us = icmp eq i64 %i.ca, %i.cc
  br i1 %.not.us, label %bb.e, label %.loopexit46

.loopexit.us:                                     ; preds = %bb.e, %..preheader_crit_edge.us
  %.043.us = load ptr, ptr %.04365.us, align 8, !tbaa !29 ; 2 uses
  %.044.us = load ptr, ptr %.04466.us, align 8, !tbaa !29 ; 2 uses
  %i.cd = icmp ne ptr %.044.us, null
  %i.ce = icmp ne ptr %.043.us, null
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.preheader47.us, label %.loopexit46, !llvm.loop !73

..preheader_crit_edge.us:                         ; preds = %bb.d
  br i1 %i.bj, label %.lr.ph62.us, label %.loopexit.us

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  %i.cg = icmp sgt i32 %i.i, 0
  br i1 %i.cg, label %.preheader47.us67, label %.loopexit46

.preheader47.us67:                                ; preds = %.preheader47.lr.ph.split, %..loopexit_crit_edge.us76
  %.04466.us68 = phi ptr [ %.044.us74, %..loopexit_crit_edge.us76 ], [ %.04464, %.preheader47.lr.ph.split ] ; 2 uses
  %.04365.us69 = phi ptr [ %.043.us73, %..loopexit_crit_edge.us76 ], [ %.04363, %.preheader47.lr.ph.split ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.04466.us68, i64 8
  br label %bb.f

2:                                                ; preds = %bb.f
  %3 = add nsw i32 %.361.us70, -1
  %4 = icmp sgt i32 %.361.us70, 0
  br i1 %4, label %bb.f, label %..loopexit_crit_edge.us76, !llvm.loop !72

bb.f:                                             ; preds = %.preheader47.us67, %2
  %.361.us70 = phi i32 [ %i.l, %.preheader47.us67 ], [ %3, %2 ] ; 3 uses
  %i.ci = zext nneg i32 %.361.us70 to i64         ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !25
  %.not.us71 = icmp eq i64 %i.ck, %i.cm
  br i1 %.not.us71, label %2, label %.loopexit46

..loopexit_crit_edge.us76:                        ; preds = %2
  %.043.us73 = load ptr, ptr %.04365.us69, align 8, !tbaa !29 ; 2 uses
  %.044.us74 = load ptr, ptr %.04466.us68, align 8, !tbaa !29 ; 2 uses
  %i.cn = icmp ne ptr %.044.us74, null
  %i.co = icmp ne ptr %.043.us73, null
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.preheader47.us67, label %.loopexit46, !llvm.loop !73

.loopexit46:                                      ; preds = %..loopexit_crit_edge.us76, %bb.f, %.loopexit.us, %bb.c, %.lr.ph62.us, %.preheader47.lr.ph.split, %.preheader49, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %.preheader47.lr.ph.split ], [ 1, %.preheader49 ], [ 0, %bb.f ], [ 1, %.loopexit.us ], [ 0, %bb.c ], [ 0, %.lr.ph62.us ], [ 1, %..loopexit_crit_edge.us76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__point_intersect_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.020.in = phi ptr [ %i.i, %bb.b ], [ %.020, %._crit_edge ]
  %.020 = load ptr, ptr %.020.in, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.l = load i32, ptr %i.j, align 8, !tbaa !24   ; 3 uses
  %.not35 = icmp eq i32 %i.l, 0
  br i1 %.not35, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.d, %.lr.ph
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %i.l, %i.u
  br i1 %i.v, label %.thread, label %bb.c

.thread:                                          ; preds = %.preheader, %._crit_edge, %bb.c, %bb.e, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %.preheader ], [ 1, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__point_adjust_u(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader31, label %.critedge, !prof !14

.preheader31:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 5 uses
  %.not40 = icmp eq i32 %i.h, 0
  br i1 %.not40, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader31
  %wide.trip.count = zext i32 %i.h to i64         ; 9 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %.02736 = load ptr, ptr %i.m, align 8, !tbaa !29 ; 2 uses
  %.not2937 = icmp eq ptr %.02736, null
  br i1 %.not2937, label %.preheader.preheader, label %.preheader30.preheader

.preheader.preheader:                             ; preds = %.loopexit, %bb.c
  %xtraiter60 = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.h, 1
  br i1 %i.n, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.preheader

.preheader30.preheader:                           ; preds = %bb.c
  %i.o = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.o
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader30

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.027 = load ptr, ptr %.02738, align 8, !tbaa !29 ; 2 uses
  %.not29 = icmp eq ptr %.027, null
  br i1 %.not29, label %.preheader.preheader, label %.preheader30, !llvm.loop !76

.preheader30:                                     ; preds = %.preheader30.preheader, %.loopexit
  %.02738 = phi ptr [ %.027, %.loopexit ], [ %.02736, %.preheader30.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02738, i64 8 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader30
  %i.q = getelementptr i8, ptr %.02738, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep55
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !25, !alias.scope !84
  %wide.load56 = load <2 x i64>, ptr %i.s, align 8, !tbaa !25, !alias.scope !84
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.t, align 8, !tbaa !25, !alias.scope !85, !noalias !84
  %wide.load58 = load <2 x i64>, ptr %i.u, align 8, !tbaa !25, !alias.scope !85, !noalias !84
  %i.v = sub <2 x i64> %wide.load57, %wide.load
  %i.w = sub <2 x i64> %wide.load58, %wide.load56
  store <2 x i64> %i.v, ptr %i.t, align 8, !tbaa !25, !alias.scope !85, !noalias !84
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !25, !alias.scope !85, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader30, %middle.block
  %indvars.iv43.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader30 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv43.prol = phi i64 [ %indvars.iv.next44.prol, %scalar.ph.prol ], [ %indvars.iv43.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv43.prol ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ac = sub i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !25
  %indvars.iv.next44.prol = add nuw nsw i64 %indvars.iv43.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !81

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv43.unr = phi i64 [ %indvars.iv43.ph, %scalar.ph.preheader ], [ %indvars.iv.next44.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv43.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %scalar.ph
end_hunk_1
