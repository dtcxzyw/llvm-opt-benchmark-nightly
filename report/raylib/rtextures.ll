inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi__load_main:bb.a

stbi__get8.exit.i.5.i:                            ; preds = %bb.ae, %stbi__refill_buffer.exit.i.i.5.i
  %i.ds = phi ptr [ %i.cw, %bb.ae ], [ %.sink.i.i.i.5.i, %stbi__refill_buffer.exit.i.i.5.i ] ; 2 uses
  %i.dt = phi ptr [ %i.dq, %bb.ae ], [ %i.m, %stbi__refill_buffer.exit.i.i.5.i ] ; 3 uses
  %.0.i.i.5.i = phi i8 [ %i.dr, %bb.ae ], [ %i.dp, %stbi__refill_buffer.exit.i.i.5.i ]
  %.not.i.5.i = icmp eq i8 %.0.i.i.5.i, 10
  br i1 %.not.i.5.i, label %bb.af, label %bb.bi

bb.af:                                            ; preds = %stbi__get8.exit.i.5.i
  %i.du = icmp ult ptr %i.dt, %i.ds
  br i1 %i.du, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = load i32, ptr %i.f, align 8
  %.not.i.i.6.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.6.i, label %bb.bi, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = load ptr, ptr %i.h, align 8
  %i.dy = load i32, ptr %i.j, align 4
  %i.dz = tail call i32 %i.dw(ptr noundef %i.dx, ptr noundef nonnull %i.i, i32 noundef %i.dy) #52, !inline_history !140 ; 2 uses
  %i.ea = load ptr, ptr %i.d, align 8
  %i.eb = load ptr, ptr %i.k, align 8
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.l, align 8
  %i.eh = add nsw i32 %i.eg, %i.ef
  store i32 %i.eh, ptr %i.l, align 8
  %i.ei = icmp eq i32 %i.dz, 0
  br i1 %i.ei, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = sext i32 %i.dz to i64
  %i.ek = getelementptr inbounds i8, ptr %i.i, i64 %i.ej
  %.pre.i.i.6.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i.6.i

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i.6.i

stbi__refill_buffer.exit.i.i.6.i:                 ; preds = %bb.aj, %bb.ai
  %i.el = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6.i, %bb.ai ]
  %.sink.i.i.i.6.i = phi ptr [ %i.m, %bb.aj ], [ %i.ek, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i.6.i

bb.ak:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.em, ptr %i.d, align 8
  %i.en = load i8, ptr %i.dt, align 1
  br label %stbi__get8.exit.i.6.i

stbi__get8.exit.i.6.i:                            ; preds = %bb.ak, %stbi__refill_buffer.exit.i.i.6.i
  %i.eo = phi ptr [ %i.ds, %bb.ak ], [ %.sink.i.i.i.6.i, %stbi__refill_buffer.exit.i.i.6.i ]
  %i.ep = phi ptr [ %i.em, %bb.ak ], [ %i.m, %stbi__refill_buffer.exit.i.i.6.i ] ; 3 uses
  %.0.i.i.6.i = phi i8 [ %i.en, %bb.ak ], [ %i.el, %stbi__refill_buffer.exit.i.i.6.i ]
  %.not.i.6.i = icmp eq i8 %.0.i.i.6.i, 26
  br i1 %.not.i.6.i, label %bb.al, label %bb.bi

bb.al:                                            ; preds = %stbi__get8.exit.i.6.i
  %i.eq = icmp ult ptr %i.ep, %i.eo
  br i1 %i.eq, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = load i32, ptr %i.f, align 8
  %.not.i.i.7.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.7.i, label %bb.bi, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = load ptr, ptr %i.h, align 8
  %i.eu = load i32, ptr %i.j, align 4
  %i.ev = tail call i32 %i.es(ptr noundef %i.et, ptr noundef nonnull %i.i, i32 noundef %i.eu) #52, !inline_history !140
  %i.ew = load ptr, ptr %i.d, align 8
  %i.ex = load ptr, ptr %i.k, align 8
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = load i32, ptr %i.l, align 8
  %i.fd = add nsw i32 %i.fc, %i.fb
  store i32 %i.fd, ptr %i.l, align 8
  %i.fe = icmp eq i32 %i.ev, 0
  br i1 %i.fe, label %stbi__get8.exit.i.7.i.thread, label %stbi__get8.exit.i.7.i

stbi__get8.exit.i.7.i.thread:                     ; preds = %bb.an
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.bi

bb.ao:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.ff, ptr %i.d, align 8
  br label %stbi__get8.exit.i.7.i

stbi__get8.exit.i.7.i:                            ; preds = %bb.an, %bb.ao
  %.0.i.i.7.i.in = phi ptr [ %i.ep, %bb.ao ], [ %i.i, %bb.an ]
  %.0.i.i.7.i = load i8, ptr %.0.i.i.7.i.in, align 1
  %.not.i.7.i = icmp eq i8 %.0.i.i.7.i, 10
  br i1 %.not.i.7.i, label %bb.au, label %bb.bi

bb.ap:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1 ; 2 uses
  store ptr %i.fg, ptr %i.d, align 8
  %i.fh = load i8, ptr %.pre.i.i, align 1
  br label %stbi__get8.exit.i.i

bb.aq:                                            ; preds = %bb.a
  %i.fi = load i32, ptr %i.f, align 8
  %.not.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %i.g, align 8
  %i.fk = load ptr, ptr %i.h, align 8
  %i.fl = load i32, ptr %i.j, align 4
  %i.fm = tail call i32 %i.fj(ptr noundef %i.fk, ptr noundef nonnull %i.i, i32 noundef %i.fl) #52, !inline_history !140 ; 2 uses
  %i.fn = load ptr, ptr %i.d, align 8
  %i.fo = load ptr, ptr %i.k, align 8
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = load i32, ptr %i.l, align 8
  %i.fu = add nsw i32 %i.ft, %i.fs
  store i32 %i.fu, ptr %i.l, align 8
  %i.fv = icmp eq i32 %i.fm, 0
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fw = sext i32 %i.fm to i64
  %i.fx = getelementptr inbounds i8, ptr %i.i, i64 %i.fw
  %.pre.i.i.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i.i

stbi__refill_buffer.exit.i.i.i:                   ; preds = %bb.at, %bb.as
  %i.fy = phi i8 [ 0, %bb.as ], [ %.pre.i.i.i, %bb.at ]
  %.sink.i.i.i.i = phi ptr [ %i.m, %bb.as ], [ %i.fx, %bb.at ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i.i

stbi__get8.exit.i.i:                              ; preds = %stbi__refill_buffer.exit.i.i.i, %bb.ap
  %i.fz = phi ptr [ %.pre7.i.i, %bb.ap ], [ %.sink.i.i.i.i, %stbi__refill_buffer.exit.i.i.i ] ; 2 uses
  %i.ga = phi ptr [ %i.fg, %bb.ap ], [ %i.m, %stbi__refill_buffer.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.fh, %bb.ap ], [ %i.fy, %stbi__refill_buffer.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, -119
  br i1 %.not.i.i, label %bb.b, label %bb.bi

bb.au:                                            ; preds = %stbi__get8.exit.i.7.i
  %i.gb = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.gb, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #52
  store ptr %0, ptr %8, align 8
  %or.cond.i.i = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr @.str.85, ptr @stbi__g_failure_reason, align 8
  br label %stbi__png_load.exit

bb.aw:                                            ; preds = %bb.au
  %i.gc = call fastcc i32 @stbi__parse_png_file(ptr noundef nonnull %8, i32 noundef 0, i32 noundef %4)
  %.not.i.i27 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i27, label %._crit_edge.i, label %bb.ax

._crit_edge.i:                                    ; preds = %bb.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.bh

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9                   ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = icmp eq i32 %i.ge, 16
  br i1 %i.gg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr @.str.86, ptr @stbi__g_failure_reason, align 8
  br label %stbi__png_load.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi i32 [ 8, %bb.ax ], [ 16, %bb.ay ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8            ; 9 uses
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre75.i.i = load ptr, ptr %8, align 8         ; 6 uses
  br i1 %.not48.i.i, label %stbi__convert_format16.exit._crit_edge.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr inbounds nuw i8, ptr %.pre75.i.i, i64 12 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4            ; 5 uses
  %.not49.i.i = icmp eq i32 %4, %i.gk
  br i1 %.not49.i.i, label %stbi__convert_format16.exit._crit_edge.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gl = load i32, ptr %.pre75.i.i, align 8      ; 27 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre75.i.i, i64 4
  %i.gn = load i32, ptr %i.gm, align 4            ; 4 uses
  br i1 %i.gf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.go = tail call fastcc ptr @stbi__convert_format(ptr noundef %i.gi, i32 noundef %i.gk, i32 noundef %4, i32 noundef %i.gl, i32 noundef %i.gn)
  br label %stbi__convert_format16.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gp = shl nuw nsw i32 %4, 1
  %i.gq = mul i32 %i.gp, %i.gl
  %i.gr = mul i32 %i.gq, %i.gn
  %i.gs = zext i32 %i.gr to i64
  %i.gt = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.gs) #53 ; 6 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %stbi__convert_format16.exit.thread.i.i, label %.preheader196.i.i.i

.preheader196.i.i.i:                              ; preds = %bb.be
  %i.gv = icmp sgt i32 %i.gn, 0
  br i1 %i.gv, label %.lr.ph257.i.i.i, label %._crit_edge.i.i.i

.lr.ph257.i.i.i:                                  ; preds = %.preheader196.i.i.i
  %i.gw = shl nsw i32 %i.gk, 3
  %i.gx = or disjoint i32 %i.gw, %4               ; 2 uses
  %.11167197.i.i.i = add i32 %i.gl, -1            ; 30 uses
  %i.gy = icmp sgt i32 %.11167197.i.i.i, -1       ; 12 uses
  switch i32 %i.gx, label %.critedge.i.i.i [
    i32 10, label %.lr.ph257.split.i.i.i
    i32 11, label %.lr.ph257.split.i.i.i
    i32 12, label %.lr.ph257.split.i.i.i
    i32 17, label %.lr.ph257.split.i.i.i
    i32 19, label %.lr.ph257.split.i.i.i
    i32 20, label %.lr.ph257.split.i.i.i
    i32 28, label %.lr.ph257.split.i.i.i
    i32 25, label %.lr.ph257.split.i.i.i
    i32 26, label %.lr.ph257.split.i.i.i
    i32 33, label %.lr.ph257.split.i.i.i
    i32 34, label %.lr.ph257.split.i.i.i
    i32 35, label %.lr.ph257.split.i.i.i
  ]

.lr.ph257.split.i.i.i:                            ; preds = %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.gn to i64
  %9 = mul i32 %i.gl, %4
  %i.gz = zext i32 %.11167197.i.i.i to i64        ; 2 uses
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = getelementptr i8, ptr %i.gt, i64 %i.ha
  %scevgep52.a = getelementptr i8, ptr %i.hb, i64 2
  %i.hc = mul i32 %i.gk, %i.gl
  %i.hd = shl nuw nsw i64 %i.gz, 2
  %i.he = getelementptr i8, ptr %i.gi, i64 %i.hd
  %scevgep55 = getelementptr i8, ptr %i.he, i64 2
  %xtraiter99 = and i32 %i.gl, 1
  %lcmp.mod100.not = icmp eq i32 %xtraiter99, 0
  %.10166.i.i.i.prol = add i32 %i.gl, -2
  %i.hf = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter102 = and i32 %i.gl, 1
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  %.9165.i.i.i.prol = add i32 %i.gl, -2
  %i.hg = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter105 = and i32 %i.gl, 1
  %lcmp.mod106.not = icmp eq i32 %xtraiter105, 0
  %.8164.i.i.i.prol = add i32 %i.gl, -2
  %i.hh = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter108 = and i32 %i.gl, 1
  %lcmp.mod109.not = icmp eq i32 %xtraiter108, 0
  %.7163.i.i.i.prol = add i32 %i.gl, -2
  %i.hi = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter111 = and i32 %i.gl, 1
  %lcmp.mod112.not = icmp eq i32 %xtraiter111, 0
  %.6162.i.i.i.prol = add i32 %i.gl, -2
  %i.hj = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter114 = and i32 %i.gl, 1
  %lcmp.mod115.not = icmp eq i32 %xtraiter114, 0
  %.5161.i.i.i.prol = add i32 %i.gl, -2
  %i.hk = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter117 = and i32 %i.gl, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i32 %xtraiter117, 0
  %i.hl = icmp ult i32 %.11167197.i.i.i, 3
  %i.hm = zext i32 %i.gl to i64                   ; 2 uses
  %min.iters.check61 = icmp ult i32 %i.gl, 9
  %i.hn = and i64 %i.hm, 7                        ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = select i1 %i.ho, i64 8, i64 %i.hn
  %n.vec63 = sub nsw i64 %i.hm, %i.hp             ; 4 uses
  %i.hq = trunc i64 %n.vec63 to i32
  %i.hr = sub i32 %.11167197.i.i.i, %i.hq
  %i.hs = shl nsw i64 %n.vec63, 1
  %i.ht = shl nsw i64 %n.vec63, 2
  %xtraiter123 = and i32 %i.gl, 3                 ; 2 uses
  %lcmp.mod124.not = icmp eq i32 %xtraiter123, 0
  %i.hu = icmp ult i32 %.11167197.i.i.i, 3
  %xtraiter126 = and i32 %i.gl, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i32 %xtraiter126, 0
  %i.hv = icmp ult i32 %.11167197.i.i.i, 3
  %i.hw = zext i32 %i.gl to i64                   ; 2 uses
  %min.iters.check34 = icmp ult i32 %i.gl, 8
  %n.vec36 = and i64 %i.hw, 4294967288            ; 5 uses
  %i.hx = trunc nuw i64 %n.vec36 to i32
  %i.hy = sub i32 %.11167197.i.i.i, %i.hx
  %i.hz = shl nuw nsw i64 %n.vec36, 2
  %i.ia = shl nuw nsw i64 %n.vec36, 1
  %cmp.n46 = icmp eq i64 %n.vec36, %i.hw
  %xtraiter129 = and i32 %i.gl, 1
  %lcmp.mod130.not = icmp eq i32 %xtraiter129, 0
  %.11167.i.i.i.prol = add i32 %i.gl, -2
  %i.ib = icmp eq i32 %.11167197.i.i.i, 0
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.i.i.i, %.lr.ph257.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph257.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %i.ic = trunc i64 %indvars.iv.i.i.i to i32
  %i.id = mul i32 %9, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 1                ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.gt, i64 %i.if
  %scevgep53 = getelementptr i8, ptr %scevgep52.a, i64 %i.if
  %i.ig = trunc i64 %indvars.iv.i.i.i to i32
  %i.ih = mul i32 %i.hc, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 1                ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.gi, i64 %i.ij
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.ij
  %i.ik = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.il = mul i32 %i.gl, %i.ik                    ; 2 uses
  %i.im = mul i32 %i.il, %i.gk
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.in ; 49 uses
  %i.ip = mul i32 %i.il, %4
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.iq ; 45 uses
  switch i32 %i.gx, label %.preheader194.i.i.i [
    i32 10, label %.preheader.i.i.i
    i32 11, label %.preheader174.i.i.i
    i32 12, label %.preheader176.i.i.i
    i32 17, label %.preheader178.i.i.i
    i32 19, label %.preheader180.i.i.i
    i32 20, label %.preheader182.i.i.i
    i32 28, label %.preheader184.i.i.i
    i32 25, label %.preheader186.i.i.i
    i32 26, label %.preheader188.i.i.i
    i32 33, label %.preheader190.i.i.i
    i32 34, label %.preheader192.i.i.i
  ]

.preheader194.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader194.i.i.i
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.is = load i16, ptr %i.io, align 2
  store i16 %i.is, ptr %i.ir, align 2
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 %i.iu, ptr %i.iv, align 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ix = load i16, ptr %i.iw, align 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 %i.ix, ptr %i.iy, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 6
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.11167200.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.11167.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.11199.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph.i.i.i.preheader ], [ %i.ja, %.lr.ph.i.i.i.prol ]
  %.11153198.i.i.i.unr = phi ptr [ %i.io, %.lr.ph.i.i.i.preheader ], [ %i.iz, %.lr.ph.i.i.i.prol ]
  br i1 %i.ib, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader192.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph205.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph205.i.i.i.preheader:                        ; preds = %.preheader192.i.i.i
  br i1 %lcmp.mod100.not, label %.lr.ph205.i.i.i.prol.loopexit, label %.lr.ph205.i.i.i.prol

.lr.ph205.i.i.i.prol:                             ; preds = %.lr.ph205.i.i.i.preheader
  %i.jb = load i16, ptr %i.io, align 2
  %i.jc = zext i16 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.je = load i16, ptr %i.jd, align 2
  %i.jf = zext i16 %i.je to i32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.jh = load i16, ptr %i.jg, align 2
  %i.ji = zext i16 %i.jh to i32
  %i.jj = mul nuw nsw i32 %i.jc, 77
  %i.jk = mul nuw nsw i32 %i.jf, 150
  %i.jl = add nuw nsw i32 %i.jk, %i.jj
  %i.jm = mul nuw nsw i32 %i.ji, 29
  %i.jn = add nuw nsw i32 %i.jl, %i.jm
  %i.jo = lshr i32 %i.jn, 8
  %i.jp = trunc nuw i32 %i.jo to i16
  store i16 %i.jp, ptr %i.ir, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.jr = load i16, ptr %i.jq, align 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 %i.jr, ptr %i.js, align 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  br label %.lr.ph205.i.i.i.prol.loopexit

.lr.ph205.i.i.i.prol.loopexit:                    ; preds = %.lr.ph205.i.i.i.prol, %.lr.ph205.i.i.i.preheader
  %.10166204.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph205.i.i.i.preheader ], [ %.10166.i.i.i.prol, %.lr.ph205.i.i.i.prol ]
  %.10203.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph205.i.i.i.preheader ], [ %i.ju, %.lr.ph205.i.i.i.prol ]
  %.10152202.i.i.i.unr = phi ptr [ %i.io, %.lr.ph205.i.i.i.preheader ], [ %i.jt, %.lr.ph205.i.i.i.prol ]
  br i1 %i.hf, label %.loopexit.i.i.i, label %.lr.ph205.i.i.i

.preheader190.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph210.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph210.i.i.i.preheader:                        ; preds = %.preheader190.i.i.i
  br i1 %lcmp.mod103.not, label %.lr.ph210.i.i.i.prol.loopexit, label %.lr.ph210.i.i.i.prol

.lr.ph210.i.i.i.prol:                             ; preds = %.lr.ph210.i.i.i.preheader
  %i.jv = load i16, ptr %i.io, align 2
  %i.jw = zext i16 %i.jv to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = zext i16 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.kb = load i16, ptr %i.ka, align 2
  %i.kc = zext i16 %i.kb to i32
  %i.kd = mul nuw nsw i32 %i.jw, 77
  %i.ke = mul nuw nsw i32 %i.jz, 150
  %i.kf = add nuw nsw i32 %i.ke, %i.kd
  %i.kg = mul nuw nsw i32 %i.kc, 29
  %i.kh = add nuw nsw i32 %i.kf, %i.kg
  %i.ki = lshr i32 %i.kh, 8
  %i.kj = trunc nuw i32 %i.ki to i16
  store i16 %i.kj, ptr %i.ir, align 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  br label %.lr.ph210.i.i.i.prol.loopexit

.lr.ph210.i.i.i.prol.loopexit:                    ; preds = %.lr.ph210.i.i.i.prol, %.lr.ph210.i.i.i.preheader
  %.9165209.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph210.i.i.i.preheader ], [ %.9165.i.i.i.prol, %.lr.ph210.i.i.i.prol ]
  %.9208.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph210.i.i.i.preheader ], [ %i.kl, %.lr.ph210.i.i.i.prol ]
  %.9151207.i.i.i.unr = phi ptr [ %i.io, %.lr.ph210.i.i.i.preheader ], [ %i.kk, %.lr.ph210.i.i.i.prol ]
  br i1 %i.hg, label %.loopexit.i.i.i, label %.lr.ph210.i.i.i

.preheader188.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph215.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph215.i.i.i.preheader:                        ; preds = %.preheader188.i.i.i
  br i1 %lcmp.mod106.not, label %.lr.ph215.i.i.i.prol.loopexit, label %.lr.ph215.i.i.i.prol

.lr.ph215.i.i.i.prol:                             ; preds = %.lr.ph215.i.i.i.preheader
  %i.km = load i16, ptr %i.io, align 2
  %i.kn = zext i16 %i.km to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = zext i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ks = load i16, ptr %i.kr, align 2
  %i.kt = zext i16 %i.ks to i32
  %i.ku = mul nuw nsw i32 %i.kn, 77
  %i.kv = mul nuw nsw i32 %i.kq, 150
  %i.kw = add nuw nsw i32 %i.kv, %i.ku
  %i.kx = mul nuw nsw i32 %i.kt, 29
  %i.ky = add nuw nsw i32 %i.kw, %i.kx
  %i.kz = lshr i32 %i.ky, 8
  %i.la = trunc nuw i32 %i.kz to i16
  store i16 %i.la, ptr %i.ir, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 -1, ptr %i.lb, align 2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  br label %.lr.ph215.i.i.i.prol.loopexit

.lr.ph215.i.i.i.prol.loopexit:                    ; preds = %.lr.ph215.i.i.i.prol, %.lr.ph215.i.i.i.preheader
  %.8164214.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph215.i.i.i.preheader ], [ %.8164.i.i.i.prol, %.lr.ph215.i.i.i.prol ]
  %.8213.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph215.i.i.i.preheader ], [ %i.ld, %.lr.ph215.i.i.i.prol ]
  %.8150212.i.i.i.unr = phi ptr [ %i.io, %.lr.ph215.i.i.i.preheader ], [ %i.lc, %.lr.ph215.i.i.i.prol ]
  br i1 %i.hh, label %.loopexit.i.i.i, label %.lr.ph215.i.i.i

.preheader186.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph220.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph220.i.i.i.preheader:                        ; preds = %.preheader186.i.i.i
  br i1 %lcmp.mod109.not, label %.lr.ph220.i.i.i.prol.loopexit, label %.lr.ph220.i.i.i.prol

.lr.ph220.i.i.i.prol:                             ; preds = %.lr.ph220.i.i.i.preheader
  %i.le = load i16, ptr %i.io, align 2
  %i.lf = zext i16 %i.le to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.lh = load i16, ptr %i.lg, align 2
  %i.li = zext i16 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = zext i16 %i.lk to i32
  %i.lm = mul nuw nsw i32 %i.lf, 77
  %i.ln = mul nuw nsw i32 %i.li, 150
  %i.lo = add nuw nsw i32 %i.ln, %i.lm
  %i.lp = mul nuw nsw i32 %i.ll, 29
  %i.lq = add nuw nsw i32 %i.lo, %i.lp
  %i.lr = lshr i32 %i.lq, 8
  %i.ls = trunc nuw i32 %i.lr to i16
  store i16 %i.ls, ptr %i.ir, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  br label %.lr.ph220.i.i.i.prol.loopexit

.lr.ph220.i.i.i.prol.loopexit:                    ; preds = %.lr.ph220.i.i.i.prol, %.lr.ph220.i.i.i.preheader
  %.7163219.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph220.i.i.i.preheader ], [ %.7163.i.i.i.prol, %.lr.ph220.i.i.i.prol ]
  %.7218.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph220.i.i.i.preheader ], [ %i.lu, %.lr.ph220.i.i.i.prol ]
  %.7149217.i.i.i.unr = phi ptr [ %i.io, %.lr.ph220.i.i.i.preheader ], [ %i.lt, %.lr.ph220.i.i.i.prol ]
  br i1 %i.hi, label %.loopexit.i.i.i, label %.lr.ph220.i.i.i

.preheader184.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph225.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph225.i.i.i.preheader:                        ; preds = %.preheader184.i.i.i
  br i1 %lcmp.mod112.not, label %.lr.ph225.i.i.i.prol.loopexit, label %.lr.ph225.i.i.i.prol

.lr.ph225.i.i.i.prol:                             ; preds = %.lr.ph225.i.i.i.preheader
  %i.lv = load i16, ptr %i.io, align 2
  store i16 %i.lv, ptr %i.ir, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.lx = load i16, ptr %i.lw, align 2
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 %i.lx, ptr %i.ly, align 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ma = load i16, ptr %i.lz, align 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 %i.ma, ptr %i.mb, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ir, i64 6
  store i16 -1, ptr %i.mc, align 2
  %i.md = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.me = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  br label %.lr.ph225.i.i.i.prol.loopexit

.lr.ph225.i.i.i.prol.loopexit:                    ; preds = %.lr.ph225.i.i.i.prol, %.lr.ph225.i.i.i.preheader
  %.6162224.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph225.i.i.i.preheader ], [ %.6162.i.i.i.prol, %.lr.ph225.i.i.i.prol ]
  %.6223.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph225.i.i.i.preheader ], [ %i.me, %.lr.ph225.i.i.i.prol ]
  %.6148222.i.i.i.unr = phi ptr [ %i.io, %.lr.ph225.i.i.i.preheader ], [ %i.md, %.lr.ph225.i.i.i.prol ]
  br i1 %i.hj, label %.loopexit.i.i.i, label %.lr.ph225.i.i.i

.preheader182.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph230.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph230.i.i.i.preheader:                        ; preds = %.preheader182.i.i.i
  br i1 %lcmp.mod115.not, label %.lr.ph230.i.i.i.prol.loopexit, label %.lr.ph230.i.i.i.prol

.lr.ph230.i.i.i.prol:                             ; preds = %.lr.ph230.i.i.i.preheader
  %i.mf = load i16, ptr %i.io, align 2            ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 %i.mf, ptr %i.mg, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 %i.mf, ptr %i.mh, align 2
  store i16 %i.mf, ptr %i.ir, align 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.mj = load i16, ptr %i.mi, align 2
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ir, i64 6
  store i16 %i.mj, ptr %i.mk, align 2
  %i.ml = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  br label %.lr.ph230.i.i.i.prol.loopexit

.lr.ph230.i.i.i.prol.loopexit:                    ; preds = %.lr.ph230.i.i.i.prol, %.lr.ph230.i.i.i.preheader
  %.5161229.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph230.i.i.i.preheader ], [ %.5161.i.i.i.prol, %.lr.ph230.i.i.i.prol ]
  %.5228.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph230.i.i.i.preheader ], [ %i.mm, %.lr.ph230.i.i.i.prol ]
  %.5147227.i.i.i.unr = phi ptr [ %i.io, %.lr.ph230.i.i.i.preheader ], [ %i.ml, %.lr.ph230.i.i.i.prol ]
  br i1 %i.hk, label %.loopexit.i.i.i, label %.lr.ph230.i.i.i

.preheader180.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph235.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph235.i.i.i.preheader:                        ; preds = %.preheader180.i.i.i
  br i1 %lcmp.mod118.not, label %.lr.ph235.i.i.i.prol.loopexit, label %.lr.ph235.i.i.i.prol

.lr.ph235.i.i.i.prol:                             ; preds = %.lr.ph235.i.i.i.preheader, %.lr.ph235.i.i.i.prol
  %.4160234.i.i.i.prol = phi i32 [ %.4160.i.i.i.prol, %.lr.ph235.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph235.i.i.i.preheader ]
  %.4233.i.i.i.prol = phi ptr [ %i.mr, %.lr.ph235.i.i.i.prol ], [ %i.ir, %.lr.ph235.i.i.i.preheader ] ; 4 uses
  %.4146232.i.i.i.prol = phi ptr [ %i.mq, %.lr.ph235.i.i.i.prol ], [ %i.io, %.lr.ph235.i.i.i.preheader ] ; 2 uses
  %prol.iter119 = phi i32 [ %prol.iter119.next, %.lr.ph235.i.i.i.prol ], [ 0, %.lr.ph235.i.i.i.preheader ]
  %i.mn = load i16, ptr %.4146232.i.i.i.prol, align 2 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 4
  store i16 %i.mn, ptr %i.mo, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 2
  store i16 %i.mn, ptr %i.mp, align 2
  store i16 %i.mn, ptr %.4233.i.i.i.prol, align 2
  %i.mq = getelementptr inbounds nuw i8, ptr %.4146232.i.i.i.prol, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 6 ; 2 uses
  %.4160.i.i.i.prol = add nsw i32 %.4160234.i.i.i.prol, -1 ; 2 uses
  %prol.iter119.next = add i32 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i32 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph235.i.i.i.prol.loopexit, label %.lr.ph235.i.i.i.prol, !llvm.loop !141

.lr.ph235.i.i.i.prol.loopexit:                    ; preds = %.lr.ph235.i.i.i.prol, %.lr.ph235.i.i.i.preheader
  %.4160234.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph235.i.i.i.preheader ], [ %.4160.i.i.i.prol, %.lr.ph235.i.i.i.prol ]
  %.4233.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph235.i.i.i.preheader ], [ %i.mr, %.lr.ph235.i.i.i.prol ]
  %.4146232.i.i.i.unr = phi ptr [ %i.io, %.lr.ph235.i.i.i.preheader ], [ %i.mq, %.lr.ph235.i.i.i.prol ]
  br i1 %i.hl, label %.loopexit.i.i.i, label %.lr.ph235.i.i.i

.preheader178.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph240.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph240.i.i.i.preheader:                        ; preds = %.preheader178.i.i.i
  br i1 %min.iters.check61, label %.lr.ph240.i.i.i.preheader80, label %vector.memcheck50

.lr.ph240.i.i.i.preheader80:                      ; preds = %vector.body64, %vector.memcheck50, %.lr.ph240.i.i.i.preheader
  %.3159239.i.i.i.ph = phi i32 [ %.11167197.i.i.i, %vector.memcheck50 ], [ %.11167197.i.i.i, %.lr.ph240.i.i.i.preheader ], [ %i.hr, %vector.body64 ] ; 4 uses
  %.3238.i.i.i.ph = phi ptr [ %i.ir, %vector.memcheck50 ], [ %i.ir, %.lr.ph240.i.i.i.preheader ], [ %i.mx, %vector.body64 ] ; 2 uses
  %.3145237.i.i.i.ph = phi ptr [ %i.io, %vector.memcheck50 ], [ %i.io, %.lr.ph240.i.i.i.preheader ], [ %i.my, %vector.body64 ] ; 2 uses
  %i.ms = add i32 %.3159239.i.i.i.ph, 1
  %xtraiter120 = and i32 %i.ms, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i32 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph240.i.i.i.prol.loopexit, label %.lr.ph240.i.i.i.prol

.lr.ph240.i.i.i.prol:                             ; preds = %.lr.ph240.i.i.i.preheader80, %.lr.ph240.i.i.i.prol
  %.3159239.i.i.i.prol = phi i32 [ %.3159.i.i.i.prol, %.lr.ph240.i.i.i.prol ], [ %.3159239.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ]
  %.3238.i.i.i.prol = phi ptr [ %i.mv, %.lr.ph240.i.i.i.prol ], [ %.3238.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ] ; 2 uses
  %.3145237.i.i.i.prol = phi ptr [ %i.mu, %.lr.ph240.i.i.i.prol ], [ %.3145237.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ] ; 2 uses
  %prol.iter122 = phi i32 [ %prol.iter122.next, %.lr.ph240.i.i.i.prol ], [ 0, %.lr.ph240.i.i.i.preheader80 ]
  %i.mt = load i16, ptr %.3145237.i.i.i.prol, align 2
  store i16 %i.mt, ptr %.3238.i.i.i.prol, align 2
  %i.mu = getelementptr inbounds nuw i8, ptr %.3145237.i.i.i.prol, i64 4 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.3238.i.i.i.prol, i64 2 ; 2 uses
  %.3159.i.i.i.prol = add nsw i32 %.3159239.i.i.i.prol, -1 ; 2 uses
  %prol.iter122.next = add i32 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i32 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph240.i.i.i.prol.loopexit, label %.lr.ph240.i.i.i.prol, !llvm.loop !142

.lr.ph240.i.i.i.prol.loopexit:                    ; preds = %.lr.ph240.i.i.i.prol, %.lr.ph240.i.i.i.preheader80
  %.3159239.i.i.i.unr = phi i32 [ %.3159239.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ], [ %.3159.i.i.i.prol, %.lr.ph240.i.i.i.prol ]
  %.3238.i.i.i.unr = phi ptr [ %.3238.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ], [ %i.mv, %.lr.ph240.i.i.i.prol ]
  %.3145237.i.i.i.unr = phi ptr [ %.3145237.i.i.i.ph, %.lr.ph240.i.i.i.preheader80 ], [ %i.mu, %.lr.ph240.i.i.i.prol ]
  %i.mw = icmp ult i32 %.3159239.i.i.i.ph, 7
  br i1 %i.mw, label %.loopexit.i.i.i, label %.lr.ph240.i.i.i

vector.memcheck50:                                ; preds = %.lr.ph240.i.i.i.preheader
  %bound057 = icmp ult ptr %scevgep51, %scevgep56
  %bound158 = icmp ult ptr %scevgep54, %scevgep53
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %.lr.ph240.i.i.i.preheader80, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck50
  %i.mx = getelementptr i8, ptr %i.ir, i64 %i.hs
  %i.my = getelementptr i8, ptr %i.io, i64 %i.ht
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next71, %vector.body64 ] ; 3 uses
  %i.mz = shl i64 %index65, 1
  %next.gep66 = getelementptr i8, ptr %i.ir, i64 %i.mz ; 2 uses
  %i.na = shl i64 %index65, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.io, i64 %i.na
  %i.nb = getelementptr i8, ptr %i.io, i64 %i.na
  %next.gep68 = getelementptr i8, ptr %i.nb, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep67, align 2, !alias.scope !143
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec69 = load <8 x i16>, ptr %next.gep68, align 2, !alias.scope !143
  %strided.vec70 = shufflevector <8 x i16> %wide.vec69, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nc = getelementptr i8, ptr %next.gep66, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep66, align 2, !alias.scope !146, !noalias !143
  store <4 x i16> %strided.vec70, ptr %i.nc, align 2, !alias.scope !146, !noalias !143
  %index.next71 = add nuw i64 %index65, 8         ; 2 uses
  %i.nd = icmp eq i64 %index.next71, %n.vec63
  br i1 %i.nd, label %.lr.ph240.i.i.i.preheader80, label %vector.body64, !llvm.loop !148

.preheader176.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph245.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph245.i.i.i.preheader:                        ; preds = %.preheader176.i.i.i
  br i1 %lcmp.mod124.not, label %.lr.ph245.i.i.i.prol.loopexit, label %.lr.ph245.i.i.i.prol

.lr.ph245.i.i.i.prol:                             ; preds = %.lr.ph245.i.i.i.preheader, %.lr.ph245.i.i.i.prol
  %.2158244.i.i.i.prol = phi i32 [ %.2158.i.i.i.prol, %.lr.ph245.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph245.i.i.i.preheader ]
  %.2243.i.i.i.prol = phi ptr [ %i.ni, %.lr.ph245.i.i.i.prol ], [ %i.ir, %.lr.ph245.i.i.i.preheader ] ; 2 uses
  %.2144242.i.i.i.prol = phi ptr [ %i.nh, %.lr.ph245.i.i.i.prol ], [ %i.io, %.lr.ph245.i.i.i.preheader ] ; 2 uses
  %prol.iter125 = phi i32 [ %prol.iter125.next, %.lr.ph245.i.i.i.prol ], [ 0, %.lr.ph245.i.i.i.preheader ]
  %i.ne = load i16, ptr %.2144242.i.i.i.prol, align 2
  %i.nf = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.ne, i64 0
  %i.ng = shufflevector <4 x i16> %i.nf, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.ng, ptr %.2243.i.i.i.prol, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i.prol, i64 2 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.2243.i.i.i.prol, i64 8 ; 2 uses
  %.2158.i.i.i.prol = add nsw i32 %.2158244.i.i.i.prol, -1 ; 2 uses
  %prol.iter125.next = add i32 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i32 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph245.i.i.i.prol.loopexit, label %.lr.ph245.i.i.i.prol, !llvm.loop !149

.lr.ph245.i.i.i.prol.loopexit:                    ; preds = %.lr.ph245.i.i.i.prol, %.lr.ph245.i.i.i.preheader
  %.2158244.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph245.i.i.i.preheader ], [ %.2158.i.i.i.prol, %.lr.ph245.i.i.i.prol ]
  %.2243.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph245.i.i.i.preheader ], [ %i.ni, %.lr.ph245.i.i.i.prol ]
  %.2144242.i.i.i.unr = phi ptr [ %i.io, %.lr.ph245.i.i.i.preheader ], [ %i.nh, %.lr.ph245.i.i.i.prol ]
  br i1 %i.hu, label %.loopexit.i.i.i, label %.lr.ph245.i.i.i

.preheader174.i.i.i:                              ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph250.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph250.i.i.i.preheader:                        ; preds = %.preheader174.i.i.i
  br i1 %lcmp.mod127.not, label %.lr.ph250.i.i.i.prol.loopexit, label %.lr.ph250.i.i.i.prol

.lr.ph250.i.i.i.prol:                             ; preds = %.lr.ph250.i.i.i.preheader, %.lr.ph250.i.i.i.prol
  %.1157249.i.i.i.prol = phi i32 [ %.1157.i.i.i.prol, %.lr.ph250.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph250.i.i.i.preheader ]
  %.1248.i.i.i.prol = phi ptr [ %i.nn, %.lr.ph250.i.i.i.prol ], [ %i.ir, %.lr.ph250.i.i.i.preheader ] ; 4 uses
  %.1143247.i.i.i.prol = phi ptr [ %i.nm, %.lr.ph250.i.i.i.prol ], [ %i.io, %.lr.ph250.i.i.i.preheader ] ; 2 uses
  %prol.iter128 = phi i32 [ %prol.iter128.next, %.lr.ph250.i.i.i.prol ], [ 0, %.lr.ph250.i.i.i.preheader ]
  %i.nj = load i16, ptr %.1143247.i.i.i.prol, align 2 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 4
  store i16 %i.nj, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 2
  store i16 %i.nj, ptr %i.nl, align 2
  store i16 %i.nj, ptr %.1248.i.i.i.prol, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i.prol, i64 2 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 6 ; 2 uses
  %.1157.i.i.i.prol = add nsw i32 %.1157249.i.i.i.prol, -1 ; 2 uses
  %prol.iter128.next = add i32 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i32 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph250.i.i.i.prol.loopexit, label %.lr.ph250.i.i.i.prol, !llvm.loop !150

.lr.ph250.i.i.i.prol.loopexit:                    ; preds = %.lr.ph250.i.i.i.prol, %.lr.ph250.i.i.i.preheader
  %.1157249.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph250.i.i.i.preheader ], [ %.1157.i.i.i.prol, %.lr.ph250.i.i.i.prol ]
  %.1248.i.i.i.unr = phi ptr [ %i.ir, %.lr.ph250.i.i.i.preheader ], [ %i.nn, %.lr.ph250.i.i.i.prol ]
  %.1143247.i.i.i.unr = phi ptr [ %i.io, %.lr.ph250.i.i.i.preheader ], [ %i.nm, %.lr.ph250.i.i.i.prol ]
  br i1 %i.hv, label %.loopexit.i.i.i, label %.lr.ph250.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bf
  br i1 %i.gy, label %.lr.ph255.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph255.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  br i1 %min.iters.check34, label %.lr.ph255.i.i.i.preheader76, label %vector.ph35

vector.ph35:                                      ; preds = %.lr.ph255.i.i.i.preheader
  %i.no = getelementptr i8, ptr %i.ir, i64 %i.hz
  %i.np = getelementptr i8, ptr %i.io, i64 %i.ia
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next44, %vector.body37 ] ; 3 uses
  %i.nq = shl i64 %index38, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ir, i64 %i.nq
  %i.nr = getelementptr i8, ptr %i.ir, i64 %i.nq
  %next.gep39 = getelementptr i8, ptr %i.nr, i64 16
  %i.ns = shl i64 %index38, 1
  %next.gep40 = getelementptr i8, ptr %i.io, i64 %i.ns ; 2 uses
  %i.nt = getelementptr i8, ptr %next.gep40, i64 8
  %wide.load41 = load <4 x i16>, ptr %next.gep40, align 2
  %wide.load42 = load <4 x i16>, ptr %i.nt, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load41, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec43 = shufflevector <4 x i16> %wide.load42, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec43, ptr %next.gep39, align 2
  %index.next44 = add nuw i64 %index38, 8         ; 2 uses
  %i.nu = icmp eq i64 %index.next44, %n.vec36
  br i1 %i.nu, label %middle.block45, label %vector.body37, !llvm.loop !151

middle.block45:                                   ; preds = %vector.body37
  br i1 %cmp.n46, label %.loopexit.i.i.i, label %.lr.ph255.i.i.i.preheader76

.lr.ph255.i.i.i.preheader76:                      ; preds = %.lr.ph255.i.i.i.preheader, %middle.block45
  %.0156254.i.i.i.ph = phi i32 [ %.11167197.i.i.i, %.lr.ph255.i.i.i.preheader ], [ %i.hy, %middle.block45 ]
  %.0253.i.i.i.ph = phi ptr [ %i.ir, %.lr.ph255.i.i.i.preheader ], [ %i.no, %middle.block45 ]
  %.0142252.i.i.i.ph = phi ptr [ %i.io, %.lr.ph255.i.i.i.preheader ], [ %i.np, %middle.block45 ]
  br label %.lr.ph255.i.i.i

.lr.ph255.i.i.i:                                  ; preds = %.lr.ph255.i.i.i.preheader76, %.lr.ph255.i.i.i
  %.0156254.i.i.i = phi i32 [ %.0156.i.i.i, %.lr.ph255.i.i.i ], [ %.0156254.i.i.i.ph, %.lr.ph255.i.i.i.preheader76 ] ; 2 uses
  %.0253.i.i.i = phi ptr [ %i.ny, %.lr.ph255.i.i.i ], [ %.0253.i.i.i.ph, %.lr.ph255.i.i.i.preheader76 ] ; 3 uses
  %.0142252.i.i.i = phi ptr [ %i.nx, %.lr.ph255.i.i.i ], [ %.0142252.i.i.i.ph, %.lr.ph255.i.i.i.preheader76 ] ; 2 uses
  %i.nv = load i16, ptr %.0142252.i.i.i, align 2
  store i16 %i.nv, ptr %.0253.i.i.i, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.0253.i.i.i, i64 2
  store i16 -1, ptr %i.nw, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.0142252.i.i.i, i64 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.0253.i.i.i, i64 4
  %.0156.i.i.i = add nsw i32 %.0156254.i.i.i, -1
  %.not293.i.i.i = icmp eq i32 %.0156254.i.i.i, 0
  br i1 %.not293.i.i.i, label %.loopexit.i.i.i, label %.lr.ph255.i.i.i, !llvm.loop !152

.lr.ph250.i.i.i:                                  ; preds = %.lr.ph250.i.i.i.prol.loopexit, %.lr.ph250.i.i.i
  %.1157249.i.i.i = phi i32 [ %.1157.i.i.i.3, %.lr.ph250.i.i.i ], [ %.1157249.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 2 uses
  %.1248.i.i.i = phi ptr [ %i.os, %.lr.ph250.i.i.i ], [ %.1248.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 13 uses
  %.1143247.i.i.i = phi ptr [ %i.or, %.lr.ph250.i.i.i ], [ %.1143247.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 5 uses
  %i.nz = load i16, ptr %.1143247.i.i.i, align 2  ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 4
  store i16 %i.nz, ptr %i.oa, align 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 2
  store i16 %i.nz, ptr %i.ob, align 2
  store i16 %i.nz, ptr %.1248.i.i.i, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 6
  %i.oe = load i16, ptr %i.oc, align 2            ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 10
  store i16 %i.oe, ptr %i.of, align 2
  %i.og = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 8
  store i16 %i.oe, ptr %i.og, align 2
  store i16 %i.oe, ptr %i.od, align 2
  %i.oh = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 12
  %i.oj = load i16, ptr %i.oh, align 2            ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 16
  store i16 %i.oj, ptr %i.ok, align 2
  %i.ol = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 14
  store i16 %i.oj, ptr %i.ol, align 2
  store i16 %i.oj, ptr %i.oi, align 2
  %i.om = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 6
  %i.on = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 18
  %i.oo = load i16, ptr %i.om, align 2            ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 22
  store i16 %i.oo, ptr %i.op, align 2
  %i.oq = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 20
  store i16 %i.oo, ptr %i.oq, align 2
  store i16 %i.oo, ptr %i.on, align 2
  %i.or = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 24
  %.1157.i.i.i.3 = add nsw i32 %.1157249.i.i.i, -4
  %.not292.i.i.i.3 = icmp eq i32 %.1157249.i.i.i, 3
  br i1 %.not292.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph250.i.i.i

.lr.ph245.i.i.i:                                  ; preds = %.lr.ph245.i.i.i.prol.loopexit, %.lr.ph245.i.i.i
  %.2158244.i.i.i = phi i32 [ %.2158.i.i.i.3, %.lr.ph245.i.i.i ], [ %.2158244.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 2 uses
  %.2243.i.i.i = phi ptr [ %i.pm, %.lr.ph245.i.i.i ], [ %.2243.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 5 uses
  %.2144242.i.i.i = phi ptr [ %i.pl, %.lr.ph245.i.i.i ], [ %.2144242.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 5 uses
  %i.ot = load i16, ptr %.2144242.i.i.i, align 2
  %i.ou = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.ot, i64 0
  %i.ov = shufflevector <4 x i16> %i.ou, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.ov, ptr %.2243.i.i.i, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 8
  %i.oy = load i16, ptr %i.ow, align 2
  %i.oz = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.oy, i64 0
  %i.pa = shufflevector <4 x i16> %i.oz, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.pa, ptr %i.ox, align 2
  %i.pb = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 16
  %i.pd = load i16, ptr %i.pb, align 2
  %i.pe = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.pd, i64 0
  %i.pf = shufflevector <4 x i16> %i.pe, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.pf, ptr %i.pc, align 2
  %i.pg = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 6
  %i.ph = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 24
end_hunk_0
begin_hunk_1_@stbi__load_main:bb.a
  store <2 x ptr> %i.abq, ptr %i.d, align 8
  br i1 %.not, label %bb.bv, label %bb.ha

bb.bv:                                            ; preds = %stbi__bmp_test.exit.thread50, %stbi__bmp_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.abr = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 255, ptr %i.abr, align 4
  %i.abs = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %7)
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %stbi__bmp_load.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.abv = load i32, ptr %i.abu, align 4          ; 2 uses
  %i.abw = icmp sgt i32 %i.abv, 0
  %i.abx = tail call i32 @llvm.abs.i32(i32 %i.abv, i1 true) ; 2 uses
  store i32 %i.abx, ptr %i.abu, align 4
  %i.aby = icmp samesign ugt i32 %i.abx, 16777216
  br i1 %i.aby, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.by:                                            ; preds = %bb.bw
  %i.abz = load i32, ptr %0, align 8
  %i.aca = icmp ugt i32 %i.abz, 16777216
  br i1 %i.aca, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ca:                                            ; preds = %bb.by
  %i.acb = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.acc = load i32, ptr %i.acb, align 4          ; 5 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ace = load i32, ptr %i.acd, align 4          ; 5 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.acg = load i32, ptr %i.acf, align 4          ; 5 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aci = load i32, ptr %i.ach, align 4          ; 7 uses
  %i.acj = load i32, ptr %i.abr, align 4          ; 6 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.acl = load i32, ptr %i.ack, align 4          ; 4 uses
  %i.acm = icmp eq i32 %i.acl, 12                 ; 3 uses
  %i.acn = load i32, ptr %7, align 4              ; 4 uses
  br i1 %i.acm, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.aco = icmp slt i32 %i.acn, 24
  br i1 %i.aco, label %bb.cc, label %.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.acp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.acq = load i32, ptr %i.acp, align 4          ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.acs = load i32, ptr %i.acr, align 4
  %i.act = add i32 %i.acq, -24
  %i.acu = sub i32 %i.act, %i.acs
  %i.acv = sdiv i32 %i.acu, 3
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.acw = icmp slt i32 %i.acn, 16
  br i1 %i.acw, label %bb.ce, label %.thread.i

bb.ce:                                            ; preds = %bb.cd
  %i.acx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.acy = load i32, ptr %i.acx, align 4          ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ada = load i32, ptr %i.acz, align 4
  %i.adb = add i32 %i.acl, %i.ada
  %i.adc = sub i32 %i.acy, %i.adb
  %i.add = ashr i32 %i.adc, 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.ade = phi i32 [ %i.acq, %bb.cc ], [ %i.acy, %bb.ce ]
  %.0332.i = phi i32 [ %i.acv, %bb.cc ], [ %i.add, %bb.ce ] ; 2 uses
  %i.adf = icmp eq i32 %.0332.i, 0
  br i1 %i.adf, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cf
  %i.adg = icmp eq i32 %i.aci, -16777216
  br label %bb.cl

.thread.i:                                        ; preds = %bb.cf, %bb.cd, %bb.cb
  %i.adh = load i32, ptr %i.l, align 8
  %i.adi = load ptr, ptr %i.d, align 8
  %i.adj = load ptr, ptr %i.k, align 8
  %i.adk = ptrtoint ptr %i.adi to i64
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = sub i64 %i.adk, %i.adl
  %i.adn = trunc i64 %i.adm to i32
  %i.ado = add nsw i32 %i.adh, %i.adn             ; 3 uses
  %i.adp = add i32 %i.ado, -1025
  %or.cond378.i = icmp ult i32 %i.adp, -1024
  br i1 %or.cond378.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i
  store ptr @.str.110, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ch:                                            ; preds = %.thread.i
  %i.adq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.adr = load i32, ptr %i.adq, align 4          ; 4 uses
  %i.ads = icmp slt i32 %i.adr, %i.ado
  br i1 %i.ads, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.adt = sub nsw i32 %i.adr, %i.ado             ; 2 uses
  %i.adu = icmp sgt i32 %i.adt, 1024
  br i1 %i.adu, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr @.str.111, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ck:                                            ; preds = %bb.ci
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.adt)
  %i.adv = icmp eq i32 %i.acn, 24
  %i.adw = icmp eq i32 %i.aci, -16777216          ; 2 uses
  %or.cond.i = select i1 %i.adv, i1 %i.adw, i1 false
  br i1 %or.cond.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread238.i
  %i.adx = phi i1 [ %i.adg, %.thread238.i ], [ %i.adw, %bb.ck ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.ck ]
  %i.ady = phi i1 [ false, %.thread238.i ], [ true, %bb.ck ]
  %i.adz = phi i32 [ %i.ade, %.thread238.i ], [ %i.adr, %bb.ck ]
  %.not.i = icmp eq i32 %i.aci, 0
  %i.aea = select i1 %.not.i, i32 3, i32 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.aeb = phi i1 [ %i.adx, %bb.cl ], [ true, %bb.ck ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cl ], [ 0, %bb.ck ] ; 4 uses
  %i.aec = phi i1 [ %i.ady, %bb.cl ], [ true, %bb.ck ]
  %i.aed = phi i32 [ %i.acn, %bb.cl ], [ 24, %bb.ck ] ; 6 uses
  %i.aee = phi i32 [ %i.adz, %bb.cl ], [ %i.adr, %bb.ck ] ; 3 uses
  %i.aef = phi i32 [ %i.aea, %bb.cl ], [ 3, %bb.ck ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.aef, ptr %i.aeg, align 8
  %.not367.i = icmp eq i32 %4, 0
  %i.aeh = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.aeh, i32 %4, i32 %i.aef ; 11 uses
  %i.aei = load i32, ptr %0, align 8              ; 5 uses
  %i.aej = load i32, ptr %i.abu, align 4          ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.aei, -1
  br i1 %or.cond.not.i.i.i, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.aek = icmp eq i32 %i.aei, 0                  ; 2 uses
  br i1 %i.aek, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.cn
  %i.ael = udiv i32 2147483647, %i.aei
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.ael
  br i1 %.not23.i.i, label %bb.cp, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.cn
  %i.aem = mul nuw nsw i32 %i.aei, %spec.select.i ; 4 uses
  %i.aen = or i32 %i.aej, %i.aem
  %or.cond.not.i10.i.i = icmp sgt i32 %i.aen, -1
  br i1 %or.cond.not.i10.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.aeo = icmp eq i32 %i.aej, 0                  ; 2 uses
  br i1 %i.aeo, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.co
  %i.aep = udiv i32 2147483647, %i.aej
  %.not.i.i37 = icmp samesign ugt i32 %i.aem, %i.aep
  br i1 %.not.i.i37, label %bb.cp, label %stbi__mad3sizes_valid.exit.i

bb.cp:                                            ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.cm
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.co
  br i1 %i.aek, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %stbi__mad3sizes_valid.exit.i
  %i.aeq = udiv i32 2147483647, %i.aei
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.aeq
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %stbi__mad3sizes_valid.exit.i
  br i1 %i.aeo, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.aer = udiv i32 2147483647, %i.aej
  %.not.i.i.i38 = icmp samesign ugt i32 %i.aem, %i.aer
  br i1 %.not.i.i.i38, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.aes = mul nsw i32 %i.aem, %i.aej
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.aet) #53 ; 32 uses
  %.not369.i = icmp eq ptr %i.aeu, null
  br i1 %.not369.i, label %stbi__malloc_mad3.exit.thread.i, label %bb.cq

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.cq:                                            ; preds = %stbi__malloc_mad3.exit.i
  %i.aev = icmp slt i32 %i.aed, 16
  br i1 %i.aev, label %bb.cr, label %bb.ff

bb.cr:                                            ; preds = %bb.cq
  %i.aew = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.aec, %i.aew
  br i1 %or.cond7.i, label %bb.cs, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cr
  %i.aex = icmp sgt i32 %.03322241.i, 0
  br i1 %i.aex, label %.lr.ph66.i, label %._crit_edge.i40

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %.pre116.i = load ptr, ptr %i.e, align 8        ; 2 uses
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @free(ptr noundef nonnull %i.aeu) #52
  store ptr @.str.112, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ct:                                            ; preds = %stbi__get8.exit402.i, %.lr.ph66.i
  %i.aey = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.air, %stbi__get8.exit402.i ] ; 2 uses
  %i.aez = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ais, %stbi__get8.exit402.i ]
  %i.afa = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ait, %stbi__get8.exit402.i ] ; 3 uses
  %i.afb = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.aiu, %stbi__get8.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %stbi__get8.exit402.i ] ; 2 uses
  %i.afc = icmp ult ptr %i.afb, %i.afa
  br i1 %i.afc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 1 ; 3 uses
  store ptr %i.afd, ptr %i.d, align 8
  %i.afe = load i8, ptr %i.afb, align 1
  br label %stbi__get8.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.aff = load i32, ptr %i.f, align 8
  %.not.i383.i = icmp eq i32 %i.aff, 0
  br i1 %.not.i383.i, label %stbi__get8.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.afg = load ptr, ptr %i.g, align 8
  %i.afh = load ptr, ptr %i.h, align 8
  %i.afi = load i32, ptr %i.j, align 4
  %i.afj = tail call i32 %i.afg(ptr noundef %i.afh, ptr noundef nonnull %i.i, i32 noundef %i.afi) #52, !inline_history !155 ; 2 uses
  %i.afk = load ptr, ptr %i.d, align 8
  %i.afl = load ptr, ptr %i.k, align 8
  %i.afm = ptrtoint ptr %i.afk to i64
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = sub i64 %i.afm, %i.afn
  %i.afp = trunc i64 %i.afo to i32
  %i.afq = load i32, ptr %i.l, align 8
  %i.afr = add nsw i32 %i.afq, %i.afp
  store i32 %i.afr, ptr %i.l, align 8
  %i.afs = icmp eq i32 %i.afj, 0
  br i1 %i.afs, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.aft = sext i32 %i.afj to i64
  %i.afu = getelementptr inbounds i8, ptr %i.i, i64 %i.aft
  %.pre.i.i41 = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.cy, %bb.cx
  %i.afv = phi i8 [ 0, %bb.cx ], [ %.pre.i.i41, %bb.cy ]
  %.sink.i.i.i = phi ptr [ %i.m, %bb.cx ], [ %i.afu, %bb.cy ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.cv, %bb.cu
  %i.afw = phi ptr [ %i.aey, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.aey, %bb.cv ] ; 2 uses
  %i.afx = phi ptr [ %i.afd, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.aez, %bb.cv ]
  %i.afy = phi ptr [ %i.afa, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.afa, %bb.cv ] ; 3 uses
  %i.afz = phi ptr [ %i.afd, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.afb, %bb.cv ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.afe, %bb.cu ], [ %i.afv, %stbi__refill_buffer.exit.i.i ], [ 0, %bb.cv ]
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 2
  store i8 %.0.i384.i, ptr %i.agb, align 2
  %i.agc = icmp ult ptr %i.afz, %i.afy
  br i1 %i.agc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %stbi__get8.exit.i
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afz, i64 1 ; 3 uses
  store ptr %i.agd, ptr %i.d, align 8
  %i.age = load i8, ptr %i.afz, align 1
  br label %stbi__get8.exit390.i

bb.da:                                            ; preds = %stbi__get8.exit.i
  %i.agf = load i32, ptr %i.f, align 8
  %.not.i385.i = icmp eq i32 %i.agf, 0
  br i1 %.not.i385.i, label %stbi__get8.exit390.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.agg = load ptr, ptr %i.g, align 8
  %i.agh = load ptr, ptr %i.h, align 8
  %i.agi = load i32, ptr %i.j, align 4
  %i.agj = tail call i32 %i.agg(ptr noundef %i.agh, ptr noundef nonnull %i.i, i32 noundef %i.agi) #52, !inline_history !155 ; 2 uses
  %i.agk = load ptr, ptr %i.d, align 8
  %i.agl = load ptr, ptr %i.k, align 8
  %i.agm = ptrtoint ptr %i.agk to i64
  %i.agn = ptrtoint ptr %i.agl to i64
  %i.ago = sub i64 %i.agm, %i.agn
  %i.agp = trunc i64 %i.ago to i32
  %i.agq = load i32, ptr %i.l, align 8
  %i.agr = add nsw i32 %i.agq, %i.agp
  store i32 %i.agr, ptr %i.l, align 8
  %i.ags = icmp eq i32 %i.agj, 0
  br i1 %i.ags, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

bb.dd:                                            ; preds = %bb.db
  %i.agt = sext i32 %i.agj to i64
  %i.agu = getelementptr inbounds i8, ptr %i.i, i64 %i.agt
  %.pre.i386.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

stbi__refill_buffer.exit.i387.i:                  ; preds = %bb.dd, %bb.dc
  %i.agv = phi i8 [ 0, %bb.dc ], [ %.pre.i386.i, %bb.dd ]
  %.sink.i.i388.i = phi ptr [ %i.m, %bb.dc ], [ %i.agu, %bb.dd ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit390.i

stbi__get8.exit390.i:                             ; preds = %stbi__refill_buffer.exit.i387.i, %bb.da, %bb.cz
  %i.agw = phi ptr [ %i.afw, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.afw, %bb.da ] ; 2 uses
  %i.agx = phi ptr [ %i.agd, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.afx, %bb.da ]
  %i.agy = phi ptr [ %i.afy, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.afy, %bb.da ] ; 3 uses
  %i.agz = phi ptr [ %i.agd, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.afz, %bb.da ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.age, %bb.cz ], [ %i.agv, %stbi__refill_buffer.exit.i387.i ], [ 0, %bb.da ]
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  store i8 %.0.i389.i, ptr %i.aha, align 1
  %i.ahb = icmp ult ptr %i.agz, %i.agy
  br i1 %i.ahb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %stbi__get8.exit390.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 1 ; 3 uses
  store ptr %i.ahc, ptr %i.d, align 8
  %i.ahd = load i8, ptr %i.agz, align 1
  br label %stbi__get8.exit396.i

bb.df:                                            ; preds = %stbi__get8.exit390.i
  %i.ahe = load i32, ptr %i.f, align 8
  %.not.i391.i = icmp eq i32 %i.ahe, 0
  br i1 %.not.i391.i, label %stbi__get8.exit396.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ahf = load ptr, ptr %i.g, align 8
  %i.ahg = load ptr, ptr %i.h, align 8
  %i.ahh = load i32, ptr %i.j, align 4
  %i.ahi = tail call i32 %i.ahf(ptr noundef %i.ahg, ptr noundef nonnull %i.i, i32 noundef %i.ahh) #52, !inline_history !155 ; 2 uses
  %i.ahj = load ptr, ptr %i.d, align 8
  %i.ahk = load ptr, ptr %i.k, align 8
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = ptrtoint ptr %i.ahk to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = trunc i64 %i.ahn to i32
  %i.ahp = load i32, ptr %i.l, align 8
  %i.ahq = add nsw i32 %i.ahp, %i.aho
  store i32 %i.ahq, ptr %i.l, align 8
  %i.ahr = icmp eq i32 %i.ahi, 0
  br i1 %i.ahr, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

bb.di:                                            ; preds = %bb.dg
  %i.ahs = sext i32 %i.ahi to i64
  %i.aht = getelementptr inbounds i8, ptr %i.i, i64 %i.ahs
  %.pre.i392.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

stbi__refill_buffer.exit.i393.i:                  ; preds = %bb.di, %bb.dh
  %i.ahu = phi i8 [ 0, %bb.dh ], [ %.pre.i392.i, %bb.di ]
  %.sink.i.i394.i = phi ptr [ %i.m, %bb.dh ], [ %i.aht, %bb.di ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit396.i
end_hunk_1
begin_hunk_2_@stbi__load_main:bb.a
  %i.azy = load i32, ptr %i.auf, align 4
  %i.azz = ashr i32 %i.azx, %i.azy
  %i.baa = trunc i32 %i.azz to i8
  %i.bab = sext i32 %.356.i to i64
  %i.bac = getelementptr inbounds i8, ptr %i.aeu, i64 %i.bab ; 3 uses
  store i8 %i.baa, ptr %i.bac, align 1
  %i.bad = and i32 %i.azr, %i.ace                 ; 2 uses
  %i.bae = shl i32 %i.bad, %i.auh
  %i.baf = lshr i32 %i.bad, %.0297.i
  %.0.i466.i = select i1 %i.aug, i32 %i.bae, i32 %i.baf
  %i.bag = lshr i32 %.0.i466.i, %i.aui
  %i.bah = load i32, ptr %i.auk, align 4
  %i.bai = mul i32 %i.bah, %i.bag
  %i.baj = load i32, ptr %i.aul, align 4
  %i.bak = ashr i32 %i.bai, %i.baj
  %i.bal = trunc i32 %i.bak to i8
  %i.bam = getelementptr i8, ptr %i.bac, i64 1
  store i8 %i.bal, ptr %i.bam, align 1
  %i.ban = and i32 %i.azr, %i.acg                 ; 2 uses
  %i.bao = shl i32 %i.ban, %i.aun
  %i.bap = lshr i32 %i.ban, %.0296.i
  %.0.i467.i = select i1 %i.aum, i32 %i.bao, i32 %i.bap
  %i.baq = lshr i32 %.0.i467.i, %i.auo
  %i.bar = load i32, ptr %i.auq, align 4
  %i.bas = mul i32 %i.bar, %i.baq
  %i.bat = load i32, ptr %i.aur, align 4
  %i.bau = ashr i32 %i.bas, %i.bat
  %i.bav = trunc i32 %i.bau to i8
  %i.baw = add nsw i32 %.356.i, 3                 ; 2 uses
  %i.bax = getelementptr i8, ptr %i.bac, i64 2
  store i8 %i.bav, ptr %i.bax, align 1
  br i1 %.not372.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bay = and i32 %i.azr, %i.aci                 ; 2 uses
  %i.baz = shl i32 %i.bay, %i.aut
  %i.bba = lshr i32 %i.bay, %.0295.i
  %.0.i468.i = select i1 %i.aus, i32 %i.baz, i32 %i.bba
  %i.bbb = lshr i32 %.0.i468.i, %i.auu
  %i.bbc = load i32, ptr %i.auw, align 4
  %i.bbd = mul i32 %i.bbc, %i.bbb
  %i.bbe = load i32, ptr %i.aux, align 4
  %i.bbf = ashr i32 %i.bbd, %i.bbe
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.bbg = phi i32 [ %i.bbf, %bb.gp ], [ 255, %bb.go ] ; 2 uses
  %i.bbh = or i32 %i.bbg, %.233554.i              ; 2 uses
  br i1 %i.aty, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.bbi = trunc i32 %i.bbg to i8
  %i.bbj = add nsw i32 %.356.i, 4
  %i.bbk = sext i32 %i.baw to i64
  %i.bbl = getelementptr inbounds i8, ptr %i.aeu, i64 %i.bbk
  store i8 %i.bbi, ptr %i.bbl, align 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.4.i = phi i32 [ %i.bbj, %bb.gr ], [ %i.baw, %bb.gq ] ; 2 uses
  %i.bbm = add nuw nsw i32 %.432955.i, 1          ; 2 uses
  %i.bbn = load i32, ptr %0, align 8
  %i.bbo = icmp slt i32 %i.bbm, %i.bbn
  br i1 %i.bbo, label %.lr.ph57.i, label %.loopexit46.i

.loopexit46.i:                                    ; preds = %bb.gm, %bb.gs, %.preheader45.i, %.preheader47.i
  %.3336.i = phi i32 [ %i.bbh, %bb.gs ], [ %.033360.i, %.preheader45.i ], [ %.033360.i, %.preheader47.i ], [ %i.azg, %bb.gm ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.gs ], [ %.029062.i, %.preheader45.i ], [ %.029062.i, %.preheader47.i ], [ %.2.i, %bb.gm ]
  br i1 %i.auy, label %stbi__skip.exit474.i, label %bb.gt

bb.gt:                                            ; preds = %.loopexit46.i
  %i.bbp = load ptr, ptr %i.g, align 8
  %.not.i469.i = icmp eq ptr %i.bbp, null
  br i1 %.not.i469.i, label %..thread_crit_edge.i471.i, label %bb.gu

..thread_crit_edge.i471.i:                        ; preds = %bb.gt
  %.pre.i473.i = load ptr, ptr %i.d, align 8
  br label %.thread.i470.i

bb.gu:                                            ; preds = %bb.gt
  %i.bbq = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.bbr = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bbs = ptrtoint ptr %i.bbq to i64
  %i.bbt = ptrtoint ptr %i.bbr to i64
  %i.bbu = sub i64 %i.bbs, %i.bbt
  %i.bbv = trunc i64 %i.bbu to i32                ; 2 uses
  %i.bbw = icmp sgt i32 %i.atv, %i.bbv
  br i1 %i.bbw, label %bb.gv, label %.thread.i470.i

bb.gv:                                            ; preds = %bb.gu
  store ptr %i.bbq, ptr %i.d, align 8
  %i.bbx = load ptr, ptr %i.auz, align 8
  %i.bby = load ptr, ptr %i.h, align 8
  %i.bbz = sub nsw i32 %i.atv, %i.bbv
  tail call void %i.bbx(ptr noundef %i.bby, i32 noundef %i.bbz) #52, !inline_history !156
  br label %stbi__skip.exit474.i

.thread.i470.i:                                   ; preds = %bb.gu, %..thread_crit_edge.i471.i
  %i.bca = phi ptr [ %.pre.i473.i, %..thread_crit_edge.i471.i ], [ %i.bbr, %bb.gu ]
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 %i.ava
  store ptr %i.bcb, ptr %i.d, align 8
  br label %stbi__skip.exit474.i

stbi__skip.exit474.i:                             ; preds = %.thread.i470.i, %bb.gv, %.loopexit46.i
  %i.bcc = add nuw nsw i32 %.232361.i, 1          ; 2 uses
  %i.bcd = load i32, ptr %i.abu, align 4          ; 2 uses
  %i.bce = icmp slt i32 %i.bcc, %i.bcd
  br i1 %i.bce, label %bb.fp, label %.loopexit40.i

.loopexit40.i:                                    ; preds = %stbi__skip.exit474.i, %stbi__skip.exit434.i, %stbi__skip.exit.i, %.thread27.i, %.preheader39.i, %.preheader42.i
  %i.bcf = phi i32 [ %i.ajh, %.preheader42.i ], [ %i.aju, %.preheader39.i ], [ %i.anm, %stbi__skip.exit.i ], [ %i.arv, %stbi__skip.exit434.i ], [ %i.atw, %.thread27.i ], [ %i.bcd, %stbi__skip.exit474.i ] ; 5 uses
  %.5338.i = phi i32 [ %i.acj, %.preheader42.i ], [ %i.acj, %.preheader39.i ], [ %i.acj, %stbi__skip.exit.i ], [ %i.acj, %stbi__skip.exit434.i ], [ %i.acj, %.thread27.i ], [ %.3336.i, %stbi__skip.exit474.i ]
  %i.bcg = icmp eq i32 %spec.select.i, 4
  %i.bch = icmp eq i32 %.5338.i, 0
  %or.cond25.i = select i1 %i.bcg, i1 %i.bch, i1 false
  br i1 %or.cond25.i, label %bb.gw, label %.loopexit38.i

bb.gw:                                            ; preds = %.loopexit40.i
  %i.bci = load i32, ptr %0, align 8
  %i.bcj = shl i32 %i.bci, 2
  %i.bck = mul i32 %i.bcj, %i.bcf                 ; 2 uses
  %i.bcl = add i32 %i.bck, -4
  %i.bcm = icmp sgt i32 %i.bcl, -1
  br i1 %i.bcm, label %.lr.ph89.preheader.i, label %.loopexit38.i

.lr.ph89.preheader.i:                             ; preds = %bb.gw
  %i.bcn = add i32 %i.bck, -1                     ; 2 uses
  %i.bco = zext i32 %i.bcn to i64                 ; 3 uses
  %i.bcp = lshr i64 %i.bco, 2
  %i.bcq = add nuw nsw i64 %i.bcp, 1
  %xtraiter = and i64 %i.bcq, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.preheader.i, %.lr.ph89.i.prol
  %indvars.iv101.i.prol = phi i64 [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ], [ %i.bco, %.lr.ph89.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.preheader.i ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %indvars.iv101.i.prol
  store i8 -1, ptr %i.bcr, align 1
  %indvars.iv.next102.i.prol = add nsw i64 %indvars.iv101.i.prol, -4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !157

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.preheader.i
  %indvars.iv101.i.unr = phi i64 [ %i.bco, %.lr.ph89.preheader.i ], [ %indvars.iv.next102.i.prol, %.lr.ph89.i.prol ]
  %i.bcs = icmp ult i32 %i.bcn, 28
  br i1 %i.bcs, label %.loopexit38.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i.7, %.lr.ph89.i ], [ %indvars.iv101.i.unr, %.lr.ph89.i.prol.loopexit ] ; 10 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %indvars.iv101.i
  store i8 -1, ptr %i.bct, align 1
  %i.bcu = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bcv = getelementptr i8, ptr %i.bcu, i64 -4
  store i8 -1, ptr %i.bcv, align 1
  %i.bcw = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 -8
  store i8 -1, ptr %i.bcx, align 1
  %i.bcy = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 -12
  store i8 -1, ptr %i.bcz, align 1
  %i.bda = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bdb = getelementptr i8, ptr %i.bda, i64 -16
  store i8 -1, ptr %i.bdb, align 1
  %i.bdc = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 -20
  store i8 -1, ptr %i.bdd, align 1
  %i.bde = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bdf = getelementptr i8, ptr %i.bde, i64 -24
  store i8 -1, ptr %i.bdf, align 1
  %i.bdg = getelementptr i8, ptr %i.aeu, i64 %indvars.iv101.i
  %i.bdh = getelementptr i8, ptr %i.bdg, i64 -28
  store i8 -1, ptr %i.bdh, align 1
  %indvars.iv.next102.i.7 = add nsw i64 %indvars.iv101.i, -32
  %i.bdi = icmp sgt i64 %indvars.iv101.i, 31
  br i1 %i.bdi, label %.lr.ph89.i, label %.loopexit38.i

.loopexit38.i:                                    ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %bb.gw, %.loopexit40.i
  br i1 %i.abw, label %.preheader.i, label %.loopexit38..loopexit_crit_edge.i

.loopexit38..loopexit_crit_edge.i:                ; preds = %.loopexit38.i
  %.pre122.pre.i = load i32, ptr %0, align 8
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.loopexit38.i
  %i.bdj = ashr i32 %i.bcf, 1                     ; 2 uses
  %i.bdk = icmp sgt i32 %i.bdj, 0
  %.pre122.pre126.i = load i32, ptr %0, align 8   ; 5 uses
  br i1 %i.bdk, label %.lr.ph95.i, label %.loopexit.i

.lr.ph95.i:                                       ; preds = %.preheader.i
  %factor.op.mul.i = mul i32 %.pre122.pre126.i, %spec.select.i ; 7 uses
  %i.bdl = icmp sgt i32 %factor.op.mul.i, 0
  br i1 %i.bdl, label %.lr.ph92.preheader.i, label %.loopexit.i

.lr.ph92.preheader.i:                             ; preds = %.lr.ph95.i
  %wide.trip.count112.i = zext nneg i32 %i.bdj to i64
  %wide.trip.count107.i = zext nneg i32 %factor.op.mul.i to i64 ; 10 uses
  %scevgep19.a = getelementptr i8, ptr %i.aeu, i64 %wide.trip.count107.i
  %10 = mul i32 %spec.select.i, %.pre122.pre126.i
  %scevgep22 = getelementptr i8, ptr %i.aeu, i64 %wide.trip.count107.i
  %min.iters.check = icmp ult i32 %factor.op.mul.i, 4
  %min.iters.check24 = icmp ult i32 %factor.op.mul.i, 32
  %i.bdm = and i64 %wide.trip.count107.i, 28
  %n.vec = and i64 %wide.trip.count107.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107.i
  %min.epilog.iters.check = icmp eq i64 %i.bdm, 0
  %n.vec28 = and i64 %wide.trip.count107.i, 2147483644 ; 3 uses
  %cmp.n33 = icmp eq i64 %n.vec28, %wide.trip.count107.i
  %xtraiter96 = and i64 %wide.trip.count107.i, 1
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  %i.bdn = add nsw i64 %wide.trip.count107.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge93.i, %.lr.ph92.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph92.preheader.i ], [ %indvars.iv.next110.i, %._crit_edge93.i ] ; 4 uses
  %i.bdo = trunc nuw nsw i64 %indvars.iv109.i to i32 ; 2 uses
  %.reass.i = mul i32 %factor.op.mul.i, %i.bdo
  %i.bdp = zext i32 %.reass.i to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.bdp ; 5 uses
  %i.bdr = xor i32 %i.bdo, -1
  %i.bds = add i32 %i.bcf, %i.bdr
  %i.bdt = mul i32 %i.bds, %factor.op.mul.i
  %i.bdu = zext i32 %i.bdt to i64
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.bdu ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bdw = trunc i64 %indvars.iv109.i to i32
  %i.bdx = xor i32 %i.bdw, -1
  %i.bdy = add i32 %i.bcf, %i.bdx
  %i.bdz = mul i32 %10, %i.bdy
  %i.bea = zext i32 %i.bdz to i64                 ; 2 uses
  %scevgep23 = getelementptr i8, ptr %scevgep22, i64 %i.bea
  %scevgep21 = getelementptr nuw i8, ptr %i.aeu, i64 %i.bea
  %i.beb = trunc i64 %indvars.iv109.i to i32
  %i.bec = mul i32 %factor.op.mul.i, %i.beb
  %i.bed = zext i32 %i.bec to i64                 ; 2 uses
  %scevgep20 = getelementptr i8, ptr %scevgep19.a, i64 %i.bed
  %scevgep = getelementptr nuw i8, ptr %i.aeu, i64 %i.bed
  %bound0 = icmp ult ptr %scevgep, %scevgep23
  %bound1 = icmp ult ptr %scevgep21, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %index ; 3 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bee, align 1, !alias.scope !158, !noalias !161
  %wide.load25.a = load <16 x i8>, ptr %i.bef, align 1, !alias.scope !158, !noalias !161
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %index ; 3 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 16 ; 2 uses
  %wide.load26 = load <16 x i8>, ptr %i.beg, align 1, !alias.scope !161
  %wide.load27 = load <16 x i8>, ptr %i.beh, align 1, !alias.scope !161
  store <16 x i8> %wide.load26, ptr %i.bee, align 1, !alias.scope !158, !noalias !161
  store <16 x i8> %wide.load27, ptr %i.bef, align 1, !alias.scope !158, !noalias !161
  store <16 x i8> %wide.load, ptr %i.beg, align 1, !alias.scope !161
  store <16 x i8> %wide.load25.a, ptr %i.beh, align 1, !alias.scope !161
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bei = icmp eq i64 %index.next, %n.vec
  br i1 %i.bei, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %index29 ; 2 uses
  %wide.load30 = load <4 x i8>, ptr %i.bej, align 1, !alias.scope !158, !noalias !161
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %index29 ; 2 uses
  %wide.load31 = load <4 x i8>, ptr %i.bek, align 1, !alias.scope !161
  store <4 x i8> %wide.load31, ptr %i.bej, align 1, !alias.scope !158, !noalias !161
  store <4 x i8> %wide.load30, ptr %i.bek, align 1, !alias.scope !161
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.bel = icmp eq i64 %index.next32, %n.vec28
  br i1 %i.bel, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n33, label %._crit_edge93.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod97.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %indvars.iv104.i.ph ; 2 uses
  %i.ben = load i8, ptr %i.bem, align 1
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %indvars.iv104.i.ph ; 2 uses
  %i.bep = load i8, ptr %i.beo, align 1
  store i8 %i.bep, ptr %i.bem, align 1
  store i8 %i.ben, ptr %i.beo, align 1
  %indvars.iv.next105.i.prol = or disjoint i64 %indvars.iv104.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv104.i.unr = phi i64 [ %indvars.iv104.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next105.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.beq = icmp eq i64 %indvars.iv104.i.ph, %i.bdn
  br i1 %i.beq, label %._crit_edge93.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv104.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %indvars.iv104.i ; 2 uses
  %i.bes = load i8, ptr %i.ber, align 1
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %indvars.iv104.i ; 2 uses
  %i.beu = load i8, ptr %i.bet, align 1
  store i8 %i.beu, ptr %i.ber, align 1
  store i8 %i.bes, ptr %i.bet, align 1
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %indvars.iv.next105.i ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %indvars.iv.next105.i ; 2 uses
  %i.bey = load i8, ptr %i.bex, align 1
  store i8 %i.bey, ptr %i.bev, align 1
  store i8 %i.bew, ptr %i.bex, align 1
  %indvars.iv.next105.i.1 = add nuw nsw i64 %indvars.iv104.i, 2 ; 2 uses
  %exitcond108.not.i.1 = icmp eq i64 %indvars.iv.next105.i.1, %wide.trip.count107.i
  br i1 %exitcond108.not.i.1, label %._crit_edge93.i, label %vec.epilog.scalar.ph, !llvm.loop !165

._crit_edge93.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %.loopexit.i, label %iter.check

.loopexit.i:                                      ; preds = %._crit_edge93.i, %.lr.ph95.i, %.preheader.i, %.loopexit38..loopexit_crit_edge.i
  %.pre122.i = phi i32 [ %.pre122.pre.i, %.loopexit38..loopexit_crit_edge.i ], [ %.pre122.pre126.i, %.lr.ph95.i ], [ %.pre122.pre126.i, %.preheader.i ], [ %.pre122.pre126.i, %._crit_edge93.i ] ; 2 uses
  %.not376.i = icmp eq i32 %4, %spec.select.i
  %or.cond382.i = or i1 %.not367.i, %.not376.i
  br i1 %or.cond382.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %.loopexit.i
  %i.bez = tail call fastcc ptr @stbi__convert_format(ptr noundef nonnull %i.aeu, i32 noundef %spec.select.i, i32 noundef %4, i32 noundef %.pre122.i, i32 noundef %i.bcf) ; 2 uses
  %i.bfa = icmp eq ptr %i.bez, null
  br i1 %i.bfa, label %stbi__bmp_load.exit, label %._crit_edge120.i

._crit_edge120.i:                                 ; preds = %bb.gx
  %.pre121.i = load i32, ptr %0, align 8
  br label %bb.gy

bb.gy:                                            ; preds = %._crit_edge120.i, %.loopexit.i
  %i.bfb = phi i32 [ %.pre121.i, %._crit_edge120.i ], [ %.pre122.i, %.loopexit.i ]
  %.0339.i = phi ptr [ %i.bez, %._crit_edge120.i ], [ %i.aeu, %.loopexit.i ] ; 2 uses
  store i32 %i.bfb, ptr %1, align 4
  %i.bfc = load i32, ptr %i.abu, align 4
  store i32 %i.bfc, ptr %2, align 4
  %.not377.i = icmp eq ptr %3, null
  br i1 %.not377.i, label %stbi__bmp_load.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bfd = load i32, ptr %i.aeg, align 8
  store i32 %i.bfd, ptr %3, align 4
  br label %stbi__bmp_load.exit

stbi__bmp_load.exit:                              ; preds = %bb.bv, %bb.bx, %bb.bz, %bb.cg, %bb.cj, %bb.cp, %stbi__malloc_mad3.exit.thread.i, %bb.cs, %bb.dr, %bb.fm, %bb.fo, %bb.gx, %bb.gy, %bb.gz
  %.4344.i = phi ptr [ %.0339.i, %bb.gy ], [ null, %bb.bx ], [ null, %bb.bz ], [ null, %bb.bv ], [ null, %bb.gx ], [ null, %bb.cg ], [ null, %bb.cs ], [ null, %stbi__malloc_mad3.exit.thread.i ], [ null, %bb.cp ], [ %.0339.i, %bb.gz ], [ null, %bb.cj ], [ null, %bb.dr ], [ null, %bb.fm ], [ null, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.hh

bb.ha:                                            ; preds = %stbi__bmp_test.exit.thread, %stbi__bmp_test.exit
  %i.bfe = tail call fastcc i32 @stbi__gif_test(ptr noundef %0)
  %.not26 = icmp eq i32 %i.bfe, 0
  br i1 %.not26, label %bb.hg, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34928) %6, i8 0, i64 34928, i1 false)
  %i.bff = call fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %3, ptr noundef null) ; 4 uses
  %i.bfg = icmp eq ptr %i.bff, %0
  %.not1.i = icmp eq ptr %i.bff, null
  %.not.i42 = or i1 %i.bfg, %.not1.i
  br i1 %.not.i42, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bfh = load i32, ptr %6, align 8              ; 2 uses
  store i32 %i.bfh, ptr %1, align 4
  %i.bfi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bfj = load i32, ptr %i.bfi, align 4          ; 2 uses
  store i32 %i.bfj, ptr %2, align 4
  %i.bfk = and i32 %4, -5
  %or.cond.not.i = icmp eq i32 %i.bfk, 0
  br i1 %or.cond.not.i, label %stbi__gif_load.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bfl = call fastcc ptr @stbi__convert_format(ptr noundef nonnull %i.bff, i32 noundef 4, i32 noundef %4, i32 noundef %i.bfh, i32 noundef %i.bfj)
  br label %stbi__gif_load.exit

bb.he:                                            ; preds = %bb.hb
  %i.bfm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bfn = load ptr, ptr %i.bfm, align 8          ; 2 uses
  %.not15.i = icmp eq ptr %i.bfn, null
  br i1 %.not15.i, label %stbi__gif_load.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @free(ptr noundef nonnull %i.bfn) #52
  br label %stbi__gif_load.exit

stbi__gif_load.exit:                              ; preds = %bb.hc, %bb.hd, %bb.he, %bb.hf
  %.0.i = phi ptr [ %i.bfl, %bb.hd ], [ %i.bff, %bb.hc ], [ null, %bb.hf ], [ null, %bb.he ]
  %i.bfo = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bfp = load ptr, ptr %i.bfo, align 8
  call void @free(ptr noundef %i.bfp) #52
  %i.bfq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bfr = load ptr, ptr %i.bfq, align 8
  call void @free(ptr noundef %i.bfr) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  br label %bb.hh

bb.hg:                                            ; preds = %bb.ha
  store ptr @.str.83, ptr @stbi__g_failure_reason, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %stbi__gif_load.exit, %stbi__bmp_load.exit, %stbi__png_load.exit
  %.0 = phi ptr [ %.043.i.i, %stbi__png_load.exit ], [ %.4344.i, %stbi__bmp_load.exit ], [ %.0.i, %stbi__gif_load.exit ], [ null, %bb.hg ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__gif_test(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %stbi__get8.exit.i
end_hunk_2
begin_hunk_3_@stbi__de_iphone:bb.a
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  store i8 %i.az, ptr %.14711, align 1
  store i8 %i.ac, ptr %i.ay, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.24813, align 1
  store i8 %i.bc, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  store i8 %i.bi, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  store i8 %i.bm, ptr %i.bj, align 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  store i8 %i.bq, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 %i.bu, ptr %.04616.epil, align 1
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !202

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %.24813.epil, align 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !203

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ae = add i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 13 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ag = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.af, %i.ag
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ah = mul nuw nsw i32 %i.af, %5
  %i.ai = xor i32 %i.af, 2147483647
  %.not330 = icmp sgt i32 %i.ah, %i.ai
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.aj = add nuw nsw i32 %i.af, 1
  %i.ak = mul i32 %i.aj, %5
  %i.al = icmp ult i32 %2, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.107, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.af, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.an) #53 ; 5 uses
  %.not283 = icmp eq ptr %i.ao, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.ap, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.ap, i32 %i.af, i32 %4
  %i.aq = zext nneg i32 %i.af to i64
  %i.ar = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.as = sext i32 %spec.select to i64            ; 40 uses
  %i.at = icmp slt i32 %spec.select, %i.ar        ; 4 uses
  %i.au = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.av = icmp sgt i32 %i.ar, 0
  %i.aw = sext i32 %i.ar to i64                   ; 13 uses
  %i.ax = icmp eq i32 %6, 8
  %i.ay = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.az = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.ba = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bb = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bc = zext i32 %i.y to i64
  %i.bd = icmp eq i32 %7, 0
  %i.be = sext i32 %6 to i64
  %i.bf = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.be
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.ar to i64     ; 8 uses
  %i.bg = sub nsw i64 %i.aw, %i.as                ; 28 uses
  %i.bh = add i32 %i.y, -1                        ; 3 uses
  %i.bi = add nuw nsw i64 %i.bb, 1
  %min.iters.check699 = icmp ult i64 %i.bg, 8
  %i.bj = add nsw i64 %i.as, -1
  %diff.check697 = icmp ult i64 %i.bj, 31
  %or.cond736 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bg, 32
  %i.bk = and i64 %i.bg, 24
  %n.vec703 = and i64 %i.bg, -32                  ; 4 uses
  %i.bl = add nsw i64 %n.vec703, %i.as
  %cmp.n712 = icmp eq i64 %i.bg, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bk, 0
  %n.vec720 = and i64 %i.bg, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec720, %i.as
  %cmp.n727 = icmp eq i64 %i.bg, %n.vec720
  %i.bn = add nsw i64 %i.aw, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bo = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bo, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter750 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %min.iters.check632 = icmp ult i64 %i.bg, 4
  %i.bp = add nsw i64 %i.as, -1
  %diff.check626 = icmp ult i64 %i.bp, 15
  %min.iters.check634 = icmp ult i64 %i.bg, 16
  %i.bq = and i64 %i.bg, 12
  %n.vec636 = and i64 %i.bg, -16                  ; 4 uses
  %i.br = add nsw i64 %n.vec636, %i.as
  %cmp.n645 = icmp eq i64 %i.bg, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bq, 0
  %n.vec653 = and i64 %i.bg, -4                   ; 3 uses
  %i.bs = add nsw i64 %n.vec653, %i.as
  %cmp.n662 = icmp eq i64 %i.bg, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bt, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter752.a = and i64 %wide.trip.count424, 1
  %lcmp.mod753.not.a = icmp eq i64 %xtraiter752.a, 0
  %i.bu = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bg, 4
  %i.bv = add nsw i64 %i.as, -1
  %diff.check561 = icmp ult i64 %i.bv, 15
  %min.iters.check565 = icmp ult i64 %i.bg, 16
  %i.bw = and i64 %i.bg, 12
  %n.vec567 = and i64 %i.bg, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec567, %i.as
  %cmp.n575 = icmp eq i64 %i.bg, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bw, 0
  %n.vec583 = and i64 %i.bg, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec583, %i.as
  %cmp.n591 = icmp eq i64 %i.bg, %n.vec583
  %i.bz = add nsw i64 %i.aw, -1
  %min.iters.check530 = icmp ult i32 %i.ar, 4
  %min.iters.check532 = icmp ult i32 %i.ar, 32
  %i.ca = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ca, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter758.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod759.not.a = icmp eq i64 %xtraiter758.a, 0
  %min.iters.check506 = icmp ult i64 %i.bg, 8
  %i.cb = add nsw i64 %i.as, -1
  %diff.check = icmp ult i64 %i.cb, 31
  %or.cond735 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bg, 32
  %i.cc = and i64 %i.bg, 24
  %n.vec509 = and i64 %i.bg, -32                  ; 4 uses
  %i.cd = add nsw i64 %n.vec509, %i.as
  %cmp.n518 = icmp eq i64 %i.bg, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  %n.vec520 = and i64 %i.bg, -8                   ; 3 uses
  %i.ce = add nsw i64 %n.vec520, %i.as
  %cmp.n525 = icmp eq i64 %i.bg, %n.vec520
  %i.cf = add nsw i64 %i.aw, -1
  %xtraiter764.a = and i32 %4, 1
  %i.cg = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod765.not.a = icmp eq i32 %xtraiter764.a, 0
  %lcmp.mod766.a = trunc i32 %4 to i1
  %xtraiter767 = and i32 %i.y, 3                  ; 3 uses
  %i.ch = icmp ult i32 %i.y, 4
  %unroll_iter770 = and i32 %i.y, -4
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  %lcmp.mod769 = icmp ne i32 %xtraiter767, 0
  %i.ci = and i64 %i.bb, 1
  %lcmp.mod773.not.not = icmp eq i64 %i.ci, 0
  %i.cj = shl nuw nsw i64 %i.bb, 2
  %i.ck = mul nuw nsw i64 %i.bb, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bb, -1
  %i.cl = icmp eq i32 %.030.i305, 0
  %i.cm = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cm, 4294967288              ; 3 uses
  %i.cn = sub nsw i64 %i.bb, %n.vec
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  %xtraiter775 = and i32 %i.y, 1
  %i.co = icmp eq i32 %i.bh, 0
  %unroll_iter779 = and i32 %i.y, -2
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.y to i1
  %xtraiter781 = and i32 %i.y, 1
  %i.cp = icmp eq i32 %i.bh, 0
  %unroll_iter785 = and i32 %i.y, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.y to i1
  %xtraiter787 = and i32 %i.y, 1
  %i.cq = icmp eq i32 %i.bh, 0
  %unroll_iter791 = and i32 %i.y, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.y to i1
  %i.cr = and i64 %i.bb, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cr, 0
  %i.cs = shl nuw nsw i64 %i.bb, 2
  %i.ct = mul nuw nsw i64 %i.bb, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bb, -1
  %i.cu = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.cv = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qf, %.loopexit ] ; 2 uses
  %8 = trunc i64 %indvars.iv457 to i32
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = mul nuw nsw i32 %i.af, %10
  %12 = trunc i64 %indvars.iv457 to i32
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = mul nuw nsw i32 %i.af, %14
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %17 = trunc i64 %indvars.iv457 to i32
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = mul nuw nsw i32 %i.af, %19
  %21 = trunc i64 %indvars.iv457 to i32
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  %24 = mul nuw nsw i32 %i.af, %23
  %25 = trunc i64 %indvars.iv457 to i32
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  %28 = mul nuw nsw i32 %i.af, %27
  %i.cw = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.cx = trunc i64 %indvars.iv457 to i1
  %i.cy = select i1 %i.cx, i64 %i.aq, i64 0       ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cy ; 75 uses
  %i.da = and i32 %i.cw, 1
  %i.db = xor i32 %i.da, 1
  %i.dc = mul nuw nsw i32 %i.db, %i.af
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dd ; 30 uses
  %i.df = load ptr, ptr %i.u, align 8
  %i.dg = mul i32 %i.e, %i.cw
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 33 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dk = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dl = icmp ugt i8 %i.dk, 4
  br i1 %i.dl, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = zext nneg i8 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dp, %bb.o ], [ %i.dk, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.au, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %29 = zext nneg i32 %11 to i64
  %i.dq = sub nsw i64 %29, %i.cy
  %diff.check665 = icmp ugt i64 %i.dq, -32
  %or.cond730.a = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond730.a, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index673 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dr, align 1
  %wide.load675 = load <16 x i8>, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 %index673 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dt, align 1
  %wide.load677 = load <16 x i8>, ptr %i.du, align 1
  %i.dv = add <16 x i8> %wide.load676, %wide.load674
  %i.dw = add <16 x i8> %wide.load677, %wide.load675
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index673 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %i.dv, ptr %i.dx, align 1
  store <16 x i8> %i.dw, ptr %i.dy, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.dz, label %middle.block679, label %vector.body672, !llvm.loop !204

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !23

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.eb, align 1
  %i.ec = add <4 x i8> %wide.load691, %wide.load690
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index689
  store <4 x i8> %i.ec, ptr %i.ed, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ee, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !205

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  %i.ei = load i8, ptr %i.eh, align 1
  %.narrow286.prol = add i8 %i.ei, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ej, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter750
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !206

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ek = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.au, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %30 = zext nneg i32 %20 to i64
  %i.em = sub nsw i64 %30, %i.cy
  %diff.check594 = icmp ugt i64 %i.em, -32
  %or.cond732 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond732, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index602 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.en, align 1
  %wide.load604 = load <16 x i8>, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 %index602 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load606 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.es = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.et = add <16 x i8> %i.er, %wide.load603
  %i.eu = add <16 x i8> %i.es, %wide.load604
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index602 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <16 x i8> %i.et, ptr %i.ev, align 1
  store <16 x i8> %i.eu, ptr %i.ew, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.ex, label %middle.block608, label %vector.body601, !llvm.loop !207

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !23

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.de, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fb = add <4 x i8> %i.fa, %wide.load619
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index618
  store <4 x i8> %i.fb, ptr %i.fc, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fd, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !208

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod753.not.a, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431.ph
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431.ph
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = lshr i8 %i.fh, 1
  %.narrow290.prol = add i8 %i.fi, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fj, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fk = icmp eq i64 %indvars.iv431.ph, %i.bu
  br i1 %i.fk, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.av, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
  %31 = zext nneg i32 %28 to i64
  %i.fl = sub nsw i64 %31, %i.cy
  %diff.check528 = icmp ugt i64 %i.fl, -32
  %or.cond734 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond734, label %.lr.ph368.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.body535

vector.body535:                                   ; preds = %vector.main.loop.iter.check531, %vector.body535
  %index536 = phi i64 [ %index.next541, %vector.body535 ], [ 0, %vector.main.loop.iter.check531 ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index536 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load537 = load <16 x i8>, ptr %i.fm, align 1
  %wide.load538 = load <16 x i8>, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %index536 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load539 = load <16 x i8>, ptr %i.fo, align 1
  %wide.load540 = load <16 x i8>, ptr %i.fp, align 1
  %i.fq = add <16 x i8> %wide.load539, %wide.load537
  %i.fr = add <16 x i8> %wide.load540, %wide.load538
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index536 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <16 x i8> %i.fq, ptr %i.fs, align 1
  store <16 x i8> %i.fr, ptr %i.ft, align 1
  %index.next541 = add nuw i64 %index536, 32      ; 2 uses
  %i.fu = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.fu, label %middle.block542, label %vector.body535, !llvm.loop !209

middle.block542:                                  ; preds = %vector.body535
  br i1 %cmp.n543, label %.loopexit348, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  br i1 %min.epilog.iters.check548, label %.lr.ph368.preheader, label %vec.epilog.ph549, !prof !23

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  br label %vec.epilog.vector.body551

vec.epilog.vector.body551:                        ; preds = %vec.epilog.vector.body551, %vec.epilog.ph549
  %index552 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next555, %vec.epilog.vector.body551 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index552
  %wide.load553 = load <4 x i8>, ptr %i.fv, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %index552
  %wide.load554 = load <4 x i8>, ptr %i.fw, align 1
  %i.fx = add <4 x i8> %wide.load554, %wide.load553
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index552
  store <4 x i8> %i.fx, ptr %i.fy, align 1
  %index.next555 = add nuw i64 %index552, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.fz, label %vec.epilog.middle.block556, label %vec.epilog.vector.body551, !llvm.loop !210

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body551
  br i1 %cmp.n557, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block556
  %indvars.iv441.ph = phi i64 [ 0, %iter.check545 ], [ %n.vec534, %vec.epilog.iter.check547 ], [ %n.vec550, %vec.epilog.middle.block556 ] ; 3 uses
  br i1 %lcmp.mod759.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter760 = phi i64 [ %prol.iter760.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441.prol
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441.prol
  %i.gd = load i8, ptr %i.gc, align 1
  %.narrow292.prol = add i8 %i.gd, %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.ge, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter760.next = add i64 %prol.iter760, 1   ; 2 uses
  %prol.iter760.cmp.not = icmp eq i64 %prol.iter760.next, %xtraiter758.a
  br i1 %prol.iter760.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !211

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gf = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.aw, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.as, i1 false)
  br i1 %i.at, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond735, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gh = add i64 %index511, %i.as                ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.dj, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.gi, align 1
  %wide.load513 = load <16 x i8>, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds i8, ptr %i.cz, i64 %index511 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.gk, align 1
  %wide.load515 = load <16 x i8>, ptr %i.gl, align 1
  %i.gm = add <16 x i8> %wide.load514, %wide.load512
  %i.gn = add <16 x i8> %wide.load515, %wide.load513
  %i.go = getelementptr inbounds i8, ptr %i.cz, i64 %i.gh ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <16 x i8> %i.gm, ptr %i.go, align 1
  store <16 x i8> %i.gn, ptr %i.gp, align 1
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.gq, label %middle.block517, label %vector.body510, !llvm.loop !212

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block517
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec509, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index521 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 3 uses
  %i.gr = add i64 %index521, %i.as                ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.dj, i64 %i.gr
  %wide.load522 = load <8 x i8>, ptr %i.gs, align 1
  %i.gt = getelementptr inbounds i8, ptr %i.cz, i64 %index521
  %wide.load523 = load <8 x i8>, ptr %i.gt, align 1
  %i.gu = add <8 x i8> %wide.load523, %wide.load522
  %i.gv = getelementptr inbounds i8, ptr %i.cz, i64 %i.gr
  store <8 x i8> %i.gu, ptr %i.gv, align 1
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next524, %n.vec520
  br i1 %i.gw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n525, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.as, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 7 uses
  %i.gx = sub nsw i64 %i.aw, %indvars.iv446.ph
  %xtraiter761 = and i64 %i.gx, 1
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.gy = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv446.ph
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = sub nsw i64 %indvars.iv446.ph, %i.as
  %i.hb = getelementptr inbounds i8, ptr %i.cz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1
  %.narrow294.prol = add i8 %i.hc, %i.gz
  %i.hd = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hd, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.he = icmp eq i64 %indvars.iv446.ph, %i.cf
  br i1 %i.he, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv446
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = sub nsw i64 %indvars.iv446, %i.as
  %i.hi = getelementptr inbounds i8, ptr %i.cz, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %.narrow294 = add i8 %i.hj, %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hk, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next447
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = sub nsw i64 %indvars.iv.next447, %i.as
  %i.ho = getelementptr inbounds i8, ptr %i.cz, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1
  %.narrow294.1 = add i8 %i.hp, %i.hm
  %i.hq = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hq, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.aw
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !214

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441
  %i.hu = load i8, ptr %i.ht, align 1
  %.narrow292 = add i8 %i.hu, %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.hv, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442
  %i.hz = load i8, ptr %i.hy, align 1
  %.narrow292.1 = add i8 %i.hz, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ia, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.1
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.1
  %i.ie = load i8, ptr %i.id, align 1
  %.narrow292.2 = add i8 %i.ie, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.if, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.2
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.2
  %i.ij = load i8, ptr %i.ii, align 1
  %.narrow292.3 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ik, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !215

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.at, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %32 = zext nneg i32 %24 to i64
  %i.il = sub nsw i64 %32, %i.cy
  %diff.check560 = icmp ugt i64 %i.il, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.im = add i64 %index569, %i.as                ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %i.dj, i64 %i.im
  %wide.load570 = load <16 x i8>, ptr %i.in, align 1
  %i.io = getelementptr inbounds i8, ptr %i.de, i64 %i.im
  %wide.load571 = load <16 x i8>, ptr %i.io, align 1
  %i.ip = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iq = getelementptr inbounds i8, ptr %i.cz, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iq, align 1
  %i.ir = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.is = add nuw nsw <16 x i16> %i.ir, %i.ip
  %i.it = lshr <16 x i16> %i.is, splat (i16 1)
  %i.iu = trunc nuw <16 x i16> %i.it to <16 x i8>
  %i.iv = add <16 x i8> %wide.load570, %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.cz, i64 %i.im
  store <16 x i8> %i.iv, ptr %i.iw, align 1
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.ix = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.ix, label %middle.block574, label %vector.body568, !llvm.loop !216

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !8

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.iy = add i64 %index585, %i.as                ; 3 uses
  %i.iz = getelementptr inbounds i8, ptr %i.dj, i64 %i.iy
  %wide.load586 = load <4 x i8>, ptr %i.iz, align 1
  %i.ja = getelementptr inbounds i8, ptr %i.de, i64 %i.iy
  %wide.load587 = load <4 x i8>, ptr %i.ja, align 1
  %i.jb = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jc = getelementptr inbounds i8, ptr %i.cz, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jc, align 1
  %i.jd = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.je = add nuw nsw <4 x i16> %i.jd, %i.jb
  %i.jf = lshr <4 x i16> %i.je, splat (i16 1)
  %i.jg = trunc nuw <4 x i16> %i.jf to <4 x i8>
  %i.jh = add <4 x i8> %wide.load586, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.cz, i64 %i.iy
  store <4 x i8> %i.jh, ptr %i.ji, align 1
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jj, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !217

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck559, %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.as, %iter.check578 ], [ %i.as, %vector.memcheck559 ], [ %i.bx, %vec.epilog.iter.check580 ], [ %i.by, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jk = sub nsw i64 %i.aw, %indvars.iv436.ph
  %xtraiter755 = and i64 %i.jk, 1
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jl = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436.ph
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436.ph
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = zext i8 %i.jo to i16
  %i.jq = sub nsw i64 %indvars.iv436.ph, %i.as
  %i.jr = getelementptr inbounds i8, ptr %i.cz, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i16
  %i.ju = add nuw nsw i16 %i.jt, %i.jp
  %i.jv = lshr i16 %i.ju, 1
  %.tr287.prol = trunc nuw i16 %i.jv to i8
  %.narrow288.prol = add i8 %i.jm, %.tr287.prol
  %i.jw = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.jw, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.jx = icmp eq i64 %indvars.iv436.ph, %i.bz
  br i1 %i.jx, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = lshr i8 %i.kb, 1
  %.narrow290 = add i8 %i.kc, %i.jz
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.kd, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next432
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next432
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = lshr i8 %i.kh, 1
  %.narrow290.1 = add i8 %i.ki, %i.kf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.kj, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !218

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = zext i8 %i.kn to i16
  %i.kp = sub nsw i64 %indvars.iv436, %i.as
  %i.kq = getelementptr inbounds i8, ptr %i.cz, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i16
  %i.kt = add nuw nsw i16 %i.ks, %i.ko
  %i.ku = lshr i16 %i.kt, 1
  %.tr287 = trunc nuw i16 %i.ku to i8
  %.narrow288 = add i8 %i.kl, %.tr287
  %i.kv = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.kv, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.kw = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next437
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next437
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = zext i8 %i.kz to i16
  %i.lb = sub nsw i64 %indvars.iv.next437, %i.as
  %i.lc = getelementptr inbounds i8, ptr %i.cz, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i16
  %i.lf = add nuw nsw i16 %i.le, %i.la
  %i.lg = lshr i16 %i.lf, 1
  %.tr287.1 = trunc nuw i16 %i.lg to i8
  %.narrow288.1 = add i8 %i.kx, %.tr287.1
  %i.lh = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lh, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.aw
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !219

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.at, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.li = sub nsw i64 %16, %i.cy
  %diff.check627 = icmp ugt i64 %i.li, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.lj = add nsw i64 %i.cy, %i.as
  %i.lk = sub nsw i64 %16, %i.lj
  %diff.check629 = icmp ugt i64 %i.lk, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.ll = add i64 %index638, %i.as                ; 3 uses
  %i.lm = getelementptr inbounds i8, ptr %i.dj, i64 %i.ll
  %wide.load639 = load <16 x i8>, ptr %i.lm, align 1
  %i.ln = getelementptr inbounds i8, ptr %i.cz, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.ln, align 1
  %i.lo = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lp = getelementptr inbounds i8, ptr %i.de, i64 %i.ll
  %wide.load641 = load <16 x i8>, ptr %i.lp, align 1
  %i.lq = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.de, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lr, align 1
  %i.ls = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.lt = mul nuw nsw <16 x i32> %i.ls, splat (i32 3)
  %i.lu = add nuw nsw <16 x i32> %i.lq, %i.lo
  %i.lv = sub nsw <16 x i32> %i.lt, %i.lu         ; 2 uses
  %i.lw = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lo, <16 x i32> %i.lq) ; 2 uses
  %i.lx = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.lo, <16 x i32> %i.lq) ; 2 uses
  %i.ly = icmp sgt <16 x i32> %i.lx, %i.lv
  %i.lz = select <16 x i1> %i.ly, <16 x i32> %i.ls, <16 x i32> %i.lw
  %i.ma = icmp sgt <16 x i32> %i.lv, %i.lw
  %i.mb = select <16 x i1> %i.ma, <16 x i32> %i.lz, <16 x i32> %i.lx
  %i.mc = trunc nuw <16 x i32> %i.mb to <16 x i8>
  %i.md = add <16 x i8> %wide.load639, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.cz, i64 %i.ll
  store <16 x i8> %i.md, ptr %i.me, align 1
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mf = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mf, label %middle.block644, label %vector.body637, !llvm.loop !220

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !8

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.mg = add i64 %index655, %i.as                ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %i.dj, i64 %i.mg
  %wide.load656 = load <4 x i8>, ptr %i.mh, align 1
  %i.mi = getelementptr inbounds i8, ptr %i.cz, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mi, align 1
  %i.mj = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %i.de, i64 %i.mg
  %wide.load658 = load <4 x i8>, ptr %i.mk, align 1
  %i.ml = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %i.de, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mm, align 1
  %i.mn = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.mo = mul nuw nsw <4 x i32> %i.mn, splat (i32 3)
  %i.mp = add nuw nsw <4 x i32> %i.ml, %i.mj
  %i.mq = sub nsw <4 x i32> %i.mo, %i.mp          ; 2 uses
  %i.mr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mj, <4 x i32> %i.ml) ; 2 uses
  %i.ms = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mj, <4 x i32> %i.ml) ; 2 uses
  %i.mt = icmp sgt <4 x i32> %i.ms, %i.mq
  %i.mu = select <4 x i1> %i.mt, <4 x i32> %i.mn, <4 x i32> %i.mr
  %i.mv = icmp sgt <4 x i32> %i.mq, %i.mr
  %i.mw = select <4 x i1> %i.mv, <4 x i32> %i.mu, <4 x i32> %i.ms
  %i.mx = trunc nuw <4 x i32> %i.mw to <4 x i8>
  %i.my = add <4 x i8> %wide.load656, %i.mx
  %i.mz = getelementptr inbounds i8, ptr %i.cz, i64 %i.mg
  store <4 x i8> %i.my, ptr %i.mz, align 1
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.na, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !221

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck625, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.as, %iter.check648 ], [ %i.as, %vector.memcheck625 ], [ %i.br, %vec.epilog.iter.check650 ], [ %i.bs, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421
  %i.ne = load i8, ptr %i.nd, align 1
  %.narrow286 = add i8 %i.ne, %i.nc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nf, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422
  %i.nj = load i8, ptr %i.ni, align 1
  %.narrow286.1 = add i8 %i.nj, %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.nk, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.1
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.1
  %i.no = load i8, ptr %i.nn, align 1
  %.narrow286.2 = add i8 %i.no, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.np, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.2
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.2
  %i.nt = load i8, ptr %i.ns, align 1
  %.narrow286.3 = add i8 %i.nt, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.nu, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !222

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.nv = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv426
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = sub nsw i64 %indvars.iv426, %i.as       ; 2 uses
  %i.ny = getelementptr inbounds i8, ptr %i.cz, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = zext i8 %i.nz to i32                    ; 3 uses
  %i.ob = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv426
  %i.oc = load i8, ptr %i.ob, align 1
  %i.od = zext i8 %i.oc to i32                    ; 3 uses
  %i.oe = getelementptr inbounds i8, ptr %i.de, i64 %i.nx
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = zext i8 %i.of to i32                    ; 2 uses
  %i.oh = mul nuw nsw i32 %i.og, 3
  %i.oi = add nuw nsw i32 %i.od, %i.oa
  %i.oj = sub nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.oa, i32 range(i32 0, 256) %i.od) ; 2 uses
  %i.ol = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.oa, i32 range(i32 0, 256) %i.od) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.ol, %i.oj
  %i.om = select i1 %.not.i303, i32 %i.og, i32 %i.ok
  %.not20.i = icmp sgt i32 %i.oj, %i.ok
  %i.on = select i1 %.not20.i, i32 %i.om, i32 %i.ol
  %.tr = trunc nuw i32 %i.on to i8
  %.narrow284 = add i8 %i.nw, %.tr
  %i.oo = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.oo, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.aw
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !223

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.as, i1 false)
  br i1 %i.at, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.op = add i64 %index705, %i.as                ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %i.dj, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.oq, align 1
  %wide.load707 = load <16 x i8>, ptr %i.or, align 1
  %i.os = getelementptr inbounds i8, ptr %i.cz, i64 %index705 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.os, align 1
  %wide.load709 = load <16 x i8>, ptr %i.ot, align 1
  %i.ou = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.ov = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.ow = add <16 x i8> %i.ou, %wide.load706
  %i.ox = add <16 x i8> %i.ov, %wide.load707
  %i.oy = getelementptr inbounds i8, ptr %i.cz, i64 %i.op ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <16 x i8> %i.ow, ptr %i.oy, align 1
  store <16 x i8> %i.ox, ptr %i.oz, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pa = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pa, label %middle.block711, label %vector.body704, !llvm.loop !224

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !54

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pb = add i64 %index722, %i.as                ; 2 uses
end_hunk_3
