Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mprintf?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@formatf:bb.a
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = load i64, ptr %i.e, align 8             ; 2 uses
  %i.be = icmp ne i64 %i.bd, 0
  %or.cond.i.i.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.i.i.i, label %dollarstring.exit.i.i, label %dollarstring.exit.thread.i.i

dollarstring.exit.thread.i.i:                     ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %parse_flags.exit.thread.i

dollarstring.exit.i.i:                            ; preds = %bb.t
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !18
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !18
  %i.bg = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bi = icmp slt i32 %i.bg, 1
  br i1 %i.bi, label %parse_flags.exit.thread.i, label %bb.x

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.bj = or i32 %.044.i.i, 32768
  %i.bk = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.bl = icmp eq i8 %i.bk, 45                    ; 2 uses
  br i1 %i.bl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %.in.i.sroa.speculated.i, i64 2
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bn = call i32 @curlx_str_number(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 2147483647) #11
  %.not59.i.i = icmp eq i32 %i.bn, 0
  %i.bo = load i64, ptr %i.g, align 8
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = sub nsw i32 0, %i.bp
  %spec.select.i.i = select i1 %i.bl, i32 %i.bq, i32 %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br i1 %.not59.i.i, label %bb.x, label %parse_flags.exit.thread.i

bb.x:                                             ; preds = %bb.w, %dollarstring.exit.i.i, %bb.r
  %.145.i.i = phi i32 [ %i.ay, %dollarstring.exit.i.i ], [ %i.bj, %bb.w ], [ %i.ay, %bb.r ] ; 2 uses
  %.3.i.i = phi i32 [ %i.bh, %dollarstring.exit.i.i ], [ %spec.select.i.i, %bb.w ], [ -1, %bb.r ]
  %i.br = and i32 %.145.i.i, 98304
  %i.bs = icmp eq i32 %i.br, 98304
  br i1 %i.bs, label %parse_flags.exit.thread.i, label %bb.al

bb.y:                                             ; preds = %bb.l
  %i.bt = or i32 %.044.i.i, 16
  br label %bb.al

bb.z:                                             ; preds = %bb.l
  %i.bu = and i32 %.044.i.i, 32
  %.not58.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not58.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = or i32 %.044.i.i, 64
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.bw = or disjoint i32 %.044.i.i, 32
  br label %bb.al

bb.ac:                                            ; preds = %bb.l
  %i.bx = or i32 %.044.i.i, 128
  br label %bb.al

bb.ad:                                            ; preds = %bb.l
  %i.by = or i32 %.044.i.i, 64
  br label %bb.al

bb.ae:                                            ; preds = %bb.l
  %i.bz = or i32 %.044.i.i, 32
  br label %bb.al

bb.af:                                            ; preds = %bb.l
  %i.ca = or i32 %.044.i.i, 32
  br label %bb.al

bb.ag:                                            ; preds = %bb.l
  %i.cb = shl i32 %.044.i.i, 6
  %i.cc = and i32 %i.cb, 256
  %i.cd = xor i32 %i.cc, 256
  %spec.select60.i.i = or i32 %i.cd, %.044.i.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %.246.i.i = phi i32 [ %spec.select60.i.i, %bb.ag ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ], [ %.044.i.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.ce = or i32 %.246.i.i, 8192
  store ptr %.in.i.sroa.speculated.i, ptr %i.f, align 8, !tbaa !18
  %i.cf = call i32 @curlx_str_number(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, i64 noundef 2147483647) #11
  %.not57.i.i = icmp eq i32 %i.cf, 0
  %i.cg = load i64, ptr %i.h, align 8
  %i.ch = trunc i64 %i.cg to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br i1 %.not57.i.i, label %bb.al, label %parse_flags.exit.thread.i

bb.ai:                                            ; preds = %bb.l
  %i.ci = or i32 %.044.i.i, 16384                 ; 2 uses
  br i1 %i.ao, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.cj = call i32 @curlx_str_number(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 128) #11
  %.not.i61.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i61.i.i, label %bb.ak, label %dollarstring.exit64.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ck = call i32 @curlx_str_single(ptr noundef nonnull %i.b, i8 noundef signext 36) #11
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %or.cond.i63.i.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond.i63.i.i, label %dollarstring.exit64.i.i, label %dollarstring.exit64.thread.i.i

dollarstring.exit64.thread.i.i:                   ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %parse_flags.exit.thread.i

dollarstring.exit64.i.i:                          ; preds = %bb.ak
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.co, ptr %i.f, align 8, !tbaa !18
  %i.cp = trunc i64 %i.cm to i32                  ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cr = icmp slt i32 %i.cp, 1
  br i1 %i.cr, label %parse_flags.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %dollarstring.exit64.i.i, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.p, %bb.o, %bb.n, %bb.m
  %.347.i.i = phi i32 [ %i.ci, %bb.ai ], [ %i.ar, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.av, %bb.p ], [ %.145.i.i, %bb.x ], [ %i.bt, %bb.y ], [ %i.bv, %bb.aa ], [ %i.bw, %bb.ab ], [ %i.bx, %bb.ac ], [ %i.by, %bb.ad ], [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ce, %bb.ah ], [ %i.ci, %dollarstring.exit64.i.i ]
  %.243.i.i = phi i32 [ -1, %bb.ai ], [ %.041.i.i, %bb.m ], [ %.041.i.i, %bb.n ], [ %.041.i.i, %bb.o ], [ %.041.i.i, %bb.p ], [ %.041.i.i, %bb.x ], [ %.041.i.i, %bb.y ], [ %.041.i.i, %bb.aa ], [ %.041.i.i, %bb.ab ], [ %.041.i.i, %bb.ac ], [ %.041.i.i, %bb.ad ], [ %.041.i.i, %bb.ae ], [ %.041.i.i, %bb.af ], [ %i.ch, %bb.ah ], [ %i.cq, %dollarstring.exit64.i.i ]
  %.4.i.i = phi i32 [ %.039.i.i, %bb.ai ], [ %.039.i.i, %bb.m ], [ %.039.i.i, %bb.n ], [ %.039.i.i, %bb.o ], [ %.039.i.i, %bb.p ], [ %.3.i.i, %bb.x ], [ %.039.i.i, %bb.y ], [ %.039.i.i, %bb.aa ], [ %.039.i.i, %bb.ab ], [ %.039.i.i, %bb.ac ], [ %.039.i.i, %bb.ad ], [ %.039.i.i, %bb.ae ], [ %.039.i.i, %bb.af ], [ %.039.i.i, %bb.ah ], [ %.039.i.i, %dollarstring.exit64.i.i ]
  %.in.i.sroa.speculate.load.183.i = load ptr, ptr %i.f, align 8, !tbaa !18
  br label %bb.l

parse_flags.exit.thread.i:                        ; preds = %dollarstring.exit64.i.i, %bb.ah, %bb.x, %bb.w, %dollarstring.exit.i.i, %dollarstring.exit64.thread.i.i, %dollarstring.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %parsefmt.exit.thread

bb.am:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.cs = load i8, ptr %.in.i.sroa.speculated.i, align 1, !tbaa !15
  switch i8 %i.cs, label %parse_conversion.exit.i [
    i8 83, label %bb.an
    i8 115, label %.loopexit.i.loopexit1136
    i8 110, label %.loopexit.i.loopexit
    i8 112, label %.loopexit.i.loopexit644
    i8 100, label %bb.ao
    i8 105, label %bb.ao
    i8 117, label %bb.aq
    i8 111, label %bb.ar
    i8 120, label %bb.as
    i8 88, label %bb.at
    i8 99, label %bb.au
    i8 102, label %.loopexit.i.loopexit883
    i8 101, label %bb.av
    i8 69, label %bb.aw
    i8 103, label %bb.ax
    i8 71, label %bb.ay
  ], !llvm.loop !30

bb.an:                                            ; preds = %bb.am
  %i.ct = ptrtoint ptr %i.o to i64
  %i.cu = ptrtoint ptr %.092.i.ph to i64
  %i.cv = xor i64 %i.cu, -1
  %i.cw = add i64 %i.cv, %i.ct
  %i.cx = or i32 %.044.i.i, 8
  br label %.loopexit.i

bb.ao:                                            ; preds = %bb.am, %bb.am
  %i.cy = ptrtoint ptr %i.o to i64
  %i.cz = ptrtoint ptr %.092.i.ph to i64
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = and i32 %.044.i.i, 64
  %.not35.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not35.i.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.dd = and i32 %.044.i.i, 32
  %.not36.i.i = icmp eq i32 %i.dd, 0
  %..i.i = select i1 %.not36.i.i, i32 3, i32 4
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.am
  %i.de = ptrtoint ptr %i.o to i64
  %i.df = ptrtoint ptr %.092.i.ph to i64
  %i.dg = xor i64 %i.df, -1
  %i.dh = add i64 %i.dg, %i.de
  %i.di = and i32 %.044.i.i, 64
  %.not33.i.i = icmp eq i32 %i.di, 0
  %7 = and i32 %.044.i.i, 32
  %.not34.i.i = icmp eq i32 %7, 0
  %.37.i.i = select i1 %.not34.i.i, i32 6, i32 7
  %.0.i165.i = select i1 %.not33.i.i, i32 %.37.i.i, i32 8
  %i.dj = or i32 %.044.i.i, 512
  br label %.loopexit.i

bb.ar:                                            ; preds = %bb.am
  %i.dk = ptrtoint ptr %i.o to i64
  %i.dl = ptrtoint ptr %.092.i.ph to i64
  %i.dm = xor i64 %i.dl, -1
  %i.dn = add i64 %i.dm, %i.dk
  %i.do = and i32 %.044.i.i, 64
  %.not31.i.i = icmp eq i32 %i.do, 0
  %8 = and i32 %.044.i.i, 32
  %.not32.i.i = icmp eq i32 %8, 0
  %.38.i.i = select i1 %.not32.i.i, i32 6, i32 7
  %.1.i.i = select i1 %.not31.i.i, i32 %.38.i.i, i32 8
  %i.dp = or i32 %.044.i.i, 1536
  br label %.loopexit.i

bb.as:                                            ; preds = %bb.am
  %i.dq = ptrtoint ptr %i.o to i64
  %i.dr = ptrtoint ptr %.092.i.ph to i64
  %i.ds = xor i64 %i.dr, -1
  %i.dt = add i64 %i.ds, %i.dq
  %i.du = and i32 %.044.i.i, 64
  %.not29.i.i = icmp eq i32 %i.du, 0
  %9 = and i32 %.044.i.i, 32
  %.not30.i.i = icmp eq i32 %9, 0
  %.39.i.i = select i1 %.not30.i.i, i32 6, i32 7
  %.2.i.i = select i1 %.not29.i.i, i32 %.39.i.i, i32 8
  %i.dv = or i32 %.044.i.i, 2560
  br label %.loopexit.i

bb.at:                                            ; preds = %bb.am
  %i.dw = ptrtoint ptr %i.o to i64
  %i.dx = ptrtoint ptr %.092.i.ph to i64
  %i.dy = xor i64 %i.dx, -1
  %i.dz = add i64 %i.dy, %i.dw
  %i.ea = and i32 %.044.i.i, 64
  %.not.i163.i = icmp eq i32 %i.ea, 0
  %10 = and i32 %.044.i.i, 32
  %.not28.i.i = icmp eq i32 %10, 0
  %.40.i.i = select i1 %.not28.i.i, i32 6, i32 7
  %.3.i164.i = select i1 %.not.i163.i, i32 %.40.i.i, i32 8
  %i.eb = or i32 %.044.i.i, 6656
  br label %.loopexit.i

bb.au:                                            ; preds = %bb.am
  %i.ec = ptrtoint ptr %i.o to i64
  %i.ed = ptrtoint ptr %.092.i.ph to i64
  %i.ee = xor i64 %i.ed, -1
  %i.ef = add i64 %i.ee, %i.ec
  %i.eg = or i32 %.044.i.i, 131072
  br label %.loopexit.i

bb.av:                                            ; preds = %bb.am
  %i.eh = ptrtoint ptr %i.o to i64
  %i.ei = ptrtoint ptr %.092.i.ph to i64
  %i.ej = xor i64 %i.ei, -1
  %i.ek = add i64 %i.ej, %i.eh
  %i.el = or i32 %.044.i.i, 262144
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.am
  %i.em = ptrtoint ptr %i.o to i64
  %i.en = ptrtoint ptr %.092.i.ph to i64
  %i.eo = xor i64 %i.en, -1
  %i.ep = add i64 %i.eo, %i.em
  %i.eq = or i32 %.044.i.i, 266240
  br label %.loopexit.i

bb.ax:                                            ; preds = %bb.am
  %i.er = ptrtoint ptr %i.o to i64
  %i.es = ptrtoint ptr %.092.i.ph to i64
  %i.et = xor i64 %i.es, -1
  %i.eu = add i64 %i.et, %i.er
  %i.ev = or i32 %.044.i.i, 524288
  br label %.loopexit.i

bb.ay:                                            ; preds = %bb.am
  %i.ew = ptrtoint ptr %i.o to i64
  %i.ex = ptrtoint ptr %.092.i.ph to i64
  %i.ey = xor i64 %i.ex, -1
  %i.ez = add i64 %i.ey, %i.ew
  %i.fa = or i32 %.044.i.i, 528384
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %bb.am
  %i.fb = ptrtoint ptr %i.o to i64
  %i.fc = ptrtoint ptr %.092.i.ph to i64
  %i.fd = xor i64 %i.fc, -1
  %i.fe = add i64 %i.fd, %i.fb
  br label %.loopexit.i

.loopexit.i.loopexit644:                          ; preds = %bb.am
  %i.ff = ptrtoint ptr %i.o to i64
  %i.fg = ptrtoint ptr %.092.i.ph to i64
  %i.fh = xor i64 %i.fg, -1
  %i.fi = add i64 %i.fh, %i.ff
  br label %.loopexit.i

.loopexit.i.loopexit883:                          ; preds = %bb.am
  %i.fj = ptrtoint ptr %i.o to i64
  %i.fk = ptrtoint ptr %.092.i.ph to i64
  %i.fl = xor i64 %i.fk, -1
  %i.fm = add i64 %i.fl, %i.fj
  br label %.loopexit.i

.loopexit.i.loopexit1136:                         ; preds = %bb.am
  %i.fn = ptrtoint ptr %i.o to i64
  %i.fo = ptrtoint ptr %.092.i.ph to i64
  %i.fp = xor i64 %i.fo, -1
  %i.fq = add i64 %i.fp, %i.fn
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit1136, %.loopexit.i.loopexit883, %.loopexit.i.loopexit644, %.loopexit.i.loopexit, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.fr = phi i64 [ %i.fi, %.loopexit.i.loopexit644 ], [ %i.eu, %bb.ax ], [ %i.ep, %bb.aw ], [ %i.ek, %bb.av ], [ %i.fe, %.loopexit.i.loopexit ], [ %i.ef, %bb.au ], [ %i.dz, %bb.at ], [ %i.dt, %bb.as ], [ %i.dn, %bb.ar ], [ %i.dh, %bb.aq ], [ %i.db, %bb.ao ], [ %i.db, %bb.ap ], [ %i.fm, %.loopexit.i.loopexit883 ], [ %i.cw, %bb.an ], [ %i.ez, %bb.ay ], [ %i.fq, %.loopexit.i.loopexit1136 ]
  %.0191.ph.i = phi i32 [ 1, %.loopexit.i.loopexit644 ], [ 9, %bb.ax ], [ 9, %bb.aw ], [ 9, %bb.av ], [ 2, %.loopexit.i.loopexit ], [ 3, %bb.au ], [ %.3.i164.i, %bb.at ], [ %.2.i.i, %bb.as ], [ %.1.i.i, %bb.ar ], [ %.0.i165.i, %bb.aq ], [ 5, %bb.ao ], [ %..i.i, %bb.ap ], [ 9, %.loopexit.i.loopexit883 ], [ 0, %bb.an ], [ 9, %bb.ay ], [ 0, %.loopexit.i.loopexit1136 ]
  %.1190.ph.i = phi i32 [ %.044.i.i, %.loopexit.i.loopexit644 ], [ %i.ev, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.el, %bb.av ], [ %.044.i.i, %.loopexit.i.loopexit ], [ %i.eg, %bb.au ], [ %i.eb, %bb.at ], [ %i.dv, %bb.as ], [ %i.dp, %bb.ar ], [ %i.dj, %bb.aq ], [ %.044.i.i, %bb.ao ], [ %.044.i.i, %bb.ap ], [ %.044.i.i, %.loopexit.i.loopexit883 ], [ %i.cx, %bb.an ], [ %i.fa, %bb.ay ], [ %.044.i.i, %.loopexit.i.loopexit1136 ] ; 3 uses
  %i.fs = and i32 %.1190.ph.i, 16384
  %.not150.i = icmp eq i32 %i.fs, 0
  br i1 %.not150.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %.loopexit.i
  %i.ft = icmp slt i32 %.041.i.i, 0
  br i1 %i.ft, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fu = add nsw i32 %.0107.ph.i.ph, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.fv = lshr i32 %.041.i.i, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i32
  %i.ga = and i32 %.041.i.i, 7
  %i.gb = shl nuw nsw i32 1, %i.ga
  %i.gc = and i32 %i.gb, %i.fz
  %.not151.i = icmp eq i32 %i.gc, 0
  br i1 %.not151.i, label %bb.bc, label %parsefmt.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0186.i = phi i32 [ %.0107.ph.i.ph, %bb.ba ], [ %.041.i.i, %bb.bb ] ; 6 uses
  %.1108.i = phi i32 [ %i.fu, %bb.ba ], [ %.0107.ph.i.ph, %bb.bb ]
  %i.gd = icmp sgt i32 %.0186.i, 127
  br i1 %i.gd, label %parsefmt.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.0186.i, i32 %.0102.ph.i.ph)
  %i.ge = sext i32 %.0186.i to i64
  %i.gf = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ge
  store i32 11, ptr %i.gf, align 16, !tbaa !50
  %i.gg = and i32 %.0186.i, 7
  %i.gh = shl nuw nsw i32 1, %i.gg
  %i.gi = sdiv i32 %.0186.i, 8
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.k, i64 %i.gj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !15
  %i.gm = trunc nuw i32 %i.gh to i8
  %i.gn = or i8 %i.gl, %i.gm
  store i8 %i.gn, ptr %i.gk, align 1, !tbaa !15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.loopexit.i
  %.1187.i = phi i32 [ %.041.i.i, %.loopexit.i ], [ %.0186.i, %bb.bd ]
  %.2109.i = phi i32 [ %.0107.ph.i.ph, %.loopexit.i ], [ %.1108.i, %bb.bd ] ; 4 uses
  %.2104.i = phi i32 [ %.0102.ph.i.ph, %.loopexit.i ], [ %spec.select.i, %bb.bd ] ; 2 uses
  %i.go = and i32 %.1190.ph.i, 65536
  %.not153.i = icmp eq i32 %i.go, 0
  br i1 %.not153.i, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gp = icmp slt i32 %.039.i.i, 0
  br i1 %i.gp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gq = add nsw i32 %.2109.i, 1
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.gr = lshr i32 %.039.i.i, 3
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !15
  %i.gv = zext i8 %i.gu to i32
  %i.gw = and i32 %.039.i.i, 7
  %i.gx = shl nuw nsw i32 1, %i.gw
  %i.gy = and i32 %i.gx, %i.gv
  %.not154.i = icmp eq i32 %i.gy, 0
  br i1 %.not154.i, label %bb.bi, label %parsefmt.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0184.i = phi i32 [ %.2109.i, %bb.bg ], [ %.039.i.i, %bb.bh ] ; 6 uses
  %.3110.i = phi i32 [ %i.gq, %bb.bg ], [ %.2109.i, %bb.bh ]
  %i.gz = icmp sgt i32 %.0184.i, 127
  br i1 %i.gz, label %parsefmt.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %spec.select158.i = call i32 @llvm.smax.i32(i32 %.0184.i, i32 %.2104.i)
  %i.ha = sext i32 %.0184.i to i64
  %i.hb = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ha
  store i32 12, ptr %i.hb, align 16, !tbaa !50
  %i.hc = and i32 %.0184.i, 7
  %i.hd = shl nuw nsw i32 1, %i.hc
  %i.he = sdiv i32 %.0184.i, 8
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.k, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !15
  %i.hi = trunc nuw i32 %i.hd to i8
  %i.hj = or i8 %i.hh, %i.hi
  store i8 %i.hj, ptr %i.hg, align 1, !tbaa !15
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.1.i = phi i32 [ %.039.i.i, %bb.be ], [ %.0184.i, %bb.bj ]
  %.4111.i = phi i32 [ %.2109.i, %bb.be ], [ %.3110.i, %bb.bj ] ; 2 uses
  %.4106.i = phi i32 [ %.2104.i, %bb.be ], [ %spec.select158.i, %bb.bj ]
  %i.hk = icmp slt i32 %.090.i, 0
  %.090.lobit.i = lshr i32 %.090.i, 31
  %spec.select159.i = add nsw i32 %.4111.i, %.090.lobit.i
  %spec.select160.i = select i1 %i.hk, i32 %.4111.i, i32 %.090.i ; 6 uses
  %i.hl = icmp sgt i32 %spec.select160.i, 127
  br i1 %i.hl, label %parsefmt.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = sext i32 %spec.select160.i to i64
  %i.hn = getelementptr inbounds [16 x i8], ptr %5, i64 %i.hm
  store i32 %.0191.ph.i, ptr %i.hn, align 16, !tbaa !50
  %i.ho = and i32 %spec.select160.i, 7
  %i.hp = shl nuw nsw i32 1, %i.ho
  %i.hq = sdiv i32 %spec.select160.i, 8
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.k, i64 %i.hr ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !15
  %i.hu = trunc nuw i32 %i.hp to i8
  %i.hv = or i8 %i.ht, %i.hu
  store i8 %i.hv, ptr %i.hs, align 1, !tbaa !15
  %i.hw = icmp sgt i32 %.097.i.ph, 127
  br i1 %i.hw, label %parsefmt.exit.thread, label %parse_conversion.exit.thread221.i

parse_conversion.exit.thread221.i:                ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@formatf:bb.a
  br i1 %i.rk, label %.lr.ph.i79.preheader, label %.loopexit46.i

.lr.ph.i79.preheader:                             ; preds = %.preheader45.i
  %.promoted357 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.rl = add i32 %i.rh, %.promoted357
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.ep
  %i.rm = phi i32 [ %i.rp, %bb.ep ], [ %.promoted357, %.lr.ph.i79.preheader ] ; 2 uses
  %i.rn = phi i32 [ %i.rq, %bb.ep ], [ %i.rj, %.lr.ph.i79.preheader ] ; 2 uses
  %i.ro = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not42.i = icmp eq i32 %i.ro, 0
  br i1 %.not42.i, label %bb.ep, label %.thread114

bb.ep:                                            ; preds = %.lr.ph.i79
  %i.rp = add nsw i32 %i.rm, 1
  %i.rq = add nsw i32 %i.rn, -1
  %i.rr = icmp sgt i32 %i.rn, 0
  br i1 %i.rr, label %.lr.ph.i79, label %.loopexit46.i.loopexit, !llvm.loop !38

.loopexit46.i.loopexit:                           ; preds = %bb.ep
  store i32 %i.rl, ptr %i.l, align 4
  br label %.loopexit46.i

.loopexit46.i:                                    ; preds = %.loopexit46.i.loopexit, %.preheader45.i, %bb.eo
  %.1.i76 = phi i32 [ %i.rh, %bb.eo ], [ %i.rj, %.preheader45.i ], [ -1, %.loopexit46.i.loopexit ] ; 3 uses
  %i.rs = call i32 %1(i8 noundef zeroext 40, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.i = icmp eq i32 %i.rs, 0
  br i1 %.not41.i, label %bb.eq, label %.thread114.loopexit374

bb.eq:                                            ; preds = %.loopexit46.i
  %i.rt = load i32, ptr %i.l, align 4, !tbaa !16  ; 5 uses
  %i.ru = add nsw i32 %i.rt, 1
  store i32 %i.ru, ptr %i.l, align 4, !tbaa !16
  %i.rv = call i32 %1(i8 noundef zeroext 110, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.1.i = icmp eq i32 %i.rv, 0
  br i1 %.not41.1.i, label %bb.er, label %.thread114.loopexit374

bb.er:                                            ; preds = %bb.eq
  %i.rw = add nsw i32 %i.rt, 2
  store i32 %i.rw, ptr %i.l, align 4, !tbaa !16
  %i.rx = call i32 %1(i8 noundef zeroext 105, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.2.i = icmp eq i32 %i.rx, 0
  br i1 %.not41.2.i, label %bb.es, label %.thread114.loopexit374

bb.es:                                            ; preds = %bb.er
  %i.ry = add nsw i32 %i.rt, 3
  store i32 %i.ry, ptr %i.l, align 4, !tbaa !16
  %i.rz = call i32 %1(i8 noundef zeroext 108, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.3.i = icmp eq i32 %i.rz, 0
  br i1 %.not41.3.i, label %bb.et, label %.thread114.loopexit374

bb.et:                                            ; preds = %bb.es
  %i.sa = add nsw i32 %i.rt, 4
  store i32 %i.sa, ptr %i.l, align 4, !tbaa !16
  %i.sb = call i32 %1(i8 noundef zeroext 41, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not41.4.i = icmp eq i32 %i.sb, 0
  br i1 %.not41.4.i, label %bb.eu, label %.thread114.loopexit374

bb.eu:                                            ; preds = %bb.et
  %i.sc = add nsw i32 %i.rt, 5                    ; 3 uses
  store i32 %i.sc, ptr %i.l, align 4, !tbaa !16
  %i.sd = icmp sgt i32 %.1.i76, 0
  %or.cond.i77 = select i1 %.not38.i, i1 %i.sd, i1 false
  br i1 %or.cond.i77, label %.lr.ph50.i.preheader, label %.thread108

.lr.ph50.i.preheader:                             ; preds = %bb.eu
  %i.se = add i32 %.1.i76, %i.sc
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader, %bb.ev
  %i.sf = phi i32 [ %i.si, %bb.ev ], [ %i.sc, %.lr.ph50.i.preheader ] ; 2 uses
  %.in.i78 = phi i32 [ %i.sh, %bb.ev ], [ %.1.i76, %.lr.ph50.i.preheader ] ; 2 uses
  %i.sg = call i32 %1(i8 noundef zeroext 32, ptr noundef %0) #11, !callees !20, !inline_history !37
  %.not40.i = icmp eq i32 %i.sg, 0
  br i1 %.not40.i, label %bb.ev, label %.thread114

bb.ev:                                            ; preds = %.lr.ph50.i
  %i.sh = add nsw i32 %.in.i78, -1
  %i.si = add nsw i32 %i.sf, 1
  %i.sj = icmp sgt i32 %.in.i78, 1
  br i1 %i.sj, label %.lr.ph50.i, label %.thread108.loopexit, !llvm.loop !39

bb.ew:                                            ; preds = %bb.ds
  %i.sk = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.out_double.fmt, i64 32, i1 false)
  %i.sm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12, !inline_history !40
  %i.sn = sub i64 32, %i.sm                       ; 3 uses
  %i.so = and i32 %i.on, 4
  %.not.i80 = icmp eq i32 %i.so, 0
  br i1 %.not.i80, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i8 45, ptr %i.ng, align 1, !tbaa !15
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.067.i = phi ptr [ %i.nh, %bb.ex ], [ %i.ng, %bb.ew ] ; 3 uses
  %i.sp = and i32 %i.on, 2
  %.not74.i = icmp eq i32 %i.sp, 0
  br i1 %.not74.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sq = getelementptr inbounds nuw i8, ptr %.067.i, i64 1
  store i8 43, ptr %.067.i, align 1, !tbaa !15
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.168.i = phi ptr [ %i.sq, %bb.ez ], [ %.067.i, %bb.ey ] ; 3 uses
  %i.sr = and i32 %i.on, 1
  %.not75.i = icmp eq i32 %i.sr, 0
  br i1 %.not75.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ss = getelementptr inbounds nuw i8, ptr %.168.i, i64 1
  store i8 32, ptr %.168.i, align 1, !tbaa !15
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.2.i81 = phi ptr [ %i.ss, %bb.fb ], [ %.168.i, %bb.fa ] ; 3 uses
  %i.st = and i32 %i.on, 8
  %.not76.i = icmp eq i32 %i.st, 0
  br i1 %.not76.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.su = getelementptr inbounds nuw i8, ptr %.2.i81, i64 1
  store i8 35, ptr %.2.i81, align 1, !tbaa !15
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.3.i82 = phi ptr [ %i.su, %bb.fd ], [ %.2.i81, %bb.fc ] ; 4 uses
  store i8 0, ptr %.3.i82, align 1, !tbaa !15
  %i.sv = icmp sgt i32 %i.oo, -1
  br i1 %i.sv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.sw = call i32 @llvm.umin.i32(i32 %i.oo, i32 325) ; 2 uses
  %i.sx = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %.3.i82, i64 noundef %i.sn, ptr noundef nonnull @.str.1, i32 noundef %i.sw), !inline_history !40
  %i.sy = sext i32 %i.sx to i64                   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.3.i82, i64 %i.sy
  %i.ta = sub i64 %i.sn, %i.sy
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.4.i83 = phi ptr [ %i.sz, %bb.ff ], [ %.3.i82, %bb.fe ] ; 3 uses
  %.066.i = phi i64 [ %i.ta, %bb.ff ], [ %i.sn, %bb.fe ]
  %.065.i = phi i32 [ %i.sw, %bb.ff ], [ %i.oo, %bb.fe ] ; 3 uses
  %i.tb = icmp sgt i32 %spec.store.select.sink, -1
  br i1 %i.tb, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.tc = icmp samesign ugt i32 %spec.store.select.sink, 325
  %spec.select.i85 = select i1 %i.tc, i32 324, i32 %spec.store.select.sink ; 3 uses
  %i.td = icmp slt i32 %.065.i, 1
  %.not77.i = icmp sgt i32 %spec.select.i85, %.065.i
  %or.cond.i86 = select i1 %i.td, i1 true, i1 %.not77.i
  %i.te = sub nsw i32 325, %.065.i
  %.061.i = select i1 %or.cond.i86, i32 325, i32 %i.te ; 2 uses
  %i.tf = fcmp ult double %i.sl, 1.000000e+01
  br i1 %i.tf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fh, %.lr.ph
  %.0.i88348 = phi double [ %i.tg, %.lr.ph ], [ %i.sl, %bb.fh ]
  %.1.i87347 = phi i32 [ %i.th, %.lr.ph ], [ %.061.i, %bb.fh ]
  %i.tg = fdiv double %.0.i88348, 1.000000e+01    ; 2 uses
  %i.th = add nsw i32 %.1.i87347, -1              ; 2 uses
  %i.ti = fcmp ult double %i.tg, 1.000000e+01
  br i1 %i.ti, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.fh
  %.1.i87.lcssa = phi i32 [ %.061.i, %bb.fh ], [ %i.th, %.lr.ph ] ; 2 uses
  %i.tj = icmp sgt i32 %spec.select.i85, %.1.i87.lcssa
  %i.tk = call i32 @llvm.smax.i32(i32 %.1.i87.lcssa, i32 1)
  %i.tl = add nsw i32 %i.tk, -1
  %.164.i = select i1 %i.tj, i32 %i.tl, i32 %spec.select.i85
  %i.tm = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %.4.i83, i64 noundef %.066.i, ptr noundef nonnull @.str.2, i32 noundef %.164.i), !inline_history !40
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds i8, ptr %.4.i83, i64 %i.tn
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge, %bb.fg
  %.5.i = phi ptr [ %i.to, %._crit_edge ], [ %.4.i83, %bb.fg ] ; 3 uses
  %i.tp = and i32 %i.on, 32
  %.not78.i = icmp eq i32 %i.tp, 0
  br i1 %.not78.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tq = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  store i8 108, ptr %.5.i, align 1, !tbaa !15
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.6.i = phi ptr [ %i.tq, %bb.fj ], [ %.5.i, %bb.fi ] ; 2 uses
  %i.tr = and i32 %i.on, 262144
  %.not79.i = icmp eq i32 %i.tr, 0
  br i1 %.not79.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %11 = and i32 %i.on, 4096
  %.not82.i = icmp eq i32 %11, 0
  %12 = select i1 %.not82.i, i8 101, i8 69
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %i.ts = and i32 %i.on, 524288
  %.not80.i = icmp eq i32 %i.ts, 0
  br i1 %.not80.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %13 = and i32 %i.on, 4096
  %.not81.i = icmp eq i32 %13, 0
  %14 = select i1 %.not81.i, i8 103, i8 71
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn, %bb.fl
  %.sink = phi i8 [ %12, %bb.fl ], [ %14, %bb.fn ], [ 102, %bb.fm ]
  store i8 %.sink, ptr %.6.i, align 1, !tbaa !15
  %.7.i84 = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 0, ptr %.7.i84, align 1, !tbaa !15
  %i.tt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 326, ptr noundef nonnull %i.a, double noundef %i.sl) #11, !inline_history !40 ; 0 uses
  %.promoted349 = load i32, ptr %i.l, align 4     ; 2 uses
  %i.tu = load i8, ptr %i.m, align 16, !tbaa !15  ; 2 uses
  %.not83.i.not352 = icmp eq i8 %i.tu, 0
  br i1 %.not83.i.not352, label %out_double.exit, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.fo, %bb.fp
  %i.tv = phi i8 [ %i.ua, %bb.fp ], [ %i.tu, %bb.fo ]
  %.069.i353 = phi ptr [ %i.ty, %bb.fp ], [ %i.m, %bb.fo ]
  %i.tw = phi i32 [ %i.tz, %bb.fp ], [ %.promoted349, %bb.fo ] ; 2 uses
  %i.tx = call i32 %1(i8 noundef zeroext %i.tv, ptr noundef %0) #11, !callees !20, !inline_history !40
  %.not84.i = icmp eq i32 %i.tx, 0
  br i1 %.not84.i, label %bb.fp, label %select.unfold

bb.fp:                                            ; preds = %.lr.ph355
  %i.ty = getelementptr inbounds nuw i8, ptr %.069.i353, i64 1 ; 2 uses
  %i.tz = add nsw i32 %i.tw, 1                    ; 2 uses
  %i.ua = load i8, ptr %i.ty, align 1, !tbaa !15  ; 2 uses
  %.not83.i.not = icmp eq i8 %i.ua, 0
  br i1 %.not83.i.not, label %out_double.exit, label %.lr.ph355, !llvm.loop !42

out_double.exit:                                  ; preds = %bb.fp, %bb.fo
  %.lcssa350 = phi i32 [ %.promoted349, %bb.fo ], [ %i.tz, %bb.fp ]
  store i32 %.lcssa350, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread108

bb.fq:                                            ; preds = %bb.ds
  %i.ub = and i32 %i.on, 64
  %.not59 = icmp eq i32 %i.ub, 0
  br i1 %.not59, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.uc = load i32, ptr %i.l, align 4, !tbaa !16
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !15
  store i64 %i.ud, ptr %i.uf, align 8, !tbaa !53
  br label %.thread108

bb.fs:                                            ; preds = %bb.fq
  %i.ug = and i32 %i.on, 32
  %.not60 = icmp eq i32 %i.ug, 0
  br i1 %.not60, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.uh = load i32, ptr %i.l, align 4, !tbaa !16
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !15
  store i64 %i.ui, ptr %i.uk, align 8, !tbaa !53
  br label %.thread108

bb.fu:                                            ; preds = %bb.fs
  %i.ul = and i32 %i.on, 16
  %.not61 = icmp eq i32 %i.ul, 0
  %i.um = load i32, ptr %i.l, align 4, !tbaa !16  ; 2 uses
  br i1 %.not61, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.un = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !15
  store i32 %i.um, ptr %i.uo, align 4, !tbaa !16
  br label %.thread108

bb.fw:                                            ; preds = %bb.fu
  %i.up = trunc i32 %i.um to i16
  %i.uq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !15
  store i16 %i.up, ptr %i.ur, align 2, !tbaa !57
  br label %.thread108

select.unfold:                                    ; preds = %.lr.ph355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread114

.thread108.loopexit:                              ; preds = %bb.ev
  store i32 %i.se, ptr %i.l, align 4
  br label %.thread108

.thread114.loopexit374:                           ; preds = %bb.du, %bb.dt, %bb.ek, %bb.ed, %bb.eq, %bb.er, %bb.es, %bb.et, %.loopexit46.i, %bb.en
  %.3.ph113.pre = load i32, ptr %i.l, align 4
  br label %.thread114

.thread114:                                       ; preds = %bb.dh, %.lr.ph.i79, %.lr.ph50.i, %.lr.ph.i73, %bb.eh, %.lr.ph69.i, %.thread114.loopexit374, %select.unfold
  %.3.ph113 = phi i32 [ %.3.ph113.pre, %.thread114.loopexit374 ], [ %i.qu, %.lr.ph69.i ], [ %i.rm, %.lr.ph.i79 ], [ %i.sf, %.lr.ph50.i ], [ %i.qd, %.lr.ph.i73 ], [ %i.ql, %bb.eh ], [ %i.tw, %select.unfold ], [ %i.nt, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %._crit_edge373

.thread108:                                       ; preds = %bb.dj, %out_double.exit, %bb.ft, %bb.fw, %bb.fv, %bb.fr, %bb.ds, %bb.du, %bb.dt, %bb.el, %.loopexit.i72, %bb.eu, %bb.en, %.thread108.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge373.loopexit, label %bb.de, !llvm.loop !43

._crit_edge373.loopexit:                          ; preds = %.thread108
  %.pre615 = load i32, ptr %i.l, align 4, !tbaa !16
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %parsefmt.exit, %._crit_edge373.loopexit, %.thread114, %parsefmt.exit.thread
  %.4 = phi i32 [ 0, %parsefmt.exit.thread ], [ %.3.ph113, %.thread114 ], [ %.pre615, %._crit_edge373.loopexit ], [ 0, %parsefmt.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @addbyter(i8 noundef zeroext %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !12
  store i8 %0, ptr %i.f, align 1, !tbaa !15
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @curl_msnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nsprintf, align 8           ; 7 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %0, ptr %3, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !14
  %i.c = call fastcc i32 @formatf(ptr noundef nonnull %3, ptr noundef nonnull @addbyter, ptr noundef %2, ptr noundef nonnull %4), !inline_history !58 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %curl_mvsnprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !13
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.i = add nsw i32 %i.c, -1
  br label %curl_mvsnprintf.exit

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1, !tbaa !15
  br label %curl_mvsnprintf.exit

curl_mvsnprintf.exit:                             ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nounwind uwtable
define range(i32 -128, 128) i32 @curlx_dyn_vprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.asprintf, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %0, ptr %3, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !27
  %i.b = call fastcc i32 @formatf(ptr noundef nonnull %3, ptr noundef nonnull @alloc_addbyter, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_1
