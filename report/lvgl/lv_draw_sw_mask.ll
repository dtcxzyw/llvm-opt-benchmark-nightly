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
  store i8 %.0.i.i, ptr %i.cb, align 1, !tbaa !37
  br label %bb.ag

bb.ag:                                            ; preds = %mask_mix.exit.i, %bb.ac
  %i.cl = add nsw i32 %i.bs, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread134.i
  %i.cm = phi i32 [ %i.bs, %bb.ag ], [ %i.bl, %.thread134.i ] ; 3 uses
  %.0100136.i = phi i32 [ %i.br, %bb.ag ], [ 255, %.thread134.i ]
  %.097.i = phi i32 [ %i.cl, %bb.ag ], [ %i.bl, %.thread134.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.pre.i = load i32, ptr %i.cn, align 8, !tbaa !34
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
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37  ; 2 uses
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
  store i8 %.0.i129.i, ptr %i.cy, align 1, !tbaa !37
  %.pre142.i = load i32, ptr %i.cn, align 8, !tbaa !34
  br label %bb.an

bb.an:                                            ; preds = %mask_mix.exit130.i, %bb.aj
  %i.di = phi i32 [ %.pre142.i, %mask_mix.exit130.i ], [ %i.co, %bb.aj ] ; 2 uses
  %i.dj = sub nsw i32 %.1101.i, %i.di             ; 2 uses
  %i.dk = add nsw i32 %.198.i, 1                  ; 3 uses
  %.not119.i = icmp slt i32 %i.dk, %3
  br i1 %.not119.i, label %bb.ai, label %bb.ao, !llvm.loop !38

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
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.dp = mul nsw i32 %i.do, %.2102.i
  %i.dq = lshr i32 %i.dp, 10
  %i.dr = mul i32 %i.dq, %.2102.i
  %i.ds = lshr i32 %i.dr, 9
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !26
  %.lobit138.i = ashr i32 %i.dt, 31
  %.2139.i = xor i32 %i.ds, %.lobit138.i
  %.2.i = trunc i32 %.2139.i to i8
  %i.du = shl i8 %.pre73, 6
  %sext140.i = ashr i8 %i.du, 7
  %.3.i = xor i8 %sext140.i, %.2.i                ; 3 uses
  %i.dv = zext nneg i32 %.299.i to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !37  ; 2 uses
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
  store i8 %.0.i131.i, ptr %i.dw, align 1, !tbaa !37
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
  %i.et = load i32, ptr %i.es, align 4, !tbaa !30 ; 5 uses
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
  %i.fn = sub nsw i32 %i.fg, %i.f                 ; 17 uses
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
  %i.fs = icmp slt i32 %.0167229.i, %3            ; 2 uses
  %or.cond206.i = and i1 %i.fr, %i.fs
  br i1 %or.cond206.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.thread248.i
  %i.ft = add nuw nsw i32 %.0161231.i, %i.fm
  %i.fu = lshr i32 %i.ft, 1
  %i.fv = trunc nuw i32 %i.fu to i8
  %i.fw = shl i8 %i.k, 6
  %sext237.i = ashr exact i8 %i.fw, 7
  %.0.i = xor i8 %sext237.i, %i.fv                ; 3 uses
  %i.fx = zext nneg i32 %.0167229.i to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !37  ; 2 uses
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
  store i8 %.0.i.i70, ptr %i.fy, align 1, !tbaa !37
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
  %spec.select207.i = select i1 %i.fs, i32 %i.gn, i32 %3 ; 4 uses
  %i.go = icmp eq i32 %spec.select207.i, 0
  br i1 %i.go, label %line_mask_flat.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = icmp sgt i32 %spec.select207.i, 0
  br i1 %i.gp, label %bb.bo, label %line_mask_flat.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gq = zext nneg i32 %spec.select207.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %i.gq
  %i.gs = sub nsw i32 %3, %spec.select207.i
  %i.gt = sext i32 %i.gs to i64
  tail call void @lv_memset(ptr noundef nonnull %i.gr, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.gt) #9
  br label %line_mask_flat.exit

bb.bp:                                            ; preds = %bb.be
  %i.gu = icmp sgt i32 %i.fn, -1
  %i.gv = icmp slt i32 %i.fn, %3                  ; 2 uses
  %or.cond208.i = and i1 %i.gu, %i.gv             ; 2 uses
  br i1 %i.fo, label %bb.bq, label %bb.ce

bb.bq:                                            ; preds = %bb.bp
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !26
  %i.gy = mul i32 %i.fh, %i.gx
  %i.gz = sub i32 0, %i.gy
  %i.ha = ashr i32 %i.gz, 10                      ; 3 uses
  br i1 %or.cond208.i, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.hb = mul nsw i32 %i.ha, %i.fh
  %i.hc = lshr i32 %i.hb, 9
  %i.hd = trunc i32 %i.hc to i8
  %i.he = shl i8 %i.k, 6
  %sext235.i = ashr exact i8 %i.he, 7
  %.1.i68 = xor i8 %sext235.i, %i.hd              ; 3 uses
  %i.hf = zext nneg i32 %i.fn to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !37  ; 2 uses
  %i.hi = zext i8 %.1.i68 to i32
  %i.hj = icmp ugt i8 %.1.i68, -4
  br i1 %i.hj, label %mask_mix.exit219.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hk = icmp ult i8 %.1.i68, 3
  br i1 %i.hk, label %mask_mix.exit219.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hl = zext i8 %i.hh to i32
  %i.hm = mul nuw nsw i32 %i.hi, 32897
  %i.hn = mul nuw nsw i32 %i.hm, %i.hl
  %i.ho = lshr i32 %i.hn, 23
  %i.hp = trunc nuw i32 %i.ho to i8
  br label %mask_mix.exit219.i

mask_mix.exit219.i:                               ; preds = %bb.bt, %bb.bs, %bb.br
  %.0.i218.i = phi i8 [ %i.hp, %bb.bt ], [ %i.hh, %bb.br ], [ 0, %bb.bs ]
  store i8 %.0.i218.i, ptr %i.hg, align 1, !tbaa !37
  %.pre77.pre = load i8, ptr %i.j, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %mask_mix.exit219.i, %bb.bq
  %.pre77 = phi i8 [ %.pre77.pre, %mask_mix.exit219.i ], [ %i.k, %bb.bq ] ; 2 uses
  %i.hq = icmp slt i32 %i.fn, 1
  %.not195.i = icmp sgt i32 %i.fn, %3
  %or.cond209.i = or i1 %i.hq, %.not195.i
  br i1 %or.cond209.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.neg.i = add nsw i32 %i.ha, 134217473
  %i.hr = load i32, ptr %i.es, align 4, !tbaa !30
  %.neg194.i = mul i32 %i.hr, %.neg.i
  %i.hs = lshr i32 %.neg194.i, 10
  %i.ht = sub nsw i32 255, %i.ha
  %i.hu = mul i32 %i.hs, %i.ht
  %i.hv = lshr i32 %i.hu, 9
  %i.hw = trunc i32 %i.hv to i8
  %i.hx = lshr i8 %.pre77, 1
  %i.hy = and i8 %i.hx, 1
  %sext236.i = add nsw i8 %i.hy, -1
  %spec.select210.i = xor i8 %sext236.i, %i.hw    ; 3 uses
  %i.hz = zext nneg i32 %i.fn to i64
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1     ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !37  ; 2 uses
  %i.id = zext i8 %spec.select210.i to i32
  %i.ie = icmp ugt i8 %spec.select210.i, -4
  br i1 %i.ie, label %mask_mix.exit221.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.if = icmp ult i8 %spec.select210.i, 3
  br i1 %i.if, label %mask_mix.exit221.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ig = zext i8 %i.ic to i32
  %i.ih = mul nuw nsw i32 %i.ig, 32897
  %i.ii = mul nuw nsw i32 %i.ih, %i.id
  %i.ij = lshr i32 %i.ii, 23
  %i.ik = trunc nuw i32 %i.ij to i8
  br label %mask_mix.exit221.i

mask_mix.exit221.i:                               ; preds = %bb.bx, %bb.bw, %bb.bv
  %.0.i220.i = phi i8 [ %i.ik, %bb.bx ], [ %i.ic, %bb.bv ], [ 0, %bb.bw ]
  store i8 %.0.i220.i, ptr %i.ib, align 1, !tbaa !37
  %.pre76 = load i8, ptr %i.j, align 4
  br label %bb.by

bb.by:                                            ; preds = %mask_mix.exit221.i, %bb.bu
  %i.il = phi i8 [ %.pre76, %mask_mix.exit221.i ], [ %.pre77, %bb.bu ]
  %i.im = add nsw i32 %i.fn, 1                    ; 2 uses
  %i.in = and i8 %i.il, 2
  %.not197.i = icmp eq i8 %i.in, 0
  br i1 %.not197.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.io = xor i32 %i.f, -1
  %i.ip = add i32 %i.fg, %i.io                    ; 3 uses
  %i.iq = icmp sle i32 %i.ip, %3
  %i.ir = icmp sgt i32 %i.ip, 0
  %or.cond211.i = and i1 %i.iq, %i.ir
  br i1 %or.cond211.i, label %bb.ca, label %line_mask_flat.exit

bb.ca:                                            ; preds = %bb.bz
  %i.is = zext nneg i32 %i.ip to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.is) #9
  br label %line_mask_flat.exit

bb.cb:                                            ; preds = %bb.by
  br i1 %i.gv, label %bb.cc, label %line_mask_flat.exit

bb.cc:                                            ; preds = %bb.cb
  %i.it = icmp sgt i32 %i.fn, -2
  br i1 %i.it, label %bb.cd, label %line_mask_flat.exit

bb.cd:                                            ; preds = %bb.cc
  %i.iu = zext nneg i32 %i.im to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %i.iu
  %i.iw = sub nsw i32 %3, %i.im
  %i.ix = sext i32 %i.iw to i64
  tail call void @lv_memset(ptr noundef %i.iv, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ix) #9
  br label %line_mask_flat.exit

bb.ce:                                            ; preds = %bb.bp
  %i.iy = xor i32 %i.fh, 255                      ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !26
  %i.jb = mul nsw i32 %i.ja, %i.iy
  %i.jc = ashr i32 %i.jb, 10                      ; 2 uses
  br i1 %or.cond208.i, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.jd = mul nsw i32 %i.jc, %i.iy
  %i.je = lshr i32 %i.jd, 9
  %i.jf = trunc i32 %i.je to i8
  %i.jg = lshr exact i8 %i.k, 1
  %i.jh = and i8 %i.jg, 1
  %sext.i67 = add nsw i8 %i.jh, -1
  %spec.select213.i = xor i8 %sext.i67, %i.jf     ; 3 uses
  %i.ji = zext nneg i32 %i.fn to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ji ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !37  ; 2 uses
  %i.jl = zext i8 %spec.select213.i to i32
  %i.jm = icmp ugt i8 %spec.select213.i, -4
  br i1 %i.jm, label %mask_mix.exit223.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jn = icmp ult i8 %spec.select213.i, 3
  br i1 %i.jn, label %mask_mix.exit223.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jo = zext i8 %i.jk to i32
  %i.jp = mul nuw nsw i32 %i.jl, 32897
  %i.jq = mul nuw nsw i32 %i.jp, %i.jo
  %i.jr = lshr i32 %i.jq, 23
  %i.js = trunc nuw i32 %i.jr to i8
  br label %mask_mix.exit223.i

mask_mix.exit223.i:                               ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0.i222.i = phi i8 [ %i.js, %bb.ch ], [ %i.jk, %bb.cf ], [ 0, %bb.cg ]
  store i8 %.0.i222.i, ptr %i.jj, align 1, !tbaa !37
  %.pre75.pre = load i8, ptr %i.j, align 4
  br label %bb.ci

bb.ci:                                            ; preds = %mask_mix.exit223.i, %bb.ce
  %.pre75 = phi i8 [ %.pre75.pre, %mask_mix.exit223.i ], [ %i.k, %bb.ce ] ; 2 uses
  %i.jt = add nsw i32 %i.fn, 1                    ; 2 uses
  %i.ju = icmp sgt i32 %i.fn, -2
  %i.jv = icmp slt i32 %i.jt, %3
  %or.cond214.i = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond214.i, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.jw = sub nsw i32 255, %i.jc                  ; 2 uses
  %i.jx = load i32, ptr %i.es, align 4, !tbaa !30
  %i.jy = mul nsw i32 %i.jx, %i.jw
  %i.jz = lshr i32 %i.jy, 10
  %i.ka = mul i32 %i.jz, %i.jw
  %i.kb = lshr i32 %i.ka, 9
  %i.kc = trunc i32 %i.kb to i8
  %i.kd = shl i8 %.pre75, 6
  %sext234.i = ashr i8 %i.kd, 7
  %.4.i = xor i8 %sext234.i, %i.kc                ; 3 uses
  %i.ke = zext nneg i32 %i.jt to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ke ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !37  ; 2 uses
  %i.kh = zext i8 %.4.i to i32
  %i.ki = icmp ugt i8 %.4.i, -4
  br i1 %i.ki, label %mask_mix.exit225.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kj = icmp ult i8 %.4.i, 3
  br i1 %i.kj, label %mask_mix.exit225.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kk = zext i8 %i.kg to i32
  %i.kl = mul nuw nsw i32 %i.kk, 32897
  %i.km = mul nuw nsw i32 %i.kl, %i.kh
  %i.kn = lshr i32 %i.km, 23
  %i.ko = trunc nuw i32 %i.kn to i8
  br label %mask_mix.exit225.i

mask_mix.exit225.i:                               ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0.i224.i = phi i8 [ %i.ko, %bb.cl ], [ %i.kg, %bb.cj ], [ 0, %bb.ck ]
  store i8 %.0.i224.i, ptr %i.kf, align 1, !tbaa !37
  %.pre74 = load i8, ptr %i.j, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %mask_mix.exit225.i, %bb.ci
  %i.kp = phi i8 [ %.pre74, %mask_mix.exit225.i ], [ %.pre75, %bb.ci ]
  %i.kq = and i8 %i.kp, 2
  %.not192.i = icmp eq i8 %i.kq, 0
  br i1 %.not192.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %5 = icmp sgt i32 %i.fn, %3                     ; 2 uses
  %.not249.i = icmp slt i32 %i.fn, 0
  %brmerge.i = or i1 %5, %.not249.i
  %.mux.i = select i1 %5, i32 0, i32 2
  br i1 %brmerge.i, label %line_mask_flat.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kr = zext nneg i32 %i.fn to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.kr) #9
  br label %line_mask_flat.exit

bb.cp:                                            ; preds = %bb.cm
  %i.ks = add nsw i32 %i.fn, 2
  %spec.select215.i = tail call i32 @llvm.smin.i32(i32 %i.ks, i32 %3) ; 4 uses
  %i.kt = icmp eq i32 %spec.select215.i, 0
  br i1 %i.kt, label %line_mask_flat.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ku = icmp sgt i32 %spec.select215.i, 0
  br i1 %i.ku, label %bb.cr, label %line_mask_flat.exit

bb.cr:                                            ; preds = %bb.cq
  %i.kv = zext nneg i32 %spec.select215.i to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %i.kv
  %i.kx = sub nsw i32 %3, %spec.select215.i
  %i.ky = zext nneg i32 %i.kx to i64
  tail call void @lv_memset(ptr noundef nonnull %i.kw, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ky) #9
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
  store i16 %.sink, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.056, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.055, ptr %i.k, align 4, !tbaa !44
  tail call void @lv_point_set(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %2) #9
  store ptr @lv_draw_mask_angle, ptr %0, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !46
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
  %i.aa = trunc nuw nsw i32 %.055 to i16          ; 2 uses
  %i.ab = icmp sgt i32 %4, 180
  %i.ac = add nsw i16 %i.aa, -180
  %spec.select.i60 = select i1 %i.ab, i16 %i.ac, i16 %i.aa ; 2 uses
  %i.ad = add nuw nsw i16 %spec.select.i60, 90
  %i.ae = tail call i32 @lv_trigo_sin(i16 noundef signext %i.ad) #9
  %i.af = ashr i32 %i.ae, 5
  %i.ag = add nsw i32 %i.af, %1
  %i.ah = tail call i32 @lv_trigo_sin(i16 noundef signext %spec.select.i60) #9
  %i.ai = ashr i32 %i.ah, 5
  %i.aj = add nsw i32 %i.ai, %2
  tail call void @lv_draw_sw_mask_line_points_init(ptr noundef nonnull %i.z, i32 noundef %1, i32 noundef %2, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %.0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @lv_draw_mask_angle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 7 uses
  %i.d = sub nsw i32 %2, %i.c                     ; 4 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !48
  %.neg275 = sub i32 %i.e, %1                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 13 uses
  %i.h = icmp sgt i32 %i.g, 179                   ; 2 uses
  br i1 %i.h, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44   ; 6 uses
  %i.k = icmp slt i32 %i.j, 180
  %.not = icmp ne i32 %i.g, 0
  %or.cond.not273 = and i1 %.not, %i.k
  %.not250 = icmp ne i32 %i.j, 0
  %or.cond253.not271 = and i1 %.not250, %or.cond.not273
  %i.l = icmp sgt i32 %i.g, %i.j
  %or.cond254 = and i1 %i.l, %or.cond253.not271
  br i1 %or.cond254, label %bb.c, label %.thread264

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %2, %i.c
  br i1 %i.m, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = mul nsw i32 %i.p, %i.d
  %i.r = ashr i32 %i.q, 10
  %i.s = add nuw nsw i32 %i.d, 1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = mul nsw i32 %i.v, %i.s
  %i.x = ashr i32 %i.w, 10                        ; 4 uses
  %i.y = icmp sgt i32 %i.g, 0
  br i1 %i.y, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i32 %i.g, 91
  %i.aa = icmp slt i32 %i.x, 0
  %or.cond3 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond3, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ugt i32 %i.g, 90
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.x, i32 0)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.g, %bb.e
  %.0218 = phi i32 [ %i.x, %bb.f ], [ %i.ac, %bb.g ], [ 0, %bb.e ], [ %i.x, %bb.d ] ; 4 uses
  %i.ad = icmp sgt i32 %i.j, 0
  br i1 %i.ad, label %bb.h, label %.thread263

bb.h:                                             ; preds = %.thread
  %i.ae = icmp samesign ult i32 %i.j, 91
  %i.af = icmp slt i32 %.0218, 0
  %or.cond9 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond9, label %.thread263, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp samesign ugt i32 %i.j, 90
  br i1 %i.ag, label %bb.j, label %.thread263

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @llvm.smin.i32(i32 %.0218, i32 0)
  br label %.thread263

.thread263:                                       ; preds = %.thread, %bb.h, %bb.j, %bb.i
  %.1219 = phi i32 [ %.0218, %bb.i ], [ 0, %bb.h ], [ %i.ah, %bb.j ], [ %.0218, %.thread ] ; 2 uses
  %i.ai = sub nsw i32 %i.r, %.1219
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = add i32 %.1219, %.neg275
  %i.al = add i32 %i.ak, %i.aj
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %3) ; 4 uses
  %i.am = icmp sgt i32 %spec.select, 0
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread263
  %i.an = tail call i32 @lv_draw_mask_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %spec.select, ptr noundef nonnull %i.t) ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %spec.select to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ap) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.thread263
  %.0217 = phi i32 [ 0, %bb.l ], [ %i.an, %bb.k ], [ 1, %.thread263 ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 3 uses
  %i.aq = zext nneg i32 %spec.store.select to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq ; 2 uses
  %i.as = add nsw i32 %spec.store.select, %1
  %i.at = sub nsw i32 %3, %spec.store.select      ; 2 uses
  %i.au = tail call i32 @lv_draw_mask_line(ptr noundef %i.ar, i32 noundef %i.as, i32 noundef %2, i32 noundef %i.at, ptr noundef nonnull %i.n) ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = sext i32 %i.at to i64
  tail call void @lv_memset(ptr noundef %i.ar, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.aw) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = icmp eq i32 %.0217, %i.au
  %.0217. = select i1 %i.ax, i32 %.0217, i32 2
  br label %bb.aq

bb.p:                                             ; preds = %bb.a
  %.not270 = icmp eq i32 %i.g, 180
  br i1 %.not270, label %.thread265, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !44 ; 5 uses
  %i.ba = icmp sgt i32 %i.az, 180
  %i.bb = icmp sgt i32 %i.g, %i.az
  %or.cond256 = and i1 %i.ba, %i.bb
  br i1 %or.cond256, label %bb.r, label %.thread264.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = icmp sgt i32 %2, %i.c
  br i1 %i.bc, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !49
  %i.bg = mul nsw i32 %i.bf, %i.d
  %i.bh = ashr i32 %i.bg, 10
  %i.bi = add nsw i32 %i.d, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = ashr i32 %i.bm, 10                      ; 3 uses
  %i.bo = icmp samesign ugt i32 %i.g, 270
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = icmp samesign ult i32 %i.g, 360
  %i.bq = icmp slt i32 %i.bn, 0
  %or.cond13 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond13, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.br = icmp samesign ult i32 %i.g, 270
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 0)
  %spec.store.select33 = select i1 %i.br, i32 %i.bs, i32 %i.bn
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.0213 = phi i32 [ %spec.store.select33, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %i.bt = icmp samesign ugt i32 %i.az, 270
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = icmp samesign ult i32 %i.az, 360
  %i.bv = icmp slt i32 %.0213, 0
  %or.cond19 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond19, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bw = icmp samesign ult i32 %i.az, 270
  %i.bx = tail call i32 @llvm.smin.i32(i32 %.0213, i32 0)
  %spec.store.select34 = select i1 %i.bw, i32 %i.bx, i32 %.0213
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1214 = phi i32 [ %spec.store.select34, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.by = sub nsw i32 %i.bh, %.1214
  %i.bz = ashr i32 %i.by, 1
  %i.ca = add i32 %.1214, %.neg275
  %i.cb = add i32 %i.ca, %i.bz
  %spec.select257 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %3) ; 4 uses
  %i.cc = icmp sgt i32 %spec.select257, 0
  br i1 %i.cc, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call i32 @lv_draw_mask_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %spec.select257, ptr noundef nonnull %i.bd) ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = zext nneg i32 %spec.select257 to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.cf) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.0212 = phi i32 [ 0, %bb.aa ], [ %i.cd, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %spec.store.select24 = tail call i32 @llvm.smax.i32(i32 %spec.select257, i32 0) ; 3 uses
  %i.cg = zext nneg i32 %spec.store.select24 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ci = add nsw i32 %spec.store.select24, %1
  %i.cj = sub nsw i32 %3, %spec.store.select24    ; 2 uses
  %i.ck = tail call i32 @lv_draw_mask_line(ptr noundef %i.ch, i32 noundef %i.ci, i32 noundef %2, i32 noundef %i.cj, ptr noundef nonnull %i.bj) ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = sext i32 %i.cj to i64
  tail call void @lv_memset(ptr noundef %i.ch, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.cm) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cn = icmp eq i32 %.0212, %i.ck
  %.0212. = select i1 %i.cn, i32 %.0212, i32 2
  br label %bb.aq

.thread264:                                       ; preds = %bb.b
  %cond = icmp eq i32 %i.g, 0
  br i1 %cond, label %bb.ae, label %.thread264.thread

.thread265:                                       ; preds = %bb.p
  %i.co = icmp slt i32 %2, %i.c
  %. = select i1 %i.co, i32 1, i32 3
  br label %bb.ag

bb.ae:                                            ; preds = %.thread264
  %i.cp = icmp slt i32 %2, %i.c
  %.259 = select i1 %i.cp, i32 3, i32 1
  br label %bb.ag

.thread264.thread:                                ; preds = %bb.q, %.thread264
  %5 = icmp slt i32 %i.g, 180
  %i.cq = icmp sge i32 %2, %i.c
  %or.cond267.not278 = select i1 %i.h, i1 true, i1 %i.cq
  %.not251 = icmp slt i32 %2, %i.c
  %or.cond269 = select i1 %5, i1 true, i1 %.not251
  %or.cond = select i1 %or.cond267.not278, i1 %or.cond269, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread264.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cs = tail call i32 @lv_draw_mask_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.cr)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread264.thread, %bb.ae, %.thread265, %bb.af
  %.0210 = phi i32 [ %., %.thread265 ], [ %i.cs, %bb.af ], [ %.259, %bb.ae ], [ 3, %.thread264.thread ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !44 ; 3 uses
  switch i32 %i.cu, label %bb.aj [
    i32 180, label %bb.ah
    i32 0, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !47
  %i.cw = icmp slt i32 %2, %i.cv
  %.260 = select i1 %i.cw, i32 3, i32 1
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !47
  %i.cy = icmp slt i32 %2, %i.cx
  %.261 = select i1 %i.cy, i32 1, i32 3
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %i.cz = icmp slt i32 %i.cu, 180
  br i1 %i.cz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.da = load i32, ptr %i.b, align 4, !tbaa !47
  %i.db = icmp slt i32 %2, %i.da
  br i1 %i.db, label %bb.an, label %.thread266

bb.al:                                            ; preds = %bb.aj
  %.not274 = icmp eq i32 %i.cu, 180
  br i1 %.not274, label %.thread266, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !47
  %.not252 = icmp slt i32 %2, %i.dc
  br i1 %.not252, label %.thread266, label %bb.an

.thread266:                                       ; preds = %bb.ak, %bb.am, %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.de = tail call i32 @lv_draw_mask_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.dd)
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am, %bb.ai, %bb.ah, %.thread266
  %.0 = phi i32 [ %.260, %bb.ah ], [ %i.de, %.thread266 ], [ %.261, %bb.ai ], [ 3, %bb.am ], [ 3, %bb.ak ] ; 3 uses
  %i.df = icmp eq i32 %.0210, 0
  %i.dg = icmp eq i32 %.0, 0
  %or.cond26 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond26, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = icmp eq i32 %.0210, 3
  %i.di = icmp eq i32 %.0, 3
  %or.cond28 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond28, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dj = icmp eq i32 %.0210, 1
  %i.dk = icmp eq i32 %.0, 1
  %or.cond30 = select i1 %i.dj, i1 %i.dk, i1 false
  %.262 = select i1 %or.cond30, i32 1, i32 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %bb.r, %bb.c, %bb.ad, %bb.o
  %.3 = phi i32 [ 1, %bb.r ], [ %.0217., %bb.o ], [ 1, %bb.c ], [ %.0212., %bb.ad ], [ 0, %bb.ao ], [ 0, %bb.an ], [ %.262, %bb.ap ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_mask_radius_init(ptr nofree noundef captures(none) initializes((0, 12), (16, 36)) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @lv_area_get_width(ptr noundef %1) #9
  %i.b = tail call i32 @lv_area_get_height(ptr noundef %1) #9
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.b)
  %i.d = ashr i32 %i.c, 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d) ; 5 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <4 x i32>, ptr %1, align 4, !tbaa !51
  store <4 x i32> %i.f, ptr %i.e, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %spec.store.select, ptr %i.g, align 8, !tbaa !52
  %i.h = zext i1 %3 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  %i.l = or disjoint i8 %i.k, %i.h
  store i8 %i.l, ptr %i.i, align 4
  store ptr @lv_draw_mask_radius, ptr %0, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.m, align 8, !tbaa !54
  %i.n = icmp slt i32 %spec.select, 1
  br i1 %i.n, label %bb.b, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.a
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 664), align 8, !tbaa !55
  %i.p = icmp eq i32 %i.o, %spec.store.select
  br i1 %i.p, label %bb.c, label %.preheader72.1

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !15
  br label %circ_calc_aa4.exit

.preheader72.1:                                   ; preds = %.preheader72.preheader
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 712), align 8, !tbaa !55
  %i.s = icmp eq i32 %i.r, %spec.store.select
  br i1 %i.s, label %bb.c, label %.preheader72.2

.preheader72.2:                                   ; preds = %.preheader72.1
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 760), align 8, !tbaa !55
  %i.u = icmp eq i32 %i.t, %spec.store.select
  br i1 %i.u, label %bb.c, label %.preheader72.3

.preheader72.3:                                   ; preds = %.preheader72.2
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 808), align 8, !tbaa !55
  %i.w = icmp eq i32 %i.v, %spec.store.select
  br i1 %i.w, label %bb.c, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %.preheader72.3
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 660), align 4, !tbaa !24
  %.not91 = icmp eq i32 %i.x, 0
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 708), align 4, !tbaa !24
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  br i1 %.not91, label %.preheader71.1, label %.preheader71.1.thread

bb.c:                                             ; preds = %.preheader72.3, %.preheader72.2, %.preheader72.1, %.preheader72.preheader
  %.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader72.preheader ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader72.1 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader72.2 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %.preheader72.3 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %i.af = icmp samesign ult i32 %spec.select, 16
  %i.ag = lshr i32 %spec.store.select, 4
  %i.ah = select i1 %i.af, i32 1, i32 %i.ag
  %i.ai = add nsw i32 %i.ae, %i.ah
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 1000)
  store i32 %spec.select67, ptr %i.ad, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.lcssa, ptr %i.aj, align 8, !tbaa !15
  br label %circ_calc_aa4.exit

.preheader71.1:                                   ; preds = %.preheader71.preheader
  br i1 %i.z, label %bb.d, label %.preheader71.2

.preheader71.1.thread:                            ; preds = %.preheader71.preheader
  br i1 %i.z, label %.preheader71.2, label %.preheader71.2.thread

bb.d:                                             ; preds = %.preheader71.1
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 704), align 8, !tbaa !19
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 656), align 8, !tbaa !19
  %i.am = icmp slt i32 %i.ak, %i.al
  %spec.select68.1 = select i1 %i.am, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 624)
  br label %.preheader71.2

.preheader71.2:                                   ; preds = %.preheader71.1.thread, %bb.d, %.preheader71.1
  %.1.1 = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader71.1.thread ], [ %spec.select68.1, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader71.1 ] ; 3 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !24
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %.preheader71.3

.preheader71.2.thread:                            ; preds = %.preheader71.1.thread
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !24
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.preheader71.3.thread, label %.preheader71.3

bb.e:                                             ; preds = %.preheader71.2
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 752), align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.1.1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !19
  %i.au = icmp slt i32 %i.ar, %i.at
  %spec.select68.2 = select i1 %i.au, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), ptr %.1.1
  br label %.preheader71.3

.preheader71.3:                                   ; preds = %.preheader71.2.thread, %bb.e, %.preheader71.2
  %.1.2 = phi ptr [ null, %.preheader71.2.thread ], [ %spec.select68.2, %bb.e ], [ %.1.1, %.preheader71.2 ] ; 3 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !24
  %i.aw = icmp eq i32 %i.av, 0
  %.not66.3 = icmp eq ptr %.1.2, null             ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.g

.preheader71.3.thread:                            ; preds = %.preheader71.2.thread
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !24
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread102, label %.thread106

bb.f:                                             ; preds = %.preheader71.3
  br i1 %.not66.3, label %.thread106, label %.thread102

.thread102:                                       ; preds = %.preheader71.3.thread, %bb.f
end_hunk_0
