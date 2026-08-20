inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@cinepak_encode_frame:bb.a
  %i.mw = sext i32 %.sink.i to i64
  %i.mx = zext nneg i32 %i.hy to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.split.i.i.i, %.split.split.i.i.i
  %indvars.iv558.i = phi i64 [ %indvars.iv.next559.i, %._crit_edge.split.i.i.i ], [ 0, %.split.split.i.i.i ] ; 3 uses
  %.05.i.i.i = phi i32 [ %i.mz, %._crit_edge.split.i.i.i ], [ 0, %.split.split.i.i.i ] ; 2 uses
  %i.my = sext i32 %.05.i.i.i to i64
  %i.mz = add i32 %.05.i.i.i, %i.lz               ; 2 uses
  %i.na = mul nsw i64 %indvars.iv558.i, %i.mv
  %invariant.gep.i = getelementptr i8, ptr %i.lp, i64 %i.na
  %i.nb = mul nsw i64 %indvars.iv558.i, %i.mw
  %invariant.gep446.i = getelementptr i8, ptr %.sink573.i, i64 %i.nb
  br label %get_sub_picture.exit.i.i.i

get_sub_picture.exit.i.i.i:                       ; preds = %get_sub_picture.exit.i.i.i, %.preheader.i.i.i
  %indvars.iv11.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next12.i.i.i, %get_sub_picture.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.my, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %get_sub_picture.exit.i.i.i ] ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv11.i.i.i
  store ptr %gep.i, ptr %i.d, align 16, !tbaa !48
  %gep447.i = getelementptr i8, ptr %invariant.gep446.i, i64 %indvars.iv11.i.i.i
  store ptr %gep447.i, ptr %i.e, align 16, !tbaa !48
  %i.nc = call fastcc i32 @compute_mb_distortion(ptr noundef nonnull readonly %i.m, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g)
  %i.nd = getelementptr inbounds [36 x i8], ptr %i.lw, i64 %indvars.iv.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 28
  store i32 %i.nc, ptr %i.ne, align 4, !tbaa !73
  %indvars.iv.next12.i.i.i = add nuw nsw i64 %indvars.iv11.i.i.i, 4
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %i.mz, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.split.i.i.i, label %get_sub_picture.exit.i.i.i, !llvm.loop !75

._crit_edge.split.i.i.i:                          ; preds = %get_sub_picture.exit.i.i.i
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 4 ; 2 uses
  %i.nf = icmp samesign ult i64 %indvars.iv.next559.i, %i.mx
  br i1 %i.nf, label %.preheader.i.i.i, label %calculate_skip_errors.exit.i.i, !llvm.loop !76

calculate_skip_errors.exit.i.i:                   ; preds = %._crit_edge.split.i.i.i, %._crit_edge.split.us.us.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.k

bb.k:                                             ; preds = %calculate_skip_errors.exit.i.i, %get_sub_picture.exit226.i
  %i.ng = trunc i32 %i.hy to i16
  %i.nh = call i16 @llvm.bswap.i16(i16 %i.ng)
  %i.ni = sext i32 %i.lj to i64                   ; 3 uses
  %i.nj = sext i32 %i.lo to i64                   ; 2 uses
  %i.nk = shl nsw i32 %i.lj, 1
  %i.nl = sext i32 %i.nk to i64                   ; 2 uses
  %i.nm = shl nsw i32 %i.lo, 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = mul nsw i32 %i.lj, 3
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = mul nsw i32 %i.lo, 3
  %i.nr = sext i32 %i.nq to i64
  %i.ns = zext nneg i32 %i.hy to i64
  %i.nt = sext i32 %.sroa.6236.4269.i to i64
  %i.nu = sext i32 %.sroa.9238.4267.i to i64
  %i.nv = extractelement <2 x i32> %i.lq, i64 0
  %i.nw = sext i32 %i.nv to i64
  %i.nx = extractelement <2 x i32> %i.lq, i64 1
  %i.ny = sext i32 %i.nx to i64
  br label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.critedge3.i.i, %bb.k
  %.4259.i = phi i64 [ %.1256480.i, %bb.k ], [ %.8.i, %.critedge3.i.i ]
  %.0250.i = phi i32 [ undef, %bb.k ], [ %.4254.i, %.critedge3.i.i ]
  %.0122299.i.i = phi i32 [ 1, %bb.k ], [ %i.asj, %.critedge3.i.i ] ; 7 uses
  %.0128298.i.i = phi i32 [ 0, %bb.k ], [ %.3131373.i.i, %.critedge3.i.i ]
  %.0193297.i.i = phi i32 [ undef, %bb.k ], [ %.6198372.i.i, %.critedge3.i.i ]
  %.0200296.i.i = phi i32 [ undef, %bb.k ], [ %.6206371.i.i, %.critedge3.i.i ]
  %i.nz = call i32 @llvm.smax.i32(i32 %.0122299.i.i, i32 4)
  %i.oa = lshr i32 %i.nz, 2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread227.i.i, %.preheader.lr.ph.i.i
  %.5260.i = phi i64 [ %.4259.i, %.preheader.lr.ph.i.i ], [ %.8.i, %.thread227.i.i ]
  %.1251.i = phi i32 [ %.0250.i, %.preheader.lr.ph.i.i ], [ %.4254.i, %.thread227.i.i ]
  %.0119292.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.asi, %.thread227.i.i ] ; 6 uses
  %.1124291.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.5374.i.i, %.thread227.i.i ]
  %.1129290.i.i = phi i32 [ %.0128298.i.i, %.preheader.lr.ph.i.i ], [ %.3131373.i.i, %.thread227.i.i ]
  %.1289.i.i = phi i32 [ %.0193297.i.i, %.preheader.lr.ph.i.i ], [ %.6198372.i.i, %.thread227.i.i ]
  %.1201288.i.i = phi i32 [ %.0200296.i.i, %.preheader.lr.ph.i.i ], [ %.6206371.i.i, %.thread227.i.i ]
  %.not155.i.i = icmp eq i32 %.0119292.i.i, 0     ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ce, %.preheader.i.i
  %.6.i = phi i64 [ %.5260.i, %.preheader.i.i ], [ %.7.i, %bb.ce ] ; 4 uses
  %.2252.i = phi i32 [ %.1251.i, %.preheader.i.i ], [ %.3253.i, %bb.ce ] ; 3 uses
  %.0118286.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.asg, %bb.ce ] ; 4 uses
  %.1121285.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.3.i.i, %bb.ce ] ; 8 uses
  %.2125284.i.i = phi i32 [ %.1124291.i.i, %.preheader.i.i ], [ %.5.i.i, %bb.ce ] ; 5 uses
  %.2130283.i.i = phi i32 [ %.1129290.i.i, %.preheader.i.i ], [ %.3131.i.i, %bb.ce ] ; 4 uses
  %.2194282.i.i = phi i32 [ %.1289.i.i, %.preheader.i.i ], [ %.6198.i.i, %bb.ce ] ; 6 uses
  %.2202281.i.i = phi i32 [ %.1201288.i.i, %.preheader.i.i ], [ %.6206.i.i, %bb.ce ] ; 6 uses
  %i.ob = icmp eq i32 %.0118286.i.i, 2
  %or.cond.i.i = and i1 %i.z, %i.ob
  br i1 %or.cond.i.i, label %.thread227.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.oc = icmp eq i32 %.0118286.i.i, 0
  br i1 %i.oc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.0122299.i.i, ptr %i.gs, align 4, !tbaa !77
  %i.od = call fastcc i32 @quantize(ptr noundef %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 1, ptr noundef %4, i32 noundef 3) ; 6 uses
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %rd_strip.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  store i32 %i.od, ptr %i.gs, align 4, !tbaa !77
  %i.of = icmp slt i32 %i.od, %.0122299.i.i
  %spec.select.i.i = select i1 %i.of, i32 1, i32 %.2125284.i.i ; 3 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !79
  store i32 0, ptr %i.gt, align 4, !tbaa !80
  %i.og = load i32, ptr %i.gh, align 4, !tbaa !57 ; 4 uses
  %i.oh = mul nsw i32 %i.og, %i.hy                ; 3 uses
  %i.oi = sdiv i32 %i.oh, 16                      ; 3 uses
  %i.oj = load i64, ptr %i.r, align 8, !tbaa !64
  %i.ok = load i32, ptr %i.ac, align 8, !tbaa !56 ; 4 uses
  %i.ol = icmp eq i32 %i.ok, 2
  %i.om = select i1 %i.ol, i32 6, i32 4
  %.not.i.i.i = icmp eq i32 %i.od, 0
  %i.on = mul nuw nsw i32 %i.om, %i.od
  %i.oo = add nuw i32 %i.on, 8
  %i.op = select i1 %.not.i.i.i, i32 4, i32 %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = shl i64 %i.oj, 3
  %i.os = sext i32 %i.oi to i64
  %i.ot = add nsw i64 %i.oq, %i.os
  %i.ou = mul i64 %i.ot, %i.or                    ; 3 uses
  %i.ov = icmp sgt i32 %i.oh, 15
  br i1 %i.ov, label %.lr.ph174.i.i.i, label %calculate_mode_score.exit.thread213.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %.not155.i.i, label %bb.ce, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ow = icmp eq i32 %.0118286.i.i, 1
  br i1 %i.ow, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %.0119292.i.i, ptr %i.gr, align 4, !tbaa !79
  %i.ox = call fastcc i32 @quantize(ptr noundef %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 0, ptr noundef %4, i32 noundef 3) ; 4 uses
  %i.oy = icmp slt i32 %i.ox, 0
  br i1 %i.oy, label %rd_strip.exit.thread.i, label %.thread357.i.i

.thread357.i.i:                                   ; preds = %bb.q
  store i32 %i.ox, ptr %i.gr, align 4, !tbaa !79
  %i.oz = icmp slt i32 %i.ox, %.0119292.i.i
  %spec.select162.i.i = select i1 %i.oz, i32 1, i32 %.1121285.i.i ; 3 uses
  store i32 1, ptr %i.gt, align 4, !tbaa !80
  %i.pa = load i32, ptr %i.gh, align 4, !tbaa !57
  %i.pb = mul nsw i32 %i.pa, %i.hy                ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 15
  br i1 %i.pc, label %.lr.ph169.i.i.i, label %calculate_mode_score.exit.thread.i.i

bb.r:                                             ; preds = %bb.p
  store i32 2, ptr %i.gt, align 4, !tbaa !80
  %i.pd = load i32, ptr %i.gh, align 4, !tbaa !57
  %i.pe = mul nsw i32 %i.pd, %i.hy                ; 2 uses
  %i.pf = load i64, ptr %i.r, align 8, !tbaa !64  ; 3 uses
  %i.pg = icmp sgt i32 %i.pe, 15
  br i1 %i.pg, label %.lr.ph160.i.i.i, label %calculate_mode_score.exit.thread.i.i

.lr.ph174.i.i.i:                                  ; preds = %.thread.i.i
  %i.ph = load ptr, ptr %i.gq, align 8, !tbaa !51 ; 3 uses
  %wide.trip.count199.i.i.i = zext nneg i32 %i.oi to i64 ; 2 uses
  %xtraiter249 = and i64 %wide.trip.count199.i.i.i, 1
  %i.pi = and i32 %i.oh, 2147483632
  %i.pj = icmp eq i32 %i.pi, 16
  br i1 %i.pj, label %.epil.preheader248, label %.lr.ph174.i.i.i.new

.lr.ph174.i.i.i.new:                              ; preds = %.lr.ph174.i.i.i
  %unroll_iter253 = and i64 %wide.trip.count199.i.i.i, 134217726
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph174.i.i.i.new
  %indvars.iv196.i.i.i = phi i64 [ 0, %.lr.ph174.i.i.i.new ], [ %indvars.iv.next197.i.i.i.1, %bb.s ] ; 3 uses
  %.0116172.i.i.i = phi i64 [ %i.ou, %.lr.ph174.i.i.i.new ], [ %i.pw, %bb.s ]
  %niter254 = phi i64 [ 0, %.lr.ph174.i.i.i.new ], [ %niter254.next.1, %bb.s ]
  %i.pk = getelementptr inbounds nuw [36 x i8], ptr %i.ph, i64 %indvars.iv196.i.i.i ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !81
  %i.pn = shl nsw i32 %i.pm, 7
  %i.po = sext i32 %i.pn to i64
  %i.pp = add nsw i64 %.0116172.i.i.i, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  store i32 0, ptr %i.pq, align 4, !tbaa !82
  %i.pr = getelementptr inbounds nuw [36 x i8], ptr %i.ph, i64 %indvars.iv196.i.i.i ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !81
  %i.pu = shl nsw i32 %i.pt, 7
  %i.pv = sext i32 %i.pu to i64
  %i.pw = add nsw i64 %i.pp, %i.pv                ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 68
  store i32 0, ptr %i.px, align 4, !tbaa !82
  %indvars.iv.next197.i.i.i.1 = add nuw nsw i64 %indvars.iv196.i.i.i, 2 ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !83

.lr.ph169.i.i.i:                                  ; preds = %.thread357.i.i
  %i.py = load i64, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %i.pz = lshr i32 %i.pb, 4                       ; 3 uses
  %i.qa = load ptr, ptr %i.gq, align 8, !tbaa !51 ; 3 uses
  %i.qb = mul i64 %i.py, 9                        ; 3 uses
  %i.qc = mul i64 %i.py, 33                       ; 3 uses
  %wide.trip.count194.i.i.i = zext nneg i32 %i.pz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count194.i.i.i, 1
  %i.qd = icmp eq i32 %i.pz, 1
  br i1 %i.qd, label %.epil.preheader, label %.lr.ph169.i.i.i.new

.lr.ph169.i.i.i.new:                              ; preds = %.lr.ph169.i.i.i
  %unroll_iter = and i64 %wide.trip.count194.i.i.i, 134217726
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph169.i.i.i.new
  %indvars.iv191.i.i.i = phi i64 [ 0, %.lr.ph169.i.i.i.new ], [ %indvars.iv.next192.i.i.i.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph169.i.i.i.new ], [ %niter.next.1, %bb.t ]
  %i.qe = getelementptr inbounds nuw [36 x i8], ptr %i.qa, i64 %indvars.iv191.i.i.i ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !81
  %i.qh = shl nsw i32 %i.qg, 7
  %i.qi = sext i32 %i.qh to i64
  %i.qj = add i64 %i.qb, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !84
  %i.qm = shl nsw i32 %i.ql, 7
  %i.qn = sext i32 %i.qm to i64
  %i.qo = add i64 %i.qc, %i.qn
  %.not145.i.i.i = icmp sgt i64 %i.qj, %i.qo
  %spec.select.i.i.i = zext i1 %.not145.i.i.i to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i32 %spec.select.i.i.i, ptr %i.qp, align 4, !tbaa !82
  %i.qq = getelementptr inbounds nuw [36 x i8], ptr %i.qa, i64 %indvars.iv191.i.i.i ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !81
  %i.qt = shl nsw i32 %i.qs, 7
  %i.qu = sext i32 %i.qt to i64
  %i.qv = add i64 %i.qb, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 60
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !84
  %i.qy = shl nsw i32 %i.qx, 7
  %i.qz = sext i32 %i.qy to i64
  %i.ra = add i64 %i.qc, %i.qz
  %.not145.i.i.i.1 = icmp sgt i64 %i.qv, %i.ra
  %spec.select.i.i.i.1 = zext i1 %.not145.i.i.i.1 to i32
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qq, i64 68
  store i32 %spec.select.i.i.i.1, ptr %i.rb, align 4, !tbaa !82
  %indvars.iv.next192.i.i.i.1 = add nuw nsw i64 %indvars.iv191.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !85

.lr.ph160.i.i.i:                                  ; preds = %bb.r
  %i.rc = lshr i32 %i.pe, 4
  %i.rd = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.re = mul i64 %i.pf, 10
  %i.rf = mul i64 %i.pf, 34
  %wide.trip.count184.i.i.i = zext nneg i32 %i.rc to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.lr.ph160.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ 0, %.lr.ph160.i.i.i ], [ %indvars.iv.next182.i.i.i, %bb.z ] ; 2 uses
  %i.rg = getelementptr inbounds nuw [36 x i8], ptr %i.rd, i64 %indvars.iv181.i.i.i ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 28
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !73
  %i.rj = shl nsw i32 %i.ri, 7
  %i.rk = sext i32 %i.rj to i64
  %i.rl = add i64 %i.pf, %i.rk                    ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !81
  %i.ro = shl nsw i32 %i.rn, 7
  %i.rp = sext i32 %i.ro to i64
  %i.rq = add i64 %i.re, %i.rp                    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !84
  %i.rt = shl nsw i32 %i.rs, 7
  %i.ru = sext i32 %i.rt to i64
  %i.rv = add i64 %i.rf, %i.ru                    ; 2 uses
  %.not138.i.i.i = icmp sgt i64 %i.rl, %i.rq
  %.not139.i.i.i = icmp sgt i64 %i.rl, %i.rv
  %or.cond.i.i.i = select i1 %.not138.i.i.i, i1 true, i1 %.not139.i.i.i
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  store i32 2, ptr %i.rw, align 4, !tbaa !82
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %.not140.i.i.i = icmp sgt i64 %i.rq, %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rg, i64 32 ; 2 uses
  br i1 %.not140.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.rx, align 4, !tbaa !82
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 1, ptr %i.rx, align 4, !tbaa !82
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %indvars.iv.next182.i.i.i = add nuw nsw i64 %indvars.iv181.i.i.i, 1 ; 2 uses
  %exitcond185.not.i.i.i = icmp eq i64 %indvars.iv.next182.i.i.i, %wide.trip.count184.i.i.i
  br i1 %exitcond185.not.i.i.i, label %calculate_mode_score.exit.thread.i.i, label %bb.u, !llvm.loop !86

calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa: ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %calculate_mode_score.exit.thread.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa, %.lr.ph169.i.i.i
  %indvars.iv191.i.i.i.epil.init = phi i64 [ 0, %.lr.ph169.i.i.i ], [ %indvars.iv.next192.i.i.i.1, %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa ]
  %lcmp.mod233 = trunc i32 %i.pz to i1
  call void @llvm.assume(i1 %lcmp.mod233)
  %i.ry = getelementptr inbounds nuw [36 x i8], ptr %i.qa, i64 %indvars.iv191.i.i.i.epil.init ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !81
  %i.sb = shl nsw i32 %i.sa, 7
  %i.sc = sext i32 %i.sb to i64
  %i.sd = add i64 %i.qb, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !84
  %i.sg = shl nsw i32 %i.sf, 7
  %i.sh = sext i32 %i.sg to i64
  %i.si = add i64 %i.qc, %i.sh
  %.not145.i.i.i.epil = icmp sgt i64 %i.sd, %i.si
  %spec.select.i.i.i.epil = zext i1 %.not145.i.i.i.epil to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  store i32 %spec.select.i.i.i.epil, ptr %i.sj, align 4, !tbaa !82
  br label %calculate_mode_score.exit.thread.i.i

calculate_mode_score.exit.thread.i.i:             ; preds = %bb.z, %.epil.preheader, %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa, %bb.r, %.thread357.i.i
  %.2362.i.i = phi i32 [ %spec.select162.i.i, %.epil.preheader ], [ %spec.select162.i.i, %.thread357.i.i ], [ %.1121285.i.i, %bb.r ], [ %spec.select162.i.i, %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa ], [ %.1121285.i.i, %bb.z ] ; 2 uses
  %i.sk = load i32, ptr %i.gu, align 8, !tbaa !87
  store i32 %.0122299.i.i, ptr %i.gs, align 4, !tbaa !77
  %i.sl = call fastcc i32 @quantize(ptr noundef %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 1, ptr noundef %4, i32 noundef 0) ; 4 uses
  %i.sm = icmp slt i32 %i.sl, 0
  br i1 %i.sm, label %rd_strip.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %calculate_mode_score.exit.thread.i.i
  %i.sn = load i32, ptr %i.gs, align 4, !tbaa !77
  %i.so = icmp slt i32 %i.sl, %i.sn
  br i1 %i.so, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.sl, ptr %i.gs, align 4, !tbaa !77
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i32 %.0119292.i.i, ptr %i.gr, align 4, !tbaa !79
  %i.sp = call fastcc i32 @quantize(ptr noundef nonnull %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 0, ptr noundef %4, i32 noundef 1) ; 5 uses
  %i.sq = icmp slt i32 %i.sp, 0
  br i1 %i.sq, label %rd_strip.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sr = load i32, ptr %i.gr, align 4, !tbaa !79 ; 2 uses
  %i.ss = icmp slt i32 %i.sp, %i.sr
  br i1 %i.ss, label %bb.ae, label %.preheader

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.sp, ptr %i.gr, align 4, !tbaa !79
  br label %.preheader

.preheader:                                       ; preds = %bb.ae, %bb.ad
  %.ph = phi i32 [ %i.sp, %bb.ae ], [ %i.sr, %bb.ad ]
  br label %bb.af

bb.af:                                            ; preds = %.backedge, %.preheader
  %i.st = phi i32 [ %.ph, %.preheader ], [ %.be, %.backedge ] ; 4 uses
  %.3203.i.i = phi i32 [ %.2202281.i.i, %.preheader ], [ %.8208.i.i, %.backedge ] ; 4 uses
  %.3195.i.i = phi i32 [ %.2194282.i.i, %.preheader ], [ %.8.i.i, %.backedge ] ; 4 uses
  %.0.i.i = phi i32 [ %i.sk, %.preheader ], [ %i.wy, %.backedge ] ; 2 uses
  %i.su = load i32, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %i.sv = icmp eq i32 %i.su, 2
  %i.sw = select i1 %i.sv, i32 6, i32 4           ; 2 uses
  %i.sx = load i32, ptr %i.gh, align 4, !tbaa !57 ; 3 uses
  %i.sy = mul nsw i32 %i.sx, %i.hy                ; 6 uses
  %i.sz = sdiv i32 %i.sy, 16                      ; 6 uses
  %i.ta = load i64, ptr %i.r, align 8, !tbaa !64  ; 7 uses
  %i.tb = load i32, ptr %i.gs, align 4, !tbaa !77 ; 2 uses
  %.not.i164.i.i = icmp eq i32 %i.tb, 0
  %i.tc = mul nsw i32 %i.tb, %i.sw
  %.not136.i165.i.i = icmp eq i32 %i.st, 0
  %i.td = mul nsw i32 %i.sw, %i.st
  %i.te = add nsw i32 %i.td, 4
  %i.tf = select i1 %.not136.i165.i.i, i32 0, i32 %i.te
  %i.tg = add i32 %i.tc, 8
  %i.th = select i1 %.not.i164.i.i, i32 4, i32 %i.tg
  %i.ti = add i32 %i.th, %i.tf
  %i.tj = sext i32 %i.ti to i64                   ; 2 uses
  %i.tk = shl i64 %i.ta, 3                        ; 2 uses
  %i.tl = mul i64 %i.tk, %i.tj                    ; 6 uses
  %i.tm = load i32, ptr %i.gt, align 4, !tbaa !80
  switch i32 %i.tm, label %calculate_mode_score.exit176.i.i [
    i32 0, label %bb.ag
    i32 1, label %bb.ai
    i32 2, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.tn = sext i32 %i.sz to i64
  %i.to = add nsw i64 %i.tj, %i.tn
  %i.tp = mul i64 %i.to, %i.tk                    ; 3 uses
  %i.tq = icmp sgt i32 %i.sy, 15
  br i1 %i.tq, label %.lr.ph174.i170.i.i, label %calculate_mode_score.exit176.i.i

.lr.ph174.i170.i.i:                               ; preds = %bb.ag
  %i.tr = load ptr, ptr %i.gq, align 8, !tbaa !51 ; 3 uses
  %wide.trip.count199.i171.i.i = zext nneg i32 %i.sz to i64 ; 2 uses
  %xtraiter242 = and i64 %wide.trip.count199.i171.i.i, 1
  %i.ts = and i32 %i.sy, 2147483632
  %i.tt = icmp eq i32 %i.ts, 16
  br i1 %i.tt, label %.epil.preheader241, label %.lr.ph174.i170.i.i.new

.lr.ph174.i170.i.i.new:                           ; preds = %.lr.ph174.i170.i.i
  %unroll_iter246 = and i64 %wide.trip.count199.i171.i.i, 134217726
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph174.i170.i.i.new
  %indvars.iv196.i172.i.i = phi i64 [ 0, %.lr.ph174.i170.i.i.new ], [ %indvars.iv.next197.i174.i.i.1, %bb.ah ] ; 3 uses
  %.0116172.i173.i.i = phi i64 [ %i.tp, %.lr.ph174.i170.i.i.new ], [ %i.ug, %bb.ah ]
  %niter247 = phi i64 [ 0, %.lr.ph174.i170.i.i.new ], [ %niter247.next.1, %bb.ah ]
  %i.tu = getelementptr inbounds nuw [36 x i8], ptr %i.tr, i64 %indvars.iv196.i172.i.i ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !81
  %i.tx = shl nsw i32 %i.tw, 7
  %i.ty = sext i32 %i.tx to i64
  %i.tz = add nsw i64 %.0116172.i173.i.i, %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  store i32 0, ptr %i.ua, align 4, !tbaa !82
  %i.ub = getelementptr inbounds nuw [36 x i8], ptr %i.tr, i64 %indvars.iv196.i172.i.i ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !81
  %i.ue = shl nsw i32 %i.ud, 7
  %i.uf = sext i32 %i.ue to i64
  %i.ug = add nsw i64 %i.tz, %i.uf                ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 68
  store i32 0, ptr %i.uh, align 4, !tbaa !82
  %indvars.iv.next197.i174.i.i.1 = add nuw nsw i64 %indvars.iv196.i172.i.i, 2 ; 2 uses
  %niter247.next.1 = add i64 %niter247, 2         ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !83

bb.ai:                                            ; preds = %bb.af
  %i.ui = icmp sgt i32 %i.sy, 15
  br i1 %i.ui, label %.lr.ph165.i.i.i, label %calculate_mode_score.exit176.i.i

.lr.ph165.i.i.i:                                  ; preds = %bb.ai
  %i.uj = load ptr, ptr %i.gq, align 8, !tbaa !51 ; 3 uses
  %wide.trip.count189.i.i.i = zext nneg i32 %i.sz to i64 ; 2 uses
  %xtraiter235 = and i64 %wide.trip.count189.i.i.i, 1
  %i.uk = and i32 %i.sy, 2147483632
  %i.ul = icmp eq i32 %i.uk, 16
  br i1 %i.ul, label %.epil.preheader234, label %.lr.ph165.i.i.i.new

.lr.ph165.i.i.i.new:                              ; preds = %.lr.ph165.i.i.i
  %unroll_iter239 = and i64 %wide.trip.count189.i.i.i, 134217726
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph165.i.i.i.new
  %indvars.iv186.i.i.i = phi i64 [ 0, %.lr.ph165.i.i.i.new ], [ %indvars.iv.next187.i.i.i.1, %bb.aj ] ; 3 uses
  %.1117163.i.i.i = phi i64 [ %i.tl, %.lr.ph165.i.i.i.new ], [ %i.vg, %bb.aj ]
  %niter240 = phi i64 [ 0, %.lr.ph165.i.i.i.new ], [ %niter240.next.1, %bb.aj ]
  %i.um = getelementptr inbounds nuw [36 x i8], ptr %i.uj, i64 %indvars.iv186.i.i.i ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !82
  %i.up = icmp eq i32 %i.uo, 0                    ; 2 uses
  %..i.i.i = select i1 %i.up, i64 4, i64 24
  %.220.v.i.i.i = select i1 %i.up, i64 9, i64 33
  %.220.i.i.i = mul i64 %.220.v.i.i.i, %i.ta
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 %..i.i.i
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !53
  %i.us = shl nsw i32 %i.ur, 7
  %i.ut = sext i32 %i.us to i64
  %i.uu = add i64 %.1117163.i.i.i, %i.ut
  %i.uv = add i64 %i.uu, %.220.i.i.i
  %i.uw = getelementptr inbounds nuw [36 x i8], ptr %i.uj, i64 %indvars.iv186.i.i.i ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 68
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !82
  %i.uz = icmp eq i32 %i.uy, 0                    ; 2 uses
  %.220.v.i.i.i.1 = select i1 %i.uz, i64 9, i64 33
  %.220.i.i.i.1 = mul i64 %.220.v.i.i.i.1, %i.ta
  %i.va = select i1 %i.uz, i64 40, i64 60
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !53
  %i.vd = shl nsw i32 %i.vc, 7
  %i.ve = sext i32 %i.vd to i64
  %i.vf = add i64 %i.uv, %i.ve
  %i.vg = add i64 %i.vf, %.220.i.i.i.1            ; 3 uses
  %indvars.iv.next187.i.i.i.1 = add nuw nsw i64 %indvars.iv186.i.i.i, 2 ; 2 uses
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa, label %bb.aj, !llvm.loop !88

bb.ak:                                            ; preds = %bb.af
  %i.vh = icmp sgt i32 %i.sy, 15
  br i1 %i.vh, label %.lr.ph.i.i.i, label %calculate_mode_score.exit176.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ak
  %i.vi = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.vj = mul i64 %i.ta, 10
  %i.vk = mul i64 %i.ta, 34
  %wide.trip.count.i.i.i = zext nneg i32 %i.sz to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i.i.i
  %indvars.iv.i167.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i168.i.i, %bb.aq ] ; 2 uses
  %.0155.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.aq ] ; 5 uses
  %.0114154.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1115.i.i.i, %bb.aq ] ; 5 uses
  %.4153.i.i.i = phi i64 [ %i.tl, %.lr.ph.i.i.i ], [ %.5.i.i.i, %bb.aq ]
  %i.vl = getelementptr inbounds nuw [36 x i8], ptr %i.vi, i64 %indvars.iv.i167.i.i ; 4 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 28
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !73
  %i.vo = shl nsw i32 %i.vn, 7
  %i.vp = sext i32 %i.vo to i64
  %i.vq = add i64 %i.ta, %i.vp                    ; 5 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 32 ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !82
  switch i32 %i.vs, label %bb.ao [
    i32 2, label %bb.aq
    i32 0, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !81
  %i.vv = shl nsw i32 %i.vu, 7
  %i.vw = sext i32 %i.vv to i64
  %i.vx = add i64 %i.vj, %i.vw                    ; 2 uses
  %.not142.i.i.i = icmp slt i64 %i.vx, %i.vq
  br i1 %.not142.i.i.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 2, ptr %i.vr, align 4, !tbaa !82
  %i.vy = add nsw i32 %.0114154.i.i.i, 1
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !84
  %i.wb = shl nsw i32 %i.wa, 7
  %i.wc = sext i32 %i.wb to i64
  %i.wd = add i64 %i.vk, %i.wc                    ; 2 uses
  %.not141.i.i.i = icmp slt i64 %i.wd, %i.vq
  br i1 %.not141.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 2, ptr %i.vr, align 4, !tbaa !82
  %i.we = add nsw i32 %.0155.i.i.i, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.pn143.i.i.i = phi i64 [ %i.vx, %bb.am ], [ %i.vq, %bb.an ], [ %i.vq, %bb.al ], [ %i.vq, %bb.ap ], [ %i.wd, %bb.ao ]
  %.1115.i.i.i = phi i32 [ %.0114154.i.i.i, %bb.am ], [ %i.vy, %bb.an ], [ %.0114154.i.i.i, %bb.al ], [ %.0114154.i.i.i, %bb.ap ], [ %.0114154.i.i.i, %bb.ao ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0155.i.i.i, %bb.am ], [ %.0155.i.i.i, %bb.an ], [ %.0155.i.i.i, %bb.al ], [ %i.we, %bb.ap ], [ %.0155.i.i.i, %bb.ao ] ; 2 uses
  %.5.i.i.i = add nsw i64 %.pn143.i.i.i, %.4153.i.i.i ; 2 uses
  %indvars.iv.next.i168.i.i = add nuw nsw i64 %indvars.iv.i167.i.i, 1 ; 2 uses
  %exitcond.not.i169.i.i = icmp eq i64 %indvars.iv.next.i168.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i169.i.i, label %calculate_mode_score.exit176.i.i, label %bb.al, !llvm.loop !89

calculate_mode_score.exit176.i.i.loopexit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %calculate_mode_score.exit176.i.i, label %.epil.preheader241

.epil.preheader241:                               ; preds = %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa, %.lr.ph174.i170.i.i
  %indvars.iv196.i172.i.i.epil.init = phi i64 [ 0, %.lr.ph174.i170.i.i ], [ %indvars.iv.next197.i174.i.i.1, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa ]
  %.0116172.i173.i.i.epil.init = phi i64 [ %i.tp, %.lr.ph174.i170.i.i ], [ %i.ug, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa ]
  %lcmp.mod245 = trunc i32 %i.sz to i1
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.wf = getelementptr inbounds nuw [36 x i8], ptr %i.tr, i64 %indvars.iv196.i172.i.i.epil.init ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !81
  %i.wi = shl nsw i32 %i.wh, 7
  %i.wj = sext i32 %i.wi to i64
  %i.wk = add nsw i64 %.0116172.i173.i.i.epil.init, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  store i32 0, ptr %i.wl, align 4, !tbaa !82
  br label %calculate_mode_score.exit176.i.i

calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %calculate_mode_score.exit176.i.i, label %.epil.preheader234

.epil.preheader234:                               ; preds = %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa, %.lr.ph165.i.i.i
  %indvars.iv186.i.i.i.epil.init = phi i64 [ 0, %.lr.ph165.i.i.i ], [ %indvars.iv.next187.i.i.i.1, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa ]
  %.1117163.i.i.i.epil.init = phi i64 [ %i.tl, %.lr.ph165.i.i.i ], [ %i.vg, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa ]
  %lcmp.mod238 = trunc i32 %i.sz to i1
  call void @llvm.assume(i1 %lcmp.mod238)
  %i.wm = getelementptr inbounds nuw [36 x i8], ptr %i.uj, i64 %indvars.iv186.i.i.i.epil.init ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !82
  %i.wp = icmp eq i32 %i.wo, 0                    ; 2 uses
  %..i.i.i.epil = select i1 %i.wp, i64 4, i64 24
  %.220.v.i.i.i.epil = select i1 %i.wp, i64 9, i64 33
  %.220.i.i.i.epil = mul i64 %.220.v.i.i.i.epil, %i.ta
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 %..i.i.i.epil
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !53
  %i.ws = shl nsw i32 %i.wr, 7
  %i.wt = sext i32 %i.ws to i64
  %i.wu = add i64 %.1117163.i.i.i.epil.init, %i.wt
  %i.wv = add i64 %i.wu, %.220.i.i.i.epil
  br label %calculate_mode_score.exit176.i.i

calculate_mode_score.exit176.i.i:                 ; preds = %bb.aq, %.epil.preheader234, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa, %.epil.preheader241, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa, %bb.ak, %bb.ai, %bb.ag, %bb.af
  %.8208.i.i = phi i32 [ %.3203.i.i, %bb.af ], [ %.3203.i.i, %.epil.preheader241 ], [ %.3203.i.i, %bb.ag ], [ 0, %.epil.preheader234 ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ %.3203.i.i, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa ], [ 0, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa ], [ %.1115.i.i.i, %bb.aq ] ; 3 uses
  %.8.i.i = phi i32 [ %.3195.i.i, %bb.af ], [ %.3195.i.i, %.epil.preheader241 ], [ %.3195.i.i, %bb.ag ], [ 0, %.epil.preheader234 ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ %.3195.i.i, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa ], [ 0, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa ], [ %.1.i.i.i, %bb.aq ] ; 4 uses
  %.8.i166.i.i = phi i64 [ %i.tl, %bb.af ], [ %i.wk, %.epil.preheader241 ], [ %i.tp, %bb.ag ], [ %i.wv, %.epil.preheader234 ], [ %i.tl, %bb.ai ], [ %i.tl, %bb.ak ], [ %i.ug, %calculate_mode_score.exit176.i.i.loopexit.unr-lcssa ], [ %i.vg, %calculate_mode_score.exit176.i.i.loopexit201.unr-lcssa ], [ %.5.i.i.i, %bb.aq ] ; 2 uses
  %i.ww = icmp ne i32 %.8208.i.i, 0               ; 2 uses
  %i.wx = icmp ne i32 %.8.i.i, 0
  %or.cond6.i.i = select i1 %i.ww, i1 true, i1 %i.wx
  br i1 %or.cond6.i.i, label %bb.ar, label %calculate_mode_score.exit.thread213.i.i

bb.ar:                                            ; preds = %calculate_mode_score.exit176.i.i
  %i.wy = add nsw i32 %.0.i.i, -1
  %.not157.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not157.i.i, label %calculate_mode_score.exit.thread213.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ww, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  store i32 %.0122299.i.i, ptr %i.gs, align 4, !tbaa !77
  %i.wz = call fastcc i32 @quantize(ptr noundef nonnull %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 1, ptr noundef %4, i32 noundef 0) ; 4 uses
  %i.xa = icmp slt i32 %i.wz, 0
  br i1 %i.xa, label %rd_strip.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xb = load i32, ptr %i.gs, align 4, !tbaa !77
  %i.xc = icmp slt i32 %i.wz, %i.xb
  br i1 %i.xc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 %i.wz, ptr %i.gs, align 4, !tbaa !77
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as
  %.not158.i.i = icmp eq i32 %.8.i.i, 0
  br i1 %.not158.i.i, label %._crit_edge.i.i, label %bb.ax

._crit_edge.i.i:                                  ; preds = %bb.aw
  %.pre.pre.i.i = load i32, ptr %i.gr, align 4, !tbaa !79
  br label %.backedge

bb.ax:                                            ; preds = %bb.aw
  store i32 %.0119292.i.i, ptr %i.gr, align 4, !tbaa !79
  %i.xd = call fastcc i32 @quantize(ptr noundef nonnull %i.m, i32 noundef range(i32 1, -2147483648) %i.hy, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 0, ptr noundef %4, i32 noundef 1) ; 5 uses
  %i.xe = icmp slt i32 %i.xd, 0
  br i1 %i.xe, label %rd_strip.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xf = load i32, ptr %i.gr, align 4, !tbaa !79 ; 2 uses
  %i.xg = icmp slt i32 %i.xd, %i.xf
  br i1 %i.xg, label %bb.az, label %.backedge

bb.az:                                            ; preds = %bb.ay
  store i32 %i.xd, ptr %i.gr, align 4, !tbaa !79
  br label %.backedge

.backedge:                                        ; preds = %bb.az, %bb.ay, %._crit_edge.i.i
  %.be = phi i32 [ %i.xf, %bb.ay ], [ %i.xd, %bb.az ], [ %.pre.pre.i.i, %._crit_edge.i.i ]
  br label %bb.af

calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %calculate_mode_score.exit.thread213.i.i, label %.epil.preheader248

.epil.preheader248:                               ; preds = %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa, %.lr.ph174.i.i.i
  %indvars.iv196.i.i.i.epil.init = phi i64 [ 0, %.lr.ph174.i.i.i ], [ %indvars.iv.next197.i.i.i.1, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ]
  %.0116172.i.i.i.epil.init = phi i64 [ %i.ou, %.lr.ph174.i.i.i ], [ %i.pw, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i32 %i.oi to i1
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.xh = getelementptr inbounds nuw [36 x i8], ptr %i.ph, i64 %indvars.iv196.i.i.i.epil.init ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !81
  %i.xk = shl nsw i32 %i.xj, 7
  %i.xl = sext i32 %i.xk to i64
  %i.xm = add nsw i64 %.0116172.i.i.i.epil.init, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  store i32 0, ptr %i.xn, align 4, !tbaa !82
  br label %calculate_mode_score.exit.thread213.i.i

calculate_mode_score.exit.thread213.i.i:          ; preds = %bb.ar, %calculate_mode_score.exit176.i.i, %.epil.preheader248, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa, %.thread.i.i
  %.2355.i.i = phi i32 [ %.1121285.i.i, %.epil.preheader248 ], [ %.1121285.i.i, %.thread.i.i ], [ %.1121285.i.i, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %.2362.i.i, %calculate_mode_score.exit176.i.i ], [ %.2362.i.i, %bb.ar ] ; 2 uses
  %.4127353.i.i = phi i32 [ %spec.select.i.i, %.epil.preheader248 ], [ %spec.select.i.i, %.thread.i.i ], [ %spec.select.i.i, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %.2125284.i.i, %calculate_mode_score.exit176.i.i ], [ %.2125284.i.i, %bb.ar ] ; 2 uses
  %.val202.i.i.i = phi i32 [ %i.ok, %.epil.preheader248 ], [ %i.ok, %.thread.i.i ], [ %i.ok, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %i.su, %calculate_mode_score.exit176.i.i ], [ %i.su, %bb.ar ]
  %i.xo = phi i32 [ 0, %.epil.preheader248 ], [ 0, %.thread.i.i ], [ 0, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %i.st, %calculate_mode_score.exit176.i.i ], [ %i.st, %bb.ar ] ; 6 uses
  %i.xp = phi i32 [ %i.og, %.epil.preheader248 ], [ %i.og, %.thread.i.i ], [ %i.og, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %i.sx, %calculate_mode_score.exit176.i.i ], [ %i.sx, %bb.ar ]
  %.5205.i.i = phi i32 [ %.2202281.i.i, %.epil.preheader248 ], [ %.2202281.i.i, %.thread.i.i ], [ %.2202281.i.i, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ 0, %calculate_mode_score.exit176.i.i ], [ %.8208.i.i, %bb.ar ] ; 2 uses
  %.5197.i.i = phi i32 [ %.2194282.i.i, %.epil.preheader248 ], [ %.2194282.i.i, %.thread.i.i ], [ %.2194282.i.i, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ 0, %calculate_mode_score.exit176.i.i ], [ %.8.i.i, %bb.ar ] ; 2 uses
  %.1133.i.i = phi i64 [ %i.xm, %.epil.preheader248 ], [ %i.ou, %.thread.i.i ], [ %i.pw, %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa ], [ %.8.i166.i.i, %calculate_mode_score.exit176.i.i ], [ %.8.i166.i.i, %bb.ar ] ; 2 uses
  %i.xq = icmp eq i32 %.2130283.i.i, 0
  %i.xr = icmp slt i64 %.1133.i.i, %.6.i
  %or.cond334.i = select i1 %i.xq, i1 true, i1 %i.xr
  br i1 %or.cond334.i, label %bb.ba, label %bb.ce

bb.ba:                                            ; preds = %calculate_mode_score.exit.thread213.i.i
  %i.xs = load ptr, ptr %i.gv, align 8, !tbaa !49 ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 12 ; 25 uses
  %i.xu = mul nsw i32 %i.xp, %i.hy                ; 5 uses
  %i.xv = sdiv i32 %i.xu, 16                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %.not.i177.i.i = icmp eq i32 %i.xo, 0
  br i1 %.not.i177.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.xw = load i32, ptr %i.gw, align 4, !tbaa !90
  %.not197.i.i.i = icmp eq i32 %i.xw, 0
  br i1 %.not197.i.i.i, label %bb.bc, label %encode_codebook.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.xx = icmp eq i32 %.val202.i.i.i, 2           ; 3 uses
  %i.xy = select i1 %i.xx, i32 6, i32 4           ; 3 uses
  %i.xz = mul nsw i32 %i.xy, %i.xo
  %i.ya = select i1 %i.xx, i8 32, i8 36
  store i8 %i.ya, ptr %i.xt, align 1, !tbaa !67
  %i.yb = add nsw i32 %i.xz, 4                    ; 3 uses
  %i.yc = trunc i32 %i.yb to i8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 13
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xs, i64 15
  store i8 %i.yc, ptr %i.ye, align 1, !tbaa !67
  %i.yf = lshr i32 %i.yb, 8
  %i.yg = trunc i32 %i.yf to i8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xs, i64 14
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !67
  %i.yi = lshr i32 %i.yb, 16
  %i.yj = trunc i32 %i.yi to i8
  store i8 %i.yj, ptr %i.yd, align 1, !tbaa !67
  %i.yk = icmp sgt i32 %i.xo, 0
  br i1 %i.yk, label %.preheader.preheader.i.i.i.i, label %encode_codebook.exit.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.bc
  %i.yl = zext nneg i32 %i.xy to i64              ; 5 uses
  %wide.trip.count26.i.i.i.i = zext nneg i32 %i.xo to i64 ; 3 uses
  br i1 %i.xx, label %.peel.next14.i.us.i.i.i.preheader, label %.peel.next14.i.i.i.i.preheader

.peel.next14.i.i.i.i.preheader:                   ; preds = %.preheader.preheader.i.i.i.i
  %xtraiter255 = and i64 %wide.trip.count26.i.i.i.i, 1
  %i.ym = icmp eq i32 %i.xo, 1
  br i1 %i.ym, label %.peel.next14.i.i.i.i.epil.preheader, label %.peel.next14.i.i.i.i.preheader.new

.peel.next14.i.i.i.i.preheader.new:               ; preds = %.peel.next14.i.i.i.i.preheader
  %unroll_iter259 = and i64 %wide.trip.count26.i.i.i.i, 2147483646
  br label %.peel.next14.i.i.i.i

.peel.next14.i.us.i.i.i.preheader:                ; preds = %.preheader.preheader.i.i.i.i
  %xtraiter261 = and i64 %i.yl, 2                 ; 2 uses
  %i.yn = add nsw i32 %i.xy, -5
  %i.yo = icmp ult i32 %i.yn, 3
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  %lcmp.mod264 = icmp ne i64 %xtraiter261, 0
  br label %.peel.next14.i.us.i.i.i

.peel.next14.i.us.i.i.i:                          ; preds = %.peel.next14.i.us.i.i.i.preheader, %.loopexit.i.loopexit.us.i.i.i
  %indvars.iv23.i.us.i.i.i = phi i64 [ %indvars.iv.next24.i.us.i.i.i, %.loopexit.i.loopexit.us.i.i.i ], [ 0, %.peel.next14.i.us.i.i.i.preheader ] ; 2 uses
  %.34.i.us.i.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.i.lcssa, %.loopexit.i.loopexit.us.i.i.i ], [ 4, %.peel.next14.i.us.i.i.i.preheader ] ; 2 uses
  %i.yp = mul nuw nsw i64 %indvars.iv23.i.us.i.i.i, %i.yl
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.yp ; 9 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !53
  %i.ys = trunc i32 %i.yr to i8
  %i.yt = getelementptr inbounds i8, ptr %i.xt, i64 %.34.i.us.i.i.i ; 4 uses
  store i8 %i.ys, ptr %i.yt, align 1, !tbaa !67
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !53
  %i.yw = trunc i32 %i.yv to i8
  %i.yx = getelementptr i8, ptr %i.yt, i64 1
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !67
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !53
  %i.za = trunc i32 %i.yz to i8
  %i.zb = getelementptr i8, ptr %i.yt, i64 2
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !67
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yq, i64 12
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !53
  %i.ze = trunc i32 %i.zd to i8
  %indvars.iv.next.peel19.i.us.i.i.i = add nsw i64 %.34.i.us.i.i.i, 4 ; 2 uses
  %i.zf = getelementptr i8, ptr %i.yt, i64 3
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !67
  br i1 %i.yo, label %.peel.next18.i.us.i.i.i.epil.preheader, label %.peel.next18.i.us.i.i.i

.peel.next18.i.us.i.i.i:                          ; preds = %.peel.next14.i.us.i.i.i, %.peel.next18.i.us.i.i.i
  %indvars.iv5.i.us.i.i.i = phi i64 [ %indvars.iv.next6.i.us.i.i.i.3, %.peel.next18.i.us.i.i.i ], [ 4, %.peel.next14.i.us.i.i.i ] ; 5 uses
  %indvars.iv.i.us.i.i.i.a = phi i64 [ %indvars.iv.next.i.us.i.i.i.3, %.peel.next18.i.us.i.i.i ], [ %indvars.iv.next.peel19.i.us.i.i.i, %.peel.next14.i.us.i.i.i ] ; 5 uses
  %niter266 = phi i64 [ %niter266.next.3, %.peel.next18.i.us.i.i.i ], [ 0, %.peel.next14.i.us.i.i.i ]
  %gep.i.us.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv5.i.us.i.i.i
  %i.zg = load i32, ptr %gep.i.us.i.i.i, align 4, !tbaa !53
  %i.zh = trunc i32 %i.zg to i8
  %i.zi = xor i8 %i.zh, -128
  %i.zj = getelementptr inbounds i8, ptr %i.xt, i64 %indvars.iv.i.us.i.i.i.a
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !67
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv5.i.us.i.i.i
  %gep.i.us.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.zl = load i32, ptr %gep.i.us.i.i.i.1, align 4, !tbaa !53
  %i.zm = trunc i32 %i.zl to i8
  %i.zn = xor i8 %i.zm, -128
  %i.zo = getelementptr i8, ptr %i.xt, i64 %indvars.iv.i.us.i.i.i.a
  %i.zp = getelementptr i8, ptr %i.zo, i64 1
  store i8 %i.zn, ptr %i.zp, align 1, !tbaa !67
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv5.i.us.i.i.i
  %gep.i.us.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zr = load i32, ptr %gep.i.us.i.i.i.2, align 4, !tbaa !53
  %i.zs = trunc i32 %i.zr to i8
  %i.zt = xor i8 %i.zs, -128
  %i.zu = getelementptr i8, ptr %i.xt, i64 %indvars.iv.i.us.i.i.i.a
  %i.zv = getelementptr i8, ptr %i.zu, i64 2
  store i8 %i.zt, ptr %i.zv, align 1, !tbaa !67
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv5.i.us.i.i.i
  %gep.i.us.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.zw, i64 12
  %i.zx = load i32, ptr %gep.i.us.i.i.i.3, align 4, !tbaa !53
  %i.zy = trunc i32 %i.zx to i8
  %i.zz = xor i8 %i.zy, -128
  %indvars.iv.next.i.us.i.i.i.3 = add nsw i64 %indvars.iv.i.us.i.i.i.a, 4 ; 3 uses
  %i.aaa = getelementptr i8, ptr %i.xt, i64 %indvars.iv.i.us.i.i.i.a
  %i.aab = getelementptr i8, ptr %i.aaa, i64 3
  store i8 %i.zz, ptr %i.aab, align 1, !tbaa !67
  %indvars.iv.next6.i.us.i.i.i.3 = add nuw nsw i64 %indvars.iv5.i.us.i.i.i, 4 ; 2 uses
  %niter266.next.3 = add i64 %niter266, 4         ; 2 uses
  %niter266.ncmp.3 = icmp eq i64 %niter266.next.3, 0
  br i1 %niter266.ncmp.3, label %.loopexit.i.loopexit.us.i.i.i.unr-lcssa, label %.peel.next18.i.us.i.i.i, !llvm.loop !91

.loopexit.i.loopexit.us.i.i.i.unr-lcssa:          ; preds = %.peel.next18.i.us.i.i.i
  br i1 %lcmp.mod262.not, label %.loopexit.i.loopexit.us.i.i.i, label %.peel.next18.i.us.i.i.i.epil.preheader

.peel.next18.i.us.i.i.i.epil.preheader:           ; preds = %.loopexit.i.loopexit.us.i.i.i.unr-lcssa, %.peel.next14.i.us.i.i.i
  %indvars.iv5.i.us.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i.us.i.i.i ], [ %indvars.iv.next6.i.us.i.i.i.3, %.loopexit.i.loopexit.us.i.i.i.unr-lcssa ]
  %indvars.iv.i.us.i.i.i.epil.init = phi i64 [ %indvars.iv.next.peel19.i.us.i.i.i, %.peel.next14.i.us.i.i.i ], [ %indvars.iv.next.i.us.i.i.i.3, %.loopexit.i.loopexit.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod264)
  br label %.peel.next18.i.us.i.i.i.epil

.peel.next18.i.us.i.i.i.epil:                     ; preds = %.peel.next18.i.us.i.i.i.epil, %.peel.next18.i.us.i.i.i.epil.preheader
  %indvars.iv5.i.us.i.i.i.epil = phi i64 [ %indvars.iv.next6.i.us.i.i.i.epil, %.peel.next18.i.us.i.i.i.epil ], [ %indvars.iv5.i.us.i.i.i.epil.init, %.peel.next18.i.us.i.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.i.us.i.i.i.epil = phi i64 [ %indvars.iv.next.i.us.i.i.i.epil, %.peel.next18.i.us.i.i.i.epil ], [ %indvars.iv.i.us.i.i.i.epil.init, %.peel.next18.i.us.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.peel.next18.i.us.i.i.i.epil ], [ 0, %.peel.next18.i.us.i.i.i.epil.preheader ]
  %gep.i.us.i.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv5.i.us.i.i.i.epil
  %i.aac = load i32, ptr %gep.i.us.i.i.i.epil, align 4, !tbaa !53
  %i.aad = trunc i32 %i.aac to i8
  %i.aae = xor i8 %i.aad, -128
  %indvars.iv.next.i.us.i.i.i.epil = add nsw i64 %indvars.iv.i.us.i.i.i.epil, 1 ; 2 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.xt, i64 %indvars.iv.i.us.i.i.i.epil
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !67
  %indvars.iv.next6.i.us.i.i.i.epil = add nuw nsw i64 %indvars.iv5.i.us.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.loopexit.i.loopexit.us.i.i.i, label %.peel.next18.i.us.i.i.i.epil, !llvm.loop !93

.loopexit.i.loopexit.us.i.i.i:                    ; preds = %.peel.next18.i.us.i.i.i.epil, %.loopexit.i.loopexit.us.i.i.i.unr-lcssa
  %indvars.iv.next.i.us.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.us.i.i.i.3, %.loopexit.i.loopexit.us.i.i.i.unr-lcssa ], [ %indvars.iv.next.i.us.i.i.i.epil, %.peel.next18.i.us.i.i.i.epil ] ; 2 uses
  %indvars.iv.next24.i.us.i.i.i = add nuw nsw i64 %indvars.iv23.i.us.i.i.i, 1 ; 2 uses
  %exitcond27.not.i.us.i.i.i = icmp eq i64 %indvars.iv.next24.i.us.i.i.i, %wide.trip.count26.i.i.i.i
  br i1 %exitcond27.not.i.us.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.peel.next14.i.us.i.i.i, !llvm.loop !95

.peel.next14.i.i.i.i:                             ; preds = %.peel.next14.i.i.i.i, %.peel.next14.i.i.i.i.preheader.new
  %indvars.iv23.i.i.i.i = phi i64 [ 0, %.peel.next14.i.i.i.i.preheader.new ], [ %indvars.iv.next24.i.i.i.i.1, %.peel.next14.i.i.i.i ] ; 3 uses
  %.34.i.i.i.i = phi i64 [ 4, %.peel.next14.i.i.i.i.preheader.new ], [ %indvars.iv.next.peel19.i.i.i.i.1, %.peel.next14.i.i.i.i ] ; 3 uses
  %niter260 = phi i64 [ 0, %.peel.next14.i.i.i.i.preheader.new ], [ %niter260.next.1, %.peel.next14.i.i.i.i ]
  %i.aag = mul nuw nsw i64 %indvars.iv23.i.i.i.i, %i.yl
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.aag ; 4 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !53
  %i.aaj = trunc i32 %i.aai to i8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.34.i.i.i.i ; 4 uses
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !67
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !53
  %i.aan = trunc i32 %i.aam to i8
  %i.aao = getelementptr i8, ptr %i.aak, i64 1
  store i8 %i.aan, ptr %i.aao, align 1, !tbaa !67
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !53
  %i.aar = trunc i32 %i.aaq to i8
  %i.aas = getelementptr i8, ptr %i.aak, i64 2
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !67
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aah, i64 12
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !53
  %i.aav = trunc i32 %i.aau to i8
  %i.aaw = getelementptr i8, ptr %i.aak, i64 3
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !67
  %indvars.iv.next24.i.i.i.i = or disjoint i64 %indvars.iv23.i.i.i.i, 1
  %i.aax = mul nuw nsw i64 %indvars.iv.next24.i.i.i.i, %i.yl
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.aax ; 4 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !53
  %i.aba = trunc i32 %i.aaz to i8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.34.i.i.i.i ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  store i8 %i.aba, ptr %i.abc, align 1, !tbaa !67
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !53
  %i.abf = trunc i32 %i.abe to i8
  %i.abg = getelementptr i8, ptr %i.abb, i64 5
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !67
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !53
  %i.abj = trunc i32 %i.abi to i8
  %i.abk = getelementptr i8, ptr %i.abb, i64 6
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !67
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 12
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !53
  %i.abn = trunc i32 %i.abm to i8
  %indvars.iv.next.peel19.i.i.i.i.1 = add nuw nsw i64 %.34.i.i.i.i, 8 ; 3 uses
  %i.abo = getelementptr i8, ptr %i.abb, i64 7
  store i8 %i.abn, ptr %i.abo, align 1, !tbaa !67
  %indvars.iv.next24.i.i.i.i.1 = add nuw nsw i64 %indvars.iv23.i.i.i.i, 2 ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa, label %.peel.next14.i.i.i.i, !llvm.loop !95

._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa: ; preds = %.peel.next14.i.i.i.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %._crit_edge.loopexit.i.i.i.i, label %.peel.next14.i.i.i.i.epil.preheader

.peel.next14.i.i.i.i.epil.preheader:              ; preds = %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa, %.peel.next14.i.i.i.i.preheader
  %indvars.iv23.i.i.i.i.epil.init = phi i64 [ 0, %.peel.next14.i.i.i.i.preheader ], [ %indvars.iv.next24.i.i.i.i.1, %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa ]
  %.34.i.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i.i.i.i.preheader ], [ %indvars.iv.next.peel19.i.i.i.i.1, %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa ] ; 2 uses
  %lcmp.mod258 = trunc i32 %i.xo to i1
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.abp = mul nuw nsw i64 %indvars.iv23.i.i.i.i.epil.init, %i.yl
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.abp ; 4 uses
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !53
  %i.abs = trunc i32 %i.abr to i8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.34.i.i.i.i.epil.init ; 4 uses
  store i8 %i.abs, ptr %i.abt, align 1, !tbaa !67
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !53
  %i.abw = trunc i32 %i.abv to i8
  %i.abx = getelementptr i8, ptr %i.abt, i64 1
  store i8 %i.abw, ptr %i.abx, align 1, !tbaa !67
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !53
  %i.aca = trunc i32 %i.abz to i8
  %i.acb = getelementptr i8, ptr %i.abt, i64 2
  store i8 %i.aca, ptr %i.acb, align 1, !tbaa !67
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !53
  %i.ace = trunc i32 %i.acd to i8
  %indvars.iv.next.peel19.i.i.i.i.epil = add nuw nsw i64 %.34.i.i.i.i.epil.init, 4
  %i.acf = getelementptr i8, ptr %i.abt, i64 3
  store i8 %i.ace, ptr %i.acf, align 1, !tbaa !67
  br label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.peel.next14.i.i.i.i.epil.preheader, %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa, %.loopexit.i.loopexit.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.i.lcssa, %.loopexit.i.loopexit.us.i.i.i ], [ %indvars.iv.next.peel19.i.i.i.i.1, %._crit_edge.loopexit.i.i.i.i.loopexit204.unr-lcssa ], [ %indvars.iv.next.peel19.i.i.i.i.epil, %.peel.next14.i.i.i.i.epil.preheader ]
  %i.acg = trunc nsw i64 %.us-phi.i.i.i to i32
  br label %encode_codebook.exit.i.i.i

encode_codebook.exit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.bc, %bb.bb
  %.0165.i.i.i = phi i32 [ 0, %bb.bb ], [ 4, %bb.bc ], [ %i.acg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.ach = load i32, ptr %i.gs, align 4, !tbaa !77 ; 6 uses
  %.not198.i.i.i = icmp eq i32 %i.ach, 0
  br i1 %.not198.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %encode_codebook.exit.i.i.i
  %i.aci = load i32, ptr %i.gw, align 4, !tbaa !90
  %.not199.i.i.i = icmp eq i32 %i.aci, 0
  br i1 %.not199.i.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %encode_codebook.exit.i.i.i
  %i.acj = sext i32 %.0165.i.i.i to i64
  %i.ack = getelementptr inbounds i8, ptr %i.xt, i64 %i.acj ; 13 uses
  %.val.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.acl = icmp eq i32 %.val.i.i.i, 2             ; 3 uses
  %i.acm = select i1 %i.acl, i32 6, i32 4         ; 3 uses
  %i.acn = mul nsw i32 %i.acm, %i.ach
  %i.aco = select i1 %i.acl, i8 34, i8 38
  store i8 %i.aco, ptr %i.ack, align 1, !tbaa !67
  %i.acp = add nsw i32 %i.acn, 4                  ; 3 uses
  %i.acq = trunc i32 %i.acp to i8
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ack, i64 3
  store i8 %i.acq, ptr %i.acs, align 1, !tbaa !67
  %i.act = lshr i32 %i.acp, 8
  %i.acu = trunc i32 %i.act to i8
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ack, i64 2
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !67
  %i.acw = lshr i32 %i.acp, 16
  %i.acx = trunc i32 %i.acw to i8
  store i8 %i.acx, ptr %i.acr, align 1, !tbaa !67
  %i.acy = icmp sgt i32 %i.ach, 0
  br i1 %i.acy, label %.preheader.preheader.i205.i.i.i, label %encode_codebook.exit224.i.i.i

.preheader.preheader.i205.i.i.i:                  ; preds = %bb.be
  %i.acz = zext nneg i32 %i.acm to i64            ; 5 uses
  %wide.trip.count26.i206.i.i.i = zext nneg i32 %i.ach to i64 ; 3 uses
  br i1 %i.acl, label %.peel.next14.i207.us.i.i.i.preheader, label %.peel.next14.i207.i.i.i.preheader

.peel.next14.i207.i.i.i.preheader:                ; preds = %.preheader.preheader.i205.i.i.i
  %xtraiter267 = and i64 %wide.trip.count26.i206.i.i.i, 1
  %i.ada = icmp eq i32 %i.ach, 1
  br i1 %i.ada, label %.peel.next14.i207.i.i.i.epil.preheader, label %.peel.next14.i207.i.i.i.preheader.new

.peel.next14.i207.i.i.i.preheader.new:            ; preds = %.peel.next14.i207.i.i.i.preheader
  %unroll_iter272 = and i64 %wide.trip.count26.i206.i.i.i, 2147483646
  br label %.peel.next14.i207.i.i.i

.peel.next14.i207.us.i.i.i.preheader:             ; preds = %.preheader.preheader.i205.i.i.i
  %xtraiter274 = and i64 %i.acz, 2                ; 2 uses
  %i.adb = add nsw i32 %i.acm, -5
  %i.adc = icmp ult i32 %i.adb, 3
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  %lcmp.mod278 = icmp ne i64 %xtraiter274, 0
  br label %.peel.next14.i207.us.i.i.i

.peel.next14.i207.us.i.i.i:                       ; preds = %.peel.next14.i207.us.i.i.i.preheader, %.loopexit.i211.loopexit.us.i.i.i
  %indvars.iv23.i208.us.i.i.i = phi i64 [ %indvars.iv.next24.i213.us.i.i.i, %.loopexit.i211.loopexit.us.i.i.i ], [ 0, %.peel.next14.i207.us.i.i.i.preheader ] ; 2 uses
  %.34.i209.us.i.i.i = phi i64 [ %indvars.iv.next.i221.us.i.i.i.lcssa, %.loopexit.i211.loopexit.us.i.i.i ], [ 4, %.peel.next14.i207.us.i.i.i.preheader ] ; 2 uses
  %i.add = mul nuw nsw i64 %indvars.iv23.i208.us.i.i.i, %i.acz
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.add ; 9 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !53
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = getelementptr inbounds i8, ptr %i.ack, i64 %.34.i209.us.i.i.i ; 4 uses
  store i8 %i.adg, ptr %i.adh, align 1, !tbaa !67
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !53
  %i.adk = trunc i32 %i.adj to i8
  %i.adl = getelementptr i8, ptr %i.adh, i64 1
  store i8 %i.adk, ptr %i.adl, align 1, !tbaa !67
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !53
  %i.ado = trunc i32 %i.adn to i8
  %i.adp = getelementptr i8, ptr %i.adh, i64 2
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !67
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ade, i64 12
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !53
  %i.ads = trunc i32 %i.adr to i8
  %indvars.iv.next.peel19.i210.us.i.i.i = add nsw i64 %.34.i209.us.i.i.i, 4 ; 2 uses
  %i.adt = getelementptr i8, ptr %i.adh, i64 3
  store i8 %i.ads, ptr %i.adt, align 1, !tbaa !67
  br i1 %i.adc, label %.peel.next18.i216.us.i.i.i.epil.preheader, label %.peel.next18.i216.us.i.i.i

.peel.next18.i216.us.i.i.i:                       ; preds = %.peel.next14.i207.us.i.i.i, %.peel.next18.i216.us.i.i.i
  %indvars.iv5.i218.us.i.i.i = phi i64 [ %indvars.iv.next6.i222.us.i.i.i.3, %.peel.next18.i216.us.i.i.i ], [ 4, %.peel.next14.i207.us.i.i.i ] ; 5 uses
  %indvars.iv.i219.us.i.i.i.a = phi i64 [ %indvars.iv.next.i221.us.i.i.i.3, %.peel.next18.i216.us.i.i.i ], [ %indvars.iv.next.peel19.i210.us.i.i.i, %.peel.next14.i207.us.i.i.i ] ; 5 uses
  %niter280 = phi i64 [ %niter280.next.3, %.peel.next18.i216.us.i.i.i ], [ 0, %.peel.next14.i207.us.i.i.i ]
  %gep.i220.us.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %i.adu = load i32, ptr %gep.i220.us.i.i.i, align 4, !tbaa !53
  %i.adv = trunc i32 %i.adu to i8
  %i.adw = xor i8 %i.adv, -128
  %i.adx = getelementptr inbounds i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.a
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !67
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.adz = load i32, ptr %gep.i220.us.i.i.i.1, align 4, !tbaa !53
  %i.aea = trunc i32 %i.adz to i8
  %i.aeb = xor i8 %i.aea, -128
  %i.aec = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.a
  %i.aed = getelementptr i8, ptr %i.aec, i64 1
  store i8 %i.aeb, ptr %i.aed, align 1, !tbaa !67
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aef = load i32, ptr %gep.i220.us.i.i.i.2, align 4, !tbaa !53
  %i.aeg = trunc i32 %i.aef to i8
  %i.aeh = xor i8 %i.aeg, -128
  %i.aei = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.a
  %i.aej = getelementptr i8, ptr %i.aei, i64 2
  store i8 %i.aeh, ptr %i.aej, align 1, !tbaa !67
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.aek, i64 12
  %i.ael = load i32, ptr %gep.i220.us.i.i.i.3, align 4, !tbaa !53
  %i.aem = trunc i32 %i.ael to i8
  %i.aen = xor i8 %i.aem, -128
  %indvars.iv.next.i221.us.i.i.i.3 = add nsw i64 %indvars.iv.i219.us.i.i.i.a, 4 ; 3 uses
  %i.aeo = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.a
  %i.aep = getelementptr i8, ptr %i.aeo, i64 3
  store i8 %i.aen, ptr %i.aep, align 1, !tbaa !67
  %indvars.iv.next6.i222.us.i.i.i.3 = add nuw nsw i64 %indvars.iv5.i218.us.i.i.i, 4 ; 2 uses
  %niter280.next.3 = add i64 %niter280, 4         ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, 0
  br i1 %niter280.ncmp.3, label %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa, label %.peel.next18.i216.us.i.i.i, !llvm.loop !91

.loopexit.i211.loopexit.us.i.i.i.unr-lcssa:       ; preds = %.peel.next18.i216.us.i.i.i
  br i1 %lcmp.mod276.not, label %.loopexit.i211.loopexit.us.i.i.i, label %.peel.next18.i216.us.i.i.i.epil.preheader

.peel.next18.i216.us.i.i.i.epil.preheader:        ; preds = %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa, %.peel.next14.i207.us.i.i.i
  %indvars.iv5.i218.us.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i207.us.i.i.i ], [ %indvars.iv.next6.i222.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ]
  %indvars.iv.i219.us.i.i.i.epil.init = phi i64 [ %indvars.iv.next.peel19.i210.us.i.i.i, %.peel.next14.i207.us.i.i.i ], [ %indvars.iv.next.i221.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod278)
  br label %.peel.next18.i216.us.i.i.i.epil

.peel.next18.i216.us.i.i.i.epil:                  ; preds = %.peel.next18.i216.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil.preheader
  %indvars.iv5.i218.us.i.i.i.epil = phi i64 [ %indvars.iv.next6.i222.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ], [ %indvars.iv5.i218.us.i.i.i.epil.init, %.peel.next18.i216.us.i.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.i219.us.i.i.i.epil = phi i64 [ %indvars.iv.next.i221.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ], [ %indvars.iv.i219.us.i.i.i.epil.init, %.peel.next18.i216.us.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter275 = phi i64 [ %epil.iter275.next, %.peel.next18.i216.us.i.i.i.epil ], [ 0, %.peel.next18.i216.us.i.i.i.epil.preheader ]
  %gep.i220.us.i.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i.epil
  %i.aeq = load i32, ptr %gep.i220.us.i.i.i.epil, align 4, !tbaa !53
  %i.aer = trunc i32 %i.aeq to i8
  %i.aes = xor i8 %i.aer, -128
  %indvars.iv.next.i221.us.i.i.i.epil = add nsw i64 %indvars.iv.i219.us.i.i.i.epil, 1 ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.epil
  store i8 %i.aes, ptr %i.aet, align 1, !tbaa !67
  %indvars.iv.next6.i222.us.i.i.i.epil = add nuw nsw i64 %indvars.iv5.i218.us.i.i.i.epil, 1
  %epil.iter275.next = add i64 %epil.iter275, 1   ; 2 uses
  %epil.iter275.cmp.not = icmp eq i64 %epil.iter275.next, 2
  br i1 %epil.iter275.cmp.not, label %.loopexit.i211.loopexit.us.i.i.i, label %.peel.next18.i216.us.i.i.i.epil, !llvm.loop !96

.loopexit.i211.loopexit.us.i.i.i:                 ; preds = %.peel.next18.i216.us.i.i.i.epil, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa
  %indvars.iv.next.i221.us.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i221.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ], [ %indvars.iv.next.i221.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ] ; 2 uses
  %indvars.iv.next24.i213.us.i.i.i = add nuw nsw i64 %indvars.iv23.i208.us.i.i.i, 1 ; 2 uses
  %exitcond27.not.i214.us.i.i.i = icmp eq i64 %indvars.iv.next24.i213.us.i.i.i, %wide.trip.count26.i206.i.i.i
  br i1 %exitcond27.not.i214.us.i.i.i, label %._crit_edge.loopexit.i215.i.i.i, label %.peel.next14.i207.us.i.i.i, !llvm.loop !95

.peel.next14.i207.i.i.i:                          ; preds = %.peel.next14.i207.i.i.i, %.peel.next14.i207.i.i.i.preheader.new
  %indvars.iv23.i208.i.i.i = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader.new ], [ %indvars.iv.next24.i213.i.i.i.1, %.peel.next14.i207.i.i.i ] ; 3 uses
  %.34.i209.i.i.i = phi i64 [ 4, %.peel.next14.i207.i.i.i.preheader.new ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %.peel.next14.i207.i.i.i ] ; 3 uses
  %niter273 = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader.new ], [ %niter273.next.1, %.peel.next14.i207.i.i.i ]
  %i.aeu = mul nuw nsw i64 %indvars.iv23.i208.i.i.i, %i.acz
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aeu ; 4 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !53
  %i.aex = trunc i32 %i.aew to i8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i ; 4 uses
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !67
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !53
  %i.afb = trunc i32 %i.afa to i8
  %i.afc = getelementptr i8, ptr %i.aey, i64 1
  store i8 %i.afb, ptr %i.afc, align 1, !tbaa !67
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !53
  %i.aff = trunc i32 %i.afe to i8
  %i.afg = getelementptr i8, ptr %i.aey, i64 2
  store i8 %i.aff, ptr %i.afg, align 1, !tbaa !67
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aev, i64 12
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !53
  %i.afj = trunc i32 %i.afi to i8
  %i.afk = getelementptr i8, ptr %i.aey, i64 3
  store i8 %i.afj, ptr %i.afk, align 1, !tbaa !67
  %indvars.iv.next24.i213.i.i.i = or disjoint i64 %indvars.iv23.i208.i.i.i, 1
  %i.afl = mul nuw nsw i64 %indvars.iv.next24.i213.i.i.i, %i.acz
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.afl ; 4 uses
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !53
  %i.afo = trunc i32 %i.afn to i8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 4
  store i8 %i.afo, ptr %i.afq, align 1, !tbaa !67
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !53
  %i.aft = trunc i32 %i.afs to i8
  %i.afu = getelementptr i8, ptr %i.afp, i64 5
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !67
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !53
  %i.afx = trunc i32 %i.afw to i8
  %i.afy = getelementptr i8, ptr %i.afp, i64 6
  store i8 %i.afx, ptr %i.afy, align 1, !tbaa !67
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !53
  %i.agb = trunc i32 %i.aga to i8
  %indvars.iv.next.peel19.i210.i.i.i.1 = add nuw nsw i64 %.34.i209.i.i.i, 8 ; 3 uses
  %i.agc = getelementptr i8, ptr %i.afp, i64 7
  store i8 %i.agb, ptr %i.agc, align 1, !tbaa !67
  %indvars.iv.next24.i213.i.i.i.1 = add nuw nsw i64 %indvars.iv23.i208.i.i.i, 2 ; 2 uses
  %niter273.next.1 = add i64 %niter273, 2         ; 2 uses
  %niter273.ncmp.1 = icmp eq i64 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa, label %.peel.next14.i207.i.i.i, !llvm.loop !95

._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa: ; preds = %.peel.next14.i207.i.i.i
  %lcmp.mod269.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod269.not, label %._crit_edge.loopexit.i215.i.i.i, label %.peel.next14.i207.i.i.i.epil.preheader

.peel.next14.i207.i.i.i.epil.preheader:           ; preds = %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa, %.peel.next14.i207.i.i.i.preheader
  %indvars.iv23.i208.i.i.i.epil.init = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader ], [ %indvars.iv.next24.i213.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa ]
  %.34.i209.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i207.i.i.i.preheader ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa ] ; 2 uses
  %lcmp.mod271 = trunc i32 %i.ach to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.agd = mul nuw nsw i64 %indvars.iv23.i208.i.i.i.epil.init, %i.acz
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agd ; 4 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !53
  %i.agg = trunc i32 %i.agf to i8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i.epil.init ; 4 uses
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !67
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !53
  %i.agk = trunc i32 %i.agj to i8
  %i.agl = getelementptr i8, ptr %i.agh, i64 1
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !67
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !53
  %i.ago = trunc i32 %i.agn to i8
  %i.agp = getelementptr i8, ptr %i.agh, i64 2
  store i8 %i.ago, ptr %i.agp, align 1, !tbaa !67
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 12
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !53
  %i.ags = trunc i32 %i.agr to i8
  %indvars.iv.next.peel19.i210.i.i.i.epil = add nuw nsw i64 %.34.i209.i.i.i.epil.init, 4
  %i.agt = getelementptr i8, ptr %i.agh, i64 3
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !67
  br label %._crit_edge.loopexit.i215.i.i.i

._crit_edge.loopexit.i215.i.i.i:                  ; preds = %.peel.next14.i207.i.i.i.epil.preheader, %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa, %.loopexit.i211.loopexit.us.i.i.i
  %.us-phi246.i.i.i = phi i64 [ %indvars.iv.next.i221.us.i.i.i.lcssa, %.loopexit.i211.loopexit.us.i.i.i ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit203.unr-lcssa ], [ %indvars.iv.next.peel19.i210.i.i.i.epil, %.peel.next14.i207.i.i.i.epil.preheader ]
  %i.agu = trunc nsw i64 %.us-phi246.i.i.i to i32
  br label %encode_codebook.exit224.i.i.i

encode_codebook.exit224.i.i.i:                    ; preds = %._crit_edge.loopexit.i215.i.i.i, %bb.be
  %.3.lcssa.i204.i.i.i = phi i32 [ 4, %bb.be ], [ %i.agu, %._crit_edge.loopexit.i215.i.i.i ]
  %i.agv = add nsw i32 %.3.lcssa.i204.i.i.i, %.0165.i.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %encode_codebook.exit224.i.i.i, %bb.bd
  %.1166.i.i.i = phi i32 [ %i.agv, %encode_codebook.exit224.i.i.i ], [ %.0165.i.i.i, %bb.bd ] ; 9 uses
  %i.agw = load i32, ptr %i.gh, align 4, !tbaa !57 ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %.preheader244.i.i.i, label %.split269.us.i.i.i

.preheader244.i.i.i:                              ; preds = %bb.bf, %._crit_edge.i186.i.i
  %indvars.iv564.i = phi i64 [ %indvars.iv.next565.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 4 uses
  %i.agy = phi i32 [ %i.ald, %._crit_edge.i186.i.i ], [ %i.agw, %bb.bf ] ; 2 uses
  %.0180267.i.i.i = phi i32 [ %.1181.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.9.0265.i.i.i = phi i32 [ %.sroa.9.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.7.0264.i.i.i = phi i32 [ %.sroa.7.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.11237.0263.i.i.i = phi ptr [ %.sroa.11237.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %.sroa.8.0262.i.i.i = phi ptr [ %.sroa.8.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %i.agz = icmp sgt i32 %i.agy, 0
  br i1 %i.agz, label %.lr.ph.i187.i.i, label %._crit_edge.i186.i.i

.lr.ph.i187.i.i:                                  ; preds = %.preheader244.i.i.i
  %i.aha = lshr exact i64 %indvars.iv564.i, 1     ; 4 uses
  %.promoted.i.i.i = load ptr, ptr %i.gy, align 8
  %.promoted260.i.i.i = load ptr, ptr %i.ha, align 16
  %i.ahb = load <2 x i32>, ptr %i.gz, align 4
  %i.ahc = sext i32 %.0180267.i.i.i to i64
  %i.ahd = mul nsw i64 %indvars.iv564.i, %i.ni
  %invariant.gep460.i = getelementptr i8, ptr %i.li, i64 %i.ahd
  %i.ahe = mul nsw i64 %i.aha, %i.nw
  %invariant.gep462.i = getelementptr i8, ptr %.sroa.6243.8.i, i64 %i.ahe
  %i.ahf = mul nsw i64 %i.aha, %i.ny
  %invariant.gep464.i = getelementptr i8, ptr %.sroa.10.8.i, i64 %i.ahf
  %i.ahg = mul nsw i64 %indvars.iv564.i, %i.nj
  %invariant.gep466.i = getelementptr i8, ptr %i.lp, i64 %i.ahg
  %i.ahh = mul nsw i64 %i.aha, %i.nt
  %invariant.gep468.i = getelementptr i8, ptr %.sroa.5.4265.i, i64 %i.ahh
  %i.ahi = mul nsw i64 %i.aha, %i.nu
  %invariant.gep470.i = getelementptr i8, ptr %.sroa.8.4271.i, i64 %i.ahi
  br label %bb.bg

bb.bg:                                            ; preds = %copy_mb.exit.i.i.i, %.lr.ph.i187.i.i
  %indvars.iv313.i.i.i = phi i64 [ 0, %.lr.ph.i187.i.i ], [ %indvars.iv.next314.i.i.i, %copy_mb.exit.i.i.i ] ; 5 uses
  %indvars.iv.i188.i.i = phi i64 [ %i.ahc, %.lr.ph.i187.i.i ], [ %indvars.iv.next.i190.i.i, %copy_mb.exit.i.i.i ] ; 2 uses
  %i.ahj = phi ptr [ %.promoted260.i.i.i, %.lr.ph.i187.i.i ], [ %i.ahr, %copy_mb.exit.i.i.i ]
  %i.ahk = phi ptr [ %.promoted.i.i.i, %.lr.ph.i187.i.i ], [ %i.ahs, %copy_mb.exit.i.i.i ]
  %.sroa.9.1250.i.i.i = phi i32 [ %.sroa.9.0265.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.9.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.7.1249.i.i.i = phi i32 [ %.sroa.7.0264.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.7.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.11237.1248.i.i.i = phi ptr [ %.sroa.11237.0263.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.11237.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.8.1247.i.i.i = phi ptr [ %.sroa.8.0262.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.8.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %i.ahl = phi <2 x i32> [ %i.ahb, %.lr.ph.i187.i.i ], [ %i.aht, %copy_mb.exit.i.i.i ]
  %i.ahm = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.ahn = getelementptr inbounds [36 x i8], ptr %i.ahm, i64 %indvars.iv.i188.i.i ; 4 uses
  %gep461.i = getelementptr i8, ptr %invariant.gep460.i, i64 %indvars.iv313.i.i.i ; 12 uses
  store ptr %gep461.i, ptr %i.b, align 16, !tbaa !48
  store i32 %i.lj, ptr %i.c, align 16, !tbaa !53
  %i.aho = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.ahp = icmp eq i32 %i.aho, 2                  ; 3 uses
  br i1 %i.ahp, label %bb.bh, label %get_sub_picture.exit.i189.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ahq = lshr exact i64 %indvars.iv313.i.i.i, 1 ; 2 uses
  %gep463.i = getelementptr i8, ptr %invariant.gep462.i, i64 %i.ahq ; 2 uses
  store ptr %gep463.i, ptr %i.gy, align 8, !tbaa !48
  %gep465.i = getelementptr i8, ptr %invariant.gep464.i, i64 %i.ahq ; 2 uses
  store ptr %gep465.i, ptr %i.ha, align 16, !tbaa !48
  store <2 x i32> %i.lq, ptr %i.gz, align 4, !tbaa !53
  br label %get_sub_picture.exit.i189.i.i

get_sub_picture.exit.i189.i.i:                    ; preds = %bb.bh, %bb.bg
  %i.ahr = phi ptr [ %i.ahj, %bb.bg ], [ %gep465.i, %bb.bh ] ; 6 uses
  %i.ahs = phi ptr [ %i.ahk, %bb.bg ], [ %gep463.i, %bb.bh ] ; 6 uses
  %i.aht = phi <2 x i32> [ %i.ahl, %bb.bg ], [ %i.lq, %bb.bh ] ; 5 uses
  %i.ahu = load i32, ptr %i.gt, align 4, !tbaa !80
  switch i32 %i.ahu, label %get_sub_picture.exit..thread_crit_edge.i.i.i [
    i32 2, label %bb.bi
    i32 0, label %bb.bl
  ]

get_sub_picture.exit..thread_crit_edge.i.i.i:     ; preds = %get_sub_picture.exit.i189.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahn, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !82
  br label %.thread.i.i.i

bb.bi:                                            ; preds = %get_sub_picture.exit.i189.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 32
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !82 ; 2 uses
  %i.ahx = icmp eq i32 %i.ahw, 2
  br i1 %i.ahx, label %bb.bj, label %.thread.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %gep467.i = getelementptr i8, ptr %invariant.gep466.i, i64 %indvars.iv313.i.i.i ; 4 uses
  br i1 %i.ahp, label %bb.bk, label %get_sub_picture.exit225.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ahy = lshr exact i64 %indvars.iv313.i.i.i, 1 ; 2 uses
  %gep469.i = getelementptr i8, ptr %invariant.gep468.i, i64 %i.ahy
  %gep471.i = getelementptr i8, ptr %invariant.gep470.i, i64 %i.ahy
  br label %get_sub_picture.exit225.i.i.i

get_sub_picture.exit225.i.i.i:                    ; preds = %bb.bk, %bb.bj
  %.sroa.8.3.i.i.i = phi ptr [ %gep469.i, %bb.bk ], [ %.sroa.8.1247.i.i.i, %bb.bj ] ; 4 uses
  %.sroa.11237.3.i.i.i = phi ptr [ %gep471.i, %bb.bk ], [ %.sroa.11237.1248.i.i.i, %bb.bj ] ; 4 uses
  %.sroa.7.3.i.i.i = phi i32 [ %.sroa.6236.4269.i, %bb.bk ], [ %.sroa.7.1249.i.i.i, %bb.bj ] ; 3 uses
  %.sroa.9.3.i.i.i = phi i32 [ %.sroa.9238.4267.i, %bb.bk ], [ %.sroa.9.1250.i.i.i, %bb.bj ] ; 3 uses
  %i.ahz = load i32, ptr %gep467.i, align 1
  store i32 %i.ahz, ptr %gep461.i, align 1
  %i.aia = getelementptr inbounds i8, ptr %gep461.i, i64 %i.ni
  %i.aib = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nj
  %i.aic = load i32, ptr %i.aib, align 1
  store i32 %i.aic, ptr %i.aia, align 1
  %i.aid = getelementptr inbounds i8, ptr %gep461.i, i64 %i.nl
  %i.aie = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nn
  %i.aif = load i32, ptr %i.aie, align 1
  store i32 %i.aif, ptr %i.aid, align 1
  %i.aig = getelementptr inbounds i8, ptr %gep461.i, i64 %i.np
  %i.aih = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nr
  %i.aii = load i32, ptr %i.aih, align 1
  store i32 %i.aii, ptr %i.aig, align 1
  %i.aij = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.aik = icmp eq i32 %i.aij, 2
  br i1 %i.aik, label %.preheader.preheader.i227.i.i.i, label %copy_mb.exit.i.i.i

.preheader.preheader.i227.i.i.i:                  ; preds = %get_sub_picture.exit225.i.i.i
  %i.ail = load i16, ptr %.sroa.8.3.i.i.i, align 1
  store i16 %i.ail, ptr %i.ahs, align 1
  %i.aim = extractelement <2 x i32> %i.aht, i64 0
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds i8, ptr %i.ahs, i64 %i.ain
  %i.aip = sext i32 %.sroa.7.3.i.i.i to i64
  %i.aiq = getelementptr inbounds i8, ptr %.sroa.8.3.i.i.i, i64 %i.aip
  %i.air = load i16, ptr %i.aiq, align 1
  store i16 %i.air, ptr %i.aio, align 1
  %i.ais = load i16, ptr %.sroa.11237.3.i.i.i, align 1
  store i16 %i.ais, ptr %i.ahr, align 1
  %i.ait = extractelement <2 x i32> %i.aht, i64 1
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds i8, ptr %i.ahr, i64 %i.aiu
  %i.aiw = sext i32 %.sroa.9.3.i.i.i to i64
  %i.aix = getelementptr inbounds i8, ptr %.sroa.11237.3.i.i.i, i64 %i.aiw
  %i.aiy = load i16, ptr %i.aix, align 1
  store i16 %i.aiy, ptr %i.aiv, align 1
  br label %copy_mb.exit.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bi, %get_sub_picture.exit..thread_crit_edge.i.i.i
  %i.aiz = phi i32 [ %.pre.i.i.i, %get_sub_picture.exit..thread_crit_edge.i.i.i ], [ %i.ahw, %bb.bi ]
  %i.aja = icmp eq i32 %i.aiz, 0
  br i1 %i.aja, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread.i.i.i, %get_sub_picture.exit.i189.i.i
  %i.ajb = load i32, ptr %i.ahn, align 4, !tbaa !97
  %i.ajc = select i1 %i.ahp, i32 6, i32 4
  %i.ajd = mul nsw i32 %i.ajb, %i.ajc
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aje ; 6 uses
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !53
  %i.ajh = trunc i32 %i.ajg to i8                 ; 4 uses
  %i.aji = getelementptr i8, ptr %gep461.i, i64 %i.ni ; 4 uses
  %i.ajj = getelementptr i8, ptr %i.aji, i64 1
  store i8 %i.ajh, ptr %i.ajj, align 1, !tbaa !67
  store i8 %i.ajh, ptr %i.aji, align 1, !tbaa !67
  %i.ajk = getelementptr inbounds nuw i8, ptr %gep461.i, i64 1
  store i8 %i.ajh, ptr %i.ajk, align 1, !tbaa !67
  store i8 %i.ajh, ptr %gep461.i, align 1, !tbaa !67
  %i.ajl = getelementptr i8, ptr %i.ajf, i64 4
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !53
  %i.ajn = trunc i32 %i.ajm to i8                 ; 4 uses
  %i.ajo = getelementptr i8, ptr %i.aji, i64 3
  store i8 %i.ajn, ptr %i.ajo, align 1, !tbaa !67
  %i.ajp = getelementptr i8, ptr %i.aji, i64 2
  store i8 %i.ajn, ptr %i.ajp, align 1, !tbaa !67
  %i.ajq = getelementptr inbounds nuw i8, ptr %gep461.i, i64 3
  store i8 %i.ajn, ptr %i.ajq, align 1, !tbaa !67
  %i.ajr = getelementptr inbounds nuw i8, ptr %gep461.i, i64 2
  store i8 %i.ajn, ptr %i.ajr, align 1, !tbaa !67
  %i.ajs = getelementptr i8, ptr %i.ajf, i64 8
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !53
  %i.aju = trunc i32 %i.ajt to i8                 ; 4 uses
  %i.ajv = getelementptr i8, ptr %gep461.i, i64 %i.np ; 4 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 1
  store i8 %i.aju, ptr %i.ajw, align 1, !tbaa !67
  store i8 %i.aju, ptr %i.ajv, align 1, !tbaa !67
  %i.ajx = getelementptr i8, ptr %gep461.i, i64 %i.nl ; 4 uses
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 1
  store i8 %i.aju, ptr %i.ajy, align 1, !tbaa !67
  store i8 %i.aju, ptr %i.ajx, align 1, !tbaa !67
  %i.ajz = getelementptr i8, ptr %i.ajf, i64 12
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !53
  %i.akb = trunc i32 %i.aka to i8                 ; 4 uses
  %i.akc = getelementptr i8, ptr %i.ajv, i64 3
  store i8 %i.akb, ptr %i.akc, align 1, !tbaa !67
  %i.akd = getelementptr i8, ptr %i.ajv, i64 2
  store i8 %i.akb, ptr %i.akd, align 1, !tbaa !67
  %i.ake = getelementptr i8, ptr %i.ajx, i64 3
  store i8 %i.akb, ptr %i.ake, align 1, !tbaa !67
  %i.akf = getelementptr i8, ptr %i.ajx, i64 2
  store i8 %i.akb, ptr %i.akf, align 1, !tbaa !67
  %i.akg = load i32, ptr %i.ac, align 8, !tbaa !56
  %i.akh = icmp eq i32 %i.akg, 2
  br i1 %i.akh, label %bb.bm, label %copy_mb.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.aki = getelementptr i8, ptr %i.ajf, i64 16
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !53
  %i.akk = trunc i32 %i.akj to i8                 ; 4 uses
  %i.akl = extractelement <2 x i32> %i.aht, i64 0
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr i8, ptr %i.ahs, i64 %i.akm ; 2 uses
  %i.ako = getelementptr i8, ptr %i.akn, i64 1
  store i8 %i.akk, ptr %i.ako, align 1, !tbaa !67
  store i8 %i.akk, ptr %i.akn, align 1, !tbaa !67
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1
  store i8 %i.akk, ptr %i.akp, align 1, !tbaa !67
  store i8 %i.akk, ptr %i.ahs, align 1, !tbaa !67
  %i.akq = getelementptr i8, ptr %i.ajf, i64 20
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !53
  %i.aks = trunc i32 %i.akr to i8                 ; 4 uses
  %i.akt = extractelement <2 x i32> %i.aht, i64 1
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr i8, ptr %i.ahr, i64 %i.aku ; 2 uses
  %i.akw = getelementptr i8, ptr %i.akv, i64 1
  store i8 %i.aks, ptr %i.akw, align 1, !tbaa !67
  store i8 %i.aks, ptr %i.akv, align 1, !tbaa !67
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1
  store i8 %i.aks, ptr %i.akx, align 1, !tbaa !67
  store i8 %i.aks, ptr %i.ahr, align 1, !tbaa !67
  br label %copy_mb.exit.i.i.i

bb.bn:                                            ; preds = %.thread.i.i.i
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  call fastcc void @decode_v4_vector(ptr noundef nonnull readonly %i.m, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %i.aky, ptr noundef nonnull readonly %4)
  br label %copy_mb.exit.i.i.i

copy_mb.exit.i.i.i:                               ; preds = %bb.bn, %bb.bm, %bb.bl, %.preheader.preheader.i227.i.i.i, %get_sub_picture.exit225.i.i.i
  %.sroa.8.2.i.i.i = phi ptr [ %.sroa.8.1247.i.i.i, %bb.bn ], [ %.sroa.8.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.8.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.8.1247.i.i.i, %bb.bl ], [ %.sroa.8.1247.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.11237.2.i.i.i = phi ptr [ %.sroa.11237.1248.i.i.i, %bb.bn ], [ %.sroa.11237.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.11237.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.11237.1248.i.i.i, %bb.bl ], [ %.sroa.11237.1248.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.7.2.i.i.i = phi i32 [ %.sroa.7.1249.i.i.i, %bb.bn ], [ %.sroa.7.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.7.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.7.1249.i.i.i, %bb.bl ], [ %.sroa.7.1249.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.9.2.i.i.i = phi i32 [ %.sroa.9.1250.i.i.i, %bb.bn ], [ %.sroa.9.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.9.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.9.1250.i.i.i, %bb.bl ], [ %.sroa.9.1250.i.i.i, %bb.bm ] ; 2 uses
  %indvars.iv.next314.i.i.i = add nuw nsw i64 %indvars.iv313.i.i.i, 4 ; 2 uses
  %indvars.iv.next.i190.i.i = add nsw i64 %indvars.iv.i188.i.i, 1 ; 2 uses
  %i.akz = load i32, ptr %i.gh, align 4, !tbaa !57 ; 2 uses
  %i.ala = sext i32 %i.akz to i64
  %i.alb = icmp slt i64 %indvars.iv.next314.i.i.i, %i.ala
  br i1 %i.alb, label %bb.bg, label %._crit_edge.loopexit.i.i.i, !llvm.loop !98

._crit_edge.loopexit.i.i.i:                       ; preds = %copy_mb.exit.i.i.i
  %i.alc = trunc nsw i64 %indvars.iv.next.i190.i.i to i32
  br label %._crit_edge.i186.i.i

._crit_edge.i186.i.i:                             ; preds = %._crit_edge.loopexit.i.i.i, %.preheader244.i.i.i
  %i.ald = phi i32 [ %i.agy, %.preheader244.i.i.i ], [ %i.akz, %._crit_edge.loopexit.i.i.i ]
  %.sroa.8.1.lcssa.i.i.i = phi ptr [ %.sroa.8.0262.i.i.i, %.preheader244.i.i.i ], [ %.sroa.8.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.11237.1.lcssa.i.i.i = phi ptr [ %.sroa.11237.0263.i.i.i, %.preheader244.i.i.i ], [ %.sroa.11237.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.7.1.lcssa.i.i.i = phi i32 [ %.sroa.7.0264.i.i.i, %.preheader244.i.i.i ], [ %.sroa.7.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.9.1.lcssa.i.i.i = phi i32 [ %.sroa.9.0265.i.i.i, %.preheader244.i.i.i ], [ %.sroa.9.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.1181.lcssa.i.i.i = phi i32 [ %.0180267.i.i.i, %.preheader244.i.i.i ], [ %i.alc, %._crit_edge.loopexit.i.i.i ]
  %indvars.iv.next565.i = add nuw nsw i64 %indvars.iv564.i, 4 ; 2 uses
  %i.ale = icmp samesign ult i64 %indvars.iv.next565.i, %i.ns
  br i1 %i.ale, label %.preheader244.i.i.i, label %.split269.us.i.i.i, !llvm.loop !99

.split269.us.i.i.i:                               ; preds = %._crit_edge.i186.i.i, %bb.bf
  %i.alf = load i32, ptr %i.gt, align 4, !tbaa !80
  switch i32 %i.alf, label %encode_mode.exit.i.i [
    i32 0, label %bb.bo
    i32 1, label %bb.bq
    i32 2, label %bb.bt
  ]

bb.bo:                                            ; preds = %.split269.us.i.i.i
  %i.alg = sext i32 %.1166.i.i.i to i64
  %i.alh = getelementptr inbounds i8, ptr %i.xt, i64 %i.alg ; 4 uses
  store i8 50, ptr %i.alh, align 1, !tbaa !67
  %i.ali = add nsw i32 %i.xv, 4                   ; 3 uses
  %i.alj = trunc i32 %i.ali to i8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 1
  %i.all = getelementptr inbounds nuw i8, ptr %i.alh, i64 3
  store i8 %i.alj, ptr %i.all, align 1, !tbaa !67
  %i.alm = lshr i32 %i.ali, 8
  %i.aln = trunc i32 %i.alm to i8
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alh, i64 2
  store i8 %i.aln, ptr %i.alo, align 1, !tbaa !67
  %i.alp = lshr i32 %i.ali, 16
  %i.alq = trunc i32 %i.alp to i8
  store i8 %i.alq, ptr %i.alk, align 1, !tbaa !67
  %i.alr = add i32 %.1166.i.i.i, 4                ; 2 uses
  %i.als = icmp sgt i32 %i.xu, 15
  br i1 %i.als, label %.lr.ph305.i.i.i, label %encode_mode.exit.i.i

.lr.ph305.i.i.i:                                  ; preds = %bb.bo
  %i.alt = sext i32 %i.alr to i64                 ; 2 uses
  %wide.trip.count353.i.i.i = zext nneg i32 %i.xv to i64 ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count353.i.i.i, 1
  %i.alu = and i32 %i.xu, 2147483632
  %i.alv = icmp eq i32 %i.alu, 16
  br i1 %i.alv, label %.epil.preheader281, label %.lr.ph305.i.i.i.new

.lr.ph305.i.i.i.new:                              ; preds = %.lr.ph305.i.i.i
  %unroll_iter287 = and i64 %wide.trip.count353.i.i.i, 134217726
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph305.i.i.i.new
  %indvars.iv348.i.i.i = phi i64 [ 0, %.lr.ph305.i.i.i.new ], [ %indvars.iv.next349.i.i.i.1, %bb.bp ] ; 3 uses
  %indvars.iv346.i.i.i = phi i64 [ %i.alt, %.lr.ph305.i.i.i.new ], [ %indvars.iv.next347.i.i.i.1, %bb.bp ] ; 3 uses
  %niter288 = phi i64 [ 0, %.lr.ph305.i.i.i.new ], [ %niter288.next.1, %bb.bp ]
  %i.alw = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.alx = getelementptr inbounds nuw [36 x i8], ptr %i.alw, i64 %indvars.iv348.i.i.i
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !97
  %i.alz = trunc i32 %i.aly to i8
  %i.ama = getelementptr inbounds i8, ptr %i.xt, i64 %indvars.iv346.i.i.i
  store i8 %i.alz, ptr %i.ama, align 1, !tbaa !67
  %i.amb = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.amc = getelementptr inbounds nuw [36 x i8], ptr %i.amb, i64 %indvars.iv348.i.i.i
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 36
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !97
  %i.amf = trunc i32 %i.ame to i8
  %indvars.iv.next347.i.i.i.1 = add nsw i64 %indvars.iv346.i.i.i, 2 ; 3 uses
  %i.amg = getelementptr i8, ptr %i.xt, i64 %indvars.iv346.i.i.i
  %i.amh = getelementptr i8, ptr %i.amg, i64 1
  store i8 %i.amf, ptr %i.amh, align 1, !tbaa !67
  %indvars.iv.next349.i.i.i.1 = add nuw nsw i64 %indvars.iv348.i.i.i, 2 ; 2 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %.loopexit.loopexit.i.i.i.unr-lcssa, label %bb.bp, !llvm.loop !100

bb.bq:                                            ; preds = %.split269.us.i.i.i
  %i.ami = add nsw i32 %.1166.i.i.i, 4            ; 2 uses
  %i.amj = icmp sgt i32 %i.xu, 15
  br i1 %i.amj, label %.preheader241.lr.ph.i.i.i, label %._crit_edge300.i.i.i

.preheader241.lr.ph.i.i.i:                        ; preds = %bb.bq
  %i.amk = zext nneg i32 %i.xv to i64
  br label %.lr.ph286.i.i.i

.loopexit240.i.i.i:                               ; preds = %.loopexit239.i.i.i
  %i.aml = icmp samesign ult i64 %indvars.iv.next329.i.i.i, %i.amk
  br i1 %i.aml, label %.lr.ph286.i.i.i, label %._crit_edge300.i.i.i, !llvm.loop !101

.lr.ph286.i.i.i:                                  ; preds = %.loopexit240.i.i.i, %.preheader241.lr.ph.i.i.i
  %indvars.iv328.i.i.i = phi i64 [ 0, %.preheader241.lr.ph.i.i.i ], [ %indvars.iv.next329.i.i.i, %.loopexit240.i.i.i ] ; 4 uses
  %.3168299.i.i.i = phi i32 [ %i.ami, %.preheader241.lr.ph.i.i.i ], [ %.6.i.i.i, %.loopexit240.i.i.i ] ; 2 uses
  %indvars.iv.next329.i.i.i = add nuw nsw i64 %indvars.iv328.i.i.i, 32 ; 3 uses
  %i.amm = trunc nuw nsw i64 %indvars.iv.next329.i.i.i to i32
  %i.amn = call i32 @llvm.smin.i32(i32 %i.amm, i32 %i.xv)
  %i.amo = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.amp = or disjoint i64 %indvars.iv328.i.i.i, 31
  %i.amq = sext i32 %i.amn to i64                 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph286.i.i.i
  %indvars.iv330.i.i.i = phi i64 [ %indvars.iv328.i.i.i, %.lr.ph286.i.i.i ], [ %indvars.iv.next331.i.i.i, %bb.br ] ; 3 uses
  %.0285.i.i.i = phi i32 [ 0, %.lr.ph286.i.i.i ], [ %.1.i184.i.i, %bb.br ]
  %i.amr = getelementptr inbounds nuw [36 x i8], ptr %i.amo, i64 %indvars.iv330.i.i.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !82
  %i.amu = icmp eq i32 %i.amt, 1
  %i.amv = sub nsw i64 %i.amp, %indvars.iv330.i.i.i
  %i.amw = trunc nsw i64 %i.amv to i32
  %i.amx = shl nuw i32 1, %i.amw
  %i.amy = select i1 %i.amu, i32 %i.amx, i32 0
  %.1.i184.i.i = or i32 %i.amy, %.0285.i.i.i      ; 2 uses
  %indvars.iv.next331.i.i.i = add nuw nsw i64 %indvars.iv330.i.i.i, 1 ; 2 uses
  %i.amz = icmp slt i64 %indvars.iv.next331.i.i.i, %i.amq
  br i1 %i.amz, label %bb.br, label %.lr.ph296.preheader.i.i.i, !llvm.loop !102

.lr.ph296.preheader.i.i.i:                        ; preds = %bb.br
  %i.ana = call i32 @llvm.bswap.i32(i32 %.1.i184.i.i)
  %i.anb = sext i32 %.3168299.i.i.i to i64
  %i.anc = getelementptr inbounds i8, ptr %i.xt, i64 %i.anb
  store i32 %i.ana, ptr %i.anc, align 1, !tbaa !67
  %i.and = add nsw i32 %.3168299.i.i.i, 4
  br label %.lr.ph296.i.i.i

.lr.ph296.i.i.i:                                  ; preds = %.loopexit239.i.i.i, %.lr.ph296.preheader.i.i.i
  %indvars.iv341.i.i.i = phi i64 [ %indvars.iv328.i.i.i, %.lr.ph296.preheader.i.i.i ], [ %indvars.iv.next342.i.i.i, %.loopexit239.i.i.i ] ; 2 uses
  %.4169294.i.i.i = phi i32 [ %i.and, %.lr.ph296.preheader.i.i.i ], [ %.6.i.i.i, %.loopexit239.i.i.i ] ; 4 uses
  %i.ane = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.anf = getelementptr inbounds nuw [36 x i8], ptr %i.ane, i64 %indvars.iv341.i.i.i ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 32
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !82
  %i.ani = icmp eq i32 %i.anh, 0
  br i1 %i.ani, label %bb.bs, label %.preheader.i185.i.i

.preheader.i185.i.i:                              ; preds = %.lr.ph296.i.i.i
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.ank = sext i32 %.4169294.i.i.i to i64
  %i.anl = load i32, ptr %i.anj, align 4, !tbaa !53
  %i.anm = trunc i32 %i.anl to i8
  %i.ann = getelementptr inbounds i8, ptr %i.xt, i64 %i.ank ; 4 uses
  store i8 %i.anm, ptr %i.ann, align 1, !tbaa !67
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anf, i64 12
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !53
  %i.anq = trunc i32 %i.anp to i8
  %i.anr = getelementptr i8, ptr %i.ann, i64 1
  store i8 %i.anq, ptr %i.anr, align 1, !tbaa !67
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !53
  %i.anu = trunc i32 %i.ant to i8
  %i.anv = getelementptr i8, ptr %i.ann, i64 2
  store i8 %i.anu, ptr %i.anv, align 1, !tbaa !67
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anf, i64 20
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !53
  %i.any = trunc i32 %i.anx to i8
  %indvars.iv.next334.3.i.i.i = add i32 %.4169294.i.i.i, 4
  %i.anz = getelementptr i8, ptr %i.ann, i64 3
  store i8 %i.any, ptr %i.anz, align 1, !tbaa !67
  br label %.loopexit239.i.i.i

bb.bs:                                            ; preds = %.lr.ph296.i.i.i
  %i.aoa = load i32, ptr %i.anf, align 4, !tbaa !97
  %i.aob = trunc i32 %i.aoa to i8
  %i.aoc = add nsw i32 %.4169294.i.i.i, 1
  %i.aod = sext i32 %.4169294.i.i.i to i64
  %i.aoe = getelementptr inbounds i8, ptr %i.xt, i64 %i.aod
  store i8 %i.aob, ptr %i.aoe, align 1, !tbaa !67
  br label %.loopexit239.i.i.i

.loopexit239.i.i.i:                               ; preds = %bb.bs, %.preheader.i185.i.i
  %.6.i.i.i = phi i32 [ %i.aoc, %bb.bs ], [ %indvars.iv.next334.3.i.i.i, %.preheader.i185.i.i ] ; 3 uses
  %indvars.iv.next342.i.i.i = add nuw nsw i64 %indvars.iv341.i.i.i, 1 ; 2 uses
  %i.aof = icmp slt i64 %indvars.iv.next342.i.i.i, %i.amq
  br i1 %i.aof, label %.lr.ph296.i.i.i, label %.loopexit240.i.i.i, !llvm.loop !103

._crit_edge300.i.i.i:                             ; preds = %.loopexit240.i.i.i, %bb.bq
  %.3168.lcssa.i.i.i = phi i32 [ %i.ami, %bb.bq ], [ %.6.i.i.i, %.loopexit240.i.i.i ] ; 2 uses
  %i.aog = sext i32 %.1166.i.i.i to i64
  %i.aoh = getelementptr inbounds i8, ptr %i.xt, i64 %i.aog ; 4 uses
  %i.aoi = sub nsw i32 %.3168.lcssa.i.i.i, %.1166.i.i.i ; 3 uses
  store i8 48, ptr %i.aoh, align 1, !tbaa !67
  %i.aoj = trunc i32 %i.aoi to i8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoh, i64 3
  store i8 %i.aoj, ptr %i.aol, align 1, !tbaa !67
  %i.aom = lshr i32 %i.aoi, 8
  %i.aon = trunc i32 %i.aom to i8
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoh, i64 2
  store i8 %i.aon, ptr %i.aoo, align 1, !tbaa !67
  %i.aop = lshr i32 %i.aoi, 16
  %i.aoq = trunc i32 %i.aop to i8
  store i8 %i.aoq, ptr %i.aok, align 1, !tbaa !67
  br label %encode_mode.exit.i.i

bb.bt:                                            ; preds = %.split269.us.i.i.i
  %i.aor = add nsw i32 %.1166.i.i.i, 4            ; 2 uses
  %i.aos = icmp sgt i32 %i.xu, 15
  br i1 %i.aos, label %.lr.ph278.i.i.i, label %._crit_edge279.thread.i.i.i

.lr.ph278.i.i.i:                                  ; preds = %bb.bt
  %wide.trip.count.i178.i.i = zext nneg i32 %i.xv to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cc, %.lr.ph278.i.i.i
  %indvars.iv325.i.i.i = phi i64 [ 0, %.lr.ph278.i.i.i ], [ %indvars.iv.next326.i.i.i, %bb.cc ] ; 2 uses
  %.2276.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.5.i181.i.i, %bb.cc ]
  %.7275.i.i.i = phi i32 [ %i.aor, %.lr.ph278.i.i.i ], [ %.9.i.i.i, %bb.cc ] ; 3 uses
  %.0171274.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.4175.i.i.i, %bb.cc ] ; 4 uses
  %.0176273.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.3179.i.i.i, %bb.cc ] ; 5 uses
  %i.aot = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.aou = getelementptr inbounds nuw [36 x i8], ptr %i.aot, i64 %indvars.iv325.i.i.i ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 32 ; 3 uses
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !82 ; 3 uses
  %i.aox = icmp ne i32 %i.aow, 2                  ; 2 uses
  %i.aoy = zext i1 %i.aox to i32
  %i.aoz = add nsw i32 %.0176273.i.i.i, 1         ; 2 uses
  %i.apa = sub nsw i32 31, %.0176273.i.i.i
  %i.apb = shl nuw i32 %i.aoy, %i.apa
  %i.apc = or i32 %i.apb, %.2276.i.i.i            ; 3 uses
  br i1 %i.aox, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.apd = icmp slt i32 %.0176273.i.i.i, 31
  br i1 %i.apd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ape = icmp eq i32 %i.aow, 1
  %i.apf = zext i1 %i.ape to i32
  %i.apg = add nsw i32 %.0176273.i.i.i, 2
  %i.aph = sub nsw i32 30, %.0176273.i.i.i
  %i.api = shl nuw i32 %i.apf, %i.aph
  %i.apj = or i32 %i.apc, %i.api
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.1177.i.i.i = phi i32 [ %i.apg, %bb.bw ], [ %i.aoz, %bb.bu ], [ %i.aoz, %bb.bv ] ; 2 uses
  %i.apk = phi i1 [ false, %bb.bw ], [ false, %bb.bu ], [ true, %bb.bv ]
  %.not200.i.i.i = phi i1 [ true, %bb.bw ], [ true, %bb.bu ], [ false, %bb.bv ] ; 2 uses
  %.3.i179.i.i = phi i32 [ %i.apj, %bb.bw ], [ %i.apc, %bb.bu ], [ %i.apc, %bb.bv ] ; 2 uses
  %i.apl = icmp eq i32 %.1177.i.i.i, 32
  br i1 %i.apl, label %bb.by, label %thread-pre-split.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.apm = call i32 @llvm.bswap.i32(i32 %.3.i179.i.i)
  %i.apn = sext i32 %.7275.i.i.i to i64
  %i.apo = getelementptr inbounds i8, ptr %i.xt, i64 %i.apn
  store i32 %i.apm, ptr %i.apo, align 1, !tbaa !67
  %i.app = add nsw i32 %.7275.i.i.i, 4            ; 3 uses
  %i.apq = load i32, ptr %i.aov, align 4, !tbaa !82 ; 2 uses
  %i.apr = icmp eq i32 %i.apq, 2
  %or.cond.i183.i.i = or i1 %i.apk, %i.apr
  br i1 %or.cond.i183.i.i, label %bb.bz, label %thread-pre-split.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.aps = sext i32 %i.app to i64
  %i.apt = getelementptr inbounds i8, ptr %i.xt, i64 %i.aps
  %i.apu = sext i32 %.0171274.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apt, ptr nonnull align 16 %i.a, i64 %i.apu, i1 false)
  %i.apv = add nsw i32 %i.app, %.0171274.i.i.i
  %.pr.i.pr.pre.i.i = load i32, ptr %i.aov, align 4, !tbaa !82
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.bz, %bb.by, %bb.bx
  %.pr.i.i.i = phi i32 [ %i.apq, %bb.by ], [ %i.aow, %bb.bx ], [ %.pr.i.pr.pre.i.i, %bb.bz ] ; 2 uses
  %.2178.i.i.i = phi i32 [ 0, %bb.by ], [ %.1177.i.i.i, %bb.bx ], [ 0, %bb.bz ]
  %.1172.i.i.i = phi i32 [ %.0171274.i.i.i, %bb.by ], [ %.0171274.i.i.i, %bb.bx ], [ 0, %bb.bz ] ; 5 uses
  %.8.i180.i.i = phi i32 [ %i.app, %bb.by ], [ %.7275.i.i.i, %bb.bx ], [ %i.apv, %bb.bz ] ; 3 uses
  %.not201.i.i.i = phi i1 [ false, %bb.by ], [ true, %bb.bx ], [ true, %bb.bz ]
  %.4.i.i.i = phi i32 [ 0, %bb.by ], [ %.3.i179.i.i, %bb.bx ], [ 0, %bb.bz ]
  %i.apw = icmp eq i32 %.pr.i.i.i, 1
  %i.apx = select i1 %i.apw, i32 -2147483648, i32 0
  %.3179.i.i.i = select i1 %.not200.i.i.i, i32 %.2178.i.i.i, i32 1 ; 2 uses
  %.5.i181.i.i = select i1 %.not200.i.i.i, i32 %.4.i.i.i, i32 %i.apx ; 2 uses
  switch i32 %.pr.i.i.i, label %.loopexit243.i.i.i [
end_hunk_0
begin_hunk_1_@cinepak_encode_frame:bb.a
  br i1 %exitcond.i.i, label %.thread227.i.i, label %bb.l, !llvm.loop !105

.thread227.i.i:                                   ; preds = %bb.ce, %bb.l
  %.8.i = phi i64 [ %.6.i, %bb.l ], [ %.7.i, %bb.ce ] ; 4 uses
  %.4254.i = phi i32 [ %.2252.i, %bb.l ], [ %.3253.i, %bb.ce ] ; 3 uses
  %.3375.i.i = phi i32 [ %.1121285.i.i, %bb.l ], [ %.3.i.i, %bb.ce ]
  %.5374.i.i = phi i32 [ %.2125284.i.i, %bb.l ], [ %.5.i.i, %bb.ce ] ; 2 uses
  %.3131373.i.i = phi i32 [ %.2130283.i.i, %bb.l ], [ %.3131.i.i, %bb.ce ] ; 4 uses
  %.6198372.i.i = phi i32 [ %.2194282.i.i, %bb.l ], [ %.6198.i.i, %bb.ce ] ; 2 uses
  %.6206371.i.i = phi i32 [ %.2202281.i.i, %bb.l ], [ %.6206.i.i, %bb.ce ] ; 2 uses
  %i.ash = shl i32 %.0119292.i.i, 2
  %i.asi = select i1 %.not155.i.i, i32 %i.oa, i32 %i.ash ; 2 uses
  %.not153.i.i = icmp sle i32 %i.asi, %.0122299.i.i
  %.not154.i.i = icmp eq i32 %.3375.i.i, 0
  %or.cond161.i.i = select i1 %.not153.i.i, i1 %.not154.i.i, i1 false
  br i1 %or.cond161.i.i, label %.preheader.i.i, label %.critedge3.i.i, !llvm.loop !106

.critedge3.i.i:                                   ; preds = %.thread227.i.i
  %i.asj = shl i32 %.0122299.i.i, 2               ; 2 uses
  %i.ask = icmp slt i32 %i.asj, 257
  %.not.i.i = icmp eq i32 %.5374.i.i, 0
  %or.cond160.i.i = select i1 %i.ask, i1 %.not.i.i, i1 false
  br i1 %or.cond160.i.i, label %.preheader.lr.ph.i.i, label %rd_strip.exit.i, !llvm.loop !107

rd_strip.exit.thread.i:                           ; preds = %bb.ac, %calculate_mode_score.exit.thread.i.i, %bb.q, %bb.n, %bb.ax, %bb.at
  %.7.i.ph.i = phi i32 [ %i.wz, %bb.at ], [ %i.xd, %bb.ax ], [ %i.sp, %bb.ac ], [ %i.sl, %calculate_mode_score.exit.thread.i.i ], [ %i.ox, %bb.q ], [ %i.od, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread291.i

rd_strip.exit.i:                                  ; preds = %.critedge3.i.i
  %i.asl = add nsw i32 %.3131373.i.i, 12          ; 3 uses
  %i.asm = load ptr, ptr %i.gv, align 8, !tbaa !49
  %i.asn = sext i32 %i.asl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lt, ptr align 1 %i.asm, i64 %i.asn, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.aso = icmp slt i32 %.3131373.i.i, -12
  br i1 %i.aso, label %.thread291.i, label %bb.cf

bb.cf:                                            ; preds = %rd_strip.exit.i
  %i.asp = add nsw i64 %.8.i, %.0185484.i
  %i.asq = add nuw nsw i32 %i.asl, %.0194483.i
  %i.asr = and i32 %.4254.i, %.0172485.i
  br label %bb.cg

.thread291.i:                                     ; preds = %rd_strip.exit.i, %rd_strip.exit.thread.i
  %.2.ph.i = phi i32 [ %.7.i.ph.i, %rd_strip.exit.thread.i ], [ %i.asl, %rd_strip.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %rd_frame.exit

bb.cg:                                            ; preds = %bb.cf, %bb.g
  %.sroa.10.5.i = phi ptr [ %.sroa.10.4472.i, %bb.g ], [ %.sroa.10.8.i, %bb.cf ] ; 2 uses
  %.sroa.6243.5.i = phi ptr [ %.sroa.6243.4473.i, %bb.g ], [ %.sroa.6243.8.i, %bb.cf ] ; 2 uses
  %.sroa.5.2.i = phi ptr [ %.sroa.5.1474.i, %bb.g ], [ %.sroa.5.4265.i, %bb.cf ] ; 2 uses
  %.sroa.9238.2.i = phi i32 [ %.sroa.9238.1475.i, %bb.g ], [ %.sroa.9238.4267.i, %bb.cf ] ; 2 uses
  %.sroa.6236.2.i = phi i32 [ %.sroa.6236.1476.i, %bb.g ], [ %.sroa.6236.4269.i, %bb.cf ] ; 2 uses
  %.sroa.8.2.i = phi ptr [ %.sroa.8.1477.i, %bb.g ], [ %.sroa.8.4271.i, %bb.cf ] ; 2 uses
  %.2257.i = phi i64 [ %.1256480.i, %bb.g ], [ %.8.i, %bb.cf ] ; 2 uses
  %i.ass = phi ptr [ %i.hq, %bb.g ], [ %i.lk, %bb.cf ] ; 2 uses
  %i.ast = phi ptr [ %i.hp, %bb.g ], [ %i.ll, %bb.cf ] ; 2 uses
  %i.asu = phi i32 [ %i.ho, %bb.g ], [ %i.lm, %bb.cf ] ; 2 uses
  %i.asv = phi i32 [ %i.hn, %bb.g ], [ %i.ln, %bb.cf ] ; 2 uses
  %.1195.i = phi i32 [ %.0194483.i, %bb.g ], [ %i.asq, %bb.cf ] ; 2 uses
  %.1186.i = phi i64 [ %.0185484.i, %bb.g ], [ %i.asp, %bb.cf ] ; 2 uses
  %.1173.i = phi i32 [ %.0172485.i, %bb.g ], [ %i.asr, %bb.cf ] ; 2 uses
  %i.asw = phi <2 x i32> [ %i.hr, %bb.g ], [ %i.lq, %bb.cf ] ; 2 uses
  %indvars.iv.next568.i = add nuw nsw i64 %indvars.iv567.i, 1
  %i.asx = load i32, ptr %i.fx, align 8, !tbaa !58 ; 2 uses
  %i.asy = icmp slt i32 %.0196.i, %i.asx
  br i1 %i.asy, label %.lr.ph487.i, label %._crit_edge488.loopexit.i, !llvm.loop !108

._crit_edge488.loopexit.i:                        ; preds = %bb.cg
  %i.asz = add nuw nsw i32 %.1195.i, 10
  br label %._crit_edge488.i

._crit_edge488.i:                                 ; preds = %._crit_edge488.loopexit.i, %bb.f
  %.sroa.10.4.lcssa.i = phi ptr [ %.sroa.10.3506.i, %bb.f ], [ %.sroa.10.5.i, %._crit_edge488.loopexit.i ]
  %.sroa.6243.4.lcssa.i = phi ptr [ %.sroa.6243.3507.i, %bb.f ], [ %.sroa.6243.5.i, %._crit_edge488.loopexit.i ]
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0508.i, %bb.f ], [ %.sroa.5.2.i, %._crit_edge488.loopexit.i ]
  %.sroa.9238.1.lcssa.i = phi i32 [ %.sroa.9238.0509.i, %bb.f ], [ %.sroa.9238.2.i, %._crit_edge488.loopexit.i ]
  %.sroa.6236.1.lcssa.i = phi i32 [ %.sroa.6236.0510.i, %bb.f ], [ %.sroa.6236.2.i, %._crit_edge488.loopexit.i ]
  %.sroa.8.1.lcssa.i = phi ptr [ %.sroa.8.0511.i, %bb.f ], [ %.sroa.8.2.i, %._crit_edge488.loopexit.i ]
  %.1256.lcssa.i = phi i64 [ %.0255514.i, %bb.f ], [ %.2257.i, %._crit_edge488.loopexit.i ]
  %.lcssa377.i = phi ptr [ %i.hh, %bb.f ], [ %i.ass, %._crit_edge488.loopexit.i ]
  %.lcssa373.i = phi ptr [ %i.hg, %bb.f ], [ %i.ast, %._crit_edge488.loopexit.i ]
  %.lcssa369.i = phi i32 [ %i.hf, %bb.f ], [ %i.asu, %._crit_edge488.loopexit.i ]
  %.lcssa365.i = phi i32 [ %i.he, %bb.f ], [ %i.asv, %._crit_edge488.loopexit.i ]
  %.0194.lcssa.i = phi i32 [ 10, %bb.f ], [ %i.asz, %._crit_edge488.loopexit.i ] ; 5 uses
  %.0185.lcssa.i = phi i64 [ 0, %bb.f ], [ %.1186.i, %._crit_edge488.loopexit.i ] ; 2 uses
  %.0172.lcssa.i = phi i32 [ 1, %bb.f ], [ %.1173.i, %._crit_edge488.loopexit.i ] ; 2 uses
  %i.ata = phi <2 x i32> [ %i.hi, %bb.f ], [ %i.asw, %._crit_edge488.loopexit.i ]
  %i.atb = icmp eq i64 %.0187517.i, 0
  %i.atc = icmp slt i64 %.0185.lcssa.i, %.0187517.i
  %or.cond.i = select i1 %i.atb, i1 true, i1 %i.atc
  br i1 %or.cond.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge488.i
  %i.atd = load ptr, ptr %i.gg, align 8, !tbaa !50 ; 7 uses
  %i.ate = trunc nuw nsw i32 %.0172.lcssa.i to i8
  %i.atf = xor i8 %i.ate, 1
  store i8 %i.atf, ptr %i.atd, align 1, !tbaa !67
  %i.atg = trunc i32 %.0194.lcssa.i to i8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atd, i64 1
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atd, i64 3
  store i8 %i.atg, ptr %i.ati, align 1, !tbaa !67
  %i.atj = lshr i32 %.0194.lcssa.i, 8
  %i.atk = trunc i32 %i.atj to i8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atd, i64 2
  store i8 %i.atk, ptr %i.atl, align 1, !tbaa !67
  %i.atm = lshr i32 %.0194.lcssa.i, 16
  %i.atn = trunc i32 %i.atm to i8
  store i8 %i.atn, ptr %i.ath, align 1, !tbaa !67
  %i.ato = load i32, ptr %i.gh, align 4, !tbaa !57
  %i.atp = trunc i32 %i.ato to i16
  %i.atq = call i16 @llvm.bswap.i16(i16 %i.atp)
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  store i16 %i.atq, ptr %i.atr, align 1, !tbaa !67
  %i.ats = load i32, ptr %i.fx, align 8, !tbaa !58
  %i.att = trunc i32 %i.ats to i16
  %i.atu = call i16 @llvm.bswap.i16(i16 %i.att)
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atd, i64 6
  store i16 %i.atu, ptr %i.atv, align 1, !tbaa !67
  %i.atw = trunc i32 %.0202515.i to i16
  %i.atx = call i16 @llvm.bswap.i16(i16 %i.atw)
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  store i16 %i.atx, ptr %i.aty, align 1, !tbaa !67
  %i.atz = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !109
  %i.aua = shufflevector <2 x ptr> %i.atz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aua, ptr %i.hd, align 8, !tbaa !109
  %i.aub = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.auc = zext nneg i32 %.0194.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.aub, i64 %i.auc, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.j, ptr noundef nonnull align 16 dereferenceable(128) %i.k, i64 128, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge488.i
  %.1 = phi i32 [ %.0172.lcssa.i, %bb.ch ], [ %.031, %._crit_edge488.i ] ; 3 uses
  %.1191.i = phi i32 [ %.0194.lcssa.i, %bb.ch ], [ %.0190516.i, %._crit_edge488.i ] ; 3 uses
  %.1188.i = phi i64 [ %.0185.lcssa.i, %bb.ch ], [ %.0187517.i, %._crit_edge488.i ]
  %.1182.i = phi i32 [ %.0202515.i, %bb.ch ], [ %.0181518.i, %._crit_edge488.i ] ; 4 uses
  %i.aud = sub nsw i32 %.0202515.i, %.1182.i
  %i.aue = icmp sgt i32 %i.aud, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br i1 %i.aue, label %.critedge.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.auf = add nsw i32 %.0202515.i, 1
  %i.aug = load i32, ptr %i.fv, align 4, !tbaa !72
  %.not.not.i = icmp slt i32 %.0202515.i, %i.aug
  br i1 %.not.not.i, label %bb.e, label %.critedge.i, !llvm.loop !110

.critedge.i:                                      ; preds = %bb.cj, %bb.e, %bb.ci
  %.2 = phi i32 [ %.1, %bb.ci ], [ %.031, %bb.e ], [ %.1, %bb.cj ] ; 4 uses
  %.3193.i = phi i32 [ %.1191.i, %bb.ci ], [ %.0190516.i, %bb.e ], [ %.1191.i, %bb.cj ] ; 3 uses
  %.3184.i = phi i32 [ %.1182.i, %bb.ci ], [ %.0181518.i, %bb.e ], [ %.1182.i, %bb.cj ] ; 6 uses
  %i.auh = icmp sgt i32 %.3184.i, 0
  br i1 %i.auh, label %.lr.ph527.i, label %._crit_edge528.i

.lr.ph527.i:                                      ; preds = %.critedge.i
  %wide.trip.count.i = zext nneg i32 %.3184.i to i64 ; 2 uses
  %.not.i227.i = icmp eq i32 %.2, 0
  %i.aui = select i1 %.not.i227.i, i8 17, i8 16   ; 5 uses
  %xtraiter290 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.auj = icmp ult i32 %.3184.i, 4
  br i1 %i.auj, label %.epil.preheader289, label %.lr.ph527.i.new

.lr.ph527.i.new:                                  ; preds = %.lr.ph527.i
  %unroll_iter294 = and i64 %wide.trip.count.i, 2147483644
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph527.i.new
  %indvars.iv570.i = phi i64 [ 0, %.lr.ph527.i.new ], [ %indvars.iv.next571.i.3, %bb.ck ] ; 5 uses
  %niter295 = phi i64 [ 0, %.lr.ph527.i.new ], [ %niter295.next.3, %bb.ck ]
  %i.auk = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv570.i
  %i.aum = load i32, ptr %i.aul, align 16, !tbaa !53
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds i8, ptr %i.auk, i64 %i.aun
  store i8 %i.aui, ptr %i.auo, align 1, !tbaa !67
  %i.aup = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv570.i
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 4
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !53
  %i.aut = sext i32 %i.aus to i64
  %i.auu = getelementptr inbounds i8, ptr %i.aup, i64 %i.aut
  store i8 %i.aui, ptr %i.auu, align 1, !tbaa !67
  %i.auv = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv570.i
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.auy = load i32, ptr %i.aux, align 8, !tbaa !53
  %i.auz = sext i32 %i.auy to i64
  %i.ava = getelementptr inbounds i8, ptr %i.auv, i64 %i.auz
  store i8 %i.aui, ptr %i.ava, align 1, !tbaa !67
  %i.avb = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv570.i
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 12
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !53
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr inbounds i8, ptr %i.avb, i64 %i.avf
  store i8 %i.aui, ptr %i.avg, align 1, !tbaa !67
  %indvars.iv.next571.i.3 = add nuw nsw i64 %indvars.iv570.i, 4 ; 2 uses
  %niter295.next.3 = add i64 %niter295, 4         ; 2 uses
  %niter295.ncmp.3 = icmp eq i64 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3, label %._crit_edge528.i.loopexit.unr-lcssa, label %bb.ck, !llvm.loop !111

._crit_edge528.i.loopexit.unr-lcssa:              ; preds = %bb.ck
  %lcmp.mod292.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod292.not, label %._crit_edge528.i, label %.epil.preheader289

.epil.preheader289:                               ; preds = %._crit_edge528.i.loopexit.unr-lcssa, %.lr.ph527.i
  %indvars.iv570.i.epil.init = phi i64 [ 0, %.lr.ph527.i ], [ %indvars.iv.next571.i.3, %._crit_edge528.i.loopexit.unr-lcssa ]
  %lcmp.mod293 = icmp ne i64 %xtraiter290, 0
  call void @llvm.assume(i1 %lcmp.mod293)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.epil.preheader289
  %indvars.iv570.i.epil = phi i64 [ %indvars.iv570.i.epil.init, %.epil.preheader289 ], [ %indvars.iv.next571.i.epil, %bb.cl ] ; 2 uses
  %epil.iter291 = phi i64 [ 0, %.epil.preheader289 ], [ %epil.iter291.next, %bb.cl ]
  %i.avh = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv570.i.epil
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !53
  %i.avk = sext i32 %i.avj to i64
  %i.avl = getelementptr inbounds i8, ptr %i.avh, i64 %i.avk
  store i8 %i.aui, ptr %i.avl, align 1, !tbaa !67
  %indvars.iv.next571.i.epil = add nuw nsw i64 %indvars.iv570.i.epil, 1
  %epil.iter291.next = add i64 %epil.iter291, 1   ; 2 uses
  %epil.iter291.cmp.not = icmp eq i64 %epil.iter291.next, %xtraiter290
  br i1 %epil.iter291.cmp.not, label %._crit_edge528.i, label %bb.cl, !llvm.loop !112

._crit_edge528.i:                                 ; preds = %._crit_edge528.i.loopexit.unr-lcssa, %bb.cl, %.critedge.i, %.loopexit.i
  %.3 = phi i32 [ undef, %.loopexit.i ], [ %.2, %.critedge.i ], [ %.2, %bb.cl ], [ %.2, %._crit_edge528.i.loopexit.unr-lcssa ] ; 2 uses
  %.3184619.i = phi i32 [ undef, %.loopexit.i ], [ %.3184.i, %.critedge.i ], [ %.3184.i, %bb.cl ], [ %.3184.i, %._crit_edge528.i.loopexit.unr-lcssa ] ; 5 uses
  %.3193618.i = phi i32 [ undef, %.loopexit.i ], [ %.3193.i, %.critedge.i ], [ %.3193.i, %bb.cl ], [ %.3193.i, %._crit_edge528.i.loopexit.unr-lcssa ] ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.avn = load i32, ptr %i.avm, align 8, !tbaa !113 ; 3 uses
  %.not216.i = icmp eq i32 %i.avn, 0
  br i1 %.not216.i, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %._crit_edge528.i
  %i.avo = load i32, ptr %i.fv, align 4, !tbaa !72
  %i.avp = icmp eq i32 %.3184619.i, %i.avo
  br i1 %i.avp, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.avq = add nsw i32 %.3184619.i, 1
  %i.avr = getelementptr inbounds nuw i8, ptr %i.m, i64 428
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !38
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.avq, i32 %i.avs)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %storemerge.i = phi i32 [ %spec.store.select.i, %bb.cn ], [ %.3184619.i, %bb.cm ] ; 3 uses
  store i32 %storemerge.i, ptr %i.fv, align 4
  %i.avt = add nsw i32 %storemerge.i, -1
  %i.avu = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.avv = load i32, ptr %i.avu, align 8, !tbaa !31 ; 2 uses
  %.not218.i = icmp sgt i32 %storemerge.i, %i.avv
  %spec.store.select220.i = select i1 %.not218.i, i32 %i.avt, i32 %i.avv
  store i32 %spec.store.select220.i, ptr %i.ft, align 8
  br label %rd_frame.exit

bb.cp:                                            ; preds = %._crit_edge528.i
  %i.avw = add nsw i32 %i.avn, %.3184619.i
  %i.avx = getelementptr inbounds nuw i8, ptr %i.m, i64 428
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !38
  %spec.store.select221.i = call i32 @llvm.smin.i32(i32 %i.avw, i32 %i.avy)
  store i32 %spec.store.select221.i, ptr %i.fv, align 4
  %i.avz = sub nsw i32 %.3184619.i, %i.avn
  %i.awa = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.awb = load i32, ptr %i.awa, align 8, !tbaa !31
  %spec.store.select222.i = call i32 @llvm.smax.i32(i32 %i.avz, i32 %i.awb)
  store i32 %spec.store.select222.i, ptr %i.ft, align 8
  br label %rd_frame.exit

rd_frame.exit:                                    ; preds = %.thread291.i, %bb.co, %bb.cp
  %.4 = phi i32 [ %.3, %bb.co ], [ %.3, %bb.cp ], [ %.031, %.thread291.i ]
  %.4.i = phi i32 [ %.3193618.i, %bb.co ], [ %.3193618.i, %bb.cp ], [ %.2.ph.i, %.thread291.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.4.i, ptr %i.awc, align 8, !tbaa !114
  %.not28 = icmp eq i32 %.4, 0
  br i1 %.not28, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %rd_frame.exit
  %i.awd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !115
  %i.awf = or i32 %i.awe, 1
  store i32 %i.awf, ptr %i.awd, align 8, !tbaa !115
  store i32 0, ptr %i.x, align 8, !tbaa !55
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %rd_frame.exit
  store i32 1, ptr %3, align 4, !tbaa !53
  %i.awg = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.awh = load <2 x ptr>, ptr %i.awg, align 8, !tbaa !109
  %i.awi = shufflevector <2 x ptr> %i.awh, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.awi, ptr %i.awg, align 8, !tbaa !109
  %i.awj = load i32, ptr %i.x, align 8, !tbaa !55
  %i.awk = add nsw i32 %i.awj, 1                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !116
  %.not29 = icmp slt i32 %i.awk, %i.awm
  %spec.store.select = select i1 %.not29, i32 %i.awk, i32 0
  store i32 %spec.store.select, ptr %i.x, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %bb.cr
  %.0 = phi i32 [ 0, %bb.cr ], [ %i.v, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cinepak_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  tail call void @avpriv_elbg_free(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_frame_free(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_frame_free(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_frame_free(ptr noundef nonnull %i.j) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  tail call void @av_freep(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  tail call void @av_freep(ptr noundef nonnull %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  tail call void @av_freep(ptr noundef nonnull %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.q) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.g, align 8, !tbaa !42
  %i.s = icmp eq i32 %i.r, 2
  %i.t = select i1 %i.s, i64 4, i64 3
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !llvm.loop !117

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @quantize(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull %5, i32 noundef range(i32 0, 4) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x ptr], align 16               ; 8 uses
  %i.c = alloca [4 x ptr], align 16               ; 8 uses
  %i.d = alloca [4 x i32], align 16               ; 8 uses
  %i.e = alloca [4 x i32], align 16               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp eq i32 %i.g, 2                      ; 6 uses
  %i.i = select i1 %i.h, i32 6, i32 4             ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  %.idx = select i1 %.not, i64 6144, i64 0
end_hunk_1
