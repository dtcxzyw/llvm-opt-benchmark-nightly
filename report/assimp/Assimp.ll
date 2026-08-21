inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.dr = phi ptr [ %i.cv, %bb.ae ], [ %.sink.i.i.i.5.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ] ; 2 uses
  %i.ds = phi ptr [ %i.dp, %bb.ae ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ] ; 3 uses
  %.0.i.i.5.i = phi i8 [ %i.dq, %bb.ae ], [ %i.do, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ]
  %.not.i.5.i = icmp eq i8 %.0.i.i.5.i, 10
  br i1 %.not.i.5.i, label %bb.af, label %bb.bm

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.5.i
  %i.dt = icmp ult ptr %i.ds, %i.dr
  br i1 %i.dt, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = load i32, ptr %i.e, align 8
  %.not.i.i.6.i = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.6.i, label %bb.bm, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %i.f, align 8
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = load i32, ptr %i.i, align 4
  %i.dy = tail call noundef i32 %i.dv(ptr noundef %i.dw, ptr noundef nonnull %i.h, i32 noundef %i.dx), !inline_history !81 ; 2 uses
  %i.dz = load ptr, ptr %i.c, align 8
  %i.ea = load ptr, ptr %i.j, align 8
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = load i32, ptr %i.k, align 8
  %i.eg = add nsw i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %i.k, align 8
  %i.eh = icmp eq i32 %i.dy, 0
  br i1 %i.eh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = sext i32 %i.dy to i64
  %i.ej = getelementptr inbounds i8, ptr %i.h, i64 %i.ei
  %.pre.i.i.6.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i: ; preds = %bb.aj, %bb.ai
  %i.ek = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6.i, %bb.ai ]
  %.sink.i.i.i.6.i = phi ptr [ %i.l, %bb.aj ], [ %i.ej, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

bb.ak:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.el, ptr %i.c, align 8
  %i.em = load i8, ptr %i.ds, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

_ZL10stbi__get8P13stbi__context.exit.i.6.i:       ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i
  %i.en = phi ptr [ %i.dr, %bb.ak ], [ %.sink.i.i.i.6.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %i.eo = phi ptr [ %i.el, %bb.ak ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ] ; 3 uses
  %.0.i.i.6.i = phi i8 [ %i.em, %bb.ak ], [ %i.ek, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %.not.i.6.i = icmp eq i8 %.0.i.i.6.i, 26
  br i1 %.not.i.6.i, label %bb.al, label %bb.bm

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.6.i
  %i.ep = icmp ult ptr %i.eo, %i.en
  br i1 %i.ep, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load i32, ptr %i.e, align 8
  %.not.i.i.7.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.7.i, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load ptr, ptr %i.f, align 8
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = load i32, ptr %i.i, align 4
  %i.eu = tail call noundef i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %i.h, i32 noundef %i.et), !inline_history !81
  %i.ev = load ptr, ptr %i.c, align 8
  %i.ew = load ptr, ptr %i.j, align 8
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = load i32, ptr %i.k, align 8
  %i.fc = add nsw i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.k, align 8
  %i.fd = icmp eq i32 %i.eu, 0
  br i1 %i.fd, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread: ; preds = %bb.an
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %bb.bm

bb.ao:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.fe, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i:       ; preds = %bb.an, %bb.ao
  %.0.i.i.7.i.in = phi ptr [ %i.eo, %bb.ao ], [ %i.h, %bb.an ]
  %.0.i.i.7.i = load i8, ptr %.0.i.i.7.i.in, align 1
  %.not.i.7.i = icmp eq i8 %.0.i.i.7.i, 10
  br i1 %.not.i.7.i, label %bb.au, label %bb.bm

bb.ap:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1 ; 2 uses
  store ptr %i.ff, ptr %i.c, align 8
  %i.fg = load i8, ptr %.pre.i.i, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

bb.aq:                                            ; preds = %bb.a
  %i.fh = load i32, ptr %i.e, align 8
  %.not.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.f, align 8
  %i.fj = load ptr, ptr %i.g, align 8
  %i.fk = load i32, ptr %i.i, align 4
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.h, i32 noundef %i.fk), !inline_history !81 ; 2 uses
  %i.fm = load ptr, ptr %i.c, align 8
  %i.fn = load ptr, ptr %i.j, align 8
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = load i32, ptr %i.k, align 8
  %i.ft = add nsw i32 %i.fs, %i.fr
  store i32 %i.ft, ptr %i.k, align 8
  %i.fu = icmp eq i32 %i.fl, 0
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fv = sext i32 %i.fl to i64
  %i.fw = getelementptr inbounds i8, ptr %i.h, i64 %i.fv
  %.pre.i.i.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.fx = phi i8 [ 0, %bb.as ], [ %.pre.i.i.i, %bb.at ]
  %.sink.i.i.i.i = phi ptr [ %i.l, %bb.as ], [ %i.fw, %bb.at ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

_ZL10stbi__get8P13stbi__context.exit.i.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i, %bb.ap
  %i.fy = phi ptr [ %.pre7.i.i, %bb.ap ], [ %.sink.i.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.ff, %bb.ap ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.fg, %bb.ap ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, -119
  br i1 %.not.i.i, label %bb.b, label %bb.bm

bb.au:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7.i
  %i.ga = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.ga, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %0, ptr %6, align 8
  %or.cond.i.i = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gb, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.gc = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %4)
  %.not.i.i11 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i11, label %._crit_edge.i, label %bb.ax

._crit_edge.i:                                    ; preds = %bb.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9                   ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = icmp eq i32 %i.ge, 16
  br i1 %i.gg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.gh, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi i32 [ 8, %bb.ax ], [ 16, %bb.ay ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 24 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 11 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 50 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4            ; 9 uses
  br i1 %i.gf, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.gm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.be, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gp = icmp eq i32 %i.gm, 0                    ; 13 uses
  br i1 %i.gp, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i:      ; preds = %bb.be
  %i.gq = udiv i32 2147483647, %i.gm
  %.not23.i.i.i.i.i = icmp samesign ugt i32 %4, %i.gq
  br i1 %.not23.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i, %bb.be
  %i.gr = mul nuw nsw i32 %i.gm, %4               ; 3 uses
  %i.gs = or i32 %i.go, %i.gr
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.gs, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bf, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.bf:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i:    ; preds = %bb.bf
  %i.gu = udiv i32 2147483647, %i.go
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.gr, %i.gu
  br i1 %.not.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i, %bb.bf
  %i.gv = mul nsw i32 %i.gr, %i.go
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.gw) #50 ; 15 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gz = icmp sgt i32 %i.go, 0
  br i1 %i.gz, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.ha = shl nsw i32 %i.gl, 3
  %i.hb = or disjoint i32 %i.ha, %4               ; 2 uses
  %.11167198.i.i.i = add nsw i32 %i.gm, -1        ; 30 uses
  switch i32 %i.hb, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
    i32 10, label %.lr.ph258.split.i.i.i
    i32 11, label %.lr.ph258.split.i.i.i
    i32 12, label %.lr.ph258.split.i.i.i
    i32 17, label %.lr.ph258.split.i.i.i
    i32 19, label %.lr.ph258.split.i.i.i
    i32 20, label %.lr.ph258.split.i.i.i
    i32 28, label %.lr.ph258.split.i.i.i
    i32 25, label %.lr.ph258.split.i.i.i
    i32 26, label %.lr.ph258.split.i.i.i
    i32 33, label %.lr.ph258.split.i.i.i
    i32 34, label %.lr.ph258.split.i.i.i
    i32 35, label %.lr.ph258.split.i.i.i
  ]

.lr.ph258.split.i.i.i:                            ; preds = %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.go to i64
  %i.hc = add nsw i32 %i.gm, -2                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 -1) ; 2 uses
  %i.hd = sub i32 %i.hc, %smin                    ; 14 uses
  %i.he = zext i32 %i.hd to i64                   ; 8 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 25 uses
  %7 = mul i32 %i.gm, %4
  %scevgep84.a = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hg = mul i32 %i.gl, %i.gm
  %i.hh = shl nuw nsw i64 %i.he, 1
  %i.hi = getelementptr i8, ptr %i.gj, i64 %i.hh
  %scevgep87 = getelementptr i8, ptr %i.hi, i64 1
  %i.hj = mul i32 %i.gm, %4
  %scevgep147 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hk = mul i32 %i.gl, %i.gm
  %i.hl = mul nuw nsw i64 %i.he, 3
  %i.hm = getelementptr i8, ptr %i.gj, i64 %i.hl
  %scevgep150 = getelementptr i8, ptr %i.hm, i64 3
  %i.hn = mul i32 %i.gm, %4
  %i.ho = shl nuw nsw i64 %i.he, 1
  %i.hp = getelementptr i8, ptr %i.gx, i64 %i.ho
  %scevgep212 = getelementptr i8, ptr %i.hp, i64 2
  %i.hq = mul i32 %i.gl, %i.gm
  %i.hr = mul nuw nsw i64 %i.he, 3
  %i.hs = getelementptr i8, ptr %i.gj, i64 %i.hr
  %scevgep215 = getelementptr i8, ptr %i.hs, i64 3
  %i.ht = mul i32 %i.gm, %4
  %scevgep244 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hu = mul i32 %i.gl, %i.gm
  %i.hv = shl nuw nsw i64 %i.he, 2
  %i.hw = getelementptr i8, ptr %i.gj, i64 %i.hv
  %scevgep247 = getelementptr i8, ptr %i.hw, i64 3
  %i.hx = mul i32 %i.gm, %4
  %i.hy = shl nuw nsw i64 %i.he, 1
  %i.hz = getelementptr i8, ptr %i.gx, i64 %i.hy
  %scevgep307 = getelementptr i8, ptr %i.hz, i64 2
  %i.ia = mul i32 %i.gl, %i.gm
  %i.ib = shl nuw nsw i64 %i.he, 2
  %i.ic = getelementptr i8, ptr %i.gj, i64 %i.ib
  %scevgep310 = getelementptr i8, ptr %i.ic, i64 4
  %i.id = xor i32 %smin, -1
  %i.ie = add nuw i32 %i.gm, %i.id                ; 6 uses
  %min.iters.check316 = icmp ult i32 %i.hd, 7
  %n.vec318 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.if = trunc i64 %n.vec318 to i32
  %i.ig = sub i32 %.11167198.i.i.i, %i.if
  %i.ih = shl nuw nsw i64 %n.vec318, 1
  %i.ii = shl nuw nsw i64 %n.vec318, 2
  %cmp.n333 = icmp eq i64 %i.hf, %n.vec318
  %min.iters.check253 = icmp ult i32 %i.hd, 8
  %min.iters.check255 = icmp ult i32 %i.hd, 16
  %i.ij = and i64 %i.hf, 15                       ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0
  %i.il = select i1 %i.ik, i64 16, i64 %i.ij      ; 2 uses
  %n.vec257 = sub nsw i64 %i.hf, %i.il            ; 5 uses
  %i.im = trunc i64 %n.vec257 to i32
  %i.in = sub i32 %.11167198.i.i.i, %i.im
  %i.io = shl nsw i64 %n.vec257, 2
  %min.epilog.iters.check286 = icmp samesign ult i64 %i.il, 9
  %i.ip = and i64 %i.hf, 7                        ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  %i.ir = select i1 %i.iq, i64 8, i64 %i.ip
  %n.vec288 = sub nsw i64 %i.hf, %i.ir            ; 4 uses
  %i.is = trunc i64 %n.vec288 to i32
  %i.it = sub i32 %.11167198.i.i.i, %i.is
  %i.iu = shl nsw i64 %n.vec288, 2
  %min.iters.check221 = icmp ult i32 %i.hd, 7
  %n.vec223 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.iv = trunc i64 %n.vec223 to i32
  %i.iw = sub i32 %.11167198.i.i.i, %i.iv
  %i.ix = shl nuw nsw i64 %n.vec223, 1
  %i.iy = mul nuw nsw i64 %n.vec223, 3
  %cmp.n238 = icmp eq i64 %i.hf, %n.vec223
  %min.iters.check156 = icmp ult i32 %i.hd, 7
  %min.iters.check158 = icmp ult i32 %i.hd, 15
  %i.iz = and i64 %i.hf, 8
  %n.vec160 = and i64 %i.hf, 8589934576           ; 6 uses
  %i.ja = trunc i64 %n.vec160 to i32
  %i.jb = sub i32 %.11167198.i.i.i, %i.ja
  %i.jc = mul nuw nsw i64 %n.vec160, 3
  %cmp.n182 = icmp eq i64 %i.hf, %n.vec160
  %min.epilog.iters.check190.not.not = icmp eq i64 %i.iz, 0
  %n.vec192 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.jd = trunc i64 %n.vec192 to i32
  %i.je = sub i32 %.11167198.i.i.i, %i.jd
  %i.jf = mul nuw nsw i64 %n.vec192, 3
  %cmp.n206 = icmp eq i64 %i.hf, %n.vec192
  %xtraiter388.a = and i32 %i.ie, 1
  %lcmp.mod389.not.a = icmp eq i32 %xtraiter388.a, 0
  %.6162.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jg = icmp slt i32 %i.gm, 2
  %xtraiter391.a = and i32 %i.ie, 1
  %lcmp.mod392.not.a = icmp eq i32 %xtraiter391.a, 0
  %.5161.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jh = icmp slt i32 %i.gm, 2
  %xtraiter394 = and i32 %i.ie, 3                 ; 2 uses
  %lcmp.mod395.not = icmp eq i32 %xtraiter394, 0
  %i.ji = icmp ult i32 %i.hd, 3
  %min.iters.check93 = icmp ult i32 %i.hd, 8
  %min.iters.check95 = icmp ult i32 %i.hd, 16
  %i.jj = and i64 %i.hf, 15                       ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = select i1 %i.jk, i64 16, i64 %i.jj      ; 2 uses
  %n.vec97 = sub nsw i64 %i.hf, %i.jl             ; 5 uses
  %i.jm = trunc i64 %n.vec97 to i32
  %i.jn = sub i32 %.11167198.i.i.i, %i.jm
  %i.jo = shl nsw i64 %n.vec97, 1
  %min.epilog.iters.check126 = icmp samesign ult i64 %i.jl, 9
  %i.jp = and i64 %i.hf, 7                        ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = select i1 %i.jq, i64 8, i64 %i.jp
  %n.vec128 = sub nsw i64 %i.hf, %i.jr            ; 4 uses
  %i.js = trunc i64 %n.vec128 to i32
  %i.jt = sub i32 %.11167198.i.i.i, %i.js
  %i.ju = shl nsw i64 %n.vec128, 1
  %xtraiter397 = and i32 %i.ie, 3                 ; 2 uses
  %lcmp.mod398.not = icmp eq i32 %xtraiter397, 0
  %i.jv = icmp ult i32 %i.hd, 3
  %xtraiter400 = and i32 %i.ie, 3                 ; 2 uses
  %lcmp.mod401.not = icmp eq i32 %xtraiter400, 0
  %i.jw = icmp ult i32 %i.hd, 3
  %min.iters.check52 = icmp ult i32 %i.hd, 3
  %min.iters.check53 = icmp ult i32 %i.hd, 15
  %i.jx = and i64 %i.hf, 12
  %n.vec55 = and i64 %i.hf, 8589934576            ; 6 uses
  %i.jy = trunc i64 %n.vec55 to i32
  %i.jz = sub i32 %.11167198.i.i.i, %i.jy
  %i.ka = shl nuw nsw i64 %n.vec55, 1
  %cmp.n67 = icmp eq i64 %i.hf, %n.vec55
  %min.epilog.iters.check = icmp eq i64 %i.jx, 0
  %n.vec71 = and i64 %i.hf, 8589934588            ; 5 uses
  %i.kb = trunc i64 %n.vec71 to i32
  %i.kc = sub i32 %.11167198.i.i.i, %i.kb
  %i.kd = shl nuw nsw i64 %n.vec71, 1
  %cmp.n78 = icmp eq i64 %i.hf, %n.vec71
  %xtraiter403 = and i32 %i.ie, 1
  %lcmp.mod404.not = icmp eq i32 %xtraiter403, 0
  %.11167.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.ke = icmp slt i32 %i.gm, 2
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i.i, %.lr.ph258.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph258.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 12 uses
  %i.kf = trunc i64 %indvars.iv.i.i.i to i32
  %i.kg = mul i32 %i.hx, %i.kf
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %scevgep306 = getelementptr i8, ptr %i.gx, i64 %i.kh
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.kh
  %i.ki = trunc i64 %indvars.iv.i.i.i to i32
  %i.kj = mul i32 %i.ia, %i.ki
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %scevgep309 = getelementptr i8, ptr %i.gj, i64 %i.kk
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.kk
  %i.kl = trunc i64 %indvars.iv.i.i.i to i32
  %i.km = mul i32 %i.ht, %i.kl
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %scevgep243 = getelementptr i8, ptr %i.gx, i64 %i.kn
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.kn
  %i.ko = trunc i64 %indvars.iv.i.i.i to i32
  %i.kp = mul i32 %i.hu, %i.ko
  %i.kq = zext i32 %i.kp to i64                   ; 2 uses
  %scevgep246 = getelementptr i8, ptr %i.gj, i64 %i.kq
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.kq
  %i.kr = trunc i64 %indvars.iv.i.i.i to i32
  %i.ks = mul i32 %i.hn, %i.kr
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %scevgep211 = getelementptr i8, ptr %i.gx, i64 %i.kt
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 %i.kt
  %i.ku = trunc i64 %indvars.iv.i.i.i to i32
  %i.kv = mul i32 %i.hq, %i.ku
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %scevgep214 = getelementptr i8, ptr %i.gj, i64 %i.kw
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.kw
  %i.kx = trunc i64 %indvars.iv.i.i.i to i32
  %i.ky = mul i32 %i.hj, %i.kx
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %scevgep146 = getelementptr i8, ptr %i.gx, i64 %i.kz
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.kz
  %i.la = trunc i64 %indvars.iv.i.i.i to i32
  %i.lb = mul i32 %i.hk, %i.la
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %scevgep149 = getelementptr i8, ptr %i.gj, i64 %i.lc
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.lc
  %i.ld = trunc i64 %indvars.iv.i.i.i to i32
  %i.le = mul i32 %7, %i.ld
  %i.lf = zext i32 %i.le to i64                   ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.gx, i64 %i.lf
  %scevgep85 = getelementptr i8, ptr %scevgep84.a, i64 %i.lf
  %i.lg = trunc i64 %indvars.iv.i.i.i to i32
  %i.lh = mul i32 %i.hg, %i.lg
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.gj, i64 %i.li
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.li
  %i.lj = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.lk = mul i32 %i.gm, %i.lj                    ; 2 uses
  %i.ll = mul i32 %i.lk, %i.gl
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.lm ; 131 uses
  %i.lo = mul i32 %i.lk, %4
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.lp ; 55 uses
  switch i32 %i.hb, label %.preheader195.i.i.i [
    i32 10, label %.preheader.i.i.i
    i32 11, label %.preheader175.i.i.i
    i32 12, label %.preheader177.i.i.i
    i32 17, label %.preheader179.i.i.i
    i32 19, label %.preheader181.i.i.i
    i32 20, label %.preheader183.i.i.i
    i32 28, label %.preheader185.i.i.i
    i32 25, label %.preheader187.i.i.i
    i32 26, label %.preheader189.i.i.i
    i32 33, label %.preheader191.i.i.i
    i32 34, label %.preheader193.i.i.i
  ]

.preheader195.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader195.i.i.i
  br i1 %lcmp.mod404.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.lr = load i8, ptr %i.ln, align 1
  store i8 %i.lr, ptr %i.lq, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  store i8 %i.lt, ptr %i.lu, align 1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  store i8 %i.lw, ptr %i.lx, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.11167201.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.11167.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.11200.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph.i.i.i.preheader ], [ %i.lz, %.lr.ph.i.i.i.prol ]
  %.11153199.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph.i.i.i.preheader ], [ %i.ly, %.lr.ph.i.i.i.prol ]
  br i1 %i.ke, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader193.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader

.lr.ph206.i.i.i.preheader:                        ; preds = %.preheader193.i.i.i
  br i1 %min.iters.check316, label %.lr.ph206.i.i.i.preheader348, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph206.i.i.i.preheader
  %bound0312 = icmp ult ptr %scevgep306, %scevgep311
  %bound1313 = icmp ult ptr %scevgep309, %scevgep308
  %found.conflict314 = and i1 %bound0312, %bound1313
  br i1 %found.conflict314, label %.lr.ph206.i.i.i.preheader348, label %vector.ph317

vector.ph317:                                     ; preds = %vector.memcheck305
  %i.ma = getelementptr i8, ptr %i.lq, i64 %i.ih
  %i.mb = getelementptr i8, ptr %i.ln, i64 %i.ii
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next331, %vector.body319 ] ; 3 uses
  %i.mc = shl i64 %index320, 1
  %next.gep321 = getelementptr i8, ptr %i.lq, i64 %i.mc
  %i.md = shl i64 %index320, 2                    ; 8 uses
  %next.gep322 = getelementptr i8, ptr %i.ln, i64 %i.md ; 4 uses
  %i.me = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep323 = getelementptr i8, ptr %i.me, i64 4
  %i.mf = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep324 = getelementptr i8, ptr %i.mf, i64 8
  %i.mg = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep325 = getelementptr i8, ptr %i.mg, i64 12
  %i.mh = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep326 = getelementptr i8, ptr %i.mh, i64 16
  %i.mi = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep327 = getelementptr i8, ptr %i.mi, i64 20
  %i.mj = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep328 = getelementptr i8, ptr %i.mj, i64 24
  %i.mk = getelementptr i8, ptr %i.ln, i64 %i.md  ; 4 uses
  %next.gep329 = getelementptr i8, ptr %i.mk, i64 28
  %i.ml = load i8, ptr %next.gep322, align 1, !alias.scope !82
  %i.mm = load i8, ptr %next.gep323, align 1, !alias.scope !82
  %i.mn = load i8, ptr %next.gep324, align 1, !alias.scope !82
  %i.mo = load i8, ptr %next.gep325, align 1, !alias.scope !82
  %i.mp = load i8, ptr %next.gep326, align 1, !alias.scope !82
  %i.mq = load i8, ptr %next.gep327, align 1, !alias.scope !82
  %i.mr = load i8, ptr %next.gep328, align 1, !alias.scope !82
  %i.ms = load i8, ptr %next.gep329, align 1, !alias.scope !82
  %i.mt = insertelement <8 x i8> poison, i8 %i.ml, i64 0
  %i.mu = insertelement <8 x i8> %i.mt, i8 %i.mm, i64 1
  %i.mv = insertelement <8 x i8> %i.mu, i8 %i.mn, i64 2
  %i.mw = insertelement <8 x i8> %i.mv, i8 %i.mo, i64 3
  %i.mx = insertelement <8 x i8> %i.mw, i8 %i.mp, i64 4
  %i.my = insertelement <8 x i8> %i.mx, i8 %i.mq, i64 5
  %i.mz = insertelement <8 x i8> %i.my, i8 %i.mr, i64 6
  %i.na = insertelement <8 x i8> %i.mz, i8 %i.ms, i64 7
  %i.nb = zext <8 x i8> %i.na to <8 x i16>
  %i.nc = getelementptr inbounds nuw i8, ptr %next.gep322, i64 1
  %i.nd = getelementptr i8, ptr %i.me, i64 5
  %i.ne = getelementptr i8, ptr %i.mf, i64 9
  %i.nf = getelementptr i8, ptr %i.mg, i64 13
  %i.ng = getelementptr i8, ptr %i.mh, i64 17
  %i.nh = getelementptr i8, ptr %i.mi, i64 21
  %i.ni = getelementptr i8, ptr %i.mj, i64 25
  %i.nj = getelementptr i8, ptr %i.mk, i64 29
  %i.nk = load i8, ptr %i.nc, align 1, !alias.scope !82
  %i.nl = load i8, ptr %i.nd, align 1, !alias.scope !82
  %i.nm = load i8, ptr %i.ne, align 1, !alias.scope !82
  %i.nn = load i8, ptr %i.nf, align 1, !alias.scope !82
  %i.no = load i8, ptr %i.ng, align 1, !alias.scope !82
  %i.np = load i8, ptr %i.nh, align 1, !alias.scope !82
  %i.nq = load i8, ptr %i.ni, align 1, !alias.scope !82
  %i.nr = load i8, ptr %i.nj, align 1, !alias.scope !82
  %i.ns = insertelement <8 x i8> poison, i8 %i.nk, i64 0
  %i.nt = insertelement <8 x i8> %i.ns, i8 %i.nl, i64 1
  %i.nu = insertelement <8 x i8> %i.nt, i8 %i.nm, i64 2
  %i.nv = insertelement <8 x i8> %i.nu, i8 %i.nn, i64 3
  %i.nw = insertelement <8 x i8> %i.nv, i8 %i.no, i64 4
  %i.nx = insertelement <8 x i8> %i.nw, i8 %i.np, i64 5
  %i.ny = insertelement <8 x i8> %i.nx, i8 %i.nq, i64 6
  %i.nz = insertelement <8 x i8> %i.ny, i8 %i.nr, i64 7
  %i.oa = zext <8 x i8> %i.nz to <8 x i16>
  %i.ob = getelementptr inbounds nuw i8, ptr %next.gep322, i64 2
  %i.oc = getelementptr i8, ptr %i.me, i64 6
  %i.od = getelementptr i8, ptr %i.mf, i64 10
  %i.oe = getelementptr i8, ptr %i.mg, i64 14
  %i.of = getelementptr i8, ptr %i.mh, i64 18
  %i.og = getelementptr i8, ptr %i.mi, i64 22
  %i.oh = getelementptr i8, ptr %i.mj, i64 26
  %i.oi = getelementptr i8, ptr %i.mk, i64 30
  %i.oj = load i8, ptr %i.ob, align 1, !alias.scope !82
  %i.ok = load i8, ptr %i.oc, align 1, !alias.scope !82
  %i.ol = load i8, ptr %i.od, align 1, !alias.scope !82
  %i.om = load i8, ptr %i.oe, align 1, !alias.scope !82
  %i.on = load i8, ptr %i.of, align 1, !alias.scope !82
  %i.oo = load i8, ptr %i.og, align 1, !alias.scope !82
  %i.op = load i8, ptr %i.oh, align 1, !alias.scope !82
  %i.oq = load i8, ptr %i.oi, align 1, !alias.scope !82
  %i.or = insertelement <8 x i8> poison, i8 %i.oj, i64 0
  %i.os = insertelement <8 x i8> %i.or, i8 %i.ok, i64 1
  %i.ot = insertelement <8 x i8> %i.os, i8 %i.ol, i64 2
  %i.ou = insertelement <8 x i8> %i.ot, i8 %i.om, i64 3
  %i.ov = insertelement <8 x i8> %i.ou, i8 %i.on, i64 4
  %i.ow = insertelement <8 x i8> %i.ov, i8 %i.oo, i64 5
  %i.ox = insertelement <8 x i8> %i.ow, i8 %i.op, i64 6
  %i.oy = insertelement <8 x i8> %i.ox, i8 %i.oq, i64 7
  %i.oz = zext <8 x i8> %i.oy to <8 x i16>
  %i.pa = mul nuw nsw <8 x i16> %i.nb, splat (i16 77)
  %i.pb = mul nuw <8 x i16> %i.oa, splat (i16 150)
  %i.pc = add nuw <8 x i16> %i.pb, %i.pa
  %i.pd = mul nuw nsw <8 x i16> %i.oz, splat (i16 29)
  %i.pe = add nuw <8 x i16> %i.pc, %i.pd
  %i.pf = lshr <8 x i16> %i.pe, splat (i16 8)
  %i.pg = trunc nuw <8 x i16> %i.pf to <8 x i8>
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep322, i64 3
  %i.pi = getelementptr i8, ptr %i.me, i64 7
  %i.pj = getelementptr i8, ptr %i.mf, i64 11
  %i.pk = getelementptr i8, ptr %i.mg, i64 15
  %i.pl = getelementptr i8, ptr %i.mh, i64 19
  %i.pm = getelementptr i8, ptr %i.mi, i64 23
  %i.pn = getelementptr i8, ptr %i.mj, i64 27
  %i.po = getelementptr i8, ptr %i.mk, i64 31
  %i.pp = load i8, ptr %i.ph, align 1, !alias.scope !82
  %i.pq = load i8, ptr %i.pi, align 1, !alias.scope !82
  %i.pr = load i8, ptr %i.pj, align 1, !alias.scope !82
  %i.ps = load i8, ptr %i.pk, align 1, !alias.scope !82
  %i.pt = load i8, ptr %i.pl, align 1, !alias.scope !82
  %i.pu = load i8, ptr %i.pm, align 1, !alias.scope !82
  %i.pv = load i8, ptr %i.pn, align 1, !alias.scope !82
  %i.pw = load i8, ptr %i.po, align 1, !alias.scope !82
  %i.px = insertelement <8 x i8> poison, i8 %i.pp, i64 0
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 1
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 2
  %i.qa = insertelement <8 x i8> %i.pz, i8 %i.ps, i64 3
  %i.qb = insertelement <8 x i8> %i.qa, i8 %i.pt, i64 4
  %i.qc = insertelement <8 x i8> %i.qb, i8 %i.pu, i64 5
  %i.qd = insertelement <8 x i8> %i.qc, i8 %i.pv, i64 6
  %i.qe = insertelement <8 x i8> %i.qd, i8 %i.pw, i64 7
  %interleaved.vec330 = shufflevector <8 x i8> %i.pg, <8 x i8> %i.qe, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec330, ptr %next.gep321, align 1, !alias.scope !85, !noalias !82
  %index.next331 = add nuw i64 %index320, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next331, %n.vec318
  br i1 %i.qf, label %middle.block332, label %vector.body319, !llvm.loop !87

middle.block332:                                  ; preds = %vector.body319
  br i1 %cmp.n333, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader348

.lr.ph206.i.i.i.preheader348:                     ; preds = %vector.memcheck305, %.lr.ph206.i.i.i.preheader, %middle.block332
  %.10166205.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %vector.memcheck305 ], [ %.11167198.i.i.i, %.lr.ph206.i.i.i.preheader ], [ %i.ig, %middle.block332 ]
  %.10204.i.i.i.ph = phi ptr [ %i.lq, %vector.memcheck305 ], [ %i.lq, %.lr.ph206.i.i.i.preheader ], [ %i.ma, %middle.block332 ]
  %.10152203.i.i.i.ph = phi ptr [ %i.ln, %vector.memcheck305 ], [ %i.ln, %.lr.ph206.i.i.i.preheader ], [ %i.mb, %middle.block332 ]
  br label %.lr.ph206.i.i.i

.preheader191.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check283

iter.check283:                                    ; preds = %.preheader191.i.i.i
  br i1 %min.iters.check253, label %.lr.ph211.i.i.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %iter.check283
  %bound0249 = icmp ult ptr %scevgep243, %scevgep248
  %bound1250 = icmp ult ptr %scevgep246, %scevgep245
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph211.i.i.i.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %vector.memcheck242
  br i1 %min.iters.check255, label %vec.epilog.ph287, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.qg = getelementptr i8, ptr %i.lq, i64 %n.vec257
  %i.qh = getelementptr i8, ptr %i.ln, i64 %i.io
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next277, %vector.body258 ] ; 3 uses
  %next.gep260.a = getelementptr i8, ptr %i.lq, i64 %index259
  %i.qi = shl i64 %index259, 2                    ; 16 uses
  %next.gep261.a = getelementptr i8, ptr %i.ln, i64 %i.qi ; 3 uses
  %i.qj = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep262.a = getelementptr i8, ptr %i.qj, i64 4
  %i.qk = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep263.a = getelementptr i8, ptr %i.qk, i64 8
  %i.ql = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep264.a = getelementptr i8, ptr %i.ql, i64 12
  %i.qm = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep265.a = getelementptr i8, ptr %i.qm, i64 16
  %i.qn = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep266.a = getelementptr i8, ptr %i.qn, i64 20
  %i.qo = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep267 = getelementptr i8, ptr %i.qo, i64 24
  %i.qp = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep268 = getelementptr i8, ptr %i.qp, i64 28
  %i.qq = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep269 = getelementptr i8, ptr %i.qq, i64 32
  %i.qr = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep270 = getelementptr i8, ptr %i.qr, i64 36
  %i.qs = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep271 = getelementptr i8, ptr %i.qs, i64 40
  %i.qt = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep272 = getelementptr i8, ptr %i.qt, i64 44
  %i.qu = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep273 = getelementptr i8, ptr %i.qu, i64 48
  %i.qv = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep274 = getelementptr i8, ptr %i.qv, i64 52
  %i.qw = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep275 = getelementptr i8, ptr %i.qw, i64 56
  %i.qx = getelementptr i8, ptr %i.ln, i64 %i.qi  ; 3 uses
  %next.gep276 = getelementptr i8, ptr %i.qx, i64 60
  %i.qy = load i8, ptr %next.gep261.a, align 1, !alias.scope !88
  %i.qz = load i8, ptr %next.gep262.a, align 1, !alias.scope !88
  %i.ra = load i8, ptr %next.gep263.a, align 1, !alias.scope !88
  %i.rb = load i8, ptr %next.gep264.a, align 1, !alias.scope !88
  %i.rc = load i8, ptr %next.gep265.a, align 1, !alias.scope !88
  %i.rd = load i8, ptr %next.gep266.a, align 1, !alias.scope !88
  %i.re = load i8, ptr %next.gep267, align 1, !alias.scope !88
  %i.rf = load i8, ptr %next.gep268, align 1, !alias.scope !88
  %i.rg = load i8, ptr %next.gep269, align 1, !alias.scope !88
  %i.rh = load i8, ptr %next.gep270, align 1, !alias.scope !88
  %i.ri = load i8, ptr %next.gep271, align 1, !alias.scope !88
  %i.rj = load i8, ptr %next.gep272, align 1, !alias.scope !88
  %i.rk = load i8, ptr %next.gep273, align 1, !alias.scope !88
  %i.rl = load i8, ptr %next.gep274, align 1, !alias.scope !88
  %i.rm = load i8, ptr %next.gep275, align 1, !alias.scope !88
  %i.rn = load i8, ptr %next.gep276, align 1, !alias.scope !88
  %i.ro = insertelement <16 x i8> poison, i8 %i.qy, i64 0
  %i.rp = insertelement <16 x i8> %i.ro, i8 %i.qz, i64 1
  %i.rq = insertelement <16 x i8> %i.rp, i8 %i.ra, i64 2
  %i.rr = insertelement <16 x i8> %i.rq, i8 %i.rb, i64 3
  %i.rs = insertelement <16 x i8> %i.rr, i8 %i.rc, i64 4
  %i.rt = insertelement <16 x i8> %i.rs, i8 %i.rd, i64 5
  %i.ru = insertelement <16 x i8> %i.rt, i8 %i.re, i64 6
  %i.rv = insertelement <16 x i8> %i.ru, i8 %i.rf, i64 7
  %i.rw = insertelement <16 x i8> %i.rv, i8 %i.rg, i64 8
  %i.rx = insertelement <16 x i8> %i.rw, i8 %i.rh, i64 9
  %i.ry = insertelement <16 x i8> %i.rx, i8 %i.ri, i64 10
  %i.rz = insertelement <16 x i8> %i.ry, i8 %i.rj, i64 11
  %i.sa = insertelement <16 x i8> %i.rz, i8 %i.rk, i64 12
  %i.sb = insertelement <16 x i8> %i.sa, i8 %i.rl, i64 13
  %i.sc = insertelement <16 x i8> %i.sb, i8 %i.rm, i64 14
  %i.sd = insertelement <16 x i8> %i.sc, i8 %i.rn, i64 15
  %i.se = zext <16 x i8> %i.sd to <16 x i16>
  %i.sf = getelementptr inbounds nuw i8, ptr %next.gep261.a, i64 1
  %i.sg = getelementptr i8, ptr %i.qj, i64 5
  %i.sh = getelementptr i8, ptr %i.qk, i64 9
  %i.si = getelementptr i8, ptr %i.ql, i64 13
  %i.sj = getelementptr i8, ptr %i.qm, i64 17
  %i.sk = getelementptr i8, ptr %i.qn, i64 21
  %i.sl = getelementptr i8, ptr %i.qo, i64 25
  %i.sm = getelementptr i8, ptr %i.qp, i64 29
  %i.sn = getelementptr i8, ptr %i.qq, i64 33
  %i.so = getelementptr i8, ptr %i.qr, i64 37
  %i.sp = getelementptr i8, ptr %i.qs, i64 41
  %i.sq = getelementptr i8, ptr %i.qt, i64 45
  %i.sr = getelementptr i8, ptr %i.qu, i64 49
  %i.ss = getelementptr i8, ptr %i.qv, i64 53
  %i.st = getelementptr i8, ptr %i.qw, i64 57
  %i.su = getelementptr i8, ptr %i.qx, i64 61
  %i.sv = load i8, ptr %i.sf, align 1, !alias.scope !88
  %i.sw = load i8, ptr %i.sg, align 1, !alias.scope !88
  %i.sx = load i8, ptr %i.sh, align 1, !alias.scope !88
  %i.sy = load i8, ptr %i.si, align 1, !alias.scope !88
  %i.sz = load i8, ptr %i.sj, align 1, !alias.scope !88
  %i.ta = load i8, ptr %i.sk, align 1, !alias.scope !88
  %i.tb = load i8, ptr %i.sl, align 1, !alias.scope !88
  %i.tc = load i8, ptr %i.sm, align 1, !alias.scope !88
  %i.td = load i8, ptr %i.sn, align 1, !alias.scope !88
  %i.te = load i8, ptr %i.so, align 1, !alias.scope !88
  %i.tf = load i8, ptr %i.sp, align 1, !alias.scope !88
  %i.tg = load i8, ptr %i.sq, align 1, !alias.scope !88
  %i.th = load i8, ptr %i.sr, align 1, !alias.scope !88
  %i.ti = load i8, ptr %i.ss, align 1, !alias.scope !88
  %i.tj = load i8, ptr %i.st, align 1, !alias.scope !88
  %i.tk = load i8, ptr %i.su, align 1, !alias.scope !88
  %i.tl = insertelement <16 x i8> poison, i8 %i.sv, i64 0
  %i.tm = insertelement <16 x i8> %i.tl, i8 %i.sw, i64 1
  %i.tn = insertelement <16 x i8> %i.tm, i8 %i.sx, i64 2
  %i.to = insertelement <16 x i8> %i.tn, i8 %i.sy, i64 3
  %i.tp = insertelement <16 x i8> %i.to, i8 %i.sz, i64 4
  %i.tq = insertelement <16 x i8> %i.tp, i8 %i.ta, i64 5
  %i.tr = insertelement <16 x i8> %i.tq, i8 %i.tb, i64 6
  %i.ts = insertelement <16 x i8> %i.tr, i8 %i.tc, i64 7
  %i.tt = insertelement <16 x i8> %i.ts, i8 %i.td, i64 8
  %i.tu = insertelement <16 x i8> %i.tt, i8 %i.te, i64 9
  %i.tv = insertelement <16 x i8> %i.tu, i8 %i.tf, i64 10
  %i.tw = insertelement <16 x i8> %i.tv, i8 %i.tg, i64 11
  %i.tx = insertelement <16 x i8> %i.tw, i8 %i.th, i64 12
  %i.ty = insertelement <16 x i8> %i.tx, i8 %i.ti, i64 13
  %i.tz = insertelement <16 x i8> %i.ty, i8 %i.tj, i64 14
  %i.ua = insertelement <16 x i8> %i.tz, i8 %i.tk, i64 15
  %i.ub = zext <16 x i8> %i.ua to <16 x i16>
  %i.uc = getelementptr inbounds nuw i8, ptr %next.gep261.a, i64 2
  %i.ud = getelementptr i8, ptr %i.qj, i64 6
  %i.ue = getelementptr i8, ptr %i.qk, i64 10
  %i.uf = getelementptr i8, ptr %i.ql, i64 14
  %i.ug = getelementptr i8, ptr %i.qm, i64 18
  %i.uh = getelementptr i8, ptr %i.qn, i64 22
  %i.ui = getelementptr i8, ptr %i.qo, i64 26
  %i.uj = getelementptr i8, ptr %i.qp, i64 30
  %i.uk = getelementptr i8, ptr %i.qq, i64 34
  %i.ul = getelementptr i8, ptr %i.qr, i64 38
  %i.um = getelementptr i8, ptr %i.qs, i64 42
  %i.un = getelementptr i8, ptr %i.qt, i64 46
  %i.uo = getelementptr i8, ptr %i.qu, i64 50
  %i.up = getelementptr i8, ptr %i.qv, i64 54
  %i.uq = getelementptr i8, ptr %i.qw, i64 58
  %i.ur = getelementptr i8, ptr %i.qx, i64 62
  %i.us = load i8, ptr %i.uc, align 1, !alias.scope !88
  %i.ut = load i8, ptr %i.ud, align 1, !alias.scope !88
  %i.uu = load i8, ptr %i.ue, align 1, !alias.scope !88
  %i.uv = load i8, ptr %i.uf, align 1, !alias.scope !88
  %i.uw = load i8, ptr %i.ug, align 1, !alias.scope !88
  %i.ux = load i8, ptr %i.uh, align 1, !alias.scope !88
  %i.uy = load i8, ptr %i.ui, align 1, !alias.scope !88
  %i.uz = load i8, ptr %i.uj, align 1, !alias.scope !88
  %i.va = load i8, ptr %i.uk, align 1, !alias.scope !88
  %i.vb = load i8, ptr %i.ul, align 1, !alias.scope !88
  %i.vc = load i8, ptr %i.um, align 1, !alias.scope !88
  %i.vd = load i8, ptr %i.un, align 1, !alias.scope !88
  %i.ve = load i8, ptr %i.uo, align 1, !alias.scope !88
  %i.vf = load i8, ptr %i.up, align 1, !alias.scope !88
  %i.vg = load i8, ptr %i.uq, align 1, !alias.scope !88
  %i.vh = load i8, ptr %i.ur, align 1, !alias.scope !88
  %i.vi = insertelement <16 x i8> poison, i8 %i.us, i64 0
  %i.vj = insertelement <16 x i8> %i.vi, i8 %i.ut, i64 1
  %i.vk = insertelement <16 x i8> %i.vj, i8 %i.uu, i64 2
  %i.vl = insertelement <16 x i8> %i.vk, i8 %i.uv, i64 3
  %i.vm = insertelement <16 x i8> %i.vl, i8 %i.uw, i64 4
  %i.vn = insertelement <16 x i8> %i.vm, i8 %i.ux, i64 5
  %i.vo = insertelement <16 x i8> %i.vn, i8 %i.uy, i64 6
  %i.vp = insertelement <16 x i8> %i.vo, i8 %i.uz, i64 7
  %i.vq = insertelement <16 x i8> %i.vp, i8 %i.va, i64 8
  %i.vr = insertelement <16 x i8> %i.vq, i8 %i.vb, i64 9
  %i.vs = insertelement <16 x i8> %i.vr, i8 %i.vc, i64 10
  %i.vt = insertelement <16 x i8> %i.vs, i8 %i.vd, i64 11
  %i.vu = insertelement <16 x i8> %i.vt, i8 %i.ve, i64 12
  %i.vv = insertelement <16 x i8> %i.vu, i8 %i.vf, i64 13
  %i.vw = insertelement <16 x i8> %i.vv, i8 %i.vg, i64 14
  %i.vx = insertelement <16 x i8> %i.vw, i8 %i.vh, i64 15
  %i.vy = zext <16 x i8> %i.vx to <16 x i16>
  %i.vz = mul nuw nsw <16 x i16> %i.se, splat (i16 77)
  %i.wa = mul nuw <16 x i16> %i.ub, splat (i16 150)
  %i.wb = add nuw <16 x i16> %i.wa, %i.vz
  %i.wc = mul nuw nsw <16 x i16> %i.vy, splat (i16 29)
  %i.wd = add nuw <16 x i16> %i.wb, %i.wc
  %i.we = lshr <16 x i16> %i.wd, splat (i16 8)
  %i.wf = trunc nuw <16 x i16> %i.we to <16 x i8>
  store <16 x i8> %i.wf, ptr %next.gep260.a, align 1, !alias.scope !91, !noalias !88
  %index.next277 = add nuw i64 %index259, 16      ; 2 uses
  %i.wg = icmp eq i64 %index.next277, %n.vec257
  br i1 %i.wg, label %vec.epilog.iter.check285, label %vector.body258, !llvm.loop !93

vec.epilog.iter.check285:                         ; preds = %vector.body258
  br i1 %min.epilog.iters.check286, label %.lr.ph211.i.i.i.preheader, label %vec.epilog.ph287, !prof !94

.lr.ph211.i.i.i.preheader:                        ; preds = %vec.epilog.vector.body289, %vector.memcheck242, %iter.check283, %vec.epilog.iter.check285
  %.9165210.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %iter.check283 ], [ %.11167198.i.i.i, %vector.memcheck242 ], [ %i.in, %vec.epilog.iter.check285 ], [ %i.it, %vec.epilog.vector.body289 ]
  %.9209.i.i.i.ph = phi ptr [ %i.lq, %iter.check283 ], [ %i.lq, %vector.memcheck242 ], [ %i.qg, %vec.epilog.iter.check285 ], [ %i.wh, %vec.epilog.vector.body289 ]
  %.9151208.i.i.i.ph = phi ptr [ %i.ln, %iter.check283 ], [ %i.ln, %vector.memcheck242 ], [ %i.qh, %vec.epilog.iter.check285 ], [ %i.wi, %vec.epilog.vector.body289 ]
  br label %.lr.ph211.i.i.i

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check285
  %vec.epilog.resume.val279 = phi i64 [ %n.vec257, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check254 ]
  %i.wh = getelementptr i8, ptr %i.lq, i64 %n.vec288
  %i.wi = getelementptr i8, ptr %i.ln, i64 %i.iu
  br label %vec.epilog.vector.body289

vec.epilog.vector.body289:                        ; preds = %vec.epilog.vector.body289, %vec.epilog.ph287
  %index290 = phi i64 [ %vec.epilog.resume.val279, %vec.epilog.ph287 ], [ %index.next300, %vec.epilog.vector.body289 ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %i.lq, i64 %index290
  %i.wj = shl i64 %index290, 2                    ; 8 uses
  %next.gep292 = getelementptr i8, ptr %i.ln, i64 %i.wj ; 3 uses
  %i.wk = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep293 = getelementptr i8, ptr %i.wk, i64 4
  %i.wl = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep294 = getelementptr i8, ptr %i.wl, i64 8
  %i.wm = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep295 = getelementptr i8, ptr %i.wm, i64 12
  %i.wn = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep296 = getelementptr i8, ptr %i.wn, i64 16
  %i.wo = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep297 = getelementptr i8, ptr %i.wo, i64 20
  %i.wp = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep298 = getelementptr i8, ptr %i.wp, i64 24
  %i.wq = getelementptr i8, ptr %i.ln, i64 %i.wj  ; 3 uses
  %next.gep299 = getelementptr i8, ptr %i.wq, i64 28
  %i.wr = load i8, ptr %next.gep292, align 1, !alias.scope !88
  %i.ws = load i8, ptr %next.gep293, align 1, !alias.scope !88
  %i.wt = load i8, ptr %next.gep294, align 1, !alias.scope !88
  %i.wu = load i8, ptr %next.gep295, align 1, !alias.scope !88
  %i.wv = load i8, ptr %next.gep296, align 1, !alias.scope !88
  %i.ww = load i8, ptr %next.gep297, align 1, !alias.scope !88
  %i.wx = load i8, ptr %next.gep298, align 1, !alias.scope !88
  %i.wy = load i8, ptr %next.gep299, align 1, !alias.scope !88
  %i.wz = insertelement <8 x i8> poison, i8 %i.wr, i64 0
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 1
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 2
  %i.xc = insertelement <8 x i8> %i.xb, i8 %i.wu, i64 3
  %i.xd = insertelement <8 x i8> %i.xc, i8 %i.wv, i64 4
  %i.xe = insertelement <8 x i8> %i.xd, i8 %i.ww, i64 5
  %i.xf = insertelement <8 x i8> %i.xe, i8 %i.wx, i64 6
  %i.xg = insertelement <8 x i8> %i.xf, i8 %i.wy, i64 7
  %i.xh = zext <8 x i8> %i.xg to <8 x i16>
  %i.xi = getelementptr inbounds nuw i8, ptr %next.gep292, i64 1
  %i.xj = getelementptr i8, ptr %i.wk, i64 5
  %i.xk = getelementptr i8, ptr %i.wl, i64 9
  %i.xl = getelementptr i8, ptr %i.wm, i64 13
  %i.xm = getelementptr i8, ptr %i.wn, i64 17
  %i.xn = getelementptr i8, ptr %i.wo, i64 21
  %i.xo = getelementptr i8, ptr %i.wp, i64 25
  %i.xp = getelementptr i8, ptr %i.wq, i64 29
  %i.xq = load i8, ptr %i.xi, align 1, !alias.scope !88
  %i.xr = load i8, ptr %i.xj, align 1, !alias.scope !88
  %i.xs = load i8, ptr %i.xk, align 1, !alias.scope !88
  %i.xt = load i8, ptr %i.xl, align 1, !alias.scope !88
  %i.xu = load i8, ptr %i.xm, align 1, !alias.scope !88
  %i.xv = load i8, ptr %i.xn, align 1, !alias.scope !88
  %i.xw = load i8, ptr %i.xo, align 1, !alias.scope !88
  %i.xx = load i8, ptr %i.xp, align 1, !alias.scope !88
  %i.xy = insertelement <8 x i8> poison, i8 %i.xq, i64 0
  %i.xz = insertelement <8 x i8> %i.xy, i8 %i.xr, i64 1
  %i.ya = insertelement <8 x i8> %i.xz, i8 %i.xs, i64 2
  %i.yb = insertelement <8 x i8> %i.ya, i8 %i.xt, i64 3
  %i.yc = insertelement <8 x i8> %i.yb, i8 %i.xu, i64 4
  %i.yd = insertelement <8 x i8> %i.yc, i8 %i.xv, i64 5
  %i.ye = insertelement <8 x i8> %i.yd, i8 %i.xw, i64 6
  %i.yf = insertelement <8 x i8> %i.ye, i8 %i.xx, i64 7
  %i.yg = zext <8 x i8> %i.yf to <8 x i16>
  %i.yh = getelementptr inbounds nuw i8, ptr %next.gep292, i64 2
  %i.yi = getelementptr i8, ptr %i.wk, i64 6
  %i.yj = getelementptr i8, ptr %i.wl, i64 10
  %i.yk = getelementptr i8, ptr %i.wm, i64 14
  %i.yl = getelementptr i8, ptr %i.wn, i64 18
  %i.ym = getelementptr i8, ptr %i.wo, i64 22
  %i.yn = getelementptr i8, ptr %i.wp, i64 26
  %i.yo = getelementptr i8, ptr %i.wq, i64 30
  %i.yp = load i8, ptr %i.yh, align 1, !alias.scope !88
  %i.yq = load i8, ptr %i.yi, align 1, !alias.scope !88
  %i.yr = load i8, ptr %i.yj, align 1, !alias.scope !88
  %i.ys = load i8, ptr %i.yk, align 1, !alias.scope !88
  %i.yt = load i8, ptr %i.yl, align 1, !alias.scope !88
  %i.yu = load i8, ptr %i.ym, align 1, !alias.scope !88
  %i.yv = load i8, ptr %i.yn, align 1, !alias.scope !88
  %i.yw = load i8, ptr %i.yo, align 1, !alias.scope !88
  %i.yx = insertelement <8 x i8> poison, i8 %i.yp, i64 0
  %i.yy = insertelement <8 x i8> %i.yx, i8 %i.yq, i64 1
  %i.yz = insertelement <8 x i8> %i.yy, i8 %i.yr, i64 2
  %i.za = insertelement <8 x i8> %i.yz, i8 %i.ys, i64 3
  %i.zb = insertelement <8 x i8> %i.za, i8 %i.yt, i64 4
  %i.zc = insertelement <8 x i8> %i.zb, i8 %i.yu, i64 5
  %i.zd = insertelement <8 x i8> %i.zc, i8 %i.yv, i64 6
  %i.ze = insertelement <8 x i8> %i.zd, i8 %i.yw, i64 7
  %i.zf = zext <8 x i8> %i.ze to <8 x i16>
  %i.zg = mul nuw nsw <8 x i16> %i.xh, splat (i16 77)
  %i.zh = mul nuw <8 x i16> %i.yg, splat (i16 150)
  %i.zi = add nuw <8 x i16> %i.zh, %i.zg
  %i.zj = mul nuw nsw <8 x i16> %i.zf, splat (i16 29)
  %i.zk = add nuw <8 x i16> %i.zi, %i.zj
  %i.zl = lshr <8 x i16> %i.zk, splat (i16 8)
  %i.zm = trunc nuw <8 x i16> %i.zl to <8 x i8>
  store <8 x i8> %i.zm, ptr %next.gep291, align 1, !alias.scope !91, !noalias !88
  %index.next300 = add nuw i64 %index290, 8       ; 2 uses
  %i.zn = icmp eq i64 %index.next300, %n.vec288
  br i1 %i.zn, label %.lr.ph211.i.i.i.preheader, label %vec.epilog.vector.body289, !llvm.loop !95

.preheader189.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph216.i.i.i.preheader

.lr.ph216.i.i.i.preheader:                        ; preds = %.preheader189.i.i.i
  br i1 %min.iters.check221, label %.lr.ph216.i.i.i.preheader345, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph216.i.i.i.preheader
  %bound0217 = icmp ult ptr %scevgep211, %scevgep216
  %bound1218 = icmp ult ptr %scevgep214, %scevgep213
  %found.conflict219 = and i1 %bound0217, %bound1218
  br i1 %found.conflict219, label %.lr.ph216.i.i.i.preheader345, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck210
  %i.zo = getelementptr i8, ptr %i.lq, i64 %i.ix
  %i.zp = getelementptr i8, ptr %i.ln, i64 %i.iy
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next236, %vector.body224 ] ; 3 uses
  %i.zq = shl i64 %index225, 1
  %next.gep226.a = getelementptr i8, ptr %i.lq, i64 %i.zq
  %i.zr = mul i64 %index225, 3                    ; 8 uses
  %next.gep227 = getelementptr i8, ptr %i.ln, i64 %i.zr ; 3 uses
  %i.zs = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep228 = getelementptr i8, ptr %i.zs, i64 3
  %i.zt = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep229 = getelementptr i8, ptr %i.zt, i64 6
  %i.zu = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep230 = getelementptr i8, ptr %i.zu, i64 9
  %i.zv = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.zv, i64 12
  %i.zw = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep232 = getelementptr i8, ptr %i.zw, i64 15
  %i.zx = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep233 = getelementptr i8, ptr %i.zx, i64 18
  %i.zy = getelementptr i8, ptr %i.ln, i64 %i.zr  ; 3 uses
  %next.gep234 = getelementptr i8, ptr %i.zy, i64 21
  %i.zz = load i8, ptr %next.gep227, align 1, !alias.scope !96
  %i.aaa = load i8, ptr %next.gep228, align 1, !alias.scope !96
  %i.aab = load i8, ptr %next.gep229, align 1, !alias.scope !96
  %i.aac = load i8, ptr %next.gep230, align 1, !alias.scope !96
  %i.aad = load i8, ptr %next.gep231, align 1, !alias.scope !96
  %i.aae = load i8, ptr %next.gep232, align 1, !alias.scope !96
  %i.aaf = load i8, ptr %next.gep233, align 1, !alias.scope !96
  %i.aag = load i8, ptr %next.gep234, align 1, !alias.scope !96
  %i.aah = insertelement <8 x i8> poison, i8 %i.zz, i64 0
  %i.aai = insertelement <8 x i8> %i.aah, i8 %i.aaa, i64 1
  %i.aaj = insertelement <8 x i8> %i.aai, i8 %i.aab, i64 2
  %i.aak = insertelement <8 x i8> %i.aaj, i8 %i.aac, i64 3
  %i.aal = insertelement <8 x i8> %i.aak, i8 %i.aad, i64 4
  %i.aam = insertelement <8 x i8> %i.aal, i8 %i.aae, i64 5
  %i.aan = insertelement <8 x i8> %i.aam, i8 %i.aaf, i64 6
  %i.aao = insertelement <8 x i8> %i.aan, i8 %i.aag, i64 7
  %i.aap = zext <8 x i8> %i.aao to <8 x i16>
  %i.aaq = getelementptr inbounds nuw i8, ptr %next.gep227, i64 1
  %i.aar = getelementptr i8, ptr %i.zs, i64 4
  %i.aas = getelementptr i8, ptr %i.zt, i64 7
  %i.aat = getelementptr i8, ptr %i.zu, i64 10
  %i.aau = getelementptr i8, ptr %i.zv, i64 13
  %i.aav = getelementptr i8, ptr %i.zw, i64 16
  %i.aaw = getelementptr i8, ptr %i.zx, i64 19
  %i.aax = getelementptr i8, ptr %i.zy, i64 22
  %i.aay = load i8, ptr %i.aaq, align 1, !alias.scope !96
  %i.aaz = load i8, ptr %i.aar, align 1, !alias.scope !96
  %i.aba = load i8, ptr %i.aas, align 1, !alias.scope !96
  %i.abb = load i8, ptr %i.aat, align 1, !alias.scope !96
  %i.abc = load i8, ptr %i.aau, align 1, !alias.scope !96
  %i.abd = load i8, ptr %i.aav, align 1, !alias.scope !96
  %i.abe = load i8, ptr %i.aaw, align 1, !alias.scope !96
  %i.abf = load i8, ptr %i.aax, align 1, !alias.scope !96
  %i.abg = insertelement <8 x i8> poison, i8 %i.aay, i64 0
  %i.abh = insertelement <8 x i8> %i.abg, i8 %i.aaz, i64 1
  %i.abi = insertelement <8 x i8> %i.abh, i8 %i.aba, i64 2
  %i.abj = insertelement <8 x i8> %i.abi, i8 %i.abb, i64 3
  %i.abk = insertelement <8 x i8> %i.abj, i8 %i.abc, i64 4
  %i.abl = insertelement <8 x i8> %i.abk, i8 %i.abd, i64 5
  %i.abm = insertelement <8 x i8> %i.abl, i8 %i.abe, i64 6
  %i.abn = insertelement <8 x i8> %i.abm, i8 %i.abf, i64 7
  %i.abo = zext <8 x i8> %i.abn to <8 x i16>
  %i.abp = getelementptr inbounds nuw i8, ptr %next.gep227, i64 2
  %i.abq = getelementptr i8, ptr %i.zs, i64 5
  %i.abr = getelementptr i8, ptr %i.zt, i64 8
  %i.abs = getelementptr i8, ptr %i.zu, i64 11
  %i.abt = getelementptr i8, ptr %i.zv, i64 14
  %i.abu = getelementptr i8, ptr %i.zw, i64 17
  %i.abv = getelementptr i8, ptr %i.zx, i64 20
  %i.abw = getelementptr i8, ptr %i.zy, i64 23
  %i.abx = load i8, ptr %i.abp, align 1, !alias.scope !96
  %i.aby = load i8, ptr %i.abq, align 1, !alias.scope !96
  %i.abz = load i8, ptr %i.abr, align 1, !alias.scope !96
  %i.aca = load i8, ptr %i.abs, align 1, !alias.scope !96
  %i.acb = load i8, ptr %i.abt, align 1, !alias.scope !96
  %i.acc = load i8, ptr %i.abu, align 1, !alias.scope !96
  %i.acd = load i8, ptr %i.abv, align 1, !alias.scope !96
  %i.ace = load i8, ptr %i.abw, align 1, !alias.scope !96
  %i.acf = insertelement <8 x i8> poison, i8 %i.abx, i64 0
  %i.acg = insertelement <8 x i8> %i.acf, i8 %i.aby, i64 1
  %i.ach = insertelement <8 x i8> %i.acg, i8 %i.abz, i64 2
  %i.aci = insertelement <8 x i8> %i.ach, i8 %i.aca, i64 3
  %i.acj = insertelement <8 x i8> %i.aci, i8 %i.acb, i64 4
  %i.ack = insertelement <8 x i8> %i.acj, i8 %i.acc, i64 5
  %i.acl = insertelement <8 x i8> %i.ack, i8 %i.acd, i64 6
  %i.acm = insertelement <8 x i8> %i.acl, i8 %i.ace, i64 7
  %i.acn = zext <8 x i8> %i.acm to <8 x i16>
  %i.aco = mul nuw nsw <8 x i16> %i.aap, splat (i16 77)
  %i.acp = mul nuw <8 x i16> %i.abo, splat (i16 150)
  %i.acq = add nuw <8 x i16> %i.acp, %i.aco
  %i.acr = mul nuw nsw <8 x i16> %i.acn, splat (i16 29)
  %i.acs = add nuw <8 x i16> %i.acq, %i.acr
  %i.act = lshr <8 x i16> %i.acs, splat (i16 8)
  %i.acu = trunc nuw <8 x i16> %i.act to <8 x i8>
  %interleaved.vec235 = shufflevector <8 x i8> %i.acu, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec235, ptr %next.gep226.a, align 1, !alias.scope !99, !noalias !96
  %index.next236 = add nuw i64 %index225, 8       ; 2 uses
  %i.acv = icmp eq i64 %index.next236, %n.vec223
  br i1 %i.acv, label %middle.block237, label %vector.body224, !llvm.loop !101

middle.block237:                                  ; preds = %vector.body224
  br i1 %cmp.n238, label %.loopexit.i.i.i, label %.lr.ph216.i.i.i.preheader345

.lr.ph216.i.i.i.preheader345:                     ; preds = %vector.memcheck210, %.lr.ph216.i.i.i.preheader, %middle.block237
  %.8164215.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %vector.memcheck210 ], [ %.11167198.i.i.i, %.lr.ph216.i.i.i.preheader ], [ %i.iw, %middle.block237 ]
  %.8214.i.i.i.ph = phi ptr [ %i.lq, %vector.memcheck210 ], [ %i.lq, %.lr.ph216.i.i.i.preheader ], [ %i.zo, %middle.block237 ]
  %.8150213.i.i.i.ph = phi ptr [ %i.ln, %vector.memcheck210 ], [ %i.ln, %.lr.ph216.i.i.i.preheader ], [ %i.zp, %middle.block237 ]
  br label %.lr.ph216.i.i.i

.preheader187.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check187

iter.check187:                                    ; preds = %.preheader187.i.i.i
  br i1 %min.iters.check156, label %.lr.ph221.i.i.i.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check187
  %bound0152 = icmp ult ptr %scevgep146, %scevgep151
  %bound1153 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %.lr.ph221.i.i.i.preheader, label %vector.main.loop.iter.check157

vector.main.loop.iter.check157:                   ; preds = %vector.memcheck145
  br i1 %min.iters.check158, label %vec.epilog.ph191, label %vector.ph159

vector.ph159:                                     ; preds = %vector.main.loop.iter.check157
  %i.acw = getelementptr i8, ptr %i.lq, i64 %n.vec160
  %i.acx = getelementptr i8, ptr %i.ln, i64 %i.jc
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next180, %vector.body161 ] ; 3 uses
  %next.gep163.a = getelementptr i8, ptr %i.lq, i64 %index162
  %i.acy = mul i64 %index162, 3                   ; 16 uses
  %next.gep164.a = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %i.acz = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep165.a = getelementptr i8, ptr %i.acz, i64 3
  %i.ada = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep166.a = getelementptr i8, ptr %i.ada, i64 6
  %i.adb = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep167.a = getelementptr i8, ptr %i.adb, i64 9
  %i.adc = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep168.a = getelementptr i8, ptr %i.adc, i64 12
  %i.add = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep169.a = getelementptr i8, ptr %i.add, i64 15
  %i.ade = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep170.a = getelementptr i8, ptr %i.ade, i64 18
  %i.adf = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep171.a = getelementptr i8, ptr %i.adf, i64 21
  %i.adg = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep172.a = getelementptr i8, ptr %i.adg, i64 24
  %i.adh = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep173.a = getelementptr i8, ptr %i.adh, i64 27
  %i.adi = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.adi, i64 30
  %i.adj = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep175 = getelementptr i8, ptr %i.adj, i64 33
  %i.adk = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep176 = getelementptr i8, ptr %i.adk, i64 36
  %i.adl = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep177 = getelementptr i8, ptr %i.adl, i64 39
  %i.adm = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.adm, i64 42
  %i.adn = getelementptr i8, ptr %i.ln, i64 %i.acy ; 3 uses
  %next.gep179 = getelementptr i8, ptr %i.adn, i64 45
  %i.ado = load i8, ptr %next.gep164.a, align 1, !alias.scope !102
  %i.adp = load i8, ptr %next.gep165.a, align 1, !alias.scope !102
  %i.adq = load i8, ptr %next.gep166.a, align 1, !alias.scope !102
  %i.adr = load i8, ptr %next.gep167.a, align 1, !alias.scope !102
  %i.ads = load i8, ptr %next.gep168.a, align 1, !alias.scope !102
  %i.adt = load i8, ptr %next.gep169.a, align 1, !alias.scope !102
  %i.adu = load i8, ptr %next.gep170.a, align 1, !alias.scope !102
  %i.adv = load i8, ptr %next.gep171.a, align 1, !alias.scope !102
  %i.adw = load i8, ptr %next.gep172.a, align 1, !alias.scope !102
  %i.adx = load i8, ptr %next.gep173.a, align 1, !alias.scope !102
  %i.ady = load i8, ptr %next.gep174, align 1, !alias.scope !102
  %i.adz = load i8, ptr %next.gep175, align 1, !alias.scope !102
  %i.aea = load i8, ptr %next.gep176, align 1, !alias.scope !102
  %i.aeb = load i8, ptr %next.gep177, align 1, !alias.scope !102
  %i.aec = load i8, ptr %next.gep178, align 1, !alias.scope !102
  %i.aed = load i8, ptr %next.gep179, align 1, !alias.scope !102
  %i.aee = insertelement <16 x i8> poison, i8 %i.ado, i64 0
  %i.aef = insertelement <16 x i8> %i.aee, i8 %i.adp, i64 1
  %i.aeg = insertelement <16 x i8> %i.aef, i8 %i.adq, i64 2
  %i.aeh = insertelement <16 x i8> %i.aeg, i8 %i.adr, i64 3
  %i.aei = insertelement <16 x i8> %i.aeh, i8 %i.ads, i64 4
  %i.aej = insertelement <16 x i8> %i.aei, i8 %i.adt, i64 5
  %i.aek = insertelement <16 x i8> %i.aej, i8 %i.adu, i64 6
  %i.ael = insertelement <16 x i8> %i.aek, i8 %i.adv, i64 7
  %i.aem = insertelement <16 x i8> %i.ael, i8 %i.adw, i64 8
  %i.aen = insertelement <16 x i8> %i.aem, i8 %i.adx, i64 9
  %i.aeo = insertelement <16 x i8> %i.aen, i8 %i.ady, i64 10
  %i.aep = insertelement <16 x i8> %i.aeo, i8 %i.adz, i64 11
  %i.aeq = insertelement <16 x i8> %i.aep, i8 %i.aea, i64 12
  %i.aer = insertelement <16 x i8> %i.aeq, i8 %i.aeb, i64 13
  %i.aes = insertelement <16 x i8> %i.aer, i8 %i.aec, i64 14
  %i.aet = insertelement <16 x i8> %i.aes, i8 %i.aed, i64 15
  %i.aeu = zext <16 x i8> %i.aet to <16 x i16>
  %i.aev = getelementptr inbounds nuw i8, ptr %next.gep164.a, i64 1
  %i.aew = getelementptr i8, ptr %i.acz, i64 4
  %i.aex = getelementptr i8, ptr %i.ada, i64 7
  %i.aey = getelementptr i8, ptr %i.adb, i64 10
  %i.aez = getelementptr i8, ptr %i.adc, i64 13
  %i.afa = getelementptr i8, ptr %i.add, i64 16
  %i.afb = getelementptr i8, ptr %i.ade, i64 19
  %i.afc = getelementptr i8, ptr %i.adf, i64 22
  %i.afd = getelementptr i8, ptr %i.adg, i64 25
  %i.afe = getelementptr i8, ptr %i.adh, i64 28
  %i.aff = getelementptr i8, ptr %i.adi, i64 31
  %i.afg = getelementptr i8, ptr %i.adj, i64 34
  %i.afh = getelementptr i8, ptr %i.adk, i64 37
  %i.afi = getelementptr i8, ptr %i.adl, i64 40
  %i.afj = getelementptr i8, ptr %i.adm, i64 43
  %i.afk = getelementptr i8, ptr %i.adn, i64 46
  %i.afl = load i8, ptr %i.aev, align 1, !alias.scope !102
  %i.afm = load i8, ptr %i.aew, align 1, !alias.scope !102
  %i.afn = load i8, ptr %i.aex, align 1, !alias.scope !102
  %i.afo = load i8, ptr %i.aey, align 1, !alias.scope !102
  %i.afp = load i8, ptr %i.aez, align 1, !alias.scope !102
  %i.afq = load i8, ptr %i.afa, align 1, !alias.scope !102
  %i.afr = load i8, ptr %i.afb, align 1, !alias.scope !102
  %i.afs = load i8, ptr %i.afc, align 1, !alias.scope !102
  %i.aft = load i8, ptr %i.afd, align 1, !alias.scope !102
  %i.afu = load i8, ptr %i.afe, align 1, !alias.scope !102
  %i.afv = load i8, ptr %i.aff, align 1, !alias.scope !102
  %i.afw = load i8, ptr %i.afg, align 1, !alias.scope !102
  %i.afx = load i8, ptr %i.afh, align 1, !alias.scope !102
  %i.afy = load i8, ptr %i.afi, align 1, !alias.scope !102
  %i.afz = load i8, ptr %i.afj, align 1, !alias.scope !102
  %i.aga = load i8, ptr %i.afk, align 1, !alias.scope !102
  %i.agb = insertelement <16 x i8> poison, i8 %i.afl, i64 0
  %i.agc = insertelement <16 x i8> %i.agb, i8 %i.afm, i64 1
  %i.agd = insertelement <16 x i8> %i.agc, i8 %i.afn, i64 2
  %i.age = insertelement <16 x i8> %i.agd, i8 %i.afo, i64 3
  %i.agf = insertelement <16 x i8> %i.age, i8 %i.afp, i64 4
  %i.agg = insertelement <16 x i8> %i.agf, i8 %i.afq, i64 5
  %i.agh = insertelement <16 x i8> %i.agg, i8 %i.afr, i64 6
  %i.agi = insertelement <16 x i8> %i.agh, i8 %i.afs, i64 7
  %i.agj = insertelement <16 x i8> %i.agi, i8 %i.aft, i64 8
  %i.agk = insertelement <16 x i8> %i.agj, i8 %i.afu, i64 9
  %i.agl = insertelement <16 x i8> %i.agk, i8 %i.afv, i64 10
  %i.agm = insertelement <16 x i8> %i.agl, i8 %i.afw, i64 11
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 12
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 13
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 14
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 15
  %i.agr = zext <16 x i8> %i.agq to <16 x i16>
  %i.ags = getelementptr inbounds nuw i8, ptr %next.gep164.a, i64 2
  %i.agt = getelementptr i8, ptr %i.acz, i64 5
  %i.agu = getelementptr i8, ptr %i.ada, i64 8
  %i.agv = getelementptr i8, ptr %i.adb, i64 11
  %i.agw = getelementptr i8, ptr %i.adc, i64 14
  %i.agx = getelementptr i8, ptr %i.add, i64 17
  %i.agy = getelementptr i8, ptr %i.ade, i64 20
  %i.agz = getelementptr i8, ptr %i.adf, i64 23
  %i.aha = getelementptr i8, ptr %i.adg, i64 26
  %i.ahb = getelementptr i8, ptr %i.adh, i64 29
  %i.ahc = getelementptr i8, ptr %i.adi, i64 32
  %i.ahd = getelementptr i8, ptr %i.adj, i64 35
  %i.ahe = getelementptr i8, ptr %i.adk, i64 38
  %i.ahf = getelementptr i8, ptr %i.adl, i64 41
  %i.ahg = getelementptr i8, ptr %i.adm, i64 44
  %i.ahh = getelementptr i8, ptr %i.adn, i64 47
  %i.ahi = load i8, ptr %i.ags, align 1, !alias.scope !102
  %i.ahj = load i8, ptr %i.agt, align 1, !alias.scope !102
  %i.ahk = load i8, ptr %i.agu, align 1, !alias.scope !102
  %i.ahl = load i8, ptr %i.agv, align 1, !alias.scope !102
  %i.ahm = load i8, ptr %i.agw, align 1, !alias.scope !102
  %i.ahn = load i8, ptr %i.agx, align 1, !alias.scope !102
  %i.aho = load i8, ptr %i.agy, align 1, !alias.scope !102
  %i.ahp = load i8, ptr %i.agz, align 1, !alias.scope !102
  %i.ahq = load i8, ptr %i.aha, align 1, !alias.scope !102
  %i.ahr = load i8, ptr %i.ahb, align 1, !alias.scope !102
  %i.ahs = load i8, ptr %i.ahc, align 1, !alias.scope !102
  %i.aht = load i8, ptr %i.ahd, align 1, !alias.scope !102
  %i.ahu = load i8, ptr %i.ahe, align 1, !alias.scope !102
  %i.ahv = load i8, ptr %i.ahf, align 1, !alias.scope !102
  %i.ahw = load i8, ptr %i.ahg, align 1, !alias.scope !102
  %i.ahx = load i8, ptr %i.ahh, align 1, !alias.scope !102
  %i.ahy = insertelement <16 x i8> poison, i8 %i.ahi, i64 0
  %i.ahz = insertelement <16 x i8> %i.ahy, i8 %i.ahj, i64 1
  %i.aia = insertelement <16 x i8> %i.ahz, i8 %i.ahk, i64 2
  %i.aib = insertelement <16 x i8> %i.aia, i8 %i.ahl, i64 3
  %i.aic = insertelement <16 x i8> %i.aib, i8 %i.ahm, i64 4
  %i.aid = insertelement <16 x i8> %i.aic, i8 %i.ahn, i64 5
  %i.aie = insertelement <16 x i8> %i.aid, i8 %i.aho, i64 6
  %i.aif = insertelement <16 x i8> %i.aie, i8 %i.ahp, i64 7
  %i.aig = insertelement <16 x i8> %i.aif, i8 %i.ahq, i64 8
  %i.aih = insertelement <16 x i8> %i.aig, i8 %i.ahr, i64 9
  %i.aii = insertelement <16 x i8> %i.aih, i8 %i.ahs, i64 10
  %i.aij = insertelement <16 x i8> %i.aii, i8 %i.aht, i64 11
  %i.aik = insertelement <16 x i8> %i.aij, i8 %i.ahu, i64 12
  %i.ail = insertelement <16 x i8> %i.aik, i8 %i.ahv, i64 13
  %i.aim = insertelement <16 x i8> %i.ail, i8 %i.ahw, i64 14
  %i.ain = insertelement <16 x i8> %i.aim, i8 %i.ahx, i64 15
  %i.aio = zext <16 x i8> %i.ain to <16 x i16>
  %i.aip = mul nuw nsw <16 x i16> %i.aeu, splat (i16 77)
  %i.aiq = mul nuw <16 x i16> %i.agr, splat (i16 150)
  %i.air = add nuw <16 x i16> %i.aiq, %i.aip
  %i.ais = mul nuw nsw <16 x i16> %i.aio, splat (i16 29)
  %i.ait = add nuw <16 x i16> %i.air, %i.ais
  %i.aiu = lshr <16 x i16> %i.ait, splat (i16 8)
  %i.aiv = trunc nuw <16 x i16> %i.aiu to <16 x i8>
  store <16 x i8> %i.aiv, ptr %next.gep163.a, align 1, !alias.scope !105, !noalias !102
  %index.next180 = add nuw i64 %index162, 16      ; 2 uses
  %i.aiw = icmp eq i64 %index.next180, %n.vec160
  br i1 %i.aiw, label %middle.block181, label %vector.body161, !llvm.loop !107

middle.block181:                                  ; preds = %vector.body161
  br i1 %cmp.n182, label %.loopexit.i.i.i, label %vec.epilog.iter.check189

vec.epilog.iter.check189:                         ; preds = %middle.block181
  br i1 %min.epilog.iters.check190.not.not, label %.lr.ph221.i.i.i.preheader, label %vec.epilog.ph191, !prof !94

vec.epilog.ph191:                                 ; preds = %vector.main.loop.iter.check157, %vec.epilog.iter.check189
  %vec.epilog.resume.val183 = phi i64 [ %n.vec160, %vec.epilog.iter.check189 ], [ 0, %vector.main.loop.iter.check157 ]
  %i.aix = getelementptr i8, ptr %i.lq, i64 %n.vec192
  %i.aiy = getelementptr i8, ptr %i.ln, i64 %i.jf
  br label %vec.epilog.vector.body193
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
vec.epilog.vector.body193:                        ; preds = %vec.epilog.vector.body193, %vec.epilog.ph191
  %index194 = phi i64 [ %vec.epilog.resume.val183, %vec.epilog.ph191 ], [ %index.next204, %vec.epilog.vector.body193 ] ; 3 uses
  %next.gep195.a = getelementptr i8, ptr %i.lq, i64 %index194
  %i.aiz = mul i64 %index194, 3                   ; 8 uses
  %next.gep196.a = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %i.aja = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep197.a = getelementptr i8, ptr %i.aja, i64 3
  %i.ajb = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep198 = getelementptr i8, ptr %i.ajb, i64 6
  %i.ajc = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep199 = getelementptr i8, ptr %i.ajc, i64 9
  %i.ajd = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep200 = getelementptr i8, ptr %i.ajd, i64 12
  %i.aje = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep201 = getelementptr i8, ptr %i.aje, i64 15
  %i.ajf = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep202 = getelementptr i8, ptr %i.ajf, i64 18
  %i.ajg = getelementptr i8, ptr %i.ln, i64 %i.aiz ; 3 uses
  %next.gep203 = getelementptr i8, ptr %i.ajg, i64 21
  %i.ajh = load i8, ptr %next.gep196.a, align 1, !alias.scope !102
  %i.aji = load i8, ptr %next.gep197.a, align 1, !alias.scope !102
  %i.ajj = load i8, ptr %next.gep198, align 1, !alias.scope !102
  %i.ajk = load i8, ptr %next.gep199, align 1, !alias.scope !102
  %i.ajl = load i8, ptr %next.gep200, align 1, !alias.scope !102
  %i.ajm = load i8, ptr %next.gep201, align 1, !alias.scope !102
  %i.ajn = load i8, ptr %next.gep202, align 1, !alias.scope !102
  %i.ajo = load i8, ptr %next.gep203, align 1, !alias.scope !102
  %i.ajp = insertelement <8 x i8> poison, i8 %i.ajh, i64 0
  %i.ajq = insertelement <8 x i8> %i.ajp, i8 %i.aji, i64 1
  %i.ajr = insertelement <8 x i8> %i.ajq, i8 %i.ajj, i64 2
  %i.ajs = insertelement <8 x i8> %i.ajr, i8 %i.ajk, i64 3
  %i.ajt = insertelement <8 x i8> %i.ajs, i8 %i.ajl, i64 4
  %i.aju = insertelement <8 x i8> %i.ajt, i8 %i.ajm, i64 5
  %i.ajv = insertelement <8 x i8> %i.aju, i8 %i.ajn, i64 6
  %i.ajw = insertelement <8 x i8> %i.ajv, i8 %i.ajo, i64 7
  %i.ajx = zext <8 x i8> %i.ajw to <8 x i16>
  %i.ajy = getelementptr inbounds nuw i8, ptr %next.gep196.a, i64 1
  %i.ajz = getelementptr i8, ptr %i.aja, i64 4
  %i.aka = getelementptr i8, ptr %i.ajb, i64 7
  %i.akb = getelementptr i8, ptr %i.ajc, i64 10
  %i.akc = getelementptr i8, ptr %i.ajd, i64 13
  %i.akd = getelementptr i8, ptr %i.aje, i64 16
  %i.ake = getelementptr i8, ptr %i.ajf, i64 19
  %i.akf = getelementptr i8, ptr %i.ajg, i64 22
  %i.akg = load i8, ptr %i.ajy, align 1, !alias.scope !102
  %i.akh = load i8, ptr %i.ajz, align 1, !alias.scope !102
  %i.aki = load i8, ptr %i.aka, align 1, !alias.scope !102
  %i.akj = load i8, ptr %i.akb, align 1, !alias.scope !102
  %i.akk = load i8, ptr %i.akc, align 1, !alias.scope !102
  %i.akl = load i8, ptr %i.akd, align 1, !alias.scope !102
  %i.akm = load i8, ptr %i.ake, align 1, !alias.scope !102
  %i.akn = load i8, ptr %i.akf, align 1, !alias.scope !102
  %i.ako = insertelement <8 x i8> poison, i8 %i.akg, i64 0
  %i.akp = insertelement <8 x i8> %i.ako, i8 %i.akh, i64 1
  %i.akq = insertelement <8 x i8> %i.akp, i8 %i.aki, i64 2
  %i.akr = insertelement <8 x i8> %i.akq, i8 %i.akj, i64 3
  %i.aks = insertelement <8 x i8> %i.akr, i8 %i.akk, i64 4
  %i.akt = insertelement <8 x i8> %i.aks, i8 %i.akl, i64 5
  %i.aku = insertelement <8 x i8> %i.akt, i8 %i.akm, i64 6
  %i.akv = insertelement <8 x i8> %i.aku, i8 %i.akn, i64 7
  %i.akw = zext <8 x i8> %i.akv to <8 x i16>
  %i.akx = getelementptr inbounds nuw i8, ptr %next.gep196.a, i64 2
  %i.aky = getelementptr i8, ptr %i.aja, i64 5
  %i.akz = getelementptr i8, ptr %i.ajb, i64 8
  %i.ala = getelementptr i8, ptr %i.ajc, i64 11
  %i.alb = getelementptr i8, ptr %i.ajd, i64 14
  %i.alc = getelementptr i8, ptr %i.aje, i64 17
  %i.ald = getelementptr i8, ptr %i.ajf, i64 20
  %i.ale = getelementptr i8, ptr %i.ajg, i64 23
  %i.alf = load i8, ptr %i.akx, align 1, !alias.scope !102
  %i.alg = load i8, ptr %i.aky, align 1, !alias.scope !102
  %i.alh = load i8, ptr %i.akz, align 1, !alias.scope !102
  %i.ali = load i8, ptr %i.ala, align 1, !alias.scope !102
  %i.alj = load i8, ptr %i.alb, align 1, !alias.scope !102
  %i.alk = load i8, ptr %i.alc, align 1, !alias.scope !102
  %i.all = load i8, ptr %i.ald, align 1, !alias.scope !102
  %i.alm = load i8, ptr %i.ale, align 1, !alias.scope !102
  %i.aln = insertelement <8 x i8> poison, i8 %i.alf, i64 0
  %i.alo = insertelement <8 x i8> %i.aln, i8 %i.alg, i64 1
  %i.alp = insertelement <8 x i8> %i.alo, i8 %i.alh, i64 2
  %i.alq = insertelement <8 x i8> %i.alp, i8 %i.ali, i64 3
  %i.alr = insertelement <8 x i8> %i.alq, i8 %i.alj, i64 4
  %i.als = insertelement <8 x i8> %i.alr, i8 %i.alk, i64 5
  %i.alt = insertelement <8 x i8> %i.als, i8 %i.all, i64 6
  %i.alu = insertelement <8 x i8> %i.alt, i8 %i.alm, i64 7
  %i.alv = zext <8 x i8> %i.alu to <8 x i16>
  %i.alw = mul nuw nsw <8 x i16> %i.ajx, splat (i16 77)
  %i.alx = mul nuw <8 x i16> %i.akw, splat (i16 150)
  %i.aly = add nuw <8 x i16> %i.alx, %i.alw
  %i.alz = mul nuw nsw <8 x i16> %i.alv, splat (i16 29)
  %i.ama = add nuw <8 x i16> %i.aly, %i.alz
  %i.amb = lshr <8 x i16> %i.ama, splat (i16 8)
  %i.amc = trunc nuw <8 x i16> %i.amb to <8 x i8>
  store <8 x i8> %i.amc, ptr %next.gep195.a, align 1, !alias.scope !105, !noalias !102
  %index.next204 = add nuw i64 %index194, 8       ; 2 uses
  %i.amd = icmp eq i64 %index.next204, %n.vec192
  br i1 %i.amd, label %vec.epilog.middle.block205, label %vec.epilog.vector.body193, !llvm.loop !108

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body193
  br i1 %cmp.n206, label %.loopexit.i.i.i, label %.lr.ph221.i.i.i.preheader

.lr.ph221.i.i.i.preheader:                        ; preds = %vector.memcheck145, %iter.check187, %vec.epilog.iter.check189, %vec.epilog.middle.block205
  %.7163220.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %iter.check187 ], [ %.11167198.i.i.i, %vector.memcheck145 ], [ %i.jb, %vec.epilog.iter.check189 ], [ %i.je, %vec.epilog.middle.block205 ]
  %.7219.i.i.i.ph = phi ptr [ %i.lq, %iter.check187 ], [ %i.lq, %vector.memcheck145 ], [ %i.acw, %vec.epilog.iter.check189 ], [ %i.aix, %vec.epilog.middle.block205 ]
  %.7149218.i.i.i.ph = phi ptr [ %i.ln, %iter.check187 ], [ %i.ln, %vector.memcheck145 ], [ %i.acx, %vec.epilog.iter.check189 ], [ %i.aiy, %vec.epilog.middle.block205 ]
  br label %.lr.ph221.i.i.i

.preheader185.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i.preheader

.lr.ph226.i.i.i.preheader:                        ; preds = %.preheader185.i.i.i
  br i1 %lcmp.mod389.not.a, label %.lr.ph226.i.i.i.prol.loopexit, label %.lr.ph226.i.i.i.prol

.lr.ph226.i.i.i.prol:                             ; preds = %.lr.ph226.i.i.i.preheader
  %i.ame = load i8, ptr %i.ln, align 1
  store i8 %i.ame, ptr %i.lq, align 1
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.amg = load i8, ptr %i.amf, align 1
  %i.amh = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  store i8 %i.amg, ptr %i.amh, align 1
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.amj = load i8, ptr %i.ami, align 1
  %i.amk = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  store i8 %i.amj, ptr %i.amk, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  store i8 -1, ptr %i.aml, align 1
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  %i.amn = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  br label %.lr.ph226.i.i.i.prol.loopexit

.lr.ph226.i.i.i.prol.loopexit:                    ; preds = %.lr.ph226.i.i.i.prol, %.lr.ph226.i.i.i.preheader
  %.6162225.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph226.i.i.i.preheader ], [ %.6162.i.i.i.prol, %.lr.ph226.i.i.i.prol ]
  %.6224.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph226.i.i.i.preheader ], [ %i.amn, %.lr.ph226.i.i.i.prol ]
  %.6148223.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph226.i.i.i.preheader ], [ %i.amm, %.lr.ph226.i.i.i.prol ]
  br i1 %i.jg, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i

.preheader183.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i.preheader

.lr.ph231.i.i.i.preheader:                        ; preds = %.preheader183.i.i.i
  br i1 %lcmp.mod392.not.a, label %.lr.ph231.i.i.i.prol.loopexit, label %.lr.ph231.i.i.i.prol

.lr.ph231.i.i.i.prol:                             ; preds = %.lr.ph231.i.i.i.preheader
  %i.amo = load i8, ptr %i.ln, align 1            ; 3 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  store i8 %i.amo, ptr %i.amp, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  store i8 %i.amo, ptr %i.amq, align 1
  store i8 %i.amo, ptr %i.lq, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.ams = load i8, ptr %i.amr, align 1
  %i.amt = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  store i8 %i.ams, ptr %i.amt, align 1
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.amv = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  br label %.lr.ph231.i.i.i.prol.loopexit

.lr.ph231.i.i.i.prol.loopexit:                    ; preds = %.lr.ph231.i.i.i.prol, %.lr.ph231.i.i.i.preheader
  %.5161230.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph231.i.i.i.preheader ], [ %.5161.i.i.i.prol, %.lr.ph231.i.i.i.prol ]
  %.5229.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph231.i.i.i.preheader ], [ %i.amv, %.lr.ph231.i.i.i.prol ]
  %.5147228.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph231.i.i.i.preheader ], [ %i.amu, %.lr.ph231.i.i.i.prol ]
  br i1 %i.jh, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i

.preheader181.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i.preheader

.lr.ph236.i.i.i.preheader:                        ; preds = %.preheader181.i.i.i
  br i1 %lcmp.mod395.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol

.lr.ph236.i.i.i.prol:                             ; preds = %.lr.ph236.i.i.i.preheader, %.lr.ph236.i.i.i.prol
  %.4160235.i.i.i.prol = phi i32 [ %.4160.i.i.i.prol, %.lr.ph236.i.i.i.prol ], [ %.11167198.i.i.i, %.lr.ph236.i.i.i.preheader ]
  %.4234.i.i.i.prol = phi ptr [ %i.ana, %.lr.ph236.i.i.i.prol ], [ %i.lq, %.lr.ph236.i.i.i.preheader ] ; 4 uses
  %.4146233.i.i.i.prol = phi ptr [ %i.amz, %.lr.ph236.i.i.i.prol ], [ %i.ln, %.lr.ph236.i.i.i.preheader ] ; 2 uses
  %prol.iter396 = phi i32 [ %prol.iter396.next, %.lr.ph236.i.i.i.prol ], [ 0, %.lr.ph236.i.i.i.preheader ]
  %i.amw = load i8, ptr %.4146233.i.i.i.prol, align 1 ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 2
  store i8 %i.amw, ptr %i.amx, align 1
  %i.amy = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 1
  store i8 %i.amw, ptr %i.amy, align 1
  store i8 %i.amw, ptr %.4234.i.i.i.prol, align 1
  %i.amz = getelementptr inbounds nuw i8, ptr %.4146233.i.i.i.prol, i64 2 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 3 ; 2 uses
  %.4160.i.i.i.prol = add i32 %.4160235.i.i.i.prol, -1 ; 2 uses
  %prol.iter396.next = add i32 %prol.iter396, 1   ; 2 uses
  %prol.iter396.cmp.not = icmp eq i32 %prol.iter396.next, %xtraiter394
  br i1 %prol.iter396.cmp.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol, !llvm.loop !109

.lr.ph236.i.i.i.prol.loopexit:                    ; preds = %.lr.ph236.i.i.i.prol, %.lr.ph236.i.i.i.preheader
  %.4160235.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph236.i.i.i.preheader ], [ %.4160.i.i.i.prol, %.lr.ph236.i.i.i.prol ]
  %.4234.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph236.i.i.i.preheader ], [ %i.ana, %.lr.ph236.i.i.i.prol ]
  %.4146233.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph236.i.i.i.preheader ], [ %i.amz, %.lr.ph236.i.i.i.prol ]
  br i1 %i.ji, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i

.preheader179.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check123

iter.check123:                                    ; preds = %.preheader179.i.i.i
  br i1 %min.iters.check93, label %.lr.ph241.i.i.i.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %iter.check123
  %bound089 = icmp ult ptr %scevgep83, %scevgep88
  %bound190 = icmp ult ptr %scevgep86, %scevgep85
  %found.conflict91 = and i1 %bound089, %bound190
  br i1 %found.conflict91, label %.lr.ph241.i.i.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck82
  br i1 %min.iters.check95, label %vec.epilog.ph127, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.anb = getelementptr i8, ptr %i.lq, i64 %n.vec97
  %i.anc = getelementptr i8, ptr %i.ln, i64 %i.jo
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next117, %vector.body98 ] ; 3 uses
  %next.gep100.a = getelementptr i8, ptr %i.lq, i64 %index99
  %i.and = shl i64 %index99, 1                    ; 16 uses
  %next.gep101.a = getelementptr i8, ptr %i.ln, i64 %i.and
  %i.ane = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep102.a = getelementptr i8, ptr %i.ane, i64 2
  %i.anf = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep103.a = getelementptr i8, ptr %i.anf, i64 4
  %i.ang = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep104.a = getelementptr i8, ptr %i.ang, i64 6
  %i.anh = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep105.a = getelementptr i8, ptr %i.anh, i64 8
  %i.ani = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep106.a = getelementptr i8, ptr %i.ani, i64 10
  %i.anj = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep107.a = getelementptr i8, ptr %i.anj, i64 12
  %i.ank = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep108.a = getelementptr i8, ptr %i.ank, i64 14
  %i.anl = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep109.a = getelementptr i8, ptr %i.anl, i64 16
  %i.anm = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep110.a = getelementptr i8, ptr %i.anm, i64 18
  %i.ann = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep111.a = getelementptr i8, ptr %i.ann, i64 20
  %i.ano = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep112.a = getelementptr i8, ptr %i.ano, i64 22
  %i.anp = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep113 = getelementptr i8, ptr %i.anp, i64 24
  %i.anq = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep114 = getelementptr i8, ptr %i.anq, i64 26
  %i.anr = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep115 = getelementptr i8, ptr %i.anr, i64 28
  %i.ans = getelementptr i8, ptr %i.ln, i64 %i.and
  %next.gep116 = getelementptr i8, ptr %i.ans, i64 30
  %i.ant = load i8, ptr %next.gep101.a, align 1, !alias.scope !110
  %i.anu = load i8, ptr %next.gep102.a, align 1, !alias.scope !110
  %i.anv = load i8, ptr %next.gep103.a, align 1, !alias.scope !110
  %i.anw = load i8, ptr %next.gep104.a, align 1, !alias.scope !110
  %i.anx = load i8, ptr %next.gep105.a, align 1, !alias.scope !110
  %i.any = load i8, ptr %next.gep106.a, align 1, !alias.scope !110
  %i.anz = load i8, ptr %next.gep107.a, align 1, !alias.scope !110
  %i.aoa = load i8, ptr %next.gep108.a, align 1, !alias.scope !110
  %i.aob = load i8, ptr %next.gep109.a, align 1, !alias.scope !110
  %i.aoc = load i8, ptr %next.gep110.a, align 1, !alias.scope !110
  %i.aod = load i8, ptr %next.gep111.a, align 1, !alias.scope !110
  %i.aoe = load i8, ptr %next.gep112.a, align 1, !alias.scope !110
  %i.aof = load i8, ptr %next.gep113, align 1, !alias.scope !110
  %i.aog = load i8, ptr %next.gep114, align 1, !alias.scope !110
  %i.aoh = load i8, ptr %next.gep115, align 1, !alias.scope !110
  %i.aoi = load i8, ptr %next.gep116, align 1, !alias.scope !110
  %i.aoj = insertelement <16 x i8> poison, i8 %i.ant, i64 0
  %i.aok = insertelement <16 x i8> %i.aoj, i8 %i.anu, i64 1
  %i.aol = insertelement <16 x i8> %i.aok, i8 %i.anv, i64 2
  %i.aom = insertelement <16 x i8> %i.aol, i8 %i.anw, i64 3
  %i.aon = insertelement <16 x i8> %i.aom, i8 %i.anx, i64 4
  %i.aoo = insertelement <16 x i8> %i.aon, i8 %i.any, i64 5
  %i.aop = insertelement <16 x i8> %i.aoo, i8 %i.anz, i64 6
  %i.aoq = insertelement <16 x i8> %i.aop, i8 %i.aoa, i64 7
  %i.aor = insertelement <16 x i8> %i.aoq, i8 %i.aob, i64 8
  %i.aos = insertelement <16 x i8> %i.aor, i8 %i.aoc, i64 9
  %i.aot = insertelement <16 x i8> %i.aos, i8 %i.aod, i64 10
  %i.aou = insertelement <16 x i8> %i.aot, i8 %i.aoe, i64 11
  %i.aov = insertelement <16 x i8> %i.aou, i8 %i.aof, i64 12
  %i.aow = insertelement <16 x i8> %i.aov, i8 %i.aog, i64 13
  %i.aox = insertelement <16 x i8> %i.aow, i8 %i.aoh, i64 14
  %i.aoy = insertelement <16 x i8> %i.aox, i8 %i.aoi, i64 15
  store <16 x i8> %i.aoy, ptr %next.gep100.a, align 1, !alias.scope !113, !noalias !110
  %index.next117 = add nuw i64 %index99, 16       ; 2 uses
  %i.aoz = icmp eq i64 %index.next117, %n.vec97
  br i1 %i.aoz, label %vec.epilog.iter.check125, label %vector.body98, !llvm.loop !115

vec.epilog.iter.check125:                         ; preds = %vector.body98
  br i1 %min.epilog.iters.check126, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.ph127, !prof !94

.lr.ph241.i.i.i.preheader:                        ; preds = %vec.epilog.vector.body129, %vector.memcheck82, %iter.check123, %vec.epilog.iter.check125
  %.3159240.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %iter.check123 ], [ %.11167198.i.i.i, %vector.memcheck82 ], [ %i.jn, %vec.epilog.iter.check125 ], [ %i.jt, %vec.epilog.vector.body129 ]
  %.3239.i.i.i.ph = phi ptr [ %i.lq, %iter.check123 ], [ %i.lq, %vector.memcheck82 ], [ %i.anb, %vec.epilog.iter.check125 ], [ %i.apa, %vec.epilog.vector.body129 ]
  %.3145238.i.i.i.ph = phi ptr [ %i.ln, %iter.check123 ], [ %i.ln, %vector.memcheck82 ], [ %i.anc, %vec.epilog.iter.check125 ], [ %i.apb, %vec.epilog.vector.body129 ]
  br label %.lr.ph241.i.i.i

vec.epilog.ph127:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check125
  %vec.epilog.resume.val119 = phi i64 [ %n.vec97, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.apa = getelementptr i8, ptr %i.lq, i64 %n.vec128
  %i.apb = getelementptr i8, ptr %i.ln, i64 %i.ju
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph127
  %index130 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph127 ], [ %index.next140, %vec.epilog.vector.body129 ] ; 3 uses
  %next.gep131.a = getelementptr i8, ptr %i.lq, i64 %index130
  %i.apc = shl i64 %index130, 1                   ; 8 uses
  %next.gep132.a = getelementptr i8, ptr %i.ln, i64 %i.apc
  %i.apd = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep133.a = getelementptr i8, ptr %i.apd, i64 2
  %i.ape = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep134.a = getelementptr i8, ptr %i.ape, i64 4
  %i.apf = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep135.a = getelementptr i8, ptr %i.apf, i64 6
  %i.apg = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep136 = getelementptr i8, ptr %i.apg, i64 8
  %i.aph = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep137 = getelementptr i8, ptr %i.aph, i64 10
  %i.api = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep138 = getelementptr i8, ptr %i.api, i64 12
  %i.apj = getelementptr i8, ptr %i.ln, i64 %i.apc
  %next.gep139 = getelementptr i8, ptr %i.apj, i64 14
  %i.apk = load i8, ptr %next.gep132.a, align 1, !alias.scope !110
  %i.apl = load i8, ptr %next.gep133.a, align 1, !alias.scope !110
  %i.apm = load i8, ptr %next.gep134.a, align 1, !alias.scope !110
  %i.apn = load i8, ptr %next.gep135.a, align 1, !alias.scope !110
  %i.apo = load i8, ptr %next.gep136, align 1, !alias.scope !110
  %i.app = load i8, ptr %next.gep137, align 1, !alias.scope !110
  %i.apq = load i8, ptr %next.gep138, align 1, !alias.scope !110
  %i.apr = load i8, ptr %next.gep139, align 1, !alias.scope !110
  %i.aps = insertelement <8 x i8> poison, i8 %i.apk, i64 0
  %i.apt = insertelement <8 x i8> %i.aps, i8 %i.apl, i64 1
  %i.apu = insertelement <8 x i8> %i.apt, i8 %i.apm, i64 2
  %i.apv = insertelement <8 x i8> %i.apu, i8 %i.apn, i64 3
  %i.apw = insertelement <8 x i8> %i.apv, i8 %i.apo, i64 4
  %i.apx = insertelement <8 x i8> %i.apw, i8 %i.app, i64 5
  %i.apy = insertelement <8 x i8> %i.apx, i8 %i.apq, i64 6
  %i.apz = insertelement <8 x i8> %i.apy, i8 %i.apr, i64 7
  store <8 x i8> %i.apz, ptr %next.gep131.a, align 1, !alias.scope !113, !noalias !110
  %index.next140 = add nuw i64 %index130, 8       ; 2 uses
  %i.aqa = icmp eq i64 %index.next140, %n.vec128
  br i1 %i.aqa, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.vector.body129, !llvm.loop !116

.preheader177.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph246.i.i.i.preheader

.lr.ph246.i.i.i.preheader:                        ; preds = %.preheader177.i.i.i
  br i1 %lcmp.mod398.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol

.lr.ph246.i.i.i.prol:                             ; preds = %.lr.ph246.i.i.i.preheader, %.lr.ph246.i.i.i.prol
  %.2158245.i.i.i.prol = phi i32 [ %.2158.i.i.i.prol, %.lr.ph246.i.i.i.prol ], [ %.11167198.i.i.i, %.lr.ph246.i.i.i.preheader ]
  %.2244.i.i.i.prol = phi ptr [ %i.aqg, %.lr.ph246.i.i.i.prol ], [ %i.lq, %.lr.ph246.i.i.i.preheader ] ; 5 uses
  %.2144243.i.i.i.prol = phi ptr [ %i.aqf, %.lr.ph246.i.i.i.prol ], [ %i.ln, %.lr.ph246.i.i.i.preheader ] ; 2 uses
  %prol.iter399 = phi i32 [ %prol.iter399.next, %.lr.ph246.i.i.i.prol ], [ 0, %.lr.ph246.i.i.i.preheader ]
  %i.aqb = load i8, ptr %.2144243.i.i.i.prol, align 1 ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 2
  store i8 %i.aqb, ptr %i.aqc, align 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 1
  store i8 %i.aqb, ptr %i.aqd, align 1
  store i8 %i.aqb, ptr %.2244.i.i.i.prol, align 1
  %i.aqe = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 3
  store i8 -1, ptr %i.aqe, align 1
  %i.aqf = getelementptr inbounds nuw i8, ptr %.2144243.i.i.i.prol, i64 1 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 4 ; 2 uses
  %.2158.i.i.i.prol = add i32 %.2158245.i.i.i.prol, -1 ; 2 uses
  %prol.iter399.next = add i32 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i32 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol, !llvm.loop !117

.lr.ph246.i.i.i.prol.loopexit:                    ; preds = %.lr.ph246.i.i.i.prol, %.lr.ph246.i.i.i.preheader
  %.2158245.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph246.i.i.i.preheader ], [ %.2158.i.i.i.prol, %.lr.ph246.i.i.i.prol ]
  %.2244.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph246.i.i.i.preheader ], [ %i.aqg, %.lr.ph246.i.i.i.prol ]
  %.2144243.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph246.i.i.i.preheader ], [ %i.aqf, %.lr.ph246.i.i.i.prol ]
  br i1 %i.jv, label %.loopexit.i.i.i, label %.lr.ph246.i.i.i

.preheader175.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph251.i.i.i.preheader

.lr.ph251.i.i.i.preheader:                        ; preds = %.preheader175.i.i.i
  br i1 %lcmp.mod401.not, label %.lr.ph251.i.i.i.prol.loopexit, label %.lr.ph251.i.i.i.prol

.lr.ph251.i.i.i.prol:                             ; preds = %.lr.ph251.i.i.i.preheader, %.lr.ph251.i.i.i.prol
  %.1157250.i.i.i.prol = phi i32 [ %.1157.i.i.i.prol, %.lr.ph251.i.i.i.prol ], [ %.11167198.i.i.i, %.lr.ph251.i.i.i.preheader ]
  %.1249.i.i.i.prol = phi ptr [ %i.aql, %.lr.ph251.i.i.i.prol ], [ %i.lq, %.lr.ph251.i.i.i.preheader ] ; 4 uses
  %.1143248.i.i.i.prol = phi ptr [ %i.aqk, %.lr.ph251.i.i.i.prol ], [ %i.ln, %.lr.ph251.i.i.i.preheader ] ; 2 uses
  %prol.iter402 = phi i32 [ %prol.iter402.next, %.lr.ph251.i.i.i.prol ], [ 0, %.lr.ph251.i.i.i.preheader ]
  %i.aqh = load i8, ptr %.1143248.i.i.i.prol, align 1 ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 2
  store i8 %i.aqh, ptr %i.aqi, align 1
  %i.aqj = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 1
  store i8 %i.aqh, ptr %i.aqj, align 1
  store i8 %i.aqh, ptr %.1249.i.i.i.prol, align 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %.1143248.i.i.i.prol, i64 1 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 3 ; 2 uses
  %.1157.i.i.i.prol = add i32 %.1157250.i.i.i.prol, -1 ; 2 uses
  %prol.iter402.next = add i32 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i32 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph251.i.i.i.prol.loopexit, label %.lr.ph251.i.i.i.prol, !llvm.loop !118

.lr.ph251.i.i.i.prol.loopexit:                    ; preds = %.lr.ph251.i.i.i.prol, %.lr.ph251.i.i.i.preheader
  %.1157250.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph251.i.i.i.preheader ], [ %.1157.i.i.i.prol, %.lr.ph251.i.i.i.prol ]
  %.1249.i.i.i.unr = phi ptr [ %i.lq, %.lr.ph251.i.i.i.preheader ], [ %i.aql, %.lr.ph251.i.i.i.prol ]
  %.1143248.i.i.i.unr = phi ptr [ %i.ln, %.lr.ph251.i.i.i.preheader ], [ %i.aqk, %.lr.ph251.i.i.i.prol ]
  br i1 %i.jw, label %.loopexit.i.i.i, label %.lr.ph251.i.i.i

end_hunk_1
begin_hunk_2_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  store i8 %i.auc, ptr %i.aue, align 1
  store i8 %i.auc, ptr %i.aub, align 1
  %i.auf = getelementptr inbounds nuw i8, ptr %.5147228.i.i.i, i64 3
  %i.aug = load i8, ptr %i.auf, align 1
  %i.auh = getelementptr inbounds nuw i8, ptr %.5229.i.i.i, i64 7
  store i8 %i.aug, ptr %i.auh, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %.5147228.i.i.i, i64 4
  %i.auj = getelementptr inbounds nuw i8, ptr %.5229.i.i.i, i64 8
  %.5161.i.i.i.1 = add i32 %.5161230.i.i.i, -2    ; 2 uses
  %i.auk = icmp sgt i32 %.5161.i.i.i.1, -1
  br i1 %i.auk, label %.lr.ph231.i.i.i, label %.loopexit.i.i.i, !llvm.loop !126

.lr.ph226.i.i.i:                                  ; preds = %.lr.ph226.i.i.i.prol.loopexit, %.lr.ph226.i.i.i
  %.6162225.i.i.i = phi i32 [ %.6162.i.i.i.1, %.lr.ph226.i.i.i ], [ %.6162225.i.i.i.unr, %.lr.ph226.i.i.i.prol.loopexit ]
  %.6224.i.i.i = phi ptr [ %i.ave, %.lr.ph226.i.i.i ], [ %.6224.i.i.i.unr, %.lr.ph226.i.i.i.prol.loopexit ] ; 9 uses
  %.6148223.i.i.i = phi ptr [ %i.avd, %.lr.ph226.i.i.i ], [ %.6148223.i.i.i.unr, %.lr.ph226.i.i.i.prol.loopexit ] ; 7 uses
  %i.aul = load i8, ptr %.6148223.i.i.i, align 1
  store i8 %i.aul, ptr %.6224.i.i.i, align 1
  %i.aum = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 1
  %i.aun = load i8, ptr %i.aum, align 1
  %i.auo = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 1
  store i8 %i.aun, ptr %i.auo, align 1
  %i.aup = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 2
  %i.auq = load i8, ptr %i.aup, align 1
  %i.aur = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 2
  store i8 %i.auq, ptr %i.aur, align 1
  %i.aus = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 3
  store i8 -1, ptr %i.aus, align 1
  %i.aut = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 3
  %i.auu = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 4
  %i.auv = load i8, ptr %i.aut, align 1
  store i8 %i.auv, ptr %i.auu, align 1
  %i.auw = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 4
  %i.aux = load i8, ptr %i.auw, align 1
  %i.auy = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 5
  store i8 %i.aux, ptr %i.auy, align 1
  %i.auz = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 5
  %i.ava = load i8, ptr %i.auz, align 1
  %i.avb = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 6
  store i8 %i.ava, ptr %i.avb, align 1
  %i.avc = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 7
  store i8 -1, ptr %i.avc, align 1
  %i.avd = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 6
  %i.ave = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 8
  %.6162.i.i.i.1 = add i32 %.6162225.i.i.i, -2    ; 2 uses
  %i.avf = icmp sgt i32 %.6162.i.i.i.1, -1
  br i1 %i.avf, label %.lr.ph226.i.i.i, label %.loopexit.i.i.i, !llvm.loop !127

.lr.ph221.i.i.i:                                  ; preds = %.lr.ph221.i.i.i.preheader, %.lr.ph221.i.i.i
  %.7163220.i.i.i = phi i32 [ %.7163.i.i.i, %.lr.ph221.i.i.i ], [ %.7163220.i.i.i.ph, %.lr.ph221.i.i.i.preheader ]
  %.7219.i.i.i = phi ptr [ %i.avw, %.lr.ph221.i.i.i ], [ %.7219.i.i.i.ph, %.lr.ph221.i.i.i.preheader ] ; 2 uses
  %.7149218.i.i.i = phi ptr [ %i.avv, %.lr.ph221.i.i.i ], [ %.7149218.i.i.i.ph, %.lr.ph221.i.i.i.preheader ] ; 4 uses
  %i.avg = load i8, ptr %.7149218.i.i.i, align 1
  %i.avh = zext i8 %i.avg to i16
  %i.avi = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 1
  %i.avj = load i8, ptr %i.avi, align 1
  %i.avk = zext i8 %i.avj to i16
  %i.avl = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 2
  %i.avm = load i8, ptr %i.avl, align 1
  %i.avn = zext i8 %i.avm to i16
  %i.avo = mul nuw nsw i16 %i.avh, 77
  %i.avp = mul nuw i16 %i.avk, 150
  %i.avq = add nuw i16 %i.avp, %i.avo
  %i.avr = mul nuw nsw i16 %i.avn, 29
  %i.avs = add nuw i16 %i.avq, %i.avr
  %i.avt = lshr i16 %i.avs, 8
  %i.avu = trunc nuw i16 %i.avt to i8
  store i8 %i.avu, ptr %.7219.i.i.i, align 1
  %i.avv = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 3
  %i.avw = getelementptr inbounds nuw i8, ptr %.7219.i.i.i, i64 1
  %.7163.i.i.i = add i32 %.7163220.i.i.i, -1      ; 2 uses
  %i.avx = icmp sgt i32 %.7163.i.i.i, -1
  br i1 %i.avx, label %.lr.ph221.i.i.i, label %.loopexit.i.i.i, !llvm.loop !128

.lr.ph216.i.i.i:                                  ; preds = %.lr.ph216.i.i.i.preheader345, %.lr.ph216.i.i.i
  %.8164215.i.i.i = phi i32 [ %.8164.i.i.i, %.lr.ph216.i.i.i ], [ %.8164215.i.i.i.ph, %.lr.ph216.i.i.i.preheader345 ]
  %.8214.i.i.i = phi ptr [ %i.awp, %.lr.ph216.i.i.i ], [ %.8214.i.i.i.ph, %.lr.ph216.i.i.i.preheader345 ] ; 3 uses
  %.8150213.i.i.i = phi ptr [ %i.awo, %.lr.ph216.i.i.i ], [ %.8150213.i.i.i.ph, %.lr.ph216.i.i.i.preheader345 ] ; 4 uses
  %i.avy = load i8, ptr %.8150213.i.i.i, align 1
  %i.avz = zext i8 %i.avy to i16
  %i.awa = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 1
  %i.awb = load i8, ptr %i.awa, align 1
  %i.awc = zext i8 %i.awb to i16
  %i.awd = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 2
  %i.awe = load i8, ptr %i.awd, align 1
  %i.awf = zext i8 %i.awe to i16
  %i.awg = mul nuw nsw i16 %i.avz, 77
  %i.awh = mul nuw i16 %i.awc, 150
  %i.awi = add nuw i16 %i.awh, %i.awg
  %i.awj = mul nuw nsw i16 %i.awf, 29
  %i.awk = add nuw i16 %i.awi, %i.awj
  %i.awl = lshr i16 %i.awk, 8
  %i.awm = trunc nuw i16 %i.awl to i8
  store i8 %i.awm, ptr %.8214.i.i.i, align 1
  %i.awn = getelementptr inbounds nuw i8, ptr %.8214.i.i.i, i64 1
  store i8 -1, ptr %i.awn, align 1
  %i.awo = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 3
  %i.awp = getelementptr inbounds nuw i8, ptr %.8214.i.i.i, i64 2
  %.8164.i.i.i = add i32 %.8164215.i.i.i, -1      ; 2 uses
  %i.awq = icmp sgt i32 %.8164.i.i.i, -1
  br i1 %i.awq, label %.lr.ph216.i.i.i, label %.loopexit.i.i.i, !llvm.loop !129

.lr.ph211.i.i.i:                                  ; preds = %.lr.ph211.i.i.i.preheader, %.lr.ph211.i.i.i
  %.9165210.i.i.i = phi i32 [ %.9165.i.i.i, %.lr.ph211.i.i.i ], [ %.9165210.i.i.i.ph, %.lr.ph211.i.i.i.preheader ]
  %.9209.i.i.i = phi ptr [ %i.axh, %.lr.ph211.i.i.i ], [ %.9209.i.i.i.ph, %.lr.ph211.i.i.i.preheader ] ; 2 uses
  %.9151208.i.i.i = phi ptr [ %i.axg, %.lr.ph211.i.i.i ], [ %.9151208.i.i.i.ph, %.lr.ph211.i.i.i.preheader ] ; 4 uses
  %i.awr = load i8, ptr %.9151208.i.i.i, align 1
  %i.aws = zext i8 %i.awr to i16
  %i.awt = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 1
  %i.awu = load i8, ptr %i.awt, align 1
  %i.awv = zext i8 %i.awu to i16
  %i.aww = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 2
  %i.awx = load i8, ptr %i.aww, align 1
  %i.awy = zext i8 %i.awx to i16
  %i.awz = mul nuw nsw i16 %i.aws, 77
  %i.axa = mul nuw i16 %i.awv, 150
  %i.axb = add nuw i16 %i.axa, %i.awz
  %i.axc = mul nuw nsw i16 %i.awy, 29
  %i.axd = add nuw i16 %i.axb, %i.axc
  %i.axe = lshr i16 %i.axd, 8
  %i.axf = trunc nuw i16 %i.axe to i8
  store i8 %i.axf, ptr %.9209.i.i.i, align 1
  %i.axg = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 4
  %i.axh = getelementptr inbounds nuw i8, ptr %.9209.i.i.i, i64 1
  %.9165.i.i.i = add i32 %.9165210.i.i.i, -1      ; 2 uses
  %i.axi = icmp sgt i32 %.9165.i.i.i, -1
  br i1 %i.axi, label %.lr.ph211.i.i.i, label %.loopexit.i.i.i, !llvm.loop !130

.lr.ph206.i.i.i:                                  ; preds = %.lr.ph206.i.i.i.preheader348, %.lr.ph206.i.i.i
  %.10166205.i.i.i = phi i32 [ %.10166.i.i.i, %.lr.ph206.i.i.i ], [ %.10166205.i.i.i.ph, %.lr.ph206.i.i.i.preheader348 ]
  %.10204.i.i.i = phi ptr [ %i.ayc, %.lr.ph206.i.i.i ], [ %.10204.i.i.i.ph, %.lr.ph206.i.i.i.preheader348 ] ; 3 uses
  %.10152203.i.i.i = phi ptr [ %i.ayb, %.lr.ph206.i.i.i ], [ %.10152203.i.i.i.ph, %.lr.ph206.i.i.i.preheader348 ] ; 5 uses
  %i.axj = load i8, ptr %.10152203.i.i.i, align 1
  %i.axk = zext i8 %i.axj to i16
  %i.axl = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 1
  %i.axm = load i8, ptr %i.axl, align 1
  %i.axn = zext i8 %i.axm to i16
  %i.axo = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 2
  %i.axp = load i8, ptr %i.axo, align 1
  %i.axq = zext i8 %i.axp to i16
  %i.axr = mul nuw nsw i16 %i.axk, 77
  %i.axs = mul nuw i16 %i.axn, 150
  %i.axt = add nuw i16 %i.axs, %i.axr
  %i.axu = mul nuw nsw i16 %i.axq, 29
  %i.axv = add nuw i16 %i.axt, %i.axu
  %i.axw = lshr i16 %i.axv, 8
  %i.axx = trunc nuw i16 %i.axw to i8
  store i8 %i.axx, ptr %.10204.i.i.i, align 1
  %i.axy = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 3
  %i.axz = load i8, ptr %i.axy, align 1
  %i.aya = getelementptr inbounds nuw i8, ptr %.10204.i.i.i, i64 1
  store i8 %i.axz, ptr %i.aya, align 1
  %i.ayb = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 4
  %i.ayc = getelementptr inbounds nuw i8, ptr %.10204.i.i.i, i64 2
  %.10166.i.i.i = add i32 %.10166205.i.i.i, -1    ; 2 uses
  %i.ayd = icmp sgt i32 %.10166.i.i.i, -1
  br i1 %i.ayd, label %.lr.ph206.i.i.i, label %.loopexit.i.i.i, !llvm.loop !131

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.11167201.i.i.i = phi i32 [ %.11167.i.i.i.1, %.lr.ph.i.i.i ], [ %.11167201.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.11200.i.i.i = phi ptr [ %i.ayv, %.lr.ph.i.i.i ], [ %.11200.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %.11153199.i.i.i = phi ptr [ %i.ayu, %.lr.ph.i.i.i ], [ %.11153199.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.aye = load i8, ptr %.11153199.i.i.i, align 1
  store i8 %i.aye, ptr %.11200.i.i.i, align 1
  %i.ayf = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 1
  %i.ayg = load i8, ptr %i.ayf, align 1
  %i.ayh = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 1
  store i8 %i.ayg, ptr %i.ayh, align 1
  %i.ayi = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 2
  %i.ayj = load i8, ptr %i.ayi, align 1
  %i.ayk = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 2
  store i8 %i.ayj, ptr %i.ayk, align 1
  %i.ayl = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 4
  %i.aym = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 3
  %i.ayn = load i8, ptr %i.ayl, align 1
  store i8 %i.ayn, ptr %i.aym, align 1
  %i.ayo = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 5
  %i.ayp = load i8, ptr %i.ayo, align 1
  %i.ayq = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 4
  store i8 %i.ayp, ptr %i.ayq, align 1
  %i.ayr = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 6
  %i.ays = load i8, ptr %i.ayr, align 1
  %i.ayt = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 5
  store i8 %i.ays, ptr %i.ayt, align 1
  %i.ayu = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 8
  %i.ayv = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 6
  %.11167.i.i.i.1 = add i32 %.11167201.i.i.i, -2  ; 2 uses
  %i.ayw = icmp sgt i32 %.11167.i.i.i.1, -1
  br i1 %i.ayw, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !132

.loopexit.i.i.i:                                  ; preds = %.lr.ph206.i.i.i, %.lr.ph211.i.i.i, %.lr.ph216.i.i.i, %.lr.ph221.i.i.i, %.lr.ph226.i.i.i.prol.loopexit, %.lr.ph226.i.i.i, %.lr.ph231.i.i.i.prol.loopexit, %.lr.ph231.i.i.i, %.lr.ph236.i.i.i.prol.loopexit, %.lr.ph236.i.i.i, %.lr.ph241.i.i.i, %.lr.ph246.i.i.i.prol.loopexit, %.lr.ph246.i.i.i, %.lr.ph251.i.i.i.prol.loopexit, %.lr.ph251.i.i.i, %.lr.ph256.i.i.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block332, %middle.block237, %middle.block181, %vec.epilog.middle.block205, %middle.block66, %vec.epilog.middle.block, %.preheader.i.i.i, %.preheader175.i.i.i, %.preheader177.i.i.i, %.preheader179.i.i.i, %.preheader181.i.i.i, %.preheader183.i.i.i, %.preheader185.i.i.i, %.preheader187.i.i.i, %.preheader189.i.i.i, %.preheader191.i.i.i, %.preheader193.i.i.i, %.preheader195.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i, label %bb.bg, !llvm.loop !133

bb.bh:                                            ; preds = %bb.bc
  %i.ayx = shl nuw nsw i32 %4, 1
  %i.ayy = mul i32 %i.ayx, %i.gm
  %i.ayz = mul i32 %i.ayy, %i.go
  %i.aza = zext i32 %i.ayz to i64
  %i.azb = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.aza) #50 ; 7 uses
  %i.azc = icmp eq ptr %i.azb, null
  br i1 %i.azc, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader196.i.i.i

.preheader196.i.i.i:                              ; preds = %bb.bh
  %i.azd = icmp sgt i32 %i.go, 0
  br i1 %i.azd, label %.lr.ph257.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph257.i.i.i:                                  ; preds = %.preheader196.i.i.i
  %i.aze = shl nsw i32 %i.gl, 3
  %i.azf = or disjoint i32 %i.aze, %4             ; 2 uses
  %.11167197.i.i.i = add i32 %i.gm, -1            ; 30 uses
  %i.azg = icmp sgt i32 %.11167197.i.i.i, -1      ; 12 uses
  switch i32 %i.azf, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
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
  %wide.trip.count.i53.i.i = zext nneg i32 %i.go to i64
  %8 = mul i32 %i.gm, %4
  %i.azh = zext i32 %.11167197.i.i.i to i64       ; 2 uses
  %i.azi = shl nuw nsw i64 %i.azh, 1
  %i.azj = getelementptr i8, ptr %i.azb, i64 %i.azi
  %scevgep30.a = getelementptr i8, ptr %i.azj, i64 2
  %i.azk = mul i32 %i.gl, %i.gm
  %i.azl = shl nuw nsw i64 %i.azh, 2
  %i.azm = getelementptr i8, ptr %i.gj, i64 %i.azl
  %scevgep33 = getelementptr i8, ptr %i.azm, i64 2
  %xtraiter = and i32 %i.gm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.10166.i58.i.i.prol = add i32 %i.gm, -2
  %i.azn = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter364.a = and i32 %i.gm, 1
  %lcmp.mod365.not.a = icmp eq i32 %xtraiter364.a, 0
  %.9165.i59.i.i.prol = add i32 %i.gm, -2
  %i.azo = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter366 = and i32 %i.gm, 1
  %lcmp.mod367.not = icmp eq i32 %xtraiter366, 0
  %.8164.i60.i.i.prol = add i32 %i.gm, -2
  %i.azp = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter368 = and i32 %i.gm, 1
  %lcmp.mod369.not = icmp eq i32 %xtraiter368, 0
  %.7163.i61.i.i.prol = add i32 %i.gm, -2
  %i.azq = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter370.a = and i32 %i.gm, 1
  %lcmp.mod371.not.a = icmp eq i32 %xtraiter370.a, 0
  %.6162.i62.i.i.prol = add i32 %i.gm, -2
  %i.azr = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter372 = and i32 %i.gm, 1
  %lcmp.mod373.not = icmp eq i32 %xtraiter372, 0
  %.5161.i63.i.i.prol = add i32 %i.gm, -2
  %i.azs = icmp eq i32 %.11167197.i.i.i, 0
  %xtraiter374 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod375.not = icmp eq i32 %xtraiter374, 0
  %i.azt = icmp ult i32 %.11167197.i.i.i, 3
  %i.azu = zext i32 %i.gm to i64                  ; 2 uses
  %min.iters.check36 = icmp ult i32 %i.gm, 9
  %i.azv = and i64 %i.azu, 7                      ; 2 uses
  %i.azw = icmp eq i64 %i.azv, 0
  %i.azx = select i1 %i.azw, i64 8, i64 %i.azv
  %n.vec38 = sub nsw i64 %i.azu, %i.azx           ; 4 uses
  %i.azy = trunc i64 %n.vec38 to i32
  %i.azz = sub i32 %.11167197.i.i.i, %i.azy
  %i.baa = shl nsw i64 %n.vec38, 1
  %i.bab = shl nsw i64 %n.vec38, 2
  %xtraiter379 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod380.not = icmp eq i32 %xtraiter379, 0
  %i.bac = icmp ult i32 %.11167197.i.i.i, 3
  %xtraiter382 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod383.not = icmp eq i32 %xtraiter382, 0
  %i.bad = icmp ult i32 %.11167197.i.i.i, 3
  %i.bae = zext i32 %i.gm to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.gm, 8
  %n.vec = and i64 %i.bae, 4294967288             ; 5 uses
  %i.baf = trunc nuw i64 %n.vec to i32
  %i.bag = sub i32 %.11167197.i.i.i, %i.baf
  %i.bah = shl nuw nsw i64 %n.vec, 2
  %i.bai = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.bae
  %xtraiter385 = and i32 %i.gm, 1
  %lcmp.mod386.not = icmp eq i32 %xtraiter385, 0
  %.11167.i71.i.i.prol = add i32 %i.gm, -2
  %i.baj = icmp eq i32 %.11167197.i.i.i, 0
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i55.i.i, %.lr.ph257.split.i.i.i
  %indvars.iv.i54.i.i = phi i64 [ 0, %.lr.ph257.split.i.i.i ], [ %indvars.iv.next.i56.i.i, %.loopexit.i55.i.i ] ; 4 uses
  %i.bak = trunc i64 %indvars.iv.i54.i.i to i32
  %i.bal = mul i32 %8, %i.bak
  %i.bam = zext i32 %i.bal to i64
  %i.ban = shl nuw nsw i64 %i.bam, 1              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.azb, i64 %i.ban
  %scevgep31 = getelementptr i8, ptr %scevgep30.a, i64 %i.ban
  %i.bao = trunc i64 %indvars.iv.i54.i.i to i32
  %i.bap = mul i32 %i.azk, %i.bao
  %i.baq = zext i32 %i.bap to i64
  %i.bar = shl nuw nsw i64 %i.baq, 1              ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.gj, i64 %i.bar
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.bar
  %i.bas = trunc nuw nsw i64 %indvars.iv.i54.i.i to i32
  %i.bat = mul i32 %i.gm, %i.bas                  ; 2 uses
  %i.bau = mul i32 %i.bat, %i.gl
  %i.bav = zext i32 %i.bau to i64
  %i.baw = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.bav ; 49 uses
  %i.bax = mul i32 %i.bat, %4
  %i.bay = zext i32 %i.bax to i64
  %i.baz = getelementptr inbounds nuw [2 x i8], ptr %i.azb, i64 %i.bay ; 45 uses
  switch i32 %i.azf, label %.preheader194.i.i.i [
    i32 10, label %.preheader.i68.i.i
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

.preheader194.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph.i70.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph.i70.i.i.preheader:                         ; preds = %.preheader194.i.i.i
  br i1 %lcmp.mod386.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %.lr.ph.i70.i.i.preheader
  %i.bba = load i16, ptr %i.baw, align 2
  store i16 %i.bba, ptr %i.baz, align 2
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bbc = load i16, ptr %i.bbb, align 2
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  store i16 %i.bbc, ptr %i.bbd, align 2
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bbf = load i16, ptr %i.bbe, align 2
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  store i16 %i.bbf, ptr %i.bbg, align 2
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.baz, i64 6
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %.lr.ph.i70.i.i.preheader
  %.11167200.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph.i70.i.i.preheader ], [ %.11167.i71.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.11199.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph.i70.i.i.preheader ], [ %i.bbi, %.lr.ph.i70.i.i.prol ]
  %.11153198.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph.i70.i.i.preheader ], [ %i.bbh, %.lr.ph.i70.i.i.prol ]
  br i1 %i.baj, label %.loopexit.i55.i.i, label %.lr.ph.i70.i.i

.preheader192.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph205.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph205.i.i.i.preheader:                        ; preds = %.preheader192.i.i.i
  br i1 %lcmp.mod.not, label %.lr.ph205.i.i.i.prol.loopexit, label %.lr.ph205.i.i.i.prol

.lr.ph205.i.i.i.prol:                             ; preds = %.lr.ph205.i.i.i.preheader
  %i.bbj = load i16, ptr %i.baw, align 2
  %i.bbk = zext i16 %i.bbj to i32
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bbm = load i16, ptr %i.bbl, align 2
  %i.bbn = zext i16 %i.bbm to i32
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bbp = load i16, ptr %i.bbo, align 2
  %i.bbq = zext i16 %i.bbp to i32
  %i.bbr = mul nuw nsw i32 %i.bbk, 77
  %i.bbs = mul nuw nsw i32 %i.bbn, 150
  %i.bbt = add nuw nsw i32 %i.bbs, %i.bbr
  %i.bbu = mul nuw nsw i32 %i.bbq, 29
  %i.bbv = add nuw nsw i32 %i.bbt, %i.bbu
  %i.bbw = lshr i32 %i.bbv, 8
  %i.bbx = trunc nuw i32 %i.bbw to i16
  store i16 %i.bbx, ptr %i.baz, align 2
  %i.bby = getelementptr inbounds nuw i8, ptr %i.baw, i64 6
  %i.bbz = load i16, ptr %i.bby, align 2
  %i.bca = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  store i16 %i.bbz, ptr %i.bca, align 2
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  br label %.lr.ph205.i.i.i.prol.loopexit

.lr.ph205.i.i.i.prol.loopexit:                    ; preds = %.lr.ph205.i.i.i.prol, %.lr.ph205.i.i.i.preheader
  %.10166204.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph205.i.i.i.preheader ], [ %.10166.i58.i.i.prol, %.lr.ph205.i.i.i.prol ]
  %.10203.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph205.i.i.i.preheader ], [ %i.bcc, %.lr.ph205.i.i.i.prol ]
  %.10152202.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph205.i.i.i.preheader ], [ %i.bcb, %.lr.ph205.i.i.i.prol ]
  br i1 %i.azn, label %.loopexit.i55.i.i, label %.lr.ph205.i.i.i

.preheader190.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph210.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph210.i.i.i.preheader:                        ; preds = %.preheader190.i.i.i
  br i1 %lcmp.mod365.not.a, label %.lr.ph210.i.i.i.prol.loopexit, label %.lr.ph210.i.i.i.prol

.lr.ph210.i.i.i.prol:                             ; preds = %.lr.ph210.i.i.i.preheader
  %i.bcd = load i16, ptr %i.baw, align 2
  %i.bce = zext i16 %i.bcd to i32
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bcg = load i16, ptr %i.bcf, align 2
  %i.bch = zext i16 %i.bcg to i32
  %i.bci = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bcj = load i16, ptr %i.bci, align 2
  %i.bck = zext i16 %i.bcj to i32
  %i.bcl = mul nuw nsw i32 %i.bce, 77
  %i.bcm = mul nuw nsw i32 %i.bch, 150
  %i.bcn = add nuw nsw i32 %i.bcm, %i.bcl
  %i.bco = mul nuw nsw i32 %i.bck, 29
  %i.bcp = add nuw nsw i32 %i.bcn, %i.bco
  %i.bcq = lshr i32 %i.bcp, 8
  %i.bcr = trunc nuw i32 %i.bcq to i16
  store i16 %i.bcr, ptr %i.baz, align 2
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bct = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  br label %.lr.ph210.i.i.i.prol.loopexit

.lr.ph210.i.i.i.prol.loopexit:                    ; preds = %.lr.ph210.i.i.i.prol, %.lr.ph210.i.i.i.preheader
  %.9165209.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph210.i.i.i.preheader ], [ %.9165.i59.i.i.prol, %.lr.ph210.i.i.i.prol ]
  %.9208.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph210.i.i.i.preheader ], [ %i.bct, %.lr.ph210.i.i.i.prol ]
  %.9151207.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph210.i.i.i.preheader ], [ %i.bcs, %.lr.ph210.i.i.i.prol ]
  br i1 %i.azo, label %.loopexit.i55.i.i, label %.lr.ph210.i.i.i

.preheader188.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph215.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph215.i.i.i.preheader:                        ; preds = %.preheader188.i.i.i
  br i1 %lcmp.mod367.not, label %.lr.ph215.i.i.i.prol.loopexit, label %.lr.ph215.i.i.i.prol

.lr.ph215.i.i.i.prol:                             ; preds = %.lr.ph215.i.i.i.preheader
  %i.bcu = load i16, ptr %i.baw, align 2
  %i.bcv = zext i16 %i.bcu to i32
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bcx = load i16, ptr %i.bcw, align 2
  %i.bcy = zext i16 %i.bcx to i32
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bda = load i16, ptr %i.bcz, align 2
  %i.bdb = zext i16 %i.bda to i32
  %i.bdc = mul nuw nsw i32 %i.bcv, 77
  %i.bdd = mul nuw nsw i32 %i.bcy, 150
  %i.bde = add nuw nsw i32 %i.bdd, %i.bdc
  %i.bdf = mul nuw nsw i32 %i.bdb, 29
  %i.bdg = add nuw nsw i32 %i.bde, %i.bdf
  %i.bdh = lshr i32 %i.bdg, 8
  %i.bdi = trunc nuw i32 %i.bdh to i16
  store i16 %i.bdi, ptr %i.baz, align 2
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  store i16 -1, ptr %i.bdj, align 2
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.baw, i64 6
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  br label %.lr.ph215.i.i.i.prol.loopexit

.lr.ph215.i.i.i.prol.loopexit:                    ; preds = %.lr.ph215.i.i.i.prol, %.lr.ph215.i.i.i.preheader
  %.8164214.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph215.i.i.i.preheader ], [ %.8164.i60.i.i.prol, %.lr.ph215.i.i.i.prol ]
  %.8213.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph215.i.i.i.preheader ], [ %i.bdl, %.lr.ph215.i.i.i.prol ]
  %.8150212.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph215.i.i.i.preheader ], [ %i.bdk, %.lr.ph215.i.i.i.prol ]
  br i1 %i.azp, label %.loopexit.i55.i.i, label %.lr.ph215.i.i.i

.preheader186.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph220.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph220.i.i.i.preheader:                        ; preds = %.preheader186.i.i.i
  br i1 %lcmp.mod369.not, label %.lr.ph220.i.i.i.prol.loopexit, label %.lr.ph220.i.i.i.prol

.lr.ph220.i.i.i.prol:                             ; preds = %.lr.ph220.i.i.i.preheader
  %i.bdm = load i16, ptr %i.baw, align 2
  %i.bdn = zext i16 %i.bdm to i32
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bdp = load i16, ptr %i.bdo, align 2
  %i.bdq = zext i16 %i.bdp to i32
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bds = load i16, ptr %i.bdr, align 2
  %i.bdt = zext i16 %i.bds to i32
  %i.bdu = mul nuw nsw i32 %i.bdn, 77
  %i.bdv = mul nuw nsw i32 %i.bdq, 150
  %i.bdw = add nuw nsw i32 %i.bdv, %i.bdu
  %i.bdx = mul nuw nsw i32 %i.bdt, 29
  %i.bdy = add nuw nsw i32 %i.bdw, %i.bdx
  %i.bdz = lshr i32 %i.bdy, 8
  %i.bea = trunc nuw i32 %i.bdz to i16
  store i16 %i.bea, ptr %i.baz, align 2
  %i.beb = getelementptr inbounds nuw i8, ptr %i.baw, i64 6
  %i.bec = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  br label %.lr.ph220.i.i.i.prol.loopexit

.lr.ph220.i.i.i.prol.loopexit:                    ; preds = %.lr.ph220.i.i.i.prol, %.lr.ph220.i.i.i.preheader
  %.7163219.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph220.i.i.i.preheader ], [ %.7163.i61.i.i.prol, %.lr.ph220.i.i.i.prol ]
  %.7218.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph220.i.i.i.preheader ], [ %i.bec, %.lr.ph220.i.i.i.prol ]
  %.7149217.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph220.i.i.i.preheader ], [ %i.beb, %.lr.ph220.i.i.i.prol ]
  br i1 %i.azq, label %.loopexit.i55.i.i, label %.lr.ph220.i.i.i

.preheader184.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph225.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph225.i.i.i.preheader:                        ; preds = %.preheader184.i.i.i
  br i1 %lcmp.mod371.not.a, label %.lr.ph225.i.i.i.prol.loopexit, label %.lr.ph225.i.i.i.prol

.lr.ph225.i.i.i.prol:                             ; preds = %.lr.ph225.i.i.i.preheader
  %i.bed = load i16, ptr %i.baw, align 2
  store i16 %i.bed, ptr %i.baz, align 2
  %i.bee = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.bef = load i16, ptr %i.bee, align 2
  %i.beg = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  store i16 %i.bef, ptr %i.beg, align 2
  %i.beh = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.bei = load i16, ptr %i.beh, align 2
  %i.bej = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  store i16 %i.bei, ptr %i.bej, align 2
  %i.bek = getelementptr inbounds nuw i8, ptr %i.baz, i64 6
  store i16 -1, ptr %i.bek, align 2
  %i.bel = getelementptr inbounds nuw i8, ptr %i.baw, i64 6
  %i.bem = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  br label %.lr.ph225.i.i.i.prol.loopexit

.lr.ph225.i.i.i.prol.loopexit:                    ; preds = %.lr.ph225.i.i.i.prol, %.lr.ph225.i.i.i.preheader
  %.6162224.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph225.i.i.i.preheader ], [ %.6162.i62.i.i.prol, %.lr.ph225.i.i.i.prol ]
  %.6223.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph225.i.i.i.preheader ], [ %i.bem, %.lr.ph225.i.i.i.prol ]
  %.6148222.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph225.i.i.i.preheader ], [ %i.bel, %.lr.ph225.i.i.i.prol ]
  br i1 %i.azr, label %.loopexit.i55.i.i, label %.lr.ph225.i.i.i

.preheader182.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph230.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph230.i.i.i.preheader:                        ; preds = %.preheader182.i.i.i
  br i1 %lcmp.mod373.not, label %.lr.ph230.i.i.i.prol.loopexit, label %.lr.ph230.i.i.i.prol

.lr.ph230.i.i.i.prol:                             ; preds = %.lr.ph230.i.i.i.preheader
  %i.ben = load i16, ptr %i.baw, align 2          ; 3 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  store i16 %i.ben, ptr %i.beo, align 2
  %i.bep = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  store i16 %i.ben, ptr %i.bep, align 2
  store i16 %i.ben, ptr %i.baz, align 2
  %i.beq = getelementptr inbounds nuw i8, ptr %i.baw, i64 2
  %i.ber = load i16, ptr %i.beq, align 2
  %i.bes = getelementptr inbounds nuw i8, ptr %i.baz, i64 6
  store i16 %i.ber, ptr %i.bes, align 2
  %i.bet = getelementptr inbounds nuw i8, ptr %i.baw, i64 4
  %i.beu = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  br label %.lr.ph230.i.i.i.prol.loopexit

.lr.ph230.i.i.i.prol.loopexit:                    ; preds = %.lr.ph230.i.i.i.prol, %.lr.ph230.i.i.i.preheader
  %.5161229.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph230.i.i.i.preheader ], [ %.5161.i63.i.i.prol, %.lr.ph230.i.i.i.prol ]
  %.5228.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph230.i.i.i.preheader ], [ %i.beu, %.lr.ph230.i.i.i.prol ]
  %.5147227.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph230.i.i.i.preheader ], [ %i.bet, %.lr.ph230.i.i.i.prol ]
  br i1 %i.azs, label %.loopexit.i55.i.i, label %.lr.ph230.i.i.i

.preheader180.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph235.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph235.i.i.i.preheader:                        ; preds = %.preheader180.i.i.i
  br i1 %lcmp.mod375.not, label %.lr.ph235.i.i.i.prol.loopexit, label %.lr.ph235.i.i.i.prol

.lr.ph235.i.i.i.prol:                             ; preds = %.lr.ph235.i.i.i.preheader, %.lr.ph235.i.i.i.prol
  %.4160234.i.i.i.prol = phi i32 [ %.4160.i64.i.i.prol, %.lr.ph235.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph235.i.i.i.preheader ]
  %.4233.i.i.i.prol = phi ptr [ %i.bez, %.lr.ph235.i.i.i.prol ], [ %i.baz, %.lr.ph235.i.i.i.preheader ] ; 4 uses
  %.4146232.i.i.i.prol = phi ptr [ %i.bey, %.lr.ph235.i.i.i.prol ], [ %i.baw, %.lr.ph235.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph235.i.i.i.prol ], [ 0, %.lr.ph235.i.i.i.preheader ]
  %i.bev = load i16, ptr %.4146232.i.i.i.prol, align 2 ; 3 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 4
  store i16 %i.bev, ptr %i.bew, align 2
  %i.bex = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 2
  store i16 %i.bev, ptr %i.bex, align 2
  store i16 %i.bev, ptr %.4233.i.i.i.prol, align 2
  %i.bey = getelementptr inbounds nuw i8, ptr %.4146232.i.i.i.prol, i64 4 ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.4233.i.i.i.prol, i64 6 ; 2 uses
  %.4160.i64.i.i.prol = add nsw i32 %.4160234.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter374
  br i1 %prol.iter.cmp.not, label %.lr.ph235.i.i.i.prol.loopexit, label %.lr.ph235.i.i.i.prol, !llvm.loop !134

.lr.ph235.i.i.i.prol.loopexit:                    ; preds = %.lr.ph235.i.i.i.prol, %.lr.ph235.i.i.i.preheader
  %.4160234.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph235.i.i.i.preheader ], [ %.4160.i64.i.i.prol, %.lr.ph235.i.i.i.prol ]
  %.4233.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph235.i.i.i.preheader ], [ %i.bez, %.lr.ph235.i.i.i.prol ]
  %.4146232.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph235.i.i.i.preheader ], [ %i.bey, %.lr.ph235.i.i.i.prol ]
  br i1 %i.azt, label %.loopexit.i55.i.i, label %.lr.ph235.i.i.i

.preheader178.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph240.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph240.i.i.i.preheader:                        ; preds = %.preheader178.i.i.i
  br i1 %min.iters.check36, label %.lr.ph240.i.i.i.preheader354, label %vector.memcheck

.lr.ph240.i.i.i.preheader354:                     ; preds = %vector.body39, %vector.memcheck, %.lr.ph240.i.i.i.preheader
  %.3159239.i.i.i.ph = phi i32 [ %.11167197.i.i.i, %vector.memcheck ], [ %.11167197.i.i.i, %.lr.ph240.i.i.i.preheader ], [ %i.azz, %vector.body39 ] ; 4 uses
  %.3238.i.i.i.ph = phi ptr [ %i.baz, %vector.memcheck ], [ %i.baz, %.lr.ph240.i.i.i.preheader ], [ %i.bff, %vector.body39 ] ; 2 uses
  %.3145237.i.i.i.ph = phi ptr [ %i.baw, %vector.memcheck ], [ %i.baw, %.lr.ph240.i.i.i.preheader ], [ %i.bfg, %vector.body39 ] ; 2 uses
  %i.bfa = add i32 %.3159239.i.i.i.ph, 1
  %xtraiter376 = and i32 %i.bfa, 7                ; 2 uses
  %lcmp.mod377.not = icmp eq i32 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph240.i.i.i.prol.loopexit, label %.lr.ph240.i.i.i.prol

.lr.ph240.i.i.i.prol:                             ; preds = %.lr.ph240.i.i.i.preheader354, %.lr.ph240.i.i.i.prol
  %.3159239.i.i.i.prol = phi i32 [ %.3159.i65.i.i.prol, %.lr.ph240.i.i.i.prol ], [ %.3159239.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ]
  %.3238.i.i.i.prol = phi ptr [ %i.bfd, %.lr.ph240.i.i.i.prol ], [ %.3238.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ] ; 2 uses
  %.3145237.i.i.i.prol = phi ptr [ %i.bfc, %.lr.ph240.i.i.i.prol ], [ %.3145237.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ] ; 2 uses
  %prol.iter378 = phi i32 [ %prol.iter378.next, %.lr.ph240.i.i.i.prol ], [ 0, %.lr.ph240.i.i.i.preheader354 ]
  %i.bfb = load i16, ptr %.3145237.i.i.i.prol, align 2
  store i16 %i.bfb, ptr %.3238.i.i.i.prol, align 2
  %i.bfc = getelementptr inbounds nuw i8, ptr %.3145237.i.i.i.prol, i64 4 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.3238.i.i.i.prol, i64 2 ; 2 uses
  %.3159.i65.i.i.prol = add nsw i32 %.3159239.i.i.i.prol, -1 ; 2 uses
  %prol.iter378.next = add i32 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i32 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %.lr.ph240.i.i.i.prol.loopexit, label %.lr.ph240.i.i.i.prol, !llvm.loop !135

.lr.ph240.i.i.i.prol.loopexit:                    ; preds = %.lr.ph240.i.i.i.prol, %.lr.ph240.i.i.i.preheader354
  %.3159239.i.i.i.unr = phi i32 [ %.3159239.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ], [ %.3159.i65.i.i.prol, %.lr.ph240.i.i.i.prol ]
  %.3238.i.i.i.unr = phi ptr [ %.3238.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ], [ %i.bfd, %.lr.ph240.i.i.i.prol ]
  %.3145237.i.i.i.unr = phi ptr [ %.3145237.i.i.i.ph, %.lr.ph240.i.i.i.preheader354 ], [ %i.bfc, %.lr.ph240.i.i.i.prol ]
  %i.bfe = icmp ult i32 %.3159239.i.i.i.ph, 7
  br i1 %i.bfe, label %.loopexit.i55.i.i, label %.lr.ph240.i.i.i

vector.memcheck:                                  ; preds = %.lr.ph240.i.i.i.preheader
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph240.i.i.i.preheader354, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck
  %i.bff = getelementptr i8, ptr %i.baz, i64 %i.baa
  %i.bfg = getelementptr i8, ptr %i.baw, i64 %i.bab
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next46, %vector.body39 ] ; 3 uses
  %i.bfh = shl i64 %index40, 1
  %next.gep41.a = getelementptr i8, ptr %i.baz, i64 %i.bfh ; 2 uses
  %i.bfi = shl i64 %index40, 2                    ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.baw, i64 %i.bfi
  %i.bfj = getelementptr i8, ptr %i.baw, i64 %i.bfi
  %next.gep43 = getelementptr i8, ptr %i.bfj, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep42, align 2, !alias.scope !136
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec44 = load <8 x i16>, ptr %next.gep43, align 2, !alias.scope !136
  %strided.vec45 = shufflevector <8 x i16> %wide.vec44, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bfk = getelementptr i8, ptr %next.gep41.a, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep41.a, align 2, !alias.scope !139, !noalias !136
  store <4 x i16> %strided.vec45, ptr %i.bfk, align 2, !alias.scope !139, !noalias !136
  %index.next46 = add nuw i64 %index40, 8         ; 2 uses
  %i.bfl = icmp eq i64 %index.next46, %n.vec38
  br i1 %i.bfl, label %.lr.ph240.i.i.i.preheader354, label %vector.body39, !llvm.loop !141

.preheader176.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph245.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph245.i.i.i.preheader:                        ; preds = %.preheader176.i.i.i
  br i1 %lcmp.mod380.not, label %.lr.ph245.i.i.i.prol.loopexit, label %.lr.ph245.i.i.i.prol

.lr.ph245.i.i.i.prol:                             ; preds = %.lr.ph245.i.i.i.preheader, %.lr.ph245.i.i.i.prol
  %.2158244.i.i.i.prol = phi i32 [ %.2158.i66.i.i.prol, %.lr.ph245.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph245.i.i.i.preheader ]
  %.2243.i.i.i.prol = phi ptr [ %i.bfq, %.lr.ph245.i.i.i.prol ], [ %i.baz, %.lr.ph245.i.i.i.preheader ] ; 2 uses
  %.2144242.i.i.i.prol = phi ptr [ %i.bfp, %.lr.ph245.i.i.i.prol ], [ %i.baw, %.lr.ph245.i.i.i.preheader ] ; 2 uses
  %prol.iter381 = phi i32 [ %prol.iter381.next, %.lr.ph245.i.i.i.prol ], [ 0, %.lr.ph245.i.i.i.preheader ]
  %i.bfm = load i16, ptr %.2144242.i.i.i.prol, align 2
  %i.bfn = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bfm, i64 0
  %i.bfo = shufflevector <4 x i16> %i.bfn, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bfo, ptr %.2243.i.i.i.prol, align 2
  %i.bfp = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i.prol, i64 2 ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %.2243.i.i.i.prol, i64 8 ; 2 uses
  %.2158.i66.i.i.prol = add nsw i32 %.2158244.i.i.i.prol, -1 ; 2 uses
  %prol.iter381.next = add i32 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i32 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph245.i.i.i.prol.loopexit, label %.lr.ph245.i.i.i.prol, !llvm.loop !142

.lr.ph245.i.i.i.prol.loopexit:                    ; preds = %.lr.ph245.i.i.i.prol, %.lr.ph245.i.i.i.preheader
  %.2158244.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph245.i.i.i.preheader ], [ %.2158.i66.i.i.prol, %.lr.ph245.i.i.i.prol ]
  %.2243.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph245.i.i.i.preheader ], [ %i.bfq, %.lr.ph245.i.i.i.prol ]
  %.2144242.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph245.i.i.i.preheader ], [ %i.bfp, %.lr.ph245.i.i.i.prol ]
  br i1 %i.bac, label %.loopexit.i55.i.i, label %.lr.ph245.i.i.i

.preheader174.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph250.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph250.i.i.i.preheader:                        ; preds = %.preheader174.i.i.i
  br i1 %lcmp.mod383.not, label %.lr.ph250.i.i.i.prol.loopexit, label %.lr.ph250.i.i.i.prol

.lr.ph250.i.i.i.prol:                             ; preds = %.lr.ph250.i.i.i.preheader, %.lr.ph250.i.i.i.prol
  %.1157249.i.i.i.prol = phi i32 [ %.1157.i67.i.i.prol, %.lr.ph250.i.i.i.prol ], [ %.11167197.i.i.i, %.lr.ph250.i.i.i.preheader ]
  %.1248.i.i.i.prol = phi ptr [ %i.bfv, %.lr.ph250.i.i.i.prol ], [ %i.baz, %.lr.ph250.i.i.i.preheader ] ; 4 uses
  %.1143247.i.i.i.prol = phi ptr [ %i.bfu, %.lr.ph250.i.i.i.prol ], [ %i.baw, %.lr.ph250.i.i.i.preheader ] ; 2 uses
  %prol.iter384 = phi i32 [ %prol.iter384.next, %.lr.ph250.i.i.i.prol ], [ 0, %.lr.ph250.i.i.i.preheader ]
  %i.bfr = load i16, ptr %.1143247.i.i.i.prol, align 2 ; 3 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 4
  store i16 %i.bfr, ptr %i.bfs, align 2
  %i.bft = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 2
  store i16 %i.bfr, ptr %i.bft, align 2
  store i16 %i.bfr, ptr %.1248.i.i.i.prol, align 2
  %i.bfu = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i.prol, i64 2 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.1248.i.i.i.prol, i64 6 ; 2 uses
  %.1157.i67.i.i.prol = add nsw i32 %.1157249.i.i.i.prol, -1 ; 2 uses
  %prol.iter384.next = add i32 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i32 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph250.i.i.i.prol.loopexit, label %.lr.ph250.i.i.i.prol, !llvm.loop !143

.lr.ph250.i.i.i.prol.loopexit:                    ; preds = %.lr.ph250.i.i.i.prol, %.lr.ph250.i.i.i.preheader
  %.1157249.i.i.i.unr = phi i32 [ %.11167197.i.i.i, %.lr.ph250.i.i.i.preheader ], [ %.1157.i67.i.i.prol, %.lr.ph250.i.i.i.prol ]
  %.1248.i.i.i.unr = phi ptr [ %i.baz, %.lr.ph250.i.i.i.preheader ], [ %i.bfv, %.lr.ph250.i.i.i.prol ]
  %.1143247.i.i.i.unr = phi ptr [ %i.baw, %.lr.ph250.i.i.i.preheader ], [ %i.bfu, %.lr.ph250.i.i.i.prol ]
  br i1 %i.bad, label %.loopexit.i55.i.i, label %.lr.ph250.i.i.i

.preheader.i68.i.i:                               ; preds = %bb.bi
  br i1 %i.azg, label %.lr.ph255.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph255.i.i.i.preheader:                        ; preds = %.preheader.i68.i.i
  br i1 %min.iters.check, label %.lr.ph255.i.i.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph255.i.i.i.preheader
  %i.bfw = getelementptr i8, ptr %i.baz, i64 %i.bah
  %i.bfx = getelementptr i8, ptr %i.baw, i64 %i.bai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bfy = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.baz, i64 %i.bfy
  %i.bfz = getelementptr i8, ptr %i.baz, i64 %i.bfy
  %next.gep24 = getelementptr i8, ptr %i.bfz, i64 16
  %i.bga = shl i64 %index, 1
  %next.gep25 = getelementptr i8, ptr %i.baw, i64 %i.bga ; 2 uses
  %i.bgb = getelementptr i8, ptr %next.gep25, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep25, align 2
  %wide.load26 = load <4 x i16>, ptr %i.bgb, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec27 = shufflevector <4 x i16> %wide.load26, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec27, ptr %next.gep24, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bgc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bgc, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i55.i.i, label %.lr.ph255.i.i.i.preheader350

.lr.ph255.i.i.i.preheader350:                     ; preds = %.lr.ph255.i.i.i.preheader, %middle.block
  %.0156254.i.i.i.ph = phi i32 [ %.11167197.i.i.i, %.lr.ph255.i.i.i.preheader ], [ %i.bag, %middle.block ]
  %.0253.i.i.i.ph = phi ptr [ %i.baz, %.lr.ph255.i.i.i.preheader ], [ %i.bfw, %middle.block ]
  %.0142252.i.i.i.ph = phi ptr [ %i.baw, %.lr.ph255.i.i.i.preheader ], [ %i.bfx, %middle.block ]
  br label %.lr.ph255.i.i.i

.lr.ph255.i.i.i:                                  ; preds = %.lr.ph255.i.i.i.preheader350, %.lr.ph255.i.i.i
  %.0156254.i.i.i = phi i32 [ %.0156.i69.i.i, %.lr.ph255.i.i.i ], [ %.0156254.i.i.i.ph, %.lr.ph255.i.i.i.preheader350 ] ; 2 uses
  %.0253.i.i.i = phi ptr [ %i.bgg, %.lr.ph255.i.i.i ], [ %.0253.i.i.i.ph, %.lr.ph255.i.i.i.preheader350 ] ; 3 uses
  %.0142252.i.i.i = phi ptr [ %i.bgf, %.lr.ph255.i.i.i ], [ %.0142252.i.i.i.ph, %.lr.ph255.i.i.i.preheader350 ] ; 2 uses
  %i.bgd = load i16, ptr %.0142252.i.i.i, align 2
  store i16 %i.bgd, ptr %.0253.i.i.i, align 2
  %i.bge = getelementptr inbounds nuw i8, ptr %.0253.i.i.i, i64 2
  store i16 -1, ptr %i.bge, align 2
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0142252.i.i.i, i64 2
  %i.bgg = getelementptr inbounds nuw i8, ptr %.0253.i.i.i, i64 4
  %.0156.i69.i.i = add nsw i32 %.0156254.i.i.i, -1
  %.not293.i.i.i = icmp eq i32 %.0156254.i.i.i, 0
  br i1 %.not293.i.i.i, label %.loopexit.i55.i.i, label %.lr.ph255.i.i.i, !llvm.loop !145

.lr.ph250.i.i.i:                                  ; preds = %.lr.ph250.i.i.i.prol.loopexit, %.lr.ph250.i.i.i
  %.1157249.i.i.i = phi i32 [ %.1157.i67.i.i.3, %.lr.ph250.i.i.i ], [ %.1157249.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 2 uses
  %.1248.i.i.i = phi ptr [ %i.bha, %.lr.ph250.i.i.i ], [ %.1248.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 13 uses
  %.1143247.i.i.i = phi ptr [ %i.bgz, %.lr.ph250.i.i.i ], [ %.1143247.i.i.i.unr, %.lr.ph250.i.i.i.prol.loopexit ] ; 5 uses
  %i.bgh = load i16, ptr %.1143247.i.i.i, align 2 ; 3 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 4
  store i16 %i.bgh, ptr %i.bgi, align 2
  %i.bgj = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 2
  store i16 %i.bgh, ptr %i.bgj, align 2
  store i16 %i.bgh, ptr %.1248.i.i.i, align 2
  %i.bgk = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 2
  %i.bgl = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 6
  %i.bgm = load i16, ptr %i.bgk, align 2          ; 3 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 10
  store i16 %i.bgm, ptr %i.bgn, align 2
  %i.bgo = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 8
  store i16 %i.bgm, ptr %i.bgo, align 2
  store i16 %i.bgm, ptr %i.bgl, align 2
  %i.bgp = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 4
  %i.bgq = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 12
  %i.bgr = load i16, ptr %i.bgp, align 2          ; 3 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 16
  store i16 %i.bgr, ptr %i.bgs, align 2
  %i.bgt = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 14
  store i16 %i.bgr, ptr %i.bgt, align 2
  store i16 %i.bgr, ptr %i.bgq, align 2
  %i.bgu = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 6
  %i.bgv = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 18
  %i.bgw = load i16, ptr %i.bgu, align 2          ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 22
  store i16 %i.bgw, ptr %i.bgx, align 2
  %i.bgy = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 20
  store i16 %i.bgw, ptr %i.bgy, align 2
  store i16 %i.bgw, ptr %i.bgv, align 2
  %i.bgz = getelementptr inbounds nuw i8, ptr %.1143247.i.i.i, i64 8
  %i.bha = getelementptr inbounds nuw i8, ptr %.1248.i.i.i, i64 24
  %.1157.i67.i.i.3 = add nsw i32 %.1157249.i.i.i, -4
  %.not292.i.i.i.3 = icmp eq i32 %.1157249.i.i.i, 3
  br i1 %.not292.i.i.i.3, label %.loopexit.i55.i.i, label %.lr.ph250.i.i.i, !llvm.loop !146

.lr.ph245.i.i.i:                                  ; preds = %.lr.ph245.i.i.i.prol.loopexit, %.lr.ph245.i.i.i
  %.2158244.i.i.i = phi i32 [ %.2158.i66.i.i.3, %.lr.ph245.i.i.i ], [ %.2158244.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 2 uses
  %.2243.i.i.i = phi ptr [ %i.bhu, %.lr.ph245.i.i.i ], [ %.2243.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 5 uses
  %.2144242.i.i.i = phi ptr [ %i.bht, %.lr.ph245.i.i.i ], [ %.2144242.i.i.i.unr, %.lr.ph245.i.i.i.prol.loopexit ] ; 5 uses
  %i.bhb = load i16, ptr %.2144242.i.i.i, align 2
  %i.bhc = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bhb, i64 0
  %i.bhd = shufflevector <4 x i16> %i.bhc, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bhd, ptr %.2243.i.i.i, align 2
  %i.bhe = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 2
  %i.bhf = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 8
  %i.bhg = load i16, ptr %i.bhe, align 2
  %i.bhh = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bhg, i64 0
  %i.bhi = shufflevector <4 x i16> %i.bhh, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bhi, ptr %i.bhf, align 2
  %i.bhj = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 4
  %i.bhk = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 16
  %i.bhl = load i16, ptr %i.bhj, align 2
  %i.bhm = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bhl, i64 0
  %i.bhn = shufflevector <4 x i16> %i.bhm, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bhn, ptr %i.bhk, align 2
  %i.bho = getelementptr inbounds nuw i8, ptr %.2144242.i.i.i, i64 6
  %i.bhp = getelementptr inbounds nuw i8, ptr %.2243.i.i.i, i64 24
end_hunk_2
begin_hunk_3_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %i.ba = add nuw nsw i32 %i.az, %i.an
  %.lhs.trunc4 = trunc nuw i32 %i.ba to i16
  %i.bb = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.bc = trunc i16 %i.bb to i8
  store i8 %i.bc, ptr %i.aj, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.14711, align 1
  store i8 %i.ah, ptr %i.bd, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bg = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !188

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bw, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bh = load i8, ptr %.24813, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  store i8 %i.bj, ptr %.24813, align 1
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %i.bk, align 1
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  store i8 %i.br, ptr %i.bo, align 1
  store i8 %i.bp, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !189

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.ca, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bx = load i8, ptr %.04616.epil, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.04616.epil, align 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
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
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.ak

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 40 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %min.iters.check699 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.ax, -1
  %diff.check697 = icmp ult i64 %i.bo, 31
  %or.cond736 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec703 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec703, %i.ax
  %cmp.n712 = icmp eq i64 %i.bl, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bp, 0
  %n.vec720 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec720, %i.ax
  %cmp.n727 = icmp eq i64 %i.bl, %n.vec720
  %i.bs = add nsw i64 %i.bb, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bt, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter750 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %min.iters.check632 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.ax, -1
  %diff.check626 = icmp ult i64 %i.bu, 15
  %min.iters.check634 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec636 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec636, %i.ax
  %cmp.n645 = icmp eq i64 %i.bl, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bv, 0
  %n.vec653 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec653, %i.ax
  %cmp.n662 = icmp eq i64 %i.bl, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.by, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter752.a = and i64 %wide.trip.count424, 1
  %lcmp.mod753.not.a = icmp eq i64 %xtraiter752.a, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.ax, -1
  %diff.check561 = icmp ult i64 %i.ca, 15
  %min.iters.check565 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec567 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec567, %i.ax
  %cmp.n575 = icmp eq i64 %i.bl, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.cb, 0
  %n.vec583 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec583, %i.ax
  %cmp.n591 = icmp eq i64 %i.bl, %n.vec583
  %i.ce = add nsw i64 %i.bb, -1
  %min.iters.check530 = icmp ult i32 %i.aw, 4
  %min.iters.check532 = icmp ult i32 %i.aw, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cf, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter758.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod759.not.a = icmp eq i64 %xtraiter758.a, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond735 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %i.ch = and i64 %i.bl, 24
  %n.vec509 = and i64 %i.bl, -32                  ; 4 uses
  %i.ci = add nsw i64 %n.vec509, %i.ax
  %cmp.n518 = icmp eq i64 %i.bl, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec520 = and i64 %i.bl, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec520, %i.ax
  %cmp.n525 = icmp eq i64 %i.bl, %n.vec520
  %i.ck = add nsw i64 %i.bb, -1
  %xtraiter764.a = and i32 %4, 1
  %i.cl = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod765.not.a = icmp eq i32 %xtraiter764.a, 0
  %lcmp.mod766.a = trunc i32 %4 to i1
  %xtraiter767 = and i32 %i.z, 3                  ; 3 uses
  %i.cm = icmp ult i32 %i.z, 4
  %unroll_iter770 = and i32 %i.z, -4
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  %lcmp.mod769 = icmp ne i32 %xtraiter767, 0
  %i.cn = and i64 %i.bg, 1
  %lcmp.mod773.not.not = icmp eq i64 %i.cn, 0
  %i.co = shl nuw nsw i64 %i.bg, 2
  %i.cp = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cq = icmp eq i32 %.030.i305, 0
  %i.cr = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cr, 4294967288              ; 3 uses
  %i.cs = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  %xtraiter775 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bm, 0
  %unroll_iter779 = and i32 %i.z, -2
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.z to i1
  %xtraiter781 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bm, 0
  %unroll_iter785 = and i32 %i.z, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.z to i1
  %xtraiter787 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bm, 0
  %unroll_iter791 = and i32 %i.z, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.z to i1
  %i.cw = and i64 %i.bg, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cw, 0
  %i.cx = shl nuw nsw i64 %i.bg, 2
  %i.cy = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cz = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.da = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qk, %.loopexit ] ; 2 uses
  %8 = trunc i64 %indvars.iv457 to i32
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = mul nuw nsw i32 %i.ah, %10
  %12 = trunc i64 %indvars.iv457 to i32
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = mul nuw nsw i32 %i.ah, %14
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %17 = trunc i64 %indvars.iv457 to i32
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = mul nuw nsw i32 %i.ah, %19
  %21 = trunc i64 %indvars.iv457 to i32
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  %24 = mul nuw nsw i32 %i.ah, %23
  %25 = trunc i64 %indvars.iv457 to i32
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  %28 = mul nuw nsw i32 %i.ah, %27
  %i.db = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i1
  %i.dd = select i1 %i.dc, i64 %i.av, i64 0       ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dd ; 75 uses
  %i.df = and i32 %i.db, 1
  %i.dg = xor i32 %i.df, 1
  %i.dh = mul nuw nsw i32 %i.dg, %i.ah
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.di ; 30 uses
  %i.dk = load ptr, ptr %i.u, align 8
  %i.dl = mul i32 %i.e, %i.db
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm ; 33 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dp = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dq = icmp ugt i8 %i.dp, 4
  br i1 %i.dq, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = zext nneg i8 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.du, %bb.o ], [ %i.dp, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %29 = zext nneg i32 %11 to i64
  %i.dv = sub nsw i64 %29, %i.dd
  %diff.check665 = icmp ugt i64 %i.dv, -32
  %or.cond730.a = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond730.a, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dw, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index673 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dy, align 1
  %wide.load677 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = add <16 x i8> %wide.load676, %wide.load674
  %i.eb = add <16 x i8> %wide.load677, %wide.load675
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %index673 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %i.ea, ptr %i.ec, align 1
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ee, label %middle.block679, label %vector.body672, !llvm.loop !192

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !54

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.eg, align 1
  %i.eh = add <4 x i8> %wide.load691, %wide.load690
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 %index689
  store <4 x i8> %i.eh, ptr %i.ei, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ej, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !193

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.en = load i8, ptr %i.em, align 1
  %.narrow286.prol = add i8 %i.en, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eo, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter750
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !194

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ep = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %30 = zext nneg i32 %20 to i64
  %i.er = sub nsw i64 %30, %i.dd
  %diff.check594 = icmp ugt i64 %i.er, -32
  %or.cond732 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond732, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.es, align 1
  %wide.load604 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index602 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.eu, align 1
  %wide.load606 = load <16 x i8>, ptr %i.ev, align 1
  %i.ew = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ex = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ey = add <16 x i8> %i.ew, %wide.load603
  %i.ez = add <16 x i8> %i.ex, %wide.load604
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 %index602 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %i.ey, ptr %i.fa, align 1
  store <16 x i8> %i.ez, ptr %i.fb, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fc, label %middle.block608, label %vector.body601, !llvm.loop !195

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !54

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fe, align 1
  %i.ff = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fg = add <4 x i8> %i.ff, %wide.load619
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 %index618
  store <4 x i8> %i.fg, ptr %i.fh, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fi, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !196

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod753.not.a, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431.ph
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431.ph
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = lshr i8 %i.fm, 1
  %.narrow290.prol = add i8 %i.fn, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fo, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fp = icmp eq i64 %indvars.iv431.ph, %i.bz
  br i1 %i.fp, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.ba, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
  %31 = zext nneg i32 %28 to i64
  %i.fq = sub nsw i64 %31, %i.dd
  %diff.check528 = icmp ugt i64 %i.fq, -32
  %or.cond734 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond734, label %.lr.ph368.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.body535

vector.body535:                                   ; preds = %vector.main.loop.iter.check531, %vector.body535
  %index536 = phi i64 [ %index.next541, %vector.body535 ], [ 0, %vector.main.loop.iter.check531 ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 %index536 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load537 = load <16 x i8>, ptr %i.fr, align 1
  %wide.load538 = load <16 x i8>, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index536 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load539 = load <16 x i8>, ptr %i.ft, align 1
  %wide.load540 = load <16 x i8>, ptr %i.fu, align 1
  %i.fv = add <16 x i8> %wide.load539, %wide.load537
  %i.fw = add <16 x i8> %wide.load540, %wide.load538
  %i.fx = getelementptr inbounds nuw i8, ptr %i.de, i64 %index536 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <16 x i8> %i.fv, ptr %i.fx, align 1
  store <16 x i8> %i.fw, ptr %i.fy, align 1
  %index.next541 = add nuw i64 %index536, 32      ; 2 uses
  %i.fz = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.fz, label %middle.block542, label %vector.body535, !llvm.loop !197

middle.block542:                                  ; preds = %vector.body535
  br i1 %cmp.n543, label %.loopexit348, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  br i1 %min.epilog.iters.check548, label %.lr.ph368.preheader, label %vec.epilog.ph549, !prof !54

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  br label %vec.epilog.vector.body551

vec.epilog.vector.body551:                        ; preds = %vec.epilog.vector.body551, %vec.epilog.ph549
  %index552 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next555, %vec.epilog.vector.body551 ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %index552
  %wide.load553 = load <4 x i8>, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index552
  %wide.load554 = load <4 x i8>, ptr %i.gb, align 1
  %i.gc = add <4 x i8> %wide.load554, %wide.load553
  %i.gd = getelementptr inbounds nuw i8, ptr %i.de, i64 %index552
  store <4 x i8> %i.gc, ptr %i.gd, align 1
  %index.next555 = add nuw i64 %index552, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.ge, label %vec.epilog.middle.block556, label %vec.epilog.vector.body551, !llvm.loop !198

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body551
  br i1 %cmp.n557, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block556
  %indvars.iv441.ph = phi i64 [ 0, %iter.check545 ], [ %n.vec534, %vec.epilog.iter.check547 ], [ %n.vec550, %vec.epilog.middle.block556 ] ; 3 uses
  br i1 %lcmp.mod759.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter760 = phi i64 [ %prol.iter760.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441.prol
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441.prol
  %i.gi = load i8, ptr %i.gh, align 1
  %.narrow292.prol = add i8 %i.gi, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gj, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter760.next = add i64 %prol.iter760, 1   ; 2 uses
  %prol.iter760.cmp.not = icmp eq i64 %prol.iter760.next, %xtraiter758.a
  br i1 %prol.iter760.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !199

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gk = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond735, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gm = add i64 %index511, %i.ax                ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.do, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.gn, align 1
  %wide.load513 = load <16 x i8>, ptr %i.go, align 1
  %i.gp = getelementptr inbounds i8, ptr %i.de, i64 %index511 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.gp, align 1
  %wide.load515 = load <16 x i8>, ptr %i.gq, align 1
  %i.gr = add <16 x i8> %wide.load514, %wide.load512
  %i.gs = add <16 x i8> %wide.load515, %wide.load513
  %i.gt = getelementptr inbounds i8, ptr %i.de, i64 %i.gm ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <16 x i8> %i.gr, ptr %i.gt, align 1
  store <16 x i8> %i.gs, ptr %i.gu, align 1
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.gv = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.gv, label %middle.block517, label %vector.body510, !llvm.loop !200

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block517
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !201

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec509, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index521 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 3 uses
  %i.gw = add i64 %index521, %i.ax                ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.do, i64 %i.gw
  %wide.load522 = load <8 x i8>, ptr %i.gx, align 1
  %i.gy = getelementptr inbounds i8, ptr %i.de, i64 %index521
  %wide.load523 = load <8 x i8>, ptr %i.gy, align 1
  %i.gz = add <8 x i8> %wide.load523, %wide.load522
  %i.ha = getelementptr inbounds i8, ptr %i.de, i64 %i.gw
  store <8 x i8> %i.gz, ptr %i.ha, align 1
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next524, %n.vec520
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !202

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n525, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 7 uses
  %i.hc = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter761 = and i64 %i.hc, 1
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hd = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446.ph
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hg = getelementptr inbounds i8, ptr %i.de, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1
  %.narrow294.prol = add i8 %i.hh, %i.he
  %i.hi = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hi, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.hj = icmp eq i64 %indvars.iv446.ph, %i.ck
  br i1 %i.hj, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hk = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = sub nsw i64 %indvars.iv446, %i.ax
  %i.hn = getelementptr inbounds i8, ptr %i.de, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %.narrow294 = add i8 %i.ho, %i.hl
  %i.hp = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hp, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next447
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.ht = getelementptr inbounds i8, ptr %i.de, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %.narrow294.1 = add i8 %i.hu, %i.hr
  %i.hv = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hv, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !203

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441
  %i.hz = load i8, ptr %i.hy, align 1
  %.narrow292 = add i8 %i.hz, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.ia, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442
  %i.ie = load i8, ptr %i.id, align 1
  %.narrow292.1 = add i8 %i.ie, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.if, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.1
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.1
  %i.ij = load i8, ptr %i.ii, align 1
  %.narrow292.2 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.ik, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.2
  %i.im = load i8, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.2
  %i.io = load i8, ptr %i.in, align 1
  %.narrow292.3 = add i8 %i.io, %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ip, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !204

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.ay, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %32 = zext nneg i32 %24 to i64
  %i.iq = sub nsw i64 %32, %i.dd
  %diff.check560 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.ir = add i64 %index569, %i.ax                ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.do, i64 %i.ir
  %wide.load570 = load <16 x i8>, ptr %i.is, align 1
  %i.it = getelementptr inbounds i8, ptr %i.dj, i64 %i.ir
  %wide.load571 = load <16 x i8>, ptr %i.it, align 1
  %i.iu = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iv = getelementptr inbounds i8, ptr %i.de, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iv, align 1
  %i.iw = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.ix = add nuw nsw <16 x i16> %i.iw, %i.iu
  %i.iy = lshr <16 x i16> %i.ix, splat (i16 1)
  %i.iz = trunc nuw <16 x i16> %i.iy to <16 x i8>
  %i.ja = add <16 x i8> %wide.load570, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.de, i64 %i.ir
  store <16 x i8> %i.ja, ptr %i.jb, align 1
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.jc, label %middle.block574, label %vector.body568, !llvm.loop !205

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !30

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.jd = add i64 %index585, %i.ax                ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.do, i64 %i.jd
  %wide.load586 = load <4 x i8>, ptr %i.je, align 1
  %i.jf = getelementptr inbounds i8, ptr %i.dj, i64 %i.jd
  %wide.load587 = load <4 x i8>, ptr %i.jf, align 1
  %i.jg = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jh = getelementptr inbounds i8, ptr %i.de, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jh, align 1
  %i.ji = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.jj = add nuw nsw <4 x i16> %i.ji, %i.jg
  %i.jk = lshr <4 x i16> %i.jj, splat (i16 1)
  %i.jl = trunc nuw <4 x i16> %i.jk to <4 x i8>
  %i.jm = add <4 x i8> %wide.load586, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.de, i64 %i.jd
  store <4 x i8> %i.jm, ptr %i.jn, align 1
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jo, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !206

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck559, %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check578 ], [ %i.ax, %vector.memcheck559 ], [ %i.cc, %vec.epilog.iter.check580 ], [ %i.cd, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jp = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter755 = and i64 %i.jp, 1
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jq = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436.ph
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436.ph
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i16
  %i.jv = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.jw = getelementptr inbounds i8, ptr %i.de, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i16
  %i.jz = add nuw nsw i16 %i.jy, %i.ju
  %i.ka = lshr i16 %i.jz, 1
  %.tr287.prol = trunc nuw i16 %i.ka to i8
  %.narrow288.prol = add i8 %i.jr, %.tr287.prol
  %i.kb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kb, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.kc = icmp eq i64 %indvars.iv436.ph, %i.ce
  br i1 %i.kc, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = lshr i8 %i.kg, 1
  %.narrow290 = add i8 %i.kh, %i.ke
  %i.ki = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.ki, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next432
  %i.kk = load i8, ptr %i.kj, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next432
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = lshr i8 %i.km, 1
  %.narrow290.1 = add i8 %i.kn, %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.ko, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !207

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = zext i8 %i.ks to i16
  %i.ku = sub nsw i64 %indvars.iv436, %i.ax
  %i.kv = getelementptr inbounds i8, ptr %i.de, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i16
  %i.ky = add nuw nsw i16 %i.kx, %i.kt
  %i.kz = lshr i16 %i.ky, 1
  %.tr287 = trunc nuw i16 %i.kz to i8
  %.narrow288 = add i8 %i.kq, %.tr287
  %i.la = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.la, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.lb = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next437
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next437
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i16
  %i.lg = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lh = getelementptr inbounds i8, ptr %i.de, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, %i.lf
  %i.ll = lshr i16 %i.lk, 1
  %.tr287.1 = trunc nuw i16 %i.ll to i8
  %.narrow288.1 = add i8 %i.lc, %.tr287.1
  %i.lm = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lm, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !208

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.ay, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.ln = sub nsw i64 %16, %i.dd
  %diff.check627 = icmp ugt i64 %i.ln, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.lo = add nsw i64 %i.dd, %i.ax
  %i.lp = sub nsw i64 %16, %i.lo
  %diff.check629 = icmp ugt i64 %i.lp, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.lq = add i64 %index638, %i.ax                ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.do, i64 %i.lq
  %wide.load639 = load <16 x i8>, ptr %i.lr, align 1
  %i.ls = getelementptr inbounds i8, ptr %i.de, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.ls, align 1
  %i.lt = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %i.dj, i64 %i.lq
  %wide.load641 = load <16 x i8>, ptr %i.lu, align 1
  %i.lv = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.dj, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lw, align 1
  %i.lx = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.ly = mul nuw nsw <16 x i32> %i.lx, splat (i32 3)
  %i.lz = add nuw nsw <16 x i32> %i.lv, %i.lt
  %i.ma = sub nsw <16 x i32> %i.ly, %i.lz         ; 2 uses
  %i.mb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lt, <16 x i32> %i.lv) ; 2 uses
  %i.mc = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.lt, <16 x i32> %i.lv) ; 2 uses
  %i.md = icmp sgt <16 x i32> %i.mc, %i.ma
  %i.me = select <16 x i1> %i.md, <16 x i32> %i.lx, <16 x i32> %i.mb
  %i.mf = icmp sgt <16 x i32> %i.ma, %i.mb
  %i.mg = select <16 x i1> %i.mf, <16 x i32> %i.me, <16 x i32> %i.mc
  %i.mh = trunc nuw <16 x i32> %i.mg to <16 x i8>
  %i.mi = add <16 x i8> %wide.load639, %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.de, i64 %i.lq
  store <16 x i8> %i.mi, ptr %i.mj, align 1
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mk = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mk, label %middle.block644, label %vector.body637, !llvm.loop !209

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !30

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.ml = add i64 %index655, %i.ax                ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %i.do, i64 %i.ml
  %wide.load656 = load <4 x i8>, ptr %i.mm, align 1
  %i.mn = getelementptr inbounds i8, ptr %i.de, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mn, align 1
  %i.mo = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mp = getelementptr inbounds i8, ptr %i.dj, i64 %i.ml
  %wide.load658 = load <4 x i8>, ptr %i.mp, align 1
  %i.mq = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mr = getelementptr inbounds i8, ptr %i.dj, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mr, align 1
  %i.ms = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.mt = mul nuw nsw <4 x i32> %i.ms, splat (i32 3)
  %i.mu = add nuw nsw <4 x i32> %i.mq, %i.mo
  %i.mv = sub nsw <4 x i32> %i.mt, %i.mu          ; 2 uses
  %i.mw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mo, <4 x i32> %i.mq) ; 2 uses
  %i.mx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mo, <4 x i32> %i.mq) ; 2 uses
  %i.my = icmp sgt <4 x i32> %i.mx, %i.mv
  %i.mz = select <4 x i1> %i.my, <4 x i32> %i.ms, <4 x i32> %i.mw
  %i.na = icmp sgt <4 x i32> %i.mv, %i.mw
  %i.nb = select <4 x i1> %i.na, <4 x i32> %i.mz, <4 x i32> %i.mx
  %i.nc = trunc nuw <4 x i32> %i.nb to <4 x i8>
  %i.nd = add <4 x i8> %wide.load656, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.de, i64 %i.ml
  store <4 x i8> %i.nd, ptr %i.ne, align 1
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.nf, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !210

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck625, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check648 ], [ %i.ax, %vector.memcheck625 ], [ %i.bw, %vec.epilog.iter.check650 ], [ %i.bx, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421
  %i.nj = load i8, ptr %i.ni, align 1
  %.narrow286 = add i8 %i.nj, %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nk, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422
  %i.no = load i8, ptr %i.nn, align 1
  %.narrow286.1 = add i8 %i.no, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.np, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.1
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.1
  %i.nt = load i8, ptr %i.ns, align 1
  %.narrow286.2 = add i8 %i.nt, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.nu, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.2
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.2
  %i.ny = load i8, ptr %i.nx, align 1
  %.narrow286.3 = add i8 %i.ny, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.nz, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !211

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.oa = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv426
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %i.de, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = zext i8 %i.oe to i32                    ; 3 uses
  %i.og = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv426
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = zext i8 %i.oh to i32                    ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr %i.dj, i64 %i.oc
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = zext i8 %i.ok to i32                    ; 2 uses
  %i.om = mul nuw nsw i32 %i.ol, 3
  %i.on = add nuw nsw i32 %i.oi, %i.of
  %i.oo = sub nsw i32 %i.om, %i.on                ; 2 uses
  %i.op = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.of, i32 range(i32 0, 256) %i.oi) ; 2 uses
  %i.oq = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.of, i32 range(i32 0, 256) %i.oi) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.oq, %i.oo
  %i.or = select i1 %.not.i303, i32 %i.ol, i32 %i.op
  %.not20.i = icmp sgt i32 %i.oo, %i.op
  %i.os = select i1 %.not20.i, i32 %i.or, i32 %i.oq
  %.tr = trunc nuw i32 %i.os to i8
  %.narrow284 = add i8 %i.ob, %.tr
  %i.ot = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.ot, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !212

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.ou = add i64 %index705, %i.ax                ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.do, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.ov, align 1
  %wide.load707 = load <16 x i8>, ptr %i.ow, align 1
  %i.ox = getelementptr inbounds i8, ptr %i.de, i64 %index705 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.ox, align 1
  %wide.load709 = load <16 x i8>, ptr %i.oy, align 1
  %i.oz = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.pa = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.pb = add <16 x i8> %i.oz, %wide.load706
  %i.pc = add <16 x i8> %i.pa, %wide.load707
  %i.pd = getelementptr inbounds i8, ptr %i.de, i64 %i.ou ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <16 x i8> %i.pb, ptr %i.pd, align 1
  store <16 x i8> %i.pc, ptr %i.pe, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pf = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pf, label %middle.block711, label %vector.body704, !llvm.loop !213

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !201

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pg = add i64 %index722, %i.ax                ; 2 uses
end_hunk_3
