Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_mask?download=true
inline.NumInlined: 59
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_mask_line:bb.a
  %i.cg = zext i8 %i.cc to i32
  %i.ch = mul nuw nsw i32 %i.cd, 32897
  %i.ci = mul nuw nsw i32 %i.ch, %i.cg
  %i.cj = lshr i32 %i.ci, 23
  %i.ck = trunc nuw i32 %i.cj to i8
  br label %mask_mix.exit.i

mask_mix.exit.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad
  %.0.i.i = phi i8 [ %i.ck, %bb.af ], [ %i.cc, %bb.ad ], [ 0, %bb.ae ]
  store i8 %.0.i.i, ptr %i.cb, align 1, !tbaa !29
  br label %bb.ag

bb.ag:                                            ; preds = %mask_mix.exit.i, %bb.ac
  %i.cl = add nsw i32 %i.bs, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread134.i
  %i.cm = phi i32 [ %i.bs, %bb.ag ], [ %i.bl, %.thread134.i ] ; 3 uses
  %.0100136.i = phi i32 [ %i.br, %bb.ag ], [ 255, %.thread134.i ]
  %.097.i = phi i32 [ %i.cl, %bb.ag ], [ %i.bl, %.thread134.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.pre.i = load i32, ptr %i.cn, align 8, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %bb.ah
  %i.co = phi i32 [ %.pre.i, %bb.ah ], [ %i.di, %bb.an ] ; 3 uses
  %.1101.i = phi i32 [ %.0100136.i, %bb.ah ], [ %i.dj, %bb.an ] ; 4 uses
  %.198.i = phi i32 [ %.097.i, %bb.ah ], [ %i.dk, %bb.an ] ; 5 uses
  %i.cp = icmp sgt i32 %.1101.i, %i.co
  br i1 %i.cp, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.cq = icmp sgt i32 %.198.i, -1
  %i.cr = icmp slt i32 %.198.i, %3
  %or.cond128.i = and i1 %i.cq, %i.cr
  br i1 %or.cond128.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cs = lshr i32 %i.co, 1
  %i.ct = sub i32 %.1101.i, %i.cs
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = load i8, ptr %i.j, align 4
  %i.cw = shl i8 %i.cv, 6
  %sext137.i = ashr i8 %i.cw, 7
  %.1.i = xor i8 %sext137.i, %i.cu                ; 3 uses
  %i.cx = zext nneg i32 %.198.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29  ; 2 uses
  %i.da = zext i8 %.1.i to i32
  %i.db = icmp ugt i8 %.1.i, -4
  br i1 %i.db, label %mask_mix.exit130.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = icmp ult i8 %.1.i, 3
  br i1 %i.dc, label %mask_mix.exit130.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = zext i8 %i.cz to i32
  %i.de = mul nuw nsw i32 %i.dd, 32897
  %i.df = mul nuw nsw i32 %i.de, %i.da
  %i.dg = lshr i32 %i.df, 23
  %i.dh = trunc nuw i32 %i.dg to i8
  br label %mask_mix.exit130.i

mask_mix.exit130.i:                               ; preds = %bb.am, %bb.al, %bb.ak
  %.0.i129.i = phi i8 [ %i.dh, %bb.am ], [ %i.cz, %bb.ak ], [ 0, %bb.al ]
  store i8 %.0.i129.i, ptr %i.cy, align 1, !tbaa !29
  %.pre142.i = load i32, ptr %i.cn, align 8, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %mask_mix.exit130.i, %bb.aj
  %i.di = phi i32 [ %.pre142.i, %mask_mix.exit130.i ], [ %i.co, %bb.aj ] ; 2 uses
  %i.dj = sub nsw i32 %.1101.i, %i.di             ; 2 uses
  %i.dk = add nsw i32 %.198.i, 1                  ; 3 uses
  %.not119.i = icmp slt i32 %i.dk, %3
  br i1 %.not119.i, label %bb.ai, label %bb.ao, !llvm.loop !58

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.2102.i = phi i32 [ %i.dj, %bb.an ], [ %.1101.i, %bb.ai ] ; 2 uses
  %.299.i = phi i32 [ %i.dk, %bb.an ], [ %.198.i, %bb.ai ] ; 5 uses
  %i.dl = icmp slt i32 %.299.i, %3
  %i.dm = icmp sgt i32 %.299.i, -1
  %or.cond.i = and i1 %i.dl, %i.dm
  %.pre73 = load i8, ptr %i.j, align 4            ; 2 uses
  br i1 %or.cond.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26
  %i.dp = mul nsw i32 %i.do, %.2102.i
  %i.dq = lshr i32 %i.dp, 10
  %i.dr = mul i32 %i.dq, %.2102.i
  %i.ds = lshr i32 %i.dr, 9
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !25
  %.lobit138.i = ashr i32 %i.dt, 31
  %.2139.i = xor i32 %i.ds, %.lobit138.i
  %.2.i = trunc i32 %.2139.i to i8
  %i.du = shl i8 %.pre73, 6
  %sext140.i = ashr i8 %i.du, 7
  %.3.i = xor i8 %sext140.i, %.2.i                ; 3 uses
  %i.dv = zext nneg i32 %.299.i to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !29  ; 2 uses
  %i.dy = zext i8 %.3.i to i32
  %i.dz = icmp ugt i8 %.3.i, -4
  br i1 %i.dz, label %mask_mix.exit132.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = icmp ult i8 %.3.i, 3
  br i1 %i.ea, label %mask_mix.exit132.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = zext i8 %i.dx to i32
  %i.ec = mul nuw nsw i32 %i.eb, 32897
  %i.ed = mul nuw nsw i32 %i.ec, %i.dy
  %i.ee = lshr i32 %i.ed, 23
  %i.ef = trunc nuw i32 %i.ee to i8
  br label %mask_mix.exit132.i

mask_mix.exit132.i:                               ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i131.i = phi i8 [ %i.ef, %bb.ar ], [ %i.dx, %bb.ap ], [ 0, %bb.aq ]
  store i8 %.0.i131.i, ptr %i.dw, align 1, !tbaa !29
  %.pre = load i8, ptr %i.j, align 4
  br label %bb.as

bb.as:                                            ; preds = %mask_mix.exit132.i, %bb.ao
  %i.eg = phi i8 [ %.pre, %mask_mix.exit132.i ], [ %.pre73, %bb.ao ]
  %i.eh = and i8 %i.eg, 2
  %.not121.i = icmp eq i8 %i.eh, 0
  br i1 %.not121.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ei = icmp sgt i32 %i.cm, %3
  br i1 %i.ei, label %line_mask_flat.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ej = icmp sgt i32 %i.cm, -1
  br i1 %i.ej, label %bb.av, label %line_mask_flat.exit

bb.av:                                            ; preds = %bb.au
  %i.ek = zext nneg i32 %i.cm to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ek) #9
  br label %line_mask_flat.exit

bb.aw:                                            ; preds = %bb.as
  %i.el = add nsw i32 %.299.i, 1                  ; 3 uses
  %i.em = icmp slt i32 %.299.i, -1
  br i1 %i.em, label %line_mask_flat.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = icmp slt i32 %i.el, %3
  br i1 %i.en, label %bb.ay, label %line_mask_flat.exit

bb.ay:                                            ; preds = %bb.ax
  %i.eo = zext nneg i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.eo
  %i.eq = sub nuw nsw i32 %3, %i.el
  %i.er = zext nneg i32 %i.eq to i64
  tail call void @lv_memset(ptr noundef %i.ep, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.er) #9
  br label %line_mask_flat.exit

bb.az:                                            ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !26 ; 5 uses
  %i.eu = mul nsw i32 %i.et, %i.d
  %i.ev = ashr i32 %i.eu, 10                      ; 2 uses
  %i.ew = icmp sgt i32 %i.et, 0
  %i.ex = zext i1 %i.ew to i32
  %spec.select.i65 = add nsw i32 %i.ev, %i.ex
  %i.ey = icmp slt i32 %spec.select.i65, %i.f
  br i1 %i.ey, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ez = lshr exact i8 %i.k, 1
  %.lobit.i71 = and i8 %i.ez, 1
  %..i72 = zext nneg i8 %.lobit.i71 to i32
  br label %line_mask_flat.exit

bb.bb:                                            ; preds = %bb.az
  %i.fa = add nsw i32 %i.f, %3
  %i.fb = icmp sgt i32 %i.ev, %i.fa
  br i1 %i.fb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fc = and i8 %i.k, 2
  %.not203.i = icmp eq i8 %i.fc, 0
  %.205.i = zext i1 %.not203.i to i32
  br label %line_mask_flat.exit

bb.bd:                                            ; preds = %bb.bb
  %i.fd = shl nsw i32 %i.d, 8                     ; 2 uses
  %i.fe = mul nsw i32 %i.et, %i.fd                ; 2 uses
  %i.ff = lshr i32 %i.fe, 10
  %i.fg = ashr i32 %i.fe, 18                      ; 4 uses
  %i.fh = and i32 %i.ff, 255                      ; 5 uses
  %i.fi = add i32 %i.fd, 256
  %i.fj = mul nsw i32 %i.et, %i.fi                ; 2 uses
  %i.fk = lshr i32 %i.fj, 10
  %i.fl = ashr i32 %i.fj, 18                      ; 2 uses
  %i.fm = and i32 %i.fk, 255
  %i.fn = sub nsw i32 %i.fg, %i.f                 ; 15 uses
  %.not.i = icmp eq i32 %i.fg, %i.fl
  br i1 %.not.i, label %.thread248.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fo = icmp slt i32 %i.et, 0                   ; 2 uses
  %i.fp = icmp eq i32 %i.fh, 0
  %or.cond.i66 = and i1 %i.fo, %i.fp
  br i1 %or.cond.i66, label %.thread.i, label %bb.bp

.thread.i:                                        ; preds = %bb.be
  %i.fq = add nsw i32 %i.fn, -1
  br label %.thread248.i

.thread248.i:                                     ; preds = %.thread.i, %bb.bd
  %.0161231.i = phi i32 [ 255, %.thread.i ], [ %i.fh, %bb.bd ]
  %.0162230.i = phi i32 [ %i.fl, %.thread.i ], [ %i.fg, %bb.bd ]
  %.0167229.i = phi i32 [ %i.fq, %.thread.i ], [ %i.fn, %bb.bd ] ; 4 uses
  %i.fr = icmp sgt i32 %.0167229.i, -1
  %i.fs = icmp slt i32 %.0167229.i, %3
  %or.cond206.i.a = and i1 %i.fr, %i.fs
  br i1 %or.cond206.i.a, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.thread248.i
  %i.ft = add nuw nsw i32 %.0161231.i, %i.fm
  %i.fu = lshr i32 %i.ft, 1
  %i.fv = trunc nuw i32 %i.fu to i8
  %i.fw = shl i8 %i.k, 6
  %sext237.i = ashr exact i8 %i.fw, 7
  %.0.i = xor i8 %sext237.i, %i.fv                ; 3 uses
  %i.fx = zext nneg i32 %.0167229.i to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29  ; 2 uses
  %i.ga = zext i8 %.0.i to i32
  %i.gb = icmp ugt i8 %.0.i, -4
  br i1 %i.gb, label %mask_mix.exit.i69, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = icmp ult i8 %.0.i, 3
  br i1 %i.gc, label %mask_mix.exit.i69, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = zext i8 %i.fz to i32
  %i.ge = mul nuw nsw i32 %i.ga, 32897
  %i.gf = mul nuw nsw i32 %i.ge, %i.gd
  %i.gg = lshr i32 %i.gf, 23
  %i.gh = trunc nuw i32 %i.gg to i8
  br label %mask_mix.exit.i69

mask_mix.exit.i69:                                ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0.i.i70 = phi i8 [ %i.gh, %bb.bh ], [ %i.fz, %bb.bf ], [ 0, %bb.bg ]
  store i8 %.0.i.i70, ptr %i.fy, align 1, !tbaa !29
  %.pre78 = load i8, ptr %i.j, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %mask_mix.exit.i69, %.thread248.i
  %i.gi = phi i8 [ %.pre78, %mask_mix.exit.i69 ], [ %i.k, %.thread248.i ]
  %i.gj = and i8 %i.gi, 2
  %.not200.i = icmp eq i8 %i.gj, 0
  br i1 %.not200.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gk = sub nsw i32 %.0162230.i, %i.f           ; 3 uses
  %.not202.i = icmp slt i32 %i.gk, %3
  br i1 %.not202.i, label %bb.bk, label %line_mask_flat.exit

bb.bk:                                            ; preds = %bb.bj
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.bl, label %line_mask_flat.exit

bb.bl:                                            ; preds = %bb.bk
  %i.gm = zext nneg i32 %i.gk to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.gm) #9
  br label %line_mask_flat.exit

bb.bm:                                            ; preds = %bb.bi
  %i.gn = add nsw i32 %.0167229.i, 1
  %spec.select204.i = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %3) ; 4 uses
  %i.go = icmp eq i32 %spec.select204.i, 0
  br i1 %i.go, label %line_mask_flat.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = icmp sgt i32 %spec.select204.i, 0
  br i1 %i.gp, label %bb.bo, label %line_mask_flat.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gq = zext nneg i32 %spec.select204.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %i.gq
  %i.gs = sub nsw i32 %3, %spec.select204.i
  %5 = zext nneg i32 %i.gs to i64
  tail call void @lv_memset(ptr noundef nonnull %i.gr, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %5) #9
  br label %line_mask_flat.exit

bb.bp:                                            ; preds = %bb.be
  %i.gt = icmp sgt i32 %i.fn, -1                  ; 2 uses
  %i.gu = icmp slt i32 %i.fn, %3
  %or.cond208.i.a = and i1 %i.gt, %i.gu           ; 2 uses
  br i1 %i.fo, label %bb.bq, label %bb.ce

bb.bq:                                            ; preds = %bb.bp
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !25
  %i.gx = mul i32 %i.fh, %i.gw
  %i.gy = sub i32 0, %i.gx
  %i.gz = ashr i32 %i.gy, 10                      ; 3 uses
  br i1 %or.cond208.i.a, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ha = mul nsw i32 %i.gz, %i.fh
  %i.hb = lshr i32 %i.ha, 9
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = shl i8 %i.k, 6
  %sext235.i = ashr exact i8 %i.hd, 7
  %.1.i68 = xor i8 %sext235.i, %i.hc              ; 3 uses
  %i.he = zext nneg i32 %i.fn to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !29  ; 2 uses
  %i.hh = zext i8 %.1.i68 to i32
  %i.hi = icmp ugt i8 %.1.i68, -4
  br i1 %i.hi, label %mask_mix.exit219.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hj = icmp ult i8 %.1.i68, 3
  br i1 %i.hj, label %mask_mix.exit219.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hk = zext i8 %i.hg to i32
  %i.hl = mul nuw nsw i32 %i.hh, 32897
  %i.hm = mul nuw nsw i32 %i.hl, %i.hk
  %i.hn = lshr i32 %i.hm, 23
  %i.ho = trunc nuw i32 %i.hn to i8
  br label %mask_mix.exit219.i

mask_mix.exit219.i:                               ; preds = %bb.bt, %bb.bs, %bb.br
  %.0.i218.i = phi i8 [ %i.ho, %bb.bt ], [ %i.hg, %bb.br ], [ 0, %bb.bs ]
  store i8 %.0.i218.i, ptr %i.hf, align 1, !tbaa !29
  %.pre77.pre = load i8, ptr %i.j, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %mask_mix.exit219.i, %bb.bq
  %.pre77 = phi i8 [ %.pre77.pre, %mask_mix.exit219.i ], [ %i.k, %bb.bq ] ; 2 uses
  %6 = add nsw i32 %i.fn, -1                      ; 2 uses
  %.not195.i = icmp sgt i32 %i.fn, 0
  %7 = icmp slt i32 %6, %3
  %or.cond206.i = select i1 %.not195.i, i1 %7, i1 false
  br i1 %or.cond206.i, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %.neg.i = add nsw i32 %i.gz, 134217473
  %i.hp = load i32, ptr %i.es, align 4, !tbaa !26
  %.neg194.i = mul i32 %i.hp, %.neg.i
  %i.hq = lshr i32 %.neg194.i, 10
  %i.hr = sub nsw i32 255, %i.gz
  %i.hs = mul i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 9
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = lshr i8 %.pre77, 1
  %i.hw = and i8 %i.hv, 1
  %sext236.i = add nsw i8 %i.hw, -1
  %spec.select210.i.a = xor i8 %sext236.i, %i.hu  ; 3 uses
  %i.hx = zext nneg i32 %6 to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %i.hx ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !29  ; 2 uses
  %i.ia = zext i8 %spec.select210.i.a to i32
  %i.ib = icmp ugt i8 %spec.select210.i.a, -4
  br i1 %i.ib, label %mask_mix.exit221.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ic = icmp ult i8 %spec.select210.i.a, 3
  br i1 %i.ic, label %mask_mix.exit221.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.id = zext i8 %i.hz to i32
  %i.ie = mul nuw nsw i32 %i.id, 32897
  %i.if = mul nuw nsw i32 %i.ie, %i.ia
  %i.ig = lshr i32 %i.if, 23
  %i.ih = trunc nuw i32 %i.ig to i8
  br label %mask_mix.exit221.i

mask_mix.exit221.i:                               ; preds = %bb.bx, %bb.bw, %bb.bv
  %.0.i220.i = phi i8 [ %i.ih, %bb.bx ], [ %i.hz, %bb.bv ], [ 0, %bb.bw ]
  store i8 %.0.i220.i, ptr %i.hy, align 1, !tbaa !29
  %.pre76 = load i8, ptr %i.j, align 4
  br label %bb.by

bb.by:                                            ; preds = %mask_mix.exit221.i, %bb.bu
  %i.ii = phi i8 [ %.pre76, %mask_mix.exit221.i ], [ %.pre77, %bb.bu ]
  %i.ij = add nsw i32 %i.fn, 1                    ; 3 uses
  %i.ik = and i8 %i.ii, 2
  %.not197.i = icmp eq i8 %i.ik, 0
  br i1 %.not197.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.il = xor i32 %i.f, -1
  %i.im = add i32 %i.fg, %i.il                    ; 3 uses
  %i.in = icmp sle i32 %i.im, %3
  %i.io = icmp sgt i32 %i.im, 0
  %or.cond211.i.a = and i1 %i.in, %i.io
  br i1 %or.cond211.i.a, label %bb.ca, label %line_mask_flat.exit

bb.ca:                                            ; preds = %bb.bz
  %i.ip = zext nneg i32 %i.im to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ip) #9
  br label %line_mask_flat.exit

bb.cb:                                            ; preds = %bb.by
  %8 = icmp sgt i32 %i.ij, %3
  br i1 %8, label %line_mask_flat.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iq = icmp sgt i32 %i.fn, -2
  br i1 %i.iq, label %bb.cd, label %line_mask_flat.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ir = zext nneg i32 %i.ij to i64
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 %i.ir
  %i.it = sub nsw i32 %3, %i.ij
  %i.iu = sext i32 %i.it to i64
  tail call void @lv_memset(ptr noundef %i.is, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.iu) #9
  br label %line_mask_flat.exit

bb.ce:                                            ; preds = %bb.bp
  %i.iv = xor i32 %i.fh, 255                      ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !25
  %i.iy = mul nsw i32 %i.ix, %i.iv
  %i.iz = ashr i32 %i.iy, 10                      ; 2 uses
  br i1 %or.cond208.i.a, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ja = mul nsw i32 %i.iz, %i.iv
  %i.jb = lshr i32 %i.ja, 9
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = lshr exact i8 %i.k, 1
  %i.je = and i8 %i.jd, 1
  %sext.i67 = add nsw i8 %i.je, -1
  %spec.select213.i = xor i8 %sext.i67, %i.jc     ; 3 uses
  %i.jf = zext nneg i32 %i.fn to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !29  ; 2 uses
  %i.ji = zext i8 %spec.select213.i to i32
  %i.jj = icmp ugt i8 %spec.select213.i, -4
  br i1 %i.jj, label %mask_mix.exit223.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jk = icmp ult i8 %spec.select213.i, 3
  br i1 %i.jk, label %mask_mix.exit223.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jl = zext i8 %i.jh to i32
  %i.jm = mul nuw nsw i32 %i.ji, 32897
  %i.jn = mul nuw nsw i32 %i.jm, %i.jl
  %i.jo = lshr i32 %i.jn, 23
  %i.jp = trunc nuw i32 %i.jo to i8
  br label %mask_mix.exit223.i

mask_mix.exit223.i:                               ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0.i222.i = phi i8 [ %i.jp, %bb.ch ], [ %i.jh, %bb.cf ], [ 0, %bb.cg ]
  store i8 %.0.i222.i, ptr %i.jg, align 1, !tbaa !29
  %.pre75.pre = load i8, ptr %i.j, align 4
  br label %bb.ci

bb.ci:                                            ; preds = %mask_mix.exit223.i, %bb.ce
  %.pre75 = phi i8 [ %.pre75.pre, %mask_mix.exit223.i ], [ %i.k, %bb.ce ] ; 2 uses
  %i.jq = add nsw i32 %i.fn, 1                    ; 2 uses
  %i.jr = icmp sgt i32 %i.fn, -2
  %i.js = icmp slt i32 %i.jq, %3
  %or.cond214.i = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond214.i, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.jt = sub nsw i32 255, %i.iz                  ; 2 uses
  %i.ju = load i32, ptr %i.es, align 4, !tbaa !26
  %i.jv = mul nsw i32 %i.ju, %i.jt
  %i.jw = lshr i32 %i.jv, 10
  %i.jx = mul i32 %i.jw, %i.jt
  %i.jy = lshr i32 %i.jx, 9
  %i.jz = trunc i32 %i.jy to i8
  %i.ka = shl i8 %.pre75, 6
  %sext234.i = ashr i8 %i.ka, 7
  %.4.i = xor i8 %sext234.i, %i.jz                ; 3 uses
  %i.kb = zext nneg i32 %i.jq to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 %i.kb ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !29  ; 2 uses
  %i.ke = zext i8 %.4.i to i32
  %i.kf = icmp ugt i8 %.4.i, -4
  br i1 %i.kf, label %mask_mix.exit225.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kg = icmp ult i8 %.4.i, 3
  br i1 %i.kg, label %mask_mix.exit225.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kh = zext i8 %i.kd to i32
  %i.ki = mul nuw nsw i32 %i.kh, 32897
  %i.kj = mul nuw nsw i32 %i.ki, %i.ke
  %i.kk = lshr i32 %i.kj, 23
  %i.kl = trunc nuw i32 %i.kk to i8
  br label %mask_mix.exit225.i

mask_mix.exit225.i:                               ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0.i224.i = phi i8 [ %i.kl, %bb.cl ], [ %i.kd, %bb.cj ], [ 0, %bb.ck ]
  store i8 %.0.i224.i, ptr %i.kc, align 1, !tbaa !29
  %.pre74 = load i8, ptr %i.j, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %mask_mix.exit225.i, %bb.ci
  %i.km = phi i8 [ %.pre74, %mask_mix.exit225.i ], [ %.pre75, %bb.ci ]
  %i.kn = and i8 %i.km, 2
  %.not192.i = icmp eq i8 %i.kn, 0
  br i1 %.not192.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ko = icmp sle i32 %i.fn, %3                  ; 2 uses
  %brmerge.not.i = and i1 %i.ko, %i.gt
  %.mux.i = select i1 %i.ko, i32 2, i32 0
  br i1 %brmerge.not.i, label %bb.co, label %line_mask_flat.exit

bb.co:                                            ; preds = %bb.cn
  %i.kp = zext nneg i32 %i.fn to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.kp) #9
  br label %line_mask_flat.exit

bb.cp:                                            ; preds = %bb.cm
  %i.kq = add nsw i32 %i.fn, 2
  %spec.select215.i = tail call i32 @llvm.smin.i32(i32 %i.kq, i32 %3) ; 4 uses
  %i.kr = icmp eq i32 %spec.select215.i, 0
  br i1 %i.kr, label %line_mask_flat.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ks = icmp sgt i32 %spec.select215.i, 0
  br i1 %i.ks, label %bb.cr, label %line_mask_flat.exit

bb.cr:                                            ; preds = %bb.cq
  %i.kt = zext nneg i32 %spec.select215.i to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 %i.kt
  %i.kv = sub nsw i32 %3, %spec.select215.i
  %i.kw = zext nneg i32 %i.kv to i64
  tail call void @lv_memset(ptr noundef nonnull %i.ku, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.kw) #9
  br label %line_mask_flat.exit

line_mask_flat.exit:                              ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.y, %bb.w, %bb.u, %bb.s, %bb.f, %bb.c, %bb.o, %bb.n, %bb.m, %bb.j, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d
  %.2 = phi i32 [ 0, %bb.n ], [ 2, %bb.av ], [ %., %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 2, %bb.o ], [ 1, %bb.g ], [ 1, %bb.i ], [ 2, %bb.k ], [ 0, %bb.m ], [ 1, %bb.f ], [ 0, %bb.j ], [ 2, %bb.l ], [ %..i, %bb.s ], [ %.124.i, %bb.u ], [ %.125.i, %bb.w ], [ %.126.i, %bb.y ], [ 0, %bb.at ], [ 0, %bb.aw ], [ 2, %bb.ax ], [ 2, %bb.ay ], [ 2, %bb.au ], [ %..i72, %bb.ba ], [ %.205.i, %bb.bc ], [ 0, %bb.bm ], [ %.mux.i, %bb.cn ], [ 0, %bb.bj ], [ 1, %bb.cb ], [ 0, %bb.cp ], [ 2, %bb.bo ], [ 2, %bb.bl ], [ 2, %bb.bk ], [ 2, %bb.bn ], [ 2, %bb.ca ], [ 2, %bb.cr ], [ 2, %bb.cq ], [ 2, %bb.cd ], [ 2, %bb.co ], [ 2, %bb.bz ], [ 2, %bb.cc ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_mask_line_angle_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i16 %3, 180
  %i.b = add nsw i16 %3, -180
  %spec.select = select i1 %i.a, i16 %i.b, i16 %3 ; 2 uses
  %i.c = add nsw i16 %spec.select, 90
  %i.d = tail call i32 @lv_trigo_sin(i16 noundef signext %i.c) #9
  %i.e = ashr i32 %i.d, 5
  %i.f = add nsw i32 %i.e, %1
  %i.g = tail call i32 @lv_trigo_sin(i16 noundef signext %spec.select) #9
  %i.h = ashr i32 %i.g, 5
  %i.i = add nsw i32 %i.h, %2
  tail call void @lv_draw_sw_mask_line_points_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %4)
  ret void
}

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_mask_angle_init(ptr noundef initializes((24, 32), (160, 162)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %.056 = tail call i32 @llvm.umin.i32(i32 %i.a, i32 359) ; 4 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %4, i32 0) ; 2 uses
  %.055 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 359) ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, %.056
  %reass.sub = sub nsw i32 %.055, %.056           ; 2 uses
  %i.d = trunc nsw i32 %reass.sub to i16
  %i.e = add nsw i16 %i.d, 360
  %i.f = tail call i32 @llvm.abs.i32(i32 %reass.sub, i1 true)
  %i.g = trunc nuw nsw i32 %i.f to i16
  %.sink = select i1 %i.c, i16 %i.e, i16 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %.sink, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.056, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.055, ptr %i.k, align 4, !tbaa !34
  tail call void @lv_point_set(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %2) #9
  store ptr @lv_draw_mask_angle, ptr %0, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !63
  %i.m = icmp sgt i32 %3, 179
  %.054 = zext i1 %i.m to i32
  %i.n = icmp slt i32 %4, 180
  %.0 = zext i1 %i.n to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = trunc nuw nsw i32 %.056 to i16           ; 2 uses
  %i.q = icmp sgt i32 %3, 180
  %i.r = add nsw i16 %i.p, -180
  %spec.select.i = select i1 %i.q, i16 %i.r, i16 %i.p ; 2 uses
  %i.s = add nuw nsw i16 %spec.select.i, 90
  %i.t = tail call i32 @lv_trigo_sin(i16 noundef signext %i.s) #9
  %i.u = ashr i32 %i.t, 5
  %i.v = add nsw i32 %i.u, %1
  %i.w = tail call i32 @lv_trigo_sin(i16 noundef signext %spec.select.i) #9
  %i.x = ashr i32 %i.w, 5
  %i.y = add nsw i32 %i.x, %2
  tail call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %i.o, i32 noundef %1, i32 noundef %2, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %.054)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
begin_hunk_1_@lv_draw_sw_mask_radius_init:bb.a
  br i1 %i.s, label %bb.c, label %.preheader72.2

.preheader72.2:                                   ; preds = %.preheader72.1
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 760), align 8, !tbaa !73
  %i.u = icmp eq i32 %i.t, %spec.store.select
  br i1 %i.u, label %bb.c, label %.preheader72.3

.preheader72.3:                                   ; preds = %.preheader72.2
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 808), align 8, !tbaa !73
  %i.w = icmp eq i32 %i.v, %spec.store.select
  br i1 %i.w, label %bb.c, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %.preheader72.3
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 660), align 4, !tbaa !20
  %.not91 = icmp eq i32 %i.x, 0
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 708), align 4, !tbaa !20
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  br i1 %.not91, label %.preheader71.1, label %.preheader71.1.thread

bb.c:                                             ; preds = %.preheader72.3, %.preheader72.2, %.preheader72.1, %.preheader72.preheader
  %.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader72.preheader ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader72.1 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader72.2 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %.preheader72.3 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = icmp samesign ult i32 %spec.select, 16
  %i.ag = lshr i32 %spec.store.select, 4
  %i.ah = select i1 %i.af, i32 1, i32 %i.ag
  %i.ai = add nsw i32 %i.ae, %i.ah
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 1000)
  store i32 %spec.select67, ptr %i.ad, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.lcssa, ptr %i.aj, align 8, !tbaa !14
  br label %circ_calc_aa4.exit

.preheader71.1:                                   ; preds = %.preheader71.preheader
  br i1 %i.z, label %bb.d, label %.preheader71.2

.preheader71.1.thread:                            ; preds = %.preheader71.preheader
  br i1 %i.z, label %.preheader71.2, label %.preheader71.2.thread

bb.d:                                             ; preds = %.preheader71.1
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 704), align 8, !tbaa !18
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 656), align 8, !tbaa !18
  %i.am = icmp slt i32 %i.ak, %i.al
  %spec.select68.1 = select i1 %i.am, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 624)
  br label %.preheader71.2

.preheader71.2:                                   ; preds = %.preheader71.1.thread, %bb.d, %.preheader71.1
  %.1.1 = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader71.1.thread ], [ %spec.select68.1, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader71.1 ] ; 3 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !20
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %.preheader71.3

.preheader71.2.thread:                            ; preds = %.preheader71.1.thread
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.preheader71.3.thread, label %.preheader71.3

bb.e:                                             ; preds = %.preheader71.2
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 752), align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.1.1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  %i.au = icmp slt i32 %i.ar, %i.at
  %spec.select68.2 = select i1 %i.au, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), ptr %.1.1
  br label %.preheader71.3

.preheader71.3:                                   ; preds = %.preheader71.2.thread, %bb.e, %.preheader71.2
  %.1.2 = phi ptr [ null, %.preheader71.2.thread ], [ %spec.select68.2, %bb.e ], [ %.1.1, %.preheader71.2 ] ; 3 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !20
  %i.aw = icmp eq i32 %i.av, 0
  %.not66.3 = icmp eq ptr %.1.2, null             ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.g

.preheader71.3.thread:                            ; preds = %.preheader71.2.thread
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !20
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread102, label %.thread106

bb.f:                                             ; preds = %.preheader71.3
  br i1 %.not66.3, label %.thread106, label %.thread102

.thread102:                                       ; preds = %.preheader71.3.thread, %bb.f
  %.1.2101105 = phi ptr [ %.1.2, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader71.3.thread ] ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 800), align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.2101105, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = icmp slt i32 %i.az, %i.bb
  %spec.select68.3 = select i1 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), ptr %.1.2101105
  br label %.thread106

bb.g:                                             ; preds = %.preheader71.3
  br i1 %.not66.3, label %bb.h, label %.thread106

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call ptr @lv_malloc_zeroed(i64 noundef 48) #9 ; 3 uses
  %.not65 = icmp eq ptr %i.bd, null
  br i1 %.not65, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 -1, ptr %i.be, align 8, !tbaa !18
  br label %bb.j

.thread106:                                       ; preds = %.preheader71.3.thread, %.thread102, %bb.f, %bb.g
  %.1.3109 = phi ptr [ %.1.2, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader71.3.thread ], [ %spec.select68.3, %.thread102 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.3109, i64 36 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.3109, i64 32
  %i.bj = icmp samesign ult i32 %spec.select, 16
  %i.bk = lshr i32 %spec.store.select, 4
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 1000)
  %spec.select69 = select i1 %i.bj, i32 1, i32 %i.bl
  store i32 %spec.select69, ptr %i.bi, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.thread106, %bb.i
  %.2 = phi ptr [ %.1.3109, %.thread106 ], [ %i.bd, %bb.i ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.2, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.2, i64 40
  store i32 %spec.store.select, ptr %i.bn, align 8, !tbaa !73
  %i.bo = load ptr, ptr %.2, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_free(ptr noundef nonnull %i.bo) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = mul nuw nsw i32 %spec.store.select, 6
  %i.bq = add nuw nsw i32 %i.bp, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call ptr @lv_malloc(i64 noundef %i.br) #9 ; 6 uses
  store ptr %i.bs, ptr %.2, align 8, !tbaa !21
  %.not195.i = icmp eq ptr %i.bs, null
  br i1 %.not195.i, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  br label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 14 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !19
  %i.bu = shl nuw nsw i32 %spec.store.select, 1   ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 24 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !37
  %i.bz = shl nuw nsw i32 %spec.store.select, 2   ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !38
  %i.ce = icmp eq i32 %spec.select, 1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 -76, ptr %i.bs, align 1, !tbaa !29
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  store i16 0, ptr %i.cf, align 2, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 1, ptr %i.cg, align 2, !tbaa !39
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !38
  store i16 0, ptr %i.ch, align 2, !tbaa !39
  br label %circ_calc_aa4.exit

bb.o:                                             ; preds = %bb.m
  %i.ci = add nuw i32 %i.bu, 2                    ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = tail call ptr @lv_malloc_zeroed(i64 noundef %i.cl) #9 ; 19 uses
  %.not196.i = icmp eq ptr %i.cm, null
  br i1 %.not196.i, label %.preheader223.i, label %bb.p

.preheader223.i:                                  ; preds = %bb.o, %.preheader223.i
  br label %.preheader223.i

bb.p:                                             ; preds = %bb.o
  %i.cn = sext i32 %i.ci to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn ; 15 uses
  %i.cp = sub nsw i32 1, %i.bz
  br label %.preheader224.i

.preheader224.i:                                  ; preds = %bb.ai, %bb.p
  %.0178240.i = phi i32 [ 0, %bb.p ], [ %i.gy, %bb.ai ] ; 11 uses
  %.0183239.i = phi i32 [ 0, %bb.p ], [ %i.gz, %bb.ai ] ; 7 uses
  %.0213238.i = phi i32 [ %i.cp, %bb.p ], [ %.3216.3.i, %bb.ai ] ; 3 uses
  %.sroa.0.0237.i = phi i32 [ %i.bz, %bb.p ], [ %.sroa.0.3.3.i, %bb.ai ] ; 3 uses
  %.sroa.10.0236.i = phi i32 [ 0, %bb.p ], [ %i.cq, %bb.ai ] ; 6 uses
  %i.cq = add i32 %.sroa.10.0236.i, 4             ; 2 uses
  %i.cr = icmp slt i32 %.0213238.i, 1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader224.i
  %i.cs = shl nsw i32 %.sroa.10.0236.i, 1
  %i.ct = add nsw i32 %.0213238.i, 3
  %i.cu = add i32 %i.ct, %i.cs
  br label %circ_next.exit.i

bb.r:                                             ; preds = %.preheader224.i
  %i.cv = sub nsw i32 %.sroa.10.0236.i, %.sroa.0.0237.i
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = add nuw i32 %.0213238.i, 5
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = add nsw i32 %.sroa.0.0237.i, -1
  br label %circ_next.exit.i

circ_next.exit.i:                                 ; preds = %bb.r, %bb.q
  %.sroa.0.3.i = phi i32 [ %.sroa.0.0237.i, %bb.q ], [ %i.cz, %bb.r ] ; 6 uses
  %.3216.i = phi i32 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ] ; 3 uses
  %4 = or disjoint i32 %.sroa.10.0236.i, 1        ; 3 uses
  %.not222.i = icmp sgt i32 %4, %.sroa.0.3.i
  br i1 %.not222.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %circ_next.exit.i
  %i.da = ashr i32 %.sroa.0.3.i, 2                ; 9 uses
  %i.db = and i32 %.sroa.0.3.i, 3                 ; 3 uses
  %i.dc = icmp slt i32 %.3216.i, 1
  br i1 %i.dc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = sub nsw i32 %4, %.sroa.0.3.i
  %i.de = shl nsw i32 %i.dd, 1
  %i.df = add nuw i32 %.3216.i, 5
  %i.dg = add i32 %i.df, %i.de
  %i.dh = add nsw i32 %.sroa.0.3.i, -1
  br label %circ_next.exit.1.i

bb.u:                                             ; preds = %bb.s
  %i.di = shl nsw i32 %4, 1
  %i.dj = add nuw nsw i32 %i.di, 3
  %i.dk = add i32 %i.dj, %.3216.i
  br label %circ_next.exit.1.i

circ_next.exit.1.i:                               ; preds = %bb.u, %bb.t
  %.sroa.0.3.1.i = phi i32 [ %.sroa.0.3.i, %bb.u ], [ %i.dh, %bb.t ] ; 6 uses
  %.3216.1.i = phi i32 [ %i.dk, %bb.u ], [ %i.dg, %bb.t ] ; 3 uses
  %5 = or disjoint i32 %.sroa.10.0236.i, 2        ; 3 uses
  %.not222.1.i = icmp sgt i32 %5, %.sroa.0.3.1.i
  br i1 %.not222.1.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %circ_next.exit.1.i
  %i.dl = ashr i32 %.sroa.0.3.1.i, 2
  %i.dm = and i32 %.sroa.0.3.1.i, 3               ; 3 uses
  %i.dn = icmp slt i32 %.3216.1.i, 1
  br i1 %i.dn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = sub nsw i32 %5, %.sroa.0.3.1.i
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = add nuw i32 %.3216.1.i, 5
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = add nsw i32 %.sroa.0.3.1.i, -1
  br label %circ_next.exit.2.i

bb.x:                                             ; preds = %bb.v
  %i.dt = shl nsw i32 %5, 1
  %i.du = or disjoint i32 %i.dt, 3
  %i.dv = add i32 %i.du, %.3216.1.i
  br label %circ_next.exit.2.i

circ_next.exit.2.i:                               ; preds = %bb.x, %bb.w
  %.sroa.0.3.2.i = phi i32 [ %.sroa.0.3.1.i, %bb.x ], [ %i.ds, %bb.w ] ; 6 uses
  %.3216.2.i = phi i32 [ %i.dv, %bb.x ], [ %i.dr, %bb.w ] ; 3 uses
  %6 = or disjoint i32 %.sroa.10.0236.i, 3        ; 3 uses
  %.not222.2.i = icmp sgt i32 %6, %.sroa.0.3.2.i
  br i1 %.not222.2.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %circ_next.exit.2.i
  %i.dw = ashr i32 %.sroa.0.3.2.i, 2
  %i.dx = and i32 %.sroa.0.3.2.i, 3               ; 4 uses
  %i.dy = icmp slt i32 %.3216.2.i, 1
  br i1 %i.dy, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = sub nsw i32 %6, %.sroa.0.3.2.i
  %i.ea = shl nsw i32 %i.dz, 1
  %i.eb = add nuw i32 %.3216.2.i, 5
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = add nsw i32 %.sroa.0.3.2.i, -1
  br label %circ_next.exit.3.i

bb.aa:                                            ; preds = %bb.y
  %i.ee = shl nsw i32 %6, 1
  %i.ef = add i32 %i.ee, 3
  %i.eg = add i32 %i.ef, %.3216.2.i
  br label %circ_next.exit.3.i

circ_next.exit.3.i:                               ; preds = %bb.aa, %bb.z
  %.sroa.0.3.3.i = phi i32 [ %.sroa.0.3.2.i, %bb.aa ], [ %i.ed, %bb.z ] ; 4 uses
  %.3216.3.i = phi i32 [ %i.eg, %bb.aa ], [ %i.ec, %bb.z ]
  %.not222.3.i = icmp sgt i32 %i.cq, %.sroa.0.3.3.i
  br i1 %.not222.3.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %circ_next.exit.3.i
  %i.eh = ashr i32 %.sroa.0.3.3.i, 2
  %i.ei = and i32 %.sroa.0.3.3.i, 3               ; 4 uses
  %i.ej = icmp eq i32 %i.da, %i.eh
  br i1 %i.ej, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = zext nneg i32 %.0178240.i to i64        ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ek
  store i32 %i.da, ptr %i.el, align 4, !tbaa !35
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ek
  store i32 %.0183239.i, ptr %i.em, align 4, !tbaa !35
  %i.en = add nuw nsw i32 %i.dm, %i.db
  %i.eo = add nuw nsw i32 %i.en, %i.dx
  %i.ep = add nuw nsw i32 %i.eo, %i.ei
  %i.eq = trunc nuw nsw i32 %i.ep to i8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %.not198.i = icmp eq i32 %i.da, %i.dl
  br i1 %.not198.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = zext nneg i32 %.0178240.i to i64        ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.er
  store i32 %i.da, ptr %i.es, align 4, !tbaa !35
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.er
  store i32 %.0183239.i, ptr %i.et, align 4, !tbaa !35
  %i.eu = trunc nuw nsw i32 %i.db to i8
  %i.ev = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !29
  %i.ex = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.er ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !29
  %i.fa = shl i8 %i.ez, 4
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !29
  %i.fb = add nuw nsw i32 %.0178240.i, 1
  %i.fc = add nsw i32 %i.da, -1
  %i.fd = zext nneg i32 %i.fb to i64              ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fd
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !35
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fd
  store i32 %.0183239.i, ptr %i.ff, align 4, !tbaa !35
  %i.fg = or disjoint i32 %i.dm, 4
  %i.fh = add nuw nsw i32 %i.fg, %i.dx
  %i.fi = add nuw nsw i32 %i.fh, %i.ei
  %i.fj = trunc nuw nsw i32 %i.fi to i8
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %.not199.i = icmp eq i32 %i.da, %i.dw
  %i.fk = zext nneg i32 %.0178240.i to i64        ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fk
  store i32 %i.da, ptr %i.fl, align 4, !tbaa !35
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fk
  store i32 %.0183239.i, ptr %i.fm, align 4, !tbaa !35
  %i.fn = add nuw nsw i32 %i.dm, %i.db            ; 2 uses
  br i1 %.not199.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = trunc nuw nsw i32 %i.fn to i8
  %i.fp = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fk
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !29
  %i.fr = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fk ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !29
  %i.fu = shl i8 %i.ft, 4
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !29
  %i.fv = add nuw nsw i32 %.0178240.i, 1
  %i.fw = add nsw i32 %i.da, -1
  %i.fx = zext nneg i32 %i.fv to i64              ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fx
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !35
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fx
  store i32 %.0183239.i, ptr %i.fz, align 4, !tbaa !35
  %i.ga = or disjoint i32 %i.dx, 8
  %i.gb = add nuw nsw i32 %i.ga, %i.ei
  %i.gc = trunc nuw nsw i32 %i.gb to i8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gd = add nuw nsw i32 %i.dx, %i.fn
  %i.ge = trunc nuw nsw i32 %i.gd to i8
  %i.gf = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fk
  store i8 %i.ge, ptr %i.gg, align 1, !tbaa !29
  %i.gh = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fk ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !29
  %i.gk = shl i8 %i.gj, 4
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !29
  %i.gl = add nuw nsw i32 %.0178240.i, 1
  %i.gm = add nsw i32 %i.da, -1
  %i.gn = zext nneg i32 %i.gl to i64              ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gn
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !35
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gn
  store i32 %.0183239.i, ptr %i.gp, align 4, !tbaa !35
  %i.gq = trunc nuw nsw i32 %i.ei to i8
  %i.gr = or disjoint i8 %i.gq, 12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %.sink302.i = phi i64 [ %i.fd, %bb.ae ], [ %i.gn, %bb.ah ], [ %i.fx, %bb.ag ], [ %i.ek, %bb.ac ] ; 2 uses
  %.sink299.i = phi i8 [ %i.fj, %bb.ae ], [ %i.gr, %bb.ah ], [ %i.gc, %bb.ag ], [ %i.eq, %bb.ac ]
  %.sink.i = phi i32 [ 2, %bb.ae ], [ 2, %bb.ah ], [ 2, %bb.ag ], [ 1, %bb.ac ]
  %i.gs = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink302.i
  store i8 %.sink299.i, ptr %i.gt, align 1, !tbaa !29
  %i.gu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sink302.i ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !29
  %i.gx = shl i8 %i.gw, 4
  store i8 %i.gx, ptr %i.gv, align 1, !tbaa !29
  %i.gy = add nuw nsw i32 %.sink.i, %.0178240.i
  %i.gz = add i32 %.0183239.i, 1
  br label %.preheader224.i

.thread.i:                                        ; preds = %circ_next.exit.3.i, %circ_next.exit.2.i, %circ_next.exit.1.i, %circ_next.exit.i
  %i.ha = mul nuw nsw i32 %spec.store.select, 723 ; 2 uses
  %i.hb = lshr i32 %i.ha, 10                      ; 4 uses
  %i.hc = add nsw i32 %.0178240.i, -1
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !35
  %.not200.i = icmp eq i32 %i.hf, %i.hb
  br i1 %.not200.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread.i
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.hd
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !35
  %.not201.i = icmp eq i32 %i.hh, %i.hb
  br i1 %.not201.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.hi = and i32 %i.ha, 1023                     ; 4 uses
  %i.hj = icmp samesign ult i32 %i.hi, 513
  br i1 %i.hj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hk = mul nuw nsw i32 %i.hi, %i.hi
  %i.hl = lshr i32 %i.hk, 15
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hm = sub nuw nsw i32 1024, %i.hi             ; 2 uses
  %i.hn = mul nuw nsw i32 %i.hm, %i.hm
  %i.ho = lshr i32 %i.hn, 15
  %i.hp = sub nuw nsw i32 15, %i.ho
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0177.i = phi i32 [ %i.hl, %bb.al ], [ %i.hp, %bb.am ]
  %i.hq = zext nneg i32 %.0178240.i to i64        ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hq
  store i32 %i.hb, ptr %i.hr, align 4, !tbaa !35
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.hq
  store i32 %i.hb, ptr %i.hs, align 4, !tbaa !35
  %i.ht = trunc nuw nsw i32 %.0177.i to i8
  %i.hu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hq
  store i8 %i.ht, ptr %i.hv, align 1, !tbaa !29
  %i.hw = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hq ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !29
  %i.hz = shl i8 %i.hy, 4
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !29
  %i.ia = add nuw nsw i32 %.0178240.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.2.i = phi i32 [ %i.ia, %bb.an ], [ %.0178240.i, %bb.aj ] ; 4 uses
  %i.ib = icmp sgt i32 %.2.i, 1
  br i1 %i.ib, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %i.ic = add nsw i32 %.2.i, -2                   ; 2 uses
  %i.id = zext nneg i32 %.2.i to i64              ; 5 uses
  %i.ie = zext i32 %i.ic to i64                   ; 6 uses
  %i.if = and i64 %i.ie, 1
  %lcmp.mod.not.not = icmp eq i64 %i.if, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ie
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !35
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.id
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !35
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ie
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !35
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.id
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !35
  %i.im = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  %i.io = load i8, ptr %i.in, align 1, !tbaa !29
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.id
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !29
end_hunk_1
