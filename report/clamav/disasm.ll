inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_disasm_one:bb.a
bb.bj:                                            ; preds = %bb.bi
  %.off.i = add i16 %i.bg, -113
  %switch651.i = icmp ult i16 %.off.i, 2
  br i1 %switch651.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ku = and i16 %i.v, 1
  %i.kv = zext nneg i16 %i.ku to i32              ; 2 uses
  store i32 %i.kv, ptr %i.ka, align 4, !tbaa !26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kw = phi i32 [ %i.kf, %bb.bj ], [ %i.kv, %bb.bk ]
  %i.kx = icmp eq i8 %.0519.i, 3
  br i1 %i.kx, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  switch i32 %i.w, label %bb.bn [
    i32 18, label %.loopexit
    i32 22, label %.loopexit
  ]

bb.bn:                                            ; preds = %bb.bm
  store i32 3, ptr %i.jz, align 8, !tbaa !23
  %i.ky = zext nneg i32 %i.kw to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr @mrm_regmap, i64 %i.ky
  %i.la = zext nneg i8 %i.jx to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !14
  %i.ld = zext i8 %i.lc to i32
  %i.le = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.ld, ptr %i.le, align 8, !tbaa !25
  %i.lf = icmp eq i32 %i.w, 21
  br i1 %i.lf, label %bb.bo, label %._crit_edge781.i

bb.bo:                                            ; preds = %bb.bn
  %.mask625.i = and i16 %i.bg, 255                ; 3 uses
  %i.lg = icmp samesign ult i16 %.mask625.i, 216
  br i1 %i.lg, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 1532, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.lh = zext nneg i16 %.mask625.i to i64
  %i.li = getelementptr inbounds nuw [64 x i8], ptr @extra_1a, i64 %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.ko ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !22
  %i.lm = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ln = add i32 %i.lm, %i.ll
  store i32 %i.ln, ptr %i.n, align 4, !tbaa !26
  %i.lo = load i32, ptr %i.lj, align 8, !tbaa !20 ; 2 uses
  %i.lp = trunc i32 %i.lo to i16                  ; 3 uses
  store i16 %i.lp, ptr %i.r, align 2, !tbaa !11
  %i.lq = and i32 %i.lo, 65535
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.ls = icmp eq i16 %.mask625.i, 6
  %i.lt = icmp ne i8 %i.jw, 0
  %or.cond12.i = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond12.i, label %.loopexit.i, label %._crit_edge781.i

bb.bs:                                            ; preds = %bb.bl
  store i32 4, ptr %i.jz, align 8, !tbaa !23
  %.not619.i = icmp eq i32 %i.ap, 0
  br i1 %.not619.i, label %bb.bt, label %bb.cb

bb.bt:                                            ; preds = %bb.bs
  %i.lu = icmp eq i8 %i.jx, 4
  br i1 %i.lu, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.lv = add i32 %.0549947.i146, -3              ; 2 uses
  %.not620.i = icmp eq i32 %i.jr, 0
  br i1 %.not620.i, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lw = load i8, ptr %i.jt, align 1, !tbaa !14  ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0557942.i147, i64 3 ; 2 uses
  %i.ly = lshr i8 %i.lw, 6
  %i.lz = lshr i8 %i.lw, 3
  %i.ma = and i8 %i.lz, 7
  %i.mb = and i8 %i.lw, 7
  %i.mc = shl nuw nsw i8 1, %i.ly
  %i.md = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 2 uses
  store i8 %i.mc, ptr %i.me, align 8, !tbaa !14
  %i.mf = zext nneg i8 %i.mb to i64
  %i.mg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !14  ; 2 uses
  %i.mi = zext i8 %i.mh to i32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jz, i64 20 ; 2 uses
  %i.mk = icmp eq i8 %i.mh, 5
  %i.ml = icmp eq i8 %.0519.i, 0
  %or.cond15.i = select i1 %i.mk, i1 %i.ml, i1 false ; 2 uses
  %spec.select645.i = select i1 %or.cond15.i, i32 54, i32 %i.mi ; 3 uses
  %spec.select646.i = select i1 %or.cond15.i, i8 2, i8 %.0519.i ; 2 uses
  store i32 %spec.select645.i, ptr %i.mj, align 4, !tbaa !14
  %i.mm = zext nneg i8 %i.ma to i64
  %i.mn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !14  ; 2 uses
  %i.mp = zext i8 %i.mo to i32
  store i32 %i.mp, ptr %i.md, align 8, !tbaa !14
  %i.mq = icmp eq i8 %i.mo, 4
  br i1 %i.mq, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  store i32 %spec.select645.i, ptr %i.md, align 8, !tbaa !14
  %i.mr = icmp ne i32 %spec.select645.i, 54
  %i.ms = zext i1 %i.mr to i8
  store i8 %i.ms, ptr %i.me, align 8, !tbaa !14
  store i32 54, ptr %i.mj, align 4, !tbaa !14
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bt
  %i.mt = icmp eq i8 %.0519.i, 0
  %i.mu = icmp eq i8 %i.jx, 5
  %or.cond18.i = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond18.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store i8 1, ptr %i.mv, align 8, !tbaa !14
  %i.mw = zext nneg i8 %i.jx to i64
  %i.mx = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @mrm_regmap, i64 16), i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !14
  %i.mz = zext i8 %i.my to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink.i = phi i32 [ %i.mz, %bb.by ], [ 54, %bb.bx ]
  %.2.i = phi i8 [ %.0519.i, %bb.by ], [ 2, %bb.bx ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %.sink.i, ptr %i.na, align 8, !tbaa !14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 54, ptr %i.nb, align 4, !tbaa !14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bv
  %.7564.i = phi ptr [ %i.lx, %bb.bw ], [ %i.lx, %bb.bv ], [ %i.jt, %bb.bz ] ; 4 uses
  %.8.i = phi i32 [ %i.lv, %bb.bw ], [ %i.lv, %bb.bv ], [ %i.jr, %bb.bz ] ; 3 uses
  %.3.i = phi i8 [ %spec.select646.i, %bb.bw ], [ %spec.select646.i, %bb.bv ], [ %.2.i, %bb.bz ] ; 2 uses
  %.not726 = icmp eq i8 %.3.i, 2                  ; 2 uses
  %spec.select647.i = select i1 %.not726, i8 4, i8 %.3.i ; 2 uses
  %i.nc = zext i8 %spec.select647.i to i32        ; 5 uses
  %.not831.i = icmp eq i8 %spec.select647.i, 0
  br i1 %.not831.i, label %bb.cd, label %.lr.ph799.preheader.i

.lr.ph799.preheader.i:                            ; preds = %bb.ca
  %i.nd = add nsw i32 %i.nc, -1                   ; 2 uses
  %.not939.i = icmp ugt i32 %.8.i, %i.nd
  br i1 %.not939.i, label %.lr.ph799.i.preheader, label %.loopexit

.lr.ph799.i.preheader:                            ; preds = %.lr.ph799.preheader.i
  %xtraiter719 = and i32 %i.nc, 3                 ; 3 uses
  br i1 %.not726, label %.lr.ph799.i.preheader.new, label %.lr.ph799.i.epil.preheader

.lr.ph799.i.preheader.new:                        ; preds = %.lr.ph799.i.preheader
  %unroll_iter724 = and i32 %i.nc, 4
  br label %.lr.ph799.i

.lr.ph799.i:                                      ; preds = %.lr.ph799.i, %.lr.ph799.i.preheader.new
  %.0518797.i = phi i64 [ 0, %.lr.ph799.i.preheader.new ], [ %i.of, %.lr.ph799.i ]
  %.3537796.i = phi i32 [ 0, %.lr.ph799.i.preheader.new ], [ %i.og, %.lr.ph799.i ] ; 4 uses
  %.8565794.i = phi ptr [ %.7564.i, %.lr.ph799.i.preheader.new ], [ %i.nz, %.lr.ph799.i ] ; 5 uses
  %niter725 = phi i32 [ 0, %.lr.ph799.i.preheader.new ], [ %niter725.next.3, %.lr.ph799.i ]
  %i.ne = load i8, ptr %.8565794.i, align 1, !tbaa !14
  %i.nf = getelementptr inbounds nuw i8, ptr %.8565794.i, i64 1
  %i.ng = zext i8 %i.ne to i64
  %i.nh = add nsw i64 %.0518797.i, %i.ng
  %i.ni = load i8, ptr %i.nf, align 1, !tbaa !14
  %i.nj = getelementptr inbounds nuw i8, ptr %.8565794.i, i64 2
  %i.nk = zext i8 %i.ni to i32
  %i.nl = shl i32 %.3537796.i, 3
  %i.nm = or disjoint i32 %i.nl, 8
  %i.nn = shl nuw i32 %i.nk, %i.nm
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = add nsw i64 %i.nh, %i.no
  %i.nq = load i8, ptr %i.nj, align 1, !tbaa !14
  %i.nr = getelementptr inbounds nuw i8, ptr %.8565794.i, i64 3
  %i.ns = zext i8 %i.nq to i32
  %i.nt = shl i32 %.3537796.i, 3
  %i.nu = or disjoint i32 %i.nt, 16
  %i.nv = shl nuw i32 %i.ns, %i.nu
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = add nsw i64 %i.np, %i.nw
  %i.ny = load i8, ptr %i.nr, align 1, !tbaa !14
  %i.nz = getelementptr inbounds nuw i8, ptr %.8565794.i, i64 4 ; 2 uses
  %i.oa = zext i8 %i.ny to i32
  %i.ob = shl i32 %.3537796.i, 3
  %i.oc = or disjoint i32 %i.ob, 24
  %i.od = shl nuw i32 %i.oa, %i.oc
  %i.oe = sext i32 %i.od to i64
  %i.of = add nsw i64 %i.nx, %i.oe                ; 3 uses
  %i.og = add nuw nsw i32 %.3537796.i, 4          ; 2 uses
  %niter725.next.3 = add i32 %niter725, 4         ; 2 uses
  %niter725.ncmp.3 = icmp eq i32 %niter725.next.3, %unroll_iter724
  br i1 %niter725.ncmp.3, label %.unr-lcssa, label %.lr.ph799.i

.unr-lcssa:                                       ; preds = %.lr.ph799.i
  %lcmp.mod721.not = icmp eq i32 %xtraiter719, 0
  br i1 %lcmp.mod721.not, label %.epilog-lcssa, label %.lr.ph799.i.epil.preheader

.lr.ph799.i.epil.preheader:                       ; preds = %.unr-lcssa, %.lr.ph799.i.preheader
  %.0518797.i.epil.init = phi i64 [ 0, %.lr.ph799.i.preheader ], [ %i.of, %.unr-lcssa ]
  %.3537796.i.epil.init = phi i32 [ 0, %.lr.ph799.i.preheader ], [ %i.og, %.unr-lcssa ]
  %.8565794.i.epil.init = phi ptr [ %.7564.i, %.lr.ph799.i.preheader ], [ %i.nz, %.unr-lcssa ]
  %lcmp.mod723 = icmp ne i32 %xtraiter719, 0
  tail call void @llvm.assume(i1 %lcmp.mod723)
  br label %.lr.ph799.i.epil

.lr.ph799.i.epil:                                 ; preds = %.lr.ph799.i.epil, %.lr.ph799.i.epil.preheader
  %.0518797.i.epil = phi i64 [ %i.on, %.lr.ph799.i.epil ], [ %.0518797.i.epil.init, %.lr.ph799.i.epil.preheader ]
  %.3537796.i.epil = phi i32 [ %i.oo, %.lr.ph799.i.epil ], [ %.3537796.i.epil.init, %.lr.ph799.i.epil.preheader ] ; 2 uses
  %.8565794.i.epil = phi ptr [ %i.oi, %.lr.ph799.i.epil ], [ %.8565794.i.epil.init, %.lr.ph799.i.epil.preheader ] ; 2 uses
  %epil.iter720 = phi i32 [ %epil.iter720.next, %.lr.ph799.i.epil ], [ 0, %.lr.ph799.i.epil.preheader ]
  %i.oh = load i8, ptr %.8565794.i.epil, align 1, !tbaa !14
  %i.oi = getelementptr inbounds nuw i8, ptr %.8565794.i.epil, i64 1
  %i.oj = zext i8 %i.oh to i32
  %i.ok = shl nuw nsw i32 %.3537796.i.epil, 3
  %i.ol = shl nuw i32 %i.oj, %i.ok
  %i.om = sext i32 %i.ol to i64
  %i.on = add nsw i64 %.0518797.i.epil, %i.om     ; 2 uses
  %i.oo = add nuw nsw i32 %.3537796.i.epil, 1
  %epil.iter720.next = add i32 %epil.iter720, 1   ; 2 uses
  %epil.iter720.cmp.not = icmp eq i32 %epil.iter720.next, %xtraiter719
  br i1 %epil.iter720.cmp.not, label %.epilog-lcssa, label %.lr.ph799.i.epil, !llvm.loop !42

.epilog-lcssa:                                    ; preds = %.lr.ph799.i.epil, %.unr-lcssa
  %.lcssa613 = phi i64 [ %i.of, %.unr-lcssa ], [ %i.on, %.lr.ph799.i.epil ]
  %i.op = sub i32 %.8.i, %i.nc
  %scevgep904.i = getelementptr i8, ptr %.7564.i, i64 1
  %i.oq = zext nneg i32 %i.nd to i64
  %scevgep905.i = getelementptr i8, ptr %scevgep904.i, i64 %i.oq
  %i.or = shl nuw nsw i32 %i.nc, 3
  %i.os = sub nuw nsw i32 64, %i.or
  %i.ot = zext nneg i32 %i.os to i64              ; 2 uses
  %i.ou = shl i64 %.lcssa613, %i.ot
  %i.ov = ashr exact i64 %i.ou, %i.ot
  %i.ow = trunc nsw i64 %i.ov to i32
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bs
  %i.ox = icmp eq i8 %.0519.i, 0                  ; 2 uses
  %i.oy = icmp eq i8 %i.jx, 6
  %or.cond21.i = select i1 %i.ox, i1 %i.oy, i1 false
  br i1 %or.cond21.i, label %.thread969.i, label %bb.cc

.thread969.i:                                     ; preds = %bb.cb
  %i.oz = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 54, ptr %i.oz, align 8, !tbaa !14
  br label %.lr.ph789.preheader.i

bb.cc:                                            ; preds = %bb.cb
  %i.pa = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store i8 1, ptr %i.pa, align 8, !tbaa !14
  %i.pb = zext nneg i8 %i.jx to i64
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr @mrm_regmapw, i64 %i.pb
  %i.pd = zext nneg i8 %.0519.i to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.pf = load <2 x i32>, ptr %i.pc, align 8, !tbaa !36
  store <2 x i32> %i.pf, ptr %i.pe, align 8, !tbaa !14
  br i1 %i.ox, label %._crit_edge790.i, label %.lr.ph789.preheader.i

.lr.ph789.preheader.i:                            ; preds = %bb.cc, %.thread969.i
  %.5973.i = phi i32 [ 2, %.thread969.i ], [ %i.pd, %bb.cc ] ; 5 uses
  %i.pg = add nsw i32 %.5973.i, -1                ; 3 uses
  %.not938.i = icmp ugt i32 %i.jr, %i.pg
  br i1 %.not938.i, label %.lr.ph789.i.preheader, label %.loopexit

.lr.ph789.i.preheader:                            ; preds = %.lr.ph789.preheader.i
  %xtraiter = and i32 %.5973.i, 3                 ; 3 uses
  %i.ph = icmp ult i32 %i.pg, 3
  br i1 %i.ph, label %.lr.ph789.i.epil.preheader, label %.lr.ph789.i.preheader.new

.lr.ph789.i.preheader.new:                        ; preds = %.lr.ph789.i.preheader
  %unroll_iter = and i32 %.5973.i, 124
  br label %.lr.ph789.i

.lr.ph789.i:                                      ; preds = %.lr.ph789.i, %.lr.ph789.i.preheader.new
  %.1787.i = phi i64 [ 0, %.lr.ph789.i.preheader.new ], [ %i.qj, %.lr.ph789.i ]
  %.4538786.i = phi i32 [ 0, %.lr.ph789.i.preheader.new ], [ %5, %.lr.ph789.i ] ; 4 uses
  %.9566784.i = phi ptr [ %i.jt, %.lr.ph789.i.preheader.new ], [ %i.qd, %.lr.ph789.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph789.i.preheader.new ], [ %niter.next.3, %.lr.ph789.i ]
  %i.pi = load i8, ptr %.9566784.i, align 1, !tbaa !14
  %i.pj = getelementptr inbounds nuw i8, ptr %.9566784.i, i64 1
  %i.pk = zext i8 %i.pi to i64
  %i.pl = add nuw nsw i64 %.1787.i, %i.pk
  %i.pm = load i8, ptr %i.pj, align 1, !tbaa !14
  %i.pn = getelementptr inbounds nuw i8, ptr %.9566784.i, i64 2
  %i.po = zext i8 %i.pm to i32
  %i.pp = shl i32 %.4538786.i, 3
  %i.pq = or disjoint i32 %i.pp, 8
  %i.pr = shl nuw nsw i32 %i.po, %i.pq
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %i.pl, %i.ps
  %i.pu = load i8, ptr %i.pn, align 1, !tbaa !14
  %i.pv = getelementptr inbounds nuw i8, ptr %.9566784.i, i64 3
  %i.pw = zext i8 %i.pu to i32
  %i.px = shl i32 %.4538786.i, 3
  %i.py = or disjoint i32 %i.px, 16
  %i.pz = shl nuw nsw i32 %i.pw, %i.py
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = add nuw nsw i64 %i.pt, %i.qa
  %i.qc = load i8, ptr %i.pv, align 1, !tbaa !14
  %i.qd = getelementptr inbounds nuw i8, ptr %.9566784.i, i64 4 ; 2 uses
  %i.qe = zext i8 %i.qc to i32
  %i.qf = shl i32 %.4538786.i, 3
  %i.qg = or disjoint i32 %i.qf, 24
  %i.qh = shl nuw nsw i32 %i.qe, %i.qg
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = add nuw nsw i64 %i.qb, %i.qi            ; 3 uses
  %5 = add nuw nsw i32 %.4538786.i, 4             ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge790.loopexit.i.unr-lcssa, label %.lr.ph789.i

._crit_edge790.loopexit.i.unr-lcssa:              ; preds = %.lr.ph789.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge790.loopexit.i, label %.lr.ph789.i.epil.preheader

.lr.ph789.i.epil.preheader:                       ; preds = %._crit_edge790.loopexit.i.unr-lcssa, %.lr.ph789.i.preheader
  %.1787.i.epil.init = phi i64 [ 0, %.lr.ph789.i.preheader ], [ %i.qj, %._crit_edge790.loopexit.i.unr-lcssa ]
  %.4538786.i.epil.init = phi i32 [ 0, %.lr.ph789.i.preheader ], [ %5, %._crit_edge790.loopexit.i.unr-lcssa ]
  %.9566784.i.epil.init = phi ptr [ %i.jt, %.lr.ph789.i.preheader ], [ %i.qd, %._crit_edge790.loopexit.i.unr-lcssa ]
  %lcmp.mod718 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod718)
  br label %.lr.ph789.i.epil

.lr.ph789.i.epil:                                 ; preds = %.lr.ph789.i.epil, %.lr.ph789.i.epil.preheader
  %.1787.i.epil = phi i64 [ %i.qq, %.lr.ph789.i.epil ], [ %.1787.i.epil.init, %.lr.ph789.i.epil.preheader ]
  %.4538786.i.epil = phi i32 [ %i.qr, %.lr.ph789.i.epil ], [ %.4538786.i.epil.init, %.lr.ph789.i.epil.preheader ] ; 2 uses
  %.9566784.i.epil = phi ptr [ %i.ql, %.lr.ph789.i.epil ], [ %.9566784.i.epil.init, %.lr.ph789.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph789.i.epil ], [ 0, %.lr.ph789.i.epil.preheader ]
  %i.qk = load i8, ptr %.9566784.i.epil, align 1, !tbaa !14
  %i.ql = getelementptr inbounds nuw i8, ptr %.9566784.i.epil, i64 1
  %i.qm = zext i8 %i.qk to i32
  %i.qn = shl nuw nsw i32 %.4538786.i.epil, 3
  %i.qo = shl nuw nsw i32 %i.qm, %i.qn
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = add nuw nsw i64 %.1787.i.epil, %i.qp    ; 2 uses
  %i.qr = add nuw nsw i32 %.4538786.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge790.loopexit.i, label %.lr.ph789.i.epil, !llvm.loop !44

._crit_edge790.loopexit.i:                        ; preds = %.lr.ph789.i.epil, %._crit_edge790.loopexit.i.unr-lcssa
  %.lcssa614 = phi i64 [ %i.qj, %._crit_edge790.loopexit.i.unr-lcssa ], [ %i.qq, %.lr.ph789.i.epil ]
  %i.qs = sub i32 %i.jr, %.5973.i
  %scevgep.i = getelementptr i8, ptr %.0557942.i147, i64 3
  %i.qt = zext nneg i32 %i.pg to i64
  %scevgep901.i = getelementptr i8, ptr %scevgep.i, i64 %i.qt
  %i.qu = shl nuw nsw i32 %.5973.i, 3
  %i.qv = sub nuw nsw i32 64, %i.qu
  %i.qw = zext nneg i32 %i.qv to i64
  br label %._crit_edge790.i

._crit_edge790.i:                                 ; preds = %._crit_edge790.loopexit.i, %bb.cc
  %.5974.i = phi i64 [ 64, %bb.cc ], [ %i.qw, %._crit_edge790.loopexit.i ] ; 2 uses
  %.9566.lcssa.i = phi ptr [ %i.jt, %bb.cc ], [ %scevgep901.i, %._crit_edge790.loopexit.i ]
  %.10.lcssa.i = phi i32 [ %i.jr, %bb.cc ], [ %i.qs, %._crit_edge790.loopexit.i ]
  %.1.lcssa.i = phi i64 [ 0, %bb.cc ], [ %.lcssa614, %._crit_edge790.loopexit.i ]
  %i.qx = shl i64 %.1.lcssa.i, %.5974.i
  %i.qy = ashr exact i64 %i.qx, %.5974.i
  %i.qz = trunc nsw i64 %i.qy to i32
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge790.i, %.epilog-lcssa, %bb.ca
  %.sink1058.i = phi i32 [ %i.ow, %.epilog-lcssa ], [ %i.qz, %._crit_edge790.i ], [ 0, %bb.ca ]
  %.10567.i = phi ptr [ %scevgep905.i, %.epilog-lcssa ], [ %.9566.lcssa.i, %._crit_edge790.i ], [ %.7564.i, %bb.ca ] ; 3 uses
  %.11.i = phi i32 [ %i.op, %.epilog-lcssa ], [ %.10.lcssa.i, %._crit_edge790.i ], [ %.8.i, %bb.ca ] ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 %.sink1058.i, ptr %i.ra, align 4, !tbaa !14
  %.off652.i = add nsw i32 %i.w, -21
  %switch653.i = icmp ult i32 %.off652.i, 2
  br i1 %switch653.i, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.mask.i = and i16 %i.bg, 255                   ; 3 uses
  %i.rb = icmp samesign ult i16 %.mask.i, 216
  br i1 %i.rb, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 1604, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.rc = zext nneg i16 %.mask.i to i64
  %i.rd = getelementptr inbounds nuw [64 x i8], ptr @extra_1a, i64 %i.rc
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.ko ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !22
  %i.rh = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ri = add i32 %i.rh, %i.rg
  store i32 %i.ri, ptr %i.n, align 4, !tbaa !26
  %i.rj = load i32, ptr %i.re, align 8, !tbaa !20 ; 2 uses
  %i.rk = trunc i32 %i.rj to i16                  ; 3 uses
  store i16 %i.rk, ptr %i.r, align 2, !tbaa !11
  %i.rl = and i32 %i.rj, 65535
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.rn = icmp eq i16 %.mask.i, 6
  %i.ro = icmp ne i8 %i.jw, 0
  %or.cond24.i = select i1 %i.rn, i1 %i.ro, i1 false
  br i1 %or.cond24.i, label %.loopexit.i, label %._crit_edge781.i

bb.ci:                                            ; preds = %bb.cd
  store i8 1, ptr %i.e, align 4, !tbaa !45
  br label %._crit_edge781.i

bb.cj:                                            ; preds = %bb.b
  store i32 4, ptr %i.m, align 8, !tbaa !23
  %i.rp = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !39 ; 2 uses
  switch i32 %i.rq, label %bb.ck [
    i32 0, label %bb.cl
    i32 5, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cl:                                            ; preds = %bb.cj, %bb.cj
  %i.rr = zext nneg i32 %i.as to i64
  %i.rs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @sizemap, i64 10), i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !14  ; 3 uses
  %i.ru = zext i8 %i.rt to i32                    ; 2 uses
  %.not614.i = icmp eq i8 %i.rt, -1
  br i1 %.not614.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 1624, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.rv = zext nneg i32 %i.rq to i64
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr @sizemap, i64 %i.rv
  %i.rx = zext nneg i32 %i.ar to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !14  ; 2 uses
  %.not615.i = icmp eq i8 %i.rz, -1
  br i1 %.not615.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 1627, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.sa = lshr i8 %i.rz, 1
  %i.sb = zext nneg i8 %i.sa to i32
  store i32 %i.sb, ptr %i.n, align 4, !tbaa !26
  store i32 54, ptr %i.o, align 8, !tbaa !14
  store i32 54, ptr %i.p, align 4, !tbaa !14
  %.not829.i = icmp eq i8 %i.rt, 0
  br i1 %.not829.i, label %._crit_edge781.i, label %.lr.ph780.i.preheader

.lr.ph780.i.preheader:                            ; preds = %bb.cp
  %i.sc = add i32 %1, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = sub i64 %i.sd, %indvar
  %i.sf = add nsw i32 %i.ru, -1
  %i.sg = zext i32 %i.sf to i64
  %umin528 = tail call i64 @llvm.umin.i64(i64 %i.se, i64 %i.sg) ; 2 uses
  %min.iters.check530 = icmp samesign ult i64 %umin528, 8
  br i1 %min.iters.check530, label %.lr.ph780.i.preheader615, label %vector.ph531

vector.ph531:                                     ; preds = %.lr.ph780.i.preheader
  %i.sh = add nuw nsw i64 %umin528, 1             ; 2 uses
  %i.si = and i64 %i.sh, 7                        ; 2 uses
  %i.sj = icmp eq i64 %i.si, 0
  %i.sk = select i1 %i.sj, i64 8, i64 %i.si
  %n.vec532 = sub nsw i64 %i.sh, %i.sk            ; 3 uses
  %i.sl = trunc i64 %n.vec532 to i32              ; 2 uses
  %i.sm = sub i32 %i.ax, %i.sl
  %i.sn = getelementptr i8, ptr %i.az, i64 %n.vec532
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph531
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next542, %vector.body533 ] ; 2 uses
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph531 ], [ %i.sv, %vector.body533 ]
  %vec.phi536 = phi <4 x i32> [ zeroinitializer, %vector.ph531 ], [ %i.sw, %vector.body533 ]
  %vec.ind537 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph531 ], [ %vec.ind.next543, %vector.body533 ] ; 3 uses
  %next.gep539 = getelementptr i8, ptr %i.az, i64 %index534 ; 2 uses
  %i.so = getelementptr i8, ptr %next.gep539, i64 4
  %wide.load540 = load <4 x i8>, ptr %next.gep539, align 1, !tbaa !14
  %wide.load541 = load <4 x i8>, ptr %i.so, align 1, !tbaa !14
  %i.sp = zext <4 x i8> %wide.load540 to <4 x i32>
  %i.sq = zext <4 x i8> %wide.load541 to <4 x i32>
  %i.sr = shl nuw nsw <4 x i32> %vec.ind537, splat (i32 3)
  %step.add538 = shl <4 x i32> %vec.ind537, splat (i32 3)
  %i.ss = add <4 x i32> %step.add538, splat (i32 32)
  %i.st = shl <4 x i32> %i.sp, %i.sr
  %i.su = shl <4 x i32> %i.sq, %i.ss
  %i.sv = add <4 x i32> %i.st, %vec.phi535        ; 2 uses
  %i.sw = add <4 x i32> %i.su, %vec.phi536        ; 2 uses
  %index.next542 = add nuw i64 %index534, 8       ; 2 uses
  %vec.ind.next543 = add nuw nsw <4 x i32> %vec.ind537, splat (i32 8)
  %i.sx = icmp eq i64 %index.next542, %n.vec532
  br i1 %i.sx, label %middle.block544, label %vector.body533, !llvm.loop !46

middle.block544:                                  ; preds = %vector.body533
  %bin.rdx545 = add <4 x i32> %i.sw, %i.sv
  %i.sy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx545) ; 2 uses
  store i32 %i.sy, ptr %i.q, align 4, !tbaa !14
  br label %.lr.ph780.i.preheader615

.lr.ph780.i.preheader615:                         ; preds = %.lr.ph780.i.preheader, %middle.block544
  %.ph616 = phi i32 [ 0, %.lr.ph780.i.preheader ], [ %i.sy, %middle.block544 ]
  %.5539778.i.ph = phi i32 [ 0, %.lr.ph780.i.preheader ], [ %i.sl, %middle.block544 ]
  %.13777.i.ph = phi i32 [ %i.ax, %.lr.ph780.i.preheader ], [ %i.sm, %middle.block544 ]
  %.12569776.i.ph = phi ptr [ %i.az, %.lr.ph780.i.preheader ], [ %i.sn, %middle.block544 ]
  br label %.lr.ph780.i

.lr.ph780.i:                                      ; preds = %.lr.ph780.i.preheader615, %bb.cq
  %i.sz = phi i32 [ %i.tg, %bb.cq ], [ %.ph616, %.lr.ph780.i.preheader615 ]
  %.5539778.i = phi i32 [ %i.th, %bb.cq ], [ %.5539778.i.ph, %.lr.ph780.i.preheader615 ] ; 2 uses
  %.13777.i = phi i32 [ %i.ta, %bb.cq ], [ %.13777.i.ph, %.lr.ph780.i.preheader615 ] ; 2 uses
  %.12569776.i = phi ptr [ %i.tc, %bb.cq ], [ %.12569776.i.ph, %.lr.ph780.i.preheader615 ] ; 2 uses
  %.not617.i = icmp eq i32 %.13777.i, 0
  br i1 %.not617.i, label %.loopexit, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph780.i
  %i.ta = add i32 %.13777.i, -1                   ; 2 uses
  %i.tb = load i8, ptr %.12569776.i, align 1, !tbaa !14
  %i.tc = getelementptr inbounds nuw i8, ptr %.12569776.i, i64 1 ; 2 uses
  %i.td = zext i8 %i.tb to i32
  %i.te = shl nuw nsw i32 %.5539778.i, 3
  %i.tf = shl i32 %i.td, %i.te
  %i.tg = add nsw i32 %i.tf, %i.sz                ; 2 uses
  store i32 %i.tg, ptr %i.q, align 4, !tbaa !14
  %i.th = add nuw nsw i32 %.5539778.i, 1          ; 2 uses
  %exitcond899.not.i = icmp eq i32 %i.th, %i.ru
  br i1 %exitcond899.not.i, label %._crit_edge781.i, label %.lr.ph780.i, !llvm.loop !47

bb.cr:                                            ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.disasm_x86) #11
  unreachable

._crit_edge781.i:                                 ; preds = %bb.cq, %bb.bn, %bb.cp, %bb.ci, %bb.ch, %bb.br, %._crit_edge810.i, %bb.an
  %.0549948.i = phi i32 [ %i.jr, %bb.bn ], [ %.6555.lcssa.i, %._crit_edge810.i ], [ %i.ax, %bb.an ], [ %.11.i, %bb.ci ], [ %i.jr, %bb.br ], [ %.11.i, %bb.ch ], [ %i.ax, %bb.cp ], [ %i.ta, %bb.cq ] ; 6 uses
  %.0557943.i = phi ptr [ %i.jt, %bb.bn ], [ %.6563.lcssa.i, %._crit_edge810.i ], [ %i.az, %bb.an ], [ %.10567.i, %bb.ci ], [ %i.jt, %bb.br ], [ %.10567.i, %bb.ch ], [ %i.az, %bb.cp ], [ %i.tc, %bb.cq ] ; 12 uses
  %i.ti = phi i16 [ %i.bg, %bb.bn ], [ %i.bg, %._crit_edge810.i ], [ %i.bg, %bb.an ], [ %i.bg, %bb.ci ], [ %i.lp, %bb.br ], [ %i.rk, %bb.ch ], [ %i.bg, %bb.cp ], [ %i.bg, %bb.cq ] ; 6 uses
  %i.tj = phi i8 [ 2, %bb.bn ], [ 1, %._crit_edge810.i ], [ 1, %bb.an ], [ 2, %bb.ci ], [ 1, %bb.br ], [ 1, %bb.ch ], [ 1, %bb.cp ], [ 1, %bb.cq ] ; 4 uses
  %i.tk = phi i32 [ %i.aw, %bb.bn ], [ %i.aw, %._crit_edge810.i ], [ %i.aw, %bb.an ], [ %i.ap, %bb.ci ], [ %i.aw, %bb.br ], [ %i.ap, %bb.ch ], [ %i.as, %bb.cp ], [ %i.as, %bb.cq ]
  %i.tl = phi i32 [ %i.ki, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hi, %bb.an ], [ %i.ki, %bb.ci ], [ %i.ki, %bb.br ], [ %i.ki, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  %i.tm = phi i32 [ %i.kh, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hh, %bb.an ], [ %i.kh, %bb.ci ], [ %i.kh, %bb.br ], [ %i.kh, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  %i.tn = phi i32 [ %i.kg, %bb.bn ], [ %i.ao, %._crit_edge810.i ], [ %i.hg, %bb.an ], [ %i.kg, %bb.ci ], [ %i.kg, %bb.br ], [ %i.kg, %bb.ch ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.cq ]
  store i32 2, ptr %i.d, align 4, !tbaa !19
  store i8 %i.tj, ptr %i.e, align 4, !tbaa !45
  %i.to = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !48 ; 2 uses
  switch i32 %i.tp, label %bb.di [
    i32 30, label %.loopexit.i
    i32 27, label %bb.cs
    i32 0, label %bb.cw
    i32 1, label %bb.cw
    i32 2, label %bb.cw
    i32 29, label %bb.cz
end_hunk_0
