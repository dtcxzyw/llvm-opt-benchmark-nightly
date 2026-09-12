Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/chunk?download=true
inline.NumInlined: 57
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@exr_read_tile_chunk_info:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.t
  %.0277.lcssa = phi i64 [ 0, %bb.t ], [ %i.ds, %._crit_edge.loopexit.unr-lcssa ], [ %i.dd, %.epil.preheader ] ; 5 uses
  %i.de = call i32 @extract_chunk_table(ptr noundef nonnull %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) ; 2 uses
  %.not323 = icmp eq i32 %i.de, 0
  br i1 %.not323, label %bb.v, label %.thread388

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.u ] ; 3 uses
  %.0277347 = phi i64 [ 0, %.lr.ph.new ], [ %i.ds, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.u ]
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !67
  %i.di = icmp eq i32 %i.dh, 1
  %i.dj = select i1 %i.di, i64 1, i64 2
  %i.dk = shl i64 %i.cr, %i.dj
  %i.dl = add i64 %i.dk, %.0277347
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !67
  %i.dp = icmp eq i32 %i.do, 1
  %i.dq = select i1 %i.dp, i64 1, i64 2
  %i.dr = shl i64 %i.cr, %i.dq
  %i.ds = add i64 %i.dr, %i.dl                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.u, !llvm.loop !111

bb.v:                                             ; preds = %._crit_edge
  %i.dt = load i32, ptr %i.z, align 4, !tbaa !42
  %i.du = icmp eq i32 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !70
  %.not325 = icmp eq i8 %i.dw, 0                  ; 2 uses
  %. = select i1 %.not325, i64 16, i64 20
  %.338 = select i1 %.not325, i64 20, i64 24
  %.0280 = select i1 %i.du, i64 %., i64 %.338     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !33 ; 7 uses
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.ea = sext i32 %i.bq to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !30 ; 5 uses
  store i64 %i.ec, ptr %i.d, align 8, !tbaa !30
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.thread388, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !30
  %i.ef = icmp ult i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = icmp sgt i64 %i.dy, 0                   ; 3 uses
  %i.eh = icmp ugt i64 %i.ec, %i.dy
  %or.cond339 = and i1 %i.eg, %i.eh
  br i1 %or.cond339, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !25
  %i.ek = tail call i32 (ptr, i32, ptr, ...) %i.ej(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i64 noundef %i.ec) #8
  br label %.thread388

bb.z:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !35
  %i.en = call i32 %i.em(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.0280, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #8 ; 2 uses
  %.not326 = icmp eq i32 %i.en, 0
  br i1 %.not326, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !25
  %i.eq = load i64, ptr %i.eb, align 8, !tbaa !30
  %i.er = load i64, ptr %i.e, align 8, !tbaa !30
  %i.es = call i32 (ptr, i32, ptr, ...) %i.ep(ptr noundef nonnull %0, i32 noundef %i.en, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %.0280, i64 noundef %i.eq, i64 noundef %i.er) #8
  br label %.thread388

bb.ab:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !70
  %.not327 = icmp eq i8 %i.eu, 0
  br i1 %.not327, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load i32, ptr %i.a, align 16, !tbaa !46 ; 2 uses
  %.not328 = icmp eq i32 %1, %i.ev
  br i1 %.not328, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25
  %i.ey = call i32 (ptr, i32, ptr, ...) %i.ex(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.ev, i32 noundef %1) #8
  br label %.thread388

bb.ae:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.0281 = phi ptr [ %i.ez, %bb.ae ], [ %i.a, %bb.ab ] ; 5 uses
  %i.fa = load i32, ptr %.0281, align 4, !tbaa !46 ; 2 uses
  %.not329 = icmp eq i32 %i.fa, %2
  br i1 %.not329, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25
  %i.fd = call i32 (ptr, i32, ptr, ...) %i.fc(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.fa, i32 noundef %2) #8
  br label %.thread388

bb.ah:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %.0281, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !46 ; 2 uses
  %.not330 = icmp eq i32 %i.ff, %3
  br i1 %.not330, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fi = call i32 (ptr, i32, ptr, ...) %i.fh(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.ff, i32 noundef %3) #8
  br label %.thread388

bb.aj:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.0281, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !46 ; 2 uses
  %.not331 = icmp eq i32 %i.fk, %4
  br i1 %.not331, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !25
  %i.fn = call i32 (ptr, i32, ptr, ...) %i.fm(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.23, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.fk, i32 noundef %4) #8
  br label %.thread388

bb.al:                                            ; preds = %bb.aj
  %i.fo = getelementptr inbounds nuw i8, ptr %.0281, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !46 ; 2 uses
  %.not332 = icmp eq i32 %i.fp, %5
  br i1 %.not332, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = call i32 (ptr, i32, ptr, ...) %i.fr(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.fp, i32 noundef %5) #8
  br label %.thread388

bb.an:                                            ; preds = %bb.al
  %i.ft = load i32, ptr %i.z, align 4, !tbaa !42
  %i.fu = icmp eq i32 %i.ft, 3
  br i1 %i.fu, label %bb.ao, label %bb.bc

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.fv = load ptr, ptr %i.el, align 8, !tbaa !35
  %i.fw = call i32 %i.fv(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 24, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 0) #8 ; 2 uses
  %.not334 = icmp eq i32 %i.fw, 0
  br i1 %.not334, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fx = load i64, ptr %i.g, align 16, !tbaa !30 ; 7 uses
  %i.fy = icmp slt i64 %i.fx, 0
  br i1 %i.fy, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fz = load i32, ptr %i.bu, align 8, !tbaa !51
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = and i64 %i.fx, 3
  %.not335 = icmp eq i64 %i.gb, 0
  %or.cond340 = or i1 %.not335, %i.ga
  br i1 %or.cond340, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gc = icmp eq i64 %i.fx, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !30 ; 4 uses
  br i1 %i.gc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = icmp ne i64 %i.gh, 0
  %or.cond5 = select i1 %i.gf, i1 true, i1 %i.gi
  br i1 %or.cond5, label %bb.at, label %.thread385

bb.at:                                            ; preds = %bb.aq, %bb.as, %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.gl = call i32 (ptr, i32, ptr, ...) %i.gk(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.25, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i64 noundef %i.fx) #8
  br label %.thread

bb.au:                                            ; preds = %bb.ar
  %or.cond8 = icmp ugt i64 %i.ge, 2147483647
  br i1 %or.cond8, label %bb.av, label %.thread385

.thread385:                                       ; preds = %bb.as, %bb.au
  %i.gm = phi i64 [ %i.ge, %bb.au ], [ 0, %bb.as ] ; 6 uses
  %i.gn = icmp eq i64 %i.gm, 0                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gp = load i64, ptr %i.go, align 16           ; 4 uses
  %i.gq = icmp ne i64 %i.gp, 0                    ; 2 uses
  %or.cond11 = select i1 %i.gn, i1 %i.gq, i1 false
  br i1 %or.cond11, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread385, %bb.au
  %i.gr = phi i64 [ 0, %.thread385 ], [ %i.ge, %bb.au ]
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !25
  %i.gu = call i32 (ptr, i32, ptr, ...) %i.gt(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.26, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i64 noundef %i.gr) #8
  br label %.thread

bb.aw:                                            ; preds = %.thread385
  %or.cond14 = icmp ult i64 %i.gp, 2147483648
  %or.cond17.demorgan = or i1 %i.gn, %i.gq
  %or.cond17 = and i1 %or.cond14, %or.cond17.demorgan
  br i1 %or.cond17, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !25
  %i.gx = call i32 (ptr, i32, ptr, ...) %i.gw(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.27, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i64 noundef %i.gm) #8
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.gy = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !71
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.fx, ptr %i.ha, align 8, !tbaa !72
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.gm, ptr %i.hb, align 8, !tbaa !74
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.gp, ptr %i.hc, align 8, !tbaa !59
  %i.hd = add i64 %i.gy, %i.fx                    ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !73
  br i1 %i.eg, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.hf = icmp ugt i64 %i.hd, %i.dy
  %i.hg = add nuw i64 %i.hd, %i.gm
  %i.hh = icmp ugt i64 %i.hg, %i.dy
  %or.cond346 = select i1 %i.hf, i1 true, i1 %i.hh
  br i1 %or.cond346, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !25
  %i.hk = call i32 (ptr, i32, ptr, ...) %i.hj(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.28, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i64 noundef %i.fx, i64 noundef %i.gm, i64 noundef %i.dy) #8
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.at, %bb.av, %bb.ax, %bb.ba
  %.0.ph = phi i32 [ %i.hk, %bb.ba ], [ %i.gx, %bb.ax ], [ %i.gu, %bb.av ], [ %i.gl, %bb.at ], [ %i.fw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %.thread388

bb.bb:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.bi

bb.bc:                                            ; preds = %bb.an
  %i.hl = getelementptr inbounds nuw i8, ptr %.0281, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !46 ; 6 uses
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ho = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.hp = icmp ult i64 %.0277.lcssa, %i.ho
  br i1 %i.hp, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = icmp eq i32 %i.hm, 0
  %i.hr = icmp ne i64 %.0277.lcssa, 0
  %or.cond19 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond19, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !25
  %i.hu = call i32 (ptr, i32, ptr, ...) %i.ht(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.29, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.hm, i64 noundef %.0277.lcssa) #8
  br label %.thread388

bb.bg:                                            ; preds = %bb.be
  %.pre = load i64, ptr %i.d, align 8, !tbaa !30  ; 3 uses
  %i.hv = add i64 %.pre, %i.ho
  %.not333 = icmp ugt i64 %i.hv, %i.dy
  %or.cond390 = select i1 %i.eg, i1 %.not333, i1 false
  br i1 %or.cond390, label %.thread343, label %bb.bh

.thread343:                                       ; preds = %bb.bg
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !25
  %i.hy = call i32 (ptr, i32, ptr, ...) %i.hx(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.30, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.bq, i32 noundef %i.hm, i64 noundef %.pre, i64 noundef %i.dy) #8
  br label %.thread388

bb.bh:                                            ; preds = %bb.bg
  %i.hz = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !74
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.0277.lcssa, ptr %i.ib, align 8, !tbaa !59
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.pre, ptr %i.ic, align 8, !tbaa !73
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bb, %bb.bh
  %i.ie = phi i64 [ %i.gp, %bb.bb ], [ %.0277.lcssa, %bb.bh ] ; 3 uses
  %i.if = phi i64 [ %i.gm, %bb.bb ], [ %i.hz, %bb.bh ] ; 3 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %.not336 = icmp eq i64 %i.ie, 0
  br i1 %.not336, label %.thread388, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !32
  %i.ij = call i32 %i.ii(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.16) #8
  br label %.thread388

bb.bl:                                            ; preds = %bb.bi
  %i.ik = load i32, ptr %i.bu, align 8, !tbaa !51
  %i.il = icmp ne i32 %i.ik, 0
  %.not337 = icmp eq i64 %i.if, %i.ie
  %or.cond391 = select i1 %i.il, i1 true, i1 %.not337
  br i1 %or.cond391, label %.thread388, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !25
  %i.io = call i32 (ptr, i32, ptr, ...) %i.in(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.31, i64 noundef %i.if, i64 noundef %i.ie) #8
  br label %.thread388

.thread388:                                       ; preds = %bb.bj, %.thread343, %.thread, %bb.bl, %bb.v, %._crit_edge, %bb.k, %bb.a, %bb.bm, %bb.bk, %bb.bf, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ad, %bb.aa, %bb.y, %bb.s, %bb.j, %bb.h, %bb.f, %bb.c
  %.2 = phi i32 [ %i.k, %bb.c ], [ %i.q, %bb.f ], [ %i.ad, %bb.j ], [ 2, %bb.a ], [ %i.cg, %bb.s ], [ %i.ae, %bb.k ], [ %i.de, %._crit_edge ], [ %i.ek, %bb.y ], [ %i.es, %bb.aa ], [ %i.ey, %bb.ad ], [ %i.fd, %bb.ag ], [ %i.fi, %bb.ai ], [ %i.fn, %bb.ak ], [ %i.fs, %bb.am ], [ %i.ij, %bb.bk ], [ %i.io, %bb.bm ], [ 24, %bb.v ], [ %.0.ph, %.thread ], [ %i.hu, %bb.bf ], [ %i.hy, %.thread343 ], [ %i.y, %bb.h ], [ 0, %bb.bj ], [ 0, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @exr_read_chunk(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !23
  %.not66 = icmp eq i8 %i.c, 0
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef 7) #8
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %.not67 = icmp slt i32 %1, %i.i
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 (ptr, i32, ptr, ...) %i.k(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %.not68 = icmp eq ptr %2, null
  br i1 %.not68, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74   ; 4 uses
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = icmp ne ptr %3, null
  %or.cond = or i1 %i.x, %i.w
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %2, align 8, !tbaa !49    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 244
end_hunk_0
begin_hunk_1_@exr_write_tile_chunk_info:bb.a
  %i.ck = load i32, ptr %i.t, align 4, !tbaa !42
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !51
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.cr, align 4, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %3, ptr %i.cs, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.1, ptr %i.ct, align 4, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.1114, ptr %i.cu, align 8, !tbaa !55
  %i.cv = icmp sgt i32 %4, 255
  %i.cw = icmp sgt i32 %5, 255
  %or.cond = or i1 %i.cv, %i.cw
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.cz = tail call i32 (ptr, i32, ptr, ...) %i.cy(ptr noundef nonnull %0, i32 noundef 17, ptr noundef nonnull @.str.17, i32 noundef %4, i32 noundef %5) #8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.da = trunc i32 %4 to i8
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.da, ptr %i.db, align 4, !tbaa !57
  %i.dc = trunc i32 %5 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !58
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !43 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !64 ; 4 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !65 ; 3 uses
  %i.dm = sext i32 %.1114 to i64
  %i.dn = sext i32 %.1 to i64
  %i.do = mul nsw i64 %i.dn, %i.dm                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.di to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dp = icmp eq i32 %i.di, 1
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.q

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0111138.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.eo, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod149 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %indvars.iv.epil.init
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !67
  %i.dt = icmp eq i32 %i.ds, 1
  %i.du = select i1 %i.dt, i64 1, i64 2
  %i.dv = shl i64 %i.do, %i.du
  %i.dw = add i64 %i.dv, %.0111138.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.p
  %.0111.lcssa = phi i64 [ 0, %bb.p ], [ %i.eo, %._crit_edge.loopexit.unr-lcssa ], [ %i.dw, %.epil.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store i64 %.0111.lcssa, ptr %i.dz, align 8, !tbaa !59
  %i.ea = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #8 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.0111138 = phi i64 [ 0, %.lr.ph.new ], [ %i.eo, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !67
  %i.ee = icmp eq i32 %i.ed, 1
  %i.ef = select i1 %i.ee, i64 1, i64 2
  %i.eg = shl i64 %i.do, %i.ef
  %i.eh = add i64 %i.eg, %.0111138
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !67
  %i.el = icmp eq i32 %i.ek, 1
  %i.em = select i1 %i.el, i64 1, i64 2
  %i.en = shl i64 %i.do, %i.em
  %i.eo = add i64 %i.en, %i.eh                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !112

bb.r:                                             ; preds = %bb.a, %._crit_edge, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.y, %bb.h ], [ %i.ad, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.m ], [ %i.cz, %bb.o ], [ 0, %._crit_edge ], [ %i.s, %bb.f ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_write_scanline_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not25 = icmp slt i32 %1, %i.e
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 27) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call fastcc i32 @write_scan_chunk(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.n, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef null, i64 noundef 0)
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.u, %bb.f ], [ %i.v, %bb.g ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_scan_chunk(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = load i8, ptr %0, align 8, !tbaa !23
  %.sink187.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink187.sroa.gep188 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  switch i8 %i.e, label %bb.c [
    i8 3, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, i32 noundef 9) #8
  br label %.thread167

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef 8) #8
  br label %.thread167

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42   ; 2 uses
  switch i32 %i.m, label %bb.f [
    i32 1, label %bb.e
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = tail call i32 %i.o(ptr noundef nonnull %0, i32 noundef 18) #8
  br label %.thread167

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !78
  %.not156 = icmp eq i32 %i.r, %1
  br i1 %.not156, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 25) #8
  br label %.thread167

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %5, 0                        ; 2 uses
  %i.w = icmp ne ptr %4, null
  %or.cond = or i1 %i.w, %i.v
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = tail call i32 (ptr, i32, ptr, ...) %i.y(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.54, i64 noundef %5, ptr noundef null) #8
  br label %.thread167

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ne i32 %i.m, 2                     ; 4 uses
  %i.ab = icmp ugt i64 %5, 2147483647
  %or.cond3 = and i1 %i.ab, %i.aa
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = tail call i32 (ptr, i32, ptr, ...) %i.ad(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.55, i64 noundef %5, i64 noundef 2147483647) #8
  br label %.thread167

bb.l:                                             ; preds = %bb.j
  %i.af = trunc i64 %5 to i32
  br i1 %i.aa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq ptr %7, null
  %i.ah = icmp eq i64 %8, 0
  %or.cond5 = or i1 %i.ag, %i.ah
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.ak = tail call i32 (ptr, i32, ptr, ...) %i.aj(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.56, i64 noundef %8, ptr noundef %7) #8
  br label %.thread167

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44 ; 4 uses
  %i.an = icmp slt i32 %3, %i.am
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %2, i64 156
  %.pre171 = load i32, ptr %.phi.trans.insert170, align 4, !tbaa !77 ; 2 uses
  %i.ao = icmp sgt i32 %3, %.pre171
  %or.cond185 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond185, label %._crit_edge169, label %bb.p

._crit_edge169:                                   ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = tail call i32 (ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.57, i32 noundef %3, i32 noundef %i.am, i32 noundef %.pre171) #8
  br label %.thread167

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.at = load i16, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = sub nsw i32 %3, %i.am                   ; 2 uses
  %i.aw = icmp sgt i16 %i.at, 1
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = sdiv i32 %i.av, %i.au
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0137 = phi i32 [ %i.ax, %bb.q ], [ %i.av, %bb.p ] ; 8 uses
  %i.ay = mul nsw i32 %.0137, %i.au
  %i.az = add nsw i32 %i.ay, %i.am                ; 2 uses
  %.not157 = icmp eq i32 %3, %i.az
  br i1 %.not157, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = tail call i32 (ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.58, i32 noundef %3, i32 noundef %i.az, i32 noundef %.0137) #8
  br label %.thread167

bb.t:                                             ; preds = %bb.r
  %i.bd = icmp sgt i32 %.0137, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 244 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31 ; 2 uses
  %.not158 = icmp slt i32 %.0137, %.pre
  %or.cond186 = select i1 %i.bd, i1 %.not158, i1 false
  br i1 %or.cond186, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = tail call i32 (ptr, i32, ptr, ...) %i.bf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %.0137, i32 noundef %.pre) #8
  br label %.thread167

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  %.not159 = icmp eq i32 %i.bi, 2
  br i1 %.not159, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !79
  %i.bl = add nsw i32 %.0137, -1
  %.not160 = icmp eq i32 %i.bk, %i.bl
  br i1 %.not160, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %0, i32 noundef 26) #8
  br label %.thread167

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !70
  %.not161 = icmp eq i8 %i.bq, 0
  br i1 %.not161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %1, ptr %i.a, align 4, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %3, ptr %i.br, align 4, !tbaa !46
  br i1 %i.aa, label %.sink.split, label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 %3, ptr %i.a, align 4, !tbaa !46
  br i1 %i.aa, label %.sink.split, label %bb.aa

.sink.split:                                      ; preds = %bb.z, %bb.y
  %.sink187.sroa.phi = phi ptr [ %.sink187.sroa.gep, %bb.y ], [ %.sink187.sroa.gep188, %bb.z ]
  %.0.ph = phi i64 [ 12, %bb.y ], [ 8, %bb.z ]
  store i32 %i.af, ptr %.sink187.sroa.phi, align 4, !tbaa !46
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.z, %bb.y
  %.0 = phi i64 [ 4, %bb.z ], [ 8, %bb.y ], [ %.0.ph, %.sink.split ]
  %i.bs = call fastcc i32 @alloc_chunk_table(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.b) ; 2 uses
  %.not164 = icmp eq i32 %i.bs, 0
  br i1 %.not164, label %bb.ab, label %.thread167

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !80
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.bw = zext nneg i32 %.0137 to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ca = call i32 %i.bz(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.0, ptr noundef nonnull %i.bt) #8 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ac, label %.thread167

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !42
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 %8, ptr %i.c, align 16, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %5, ptr %i.ce, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %6, ptr %i.cf, align 16, !tbaa !30
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ch = call i32 %i.cg(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 24, ptr noundef nonnull %i.bt) #8 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ck = call i32 %i.cj(ptr noundef nonnull %0, ptr noundef %7, i64 noundef %8, ptr noundef nonnull %i.bt) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0138 = phi i32 [ %i.ck, %bb.ae ], [ %i.ch, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.1 = phi i32 [ %.0138, %bb.af ], [ 0, %bb.ac ] ; 2 uses
  %i.cl = icmp ne i32 %.1, 0
  %or.cond7.not = or i1 %i.cl, %i.v
  br i1 %or.cond7.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.cn = call i32 %i.cm(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %i.bt) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2 = phi i32 [ %i.cn, %bb.ah ], [ %.1, %bb.ag ] ; 2 uses
  %i.co = icmp eq i32 %.2, 0
  br i1 %i.co, label %bb.aj, label %.thread167

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !82
  %i.cr = add nsw i32 %i.cq, 1                    ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !82
  %i.cs = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !29
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !30
  %i.cw = load i32, ptr %i.q, align 8, !tbaa !78
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.q, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !24
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 5, ptr %0, align 8, !tbaa !23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 -1, ptr %i.db, align 4, !tbaa !79
  store i32 0, ptr %i.cp, align 8, !tbaa !82
  %i.dc = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.dd = sext i32 %i.cr to i64
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = call i32 %i.dc(ptr noundef nonnull %0, ptr noundef nonnull %i.bv, i64 noundef %i.de, ptr noundef nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread167

bb.an:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.0137, ptr %i.dg, align 4, !tbaa !79
  br label %.thread167

.thread167:                                       ; preds = %bb.ab, %bb.ai, %bb.an, %bb.am, %bb.aa, %bb.w, %._crit_edge, %bb.s, %._crit_edge169, %bb.n, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.0139 = phi i32 [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.p, %bb.e ], [ %i.u, %bb.g ], [ %i.ae, %bb.k ], [ %i.ak, %bb.n ], [ %i.ar, %._crit_edge169 ], [ %i.bc, %bb.s ], [ %i.bg, %._crit_edge ], [ %i.bo, %bb.w ], [ %i.z, %bb.i ], [ %i.bs, %bb.aa ], [ %i.df, %bb.am ], [ 0, %bb.an ], [ %.2, %bb.ai ], [ %i.ca, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0139
}

; Function Attrs: nounwind uwtable
define i32 @exr_write_deep_scanline_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not28 = icmp slt i32 %1, %i.e
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 29) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call fastcc i32 @write_scan_chunk(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.n, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7)
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.u, %bb.f ], [ %i.v, %bb.g ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @exr_write_tile_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24
  %.not28 = icmp slt i32 %1, %i.e
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 28) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call fastcc i32 @write_tile_chunk(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.n, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef 0, ptr noundef null, i64 noundef 0)
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.u, %bb.f ], [ %i.v, %bb.g ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_tile_chunk(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [3 x i64], align 16               ; 7 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.f = load i8, ptr %0, align 8, !tbaa !23
  switch i8 %i.f, label %bb.c [
    i8 3, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef 9) #8
  br label %.thread149

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0, i32 noundef 8) #8
  br label %.thread149

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42   ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 0, label %bb.e
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, i32 noundef 19) #8
  br label %.thread149

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !78
  %.not136 = icmp eq i32 %i.s, %1
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0, i32 noundef 25) #8
  br label %.thread149

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %7, null
  %i.x = icmp eq i64 %8, 0
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = tail call i32 (ptr, i32, ptr, ...) %i.z(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.54, i64 noundef %8, ptr noundef %7) #8
  br label %.thread149

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp ne i32 %i.n, 3                     ; 2 uses
  %i.ac = icmp ugt i64 %8, 2147483647
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = tail call i32 (ptr, i32, ptr, ...) %i.ae(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.55, i64 noundef %8, i64 noundef 2147483647) #8
  br label %.thread149

bb.l:                                             ; preds = %bb.j
  %i.ag = trunc i64 %8 to i32
  br i1 %i.ab, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq ptr %10, null
  %i.ai = icmp eq i64 %11, 0
  %or.cond5 = or i1 %i.ah, %i.ai
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = tail call i32 (ptr, i32, ptr, ...) %i.ak(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.56, i64 noundef %11, ptr noundef %10) #8
  br label %.thread149

bb.o:                                             ; preds = %bb.m, %bb.l
  store i32 -1, ptr %i.b, align 4, !tbaa !46
  %i.am = call fastcc i32 @validate_and_compute_tile_chunk_off(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %i.b) ; 2 uses
  %.not137 = icmp eq i32 %i.am, 0
  br i1 %.not137, label %bb.p, label %.thread149

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.b, align 4, !tbaa !46  ; 7 uses
  %i.ao = icmp sgt i32 %i.an, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 244 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31 ; 2 uses
  %.not138 = icmp slt i32 %i.an, %.pre
  %or.cond164 = select i1 %i.ao, i1 %.not138, i1 false
  br i1 %or.cond164, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = tail call i32 (ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.59, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.an, i32 noundef %.pre) #8
  br label %.thread149

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41
  %.not139 = icmp eq i32 %i.at, 2
  br i1 %.not139, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.av = load i32, ptr %i.au, align 4, !tbaa !79 ; 2 uses
  %i.aw = add nsw i32 %i.an, -1
  %.not140 = icmp eq i32 %i.av, %i.aw
  br i1 %.not140, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = tail call i32 (ptr, i32, ptr, ...) %i.ay(ptr noundef nonnull %0, i32 noundef 26, ptr noundef nonnull @.str.60, i32 noundef %i.an, i32 noundef %i.av) #8
  br label %.thread149

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !70
  %.not141 = icmp eq i8 %i.bb, 0
  br i1 %.not141, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %1, ptr %i.a, align 16, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i32 [ 1, %bb.u ], [ 0, %bb.t ]        ; 3 uses
  %i.bc = zext nneg i32 %.0 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc ; 4 uses
  store i32 %3, ptr %i.bd, align 4, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %4, ptr %i.be, align 4, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %5, ptr %i.bf, align 4, !tbaa !46
  %i.bg = or disjoint i32 %.0, 4                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %6, ptr %i.bh, align 4, !tbaa !46
  %i.bi = load i32, ptr %i.m, align 4, !tbaa !42
  %.not142 = icmp eq i32 %i.bi, 3
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = add nuw nsw i32 %.0, 5
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk
  store i32 %i.ag, ptr %i.bl, align 4, !tbaa !46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1 = phi i32 [ %i.bj, %bb.w ], [ %i.bg, %bb.v ]
  %i.bm = call fastcc i32 @alloc_chunk_table(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.c) ; 2 uses
  %.not143 = icmp eq i32 %i.bm, 0
  br i1 %.not143, label %bb.y, label %.thread149

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.bq = zext nneg i32 %i.an to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  store i64 %i.bo, ptr %i.br, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !81
  %i.bu = zext nneg i32 %.1 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = call i32 %i.bt(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bv, ptr noundef nonnull %i.bn) #8 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %.thread149

bb.z:                                             ; preds = %bb.y
  %i.by = load i32, ptr %i.m, align 4, !tbaa !42
  %i.bz = icmp eq i32 %i.by, 3
  br i1 %i.bz, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 %11, ptr %i.d, align 16, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %8, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %9, ptr %i.cb, align 16, !tbaa !30
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !81
  %i.cd = call i32 %i.cc(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 24, ptr noundef nonnull %i.bn) #8 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ab, label %.thread147

.thread147:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread149

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !81
  %i.cg = call i32 %i.cf(ptr noundef nonnull %0, ptr noundef %10, i64 noundef %11, ptr noundef nonnull %i.bn) #8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread, label %.thread149

.thread:                                          ; preds = %bb.z, %bb.ab
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !81
  %i.cj = call i32 %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %i.bn) #8 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ac, label %.thread149

bb.ac:                                            ; preds = %.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82
  %i.cn = add nsw i32 %i.cm, 1                    ; 3 uses
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !82
  %i.co = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !29
  store i64 %i.cr, ptr %i.e, align 8, !tbaa !30
  %i.cs = load i32, ptr %i.r, align 8, !tbaa !78
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  store i32 %i.ct, ptr %i.r, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  %i.cw = icmp eq i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 5, ptr %0, align 8, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 -1, ptr %i.cx, align 4, !tbaa !79
  store i32 0, ptr %i.cl, align 8, !tbaa !82
  %i.cy = load ptr, ptr %i.bs, align 8, !tbaa !81
  %i.cz = sext i32 %i.cn to i64
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = call i32 %i.cy(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, i64 noundef %i.da, ptr noundef nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread149

bb.ag:                                            ; preds = %bb.ac
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.an, ptr %i.dc, align 4, !tbaa !79
  br label %.thread149

.thread149:                                       ; preds = %bb.y, %.thread147, %bb.ab, %.thread, %bb.ag, %bb.af, %bb.x, %bb.o, %bb.s, %._crit_edge, %bb.n, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.0123 = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ %i.v, %bb.g ], [ %i.aa, %bb.i ], [ %i.af, %bb.k ], [ %i.al, %bb.n ], [ %i.bm, %bb.x ], [ %i.ar, %._crit_edge ], [ %i.az, %bb.s ], [ %i.am, %bb.o ], [ %i.db, %bb.af ], [ 0, %bb.ag ], [ %i.cj, %.thread ], [ %i.cd, %.thread147 ], [ %i.cg, %bb.ab ], [ %i.bw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0123
}

; Function Attrs: nounwind uwtable
define i32 @exr_write_deep_tile_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #8 ; 0 uses
end_hunk_1
