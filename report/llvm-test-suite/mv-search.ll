inline.NumInlined: 41
inline.NumDeleted: 3
begin_hunk_0_@BlockMotionSearch:bb.a
  %i.md = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !53
  %i.mf = load i32, ptr %i.li, align 8, !tbaa !131
  %i.mg = ashr i32 %i.mf, 2
  %i.mh = add i32 %i.lj, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.mi
  store i32 %i.ja, ptr %i.mj, align 4, !tbaa !4
  %i.mk = add nuw nsw i32 %.3413487, 2            ; 2 uses
  %niter595.next.1 = add i32 %niter595, 2         ; 2 uses
  %niter595.ncmp.1 = icmp eq i32 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge489.split.unr-lcssa, label %.preheader474.new, !llvm.loop !132

._crit_edge489.split.unr-lcssa:                   ; preds = %.preheader474.new
  br i1 %lcmp.mod592.not, label %._crit_edge489.split, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge489.split.unr-lcssa, %.preheader474
  %.3413487.epil.init = phi i32 [ 0, %.preheader474 ], [ %i.mk, %._crit_edge489.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod593)
  %i.ml = load i32, ptr %i.lh, align 4, !tbaa !130
  %i.mm = ashr i32 %i.ml, 2
  %i.mn = add nsw i32 %.3413487.epil.init, %i.g
  %i.mo = add i32 %i.mn, %i.mm
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !53
  %i.ms = load i32, ptr %i.li, align 8, !tbaa !131
  %i.mt = ashr i32 %i.ms, 2
  %i.mu = add i32 %i.lj, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.mv
  store i32 %i.ja, ptr %i.mw, align 4, !tbaa !4
  br label %._crit_edge489.split

._crit_edge489.split:                             ; preds = %._crit_edge489.split.unr-lcssa, %.epil.preheader589
  %i.mx = add nuw nsw i32 %.0406490, 1            ; 2 uses
  %exitcond528.not = icmp eq i32 %i.mx, %i.jb
  br i1 %exitcond528.not, label %.loopexit, label %.preheader474, !llvm.loop !133

bb.w:                                             ; preds = %bb.p
  %i.my = getelementptr inbounds nuw i8, ptr %i.fq, i64 4120
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !134 ; 3 uses
  %.not439 = icmp eq i32 %i.mz, 0
  %i.na = load i16, ptr %i.as, align 2, !tbaa !47 ; 2 uses
  br i1 %.not439, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !47
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.nd = sext i16 %i.na to i32
  %i.ne = add nsw i32 %i.nd, 2
  %i.nf = lshr i32 %i.ne, 2
  %i.ng = trunc i32 %i.nf to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !47
  %i.nj = sext i16 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, 2
  %i.nl = lshr i32 %i.nk, 2
  %i.nm = trunc i32 %i.nl to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nn = phi i16 [ %i.ng, %bb.y ], [ %i.na, %bb.x ] ; 2 uses
  %i.no = phi i16 [ %i.nm, %bb.y ], [ %i.nc, %bb.x ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nq = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !128
  %.not440 = icmp eq i32 %i.nr, 0
  %.pre545 = load i32, ptr %i.a, align 4, !tbaa !4 ; 7 uses
  br i1 %.not440, label %bb.aa, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.z
  %.pre553.a = shl nsw i32 %i.mz, 1               ; 2 uses
  %.pre554 = shl i32 %.pre545, %.pre553.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ns = sub nsw i32 0, %.pre545
  %i.nt = shl nsw i32 %i.mz, 1                    ; 3 uses
  %i.nu = shl i32 %i.ns, %i.nt                    ; 2 uses
  %i.nv = shl i32 %.pre545, %i.nt                 ; 3 uses
  %i.nw = sext i16 %i.nn to i32
  %i.nx = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.nw, i32 %i.nu)
  %i.ny = call noundef i32 @llvm.smin.i32(i32 %i.nx, i32 %i.nv)
  %i.nz = trunc i32 %i.ny to i16
  %i.oa = sext i16 %i.no to i32
  %i.ob = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.oa, i32 %i.nu)
  %i.oc = call noundef i32 @llvm.smin.i32(i32 %i.ob, i32 %i.nv)
  %i.od = trunc i32 %i.oc to i16
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge552, %bb.aa
  %.pre-phi555 = phi i32 [ %.pre554, %._crit_edge552 ], [ %i.nv, %bb.aa ]
  %.pre-phi = phi i32 [ %.pre553.a, %._crit_edge552 ], [ %i.nt, %bb.aa ] ; 4 uses
  %i.oe = phi i16 [ %i.no, %._crit_edge552 ], [ %i.od, %bb.aa ]
  %i.of = phi i16 [ %i.nn, %._crit_edge552 ], [ %i.nz, %bb.aa ]
  %i.og = add nsw i32 %.pre545, -2047
  %i.oh = shl i32 %i.og, %.pre-phi
  %i.oi = sub nsw i32 2047, %.pre545
  %i.oj = shl i32 %i.oi, %.pre-phi
  %i.ok = sext i16 %i.of to i32
  %i.ol = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ok, i32 %i.oh)
  %i.om = call noundef i32 @llvm.smin.i32(i32 %i.ol, i32 %i.oj)
  %i.on = trunc i32 %i.om to i16
  store i16 %i.on, ptr %i.b, align 4, !tbaa !47
  %i.oo = load ptr, ptr @img, align 8, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !129
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.or ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !4
  %i.ou = add nsw i32 %i.ot, %.pre545
  %i.ov = shl i32 %i.ou, %.pre-phi
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4
  %i.oy = sub nsw i32 %i.ox, %.pre545
  %i.oz = shl i32 %i.oy, %.pre-phi
  %i.pa = sext i16 %i.oe to i32
  %i.pb = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.pa, i32 %i.ov)
  %i.pc = call noundef i32 @llvm.smin.i32(i32 %i.pb, i32 %i.oz)
  %i.pd = trunc i32 %i.pc to i16
  store i16 %i.pd, ptr %i.np, align 2, !tbaa !47
  %i.pe = load ptr, ptr @enc_picture, align 8, !tbaa !120 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 6488
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !122
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 6512
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !127
  %i.pj = load i32, ptr %6, align 4, !tbaa !4
  %i.pk = call i32 @EPZSPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.bh, ptr noundef %i.pg, ptr noundef %i.pi, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef %.pre-phi555, i32 noundef 2147483647, i32 noundef %i.pj) #9
  br label %.loopexit

bb.ac:                                            ; preds = %bb.p
  %i.pl = load i16, ptr %i.as, align 2, !tbaa !47
  %i.pm = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !47
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.pp = load i32, ptr %i.a, align 4, !tbaa !4
  %i.pq = load i32, ptr %6, align 4, !tbaa !4
  %i.pr = call i32 @FastFullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.pl, i16 noundef signext %i.pn, ptr noundef nonnull %i.b, ptr noundef nonnull %i.po, i32 noundef %i.pp, i32 noundef 2147483647, i32 noundef %i.pq) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.p
  %i.ps = load i16, ptr %i.as, align 2, !tbaa !47
  %i.pt = sdiv i16 %i.ps, 4                       ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !47
  %i.pw = sdiv i16 %i.pv, 4                       ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !128
  %.not438 = icmp eq i32 %i.pz, 0
  %.pre548 = load i32, ptr %i.a, align 4, !tbaa !4 ; 8 uses
  br i1 %.not438, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.qa = sub nsw i32 0, %.pre548                 ; 2 uses
  %i.qb = sext i16 %i.pt to i32
  %i.qc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qb, i32 %i.qa)
  %i.qd = call noundef i32 @llvm.smin.i32(i32 %i.qc, i32 %.pre548)
  %i.qe = trunc i32 %i.qd to i16
  %i.qf = sext i16 %i.pw to i32
  %i.qg = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qf, i32 %i.qa)
  %i.qh = call noundef i32 @llvm.smin.i32(i32 %i.qg, i32 %.pre548)
  %i.qi = trunc i32 %i.qh to i16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.qj = phi i16 [ %i.qi, %bb.ae ], [ %i.pw, %bb.ad ]
  %i.qk = phi i16 [ %i.qe, %bb.ae ], [ %i.pt, %bb.ad ]
  %i.ql = add nsw i32 %.pre548, -2047
  %i.qm = sub nsw i32 2047, %.pre548
  %i.qn = sext i16 %i.qk to i32
  %i.qo = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qn, i32 %i.ql)
  %i.qp = call noundef i32 @llvm.smin.i32(i32 %i.qo, i32 %i.qm)
  %i.qq = trunc i32 %i.qp to i16
  store i16 %i.qq, ptr %i.b, align 4, !tbaa !47
  %i.qr = load ptr, ptr @img, align 8, !tbaa !8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !129
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.qu ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !4
  %i.qx = add nsw i32 %i.qw, %.pre548
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !4
  %i.ra = sub nsw i32 %i.qz, %.pre548
  %i.rb = sext i16 %i.qj to i32
  %i.rc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.rb, i32 %i.qx)
  %i.rd = call noundef i32 @llvm.smin.i32(i32 %i.rc, i32 %i.ra)
  %i.re = trunc i32 %i.rd to i16
  store i16 %i.re, ptr %i.px, align 2, !tbaa !47
  %i.rf = load i16, ptr %i.as, align 2, !tbaa !47
  %i.rg = load i16, ptr %i.pu, align 2, !tbaa !47
  %i.rh = load i32, ptr %6, align 4, !tbaa !4
  %i.ri = call i32 @FullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.rf, i16 noundef signext %i.rg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.px, i32 noundef %.pre548, i32 noundef 2147483647, i32 noundef %i.rh) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge489.split, %._crit_edge489.split.us.us, %.preheader474.lr.ph, %bb.v, %bb.ac, %bb.af, %bb.ab, %bb.s
  %.0415 = phi i32 [ %i.hj, %bb.s ], [ %i.ri, %bb.af ], [ %i.pk, %bb.ab ], [ %i.pr, %bb.ac ], [ %i.ja, %.preheader474.lr.ph ], [ %i.ja, %bb.v ], [ %i.ja, %._crit_edge489.split.us.us ], [ %i.ja, %._crit_edge489.split ] ; 6 uses
  %i.rj = load ptr, ptr @input, align 8, !tbaa !8 ; 6 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4120
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !134
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 5244
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !91
  %.not443 = icmp eq i32 %i.ro, 3
  br i1 %.not443, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.rp = load <2 x i16>, ptr %i.b, align 4, !tbaa !47
  %i.rq = shl <2 x i16> %i.rp, splat (i16 2)
  store <2 x i16> %i.rq, ptr %i.b, align 4, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rj, i64 5776
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !90
  %i.rt = icmp eq i32 %i.rs, 2
  %i.ru = zext i1 %i.rt to i32
  store i32 %i.ru, ptr @ChromaMEEnable, align 4, !tbaa !4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !135
  %.not444 = icmp eq i32 %i.rw, 0
  br i1 %.not444, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rj, i64 5244
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !91 ; 2 uses
  %i.rz = icmp ne i32 %i.ry, 3
  %i.sa = icmp eq i16 %0, 0
  %or.cond = or i1 %i.sa, %i.rz
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.sb = load ptr, ptr @img, align 8, !tbaa !8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !136
  %.not445 = icmp eq i32 %i.sd, 0
  br i1 %.not445, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.se = icmp sgt i16 %0, 0
  br i1 %i.se, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  %i.sf = sitofp i32 %.0415 to double
  %i.sg = ashr i32 %i.r, 2
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.sh
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4
  %i.sk = sitofp i32 %i.sj to double
  %i.sl = fmul nnan double %i.sk, 3.500000e+00
  %i.sm = fcmp ogt double %i.sl, %i.sf
  br i1 %i.sm, label %.thread, label %bb.ax

.thread:                                          ; preds = %bb.am, %bb.ak
  %i.sn = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !4
  %.not446463 = icmp eq i32 %i.sn, 0
  %spec.select464 = select i1 %.not446463, i32 2147483647, i32 %.0415
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.so = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !4
  %.not446 = icmp eq i32 %i.so, 0
  %spec.select = select i1 %.not446, i32 2147483647, i32 %.0415 ; 6 uses
  switch i32 %i.ry, label %bb.aw [
    i32 1, label %bb.ao
    i32 2, label %bb.ar
    i32 3, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  %i.sp = icmp sgt i32 %4, 3
  %i.sq = load i16, ptr %i.as, align 2, !tbaa !47 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !47 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  br i1 %i.sp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !4
  %i.sw = call i32 @UMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sq, i16 noundef signext %i.ss, ptr noundef nonnull %i.b, ptr noundef nonnull %i.st, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.sv) #9
  br label %.thread468

bb.aq:                                            ; preds = %bb.ao
  %i.sx = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sq, i16 noundef signext %i.ss, ptr noundef nonnull %i.b, ptr noundef nonnull %i.st, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, ptr noundef %6) #9
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  %i.sy = icmp sgt i32 %4, 1
  %i.sz = load i16, ptr %i.as, align 2, !tbaa !47 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !47 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !4  ; 2 uses
  br i1 %i.sy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.tf = call i32 @smpUMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sz, i16 noundef signext %i.tb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.tc, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.te) #9
  br label %.thread468

bb.at:                                            ; preds = %bb.ar
  %i.tg = call i32 @smpUMHEXFullSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sz, i16 noundef signext %i.tb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.tc, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.te) #9
  br label %bb.ax

bb.au:                                            ; preds = %.thread, %bb.an
  %spec.select465 = phi i32 [ %spec.select464, %.thread ], [ %spec.select, %bb.an ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.rj, i64 4124
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !137
  %.not447 = icmp eq i32 %i.ti, 0
  br i1 %.not447, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.tj = call i32 @EPZSSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef %i.as, ptr noundef nonnull %i.b, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select465, ptr noundef %6) #9
  br label %bb.ax

bb.aw:                                            ; preds = %bb.an, %bb.au
  %spec.select466 = phi i32 [ %spec.select, %bb.an ], [ %spec.select465, %bb.au ]
  %i.tk = load i16, ptr %i.as, align 2, !tbaa !47
  %i.tl = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !47
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.to = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.tk, i16 noundef signext %i.tm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.tn, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select466, ptr noundef %6) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.al, %bb.am, %bb.at, %bb.aw, %bb.av, %bb.aq, %bb.ai
  %.2417 = phi i32 [ %.0415, %bb.ai ], [ %.0415, %bb.am ], [ %i.sx, %bb.aq ], [ %.0415, %bb.al ], [ %i.tg, %bb.at ], [ %i.tj, %bb.av ], [ %i.to, %bb.aw ] ; 4 uses
  %i.tp = load ptr, ptr @input, align 8, !tbaa !8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4168
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !128
  %i.ts = icmp eq i32 %i.tr, 0
  %i.tt = icmp eq i32 %4, 1                       ; 2 uses
  %or.cond11 = and i1 %i.tt, %i.ts
  br i1 %or.cond11, label %bb.ay, label %.thread468

bb.ay:                                            ; preds = %bb.ax
  %i.tu = load ptr, ptr @img, align 8, !tbaa !8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 20
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !138
  switch i32 %i.tw, label %.thread468 [
    i32 0, label %bb.az
    i32 3, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  call void @FindSkipModeMotionVector()
  %i.tx = call i32 @GetSkipCostMB()
  %i.ty = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !4
  %i.ua = add nsw i32 %i.tz, 4096
  %i.ub = ashr i32 %i.ua, 13
  %i.uc = sub nsw i32 %i.tx, %i.ub                ; 2 uses
  %i.ud = icmp slt i32 %i.uc, %.2417
  br i1 %i.ud, label %bb.ba, label %.thread468

bb.ba:                                            ; preds = %bb.az
  %i.ue = load ptr, ptr @img, align 8, !tbaa !8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 14384
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !111
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !95
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !97
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !99
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !43
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !45
  %i.um = load <2 x i16>, ptr %i.ul, align 2, !tbaa !47
  store <2 x i16> %i.um, ptr %i.b, align 4, !tbaa !47
  br label %.thread468

.thread468:                                       ; preds = %bb.ap, %bb.as, %bb.az, %bb.ba, %bb.ay, %bb.ax
  %i.un = phi i1 [ %i.tt, %bb.ax ], [ true, %bb.ay ], [ true, %bb.ba ], [ true, %bb.az ], [ false, %bb.as ], [ false, %bb.ap ]
  %.4419 = phi i32 [ %.2417, %bb.ax ], [ %.2417, %bb.ay ], [ %i.uc, %bb.ba ], [ %.2417, %bb.az ], [ %i.tf, %bb.as ], [ %i.sw, %bb.ap ]
  %i.uo = ashr i32 %i.n, 2                        ; 2 uses
  %i.up = add nsw i32 %i.uo, %i.g                 ; 2 uses
  %i.uq = icmp sgt i32 %i.uo, 0                   ; 2 uses
  br i1 %i.uq, label %.preheader473.lr.ph, label %._crit_edge497.split

.preheader473.lr.ph:                              ; preds = %.thread468
  %i.ur = ashr i32 %i.l, 2                        ; 2 uses
  %i.us = icmp sgt i32 %i.ur, 0
  %i.ut = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  br i1 %i.us, label %.preheader473.preheader, label %._crit_edge497.split

.preheader473.preheader:                          ; preds = %.preheader473.lr.ph
  %i.uu = add nsw i32 %i.ur, %i.f
  %i.uv = sext i32 %i.uu to i64
  %i.uw = sext i32 %i.up to i64
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %._crit_edge495
  %indvars.iv534 = phi i64 [ %i.af, %.preheader473.preheader ], [ %indvars.iv.next535, %._crit_edge495 ] ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv534
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !95
  %.pre549 = load i16, ptr %i.b, align 4, !tbaa !47
  br label %bb.bb
end_hunk_0
