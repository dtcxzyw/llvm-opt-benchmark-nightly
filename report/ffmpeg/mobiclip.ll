Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mobiclip?download=true
inline.NumInlined: 100
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mobiclip_decode:bb.a
bb.d:                                             ; preds = %bb.c
  %i.aw = load i8, ptr %i.al, align 1, !tbaa !46
  store i32 1, ptr %i.av, align 8, !tbaa !45
  %.not = icmp sgt i8 %i.aw, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 1, ptr %i.ax, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !78
  %i.ba = or i32 %i.az, 2
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !78
  %i.bb = load i8, ptr %i.al, align 1, !tbaa !46
  %i.bc = lshr i8 %i.bb, 6
  store i32 2, ptr %i.av, align 8, !tbaa !45
  %i.bd = and i8 %i.bc, 1
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !47
  %i.bg = load i8, ptr %i.al, align 1, !tbaa !46
  %i.bh = lshr i8 %i.bg, 5
  store i32 3, ptr %i.av, align 8, !tbaa !45
  %i.bi = and i8 %i.bh, 1
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !48
  %i.bl = load i32, ptr %i.al, align 1, !tbaa !46
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = lshr i32 %i.bm, 23
  %i.bo = and i32 %i.bn, 63
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.at, i32 9)
  store i32 %i.bp, ptr %i.av, align 8, !tbaa !45
  %i.bq = zext nneg i32 %i.bo to i64
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.br = tail call fastcc i32 @setup_qtables(ptr %.val186, i64 noundef %i.bq) ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread240, label %.preheader253

.preheader253:                                    ; preds = %bb.e
  %i.bt = load i32, ptr %i.i, align 4, !tbaa !30  ; 2 uses
  %.not184260 = icmp sgt i32 %i.bt, 0
  br i1 %.not184260, label %.preheader251.lr.ph, label %.thread226

.preheader251.lr.ph:                              ; preds = %.preheader253
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.preheader251, label %.thread226

.preheader251:                                    ; preds = %.preheader251.lr.ph, %._crit_edge
  %i.bw = phi i32 [ %i.cq, %._crit_edge ], [ %i.bt, %.preheader251.lr.ph ]
  %i.bx = phi i32 [ %i.cr, %._crit_edge ], [ %i.bu, %.preheader251.lr.ph ] ; 2 uses
  %.0157261 = phi i32 [ %i.cs, %._crit_edge ], [ 0, %.preheader251.lr.ph ] ; 2 uses
  %.not183258 = icmp sgt i32 %i.bx, 0
  br i1 %.not183258, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.by = add nuw nsw i32 %.0156259, 16           ; 2 uses
  %i.bz = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %.not183 = icmp slt i32 %i.by, %i.bz
  br i1 %.not183, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !61

.lr.ph:                                           ; preds = %.preheader251, %bb.f
  %.0156259 = phi i32 [ %i.by, %bb.f ], [ 0, %.preheader251 ] ; 2 uses
  %i.ca = load i32, ptr %i.av, align 8, !tbaa !45 ; 4 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cc = lshr i32 %i.ca, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !46
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !44
  %i.ch = icmp slt i32 %i.ca, %i.cg
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i189 = add i32 %i.ca, %i.ci
  %i.cj = zext i8 %i.cf to i32
  %i.ck = and i32 %i.ca, 7
  %i.cl = shl nuw nsw i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, 7
  store i32 %spec.select.i189, ptr %i.av, align 8, !tbaa !45
  %i.cn = and i32 %i.cm, 1
  %i.co = tail call fastcc i32 @decode_macroblock(ptr noundef nonnull %0, ptr noundef %i.h, i32 noundef %.0156259, i32 noundef %.0157261, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.thread240, label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.i, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader251
  %i.cq = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bw, %.preheader251 ] ; 2 uses
  %i.cr = phi i32 [ %i.bz, %._crit_edge.loopexit ], [ %i.bx, %.preheader251 ]
  %i.cs = add nuw nsw i32 %.0157261, 16           ; 2 uses
  %.not184 = icmp slt i32 %i.cs, %i.cq
  br i1 %.not184, label %.preheader251, label %.thread226, !llvm.loop !62

bb.g:                                             ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !36
  %i.cx = sext i32 %i.cw to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cu, i8 0, i64 %i.cx, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 2, ptr %i.cy, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !78
  %i.db = and i32 %i.da, -3
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !78
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.dc, align 8, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !49
  %i.df = sext i32 %i.de to i64
  %i.dg = load i32, ptr %i.av, align 8, !tbaa !45 ; 4 uses
  %i.dh = load i32, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.dj = lshr i32 %i.dg, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 1, !tbaa !46
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.do = and i32 %i.dg, 7
  %i.dp = shl i32 %i.dn, %i.do                    ; 5 uses
  %i.dq = icmp ugt i32 %i.dp, 134217727
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dr = lshr i32 %i.dp, 23
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !46
  %i.dv = zext i8 %i.du to i32
  %i.dw = add i32 %i.dg, %i.dv
  %..i = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.dw)
  store i32 %..i, ptr %i.av, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.ds
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !46
  %i.dz = sext i8 %i.dy to i32
  br label %get_se_golomb.exit

bb.i:                                             ; preds = %bb.g
  %i.ea = icmp samesign ugt i32 %i.dp, 65535      ; 2 uses
  %i.eb = lshr i32 %i.dp, 16
  %spec.select.i.i = select i1 %i.ea, i32 %i.eb, i32 %i.dp ; 3 uses
  %spec.select11.i.i = select i1 %i.ea, i32 16, i32 0 ; 2 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ec = lshr i32 %spec.select.i.i, 8
  %i.ed = or disjoint i32 %spec.select11.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.ec
  %.1.i.i = select i1 %.not.i.i, i32 %spec.select11.i.i, i32 %i.ed
  %i.ee = zext nneg i32 %.110.i.i to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !46
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nuw nsw i32 %.1.i.i, %i.eh          ; 3 uses
  %reass.sub.i = add i32 %i.dg, 31
  %i.ej = sub i32 %reass.sub.i, %i.ei
  %.50.i = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.ej) ; 3 uses
  %i.ek = lshr i32 %.50.i, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.el
  %i.en = load i32, ptr %i.em, align 1, !tbaa !46
  %i.eo = tail call i32 @llvm.bswap.i32(i32 %i.en)
  %i.ep = and i32 %.50.i, 7
  %i.eq = shl i32 %i.eo, %i.ep
  %i.er = lshr i32 %i.eq, %i.ei                   ; 2 uses
  %reass.sub = sub i32 %.50.i, %i.ei
  %i.es = add i32 %reass.sub, 32
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.es)
  store i32 %i.et, ptr %i.av, align 8, !tbaa !45
  %i.eu = and i32 %i.er, 1                        ; 2 uses
  %i.ev = sub nsw i32 0, %i.eu
  %i.ew = lshr i32 %i.er, 1
  %i.ex = xor i32 %i.ew, %i.ev
  %i.ey = add i32 %i.ex, %i.eu
  br label %get_se_golomb.exit

get_se_golomb.exit:                               ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.dz, %bb.h ], [ %i.ey, %bb.i ]
  %i.ez = sext i32 %.0.i to i64
  %i.fa = add nsw i64 %i.ez, %i.df
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.fb = tail call fastcc i32 @setup_qtables(ptr %.val, i64 noundef %i.fa) ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %.thread240, label %.preheader250

.preheader250:                                    ; preds = %get_se_golomb.exit
  %i.fd = load i32, ptr %i.i, align 4, !tbaa !30  ; 2 uses
  %.not244270 = icmp sgt i32 %i.fd, 0
  br i1 %.not244270, label %.preheader249.lr.ph, label %.thread226

.preheader249.lr.ph:                              ; preds = %.preheader250
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.ff = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader249, label %.thread226

.preheader249:                                    ; preds = %.preheader249.lr.ph, %._crit_edge269
  %i.fh = phi i32 [ %i.pt, %._crit_edge269 ], [ %i.fd, %.preheader249.lr.ph ]
  %i.fi = phi i32 [ %i.pu, %._crit_edge269 ], [ %i.ff, %.preheader249.lr.ph ] ; 2 uses
  %.0155271 = phi i32 [ %4, %._crit_edge269 ], [ 0, %.preheader249.lr.ph ] ; 5 uses
  %.not182266 = icmp sgt i32 %i.fi, 0
  %4 = add nuw nsw i32 %.0155271, 16              ; 3 uses
  br i1 %.not182266, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %.preheader249
  %i.fj = lshr exact i32 %.0155271, 1             ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph268, %add_pframe_coefficients.exit224
  %indvars.iv = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next, %add_pframe_coefficients.exit224 ] ; 8 uses
  %indvars291 = trunc i64 %indvars.iv to i32      ; 6 uses
  %i.fk = lshr exact i64 %indvars.iv, 4           ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fk ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %i.fr = load <2 x i32>, ptr %i.fm, align 4, !tbaa !41 ; 2 uses
  %i.fs = load <2 x i32>, ptr %i.fo, align 4, !tbaa !41 ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fp, align 4, !tbaa !41
  %i.fu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fr, <2 x i32> %i.fs)
  %i.fv = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fr, <2 x i32> %i.fs)
  %i.fw = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ft, <2 x i32> %i.fu)
  %i.fx = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fw, <2 x i32> %i.fv)
  store <2 x i32> %i.fx, ptr %i.cu, align 4, !tbaa !41
  store i32 0, ptr %i.fo, align 4, !tbaa !51
  store i32 0, ptr %i.fq, align 4, !tbaa !52
  %i.fy = load i32, ptr %i.fe, align 4, !tbaa !47
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [128 x i8], ptr @mv_vlc, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 16, !tbaa !54
  %i.gc = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.gd = load i32, ptr %i.av, align 8, !tbaa !45 ; 3 uses
  %i.ge = lshr i32 %i.gd, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !46
  %i.gi = tail call i32 @llvm.bswap.i32(i32 %i.gh)
  %i.gj = and i32 %i.gd, 7
  %i.gk = shl i32 %i.gi, %i.gj
  %i.gl = lshr i32 %i.gk, 26
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !46
  %i.gq = sext i16 %i.gp to i32
  %i.gr = load i16, ptr %i.gn, align 2, !tbaa !46 ; 3 uses
  %i.gs = load i32, ptr %i.au, align 8, !tbaa !44
  %i.gt = add i32 %i.gd, %i.gq
  %i.gu = tail call i32 @llvm.umin.i32(i32 %i.gs, i32 %i.gt)
  store i32 %i.gu, ptr %i.av, align 8, !tbaa !45
  %i.gv = and i16 %i.gr, -2
  %or.cond = icmp eq i16 %i.gv, 6
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gw = icmp eq i16 %i.gr, 7
  %i.gx = zext i1 %i.gw to i32
  %i.gy = tail call fastcc i32 @decode_macroblock(ptr noundef nonnull %0, ptr noundef %i.h, i32 noundef %indvars291, i32 noundef %.0155271, i32 noundef %i.gx) ; 2 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %.thread240, label %add_pframe_coefficients.exit224

bb.l:                                             ; preds = %bb.j
  %i.ha = lshr exact i32 %indvars291, 4
  %i.hb = add nuw nsw i32 %i.ha, 2
  %i.hc = sext i16 %i.gr to i32
  %i.hd = tail call fastcc i32 @predict_motion(ptr noundef nonnull %0, i32 noundef 16, i32 noundef 16, i32 noundef %i.hc, i32 noundef %i.hb, i32 noundef %indvars291, i32 noundef %.0155271) ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %.thread240, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hf = load i32, ptr %i.av, align 8, !tbaa !45 ; 4 uses
  %i.hg = load i32, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.hi = lshr i32 %i.hf, 3
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 1, !tbaa !46
  %i.hm = tail call i32 @llvm.bswap.i32(i32 %i.hl)
  %i.hn = and i32 %i.hf, 7
  %i.ho = shl i32 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp ugt i32 %i.ho, 134217727
  br i1 %i.hp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hq = lshr i32 %i.ho, 23
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !46
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add i32 %i.hf, %i.hu
  %..i200 = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 %i.hv)
  store i32 %..i200, ptr %i.av, align 8, !tbaa !45
  %i.hw = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.hr
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !46
  %i.hy = zext i8 %i.hx to i32
  br label %get_ue_golomb.exit

bb.o:                                             ; preds = %bb.m
  %i.hz = icmp samesign ugt i32 %i.ho, 65535      ; 2 uses
  %i.ia = lshr i32 %i.ho, 16
  %spec.select.i.i193 = select i1 %i.hz, i32 %i.ia, i32 %i.ho ; 3 uses
  %spec.select11.i.i194 = select i1 %i.hz, i32 16, i32 0 ; 2 uses
  %.not.i.i195 = icmp samesign ult i32 %spec.select.i.i193, 256 ; 2 uses
  %i.ib = lshr i32 %spec.select.i.i193, 8
  %i.ic = or disjoint i32 %spec.select11.i.i194, 8
  %.110.i.i196 = select i1 %.not.i.i195, i32 %spec.select.i.i193, i32 %i.ib
  %.1.i.i197 = select i1 %.not.i.i195, i32 %spec.select11.i.i194, i32 %i.ic
  %i.id = zext nneg i32 %.110.i.i196 to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !46
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nuw nsw i32 %.1.i.i197, %i.ig       ; 2 uses
  %i.ii = shl nuw nsw i32 %i.ih, 1                ; 2 uses
  %i.ij = add nsw i32 %i.ii, -31
  %reass.sub.i198 = add i32 %i.hf, 63
  %i.ik = sub i32 %reass.sub.i198, %i.ii
  %.38.i = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 %i.ik)
  store i32 %.38.i, ptr %i.av, align 8, !tbaa !45
  %i.il = icmp samesign ult i32 %i.ih, 19
  %i.im = lshr i32 %i.ho, %i.ij
  %i.in = add nsw i32 %i.im, -1
  br i1 %i.il, label %.thread240, label %get_ue_golomb.exit

get_ue_golomb.exit:                               ; preds = %bb.o, %bb.n
  %.1.i = phi i32 [ %i.hy, %bb.n ], [ %i.in, %bb.o ] ; 2 uses
  %i.io = icmp ugt i32 %.1.i, 63
  br i1 %i.io, label %.thread240, label %bb.p

bb.p:                                             ; preds = %get_ue_golomb.exit
  %i.ip = zext nneg i32 %.1.i to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @pframe_block8x8_coefficients_tab, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !46
  %i.is = zext i8 %i.ir to i32
  %i.it = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.iu = trunc nuw nsw i64 %i.it to i32
  %i.iv = trunc nuw nsw i64 %i.it to i32
  %i.iw = or disjoint i64 %indvars.iv, 8          ; 3 uses
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = or disjoint i64 %indvars.iv, 12         ; 2 uses
  %i.iz = trunc nuw nsw i64 %i.iy to i32
  %i.ja = trunc nuw nsw i64 %i.iw to i32
  %i.jb = trunc nuw nsw i64 %i.iy to i32
  %i.jc = trunc nuw nsw i64 %i.iw to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.p, %add_pframe_coefficients.exit.1
  %.0152265 = phi i32 [ %.0155271, %bb.p ], [ %i.ml, %add_pframe_coefficients.exit.1 ] ; 9 uses
  %.0153264 = phi i32 [ %i.is, %bb.p ], [ %i.mk, %add_pframe_coefficients.exit.1 ] ; 5 uses
  %i.jd = and i32 %.0153264, 1
  %.not181 = icmp eq i32 %i.jd, 0
  br i1 %.not181, label %add_pframe_coefficients.exit, label %bb.r

bb.q:                                             ; preds = %add_pframe_coefficients.exit.1
  %i.je = and i32 %.0153264, 4
  %.not177 = icmp eq i32 %i.je, 0
  br i1 %.not177, label %add_pframe_coefficients.exit212, label %bb.aj

bb.r:                                             ; preds = %.preheader
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !28  ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 72 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !45 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !44
  %i.jl = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.jm = lshr i32 %i.ji, 3
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 1, !tbaa !46
  %i.jq = tail call i32 @llvm.bswap.i32(i32 %i.jp)
  %i.jr = and i32 %i.ji, 7
  %i.js = shl i32 %i.jq, %i.jr
  %i.jt = lshr i32 %i.js, 23
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !46
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add i32 %i.ji, %i.jx
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.jk, i32 %i.jy)
  store i32 %..i.i, ptr %i.jh, align 8, !tbaa !45
  %i.jz = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ju
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !46  ; 3 uses
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kc = tail call fastcc i32 @add_coefficients(ptr nonnull %i.jf, ptr noundef readonly %i.h, i32 noundef range(i32 -2147483648, 2147483647) %indvars291, i32 noundef range(i32 -2147483648, 2147483647) %.0152265, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %add_pframe_coefficients.exit

bb.t:                                             ; preds = %bb.r
  %i.kd = icmp ult i8 %i.ka, 16
  br i1 %i.kd, label %.preheader.i, label %add_pframe_coefficients.exit

.preheader.i:                                     ; preds = %bb.t
  %i.ke = zext nneg i8 %i.ka to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @pframe_block4x4_coefficients_tab, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !46
  %i.kh = zext i8 %i.kg to i32                    ; 5 uses
  %i.ki = and i32 %i.kh, 1
  %.not.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.i
  %i.kj = tail call fastcc i32 @add_coefficients(ptr nonnull %i.jf, ptr noundef readonly %i.h, i32 noundef %indvars291, i32 noundef %.0152265, i32 noundef 4, i32 noundef 0)
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %add_pframe_coefficients.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.i
  %i.kl = and i32 %i.kh, 2
  %.not.i.1 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.1, label %.preheader.i.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.1 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.km = tail call fastcc i32 @add_coefficients(ptr %.val.i.1, ptr noundef readonly %i.h, i32 noundef %i.iu, i32 noundef %.0152265, i32 noundef 4, i32 noundef 0)
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %add_pframe_coefficients.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.w, %bb.v
  %i.ko = or disjoint i32 %.0152265, 4            ; 2 uses
  %i.kp = and i32 %i.kh, 4
  %.not.i.1284 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.1284, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader.i.1
  %.val.i.1285 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.kq = tail call fastcc i32 @add_coefficients(ptr %.val.i.1285, ptr noundef readonly %i.h, i32 noundef %indvars291, i32 noundef %i.ko, i32 noundef 4, i32 noundef 0)
  %i.kr = icmp slt i32 %i.kq, 0
  %i.ks = and i32 %i.kh, 8
  %.not.i.1.1 = icmp eq i32 %i.ks, 0
  %or.cond330 = or i1 %i.kr, %.not.i.1.1
  br i1 %or.cond330, label %add_pframe_coefficients.exit, label %bb.z

bb.y:                                             ; preds = %.preheader.i.1
  %.old = and i32 %i.kh, 8
  %.not.i.1.1.old = icmp eq i32 %.old, 0
  br i1 %.not.i.1.1.old, label %add_pframe_coefficients.exit, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.val.i.1.1 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.kt = tail call fastcc i32 @add_coefficients(ptr %.val.i.1.1, ptr noundef readonly %i.h, i32 noundef %i.iv, i32 noundef %i.ko, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %add_pframe_coefficients.exit

add_pframe_coefficients.exit:                     ; preds = %bb.z, %bb.u, %bb.w, %bb.x, %bb.y, %bb.t, %bb.s, %.preheader
  %i.ku = and i32 %.0153264, 2
  %.not181.1 = icmp eq i32 %i.ku, 0
  br i1 %.not181.1, label %add_pframe_coefficients.exit.1, label %bb.aa

bb.aa:                                            ; preds = %add_pframe_coefficients.exit
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !28  ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 72 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !45 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 80
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !44
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !42
  %i.lc = lshr i32 %i.ky, 3
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 1, !tbaa !46
  %i.lg = tail call i32 @llvm.bswap.i32(i32 %i.lf)
  %i.lh = and i32 %i.ky, 7
  %i.li = shl i32 %i.lg, %i.lh
  %i.lj = lshr i32 %i.li, 23
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !46
  %i.ln = zext i8 %i.lm to i32
  %i.lo = add i32 %i.ky, %i.ln
  %..i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.la, i32 %i.lo)
  store i32 %..i.i.1, ptr %i.kx, align 8, !tbaa !45
  %i.lp = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.lk
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !46  ; 3 uses
  %i.lr = icmp eq i8 %i.lq, 0
  br i1 %i.lr, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ls = icmp ult i8 %i.lq, 16
  br i1 %i.ls, label %.preheader.i.1286, label %add_pframe_coefficients.exit.1

.preheader.i.1286:                                ; preds = %bb.ab
  %i.lt = zext nneg i8 %i.lq to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @pframe_block4x4_coefficients_tab, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !46
  %i.lw = zext i8 %i.lv to i32                    ; 5 uses
  %i.lx = and i32 %i.lw, 1
  %.not.i.1287 = icmp eq i32 %i.lx, 0
  br i1 %.not.i.1287, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.1286
  %i.ly = tail call fastcc i32 @add_coefficients(ptr nonnull %i.kv, ptr noundef readonly %i.h, i32 noundef %i.ix, i32 noundef %.0152265, i32 noundef 4, i32 noundef 0)
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %add_pframe_coefficients.exit.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.1286
  %i.ma = and i32 %i.lw, 2
  %.not.i.1.1289 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.1.1289, label %.preheader.i.1.1, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i.1.1290 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.mb = tail call fastcc i32 @add_coefficients(ptr %.val.i.1.1290, ptr noundef readonly %i.h, i32 noundef %i.iz, i32 noundef %.0152265, i32 noundef 4, i32 noundef 0)
  %i.mc = icmp slt i32 %i.mb, 0
  br i1 %i.mc, label %add_pframe_coefficients.exit.1, label %.preheader.i.1.1

.preheader.i.1.1:                                 ; preds = %bb.ae, %bb.ad
  %i.md = or disjoint i32 %.0152265, 4            ; 2 uses
  %i.me = and i32 %i.lw, 4
  %.not.i.1284.1 = icmp eq i32 %i.me, 0
  br i1 %.not.i.1284.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.preheader.i.1.1
  %.val.i.1285.1 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.mf = tail call fastcc i32 @add_coefficients(ptr %.val.i.1285.1, ptr noundef readonly %i.h, i32 noundef %i.ja, i32 noundef %i.md, i32 noundef 4, i32 noundef 0)
  %i.mg = icmp slt i32 %i.mf, 0
  %i.mh = and i32 %i.lw, 8
  %.not.i.1.1.1 = icmp eq i32 %i.mh, 0
  %or.cond332 = or i1 %i.mg, %.not.i.1.1.1
  br i1 %or.cond332, label %add_pframe_coefficients.exit.1, label %bb.ah

bb.ag:                                            ; preds = %.preheader.i.1.1
  %.old331 = and i32 %i.lw, 8
  %.not.i.1.1.1.old = icmp eq i32 %.old331, 0
  br i1 %.not.i.1.1.1.old, label %add_pframe_coefficients.exit.1, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.val.i.1.1.1 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.mi = tail call fastcc i32 @add_coefficients(ptr %.val.i.1.1.1, ptr noundef readonly %i.h, i32 noundef %i.jb, i32 noundef %i.md, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %add_pframe_coefficients.exit.1

bb.ai:                                            ; preds = %bb.aa
  %i.mj = tail call fastcc i32 @add_coefficients(ptr nonnull %i.kv, ptr noundef readonly %i.h, i32 noundef range(i32 -2147483648, 2147483647) %i.jc, i32 noundef range(i32 -2147483648, 2147483647) %.0152265, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %add_pframe_coefficients.exit.1

add_pframe_coefficients.exit.1:                   ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ae, %bb.af, %bb.ai, %bb.ab, %add_pframe_coefficients.exit
  %i.mk = lshr i32 %.0153264, 2
  %i.ml = add nuw nsw i32 %.0152265, 8            ; 2 uses
  %5 = icmp samesign ult i32 %i.ml, %4
  br i1 %5, label %.preheader, label %bb.q, !llvm.loop !63

bb.aj:                                            ; preds = %bb.q
  %i.mm = lshr exact i64 %indvars.iv, 1           ; 3 uses
  %i.mn = load i32, ptr %i.fe, align 4, !tbaa !47
  %.not178 = icmp eq i32 %i.mn, 0
  %i.mo = select i1 %.not178, i32 2, i32 1        ; 2 uses
  %i.mp = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 72 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !45 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !44
  %i.mv = load ptr, ptr %i.mq, align 8, !tbaa !42
  %i.mw = lshr i32 %i.ms, 3
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 1, !tbaa !46
  %i.na = tail call i32 @llvm.bswap.i32(i32 %i.mz)
  %i.nb = and i32 %i.ms, 7
  %i.nc = shl i32 %i.na, %i.nb
  %i.nd = lshr i32 %i.nc, 23
  %i.ne = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !46
  %i.nh = zext i8 %i.ng to i32
  %i.ni = add i32 %i.ms, %i.nh
  %..i.i201 = tail call i32 @llvm.umin.i32(i32 %i.mu, i32 %i.ni)
  store i32 %..i.i201, ptr %i.mr, align 8, !tbaa !45
  %i.nj = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ne
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !46  ; 3 uses
  %i.nl = icmp eq i8 %i.nk, 0
  br i1 %i.nl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nm = trunc nuw i64 %i.mm to i32
  %i.nn = tail call fastcc i32 @add_coefficients(ptr nonnull %i.mp, ptr noundef readonly %i.h, i32 noundef range(i32 -2147483648, 2147483647) %i.nm, i32 noundef range(i32 -2147483648, 2147483647) %i.fj, i32 noundef 8, i32 noundef range(i32 0, 3) %i.mo) ; 0 uses
  br label %add_pframe_coefficients.exit212

bb.al:                                            ; preds = %bb.aj
  %i.no = icmp ult i8 %i.nk, 16
  br i1 %i.no, label %bb.am, label %add_pframe_coefficients.exit212

bb.am:                                            ; preds = %bb.al
  %i.np = zext nneg i8 %i.nk to i64
  %i.nq = getelementptr inbounds nuw i8, ptr @pframe_block4x4_coefficients_tab, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !46
  %i.ns = zext i8 %i.nr to i32
  %i.nt = trunc nuw i64 %i.mm to i32
  br label %.preheader.i203

.preheader.i203:                                  ; preds = %bb.aq, %bb.am
  %.03249.i204 = phi i32 [ %i.fj, %bb.am ], [ %i.oa, %bb.aq ] ; 3 uses
  %.03348.i205 = phi i32 [ %i.ns, %bb.am ], [ %i.nx, %bb.aq ]
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.preheader.i203
  %.047.i206 = phi i32 [ %i.nt, %.preheader.i203 ], [ %i.ny, %bb.ap ] ; 3 uses
  %.146.i207 = phi i32 [ %.03348.i205, %.preheader.i203 ], [ %i.nx, %bb.ap ] ; 2 uses
  %i.nu = and i32 %.146.i207, 1
  %.not.i208 = icmp eq i32 %i.nu, 0
  br i1 %.not.i208, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val.i209 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.nv = tail call fastcc i32 @add_coefficients(ptr %.val.i209, ptr noundef readonly %i.h, i32 noundef %.047.i206, i32 noundef %.03249.i204, i32 noundef 4, i32 noundef range(i32 0, 3) %i.mo)
  %i.nw = icmp slt i32 %i.nv, 0
  br i1 %i.nw, label %add_pframe_coefficients.exit212, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nx = lshr i32 %.146.i207, 1                  ; 2 uses
  %i.ny = add nuw nsw i32 %.047.i206, 4
  %i.nz = zext i32 %.047.i206 to i64
  %.not40.i210.not = icmp samesign ult i64 %i.mm, %i.nz
  br i1 %.not40.i210.not, label %bb.aq, label %bb.an, !llvm.loop !64

bb.aq:                                            ; preds = %bb.ap
  %i.oa = add nuw nsw i32 %.03249.i204, 4
  %.not41.i211.not = icmp samesign ugt i32 %.03249.i204, %i.fj
  br i1 %.not41.i211.not, label %add_pframe_coefficients.exit212, label %.preheader.i203, !llvm.loop !65

add_pframe_coefficients.exit212:                  ; preds = %bb.aq, %bb.ao, %bb.al, %bb.ak, %bb.q
  %i.ob = and i32 %.0153264, 8
  %.not179 = icmp eq i32 %i.ob, 0
  br i1 %.not179, label %add_pframe_coefficients.exit224, label %bb.ar

bb.ar:                                            ; preds = %add_pframe_coefficients.exit212
  %i.oc = lshr exact i64 %indvars.iv, 1           ; 3 uses
  %i.od = load i32, ptr %i.fe, align 4, !tbaa !47
  %.not180 = icmp eq i32 %i.od, 0
  %i.oe = select i1 %.not180, i32 1, i32 2        ; 2 uses
  %i.of = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 72 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !45 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 80
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !44
  %i.ol = load ptr, ptr %i.og, align 8, !tbaa !42
  %i.om = lshr i32 %i.oi, 3
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 1, !tbaa !46
  %i.oq = tail call i32 @llvm.bswap.i32(i32 %i.op)
  %i.or = and i32 %i.oi, 7
  %i.os = shl i32 %i.oq, %i.or
  %i.ot = lshr i32 %i.os, 23
  %i.ou = zext nneg i32 %i.ot to i64              ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !46
  %i.ox = zext i8 %i.ow to i32
  %i.oy = add i32 %i.oi, %i.ox
  %..i.i213 = tail call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.oy)
  store i32 %..i.i213, ptr %i.oh, align 8, !tbaa !45
  %i.oz = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ou
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !46  ; 3 uses
  %i.pb = icmp eq i8 %i.pa, 0
  br i1 %i.pb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.pc = trunc nuw i64 %i.oc to i32
  %i.pd = tail call fastcc i32 @add_coefficients(ptr nonnull %i.of, ptr noundef readonly %i.h, i32 noundef range(i32 -2147483648, 2147483647) %i.pc, i32 noundef range(i32 -2147483648, 2147483647) %i.fj, i32 noundef 8, i32 noundef range(i32 0, 3) %i.oe) ; 0 uses
  br label %add_pframe_coefficients.exit224

bb.at:                                            ; preds = %bb.ar
  %i.pe = icmp ult i8 %i.pa, 16
  br i1 %i.pe, label %bb.au, label %add_pframe_coefficients.exit224

bb.au:                                            ; preds = %bb.at
  %i.pf = zext nneg i8 %i.pa to i64
  %i.pg = getelementptr inbounds nuw i8, ptr @pframe_block4x4_coefficients_tab, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !46
  %i.pi = zext i8 %i.ph to i32
  %i.pj = trunc nuw i64 %i.oc to i32
  br label %.preheader.i215

.preheader.i215:                                  ; preds = %bb.ay, %bb.au
  %.03249.i216 = phi i32 [ %i.fj, %bb.au ], [ %i.pq, %bb.ay ] ; 3 uses
  %.03348.i217 = phi i32 [ %i.pi, %bb.au ], [ %i.pn, %bb.ay ]
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.preheader.i215
  %.047.i218 = phi i32 [ %i.pj, %.preheader.i215 ], [ %i.po, %bb.ax ] ; 3 uses
  %.146.i219 = phi i32 [ %.03348.i217, %.preheader.i215 ], [ %i.pn, %bb.ax ] ; 2 uses
  %i.pk = and i32 %.146.i219, 1
  %.not.i220 = icmp eq i32 %i.pk, 0
  br i1 %.not.i220, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val.i221 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.pl = tail call fastcc i32 @add_coefficients(ptr %.val.i221, ptr noundef readonly %i.h, i32 noundef %.047.i218, i32 noundef %.03249.i216, i32 noundef 4, i32 noundef range(i32 0, 3) %i.oe)
  %i.pm = icmp slt i32 %i.pl, 0
  br i1 %i.pm, label %add_pframe_coefficients.exit224, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.pn = lshr i32 %.146.i219, 1                  ; 2 uses
  %i.po = add nuw nsw i32 %.047.i218, 4
  %i.pp = zext i32 %.047.i218 to i64
  %.not40.i222.not = icmp samesign ult i64 %i.oc, %i.pp
  br i1 %.not40.i222.not, label %bb.ay, label %bb.av, !llvm.loop !64

bb.ay:                                            ; preds = %bb.ax
  %i.pq = add nuw nsw i32 %.03249.i216, 4
  %.not41.i223.not = icmp samesign ugt i32 %.03249.i216, %i.fj
  br i1 %.not41.i223.not, label %add_pframe_coefficients.exit224, label %.preheader.i215, !llvm.loop !65

add_pframe_coefficients.exit224:                  ; preds = %bb.ay, %bb.aw, %bb.at, %bb.as, %add_pframe_coefficients.exit212, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.pr = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %i.ps = trunc nuw i64 %indvars.iv.next to i32
  %.not182 = icmp sgt i32 %i.pr, %i.ps
  br i1 %.not182, label %bb.j, label %._crit_edge269.loopexit, !llvm.loop !66

._crit_edge269.loopexit:                          ; preds = %add_pframe_coefficients.exit224
  %.pre292 = load i32, ptr %i.i, align 4, !tbaa !30
  br label %._crit_edge269

._crit_edge269:                                   ; preds = %.preheader249, %._crit_edge269.loopexit
  %i.pt = phi i32 [ %.pre292, %._crit_edge269.loopexit ], [ %i.fh, %.preheader249 ] ; 2 uses
  %i.pu = phi i32 [ %i.pr, %._crit_edge269.loopexit ], [ %i.fi, %.preheader249 ]
  %.not244 = icmp slt i32 %4, %i.pt
  br i1 %.not244, label %.preheader249, label %.thread226, !llvm.loop !67

.thread226:                                       ; preds = %._crit_edge, %._crit_edge269, %.preheader249.lr.ph, %.preheader251.lr.ph, %.preheader253, %.preheader250
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !47
  %.not185 = icmp eq i32 %i.pw, 0
  br i1 %.not185, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.thread226
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 8, ptr %i.px, align 8, !tbaa !80
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread226
  %i.py = load i32, ptr %i.d, align 8, !tbaa !40
  %i.pz = add nsw i32 %i.py, 1
  %i.qa = srem i32 %i.pz, 6
  store i32 %i.qa, ptr %i.d, align 8, !tbaa !40
  %i.qb = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.h) #12 ; 2 uses
  %i.qc = icmp slt i32 %i.qb, 0
  br i1 %i.qc, label %.thread240, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %2, align 4, !tbaa !41
  br label %.thread240

.thread240:                                       ; preds = %.lr.ph, %bb.l, %get_ue_golomb.exit, %bb.k, %bb.o, %get_se_golomb.exit, %bb.ba, %bb.e, %bb.c, %bb.b, %bb.a, %bb.bb
  %.11 = phi i32 [ %i.gy, %bb.k ], [ -1094995529, %bb.a ], [ %i.ab, %bb.b ], [ -1094995529, %bb.c ], [ %i.br, %bb.e ], [ 0, %bb.bb ], [ %i.fb, %get_se_golomb.exit ], [ %i.qb, %bb.ba ], [ -1094995529, %bb.o ], [ -1094995529, %get_ue_golomb.exit ], [ %i.hd, %bb.l ], [ %i.co, %.lr.ph ]
  ret i32 %.11
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mobiclip_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  tail call void @av_freep(ptr noundef nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  store i32 0, ptr %i.f, align 8, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i32 0

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @av_frame_free(ptr noundef %i.g) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !81
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @mobiclip_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  tail call void @av_frame_unref(ptr noundef %i.d) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !83
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @mobiclip_init_static() #0 {
bb.a:
  %0 = alloca %struct.VLCInitState, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.mobiclip_init_static.state, i64 16, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %.not = phi i1 [ true, %bb.a ], [ false, %bb.d ] ; 2 uses
  %indvars.iv17 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ] ; 4 uses
  %i.a = select i1 %.not, ptr @syms0, ptr @syms1
  %i.b = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 12, i32 noundef 104, ptr noundef nonnull @bits0, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @rl_vlc, i64 %indvars.iv17
  store ptr %i.b, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw [160 x i8], ptr @mv_bits, i64 %indvars.iv17
  %i.e = getelementptr inbounds nuw [160 x i8], ptr @mv_syms, i64 %indvars.iv17
  %i.f = getelementptr inbounds nuw [128 x i8], ptr @mv_vlc, i64 %indvars.iv17
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !84

bb.e:                                             ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr @mv_len, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !46
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw [10 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw [10 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = call ptr @ff_vlc_init_tables_from_lengths(ptr noundef nonnull %0, i32 noundef 6, i32 noundef %i.i, ptr noundef nonnull %i.j, i32 noundef 1, ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.l, ptr %i.m, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !85
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @setup_qtables(ptr nofree writeonly captures(none) %.32.val, i64 noundef range(i64 -4294967296, 4294967295) %0) unnamed_addr #4 {
bb.a:
  %i.a = add nsw i64 %0, -162
  %or.cond = icmp ult i64 %i.a, -150
  br i1 %or.cond, label %.loopexit, label %.preheader3

.preheader3:                                      ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %0 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 60
  store i32 %i.b, ptr %i.c, align 4, !tbaa !49
  %.lhs.trunc = trunc nuw i64 %0 to i8            ; 2 uses
  %i.d = urem i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.d to i64               ; 2 uses
  %i.e = udiv i8 %.lhs.trunc, 6
  %i.f = zext nneg i8 %i.e to i32                 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @quant4x4_tab, i64 %.zext ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.32.val, i64 100
  %i.i = load <4 x i8>, ptr %i.g, align 16, !tbaa !46
  %i.j = zext <4 x i8> %i.i to <4 x i32>
  %i.k = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.m = shl <4 x i32> %i.j, %i.l
  store <4 x i32> %i.m, ptr %i.h, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %.32.val, i64 116
  %i.p = load <4 x i8>, ptr %i.n, align 4, !tbaa !46
  %i.q = zext <4 x i8> %i.p to <4 x i32>
  %i.r = shl <4 x i32> %i.q, %i.l
  store <4 x i32> %i.r, ptr %i.o, align 4, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.32.val, i64 132
  %i.u = load <4 x i8>, ptr %i.s, align 8, !tbaa !46
  %i.v = zext <4 x i8> %i.u to <4 x i32>
  %i.w = shl <4 x i32> %i.v, %i.l
  store <4 x i32> %i.w, ptr %i.t, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.32.val, i64 148
  %i.z = load <4 x i8>, ptr %i.x, align 4, !tbaa !46
  %i.aa = zext <4 x i8> %i.z to <4 x i32>
  %i.ab = shl <4 x i32> %i.aa, %i.l
  store <4 x i32> %i.ab, ptr %i.y, align 4, !tbaa !41
  %i.ac = add nsw i32 %i.f, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.32.val, i64 356
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr @quant8x8_tab, i64 %.zext ; 16 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %wide.load = load <4 x i8>, ptr %i.ae, align 16, !tbaa !46
  %wide.load12 = load <4 x i8>, ptr %i.af, align 4, !tbaa !46
  %i.ag = zext <4 x i8> %wide.load to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load12 to <4 x i32>
  %i.ai = shl nuw <4 x i32> %i.ag, %broadcast.splat
  %i.aj = shl nuw <4 x i32> %i.ah, %broadcast.splat
end_hunk_0
