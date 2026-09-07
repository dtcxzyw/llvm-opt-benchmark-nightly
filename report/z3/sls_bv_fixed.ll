Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_bv_fixed?download=true
inline.NumInlined: 758
inline.NumDeleted: 231
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3sls8bv_fixed9set_fixedEP4expr:bb.a
  %i.lb = or i32 %i.la, %i.kv
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !30
  %.neg.i.i276 = sext i1 %i.kx to i32
  %i.lc = load ptr, ptr %i.en, align 8, !tbaa !64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.kd ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !30 ; 2 uses
  %i.lf = xor i32 %i.le, %.neg.i.i276
  %i.lg = and i32 %i.lf, %i.kv
  %i.lh = xor i32 %i.lg, %i.le
  store i32 %i.lh, ptr %i.ld, align 4, !tbaa !30
  br label %.critedge271

.critedge271:                                     ; preds = %bb.z, %.preheader, %.critedge3
  %.1258331 = phi i1 [ true, %.critedge3 ], [ false, %.preheader ], [ false, %bb.z ]
  %i.li = add nuw i32 %.0256409, 1                ; 2 uses
  %i.lj = load i32, ptr %i.ei, align 8, !tbaa !144
  %i.lk = icmp ult i32 %i.li, %i.lj
  br i1 %i.lk, label %.preheader, label %_ZNK3app13get_decl_kindEv.exit.thread, !llvm.loop !131

bb.aa:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !62
  %i.ln = icmp eq i32 %i.lm, 2
  br i1 %i.ln, label %bb.ab, label %.preheader326

.preheader326:                                    ; preds = %bb.aa
  %i.lo = getelementptr inbounds nuw i8, ptr %i.cj, i64 152 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !144
  %.not428 = icmp eq i32 %i.lp, 0
  br i1 %.not428, label %_ZNK3app13get_decl_kindEv.exit.thread, label %.preheader325.lr.ph

.preheader325.lr.ph:                              ; preds = %.preheader326
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.ls = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  br label %.preheader325

bb.ab:                                            ; preds = %bb.aa
  %i.lt = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !28, !align !29
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !31
  %i.lw = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.lt, ptr noundef %i.lv) ; 3 uses
  %i.lx = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !28, !align !29
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !31
  %i.ma = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.lx, ptr noundef %i.lz) ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !144 ; 9 uses
  %.not429 = icmp eq i32 %i.mc, 0
  br i1 %.not429, label %.loopexit324, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 72
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph357, %bb.ad
  %.0300355 = phi i32 [ 0, %.lr.ph357 ], [ %i.mm, %bb.ad ] ; 4 uses
  %i.mf = lshr i32 %.0300355, 5
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !30
  %i.mj = and i32 %.0300355, 31
  %i.mk = shl nuw i32 1, %i.mj
  %i.ml = and i32 %i.mi, %i.mk
  %.not306 = icmp eq i32 %i.ml, 0
  br i1 %.not306, label %.lr.ph366, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mm = add nuw i32 %.0300355, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.mm, %i.mc
  br i1 %exitcond.not, label %.lr.ph366, label %bb.ac, !llvm.loop !132

.lr.ph366:                                        ; preds = %bb.ad, %bb.ac
  %.0300.lcssa515 = phi i32 [ %.0300355, %bb.ac ], [ %i.mc, %bb.ad ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ma, i64 72
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph366, %bb.af
  %.0299364 = phi i32 [ 0, %.lr.ph366 ], [ %i.mw, %bb.af ] ; 4 uses
  %i.mp = lshr i32 %.0299364, 5
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !30
  %i.mt = and i32 %.0299364, 31
  %i.mu = shl nuw i32 1, %i.mt
  %i.mv = and i32 %i.ms, %i.mu
  %.not307 = icmp eq i32 %i.mv, 0
  br i1 %.not307, label %.lr.ph373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mw = add nuw i32 %.0299364, 1                ; 2 uses
  %exitcond454.not = icmp eq i32 %i.mw, %i.mc
  br i1 %exitcond454.not, label %.lr.ph373, label %bb.ae, !llvm.loop !133

.lr.ph373:                                        ; preds = %bb.af, %bb.ae
  %.0299.lcssa524 = phi i32 [ %.0299364, %bb.ae ], [ %i.mc, %bb.af ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lw, i64 72
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph373, %bb.ai
  %.0254371 = phi i32 [ 0, %.lr.ph373 ], [ %i.nk, %bb.ai ] ; 5 uses
  %i.mz = lshr i32 %.0254371, 5
  %i.na = zext nneg i32 %i.mz to i64              ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !30
  %i.nd = and i32 %.0254371, 31
  %i.ne = shl nuw i32 1, %i.nd                    ; 2 uses
  %i.nf = and i32 %i.nc, %i.ne
  %.not308 = icmp eq i32 %i.nf, 0
  br i1 %.not308, label %.lr.ph382, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ng = load ptr, ptr %i.lw, align 8, !tbaa !64
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.na
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !30
  %i.nj = and i32 %i.ni, %i.ne
  %.not309 = icmp eq i32 %i.nj, 0
  br i1 %.not309, label %bb.ai, label %.lr.ph382

bb.ai:                                            ; preds = %bb.ah
  %i.nk = add nuw i32 %.0254371, 1                ; 2 uses
  %exitcond455.not = icmp eq i32 %i.nk, %i.mc
  br i1 %exitcond455.not, label %.lr.ph382, label %bb.ag, !llvm.loop !134

.lr.ph382:                                        ; preds = %bb.ai, %bb.ag, %bb.ah
  %.0254.lcssa537 = phi i32 [ %.0254371, %bb.ag ], [ %.0254371, %bb.ah ], [ %i.mc, %bb.ai ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ma, i64 72
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph382, %bb.al
  %.0253380 = phi i32 [ 0, %.lr.ph382 ], [ %i.ny, %bb.al ] ; 5 uses
  %i.nn = lshr i32 %.0253380, 5
  %i.no = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !30
  %i.nr = and i32 %.0253380, 31
  %i.ns = shl nuw i32 1, %i.nr                    ; 2 uses
  %i.nt = and i32 %i.nq, %i.ns
  %.not310 = icmp eq i32 %i.nt, 0
  br i1 %.not310, label %._crit_edge398, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nu = load ptr, ptr %i.ma, align 8, !tbaa !64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.no
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !30
  %i.nx = and i32 %i.nw, %i.ns
  %.not311 = icmp eq i32 %i.nx, 0
  br i1 %.not311, label %bb.al, label %._crit_edge398

bb.al:                                            ; preds = %bb.ak
  %i.ny = add nuw i32 %.0253380, 1                ; 2 uses
  %exitcond456.not = icmp eq i32 %i.ny, %i.mc
  br i1 %exitcond456.not, label %._crit_edge398, label %bb.aj, !llvm.loop !135

._crit_edge398:                                   ; preds = %bb.al, %bb.ak, %bb.aj
  %.0253.lcssa545559 = phi i32 [ %i.mc, %bb.al ], [ %.0253380, %bb.aj ], [ %.0253380, %bb.ak ] ; 2 uses
  %i.nz = icmp ne i32 %.0300.lcssa515, 0
  %i.oa = icmp ne i32 %.0299.lcssa524, 0
  %or.cond = and i1 %i.nz, %i.oa
  br i1 %or.cond, label %.preheader323, label %.loopexit324

.preheader323:                                    ; preds = %._crit_edge398
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.0300.lcssa515, i32 %.0299.lcssa524)
  %i.ob = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !64
  br label %bb.am

bb.am:                                            ; preds = %.preheader323, %bb.am
  %.0250401 = phi i32 [ 0, %.preheader323 ], [ %i.ow, %bb.am ] ; 3 uses
  %i.og = lshr i32 %.0250401, 5
  %i.oh = zext nneg i32 %i.og to i64              ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !30
  %i.ok = and i32 %.0250401, 31
  %i.ol = shl nuw i32 1, %i.ok                    ; 3 uses
  %i.om = and i32 %i.oj, %i.ol
  %i.on = icmp ne i32 %i.om, 0
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.oh ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !30
  %i.oq = or i32 %i.op, %i.ol
  store i32 %i.oq, ptr %i.oo, align 4, !tbaa !30
  %.neg.i.i277 = sext i1 %i.on to i32
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oh ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !30 ; 2 uses
  %i.ot = xor i32 %i.os, %.neg.i.i277
  %i.ou = and i32 %i.ot, %i.ol
  %i.ov = xor i32 %i.ou, %i.os
  store i32 %i.ov, ptr %i.or, align 4, !tbaa !30
  %i.ow = add nuw i32 %.0250401, 1                ; 2 uses
  %exitcond459.not = icmp eq i32 %i.ow, %.sroa.speculated
  br i1 %exitcond459.not, label %.loopexit324, label %bb.am, !llvm.loop !136

.loopexit324:                                     ; preds = %bb.am, %bb.ab, %._crit_edge398
  %.0253.lcssa545559578 = phi i32 [ %.0253.lcssa545559, %._crit_edge398 ], [ 0, %bb.ab ], [ %.0253.lcssa545559, %bb.am ] ; 2 uses
  %.0254.lcssa530542562577 = phi i32 [ %.0254.lcssa537, %._crit_edge398 ], [ 0, %bb.ab ], [ %.0254.lcssa537, %bb.am ] ; 2 uses
  %i.ox = or i32 %.0253.lcssa545559578, %.0254.lcssa530542562577
  %or.cond6.not = icmp eq i32 %i.ox, 0
  br i1 %or.cond6.not, label %_ZNK3app13get_decl_kindEv.exit.thread, label %.preheader321

.preheader321:                                    ; preds = %.loopexit324
  %i.oy = add i32 %.0253.lcssa545559578, %.0254.lcssa530542562577 ; 5 uses
  %.not435 = icmp eq i32 %i.oy, 0
  br i1 %.not435, label %_ZNK3app13get_decl_kindEv.exit.thread, label %.lr.ph403

.lr.ph403:                                        ; preds = %.preheader321
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !64 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !64 ; 3 uses
  %xtraiter = and i32 %i.oy, 1
  %i.pd = icmp eq i32 %i.oy, 1
  br i1 %i.pd, label %.epil.preheader, label %.lr.ph403.new

.lr.ph403.new:                                    ; preds = %.lr.ph403
  %unroll_iter = and i32 %i.oy, -2
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph403.new
  %.0249402 = phi i32 [ 0, %.lr.ph403.new ], [ %i.qa, %bb.an ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph403.new ], [ %niter.next.1, %bb.an ]
  %i.pe = lshr i32 %.0249402, 5
  %i.pf = zext nneg i32 %i.pe to i64              ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pf ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !30
  %i.pi = and i32 %.0249402, 30
  %i.pj = shl nuw nsw i32 1, %i.pi                ; 2 uses
  %i.pk = or i32 %i.ph, %i.pj
  store i32 %i.pk, ptr %i.pg, align 4, !tbaa !30
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pf ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !30
  %i.pn = xor i32 %i.pj, -1
  %i.po = and i32 %i.pm, %i.pn
  store i32 %i.po, ptr %i.pl, align 4, !tbaa !30
  %i.pp = lshr i32 %.0249402, 5
  %i.pq = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !30
  %i.pt = and i32 %.0249402, 30
  %i.pu = shl nuw i32 2, %i.pt                    ; 2 uses
  %i.pv = or i32 %i.ps, %i.pu
  store i32 %i.pv, ptr %i.pr, align 4, !tbaa !30
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pq ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !30
  %i.py = xor i32 %i.pu, -1
  %i.pz = and i32 %i.px, %i.py
  store i32 %i.pz, ptr %i.pw, align 4, !tbaa !30
  %i.qa = add nuw i32 %.0249402, 2                ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3app13get_decl_kindEv.exit.thread.loopexit607.unr-lcssa, label %bb.an, !llvm.loop !137

.preheader325:                                    ; preds = %.preheader325.lr.ph, %.critedge272
  %.0246353 = phi i32 [ 0, %.preheader325.lr.ph ], [ %i.rh, %.critedge272 ] ; 3 uses
  %.0247352 = phi i1 [ true, %.preheader325.lr.ph ], [ %.1248333, %.critedge272 ]
  br i1 %.0247352, label %.lr.ph350, label %.critedge272

.lr.ph350:                                        ; preds = %.preheader325
  %i.qb = lshr i32 %.0246353, 5
  %i.qc = zext nneg i32 %i.qb to i64              ; 4 uses
  %i.qd = and i32 %.0246353, 31                   ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph350, %bb.ap
  %indvars.iv451 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next452, %bb.ap ] ; 3 uses
  %i.qe = load i32, ptr %i.ll, align 8, !tbaa !62
  %i.qf = zext i32 %i.qe to i64
  %i.qg = icmp samesign ult i64 %indvars.iv451, %i.qf
  br i1 %i.qg, label %bb.ap, label %.critedge8

bb.ap:                                            ; preds = %bb.ao
  %i.qh = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !28, !align !29
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv451
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !31
  %i.qk = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.qh, ptr noundef %i.qj)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 72
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.qc
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !30
  %i.qp = lshr i32 %i.qo, %i.qd
  %i.qq = trunc i32 %i.qp to i1
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1
  br i1 %i.qq, label %bb.ao, label %.critedge272, !llvm.loop !138

.critedge8:                                       ; preds = %bb.ao
  %i.qr = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qc
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !30
  %i.qu = shl nuw i32 1, %i.qd                    ; 3 uses
  %i.qv = and i32 %i.qt, %i.qu
  %i.qw = icmp ne i32 %i.qv, 0
  %i.qx = load ptr, ptr %i.lr, align 8, !tbaa !64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.qc ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !30
  %i.ra = or i32 %i.qz, %i.qu
  store i32 %i.ra, ptr %i.qy, align 4, !tbaa !30
  %.neg.i.i278 = sext i1 %i.qw to i32
  %i.rb = load ptr, ptr %i.ls, align 8, !tbaa !64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.qc ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !30 ; 2 uses
  %i.re = xor i32 %i.rd, %.neg.i.i278
  %i.rf = and i32 %i.re, %i.qu
  %i.rg = xor i32 %i.rf, %i.rd
  store i32 %i.rg, ptr %i.rc, align 4, !tbaa !30
  br label %.critedge272

.critedge272:                                     ; preds = %bb.ap, %.preheader325, %.critedge8
  %.1248333 = phi i1 [ true, %.critedge8 ], [ false, %.preheader325 ], [ false, %bb.ap ]
  %i.rh = add nuw i32 %.0246353, 1                ; 2 uses
  %i.ri = load i32, ptr %i.lo, align 8, !tbaa !144
  %i.rj = icmp ult i32 %i.rh, %i.ri
  br i1 %i.rj, label %.preheader325, label %_ZNK3app13get_decl_kindEv.exit.thread, !llvm.loop !139

bb.aq:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !62 ; 2 uses
  %.not268344 = icmp eq i32 %i.rl, 0
  br i1 %.not268344, label %_ZNK3app13get_decl_kindEv.exit.thread, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.aq
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rn = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.ro = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.rp = zext i32 %i.rl to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph347, %._crit_edge343
  %indvars.iv = phi i64 [ %i.rp, %.lr.ph347 ], [ %i.rq, %._crit_edge343 ]
  %.0244345 = phi i32 [ 0, %.lr.ph347 ], [ %i.rz, %._crit_edge343 ] ; 2 uses
  %i.rq = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.rr = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !28, !align !29
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rq
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !31
  %i.ru = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.rr, ptr noundef %i.rt) ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 152 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !144 ; 2 uses
  %.not427 = icmp eq i32 %i.rw, 0
  br i1 %.not427, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.ar
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !64
  br label %bb.as

._crit_edge343:                                   ; preds = %bb.au, %bb.ar
  %.lcssa334 = phi i32 [ 0, %bb.ar ], [ %i.tc, %bb.au ]
  %i.rz = add i32 %.lcssa334, %.0244345
  %.not268.wide = icmp eq i64 %i.rq, 0
  br i1 %.not268.wide, label %_ZNK3app13get_decl_kindEv.exit.thread, label %bb.ar, !llvm.loop !140

bb.as:                                            ; preds = %.lr.ph342, %bb.au
  %i.sa = phi i32 [ %i.rw, %.lr.ph342 ], [ %i.tc, %bb.au ]
  %.0242340 = phi i32 [ 0, %.lr.ph342 ], [ %i.td, %bb.au ] ; 4 uses
  %i.sb = lshr i32 %.0242340, 5
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !30
  %i.sf = and i32 %.0242340, 31
  %i.sg = shl nuw i32 1, %i.sf
  %i.sh = and i32 %i.se, %i.sg
  %.not305 = icmp eq i32 %i.sh, 0
  br i1 %.not305, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.si = add i32 %.0242340, %.0244345            ; 2 uses
  %i.sj = lshr i32 %i.si, 5
  %i.sk = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.sl = zext nneg i32 %i.sj to i64              ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !30
  %i.so = and i32 %i.si, 31
  %i.sp = shl nuw i32 1, %i.so                    ; 3 uses
  %i.sq = and i32 %i.sn, %i.sp
  %i.sr = icmp ne i32 %i.sq, 0
  %i.ss = load ptr, ptr %i.rn, align 8, !tbaa !64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.sl ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !30
  %i.sv = or i32 %i.su, %i.sp
  store i32 %i.sv, ptr %i.st, align 4, !tbaa !30
  %.neg.i.i279 = sext i1 %i.sr to i32
  %i.sw = load ptr, ptr %i.ro, align 8, !tbaa !64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.sl ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !30 ; 2 uses
  %i.sz = xor i32 %i.sy, %.neg.i.i279
  %i.ta = and i32 %i.sz, %i.sp
  %i.tb = xor i32 %i.ta, %i.sy
  store i32 %i.tb, ptr %i.sx, align 4, !tbaa !30
  %.pre479 = load i32, ptr %i.rv, align 8, !tbaa !144
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.tc = phi i32 [ %i.sa, %bb.as ], [ %.pre479, %bb.at ] ; 3 uses
  %i.td = add nuw i32 %.0242340, 1                ; 2 uses
  %i.te = icmp ult i32 %i.td, %i.tc
  br i1 %i.te, label %bb.as, label %._crit_edge343, !llvm.loop !141

bb.av:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.tf = call noundef zeroext i1 @_ZNK14bv_recognizers10is_extractEPK4exprRjS3_RPS0_(ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.tf, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 463, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.tg = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !28, !align !29
  %i.th = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ti = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.tg, ptr noundef %i.th)
end_hunk_0
