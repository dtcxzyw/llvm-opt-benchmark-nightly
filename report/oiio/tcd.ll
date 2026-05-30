inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_encode_tile:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !162
  %i.ni = load i32, ptr %i.g, align 8, !tbaa !160
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [608 x i8], ptr %i.nh, i64 %i.nj ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 560
  store i32 %i.nf, ptr %i.nl, align 8, !tbaa !211
  %i.nm = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !212
  %i.no = fptosi double %i.nn to i32
  %i.np = sitofp i32 %i.no to double
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 568
  store double %i.np, ptr %i.nq, align 8, !tbaa !213
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !214
  %i.nt = zext i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = tail call ptr @opj_malloc(i64 noundef %i.nu) #15 ; 2 uses
  store ptr %i.nv, ptr %i.nk, align 8, !tbaa !215
  %.not252.not.i.i = icmp eq ptr %i.nv, null
  br i1 %.not252.not.i.i, label %opj_tcd_rate_allocate_encode.exit.thread104, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge321.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !214
  %.not343.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not343.i.i, label %opj_tcd_rate_allocate_encode.exit, label %.lr.ph333.i.i

.lr.ph333.i.i:                                    ; preds = %bb.ag
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  %i.nz = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ix, i64 5200
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.iw, i64 48 ; 7 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.of = fadd double %.0232.lcssa.i.i, %.0225.lcssa.i.i
  %i.og = fmul double %i.of, 5.000000e-01         ; 13 uses
  %i.oh = fcmp une double %i.og, 0.000000e+00
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i, %.lr.ph333.i.i
  %indvars.iv375.i.i = phi i64 [ 0, %.lr.ph333.i.i ], [ %indvars.iv.next376.i.i, %.critedge.i.i ] ; 14 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv375.i.i
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !174 ; 2 uses
  %i.ok = fcmp ogt float %i.oj, 0.000000e+00      ; 2 uses
  br i1 %i.ok, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ol = call float @llvm.ceil.f32(float %i.oj)
  %i.om = fptoui float %i.ol to i32
  %i.on = call noundef i32 @llvm.umin.i32(i32 %i.om, i32 %4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.oo = phi i32 [ %i.on, %bb.ai ], [ %4, %bb.ah ] ; 4 uses
  %i.op = load double, ptr %i.nz, align 8, !tbaa !212
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv375.i.i
  %i.or = load float, ptr %i.oq, align 4, !tbaa !174 ; 2 uses
  %i.os = fdiv float %i.or, 1.000000e+01
  %i.ot = fpext float %i.os to double
  %i.ou = call double @pow(double noundef 1.000000e+01, double noundef %i.ot) #15, !tbaa !3
  %i.ov = fdiv double %.0241.lcssa.i.i, %i.ou
  %i.ow = fsub double %i.op, %i.ov                ; 4 uses
  %i.ox = load i32, ptr %i.it, align 4, !tbaa !31
  switch i32 %i.ox, label %.thread.i.i [
    i32 0, label %bb.ak
    i32 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ok, label %bb.am, label %.thread.i.i

bb.al:                                            ; preds = %bb.aj
  %i.oy = fcmp ogt float %i.or, 0.000000e+00
  br i1 %i.oy, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oz = load ptr, ptr %i.ob, align 8, !tbaa !16
  %i.pa = call ptr @opj_t2_create(ptr noundef %i.oz, ptr noundef nonnull %i.ir) #15 ; 6 uses
  %.not258.i.i = icmp eq ptr %i.pa, null
  br i1 %.not258.i.i, label %opj_tcd_rate_allocate_encode.exit.thread104, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.am
  %i.pb = add nuw nsw i64 %indvars.iv375.i.i, 1   ; 3 uses
  %i.pc = icmp eq i64 %indvars.iv375.i.i, 0       ; 4 uses
  %i.pd = trunc nuw i64 %indvars.iv375.i.i to i32 ; 2 uses
  %i.pe = add nuw nsw i64 %indvars.iv375.i.i, 4294967295
  %i.pf = and i64 %i.pe, 4294967295
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pf ; 4 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv375.i.i ; 4 uses
  br i1 %i.oh, label %bb.an, label %.loopexit.i.i

bb.an:                                            ; preds = %.preheader.i.i
  %.val262.peel.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val262.val.peel.i.i = load ptr, ptr %.val262.peel.i.i, align 8, !tbaa !18
  %i.pi = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.peel.i.i, i32 noundef %i.pd, double noundef %i.og, i32 noundef 0) ; 0 uses
  %i.pj = load i32, ptr %i.it, align 4, !tbaa !31
  %i.pk = icmp eq i32 %i.pj, 1
  br i1 %i.pk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pl = load i32, ptr %i.g, align 8, !tbaa !160
  %i.pm = load i32, ptr %i.d, align 8, !tbaa !159
  %i.pn = load i32, ptr %0, align 8, !tbaa !32
  %i.po = load i32, ptr %i.oc, align 8, !tbaa !216
  %i.pp = trunc nuw i64 %i.pb to i32
  %i.pq = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.pa, i32 noundef %i.pl, ptr noundef nonnull %i.iw, i32 noundef %i.pp, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.oo, ptr noundef %5, ptr noundef null, i32 noundef %i.pm, i32 noundef %i.pn, i32 noundef %i.po, i32 noundef 0, ptr noundef %7) #15
  %.not256.peel.i.i = icmp eq i32 %i.pq, 0
  br i1 %.not256.peel.i.i, label %.peel.next373.i.i, label %bb.az

bb.ap:                                            ; preds = %bb.an
  %i.pr = load i16, ptr %i.ir, align 8, !tbaa !217 ; 2 uses
  %i.ps = add i16 %i.pr, -3
  %or.cond260.peel.i.i = icmp ult i16 %i.ps, 4
  %i.pt = add i16 %i.pr, -1024
  %or.cond261.peel.i.i = icmp ult i16 %i.pt, 1436
  %or.cond279.peel.i.i = or i1 %or.cond260.peel.i.i, %or.cond261.peel.i.i
  br i1 %or.cond279.peel.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.pc, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pu = load double, ptr %i.pg, align 8, !tbaa !218
  %i.pv = load double, ptr %i.ph, align 8, !tbaa !218
  %i.pw = fadd double %i.pu, %i.pv
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.px = load double, ptr %i.od, align 8, !tbaa !218
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.py = phi double [ %i.px, %bb.as ], [ %i.pw, %bb.ar ]
  %i.pz = fcmp olt double %i.py, %i.ow
  br i1 %i.pz, label %.peel.next373.i.i, label %bb.az

bb.au:                                            ; preds = %bb.ap
  %i.qa = load i32, ptr %i.g, align 8, !tbaa !160
  %i.qb = load i32, ptr %i.d, align 8, !tbaa !159
  %i.qc = load i32, ptr %0, align 8, !tbaa !32
  %i.qd = load i32, ptr %i.oc, align 8, !tbaa !216
  %i.qe = trunc nuw i64 %i.pb to i32
  %i.qf = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.pa, i32 noundef %i.qa, ptr noundef nonnull %i.iw, i32 noundef %i.qe, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.oo, ptr noundef %5, ptr noundef null, i32 noundef %i.qb, i32 noundef %i.qc, i32 noundef %i.qd, i32 noundef 0, ptr noundef %7) #15
  %.not257.peel.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not257.peel.i.i, label %.peel.next373.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.pc, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qg = load double, ptr %i.pg, align 8, !tbaa !218
  %i.qh = load double, ptr %i.ph, align 8, !tbaa !218
  %i.qi = fadd double %i.qg, %i.qh
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.qj = load double, ptr %i.od, align 8, !tbaa !218
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qk = phi double [ %i.qj, %bb.ax ], [ %i.qi, %bb.aw ]
  %i.ql = fcmp olt double %i.qk, %i.ow
  br i1 %i.ql, label %.peel.next373.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at, %bb.ao
  %.1218.peel.i.i = phi double [ %i.og, %bb.at ], [ %i.og, %bb.ay ], [ %.0225.lcssa.i.i, %bb.ao ]
  %.1215.peel.i.i = phi double [ %.0232.lcssa.i.i, %bb.at ], [ %.0232.lcssa.i.i, %bb.ay ], [ %i.og, %bb.ao ]
  %.1208.peel.i.i = phi double [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ay ], [ %i.og, %bb.ao ]
  %.1199.peel.i.i = phi i32 [ 0, %bb.at ], [ 0, %bb.ay ], [ 1, %bb.ao ]
  br label %.peel.next373.i.i

.peel.next373.i.i:                                ; preds = %bb.az, %bb.ay, %bb.au, %bb.at, %bb.ao
  %.2219.ph.peel.i.i = phi double [ %i.og, %bb.ao ], [ %.0225.lcssa.i.i, %bb.at ], [ %.0225.lcssa.i.i, %bb.ay ], [ %.1218.peel.i.i, %bb.az ], [ %i.og, %bb.au ]
  %.2216.ph.peel.i.i = phi double [ %.0232.lcssa.i.i, %bb.ao ], [ %i.og, %bb.at ], [ %i.og, %bb.ay ], [ %.1215.peel.i.i, %bb.az ], [ %.0232.lcssa.i.i, %bb.au ]
  %.2209.ph.peel.i.i = phi double [ 0.000000e+00, %bb.ao ], [ %i.og, %bb.at ], [ %i.og, %bb.ay ], [ %.1208.peel.i.i, %bb.az ], [ 0.000000e+00, %bb.au ]
  %.2200.ph.peel.i.i = phi i32 [ 0, %bb.ao ], [ 0, %bb.at ], [ 0, %bb.ay ], [ %.1199.peel.i.i, %bb.az ], [ 0, %bb.au ]
  %i.qm = trunc nuw i64 %i.pb to i32              ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bq, %.peel.next373.i.i
  %.0198330.i.i = phi i32 [ %.2200.ph.peel.i.i, %.peel.next373.i.i ], [ %.2200.ph.i.i, %bb.bq ] ; 6 uses
  %.0201329.i.i = phi double [ %i.og, %.peel.next373.i.i ], [ %i.qo, %bb.bq ] ; 3 uses
  %.0206328.i.i = phi i32 [ 1, %.peel.next373.i.i ], [ %i.rv, %bb.bq ]
  %.0207327.i.i = phi double [ %.2209.ph.peel.i.i, %.peel.next373.i.i ], [ %.2209.ph.i.i, %bb.bq ] ; 6 uses
  %.0214326.i.i = phi double [ %.2216.ph.peel.i.i, %.peel.next373.i.i ], [ %.2216.ph.i.i, %bb.bq ] ; 6 uses
  %.0217325.i.i = phi double [ %.2219.ph.peel.i.i, %.peel.next373.i.i ], [ %.2219.ph.i.i, %bb.bq ] ; 5 uses
  %i.qn = fadd double %.0214326.i.i, %.0217325.i.i
  %i.qo = fmul double %i.qn, 5.000000e-01         ; 17 uses
  %i.qp = fsub double %i.qo, %.0201329.i.i
  %i.qq = call double @llvm.fabs.f64(double %i.qp)
  %i.qr = fmul double %.0201329.i.i, 5.000000e-06
  %i.qs = fcmp ugt double %i.qq, %i.qr
  br i1 %i.qs, label %bb.bb, label %.loopexit.i.i

bb.bb:                                            ; preds = %bb.ba
  %.val262.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val262.val.i.i = load ptr, ptr %.val262.i.i, align 8, !tbaa !18
  %i.qt = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.i.i, i32 noundef %i.pd, double noundef %i.qo, i32 noundef 0)
  %8 = trunc nuw i32 %i.qt to i1                  ; 2 uses
  %i.qu = load i32, ptr %i.it, align 4, !tbaa !31
  %i.qv = icmp eq i32 %i.qu, 1
  br i1 %i.qv, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.qw = load i16, ptr %i.ir, align 8, !tbaa !217 ; 2 uses
  %i.qx = add i16 %i.qw, -3
  %or.cond260.i.i = icmp ult i16 %i.qx, 4
  %i.qy = add i16 %i.qw, -1024
  %or.cond261.i.i = icmp ult i16 %i.qy, 1436
  %or.cond279.i.i = or i1 %or.cond260.i.i, %or.cond261.i.i
  br i1 %or.cond279.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.qz = load i32, ptr %i.g, align 8, !tbaa !160
  %i.ra = load i32, ptr %i.d, align 8, !tbaa !159
  %i.rb = load i32, ptr %0, align 8, !tbaa !32
  %i.rc = load i32, ptr %i.oc, align 8, !tbaa !216
  %i.rd = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.pa, i32 noundef %i.qz, ptr noundef %i.iw, i32 noundef %i.qm, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.oo, ptr noundef %5, ptr noundef null, i32 noundef %i.ra, i32 noundef %i.rb, i32 noundef %i.rc, i32 noundef 0, ptr noundef %7) #15
  %.not257.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not257.i.i, label %bb.bq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.pc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.re = load double, ptr %i.od, align 8, !tbaa !218
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.rf = load double, ptr %i.pg, align 8, !tbaa !218
  %i.rg = load double, ptr %i.ph, align 8, !tbaa !218
  %i.rh = fadd double %i.rf, %i.rg
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ri = phi double [ %i.re, %bb.bf ], [ %i.rh, %bb.bg ]
  %i.rj = fcmp olt double %i.ri, %i.ow
  br i1 %i.rj, label %bb.bq, label %bb.bp

bb.bi:                                            ; preds = %bb.bc
  br i1 %i.pc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rk = load double, ptr %i.od, align 8, !tbaa !218
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rl = load double, ptr %i.pg, align 8, !tbaa !218
  %i.rm = load double, ptr %i.ph, align 8, !tbaa !218
  %i.rn = fadd double %i.rl, %i.rm
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ro = phi double [ %i.rk, %bb.bj ], [ %i.rn, %bb.bk ]
  %i.rp = fcmp olt double %i.ro, %i.ow
  br i1 %i.rp, label %bb.bq, label %bb.bp

bb.bm:                                            ; preds = %bb.bb
  %9 = icmp eq i32 %.0198330.i.i, 0
  %or.cond.i.i = select i1 %8, i1 %9, i1 false
  br i1 %or.cond.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %8, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rq = load i32, ptr %i.g, align 8, !tbaa !160
  %i.rr = load i32, ptr %i.d, align 8, !tbaa !159
  %i.rs = load i32, ptr %0, align 8, !tbaa !32
  %i.rt = load i32, ptr %i.oc, align 8, !tbaa !216
  %i.ru = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.pa, i32 noundef %i.rq, ptr noundef %i.iw, i32 noundef %i.qm, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.oo, ptr noundef %5, ptr noundef null, i32 noundef %i.rr, i32 noundef %i.rs, i32 noundef %i.rt, i32 noundef 0, ptr noundef %7) #15
  %.not256.i.i = icmp eq i32 %i.ru, 0
  br i1 %.not256.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bh
  %.1218.i.i = phi double [ %i.qo, %bb.bl ], [ %i.qo, %bb.bh ], [ %.0217325.i.i, %bb.bo ], [ %.0217325.i.i, %bb.bn ]
  %.1215.i.i = phi double [ %.0214326.i.i, %bb.bl ], [ %.0214326.i.i, %bb.bh ], [ %i.qo, %bb.bo ], [ %i.qo, %bb.bn ]
  %.1208.i.i = phi double [ %.0207327.i.i, %bb.bl ], [ %.0207327.i.i, %bb.bh ], [ %i.qo, %bb.bo ], [ %i.qo, %bb.bn ]
  %.1199.i.i = phi i32 [ %.0198330.i.i, %bb.bl ], [ %.0198330.i.i, %bb.bh ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bh, %bb.bd
  %.2219.ph.i.i = phi double [ %i.qo, %bb.bo ], [ %i.qo, %bb.bm ], [ %.0217325.i.i, %bb.bh ], [ %.1218.i.i, %bb.bp ], [ %i.qo, %bb.bd ], [ %.0217325.i.i, %bb.bl ]
  %.2216.ph.i.i = phi double [ %.0214326.i.i, %bb.bo ], [ %.0214326.i.i, %bb.bm ], [ %i.qo, %bb.bh ], [ %.1215.i.i, %bb.bp ], [ %.0214326.i.i, %bb.bd ], [ %i.qo, %bb.bl ]
  %.2209.ph.i.i = phi double [ %.0207327.i.i, %bb.bo ], [ %.0207327.i.i, %bb.bm ], [ %i.qo, %bb.bh ], [ %.1208.i.i, %bb.bp ], [ %.0207327.i.i, %bb.bd ], [ %i.qo, %bb.bl ] ; 2 uses
  %.2200.ph.i.i = phi i32 [ 0, %bb.bo ], [ 0, %bb.bm ], [ %.0198330.i.i, %bb.bh ], [ %.1199.i.i, %bb.bp ], [ %.0198330.i.i, %bb.bd ], [ %.0198330.i.i, %bb.bl ]
  %i.rv = add nuw nsw i32 %.0206328.i.i, 1        ; 2 uses
  %exitcond371.not.i.i = icmp eq i32 %i.rv, 128
  br i1 %exitcond371.not.i.i, label %.loopexit.i.i, label %bb.ba, !llvm.loop !219

.loopexit.i.i:                                    ; preds = %bb.bq, %bb.ba, %.preheader.i.i
  %.0207.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.2209.ph.i.i, %bb.bq ], [ %.0207327.i.i, %bb.ba ] ; 2 uses
  %.0201.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %i.qo, %bb.bq ], [ %.0201329.i.i, %bb.ba ]
  %i.rw = fcmp oeq double %.0207.lcssa.i.i, 0.000000e+00
  %i.rx = select i1 %i.rw, double %.0201.lcssa.i.i, double %.0207.lcssa.i.i
  call void @opj_t2_destroy(ptr noundef nonnull %i.pa) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.i.i, %bb.al, %bb.ak, %bb.aj
  %.1212.i.i = phi double [ %i.rx, %.loopexit.i.i ], [ -1.000000e+00, %bb.al ], [ -1.000000e+00, %bb.aj ], [ -1.000000e+00, %bb.ak ] ; 2 uses
  br i1 %.not, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread.i.i
  %i.ry = load ptr, ptr %i.oe, align 8, !tbaa !162
  %i.rz = load i32, ptr %i.g, align 8, !tbaa !160
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [608 x i8], ptr %i.ry, i64 %i.sa
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !215
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv375.i.i
  store double %.1212.i.i, ptr %i.sd, align 8, !tbaa !218
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread.i.i
  %.val.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !18
  %i.se = trunc nuw i64 %indvars.iv375.i.i to i32
  %i.sf = call fastcc i32 @opj_tcd_makelayer(ptr %.val.val.i.i, i32 noundef %i.se, double noundef %.1212.i.i, i32 noundef 1) ; 0 uses
  %i.sg = icmp eq i64 %indvars.iv375.i.i, 0
  br i1 %i.sg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sh = load double, ptr %i.od, align 8, !tbaa !218
  br label %.critedge.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.si = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  %i.sj = getelementptr i8, ptr %i.si, i64 -8
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !218
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv375.i.i
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !218
  %i.sn = fadd double %i.sk, %i.sm
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bu, %bb.bt
  %i.so = phi double [ %i.sh, %bb.bt ], [ %i.sn, %bb.bu ]
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  store double %i.so, ptr %i.sp, align 8, !tbaa !218
  %indvars.iv.next376.i.i = add nuw nsw i64 %indvars.iv375.i.i, 1 ; 2 uses
  %i.sq = load i32, ptr %i.nw, align 8, !tbaa !214
  %i.sr = zext i32 %i.sq to i64
  %i.ss = icmp samesign ult i64 %indvars.iv.next376.i.i, %i.sr
  br i1 %i.ss, label %bb.ah, label %opj_tcd_rate_allocate_encode.exit, !llvm.loop !220

bb.bv:                                            ; preds = %bb.t
  %i.st = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !214 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.sv, 0
  br i1 %.not.i14.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv
  %i.sw = load ptr, ptr %i.bp, align 8, !tbaa !7
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !18 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !30 ; 2 uses
  %.not178.i.i.i = icmp eq i32 %i.sz, 0
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count216.i.i.i = zext i32 %i.sz to i64 ; 2 uses
  %wide.trip.count191.i.i.i = zext i32 %i.sv to i64 ; 3 uses
  br i1 %.not178.i.i.i, label %.sink.split, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !25 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ir, i64 128 ; 2 uses
  br label %.lr.ph176.i.i.i

.lr.ph176.i.i.i:                                  ; preds = %opj_tcd_makelayer_fixed.exit.loopexit.i.i, %.lr.ph.split.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %indvars.iv.next.i16.i, %opj_tcd_makelayer_fixed.exit.loopexit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.te = icmp eq i64 %indvars.iv.i15.i, 0
  %invariant.gep169.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv.i15.i ; 2 uses
  %i.tf = add nuw nsw i64 %indvars.iv.i15.i, 4294967295
  %i.tg = and i64 %i.tf, 4294967295
  %invariant.gep.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %i.tg
  br i1 %i.te, label %.preheader141.lr.ph.i.us.i.i, label %.preheader141.lr.ph.i.i.i

.preheader141.lr.ph.i.us.i.i:                     ; preds = %.lr.ph176.i.i.i, %._crit_edge168.i.us.i.i
  %indvars.iv213.i.us.i.i = phi i64 [ %indvars.iv.next214.i.us.i.i, %._crit_edge168.i.us.i.i ], [ 0, %.lr.ph176.i.i.i ] ; 3 uses
  %i.th = getelementptr inbounds nuw [112 x i8], ptr %i.tc, i64 %indvars.iv213.i.us.i.i ; 2 uses
  %.phi.trans.insert.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  %.pre.i.us.i.i = load i32, ptr %.phi.trans.insert.i.us.i.i, align 4, !tbaa !95 ; 5 uses
  %.not180.i.us.i.i = icmp eq i32 %.pre.i.us.i.i, 0
  br i1 %.not180.i.us.i.i, label %._crit_edge168.i.us.i.i, label %.preheader141.lr.ph.split.us.i.us.i.i

.preheader141.lr.ph.split.us.i.us.i.i:            ; preds = %.preheader141.lr.ph.i.us.i.i
  %i.ti = load ptr, ptr %i.td, align 8, !tbaa !31 ; 15 uses
  %i.tj = load ptr, ptr %i.ta, align 8, !tbaa !16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !70
  %i.tm = getelementptr inbounds nuw [64 x i8], ptr %i.tl, i64 %indvars.iv213.i.us.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !113 ; 2 uses
  %i.tp = uitofp i32 %i.to to double
  %i.tq = fmul nnan double %i.tp, 6.250000e-02
  %i.tr = fptrunc nnan double %i.tq to float      ; 3 uses
  %wide.trip.count.i.us.i.i = zext i32 %.pre.i.us.i.i to i64 ; 5 uses
  %i.ts = add nsw i64 %wide.trip.count.i.us.i.i, -1 ; 4 uses
  %i.tt = mul i32 %.pre.i.us.i.i, 3
  %i.tu = zext i32 %i.tt to i64
  %min.iters.check239 = icmp ult i32 %.pre.i.us.i.i, 13
  %i.tv = trunc i64 %i.ts to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tv, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.tw = trunc i64 %i.ts to i32
  %mul232 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tw, i32 3) ; 2 uses
  %mul.result233 = extractvalue { i32, i1 } %mul232, 0
  %mul.overflow234 = extractvalue { i32, i1 } %mul232, 1
  %i.tx = icmp ugt i64 %i.ts, 4294967295
  %invariant.op298 = or i1 %mul.overflow234, %i.tx
  %i.ty = trunc i64 %i.ts to i32
  %mul235 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ty, i32 3) ; 2 uses
  %mul.result236 = extractvalue { i32, i1 } %mul235, 0
  %mul.overflow237 = extractvalue { i32, i1 } %mul235, 1
  %n.mod.vf241 = and i64 %wide.trip.count.i.us.i.i, 3 ; 2 uses
  %i.tz = icmp eq i64 %n.mod.vf241, 0
  %i.ua = select i1 %i.tz, i64 4, i64 %n.mod.vf241
  %n.vec242 = sub nsw i64 %wide.trip.count.i.us.i.i, %i.ua ; 2 uses
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %i.tr, i64 0 ; 2 uses
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ub = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <8 x i32> zeroinitializer
  %i.uc = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.ud = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader141.us.i.us.i.i

.preheader141.us.i.us.i.i:                        ; preds = %._crit_edge.us.i.us.i.i, %.preheader141.lr.ph.split.us.i.us.i.i
  %indvars.iv188.i.us.i.i = phi i64 [ %indvars.iv.next189.i.us.i.i, %._crit_edge.us.i.us.i.i ], [ 0, %.preheader141.lr.ph.split.us.i.us.i.i ] ; 4 uses
  %i.ue = trunc nuw i64 %indvars.iv188.i.us.i.i to i32
  %i.uf = mul i32 %.pre.i.us.i.i, %i.ue           ; 5 uses
  %i.ug = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv188.i.us.i.i ; 2 uses
  br i1 %min.iters.check239, label %.preheader140.us.i.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader141.us.i.us.i.i
  %i.uh = mul i64 %indvars.iv188.i.us.i.i, %i.tu  ; 3 uses
  %i.ui = trunc i64 %i.uh to i32
  %i.uj = trunc i64 %i.uh to i32
  %i.uk = trunc i64 %i.uh to i32
  %i.ul = xor i32 %i.uk, -1
  %i.um = icmp ugt i32 %mul.result, %i.ul
  %i.un = or i1 %i.um, %mul.overflow
  %i.uo = sub i32 -2, %i.uj
  %i.up = icmp ult i32 %i.uo, %mul.result233
  %.reass299 = or i1 %i.up, %invariant.op298
  %i.uq = sub i32 -3, %i.ui
  %i.ur = icmp ult i32 %i.uq, %mul.result236
  %i.us = or i1 %i.ur, %mul.overflow237
  %i.ut = or i1 %i.un, %.reass299
  %i.uu = or i1 %i.us, %i.ut
  br i1 %i.uu, label %.preheader140.us.i.us.i.i.preheader, label %vector.body245

vector.body245:                                   ; preds = %vector.scevcheck, %vector.body245
  %index246 = phi i64 [ %index.next247, %vector.body245 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.uv = trunc i64 %index246 to i32              ; 4 uses
  %i.uw = or disjoint i32 %i.uv, 1
  %i.ux = or disjoint i32 %i.uv, 2
  %i.uy = or disjoint i32 %i.uv, 3
  %i.uz = add i32 %i.uf, %i.uv
  %i.va = add i32 %i.uf, %i.uw
  %i.vb = add i32 %i.uf, %i.ux
  %i.vc = add i32 %i.uf, %i.uy
  %i.vd = mul i32 %i.uz, 3                        ; 3 uses
  %i.ve = mul i32 %i.va, 3                        ; 3 uses
  %i.vf = mul i32 %i.vb, 3                        ; 3 uses
end_hunk_0
