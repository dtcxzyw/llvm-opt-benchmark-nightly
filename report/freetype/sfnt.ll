Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_cmap4_char_map_binary:bb.a
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 4 uses
  %i.bn = add nsw i32 %i.t, -1
  %i.bo = icmp uge i32 %i.z, %i.bn
  %i.bp = icmp eq i32 %i.ar, 65535
  %or.cond = and i1 %i.bo, %i.bp
  %i.bq = icmp eq i32 %i.aj, 65535
  %or.cond3 = select i1 %or.cond, i1 %i.bq, i1 false
  %i.br = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.br, i1 false
  %i.bs = zext nneg i32 %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = icmp ugt ptr %i.bu, %i.f
  %or.cond315 = select i1 %or.cond5, i1 %i.bv, i1 false ; 2 uses
  %.0246 = select i1 %or.cond315, i32 0, i32 %i.bm ; 4 uses
  %.0234 = select i1 %or.cond315, i32 1, i32 %i.be ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !46
  %i.by = and i32 %i.bx, 2
  %.not295 = icmp eq i32 %i.by, 0
  %i.bz = icmp eq i32 %.0246, 65535               ; 3 uses
  br i1 %.not295, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = add nuw i32 %i.z, 1                     ; 3 uses
  %.not296411 = icmp eq i32 %i.z, 0
  br i1 %.not296411, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %spec.select = select i1 %i.bz, i32 %i.ca, i32 %i.z ; 2 uses
  %i.cb = lshr i32 %i.y, 1                        ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = shl nuw i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.i, %i.cm
  br i1 %i.cn, label %._crit_edge, label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph.preheader
  %i.co = zext nneg i32 %i.cb to i64
  %invariant.gep = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

.lr.ph:                                           ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv559, -1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = shl nuw i32 %i.cq, 1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = icmp samesign ugt i32 %i.i, %i.da
  br i1 %i.db, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !829

bb.h:                                             ; preds = %.lr.ph561, %.lr.ph
  %i.dc = phi i32 [ %i.cm, %.lr.ph561 ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dd = phi i64 [ %i.ce, %.lr.ph561 ], [ %i.cs, %.lr.ph ]
  %i.de = phi i32 [ %i.cc, %.lr.ph561 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.1220416560 = phi i32 [ %spec.select, %.lr.ph561 ], [ %spec.select316, %.lr.ph ]
  %indvars.iv559 = phi i64 [ %i.co, %.lr.ph561 ], [ %indvars.iv.next, %.lr.ph ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 %i.av ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.av ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !29
  %i.dm = zext i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dj, %i.dm            ; 3 uses
  %.not297 = icmp eq i32 %i.dn, 65535
  %spec.select316 = select i1 %.not297, i32 %.1220416560, i32 %i.de ; 3 uses
  %.not296 = icmp eq i32 %i.de, 0
  br i1 %.not296, label %.._crit_edge_crit_edge, label %.lr.ph, !llvm.loop !829

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %i.do = load i8, ptr %gep, align 1, !tbaa !29
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.ea = zext i8 %i.dz to i16
  %i.eb = or disjoint i16 %i.dx, %i.ea
  %i.ec = sext i16 %i.eb to i32
  br label %._crit_edge, !llvm.loop !829

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ed = load i8, ptr %gep, align 1, !tbaa !29
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !29
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei
  %i.ek = load i8, ptr %i.df, align 1, !tbaa !29
  %i.el = zext i8 %i.ek to i16
  %i.em = shl nuw i16 %i.el, 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !29
  %i.ep = zext i8 %i.eo to i16
  %i.eq = or disjoint i16 %i.em, %i.ep
  %i.er = sext i16 %i.eq to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge, %.lr.ph.preheader
  %.0270.lcssa = phi i32 [ %i.ar, %.lr.ph.preheader ], [ %i.du, %.._crit_edge_crit_edge ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %.0258.lcssa = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %i.dc, %.._crit_edge_crit_edge ], [ %i.dc, %._crit_edge.loopexit ] ; 2 uses
  %.1247.lcssa = phi i32 [ %.0246, %.lr.ph.preheader ], [ %i.dn, %.._crit_edge_crit_edge ], [ %i.dn, %._crit_edge.loopexit ] ; 2 uses
  %.1235.lcssa = phi i32 [ %.0234, %.lr.ph.preheader ], [ %i.ec, %.._crit_edge_crit_edge ], [ %i.er, %._crit_edge.loopexit ] ; 2 uses
  %.1220.lcssa = phi i32 [ %spec.select, %.lr.ph.preheader ], [ %spec.select316, %.._crit_edge_crit_edge ], [ %spec.select316, %._crit_edge.loopexit ] ; 2 uses
  %.0209.lcssa = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.dg, %.._crit_edge_crit_edge ], [ %i.dg, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.cb, %.lr.ph.preheader ], [ 0, %.._crit_edge_crit_edge ], [ %i.cp, %._crit_edge.loopexit ] ; 2 uses
  %i.es = icmp eq i32 %.1220.lcssa, %i.ca
  br i1 %i.es, label %bb.i, label %bb.k

._crit_edge.thread:                               ; preds = %bb.g
  br i1 %i.bz, label %.thread, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %.not298 = icmp eq i32 %.0.lcssa, %i.z
  br i1 %.not298, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.j, %bb.i
  %.3273 = phi i32 [ %i.ar, %bb.j ], [ %.0270.lcssa, %bb.i ], [ %i.ar, %._crit_edge.thread ]
  %.3261 = phi i32 [ %i.aj, %bb.j ], [ %.0258.lcssa, %bb.i ], [ %i.aj, %._crit_edge.thread ] ; 2 uses
  %.4250 = phi i32 [ %i.bm, %bb.j ], [ %.1247.lcssa, %bb.i ], [ 65535, %._crit_edge.thread ]
  %.4238 = phi i32 [ %i.be, %bb.j ], [ %.1235.lcssa, %bb.i ], [ %.0234, %._crit_edge.thread ]
  %i.et = icmp ult i32 %i.ca, %i.t
  br i1 %i.et, label %.lr.ph440.preheader, label %.loopexit389

.lr.ph440.preheader:                              ; preds = %.thread
  %i.eu = lshr i32 %i.y, 1                        ; 2 uses
  %narrow = add nuw i32 %i.eu, 1                  ; 3 uses
  %i.ev = zext i32 %narrow to i64                 ; 2 uses
  %i.ew = add nuw i32 %i.t, %i.eu
  %i.ex = sub i32 %i.ew, %i.z
  %wide.trip.count = zext i32 %i.ex to i64
  %i.ey = shl nuw nsw i64 %i.ev, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.x ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !29
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = icmp ult i32 %i.i, %i.fh
  br i1 %i.fi, label %._crit_edge441, label %.lr.ph577

.lr.ph440:                                        ; preds = %.lr.ph577
  %i.fj = shl nuw nsw i64 %indvars.iv.next481, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.x ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !29
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !29
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr            ; 2 uses
  %i.ft = icmp ult i32 %i.i, %i.fs
  %i.fu = trunc nuw nsw i64 %indvars.iv.next481 to i32 ; 2 uses
  br i1 %i.ft, label %._crit_edge441.loopexit, label %.lr.ph577, !llvm.loop !830

.lr.ph577:                                        ; preds = %.lr.ph440.preheader, %.lr.ph440
  %i.fv = phi i32 [ %i.fu, %.lr.ph440 ], [ %narrow, %.lr.ph440.preheader ]
  %i.fw = phi i32 [ %i.fs, %.lr.ph440 ], [ %i.fh, %.lr.ph440.preheader ] ; 2 uses
  %i.fx = phi ptr [ %i.fk, %.lr.ph440 ], [ %i.ez, %.lr.ph440.preheader ] ; 5 uses
  %.5224437576 = phi i32 [ %spec.select317, %.lr.ph440 ], [ %i.z, %.lr.ph440.preheader ]
  %indvars.iv480575 = phi i64 [ %indvars.iv.next481, %.lr.ph440 ], [ %i.ev, %.lr.ph440.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.x
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.av ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.av ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !29
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !29
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gd, %i.gg            ; 3 uses
  %.not299 = icmp eq i32 %i.gh, 65535
  %spec.select317 = select i1 %.not299, i32 %.5224437576, i32 %i.fv ; 3 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480575, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count
  br i1 %exitcond.not, label %.._crit_edge441_crit_edge, label %.lr.ph440, !llvm.loop !830

.._crit_edge441_crit_edge:                        ; preds = %.lr.ph577
  %i.gi = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !29
  %i.gn = zext i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gk, %i.gn
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.gq = zext i8 %i.gp to i16
  %i.gr = shl nuw i16 %i.gq, 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !29
  %i.gu = zext i8 %i.gt to i16
  %i.gv = or disjoint i16 %i.gr, %i.gu
  %i.gw = sext i16 %i.gv to i32
  br label %._crit_edge441, !llvm.loop !830

._crit_edge441.loopexit:                          ; preds = %.lr.ph440
  %i.gx = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !29
  %i.hc = zext i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.gz, %i.hc
  %i.he = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.hf = zext i8 %i.he to i16
  %i.hg = shl nuw i16 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !29
  %i.hj = zext i8 %i.hi to i16
  %i.hk = or disjoint i16 %i.hg, %i.hj
  %i.hl = sext i16 %i.hk to i32
  br label %._crit_edge441

._crit_edge441:                                   ; preds = %._crit_edge441.loopexit, %.._crit_edge441_crit_edge, %.lr.ph440.preheader
  %.4274.lcssa.ph = phi i32 [ %i.fw, %.._crit_edge441_crit_edge ], [ %.3273, %.lr.ph440.preheader ], [ %i.fw, %._crit_edge441.loopexit ]
  %.4262.lcssa.ph = phi i32 [ %i.go, %.._crit_edge441_crit_edge ], [ %.3261, %.lr.ph440.preheader ], [ %i.hd, %._crit_edge441.loopexit ] ; 2 uses
  %.5251.lcssa.ph = phi i32 [ %i.gh, %.._crit_edge441_crit_edge ], [ %.4250, %.lr.ph440.preheader ], [ %i.gh, %._crit_edge441.loopexit ]
  %.5239.lcssa.ph = phi i32 [ %i.gw, %.._crit_edge441_crit_edge ], [ %.4238, %.lr.ph440.preheader ], [ %i.hl, %._crit_edge441.loopexit ]
  %.5224.lcssa.ph = phi i32 [ %spec.select317, %.._crit_edge441_crit_edge ], [ %i.z, %.lr.ph440.preheader ], [ %spec.select317, %._crit_edge441.loopexit ] ; 2 uses
  %.1.lcssa.ph = phi i32 [ %i.t, %.._crit_edge441_crit_edge ], [ %narrow, %.lr.ph440.preheader ], [ %i.fu, %._crit_edge441.loopexit ]
  %.6.ph = phi ptr [ %i.ga, %.._crit_edge441_crit_edge ], [ %i.fa, %.lr.ph440.preheader ], [ %i.fl, %._crit_edge441.loopexit ]
  %i.hm = add i32 %.1.lcssa.ph, -1                ; 2 uses
  %i.hn = icmp eq i32 %.5224.lcssa.ph, %i.z
  br i1 %i.hn, label %.loopexit389, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge441, %._crit_edge
  %.7277 = phi i32 [ %.4274.lcssa.ph, %._crit_edge441 ], [ %.0270.lcssa, %._crit_edge ], [ %i.ar, %._crit_edge.thread ]
  %.7265 = phi i32 [ %.4262.lcssa.ph, %._crit_edge441 ], [ %.0258.lcssa, %._crit_edge ], [ %i.aj, %._crit_edge.thread ]
  %.8254 = phi i32 [ %.5251.lcssa.ph, %._crit_edge441 ], [ %.1247.lcssa, %._crit_edge ], [ %.0246, %._crit_edge.thread ]
  %.8242 = phi i32 [ %.5239.lcssa.ph, %._crit_edge441 ], [ %.1235.lcssa, %._crit_edge ], [ %.0234, %._crit_edge.thread ]
  %.9228 = phi i32 [ %.5224.lcssa.ph, %._crit_edge441 ], [ %.1220.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 4 uses
  %.7 = phi ptr [ %.6.ph, %._crit_edge441 ], [ %.0209.lcssa, %._crit_edge ], [ %i.bf, %._crit_edge.thread ]
  %.2 = phi i32 [ %i.hm, %._crit_edge441 ], [ %.0.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ]
  %.not300 = icmp eq i32 %.9228, %.2
  br i1 %.not300, label %.thread352, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ho = shl i32 %.9228, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hp ; 3 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !29
  %i.hs = zext i8 %i.hr to i32
  %i.ht = shl nuw nsw i32 %i.hs, 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !29
  %i.hw = zext i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.ht, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.x ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !29
  %i.ia = zext i8 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.ia, 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !29
  %i.ie = zext i8 %i.id to i32
  %i.if = or disjoint i32 %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.av ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !29
  %i.ii = zext i8 %i.ih to i16
  %i.ij = shl nuw i16 %i.ii, 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !29
  %i.im = zext i8 %i.il to i16
  %i.in = or disjoint i16 %i.ij, %i.im
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.av ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !29
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !29
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.is, %i.iv
  br label %.thread352

bb.m:                                             ; preds = %bb.f
  br i1 %i.bz, label %.loopexit389, label %.thread352

.thread352:                                       ; preds = %bb.k, %bb.l, %bb.m
  %.10280 = phi i32 [ %i.ar, %bb.m ], [ %.7277, %bb.k ], [ %i.if, %bb.l ]
  %.10268 = phi i32 [ %i.aj, %bb.m ], [ %.7265, %bb.k ], [ %i.hx, %bb.l ] ; 7 uses
  %.11257 = phi i32 [ %.0246, %bb.m ], [ %.8254, %bb.k ], [ %i.iw, %bb.l ] ; 2 uses
  %.11245 = phi i32 [ %.0234, %bb.m ], [ %.8242, %bb.k ], [ %i.io, %bb.l ] ; 5 uses
  %.11 = phi i32 [ %i.z, %bb.m ], [ %.9228, %bb.k ], [ %.9228, %bb.l ] ; 6 uses
  %.10 = phi ptr [ %i.bf, %bb.m ], [ %.7, %bb.k ], [ %i.ip, %bb.l ]
  %.not301 = icmp eq i32 %.11257, 0
  br i1 %.not301, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread352
  %i.ix = sub nsw i32 %i.i, %.10280
  %i.iy = shl nsw i32 %i.ix, 1
  %i.iz = add nsw i32 %.11257, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.10, i64 %i.ja ; 3 uses
  %.not304 = icmp ne i8 %2, 0
  %i.jc = icmp ugt ptr %i.jb, %i.f
  %or.cond318 = select i1 %.not304, i1 %i.jc, i1 false
  br i1 %or.cond318, label %.thread361, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !29
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !29
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jf, %i.ji            ; 2 uses
  %.not305 = icmp eq i32 %i.jj, 0
  br i1 %.not305, label %.loopexit389, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jk = add nsw i32 %i.jj, %.11245
  %i.jl = and i32 %i.jk, 65535                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !115
  %i.jo = trunc i64 %i.jn to i32
  %.not306 = icmp ult i32 %i.jl, %i.jo
  %spec.store.select = select i1 %.not306, i32 %i.jl, i32 0
  br label %.loopexit389

bb.q:                                             ; preds = %.thread352
  %i.jp = add nsw i32 %.11245, %i.i               ; 3 uses
  %i.jq = and i32 %i.jp, 65535                    ; 3 uses
  %.not302 = icmp eq i8 %2, 0
  br i1 %.not302, label %.thread371, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !115
  %i.jt = trunc i64 %i.js to i32
  %.not303 = icmp ult i32 %i.jq, %i.jt
  br i1 %.not303, label %.thread361, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ju = icmp slt i32 %i.jp, 0
  %i.jv = add nsw i32 %.11245, %.10268            ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  %or.cond320 = select i1 %i.ju, i1 %i.jw, i1 false
  br i1 %or.cond320, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jx = sub nsw i32 0, %.11245
  br label %.thread361

bb.u:                                             ; preds = %bb.s
  %i.jy = icmp slt i32 %i.jp, 65536
  %i.jz = icmp sgt i32 %i.jv, 65535
  %or.cond322 = select i1 %i.jy, i1 %i.jz, i1 false
  %i.ka = sub nsw i32 65536, %.11245
  %spec.select323 = select i1 %or.cond322, i32 %i.ka, i32 %i.i
  br label %.thread361

bb.v:                                             ; preds = %bb.c, %bb.e
  %.1233 = phi i32 [ %.0232, %bb.e ], [ %i.z, %bb.c ] ; 2 uses
end_hunk_0
