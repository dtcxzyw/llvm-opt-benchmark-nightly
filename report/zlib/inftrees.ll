Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inftrees?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inflate_table:.preheader236
bb.p:                                             ; preds = %.lr.ph248
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge249, label %.lr.ph248, !llvm.loop !11

._crit_edge249.loopexit.split.loop.exit:          ; preds = %.lr.ph248
  %i.bv = trunc nuw nsw i64 %indvars.iv279 to i32 ; 2 uses
  %i.bw = tail call i32 @llvm.umax.i32(i32 %spec.select322, i32 %i.bv)
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %bb.p, %bb.n, %._crit_edge249.loopexit.split.loop.exit
  %spec.select325 = phi i32 [ 1, %bb.n ], [ %i.bw, %._crit_edge249.loopexit.split.loop.exit ], [ %.0196245.lcssa.ph, %bb.p ] ; 8 uses
  %.0196245.lcssa323 = phi i32 [ 1, %bb.n ], [ %.0196245.lcssa.ph, %._crit_edge249.loopexit.split.loop.exit ], [ %.0196245.lcssa.ph, %bb.p ] ; 4 uses
  %i.bx = phi i1 [ false, %bb.n ], [ true, %._crit_edge249.loopexit.split.loop.exit ], [ true, %bb.p ]
  %i.by = phi i16 [ 0, %bb.n ], [ %.ph320, %._crit_edge249.loopexit.split.loop.exit ], [ %.ph320, %bb.p ]
  %.0197.lcssa = phi i32 [ 1, %bb.n ], [ %i.bv, %._crit_edge249.loopexit.split.loop.exit ], [ %.0196245.lcssa.ph, %bb.p ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !17 ; 4 uses
  %i.cb = icmp ugt i16 %i.ca, 2
  br i1 %i.cb, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %._crit_edge249
  %i.cc = shl nuw nsw i16 %i.ca, 1
  %i.cd = sub nuw nsw i16 4, %i.cc
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !17 ; 2 uses
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub nsw i32 %i.ce, %i.ch                ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = shl nuw nsw i32 %i.ci, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !17 ; 2 uses
  %i.cn = zext i16 %i.cm to i32
  %i.co = sub nsw i32 %i.ck, %i.cn                ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i32 %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !17 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = sub nsw i32 %i.cq, %i.ct                ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i32 %i.cu, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !17 ; 2 uses
  %i.cz = zext i16 %i.cy to i32
  %i.da = sub nsw i32 %i.cw, %i.cz                ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = shl nuw nsw i32 %i.da, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !17 ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = sub nsw i32 %i.dc, %i.df                ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = shl nuw nsw i32 %i.dg, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !17 ; 2 uses
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.di, %i.dl                ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = shl nuw nsw i32 %i.dm, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dq = load i16, ptr %i.dp, align 16, !tbaa !17 ; 2 uses
  %i.dr = zext i16 %i.dq to i32
  %i.ds = sub nsw i32 %i.do, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw nsw i32 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !17 ; 2 uses
  %i.dx = zext i16 %i.dw to i32
  %i.dy = sub nsw i32 %i.du, %i.dx                ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = shl nuw nsw i32 %i.dy, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !17 ; 2 uses
  %i.ed = zext i16 %i.ec to i32
  %i.ee = sub nsw i32 %i.ea, %i.ed                ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = shl nuw nsw i32 %i.ee, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !17 ; 2 uses
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.eg, %i.ej                ; 2 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = shl nuw nsw i32 %i.ek, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eo = load i16, ptr %i.en, align 8, !tbaa !17 ; 2 uses
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.em, %i.ep                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !17 ; 2 uses
  %i.ev = zext i16 %i.eu to i32
  %i.ew = sub nsw i32 %i.es, %i.ev                ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = shl nuw nsw i32 %i.ew, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !17 ; 2 uses
  %i.fb = zext i16 %i.fa to i32
  %i.fc = sub nsw i32 %i.ey, %i.fb                ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = shl nuw nsw i32 %i.fc, 1                ; 2 uses
  %i.ff = zext i16 %i.by to i32                   ; 2 uses
  %i.fg = icmp samesign ult i32 %i.fe, %i.ff
  br i1 %i.fg, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not233 = icmp ne i32 %i.fe, %i.ff
  %i.fh = icmp eq i32 %0, 0
  %or.cond = or i1 %i.fh, %i.bx
  %or.cond347 = and i1 %.not233, %or.cond
  br i1 %or.cond347, label %.loopexit, label %.preheader234

.preheader234:                                    ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.fi, align 2, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ca, ptr %i.fj, align 4, !tbaa !17
  %i.fk = add i16 %i.cg, %i.ca                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !17
  %i.fm = add i16 %i.cm, %i.fk                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fm, ptr %i.fn, align 8, !tbaa !17
  %i.fo = add i16 %i.cs, %i.fm                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !17
  %i.fq = add i16 %i.cy, %i.fo                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.fq, ptr %i.fr, align 4, !tbaa !17
  %i.fs = add i16 %i.de, %i.fq                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !17
  %i.fu = add i16 %i.dk, %i.fs                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fu, ptr %i.fv, align 16, !tbaa !17
  %i.fw = add i16 %i.dq, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !17
  %i.fy = add i16 %i.dw, %i.fw                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.fy, ptr %i.fz, align 4, !tbaa !17
  %i.ga = add i16 %i.ec, %i.fy                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !17
  %i.gc = add i16 %i.ei, %i.ga                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.gc, ptr %i.gd, align 8, !tbaa !17
  %i.ge = add i16 %i.eo, %i.gc                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !17
  %i.gg = add i16 %i.eu, %i.ge                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.gg, ptr %i.gh, align 4, !tbaa !17
  %i.gi = add i16 %i.fa, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !17
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader234
  %i.gk = icmp eq i32 %2, 1
  br i1 %i.gk, label %.lr.ph256.epil.preheader, label %.lr.ph256.preheader.new

.lr.ph256.preheader.new:                          ; preds = %.lr.ph256.preheader
  %6 = and i32 %2, -2
  %unroll_iter368 = zext i32 %6 to i64
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.ah, %.lr.ph256.preheader.new
  %indvars.iv292 = phi i64 [ 0, %.lr.ph256.preheader.new ], [ %indvars.iv.next293.1, %bb.ah ] ; 4 uses
  %niter369 = phi i64 [ 0, %.lr.ph256.preheader.new ], [ %niter369.next.1, %bb.ah ]
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv292
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !17 ; 2 uses
  %.not220 = icmp eq i16 %i.gm, 0
  br i1 %.not220, label %.lr.ph256.1, label %bb.af

bb.af:                                            ; preds = %.lr.ph256
  %i.gn = trunc i64 %indvars.iv292 to i16
  %i.go = zext i16 %i.gm to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.go ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !17 ; 2 uses
  %i.gr = add i16 %i.gq, 1
  store i16 %i.gr, ptr %i.gp, align 2, !tbaa !17
  %i.gs = zext i16 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gs
  store i16 %i.gn, ptr %i.gt, align 2, !tbaa !17
  br label %.lr.ph256.1

.lr.ph256.1:                                      ; preds = %.lr.ph256, %bb.af
  %indvars.iv.next293 = or disjoint i64 %indvars.iv292, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next293
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !17 ; 2 uses
  %.not220.1 = icmp eq i16 %i.gv, 0
  br i1 %.not220.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph256.1
  %i.gw = trunc i64 %indvars.iv.next293 to i16
  %i.gx = zext i16 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gx ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !17 ; 2 uses
  %i.ha = add i16 %i.gz, 1
  store i16 %i.ha, ptr %i.gy, align 2, !tbaa !17
  %i.hb = zext i16 %i.gz to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hb
  store i16 %i.gw, ptr %i.hc, align 2, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph256.1
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter369.next.1 = add i64 %niter369, 2         ; 2 uses
  %niter369.ncmp.1 = icmp eq i64 %niter369.next.1, %unroll_iter368
  br i1 %niter369.ncmp.1, label %._crit_edge257.loopexit.unr-lcssa, label %.lr.ph256, !llvm.loop !12

._crit_edge257.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod366.not = trunc i32 %2 to i1
  br i1 %lcmp.mod366.not, label %.lr.ph256.epil.preheader, label %._crit_edge257

.lr.ph256.epil.preheader:                         ; preds = %._crit_edge257.loopexit.unr-lcssa, %.lr.ph256.preheader
  %indvars.iv292.epil.init = phi i64 [ 0, %.lr.ph256.preheader ], [ %indvars.iv.next293.1, %._crit_edge257.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod367 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod367)
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv292.epil.init
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !17 ; 2 uses
  %.not220.epil = icmp eq i16 %i.he, 0
  br i1 %.not220.epil, label %._crit_edge257, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph256.epil.preheader
  %i.hf = trunc i64 %indvars.iv292.epil.init to i16
  %i.hg = zext i16 %i.he to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hg ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !17 ; 2 uses
  %i.hj = add i16 %i.hi, 1
  store i16 %i.hj, ptr %i.hh, align 2, !tbaa !17
  %i.hk = zext i16 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hk
  store i16 %i.hf, ptr %i.hl, align 2, !tbaa !17
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %._crit_edge257.loopexit.unr-lcssa, %bb.ai, %.lr.ph256.epil.preheader, %.preheader234
  switch i32 %0, label %.preheader [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge257
  br label %.preheader

bb.ak:                                            ; preds = %._crit_edge257
  %i.hm = icmp ugt i32 %spec.select325, 9
  br i1 %i.hm, label %.loopexit, label %.preheader

bb.al:                                            ; preds = %._crit_edge257
  %i.hn = icmp ugt i32 %spec.select325, 9
  br i1 %i.hn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aj, %._crit_edge257, %bb.ak, %bb.al
  %i.ho = phi i1 [ false, %bb.ak ], [ true, %bb.al ], [ false, %._crit_edge257 ], [ false, %bb.aj ]
  %.0177230334 = phi ptr [ @inflate_table.lbase, %bb.ak ], [ @inflate_table.dbase, %bb.al ], [ null, %._crit_edge257 ], [ null, %bb.aj ]
  %.0176231333 = phi ptr [ @inflate_table.lext, %bb.ak ], [ @inflate_table.dext, %bb.al ], [ null, %._crit_edge257 ], [ null, %bb.aj ]
  %.0232332 = phi i32 [ 257, %bb.ak ], [ 0, %bb.al ], [ 0, %._crit_edge257 ], [ 20, %bb.aj ] ; 3 uses
  %i.hp = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ false, %._crit_edge257 ], [ false, %bb.aj ]
  %i.hq = shl nuw i32 1, %spec.select325          ; 2 uses
  %i.hr = add i32 %i.hq, -1
  %i.hs = load ptr, ptr %3, align 8, !tbaa !21
  %i.ht = trunc i32 %spec.select325 to i8
  br label %.outer

.outer:                                           ; preds = %bb.ba, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.ba ], [ %.0197.lcssa, %.preheader ]
  %.2200.ph = phi i32 [ %i.iw, %bb.ba ], [ 0, %.preheader ]
  %.0191.ph = phi i32 [ %.1192.lcssa, %bb.ba ], [ %spec.select325, %.preheader ]
  %.0189.ph = phi i32 [ %spec.select222, %bb.ba ], [ 0, %.preheader ] ; 4 uses
  %.0185.ph = phi i32 [ %i.ke, %bb.ba ], [ %i.hq, %.preheader ] ; 2 uses
  %.0183.ph = phi i32 [ %.1184, %bb.ba ], [ 0, %.preheader ]
  %.0179.ph = phi i32 [ %i.jl, %bb.ba ], [ -1, %.preheader ]
  %.0178.ph = phi ptr [ %i.jo, %bb.ba ], [ %i.hs, %.preheader ] ; 3 uses
  %i.hu = shl nuw i32 1, %.0191.ph                ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2200 = phi i32 [ %.2200.ph, %.outer ], [ %i.iw, %.backedge ] ; 2 uses
  %.0183 = phi i32 [ %.0183.ph, %.outer ], [ %.1184, %.backedge ] ; 3 uses
  %i.hv = sub i32 %.3, %.0189.ph                  ; 2 uses
  %i.hw = trunc i32 %i.hv to i8                   ; 2 uses
  %i.hx = zext i32 %.2200 to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !17 ; 2 uses
  %i.ia = zext i16 %i.hz to i32                   ; 3 uses
  %i.ib = add nuw nsw i32 %i.ia, 1
  %i.ic = icmp samesign ult i32 %i.ib, %.0232332
  br i1 %i.ic, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not214 = icmp samesign ugt i32 %.0232332, %i.ia
  br i1 %.not214, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.id = sub nuw nsw i32 %i.ia, %.0232332
  %i.ie = zext nneg i32 %i.id to i64              ; 2 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.0176231333, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !17
  %i.ih = trunc i16 %i.ig to i8
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.0177230334, i64 %i.ie
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.ao
  %.sroa.14.0 = phi i16 [ %i.hz, %bb.am ], [ %i.ij, %bb.ao ], [ 0, %bb.an ]
  %.sroa.0.0 = phi i8 [ 0, %bb.am ], [ %i.ih, %bb.ao ], [ 96, %bb.an ]
  %.neg = shl nsw i32 -1, %i.hv
  %i.ik = lshr i32 %.0183, %.0189.ph
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0181 = phi i32 [ %i.hu, %bb.ap ], [ %i.il, %bb.aq ]
  %i.il = add i32 %.0181, %.neg                   ; 3 uses
  %i.im = add i32 %i.il, %i.ik
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0178.ph, i64 %i.in ; 3 uses
  store i8 %.sroa.0.0, ptr %i.io, align 2, !tbaa !22
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  store i8 %i.hw, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !22
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !17
  %.not215 = icmp eq i32 %i.il, 0
  br i1 %.not215, label %bb.ar, label %bb.aq, !llvm.loop !13

bb.ar:                                            ; preds = %bb.aq
  %i.ip = add i32 %.3, -1
  %i.iq = shl nuw i32 1, %i.ip
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0182 = phi i32 [ %i.iq, %bb.ar ], [ %i.is, %bb.as ] ; 5 uses
  %i.ir = and i32 %.0182, %.0183
  %.not216 = icmp eq i32 %i.ir, 0
  %i.is = lshr i32 %.0182, 1
  br i1 %.not216, label %bb.at, label %bb.as, !llvm.loop !14

bb.at:                                            ; preds = %bb.as
  %.not217 = icmp eq i32 %.0182, 0
  %i.it = add i32 %.0182, -1
  %i.iu = and i32 %i.it, %.0183
  %i.iv = add i32 %i.iu, %.0182
  %.1184 = select i1 %.not217, i32 0, i32 %i.iv   ; 5 uses
  %i.iw = add i32 %.2200, 1                       ; 3 uses
  %i.ix = zext i32 %.3 to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ix ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !17
  %i.ja = add i16 %i.iz, -1                       ; 2 uses
  store i16 %i.ja, ptr %i.iy, align 2, !tbaa !17
  %i.jb = icmp eq i16 %i.ja, 0
  br i1 %i.jb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jc = icmp eq i32 %.3, %.0196245.lcssa323
  br i1 %i.jc, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jd = zext i32 %i.iw to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !17
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !17
  %i.jj = zext i16 %i.ji to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.4 = phi i32 [ %i.jj, %bb.av ], [ %.3, %bb.at ] ; 6 uses
  %i.jk = icmp ugt i32 %.4, %spec.select325
  br i1 %i.jk, label %bb.ax, label %.backedge

bb.ax:                                            ; preds = %bb.aw
  %i.jl = and i32 %.1184, %i.hr                   ; 3 uses
  %.not218 = icmp eq i32 %i.jl, %.0179.ph
  br i1 %.not218, label %.backedge, label %bb.ay

.backedge:                                        ; preds = %bb.ax, %bb.aw
  br label %bb.am

bb.ay:                                            ; preds = %bb.ax
  %i.jm = icmp eq i32 %.0189.ph, 0
  %spec.select222 = select i1 %i.jm, i32 %spec.select325, i32 %.0189.ph ; 4 uses
  %i.jn = zext i32 %i.hu to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0178.ph, i64 %i.jn ; 2 uses
  %i.jp = sub i32 %.4, %spec.select222            ; 3 uses
  %i.jq = shl nuw i32 1, %i.jp                    ; 2 uses
  %i.jr = icmp ult i32 %.4, %.0196245.lcssa323
  br i1 %i.jr, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %bb.ay
  %i.js = sub i32 %.0196245.lcssa323, %spec.select222
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.az
  %i.jt = phi i32 [ %i.kc, %bb.az ], [ %.4, %.lr.ph261.preheader ]
  %.1188259 = phi i32 [ %i.kb, %bb.az ], [ %i.jq, %.lr.ph261.preheader ]
  %.1192258 = phi i32 [ %i.ka, %bb.az ], [ %i.jp, %.lr.ph261.preheader ] ; 2 uses
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !17
  %i.jx = zext i16 %i.jw to i32
  %i.jy = sub nsw i32 %.1188259, %i.jx            ; 2 uses
  %i.jz = icmp slt i32 %i.jy, 1
  br i1 %i.jz, label %._crit_edge262.loopexit, label %bb.az

bb.az:                                            ; preds = %.lr.ph261
  %i.ka = add i32 %.1192258, 1                    ; 2 uses
  %i.kb = shl nuw i32 %i.jy, 1
  %i.kc = add i32 %i.ka, %spec.select222          ; 2 uses
  %i.kd = icmp ult i32 %i.kc, %.0196245.lcssa323
  br i1 %i.kd, label %.lr.ph261, label %._crit_edge262.loopexit, !llvm.loop !15

end_hunk_0
