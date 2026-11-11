Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/core?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@b3Hash64NonZero:bb.a
  %i.cf = trunc i128 %i.ce to i64                 ; 2 uses
  %i.cg = add i64 %i.ay, 32, !nosanitize !15      ; 2 uses
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = icmp ult ptr %.0120.i, inttoptr (i64 -32 to ptr)
  %i.cj = and i1 %i.ci, %i.ch
  br i1 %i.cj, label %bb.ae, label %bb.ad, !prof !16, !nosanitize !15

bb.ad:                                            ; preds = %rapid_mum.exit48
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.ay, i64 %i.cg) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ae:                                            ; preds = %rapid_mum.exit48
  %i.ck = add i64 %i.ay, 40, !nosanitize !15      ; 2 uses
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = icmp ult ptr %.0120.i, inttoptr (i64 -40 to ptr)
  %i.cn = and i1 %i.cm, %i.cl
  br i1 %i.cn, label %rapid_mum.exit49, label %bb.af, !prof !16, !nosanitize !15

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.ay, i64 %i.ck) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit49:                                 ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %.0120.i, i64 32
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0120.i, i64 40
  %i.cr = xor i64 %i.cp, 5418857496715711651
  %i.cs = load i64, ptr %i.cq, align 1
  %i.ct = xor i64 %i.cs, %.0117.i
  %i.cu = zext i64 %i.cr to i128
  %i.cv = zext i64 %i.ct to i128
  %i.cw = mul nuw i128 %i.cv, %i.cu               ; 2 uses
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = xor i128 %i.cx, %i.cw
  %i.cz = trunc i128 %i.cy to i64                 ; 2 uses
  %i.da = add i64 %i.ay, 48, !nosanitize !15      ; 2 uses
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = icmp ult ptr %.0120.i, inttoptr (i64 -48 to ptr)
  %i.dd = and i1 %i.dc, %i.db
  br i1 %i.dd, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !15

bb.ag:                                            ; preds = %rapid_mum.exit49
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.ay, i64 %i.da) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ah:                                            ; preds = %rapid_mum.exit49
  %i.de = getelementptr inbounds nuw i8, ptr %.0120.i, i64 48
  %i.df = load i64, ptr %i.de, align 1
  br i1 %.not150.i, label %bb.ai, label %bb.aj, !prof !18, !nosanitize !15

bb.ai:                                            ; preds = %bb.ah
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 24)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.aj:                                            ; preds = %bb.ah
  %i.dg = add i64 %i.ay, 56, !nosanitize !15      ; 2 uses
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = icmp ult ptr %.0120.i, inttoptr (i64 -56 to ptr)
  %i.dj = and i1 %i.di, %i.dh
  br i1 %i.dj, label %rapid_mum.exit50, label %bb.ak, !prof !16, !nosanitize !15

bb.ak:                                            ; preds = %bb.aj
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.ay, i64 %i.dg) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit50:                                 ; preds = %bb.aj
  %i.dk = getelementptr inbounds nuw i8, ptr %.0120.i, i64 56
  %i.dl = xor i64 %i.df, 5573817676018592327
  %i.dm = load i64, ptr %i.dk, align 1
  %i.dn = xor i64 %i.dm, %.0116.i
  %i.do = zext i64 %i.dl to i128
  %i.dp = zext i64 %i.dn to i128
  %i.dq = mul nuw i128 %i.dp, %i.do               ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = xor i128 %i.dr, %i.dq
  %i.dt = trunc i128 %i.ds to i64                 ; 2 uses
  %i.du = add i64 %i.ay, 64, !nosanitize !15      ; 2 uses
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = icmp ult ptr %.0120.i, inttoptr (i64 -64 to ptr)
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %bb.am, label %bb.al, !prof !16, !nosanitize !15

bb.al:                                            ; preds = %rapid_mum.exit50
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.ay, i64 %i.du) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.am:                                            ; preds = %rapid_mum.exit50
  %i.dy = getelementptr inbounds nuw i8, ptr %.0120.i, i64 64
  %i.dz = load i64, ptr %i.dy, align 1
  br i1 %.not151.i, label %bb.an, label %bb.ao, !prof !18, !nosanitize !15

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 32)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ao:                                            ; preds = %bb.am
  %i.ea = add i64 %i.ay, 72, !nosanitize !15      ; 2 uses
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = icmp ult ptr %.0120.i, inttoptr (i64 -72 to ptr)
  %i.ed = and i1 %i.ec, %i.eb
  br i1 %i.ed, label %rapid_mum.exit51, label %bb.ap, !prof !16, !nosanitize !15

bb.ap:                                            ; preds = %bb.ao
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.ay, i64 %i.ea) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit51:                                 ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %.0120.i, i64 72
  %i.ef = xor i64 %i.dz, -6884282663029611473
  %i.eg = load i64, ptr %i.ee, align 1
  %i.eh = xor i64 %i.eg, %.0115.i
  %i.ei = zext i64 %i.ef to i128
  %i.ej = zext i64 %i.eh to i128
  %i.ek = mul nuw i128 %i.ej, %i.ei               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64                 ; 2 uses
  %i.eo = add i64 %i.ay, 80, !nosanitize !15      ; 2 uses
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = icmp ult ptr %.0120.i, inttoptr (i64 -80 to ptr)
  %i.er = and i1 %i.eq, %i.ep
  br i1 %i.er, label %bb.ar, label %bb.aq, !prof !16, !nosanitize !15

bb.aq:                                            ; preds = %rapid_mum.exit51
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.ay, i64 %i.eo) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ar:                                            ; preds = %rapid_mum.exit51
  %i.es = getelementptr inbounds nuw i8, ptr %.0120.i, i64 80
  %i.et = load i64, ptr %i.es, align 1
  br i1 %.not152.i, label %bb.as, label %bb.at, !prof !18, !nosanitize !15

bb.as:                                            ; preds = %bb.ar
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @39, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 40)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.at:                                            ; preds = %bb.ar
  %i.eu = add i64 %i.ay, 88, !nosanitize !15      ; 2 uses
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = icmp ult ptr %.0120.i, inttoptr (i64 -88 to ptr)
  %i.ex = and i1 %i.ew, %i.ev
  br i1 %i.ex, label %rapid_mum.exit52, label %bb.au, !prof !16, !nosanitize !15

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @40, i64 %i.ay, i64 %i.eu) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit52:                                 ; preds = %bb.at
  %i.ey = getelementptr inbounds nuw i8, ptr %.0120.i, i64 88
  %i.ez = xor i64 %i.et, -1800455987208640293
  %i.fa = load i64, ptr %i.ey, align 1
  %i.fb = xor i64 %i.fa, %.0114.i
  %i.fc = zext i64 %i.ez to i128
  %i.fd = zext i64 %i.fb to i128
  %i.fe = mul nuw i128 %i.fd, %i.fc               ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = xor i128 %i.ff, %i.fe
  %i.fh = trunc i128 %i.fg to i64                 ; 2 uses
  %i.fi = add i64 %i.ay, 96, !nosanitize !15      ; 2 uses
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = icmp ult ptr %.0120.i, inttoptr (i64 -96 to ptr)
  %i.fl = and i1 %i.fk, %i.fj
  br i1 %i.fl, label %bb.aw, label %bb.av, !prof !16, !nosanitize !15

bb.av:                                            ; preds = %rapid_mum.exit52
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @41, i64 %i.ay, i64 %i.fi) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.aw:                                            ; preds = %rapid_mum.exit52
  %i.fm = getelementptr inbounds nuw i8, ptr %.0120.i, i64 96
  %i.fn = load i64, ptr %i.fm, align 1
  br i1 %.not153.i, label %bb.ax, label %bb.ay, !prof !18, !nosanitize !15

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @42, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 48)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ay:                                            ; preds = %bb.aw
  %i.fo = add i64 %i.ay, 104, !nosanitize !15     ; 2 uses
  %i.fp = icmp ne i64 %i.fo, 0
  %i.fq = icmp ult ptr %.0120.i, inttoptr (i64 -104 to ptr)
  %i.fr = and i1 %i.fq, %i.fp
  br i1 %i.fr, label %rapid_mum.exit53, label %bb.az, !prof !16, !nosanitize !15

bb.az:                                            ; preds = %bb.ay
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.ay, i64 %i.fo) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit53:                                 ; preds = %bb.ay
  %i.fs = add i64 %i.ay, 112, !nosanitize !15     ; 2 uses
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = icmp ult ptr %.0120.i, inttoptr (i64 -112 to ptr)
  %i.fv = and i1 %i.fu, %i.ft
  br i1 %i.fv, label %bb.bb, label %bb.ba, !prof !16, !nosanitize !15

bb.ba:                                            ; preds = %rapid_mum.exit53
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @44, i64 %i.ay, i64 %i.fs) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.bb:                                            ; preds = %rapid_mum.exit53
  %i.fw = getelementptr inbounds nuw i8, ptr %.0120.i, i64 112 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0120.i, i64 104
  %i.fy = load i64, ptr %i.fx, align 1
  %i.fz = xor i64 %i.fy, %.0.i
  %i.ga = zext i64 %i.fz to i128
  %i.gb = xor i64 %i.fn, -8003715239535429492
  %i.gc = zext i64 %i.gb to i128
  %i.gd = mul nuw i128 %i.ga, %i.gc               ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = xor i128 %i.ge, %i.gd
  %i.gg = trunc i128 %i.gf to i64                 ; 2 uses
  %i.gh = add nsw i64 %.0119.i, -112              ; 4 uses
  %i.gi = icmp ugt i64 %i.gh, 112
  br i1 %i.gi, label %bb.x, label %bb.bc, !llvm.loop !35

bb.bc:                                            ; preds = %bb.bb
  %i.gj = xor i64 %i.cf, %i.bl
  %i.gk = xor i64 %i.gj, %i.cz
  %i.gl = xor i64 %i.gk, %i.dt
  %i.gm = xor i64 %i.gl, %i.en
  %i.gn = xor i64 %i.gm, %i.fh
  %i.go = xor i64 %i.gn, %i.gg                    ; 2 uses
  %i.gp = icmp samesign ugt i64 %.0119.i, 128
  br i1 %i.gp, label %rapid_read64.exit35, label %bb.ca

bb.bd:                                            ; preds = %bb.w
  %.not.i34 = icmp eq ptr %0, null, !nosanitize !15
  br i1 %.not.i34, label %bb.be, label %rapid_read64.exit35, !prof !40, !nosanitize !15

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @60) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_read64.exit35:                              ; preds = %bb.bc, %bb.bd
  %.1123.i5870 = phi i64 [ 4766890152743124950, %bb.bd ], [ %i.go, %bb.bc ]
  %.1121.i6069 = phi ptr [ %0, %bb.bd ], [ %i.fw, %bb.bc ]
  %.1.i6268 = phi i64 [ %i.b, %bb.bd ], [ %i.gh, %bb.bc ] ; 11 uses
  %.1121.i6069.fr = freeze ptr %.1121.i6069       ; 29 uses
  %i.gq = ptrtoint ptr %.1121.i6069.fr to i64, !nosanitize !15 ; 23 uses
  %i.gr = add i64 %i.gq, -1
  %or.cond162.i = icmp ult i64 %i.gr, -9
  br i1 %or.cond162.i, label %rapid_mum.exit41, label %bb.bf, !prof !38

bb.bf:                                            ; preds = %rapid_read64.exit35
  %i.gs = add nsw i64 %i.gq, 8, !nosanitize !15
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @45, i64 %i.gq, i64 %i.gs) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit41:                                 ; preds = %rapid_read64.exit35
  %i.gt = load i64, ptr %.1121.i6069.fr, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 8
  %i.gv = xor i64 %i.gt, 5418857496715711651
  %i.gw = load i64, ptr %i.gu, align 1
  %i.gx = xor i64 %i.gw, %.1123.i5870
  %i.gy = zext i64 %i.gv to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i6268, 32
  br i1 %i.he, label %bb.bg, label %bb.ca

bb.bg:                                            ; preds = %rapid_mum.exit41
  %i.hf = add i64 %i.gq, 16, !nosanitize !15      ; 2 uses
  %i.hg = icmp ne i64 %i.hf, 0
  %i.hh = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -16 to ptr)
  %i.hi = and i1 %i.hh, %i.hg
  br i1 %i.hi, label %bb.bi, label %bb.bh, !prof !16, !nosanitize !15

bb.bh:                                            ; preds = %bb.bg
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @46, i64 %i.gq, i64 %i.hf) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.bi:                                            ; preds = %bb.bg
  %i.hj = add i64 %i.gq, 24, !nosanitize !15      ; 2 uses
  %i.hk = icmp ne i64 %i.hj, 0
  %i.hl = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -24 to ptr)
  %i.hm = and i1 %i.hl, %i.hk
  br i1 %i.hm, label %rapid_mum.exit42, label %bb.bj, !prof !16, !nosanitize !15

bb.bj:                                            ; preds = %bb.bi
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @47, i64 %i.gq, i64 %i.hj) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit42:                                 ; preds = %bb.bi
  %i.hn = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 16
  %i.ho = load i64, ptr %i.hn, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 24
  %i.hq = xor i64 %i.ho, 5418857496715711651
  %i.hr = load i64, ptr %i.hp, align 1
  %i.hs = xor i64 %i.hr, %i.hd
  %i.ht = zext i64 %i.hq to i128
  %i.hu = zext i64 %i.hs to i128
  %i.hv = mul nuw i128 %i.hu, %i.ht               ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = xor i128 %i.hw, %i.hv
  %i.hy = trunc i128 %i.hx to i64                 ; 2 uses
  %i.hz = icmp samesign ugt i64 %.1.i6268, 48
  br i1 %i.hz, label %bb.bk, label %bb.ca

bb.bk:                                            ; preds = %rapid_mum.exit42
  %i.ia = add i64 %i.gq, 32, !nosanitize !15      ; 2 uses
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -32 to ptr)
  %i.id = and i1 %i.ic, %i.ib
  br i1 %i.id, label %bb.bm, label %bb.bl, !prof !16, !nosanitize !15

bb.bl:                                            ; preds = %bb.bk
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @48, i64 %i.gq, i64 %i.ia) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.bm:                                            ; preds = %bb.bk
  %i.ie = add i64 %i.gq, 40, !nosanitize !15      ; 2 uses
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -40 to ptr)
  %i.ih = and i1 %i.ig, %i.if
  br i1 %i.ih, label %rapid_mum.exit43, label %bb.bn, !prof !16, !nosanitize !15

bb.bn:                                            ; preds = %bb.bm
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.gq, i64 %i.ie) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit43:                                 ; preds = %bb.bm
  %i.ii = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 32
  %i.ij = load i64, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 40
  %i.il = xor i64 %i.ij, -8378864009470890807
  %i.im = load i64, ptr %i.ik, align 1
  %i.in = xor i64 %i.im, %i.hy
  %i.io = zext i64 %i.il to i128
  %i.ip = zext i64 %i.in to i128
  %i.iq = mul nuw i128 %i.ip, %i.io               ; 2 uses
  %i.ir = lshr i128 %i.iq, 64
  %i.is = xor i128 %i.ir, %i.iq
  %i.it = trunc i128 %i.is to i64                 ; 2 uses
  %i.iu = icmp samesign ugt i64 %.1.i6268, 64
  br i1 %i.iu, label %bb.bo, label %bb.ca

bb.bo:                                            ; preds = %rapid_mum.exit43
  %i.iv = add i64 %i.gq, 48, !nosanitize !15      ; 2 uses
  %i.iw = icmp ne i64 %i.iv, 0
  %i.ix = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -48 to ptr)
  %i.iy = and i1 %i.ix, %i.iw
  br i1 %i.iy, label %bb.bq, label %bb.bp, !prof !16, !nosanitize !15

bb.bp:                                            ; preds = %bb.bo
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @50, i64 %i.gq, i64 %i.iv) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.bq:                                            ; preds = %bb.bo
  %i.iz = add i64 %i.gq, 56, !nosanitize !15      ; 2 uses
  %i.ja = icmp ne i64 %i.iz, 0
  %i.jb = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -56 to ptr)
  %i.jc = and i1 %i.jb, %i.ja
  br i1 %i.jc, label %rapid_mum.exit44, label %bb.br, !prof !16, !nosanitize !15

bb.br:                                            ; preds = %bb.bq
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @51, i64 %i.gq, i64 %i.iz) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit44:                                 ; preds = %bb.bq
  %i.jd = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 48
  %i.je = load i64, ptr %i.jd, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 56
  %i.jg = xor i64 %i.je, -8378864009470890807
  %i.jh = load i64, ptr %i.jf, align 1
  %i.ji = xor i64 %i.jh, %i.it
  %i.jj = zext i64 %i.jg to i128
  %i.jk = zext i64 %i.ji to i128
  %i.jl = mul nuw i128 %i.jk, %i.jj               ; 2 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = xor i128 %i.jm, %i.jl
  %i.jo = trunc i128 %i.jn to i64                 ; 2 uses
  %i.jp = icmp samesign ugt i64 %.1.i6268, 80
  br i1 %i.jp, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %rapid_mum.exit44
  %i.jq = add i64 %i.gq, 64, !nosanitize !15      ; 2 uses
  %i.jr = icmp ne i64 %i.jq, 0
  %i.js = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -64 to ptr)
  %i.jt = and i1 %i.js, %i.jr
  br i1 %i.jt, label %bb.bu, label %bb.bt, !prof !16, !nosanitize !15

bb.bt:                                            ; preds = %bb.bs
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.gq, i64 %i.jq) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.bu:                                            ; preds = %bb.bs
  %i.ju = add i64 %i.gq, 72, !nosanitize !15      ; 2 uses
  %i.jv = icmp ne i64 %i.ju, 0
  %i.jw = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -72 to ptr)
  %i.jx = and i1 %i.jw, %i.jv
  br i1 %i.jx, label %rapid_mum.exit45, label %bb.bv, !prof !16, !nosanitize !15

bb.bv:                                            ; preds = %bb.bu
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @53, i64 %i.gq, i64 %i.ju) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit45:                                 ; preds = %bb.bu
  %i.jy = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 64
  %i.jz = load i64, ptr %i.jy, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 72
  %i.kb = xor i64 %i.jz, 5418857496715711651
  %i.kc = load i64, ptr %i.ka, align 1
  %i.kd = xor i64 %i.kc, %i.jo
  %i.ke = zext i64 %i.kb to i128
  %i.kf = zext i64 %i.kd to i128
  %i.kg = mul nuw i128 %i.kf, %i.ke               ; 2 uses
  %i.kh = lshr i128 %i.kg, 64
  %i.ki = xor i128 %i.kh, %i.kg
  %i.kj = trunc i128 %i.ki to i64                 ; 2 uses
  %i.kk = icmp samesign ugt i64 %.1.i6268, 96
  br i1 %i.kk, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %rapid_mum.exit45
  %i.kl = add i64 %i.gq, 80, !nosanitize !15      ; 2 uses
  %i.km = icmp ne i64 %i.kl, 0
  %i.kn = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -80 to ptr)
  %i.ko = and i1 %i.kn, %i.km
  br i1 %i.ko, label %bb.by, label %bb.bx, !prof !16, !nosanitize !15

bb.bx:                                            ; preds = %bb.bw
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @54, i64 %i.gq, i64 %i.kl) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.by:                                            ; preds = %bb.bw
  %i.kp = add i64 %i.gq, 88, !nosanitize !15      ; 2 uses
  %i.kq = icmp ne i64 %i.kp, 0
  %i.kr = icmp ult ptr %.1121.i6069.fr, inttoptr (i64 -88 to ptr)
  %i.ks = and i1 %i.kr, %i.kq
  br i1 %i.ks, label %rapid_mum.exit46, label %bb.bz, !prof !16, !nosanitize !15

bb.bz:                                            ; preds = %bb.by
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.gq, i64 %i.kp) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit46:                                 ; preds = %bb.by
  %i.kt = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 80
  %i.ku = load i64, ptr %i.kt, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.1121.i6069.fr, i64 88
  %i.kw = xor i64 %i.ku, -8378864009470890807
  %i.kx = load i64, ptr %i.kv, align 1
  %i.ky = xor i64 %i.kx, %i.kj
  %i.kz = zext i64 %i.kw to i128
  %i.la = zext i64 %i.ky to i128
  %i.lb = mul nuw i128 %i.la, %i.kz               ; 2 uses
  %i.lc = lshr i128 %i.lb, 64
  %i.ld = xor i128 %i.lc, %i.lb
  %i.le = trunc i128 %i.ld to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bc, %rapid_mum.exit46, %rapid_mum.exit45, %rapid_mum.exit44, %rapid_mum.exit43, %rapid_mum.exit42, %rapid_mum.exit41
  %.pre-phi.a = phi i64 [ %.1.i6268, %rapid_mum.exit46 ], [ %.1.i6268, %rapid_mum.exit45 ], [ %.1.i6268, %rapid_mum.exit44 ], [ %.1.i6268, %rapid_mum.exit43 ], [ %.1.i6268, %rapid_mum.exit42 ], [ %.1.i6268, %rapid_mum.exit41 ], [ %i.gh, %bb.bc ] ; 4 uses
  %.1121.i59 = phi ptr [ %.1121.i6069.fr, %rapid_mum.exit46 ], [ %.1121.i6069.fr, %rapid_mum.exit45 ], [ %.1121.i6069.fr, %rapid_mum.exit44 ], [ %.1121.i6069.fr, %rapid_mum.exit43 ], [ %.1121.i6069.fr, %rapid_mum.exit42 ], [ %.1121.i6069.fr, %rapid_mum.exit41 ], [ %i.fw, %bb.bc ] ; 2 uses
  %.2124.i = phi i64 [ %i.le, %rapid_mum.exit46 ], [ %i.kj, %rapid_mum.exit45 ], [ %i.jo, %rapid_mum.exit44 ], [ %i.it, %rapid_mum.exit43 ], [ %i.hy, %rapid_mum.exit42 ], [ %i.hd, %rapid_mum.exit41 ], [ %i.go, %bb.bc ]
  %.pre-phi = ptrtoint ptr %.1121.i59 to i64      ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.1121.i59, i64 %.pre-phi.a ; 5 uses
  %i.lg = add i64 %.pre-phi.a, %.pre-phi, !nosanitize !15 ; 3 uses
  %i.lh = icmp ne i64 %i.lg, 0
  %i.li = icmp uge i64 %i.lg, %.pre-phi, !nosanitize !15
  %i.lj = and i1 %i.lh, %i.li, !nosanitize !15
  br i1 %i.lj, label %bb.cc, label %bb.cb, !prof !16, !nosanitize !15

bb.cb:                                            ; preds = %bb.ca
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @56, i64 %.pre-phi, i64 %i.lg) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.cc:                                            ; preds = %bb.ca
  %i.lk = ptrtoint ptr %i.lf to i64, !nosanitize !15 ; 4 uses
  %i.ll = add i64 %i.lk, -16, !nosanitize !15     ; 2 uses
  %i.lm = icmp ne i64 %i.ll, 0
  %i.ln = icmp ugt ptr %i.lf, inttoptr (i64 15 to ptr)
  %i.lo = and i1 %i.ln, %i.lm, !nosanitize !15
  br i1 %i.lo, label %bb.ce, label %bb.cd, !prof !16, !nosanitize !15

bb.cd:                                            ; preds = %bb.cc
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.lk, i64 %i.ll) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ce:                                            ; preds = %bb.cc
  %i.lp = add i64 %i.lk, -8, !nosanitize !15      ; 2 uses
  %i.lq = icmp ne i64 %i.lp, 0
  %i.lr = icmp ugt ptr %i.lf, inttoptr (i64 7 to ptr)
  %i.ls = and i1 %i.lr, %i.lq, !nosanitize !15
  br i1 %i.ls, label %bb.cg, label %bb.cf, !prof !16, !nosanitize !15

bb.cf:                                            ; preds = %bb.ce
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @58, i64 %i.lk, i64 %i.lp) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.cg:                                            ; preds = %bb.ce
  %i.lt = getelementptr inbounds i8, ptr %i.lf, i64 -16
  %i.lu = load i64, ptr %i.lt, align 1
  %i.lv = xor i64 %i.lu, %.pre-phi.a
  %i.lw = getelementptr inbounds i8, ptr %i.lf, i64 -8
  %i.lx = load i64, ptr %i.lw, align 1
  br label %rapid_mum.exit54

rapid_mum.exit54:                                 ; preds = %bb.cg, %bb.v, %rapid_read32.exit, %rapid_read64.exit
  %.0610 = phi i64 [ %i.u, %rapid_read64.exit ], [ %i.ae, %rapid_read32.exit ], [ %i.au, %bb.v ], [ %i.lv, %bb.cg ]
  %.0609 = phi i64 [ %i.v, %rapid_read64.exit ], [ %i.ag, %rapid_read32.exit ], [ %i.aw, %bb.v ], [ %i.lx, %bb.cg ]
  %.3.i = phi i64 [ %i.e, %rapid_read64.exit ], [ %i.e, %rapid_read32.exit ], [ 4766890152743124950, %bb.v ], [ %.2124.i, %bb.cg ]
  %.2.i = phi i64 [ %i.b, %rapid_read64.exit ], [ %i.b, %rapid_read32.exit ], [ %i.b, %bb.v ], [ %.pre-phi.a, %bb.cg ]
  %.not158.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 56), ptrtoint (ptr @rapid_secret to i64), !nosanitize !15
  br i1 %.not158.i, label %bb.ch, label %rapidhash_internal.exit, !prof !18, !nosanitize !15

bb.ch:                                            ; preds = %rapid_mum.exit54
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @59, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 56)) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapidhash_internal.exit:                          ; preds = %rapid_mum.exit54
  %i.ly = xor i64 %.0609, %.3.i
  %i.lz = zext i64 %i.ly to i128
  %i.ma = xor i64 %.0610, -8378864009470890807
  %i.mb = zext i64 %i.ma to i128
  %i.mc = mul nuw i128 %i.lz, %i.mb               ; 2 uses
  %i.md = lshr i128 %i.mc, 64
  %i.me = trunc nuw i128 %i.md to i64
  %i.mf = trunc i128 %i.mc to i64
  %i.mg = xor i64 %i.mf, -6148914691236517206
  %i.mh = xor i64 %.2.i, %i.me
  %i.mi = xor i64 %i.mh, -8378864009470890807
  %i.mj = zext i64 %i.mg to i128
  %i.mk = zext i64 %i.mi to i128
  %i.ml = mul nuw i128 %i.mk, %i.mj               ; 2 uses
  %i.mm = lshr i128 %i.ml, 64
  %i.mn = xor i128 %i.mm, %i.ml
  %i.mo = trunc i128 %i.mn to i64
  %i.mp = tail call i64 @llvm.umax.i64(i64 %i.mo, i64 1)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.a, %rapidhash_internal.exit
  %.0 = phi i64 [ %i.mp, %rapidhash_internal.exit ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i32 -1056584962, i32 2049115118}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i32 -1056584962, i32 -41444509}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{}
!16 = !{!"branch_weights", i32 1048575, i32 1}
!17 = !{i32 -1056584962, i32 1945911726}
!18 = !{!"branch_weights", i32 1, i32 1048575}
!19 = !{ptr @b3Alloc}
!20 = !{!"branch_weights", i32 0, i32 -2147483648}
!21 = !{!5, !5, i64 0}
!22 = !{i32 -1056584962, i32 -1146137667}
!23 = !{i32 -1056584962, i32 -1105728530}
!24 = !{i32 -1056584962, i32 -1840228982}
!25 = !{i32 -1056584962, i32 -1879009599}
!26 = !{i32 -1056584962, i32 104522247}
!27 = !{i32 -1056584962, i32 1086594427}
!28 = !{i32 -1056584962, i32 -548898467}
!29 = !{i32 -1056584962, i32 -1700414575}
!30 = !{i32 -1056584962, i32 576859048}
!31 = !{i32 -1056584962, i32 890849891}
!32 = !{ptr @b3Free}
!33 = !{i32 -1056584962, i32 901845932}
!34 = !{i32 -1056584962, i32 -1082700435}
!35 = distinct !{!35, !39}
!36 = !{i32 -1056584962, i32 113885282}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!"branch_weights", i32 1048575, i32 1048575}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"branch_weights", i32 2078, i32 2147481570}
end_hunk_0
