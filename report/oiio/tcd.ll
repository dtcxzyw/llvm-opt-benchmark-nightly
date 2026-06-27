inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_encode_tile:bb.a
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !162
  %i.ne = load i32, ptr %i.g, align 8, !tbaa !160
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [608 x i8], ptr %i.nd, i64 %i.nf ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 560
  store i32 %i.nb, ptr %i.nh, align 8, !tbaa !211
  %i.ni = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !212
  %i.nk = fptosi double %i.nj to i32
  %i.nl = sitofp i32 %i.nk to double
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 568
  store double %i.nl, ptr %i.nm, align 8, !tbaa !213
  %i.nn = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !214
  %i.np = zext i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = tail call ptr @opj_malloc(i64 noundef %i.nq) #15 ; 2 uses
  store ptr %i.nr, ptr %i.ng, align 8, !tbaa !215
  %.not252.not.i.i = icmp eq ptr %i.nr, null
  br i1 %.not252.not.i.i, label %opj_tcd_rate_allocate_encode.exit.thread104, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge321.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !214
  %.not343.i.i = icmp eq i32 %i.nt, 0
  br i1 %.not343.i.i, label %opj_tcd_rate_allocate_encode.exit, label %.lr.ph333.i.i

.lr.ph333.i.i:                                    ; preds = %bb.ag
  %i.nu = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %i.nv = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.nw = getelementptr inbounds nuw i8, ptr %i.it, i64 5200
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.is, i64 48 ; 7 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ob = fadd double %.0232.lcssa.i.i, %.0225.lcssa.i.i
  %i.oc = fmul double %i.ob, 5.000000e-01         ; 13 uses
  %i.od = fcmp une double %i.oc, 0.000000e+00
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i, %.lr.ph333.i.i
  %indvars.iv375.i.i = phi i64 [ 0, %.lr.ph333.i.i ], [ %indvars.iv.next376.i.i, %.critedge.i.i ] ; 14 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv375.i.i
  %i.of = load float, ptr %i.oe, align 4, !tbaa !174 ; 2 uses
  %i.og = fcmp ogt float %i.of, 0.000000e+00      ; 2 uses
  br i1 %i.og, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.oh = call float @llvm.ceil.f32(float %i.of)
  %i.oi = fptoui float %i.oh to i32
  %i.oj = call noundef i32 @llvm.umin.i32(i32 %i.oi, i32 %4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ok = phi i32 [ %i.oj, %bb.ai ], [ %4, %bb.ah ] ; 4 uses
  %i.ol = load double, ptr %i.nv, align 8, !tbaa !212
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv375.i.i
  %i.on = load float, ptr %i.om, align 4, !tbaa !174 ; 2 uses
  %i.oo = fdiv float %i.on, 1.000000e+01
  %i.op = fpext float %i.oo to double
  %i.oq = call double @pow(double noundef 1.000000e+01, double noundef %i.op) #15, !tbaa !3
  %i.or = fdiv double %.0241.lcssa.i.i, %i.oq
  %i.os = fsub double %i.ol, %i.or                ; 4 uses
  %i.ot = load i32, ptr %i.ip, align 4, !tbaa !31
  switch i32 %i.ot, label %.thread.i.i [
    i32 0, label %bb.ak
    i32 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.og, label %bb.am, label %.thread.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ou = fcmp ogt float %i.on, 0.000000e+00
  br i1 %i.ou, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ov = load ptr, ptr %i.nx, align 8, !tbaa !16
  %i.ow = call ptr @opj_t2_create(ptr noundef %i.ov, ptr noundef nonnull %i.in) #15 ; 6 uses
  %.not258.i.i = icmp eq ptr %i.ow, null
  br i1 %.not258.i.i, label %opj_tcd_rate_allocate_encode.exit.thread104, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.am
  %i.ox = add nuw nsw i64 %indvars.iv375.i.i, 1   ; 3 uses
  %i.oy = icmp eq i64 %indvars.iv375.i.i, 0       ; 4 uses
  %i.oz = trunc nuw i64 %indvars.iv375.i.i to i32 ; 2 uses
  %i.pa = add nuw nsw i64 %indvars.iv375.i.i, 4294967295
  %i.pb = and i64 %i.pa, 4294967295
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pb ; 4 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv375.i.i ; 4 uses
  br i1 %i.od, label %bb.an, label %.loopexit.i.i

bb.an:                                            ; preds = %.preheader.i.i
  %.val262.peel.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val262.val.peel.i.i = load ptr, ptr %.val262.peel.i.i, align 8, !tbaa !18
  %i.pe = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.peel.i.i, i32 noundef %i.oz, double noundef %i.oc, i32 noundef 0) ; 0 uses
  %i.pf = load i32, ptr %i.ip, align 4, !tbaa !31
  %i.pg = icmp eq i32 %i.pf, 1
  br i1 %i.pg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ph = load i32, ptr %i.g, align 8, !tbaa !160
  %i.pi = load i32, ptr %i.d, align 8, !tbaa !159
  %i.pj = load i32, ptr %0, align 8, !tbaa !32
  %i.pk = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.pl = trunc nuw i64 %i.ox to i32
  %i.pm = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.ph, ptr noundef nonnull %i.is, i32 noundef %i.pl, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.pi, i32 noundef %i.pj, i32 noundef %i.pk, i32 noundef 0, ptr noundef %7) #15
  %.not256.peel.i.i = icmp eq i32 %i.pm, 0
  br i1 %.not256.peel.i.i, label %.peel.next373.i.i, label %bb.az

bb.ap:                                            ; preds = %bb.an
  %i.pn = load i16, ptr %i.in, align 8, !tbaa !217 ; 2 uses
  %i.po = add i16 %i.pn, -3
  %or.cond260.peel.i.i = icmp ult i16 %i.po, 4
  %i.pp = add i16 %i.pn, -1024
  %or.cond261.peel.i.i = icmp ult i16 %i.pp, 1436
  %or.cond279.peel.i.i = or i1 %or.cond260.peel.i.i, %or.cond261.peel.i.i
  br i1 %or.cond279.peel.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.oy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pq = load double, ptr %i.pc, align 8, !tbaa !218
  %i.pr = load double, ptr %i.pd, align 8, !tbaa !218
  %i.ps = fadd double %i.pq, %i.pr
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.pt = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.pu = phi double [ %i.pt, %bb.as ], [ %i.ps, %bb.ar ]
  %i.pv = fcmp olt double %i.pu, %i.os
  br i1 %i.pv, label %.peel.next373.i.i, label %bb.az

bb.au:                                            ; preds = %bb.ap
  %i.pw = load i32, ptr %i.g, align 8, !tbaa !160
  %i.px = load i32, ptr %i.d, align 8, !tbaa !159
  %i.py = load i32, ptr %0, align 8, !tbaa !32
  %i.pz = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.qa = trunc nuw i64 %i.ox to i32
  %i.qb = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.pw, ptr noundef nonnull %i.is, i32 noundef %i.qa, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.px, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef 0, ptr noundef %7) #15
  %.not257.peel.i.i = icmp eq i32 %i.qb, 0
  br i1 %.not257.peel.i.i, label %.peel.next373.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.oy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qc = load double, ptr %i.pc, align 8, !tbaa !218
  %i.qd = load double, ptr %i.pd, align 8, !tbaa !218
  %i.qe = fadd double %i.qc, %i.qd
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.qf = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qg = phi double [ %i.qf, %bb.ax ], [ %i.qe, %bb.aw ]
  %i.qh = fcmp olt double %i.qg, %i.os
  br i1 %i.qh, label %.peel.next373.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at, %bb.ao
  %.1218.peel.i.i = phi double [ %i.oc, %bb.at ], [ %i.oc, %bb.ay ], [ %.0225.lcssa.i.i, %bb.ao ]
  %.1215.peel.i.i = phi double [ %.0232.lcssa.i.i, %bb.at ], [ %.0232.lcssa.i.i, %bb.ay ], [ %i.oc, %bb.ao ]
  %.1208.peel.i.i = phi double [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ay ], [ %i.oc, %bb.ao ]
  %.1199.peel.i.i = phi i32 [ 0, %bb.at ], [ 0, %bb.ay ], [ 1, %bb.ao ]
  br label %.peel.next373.i.i

.peel.next373.i.i:                                ; preds = %bb.az, %bb.ay, %bb.au, %bb.at, %bb.ao
  %.2219.ph.peel.i.i = phi double [ %i.oc, %bb.ao ], [ %.0225.lcssa.i.i, %bb.at ], [ %.0225.lcssa.i.i, %bb.ay ], [ %.1218.peel.i.i, %bb.az ], [ %i.oc, %bb.au ]
  %.2216.ph.peel.i.i = phi double [ %.0232.lcssa.i.i, %bb.ao ], [ %i.oc, %bb.at ], [ %i.oc, %bb.ay ], [ %.1215.peel.i.i, %bb.az ], [ %.0232.lcssa.i.i, %bb.au ]
  %.2209.ph.peel.i.i = phi double [ 0.000000e+00, %bb.ao ], [ %i.oc, %bb.at ], [ %i.oc, %bb.ay ], [ %.1208.peel.i.i, %bb.az ], [ 0.000000e+00, %bb.au ]
  %.2200.ph.peel.i.i = phi i32 [ 0, %bb.ao ], [ 0, %bb.at ], [ 0, %bb.ay ], [ %.1199.peel.i.i, %bb.az ], [ 0, %bb.au ]
  %i.qi = trunc nuw i64 %i.ox to i32              ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bq, %.peel.next373.i.i
  %.0198330.i.i = phi i32 [ %.2200.ph.peel.i.i, %.peel.next373.i.i ], [ %.2200.ph.i.i, %bb.bq ] ; 6 uses
  %.0201329.i.i = phi double [ %i.oc, %.peel.next373.i.i ], [ %i.qk, %bb.bq ] ; 3 uses
  %.0206328.i.i = phi i32 [ 1, %.peel.next373.i.i ], [ %i.rr, %bb.bq ]
  %.0207327.i.i = phi double [ %.2209.ph.peel.i.i, %.peel.next373.i.i ], [ %.2209.ph.i.i, %bb.bq ] ; 6 uses
  %.0214326.i.i = phi double [ %.2216.ph.peel.i.i, %.peel.next373.i.i ], [ %.2216.ph.i.i, %bb.bq ] ; 6 uses
  %.0217325.i.i = phi double [ %.2219.ph.peel.i.i, %.peel.next373.i.i ], [ %.2219.ph.i.i, %bb.bq ] ; 5 uses
  %i.qj = fadd double %.0214326.i.i, %.0217325.i.i
  %i.qk = fmul double %i.qj, 5.000000e-01         ; 17 uses
  %i.ql = fsub double %i.qk, %.0201329.i.i
  %i.qm = call double @llvm.fabs.f64(double %i.ql)
  %i.qn = fmul double %.0201329.i.i, 5.000000e-06
  %i.qo = fcmp ugt double %i.qm, %i.qn
  br i1 %i.qo, label %bb.bb, label %.loopexit.i.i

bb.bb:                                            ; preds = %bb.ba
  %.val262.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val262.val.i.i = load ptr, ptr %.val262.i.i, align 8, !tbaa !18
  %i.qp = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.i.i, i32 noundef %i.oz, double noundef %i.qk, i32 noundef 0)
  %8 = trunc nuw i32 %i.qp to i1                  ; 2 uses
  %i.qq = load i32, ptr %i.ip, align 4, !tbaa !31
  %i.qr = icmp eq i32 %i.qq, 1
  br i1 %i.qr, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.qs = load i16, ptr %i.in, align 8, !tbaa !217 ; 2 uses
  %i.qt = add i16 %i.qs, -3
  %or.cond260.i.i = icmp ult i16 %i.qt, 4
  %i.qu = add i16 %i.qs, -1024
  %or.cond261.i.i = icmp ult i16 %i.qu, 1436
  %or.cond279.i.i = or i1 %or.cond260.i.i, %or.cond261.i.i
  br i1 %or.cond279.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.qv = load i32, ptr %i.g, align 8, !tbaa !160
  %i.qw = load i32, ptr %i.d, align 8, !tbaa !159
  %i.qx = load i32, ptr %0, align 8, !tbaa !32
  %i.qy = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.qz = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.qv, ptr noundef %i.is, i32 noundef %i.qi, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.qw, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef 0, ptr noundef %7) #15
  %.not257.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not257.i.i, label %bb.bq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.oy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ra = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.rb = load double, ptr %i.pc, align 8, !tbaa !218
  %i.rc = load double, ptr %i.pd, align 8, !tbaa !218
  %i.rd = fadd double %i.rb, %i.rc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.re = phi double [ %i.ra, %bb.bf ], [ %i.rd, %bb.bg ]
  %i.rf = fcmp olt double %i.re, %i.os
  br i1 %i.rf, label %bb.bq, label %bb.bp

bb.bi:                                            ; preds = %bb.bc
  br i1 %i.oy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rg = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rh = load double, ptr %i.pc, align 8, !tbaa !218
  %i.ri = load double, ptr %i.pd, align 8, !tbaa !218
  %i.rj = fadd double %i.rh, %i.ri
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.rk = phi double [ %i.rg, %bb.bj ], [ %i.rj, %bb.bk ]
  %i.rl = fcmp olt double %i.rk, %i.os
  br i1 %i.rl, label %bb.bq, label %bb.bp

bb.bm:                                            ; preds = %bb.bb
  %9 = icmp eq i32 %.0198330.i.i, 0
  %or.cond.i.i = select i1 %8, i1 %9, i1 false
  br i1 %or.cond.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %8, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rm = load i32, ptr %i.g, align 8, !tbaa !160
  %i.rn = load i32, ptr %i.d, align 8, !tbaa !159
  %i.ro = load i32, ptr %0, align 8, !tbaa !32
  %i.rp = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.rq = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.rm, ptr noundef %i.is, i32 noundef %i.qi, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.rn, i32 noundef %i.ro, i32 noundef %i.rp, i32 noundef 0, ptr noundef %7) #15
  %.not256.i.i = icmp eq i32 %i.rq, 0
  br i1 %.not256.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bh
  %.1218.i.i = phi double [ %i.qk, %bb.bl ], [ %i.qk, %bb.bh ], [ %.0217325.i.i, %bb.bo ], [ %.0217325.i.i, %bb.bn ]
  %.1215.i.i = phi double [ %.0214326.i.i, %bb.bl ], [ %.0214326.i.i, %bb.bh ], [ %i.qk, %bb.bo ], [ %i.qk, %bb.bn ]
  %.1208.i.i = phi double [ %.0207327.i.i, %bb.bl ], [ %.0207327.i.i, %bb.bh ], [ %i.qk, %bb.bo ], [ %i.qk, %bb.bn ]
  %.1199.i.i = phi i32 [ %.0198330.i.i, %bb.bl ], [ %.0198330.i.i, %bb.bh ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bh, %bb.bd
  %.2219.ph.i.i = phi double [ %i.qk, %bb.bo ], [ %i.qk, %bb.bm ], [ %.0217325.i.i, %bb.bh ], [ %.1218.i.i, %bb.bp ], [ %i.qk, %bb.bd ], [ %.0217325.i.i, %bb.bl ]
  %.2216.ph.i.i = phi double [ %.0214326.i.i, %bb.bo ], [ %.0214326.i.i, %bb.bm ], [ %i.qk, %bb.bh ], [ %.1215.i.i, %bb.bp ], [ %.0214326.i.i, %bb.bd ], [ %i.qk, %bb.bl ]
  %.2209.ph.i.i = phi double [ %.0207327.i.i, %bb.bo ], [ %.0207327.i.i, %bb.bm ], [ %i.qk, %bb.bh ], [ %.1208.i.i, %bb.bp ], [ %.0207327.i.i, %bb.bd ], [ %i.qk, %bb.bl ] ; 2 uses
  %.2200.ph.i.i = phi i32 [ 0, %bb.bo ], [ 0, %bb.bm ], [ %.0198330.i.i, %bb.bh ], [ %.1199.i.i, %bb.bp ], [ %.0198330.i.i, %bb.bd ], [ %.0198330.i.i, %bb.bl ]
  %i.rr = add nuw nsw i32 %.0206328.i.i, 1        ; 2 uses
  %exitcond371.not.i.i = icmp eq i32 %i.rr, 128
  br i1 %exitcond371.not.i.i, label %.loopexit.i.i, label %bb.ba, !llvm.loop !219

.loopexit.i.i:                                    ; preds = %bb.bq, %bb.ba, %.preheader.i.i
  %.0207.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.2209.ph.i.i, %bb.bq ], [ %.0207327.i.i, %bb.ba ] ; 2 uses
  %.0201.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %i.qk, %bb.bq ], [ %.0201329.i.i, %bb.ba ]
  %i.rs = fcmp oeq double %.0207.lcssa.i.i, 0.000000e+00
  %i.rt = select i1 %i.rs, double %.0201.lcssa.i.i, double %.0207.lcssa.i.i
  call void @opj_t2_destroy(ptr noundef nonnull %i.ow) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.i.i, %bb.al, %bb.ak, %bb.aj
  %.1212.i.i = phi double [ %i.rt, %.loopexit.i.i ], [ -1.000000e+00, %bb.al ], [ -1.000000e+00, %bb.aj ], [ -1.000000e+00, %bb.ak ] ; 2 uses
  br i1 %.not, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread.i.i
  %i.ru = load ptr, ptr %i.oa, align 8, !tbaa !162
  %i.rv = load i32, ptr %i.g, align 8, !tbaa !160
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [608 x i8], ptr %i.ru, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !215
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv375.i.i
  store double %.1212.i.i, ptr %i.rz, align 8, !tbaa !218
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread.i.i
  %.val.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !18
  %i.sa = trunc nuw i64 %indvars.iv375.i.i to i32
  %i.sb = call fastcc i32 @opj_tcd_makelayer(ptr %.val.val.i.i, i32 noundef %i.sa, double noundef %.1212.i.i, i32 noundef 1) ; 0 uses
  %i.sc = icmp eq i64 %indvars.iv375.i.i, 0
  br i1 %i.sc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sd = load double, ptr %i.nz, align 8, !tbaa !218
  br label %.critedge.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.se = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  %i.sf = getelementptr i8, ptr %i.se, i64 -8
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !218
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv375.i.i
  %i.si = load double, ptr %i.sh, align 8, !tbaa !218
  %i.sj = fadd double %i.sg, %i.si
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bu, %bb.bt
  %i.sk = phi double [ %i.sd, %bb.bt ], [ %i.sj, %bb.bu ]
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  store double %i.sk, ptr %i.sl, align 8, !tbaa !218
  %indvars.iv.next376.i.i = add nuw nsw i64 %indvars.iv375.i.i, 1 ; 2 uses
  %i.sm = load i32, ptr %i.ns, align 8, !tbaa !214
  %i.sn = zext i32 %i.sm to i64
  %i.so = icmp samesign ult i64 %indvars.iv.next376.i.i, %i.sn
  br i1 %i.so, label %bb.ah, label %opj_tcd_rate_allocate_encode.exit, !llvm.loop !220

bb.bv:                                            ; preds = %bb.t
  %i.sp = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !214 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.sr, 0
  br i1 %.not.i14.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv
  %i.ss = load ptr, ptr %i.bp, align 8, !tbaa !7
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !18 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !30 ; 2 uses
  %.not180.i.i.i = icmp eq i32 %i.sv, 0
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count217.i.i.i = zext i32 %i.sv to i64 ; 2 uses
  %wide.trip.count192.i.i.i = zext i32 %i.sr to i64 ; 3 uses
  br i1 %.not180.i.i.i, label %.sink.split, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !25 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.in, i64 128 ; 2 uses
  br label %.lr.ph178.i.i.i

.lr.ph178.i.i.i:                                  ; preds = %opj_tcd_makelayer_fixed.exit.loopexit.i.i, %.lr.ph.split.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %indvars.iv.next.i16.i, %opj_tcd_makelayer_fixed.exit.loopexit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ta = icmp eq i64 %indvars.iv.i15.i, 0
  %invariant.gep171.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv.i15.i ; 2 uses
  %i.tb = add nuw nsw i64 %indvars.iv.i15.i, 4294967295
  %i.tc = and i64 %i.tb, 4294967295
  %invariant.gep.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %i.tc
  br i1 %i.ta, label %.preheader141.lr.ph.i.us.i.i, label %.preheader141.lr.ph.i.i.i

.preheader141.lr.ph.i.us.i.i:                     ; preds = %.lr.ph178.i.i.i, %._crit_edge170.i.us.i.i
  %indvars.iv214.i.us.i.i = phi i64 [ %indvars.iv.next215.i.us.i.i, %._crit_edge170.i.us.i.i ], [ 0, %.lr.ph178.i.i.i ] ; 3 uses
  %i.td = getelementptr inbounds nuw [112 x i8], ptr %i.sy, i64 %indvars.iv214.i.us.i.i ; 2 uses
  %.phi.trans.insert.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.td, i64 20
  %.pre.i.us.i.i = load i32, ptr %.phi.trans.insert.i.us.i.i, align 4, !tbaa !95 ; 5 uses
  %.not182.i.us.i.i = icmp eq i32 %.pre.i.us.i.i, 0
  br i1 %.not182.i.us.i.i, label %._crit_edge170.i.us.i.i, label %.preheader141.lr.ph.split.i.us.i.i

.preheader141.lr.ph.split.i.us.i.i:               ; preds = %.preheader141.lr.ph.i.us.i.i
  %i.te = load ptr, ptr %i.sz, align 8, !tbaa !31 ; 15 uses
  %i.tf = load ptr, ptr %i.sw, align 8, !tbaa !16
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !70
  %i.ti = getelementptr inbounds nuw [64 x i8], ptr %i.th, i64 %indvars.iv214.i.us.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !113 ; 2 uses
  %i.tl = uitofp i32 %i.tk to double
  %i.tm = fmul nnan double %i.tl, 6.250000e-02
  %i.tn = fptrunc nnan double %i.tm to float      ; 3 uses
  %wide.trip.count.i.us.i.i = zext i32 %.pre.i.us.i.i to i64 ; 5 uses
  %i.to = add nsw i64 %wide.trip.count.i.us.i.i, -1 ; 4 uses
  %i.tp = mul i32 %.pre.i.us.i.i, 3
  %i.tq = zext i32 %i.tp to i64
  %min.iters.check223 = icmp ult i32 %.pre.i.us.i.i, 13
  %i.tr = trunc i64 %i.to to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tr, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.ts = trunc i64 %i.to to i32
  %mul216 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ts, i32 3) ; 2 uses
  %mul.result217 = extractvalue { i32, i1 } %mul216, 0
  %mul.overflow218 = extractvalue { i32, i1 } %mul216, 1
  %i.tt = icmp ugt i64 %i.to, 4294967295
  %invariant.op286 = or i1 %mul.overflow218, %i.tt
  %i.tu = trunc i64 %i.to to i32
  %mul219 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tu, i32 3) ; 2 uses
  %mul.result220 = extractvalue { i32, i1 } %mul219, 0
  %mul.overflow221 = extractvalue { i32, i1 } %mul219, 1
  %n.mod.vf225 = and i64 %wide.trip.count.i.us.i.i, 3 ; 2 uses
  %i.tv = icmp eq i64 %n.mod.vf225, 0
  %i.tw = select i1 %i.tv, i64 4, i64 %n.mod.vf225
  %n.vec226 = sub nsw i64 %wide.trip.count.i.us.i.i, %i.tw ; 2 uses
  %broadcast.splatinsert227 = insertelement <4 x float> poison, float %i.tn, i64 0 ; 2 uses
  %broadcast.splat228 = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tx = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ty = insertelement <2 x float> poison, float %i.tn, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader141.i.us.i.i

.preheader141.i.us.i.i:                           ; preds = %._crit_edge.i.us.i.i, %.preheader141.lr.ph.split.i.us.i.i
  %indvars.iv189.i.us.i.i = phi i64 [ 0, %.preheader141.lr.ph.split.i.us.i.i ], [ %indvars.iv.next190.i.us.i.i, %._crit_edge.i.us.i.i ] ; 4 uses
  %i.ua = trunc nuw i64 %indvars.iv189.i.us.i.i to i32
  %i.ub = mul i32 %.pre.i.us.i.i, %i.ua           ; 5 uses
  %i.uc = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv189.i.us.i.i ; 2 uses
  br i1 %min.iters.check223, label %.preheader140.i.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader141.i.us.i.i
  %i.ud = mul i64 %indvars.iv189.i.us.i.i, %i.tq  ; 3 uses
  %i.ue = trunc i64 %i.ud to i32
  %i.uf = trunc i64 %i.ud to i32
  %i.ug = trunc i64 %i.ud to i32
  %i.uh = xor i32 %i.ug, -1
  %i.ui = icmp ugt i32 %mul.result, %i.uh
  %i.uj = or i1 %i.ui, %mul.overflow
  %i.uk = sub i32 -2, %i.uf
  %i.ul = icmp ult i32 %i.uk, %mul.result217
  %.reass287 = or i1 %i.ul, %invariant.op286
  %i.um = sub i32 -3, %i.ue
  %i.un = icmp ult i32 %i.um, %mul.result220
  %i.uo = or i1 %i.un, %mul.overflow221
  %i.up = or i1 %i.uj, %.reass287
  %i.uq = or i1 %i.uo, %i.up
  br i1 %i.uq, label %.preheader140.i.us.i.i.preheader, label %vector.body229

vector.body229:                                   ; preds = %vector.scevcheck, %vector.body229
  %index230 = phi i64 [ %index.next231, %vector.body229 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.ur = trunc i64 %index230 to i32              ; 4 uses
  %i.us = or disjoint i32 %i.ur, 1
  %i.ut = or disjoint i32 %i.ur, 2
  %i.uu = or disjoint i32 %i.ur, 3
  %i.uv = add i32 %i.ub, %i.ur
  %i.uw = add i32 %i.ub, %i.us
  %i.ux = add i32 %i.ub, %i.ut
  %i.uy = add i32 %i.ub, %i.uu
  %i.uz = mul i32 %i.uv, 3                        ; 3 uses
  %i.va = mul i32 %i.uw, 3                        ; 3 uses
  %i.vb = mul i32 %i.ux, 3                        ; 3 uses
end_hunk_0
