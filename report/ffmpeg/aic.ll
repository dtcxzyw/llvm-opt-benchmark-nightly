Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aic?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@aic_decode_frame:bb.a
  %i.bj = shl nuw nsw i32 %i.bf, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 208 ; 81 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 69
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 71
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 74
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 75
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 77
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 78
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 79
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 82
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 85
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 86
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 91
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 93
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 95
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 97
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 99
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 102
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 105
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 106
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 107
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 109
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 110
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 111
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 115
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 117
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 118
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 119
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 121
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 123
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 125
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 126
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 127
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.ek = load i32, ptr %i.bm, align 16, !tbaa !56 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.preheader, label %._crit_edge112

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.em = phi i32 [ %i.akt, %._crit_edge ], [ %i.be, %.preheader.lr.ph ]
  %i.en = phi i32 [ %i.aku, %._crit_edge ], [ %i.ek, %.preheader.lr.ph ] ; 3 uses
  %.0111 = phi i32 [ %i.akv, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 7 uses
  %.054110 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.s, %.preheader.lr.ph ] ; 2 uses
  %.sroa.0.0109 = phi ptr [ %.sroa.0.1.lcssa, %._crit_edge ], [ %i.bi, %.preheader.lr.ph ] ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not.i64 = icmp eq i32 %.0111, 0
  %i.ep = shl nuw nsw i32 %.0111, 4
  %i.eq = shl nuw nsw i32 %.0111, 3
  %i.er = ptrtoint ptr %.sroa.0.0109 to i64
  %i.es = sub i64 %i.bn, %i.er
  %i.et = icmp slt i64 %i.es, 2
  br i1 %i.et, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit

bb.n:                                             ; preds = %.loopexit80
  %i.eu = ptrtoint ptr %i.ey to i64
  %i.ev = sub i64 %i.bn, %i.eu
  %i.ew = icmp slt i64 %i.ev, 2
  br i1 %i.ew, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit, !llvm.loop !57

bytestream2_get_le16.exit:                        ; preds = %.lr.ph, %bb.n
  %.sroa.0.1105242 = phi ptr [ %i.ey, %bb.n ], [ %.sroa.0.0109, %.lr.ph ] ; 2 uses
  %.1106241 = phi i32 [ %i.fc, %bb.n ], [ %.054110, %.lr.ph ] ; 2 uses
  %.053107240 = phi i32 [ %i.akq, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %i.ex = phi i32 [ %i.akr, %bb.n ], [ %i.en, %.lr.ph ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.1105242, i64 2 ; 3 uses
  %i.ez = load i16, ptr %.sroa.0.1105242, align 1, !tbaa !35 ; 2 uses
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = shl nuw nsw i32 %i.fa, 2                ; 2 uses
  %i.fc = add i32 %i.fb, %.1106241                ; 3 uses
  %i.fd = icmp ule i32 %i.fc, %i.j
  %i.fe = icmp ne i16 %i.ez, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.o, label %bytestream2_get_le16.exit.thread

bytestream2_get_le16.exit.thread:                 ; preds = %.lr.ph, %bytestream2_get_le16.exit, %bb.n
  %.053107.lcssa = phi i32 [ %i.akq, %bb.n ], [ %.053107240, %bytestream2_get_le16.exit ], [ 0, %.lr.ph ]
  %i.ff = phi i32 [ 0, %bb.n ], [ %i.fb, %bytestream2_get_le16.exit ], [ 0, %.lr.ph ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.ff, i32 noundef %.053107.lcssa, i32 noundef %.0111) #8
  br label %bb.bo

bb.o:                                             ; preds = %bytestream2_get_le16.exit
  %i.fg = zext i32 %.1106241 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fg ; 20 uses
  %i.fi = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.fj = sub i32 %i.ex, %.053107240
  %..i = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fj) ; 7 uses
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = load i32, ptr %i.n, align 4, !tbaa !51
  %i.fl = add nsw i32 %i.fk, -1
  %i.fm = icmp eq i32 %.0111, %i.fl
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fn = phi i1 [ false, %bb.o ], [ %i.fm, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.fo = load ptr, ptr %i.bp, align 8, !tbaa !45
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.fp = load ptr, ptr %i.bq, align 16, !tbaa !45
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.fq = load ptr, ptr %i.br, align 8, !tbaa !45
  store ptr %i.fq, ptr %i.c, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.fr = load ptr, ptr %i.bs, align 16, !tbaa !45
  store ptr %i.fr, ptr %i.d, align 8, !tbaa !45
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !50  ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !38 ; 5 uses
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fv = load ptr, ptr %i.f, align 16, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 116
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !53 ; 2 uses
  %i.fy = add nsw i32 %i.fx, -16
  %i.fz = add nsw i32 %i.fx, 1
  %i.ga = sdiv i32 %i.fz, 2
  %i.gb = add nsw i32 %i.ga, -8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.094.i = phi i32 [ %i.fy, %bb.r ], [ %i.ep, %bb.q ]
  %.093.i = phi i32 [ %i.gb, %bb.r ], [ %i.eq, %bb.q ] ; 2 uses
  %i.gc = load ptr, ptr %i.fs, align 8, !tbaa !58
  %i.gd = shl nsw i32 %.053107240, 3
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !58
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fs, i64 68
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !38
  %i.gk = mul nsw i32 %i.gj, %.093.i
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gh, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !58
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.ge
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !38
  %i.gs = mul nsw i32 %i.gr, %.093.i
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.gp, i64 %i.gt
  %i.gv = shl nsw i32 %.053107240, 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gc, i64 %i.gw
  %i.gy = mul nsw i32 %.094.i, %i.fu
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz
  %i.hb = shl nuw nsw i32 %i.fa, 5                ; 2 uses
  %i.hc = or disjoint i32 %i.hb, 8                ; 22 uses
  %i.hd = load ptr, ptr %i.bt, align 16, !tbaa !42
  %i.he = sext i32 %..i to i64
  %i.hf = mul nsw i64 %i.he, 768
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.hd, i8 0, i64 %i.hf, i1 false)
  %i.hg = load i32, ptr %i.ba, align 4, !tbaa !55
  %.not106.i = icmp eq i32 %i.hg, 0
  %i.hh = zext i1 %.not106.i to i64
  %invariant.op.i = add nsw i32 %i.hb, -5
  %i.hi = icmp sgt i32 %..i, 0                    ; 3 uses
  br label %bb.t

.preheader123.i:                                  ; preds = %.loopexit.i
  br i1 %i.hi, label %.preheader.lr.ph.i, label %.loopexit80

.preheader.lr.ph.i:                               ; preds = %.preheader123.i
  %i.hj = shl nsw i32 %i.fu, 1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = sext i32 %i.fu to i64
  br label %.preheader.i

bb.t:                                             ; preds = %.loopexit.i, %bb.s
  %indvars.iv.i = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i, %.loopexit.i ] ; 4 uses
  %.sroa.4.0136.i = phi i32 [ 0, %bb.s ], [ %.sroa.4.8.ph.i, %.loopexit.i ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !45 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr @aic_num_band_coeffs, i64 %indvars.iv.i
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !35  ; 3 uses
  %i.hq = zext i8 %i.hp to i32                    ; 4 uses
  %i.hr = or i64 %indvars.iv.i, %i.hh
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @aic_scan, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !58 ; 4 uses
  %i.hu = icmp sgt i32 %.sroa.4.0136.i, %invariant.op.i
  br i1 %i.hu, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hv = lshr i32 %.sroa.4.0136.i, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !35
  %spec.select.i.i.i = add nsw i32 %.sroa.4.0136.i, 1 ; 4 uses
  %i.hz = zext i8 %i.hy to i32
  %i.ia = and i32 %.sroa.4.0136.i, 7
  %i.ib = lshr i32 %spec.select.i.i.i, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !35
  %4 = icmp slt i32 %spec.select.i.i.i, %i.hc
  %5 = zext i1 %4 to i32
  %spec.select.i87.i.i = add nsw i32 %spec.select.i.i.i, %5 ; 3 uses
  %i.if = zext i8 %i.ie to i32
  %i.ig = and i32 %spec.select.i.i.i, 7
  %i.ih = shl nuw nsw i32 %i.if, %i.ig
  %i.ii = lshr i32 %i.ih, 7
  %i.ij = and i32 %i.ii, 1                        ; 2 uses
  %i.ik = lshr i32 %spec.select.i87.i.i, 3
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.il
  %i.in = load i32, ptr %i.im, align 1, !tbaa !35
  %i.io = tail call i32 @llvm.bswap.i32(i32 %i.in)
  %i.ip = and i32 %spec.select.i87.i.i, 7
  %i.iq = shl i32 %i.io, %i.ip
  %i.ir = lshr i32 %i.iq, 29                      ; 8 uses
  %i.is = add nsw i32 %spec.select.i87.i.i, 3     ; 2 uses
  %i.it = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %i.is) ; 7 uses
  %i.iu = lshr exact i32 128, %i.ia
  %i.iv = and i32 %i.iu, %i.hz
  %.not.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i, label %.preheader130.i.i, label %bb.ag

.preheader130.i.i:                                ; preds = %bb.u
  br i1 %i.hi, label %.preheader.lr.ph.split.i.i, label %.loopexit.i

.preheader.lr.ph.split.i.i:                       ; preds = %.preheader130.i.i
  %.not80.i.i = icmp eq i32 %i.ir, 0              ; 2 uses
  %i.iw = zext i8 %i.hp to i64                    ; 4 uses
  %.not79.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not79.i.i, label %.preheader.lr.ph.split.split.us.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.hq, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %umax.i.i to i64
  br label %.preheader.i.i

.preheader.lr.ph.split.split.us.i.i:              ; preds = %.preheader.lr.ph.split.i.i
  br i1 %.not80.i.i, label %.preheader.lr.ph.split.split.us.split.us.i.i, label %.preheader.lr.ph.split.split.us.split.i.i

.preheader.lr.ph.split.split.us.split.us.i.i:     ; preds = %.preheader.lr.ph.split.split.us.i.i
  %umax173.i.i = tail call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge.split.us.us.split.us.us.i.i, %.preheader.lr.ph.split.split.us.split.us.i.i
  %spec.select.i.i123.us.us.us.us148.i.i = phi i32 [ %i.it, %.preheader.lr.ph.split.split.us.split.us.i.i ], [ %spec.select.i.i123.us.us.us.us.i.i.lcssa, %._crit_edge.split.us.us.split.us.us.i.i ]
  %.168140.us.us.i.i = phi i32 [ 0, %.preheader.lr.ph.split.split.us.split.us.i.i ], [ %i.jz, %._crit_edge.split.us.us.split.us.us.i.i ]
  %.171138.us.us.i.i = phi ptr [ %i.hn, %.preheader.lr.ph.split.split.us.split.us.i.i ], [ %i.jy, %._crit_edge.split.us.us.split.us.us.i.i ] ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.split.loop.exit353, %.preheader.us.us.i.i
  %indvars.iv170.i.i = phi i64 [ %indvars.iv.next171.i.i, %.split.loop.exit353 ], [ 0, %.preheader.us.us.i.i ] ; 2 uses
  %spec.select.i.i123.us.us.us144.us.i.i = phi i32 [ %spec.select.i.i123.us.us.us.us.i.i.lcssa, %.split.loop.exit353 ], [ %spec.select.i.i123.us.us.us.us148.i.i, %.preheader.us.us.i.i ]
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %spec.select.i6.i121.us.us.us.us.i.i = phi i32 [ %spec.select.i.i123.us.us.us144.us.i.i, %bb.v ], [ %spec.select.i.i123.us.us.us.us.i.i.1, %bb.z ] ; 4 uses
  %.05.i122.us.us.us.us.i.i = phi i32 [ 0, %bb.v ], [ %i.jr, %bb.z ] ; 4 uses
  %i.ix = lshr i32 %spec.select.i6.i121.us.us.us.us.i.i, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !35
  %i.jb = icmp slt i32 %spec.select.i6.i121.us.us.us.us.i.i, %i.hc
  %i.jc = zext i1 %i.jb to i32
  %spec.select.i.i123.us.us.us.us.i.i = add i32 %spec.select.i6.i121.us.us.us.us.i.i, %i.jc ; 6 uses
  %i.jd = zext i8 %i.ja to i32
  %i.je = and i32 %spec.select.i6.i121.us.us.us.us.i.i, 7
  %i.jf = lshr exact i32 128, %i.je
  %i.jg = and i32 %i.jf, %i.jd
  %.not.not.i124.us.us.us.us.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.not.i124.us.us.us.us.i.i, label %bb.x, label %.split.loop.exit353

bb.x:                                             ; preds = %bb.w
  %exitcond.not.i126.us.us.us.us.i.i = icmp eq i32 %.05.i122.us.us.us.us.i.i, 30
  br i1 %exitcond.not.i126.us.us.us.us.i.i, label %.split.loop.exit353, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jh = lshr i32 %spec.select.i.i123.us.us.us.us.i.i, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !35
  %i.jl = icmp slt i32 %spec.select.i.i123.us.us.us.us.i.i, %i.hc
  %i.jm = zext i1 %i.jl to i32
  %spec.select.i.i123.us.us.us.us.i.i.1 = add i32 %spec.select.i.i123.us.us.us.us.i.i, %i.jm ; 2 uses
  %i.jn = zext i8 %i.jk to i32
  %i.jo = and i32 %spec.select.i.i123.us.us.us.us.i.i, 7
  %i.jp = lshr exact i32 128, %i.jo
  %i.jq = and i32 %i.jp, %i.jn
  %.not.not.i124.us.us.us.us.i.i.1 = icmp eq i32 %i.jq, 0
  br i1 %.not.not.i124.us.us.us.us.i.i.1, label %bb.z, label %.split.loop.exit

bb.z:                                             ; preds = %bb.y
  %i.jr = add nuw nsw i32 %.05.i122.us.us.us.us.i.i, 2
  br label %bb.w

.split.loop.exit:                                 ; preds = %bb.y
  %i.js = or disjoint i32 %.05.i122.us.us.us.us.i.i, 1
  br label %.split.loop.exit353

.split.loop.exit353:                              ; preds = %bb.w, %bb.x, %.split.loop.exit
  %spec.select.i.i123.us.us.us.us.i.i.lcssa = phi i32 [ %spec.select.i.i123.us.us.us.us.i.i.1, %.split.loop.exit ], [ %spec.select.i.i123.us.us.us.us.i.i, %bb.x ], [ %spec.select.i.i123.us.us.us.us.i.i, %bb.w ] ; 3 uses
  %.4.ph.us.us.us.us.i.i = phi i32 [ %i.js, %.split.loop.exit ], [ 31, %bb.x ], [ %.05.i122.us.us.us.us.i.i, %bb.w ]
  %i.jt = trunc nuw i32 %.4.ph.us.us.us.us.i.i to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv170.i.i
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !35
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %.171138.us.us.i.i, i64 %i.jw
  store i16 %i.jt, ptr %i.jx, align 2, !tbaa !43
  %indvars.iv.next171.i.i = add nuw nsw i64 %indvars.iv170.i.i, 1 ; 2 uses
  %exitcond174.not.i.i = icmp eq i64 %indvars.iv.next171.i.i, %umax173.i.i
  br i1 %exitcond174.not.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, label %bb.v, !llvm.loop !59

._crit_edge.split.us.us.split.us.us.i.i:          ; preds = %.split.loop.exit353
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.171138.us.us.i.i, i64 %i.iw
  %i.jz = add nuw nsw i32 %.168140.us.us.i.i, 1   ; 2 uses
  %exitcond175.not.i.i = icmp eq i32 %i.jz, %..i
  br i1 %exitcond175.not.i.i, label %.loopexit.i, label %.preheader.us.us.i.i, !llvm.loop !60

.preheader.lr.ph.split.split.us.split.i.i:        ; preds = %.preheader.lr.ph.split.split.us.i.i
  %umax166.i.i = tail call i32 @llvm.umax.i32(i32 %i.hq, i32 1)
  %wide.trip.count167.i.i = zext nneg i32 %umax166.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.split.us.us.split.i.i, %.preheader.lr.ph.split.split.us.split.i.i
  %.promoted146.i.i = phi i32 [ %i.it, %.preheader.lr.ph.split.split.us.split.i.i ], [ %i.kx, %._crit_edge.split.us.us.split.i.i ]
  %.168140.us.i.i = phi i32 [ 0, %.preheader.lr.ph.split.split.us.split.i.i ], [ %i.lo, %._crit_edge.split.us.us.split.i.i ]
  %.171138.us.i.i = phi ptr [ %i.hn, %.preheader.lr.ph.split.split.us.split.i.i ], [ %i.ln, %._crit_edge.split.us.us.split.i.i ] ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.preheader.us.i.i
  %indvars.iv163.i.i = phi i64 [ %indvars.iv.next164.i.i, %bb.af ], [ 0, %.preheader.us.i.i ] ; 2 uses
  %i.ka = phi i32 [ %i.kx, %bb.af ], [ %.promoted146.i.i, %.preheader.us.i.i ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %bb.aa
  %spec.select.i6.i121.us.us.i.i = phi i32 [ %i.ka, %bb.aa ], [ %spec.select.i.i123.us.us.i.i.1, %bb.ae ] ; 4 uses
  %.05.i122.us.us.i.i = phi i32 [ 0, %bb.aa ], [ %i.kv, %bb.ae ] ; 4 uses
  %i.kb = lshr i32 %spec.select.i6.i121.us.us.i.i, 3
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !35
  %i.kf = icmp slt i32 %spec.select.i6.i121.us.us.i.i, %i.hc
  %i.kg = zext i1 %i.kf to i32
  %spec.select.i.i123.us.us.i.i = add i32 %spec.select.i6.i121.us.us.i.i, %i.kg ; 6 uses
  %i.kh = zext i8 %i.ke to i32
  %i.ki = and i32 %spec.select.i6.i121.us.us.i.i, 7
  %i.kj = lshr exact i32 128, %i.ki
  %i.kk = and i32 %i.kj, %i.kh
  %.not.not.i124.us.us.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not.not.i124.us.us.i.i, label %bb.ac, label %get_ue_golomb.exit119.loopexit.us.us.i.i

bb.ac:                                            ; preds = %bb.ab
  %exitcond.not.i126.us.us.i.i = icmp eq i32 %.05.i122.us.us.i.i, 30
  br i1 %exitcond.not.i126.us.us.i.i, label %get_ue_golomb.exit119.loopexit.us.us.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kl = lshr i32 %spec.select.i.i123.us.us.i.i, 3
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !35
  %i.kp = icmp slt i32 %spec.select.i.i123.us.us.i.i, %i.hc
  %i.kq = zext i1 %i.kp to i32
  %spec.select.i.i123.us.us.i.i.1 = add i32 %spec.select.i.i123.us.us.i.i, %i.kq ; 2 uses
  %i.kr = zext i8 %i.ko to i32
  %i.ks = and i32 %spec.select.i.i123.us.us.i.i, 7
  %i.kt = lshr exact i32 128, %i.ks
  %i.ku = and i32 %i.kt, %i.kr
  %.not.not.i124.us.us.i.i.1 = icmp eq i32 %i.ku, 0
  br i1 %.not.not.i124.us.us.i.i.1, label %bb.ae, label %get_ue_golomb.exit119.loopexit.us.us.i.i.split.loop.exit

bb.ae:                                            ; preds = %bb.ad
  %i.kv = add nuw nsw i32 %.05.i122.us.us.i.i, 2
  br label %bb.ab

bb.af:                                            ; preds = %get_ue_golomb.exit119.loopexit.us.us.i.i
  %i.kw = add i32 %spec.select.i.i123.us.us.i.i.lcssa, %i.ir
  %i.kx = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 %i.kw) ; 3 uses
  %i.ky = trunc nuw i32 %i.ll to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv163.i.i
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !35
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.171138.us.i.i, i64 %i.lb
  store i16 %i.ky, ptr %i.lc, align 2, !tbaa !43
  %indvars.iv.next164.i.i = add nuw nsw i64 %indvars.iv163.i.i, 1 ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %indvars.iv.next164.i.i, %wide.trip.count167.i.i
  br i1 %exitcond168.not.i.i, label %._crit_edge.split.us.us.split.i.i, label %bb.aa, !llvm.loop !59

get_ue_golomb.exit119.loopexit.us.us.i.i.split.loop.exit: ; preds = %bb.ad
  %i.ld = or disjoint i32 %.05.i122.us.us.i.i, 1
  br label %get_ue_golomb.exit119.loopexit.us.us.i.i

get_ue_golomb.exit119.loopexit.us.us.i.i:         ; preds = %bb.ab, %bb.ac, %get_ue_golomb.exit119.loopexit.us.us.i.i.split.loop.exit
  %spec.select.i.i123.us.us.i.i.lcssa = phi i32 [ %spec.select.i.i123.us.us.i.i.1, %get_ue_golomb.exit119.loopexit.us.us.i.i.split.loop.exit ], [ %spec.select.i.i123.us.us.i.i, %bb.ac ], [ %spec.select.i.i123.us.us.i.i, %bb.ab ] ; 3 uses
  %.4.ph.us.us.i.i = phi i32 [ %i.ld, %get_ue_golomb.exit119.loopexit.us.us.i.i.split.loop.exit ], [ 31, %bb.ac ], [ %.05.i122.us.us.i.i, %bb.ab ]
  %i.le = lshr i32 %spec.select.i.i123.us.us.i.i.lcssa, 3
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !35
  %i.li = tail call i32 @llvm.bswap.i32(i32 %i.lh)
  %i.lj = and i32 %spec.select.i.i123.us.us.i.i.lcssa, 7
  %i.lk = shl i32 %i.li, %i.lj
  %i.ll = tail call i32 @llvm.fshl.i32(i32 %.4.ph.us.us.i.i, i32 %i.lk, i32 %i.ir) ; 2 uses
  %i.lm = icmp ugt i32 %i.ll, 65535
  br i1 %i.lm, label %.loopexit, label %bb.af

._crit_edge.split.us.us.split.i.i:                ; preds = %bb.af
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.171138.us.i.i, i64 %i.iw
  %i.lo = add nuw nsw i32 %.168140.us.i.i, 1      ; 2 uses
  %exitcond169.not.i.i = icmp eq i32 %i.lo, %..i
  br i1 %exitcond169.not.i.i, label %.loopexit.i, label %.preheader.us.i.i, !llvm.loop !60

bb.ag:                                            ; preds = %bb.u
  %i.lp = icmp ult i32 %i.is, %i.hc
  %i.lq = zext i1 %i.lp to i32
  %spec.select.i88.i.i = add nuw nsw i32 %i.it, %i.lq ; 3 uses
  %i.lr = lshr i32 %spec.select.i88.i.i, 3
  %i.ls = zext nneg i32 %i.lr to i64
end_hunk_0
