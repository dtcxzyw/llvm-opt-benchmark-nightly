Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  br i1 %.not.i.i.6.i, label %bb.bm, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %i.f, align 8
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = load i32, ptr %i.i, align 4
  %i.dy = tail call noundef i32 %i.dv(ptr noundef %i.dw, ptr noundef nonnull %i.h, i32 noundef %i.dx), !inline_history !82 ; 2 uses
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
  %i.eu = tail call noundef i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %i.h, i32 noundef %i.et), !inline_history !82
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
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.h, i32 noundef %i.fk), !inline_history !82 ; 2 uses
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
  %i.gj = load ptr, ptr %i.gi, align 8            ; 12 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 5 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 47 uses
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
  %i.gv = mul nuw nsw i32 %i.gr, %i.go
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.gw) #50 ; 5 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gz = icmp sgt i32 %i.go, 0
  br i1 %i.gz, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.ha = shl nsw i32 %i.gl, 3
  %i.hb = or disjoint i32 %i.ha, %4               ; 2 uses
  %.11167198.i.i.i = add nsw i32 %i.gm, -1        ; 31 uses
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
  %i.hc = zext nneg i32 %i.gm to i64              ; 22 uses
  %min.iters.check261 = icmp ult i32 %i.gm, 8
  %n.vec263 = and i64 %i.hc, 2147483640           ; 5 uses
  %i.hd = trunc nuw nsw i64 %n.vec263 to i32
  %i.he = sub i32 %.11167198.i.i.i, %i.hd
  %i.hf = shl nuw nsw i64 %n.vec263, 1
  %i.hg = shl nuw nsw i64 %n.vec263, 2
  %cmp.n278 = icmp eq i64 %n.vec263, %i.hc
  %min.iters.check208 = icmp ult i32 %i.gm, 9
  %min.iters.check210 = icmp ult i32 %i.gm, 17
  %i.hh = and i64 %i.hc, 15                       ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = select i1 %i.hi, i64 16, i64 %i.hh      ; 2 uses
  %n.vec212 = sub nsw i64 %i.hc, %i.hj            ; 5 uses
  %i.hk = trunc i64 %n.vec212 to i32
  %i.hl = sub i32 %.11167198.i.i.i, %i.hk
  %i.hm = shl nsw i64 %n.vec212, 2
  %min.epilog.iters.check241 = icmp samesign ult i64 %i.hj, 9
  %i.hn = and i64 %i.hc, 7                        ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = select i1 %i.ho, i64 8, i64 %i.hn
  %n.vec243 = sub nsw i64 %i.hc, %i.hp            ; 4 uses
  %i.hq = trunc i64 %n.vec243 to i32
  %i.hr = sub i32 %.11167198.i.i.i, %i.hq
  %i.hs = shl nsw i64 %n.vec243, 2
  %min.iters.check186 = icmp ult i32 %i.gm, 8
  %n.vec188 = and i64 %i.hc, 2147483640           ; 5 uses
  %i.ht = trunc nuw nsw i64 %n.vec188 to i32
  %i.hu = sub i32 %.11167198.i.i.i, %i.ht
  %i.hv = shl nuw nsw i64 %n.vec188, 1
  %i.hw = mul nuw nsw i64 %n.vec188, 3
  %cmp.n203 = icmp eq i64 %n.vec188, %i.hc
  %min.iters.check131 = icmp ult i32 %i.gm, 8
  %min.iters.check133 = icmp ult i32 %i.gm, 16
  %i.hx = and i64 %i.hc, 8
  %n.vec135 = and i64 %i.hc, 2147483632           ; 6 uses
  %i.hy = trunc nuw nsw i64 %n.vec135 to i32
  %i.hz = sub i32 %.11167198.i.i.i, %i.hy
  %i.ia = mul nuw nsw i64 %n.vec135, 3
  %cmp.n157 = icmp eq i64 %n.vec135, %i.hc
  %min.epilog.iters.check165.not.not = icmp eq i64 %i.hx, 0
  %n.vec167 = and i64 %i.hc, 2147483640           ; 5 uses
  %i.ib = trunc nuw nsw i64 %n.vec167 to i32
  %i.ic = sub i32 %.11167198.i.i.i, %i.ib
  %i.id = mul nuw nsw i64 %n.vec167, 3
  %cmp.n181 = icmp eq i64 %n.vec167, %i.hc
  %xtraiter332 = and i32 %i.gm, 1
  %lcmp.mod333.not = icmp eq i32 %xtraiter332, 0
  %.6162.i.i.i.prol = add nsw i32 %i.gm, -2
  %7 = icmp eq i32 %.11167198.i.i.i, 0
  %xtraiter335 = and i32 %i.gm, 1
  %lcmp.mod336.not = icmp eq i32 %xtraiter335, 0
  %.5161.i.i.i.prol = add nsw i32 %i.gm, -2
  %8 = icmp eq i32 %.11167198.i.i.i, 0
  %xtraiter338 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod339.not = icmp eq i32 %xtraiter338, 0
  %i.ie = icmp ult i32 %.11167198.i.i.i, 3
  %min.iters.check78 = icmp ult i32 %i.gm, 9
  %min.iters.check80 = icmp ult i32 %i.gm, 17
  %i.if = and i64 %i.hc, 15                       ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  %i.ih = select i1 %i.ig, i64 16, i64 %i.if      ; 2 uses
  %n.vec82 = sub nsw i64 %i.hc, %i.ih             ; 5 uses
  %i.ii = trunc i64 %n.vec82 to i32
  %i.ij = sub i32 %.11167198.i.i.i, %i.ii
  %i.ik = shl nsw i64 %n.vec82, 1
  %min.epilog.iters.check111 = icmp samesign ult i64 %i.ih, 9
  %i.il = and i64 %i.hc, 7                        ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = select i1 %i.im, i64 8, i64 %i.il
  %n.vec113 = sub nsw i64 %i.hc, %i.in            ; 4 uses
  %i.io = trunc i64 %n.vec113 to i32
  %i.ip = sub i32 %.11167198.i.i.i, %i.io
  %i.iq = shl nsw i64 %n.vec113, 1
  %xtraiter341 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %i.ir = icmp ult i32 %.11167198.i.i.i, 3
  %xtraiter344 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod345.not = icmp eq i32 %xtraiter344, 0
  %i.is = icmp ult i32 %.11167198.i.i.i, 3
  %min.iters.check47 = icmp ult i32 %i.gm, 4
  %min.iters.check48 = icmp ult i32 %i.gm, 16
  %i.it = and i64 %i.hc, 12
  %n.vec50 = and i64 %i.hc, 2147483632            ; 6 uses
  %i.iu = trunc nuw nsw i64 %n.vec50 to i32
  %i.iv = sub i32 %.11167198.i.i.i, %i.iu
  %i.iw = shl nuw nsw i64 %n.vec50, 1
  %cmp.n62 = icmp eq i64 %n.vec50, %i.hc
  %min.epilog.iters.check = icmp eq i64 %i.it, 0
  %n.vec66 = and i64 %i.hc, 2147483644            ; 5 uses
  %i.ix = trunc nuw nsw i64 %n.vec66 to i32
  %i.iy = sub i32 %.11167198.i.i.i, %i.ix
  %i.iz = shl nuw nsw i64 %n.vec66, 1
  %cmp.n73 = icmp eq i64 %n.vec66, %i.hc
  %xtraiter347 = and i32 %i.gm, 1
  %lcmp.mod348.not = icmp eq i32 %xtraiter347, 0
  %.11167.i.i.i.prol = add nsw i32 %i.gm, -2
  %9 = icmp eq i32 %.11167198.i.i.i, 0
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i.i, %.lr.ph258.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph258.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.jb = mul i32 %i.gm, %i.ja                    ; 2 uses
  %i.jc = mul i32 %i.jb, %i.gl
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.jd ; 126 uses
  %i.jf = mul i32 %i.jb, %4
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.jg ; 50 uses
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
  br i1 %lcmp.mod348.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.ji = load i8, ptr %i.je, align 1
  store i8 %i.ji, ptr %i.jh, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.jn, ptr %i.jo, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.11167201.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.11167.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.11200.i.i.i.unr = phi ptr [ %i.jh, %.lr.ph.i.i.i.preheader ], [ %i.jq, %.lr.ph.i.i.i.prol ]
  %.11153199.i.i.i.unr = phi ptr [ %i.je, %.lr.ph.i.i.i.preheader ], [ %i.jp, %.lr.ph.i.i.i.prol ]
  br i1 %9, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader193.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader

.lr.ph206.i.i.i.preheader:                        ; preds = %.preheader193.i.i.i
  br i1 %min.iters.check261, label %.lr.ph206.i.i.i.preheader293, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph206.i.i.i.preheader
  %i.jr = getelementptr i8, ptr %i.jh, i64 %i.hf
  %i.js = getelementptr i8, ptr %i.je, i64 %i.hg
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next276, %vector.body264 ] ; 3 uses
  %i.jt = shl i64 %index265, 1
  %next.gep266 = getelementptr i8, ptr %i.jh, i64 %i.jt
  %i.ju = shl i64 %index265, 2                    ; 8 uses
  %next.gep267 = getelementptr i8, ptr %i.je, i64 %i.ju ; 4 uses
  %i.jv = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep268 = getelementptr i8, ptr %i.jv, i64 4
  %i.jw = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep269 = getelementptr i8, ptr %i.jw, i64 8
  %i.jx = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep270 = getelementptr i8, ptr %i.jx, i64 12
  %i.jy = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep271 = getelementptr i8, ptr %i.jy, i64 16
  %i.jz = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep272 = getelementptr i8, ptr %i.jz, i64 20
  %i.ka = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep273 = getelementptr i8, ptr %i.ka, i64 24
  %i.kb = getelementptr i8, ptr %i.je, i64 %i.ju  ; 4 uses
  %next.gep274 = getelementptr i8, ptr %i.kb, i64 28
  %i.kc = load i8, ptr %next.gep267, align 1
  %i.kd = load i8, ptr %next.gep268, align 1
  %i.ke = load i8, ptr %next.gep269, align 1
  %i.kf = load i8, ptr %next.gep270, align 1
  %i.kg = load i8, ptr %next.gep271, align 1
  %i.kh = load i8, ptr %next.gep272, align 1
  %i.ki = load i8, ptr %next.gep273, align 1
  %i.kj = load i8, ptr %next.gep274, align 1
  %i.kk = insertelement <8 x i8> poison, i8 %i.kc, i64 0
  %i.kl = insertelement <8 x i8> %i.kk, i8 %i.kd, i64 1
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 2
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 3
  %i.ko = insertelement <8 x i8> %i.kn, i8 %i.kg, i64 4
  %i.kp = insertelement <8 x i8> %i.ko, i8 %i.kh, i64 5
  %i.kq = insertelement <8 x i8> %i.kp, i8 %i.ki, i64 6
  %i.kr = insertelement <8 x i8> %i.kq, i8 %i.kj, i64 7
  %i.ks = zext <8 x i8> %i.kr to <8 x i16>
  %i.kt = getelementptr inbounds nuw i8, ptr %next.gep267, i64 1
  %i.ku = getelementptr i8, ptr %i.jv, i64 5
  %i.kv = getelementptr i8, ptr %i.jw, i64 9
  %i.kw = getelementptr i8, ptr %i.jx, i64 13
  %i.kx = getelementptr i8, ptr %i.jy, i64 17
  %i.ky = getelementptr i8, ptr %i.jz, i64 21
  %i.kz = getelementptr i8, ptr %i.ka, i64 25
  %i.la = getelementptr i8, ptr %i.kb, i64 29
  %i.lb = load i8, ptr %i.kt, align 1
  %i.lc = load i8, ptr %i.ku, align 1
  %i.ld = load i8, ptr %i.kv, align 1
  %i.le = load i8, ptr %i.kw, align 1
  %i.lf = load i8, ptr %i.kx, align 1
  %i.lg = load i8, ptr %i.ky, align 1
  %i.lh = load i8, ptr %i.kz, align 1
  %i.li = load i8, ptr %i.la, align 1
  %i.lj = insertelement <8 x i8> poison, i8 %i.lb, i64 0
  %i.lk = insertelement <8 x i8> %i.lj, i8 %i.lc, i64 1
  %i.ll = insertelement <8 x i8> %i.lk, i8 %i.ld, i64 2
  %i.lm = insertelement <8 x i8> %i.ll, i8 %i.le, i64 3
  %i.ln = insertelement <8 x i8> %i.lm, i8 %i.lf, i64 4
  %i.lo = insertelement <8 x i8> %i.ln, i8 %i.lg, i64 5
  %i.lp = insertelement <8 x i8> %i.lo, i8 %i.lh, i64 6
  %i.lq = insertelement <8 x i8> %i.lp, i8 %i.li, i64 7
  %i.lr = zext <8 x i8> %i.lq to <8 x i16>
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep267, i64 2
  %i.lt = getelementptr i8, ptr %i.jv, i64 6
  %i.lu = getelementptr i8, ptr %i.jw, i64 10
  %i.lv = getelementptr i8, ptr %i.jx, i64 14
  %i.lw = getelementptr i8, ptr %i.jy, i64 18
  %i.lx = getelementptr i8, ptr %i.jz, i64 22
  %i.ly = getelementptr i8, ptr %i.ka, i64 26
  %i.lz = getelementptr i8, ptr %i.kb, i64 30
  %i.ma = load i8, ptr %i.ls, align 1
  %i.mb = load i8, ptr %i.lt, align 1
  %i.mc = load i8, ptr %i.lu, align 1
  %i.md = load i8, ptr %i.lv, align 1
  %i.me = load i8, ptr %i.lw, align 1
  %i.mf = load i8, ptr %i.lx, align 1
  %i.mg = load i8, ptr %i.ly, align 1
  %i.mh = load i8, ptr %i.lz, align 1
  %i.mi = insertelement <8 x i8> poison, i8 %i.ma, i64 0
  %i.mj = insertelement <8 x i8> %i.mi, i8 %i.mb, i64 1
  %i.mk = insertelement <8 x i8> %i.mj, i8 %i.mc, i64 2
  %i.ml = insertelement <8 x i8> %i.mk, i8 %i.md, i64 3
  %i.mm = insertelement <8 x i8> %i.ml, i8 %i.me, i64 4
  %i.mn = insertelement <8 x i8> %i.mm, i8 %i.mf, i64 5
  %i.mo = insertelement <8 x i8> %i.mn, i8 %i.mg, i64 6
  %i.mp = insertelement <8 x i8> %i.mo, i8 %i.mh, i64 7
  %i.mq = zext <8 x i8> %i.mp to <8 x i16>
  %i.mr = mul nuw nsw <8 x i16> %i.ks, splat (i16 77)
  %i.ms = mul nuw <8 x i16> %i.lr, splat (i16 150)
  %i.mt = add nuw <8 x i16> %i.ms, %i.mr
  %i.mu = mul nuw nsw <8 x i16> %i.mq, splat (i16 29)
  %i.mv = add nuw <8 x i16> %i.mt, %i.mu
  %i.mw = lshr <8 x i16> %i.mv, splat (i16 8)
  %i.mx = trunc nuw <8 x i16> %i.mw to <8 x i8>
  %i.my = getelementptr inbounds nuw i8, ptr %next.gep267, i64 3
  %i.mz = getelementptr i8, ptr %i.jv, i64 7
  %i.na = getelementptr i8, ptr %i.jw, i64 11
  %i.nb = getelementptr i8, ptr %i.jx, i64 15
  %i.nc = getelementptr i8, ptr %i.jy, i64 19
  %i.nd = getelementptr i8, ptr %i.jz, i64 23
  %i.ne = getelementptr i8, ptr %i.ka, i64 27
  %i.nf = getelementptr i8, ptr %i.kb, i64 31
  %i.ng = load i8, ptr %i.my, align 1
  %i.nh = load i8, ptr %i.mz, align 1
  %i.ni = load i8, ptr %i.na, align 1
  %i.nj = load i8, ptr %i.nb, align 1
  %i.nk = load i8, ptr %i.nc, align 1
  %i.nl = load i8, ptr %i.nd, align 1
  %i.nm = load i8, ptr %i.ne, align 1
  %i.nn = load i8, ptr %i.nf, align 1
  %i.no = insertelement <8 x i8> poison, i8 %i.ng, i64 0
  %i.np = insertelement <8 x i8> %i.no, i8 %i.nh, i64 1
  %i.nq = insertelement <8 x i8> %i.np, i8 %i.ni, i64 2
  %i.nr = insertelement <8 x i8> %i.nq, i8 %i.nj, i64 3
  %i.ns = insertelement <8 x i8> %i.nr, i8 %i.nk, i64 4
  %i.nt = insertelement <8 x i8> %i.ns, i8 %i.nl, i64 5
  %i.nu = insertelement <8 x i8> %i.nt, i8 %i.nm, i64 6
  %i.nv = insertelement <8 x i8> %i.nu, i8 %i.nn, i64 7
  %interleaved.vec275 = shufflevector <8 x i8> %i.mx, <8 x i8> %i.nv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec275, ptr %next.gep266, align 1
  %index.next276 = add nuw i64 %index265, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next276, %n.vec263
  br i1 %i.nw, label %middle.block277, label %vector.body264, !llvm.loop !83

middle.block277:                                  ; preds = %vector.body264
  br i1 %cmp.n278, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader293

.lr.ph206.i.i.i.preheader293:                     ; preds = %.lr.ph206.i.i.i.preheader, %middle.block277
  %.10166205.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %.lr.ph206.i.i.i.preheader ], [ %i.he, %middle.block277 ]
  %.10204.i.i.i.ph = phi ptr [ %i.jh, %.lr.ph206.i.i.i.preheader ], [ %i.jr, %middle.block277 ]
  %.10152203.i.i.i.ph = phi ptr [ %i.je, %.lr.ph206.i.i.i.preheader ], [ %i.js, %middle.block277 ]
  br label %.lr.ph206.i.i.i

.preheader191.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check238

iter.check238:                                    ; preds = %.preheader191.i.i.i
  br i1 %min.iters.check208, label %.lr.ph211.i.i.i.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check238
  br i1 %min.iters.check210, label %vec.epilog.ph242, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check209
  %i.nx = getelementptr i8, ptr %i.jh, i64 %n.vec212
  %i.ny = getelementptr i8, ptr %i.je, i64 %i.hm
  br label %vector.body213

vector.body213:                                   ; preds = %vector.ph211, %vector.body213
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next232, %vector.body213 ] ; 3 uses
  %next.gep215 = getelementptr i8, ptr %i.jh, i64 %index214
  %i.nz = shl i64 %index214, 2                    ; 16 uses
  %next.gep216 = getelementptr i8, ptr %i.je, i64 %i.nz ; 3 uses
  %i.oa = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep218 = getelementptr i8, ptr %i.ob, i64 8
  %i.oc = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep219 = getelementptr i8, ptr %i.oc, i64 12
  %i.od = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep220 = getelementptr i8, ptr %i.od, i64 16
  %i.oe = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.oe, i64 20
  %i.of = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep222 = getelementptr i8, ptr %i.of, i64 24
  %i.og = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep223 = getelementptr i8, ptr %i.og, i64 28
  %i.oh = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep224 = getelementptr i8, ptr %i.oh, i64 32
  %i.oi = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep225 = getelementptr i8, ptr %i.oi, i64 36
  %i.oj = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep226 = getelementptr i8, ptr %i.oj, i64 40
  %i.ok = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep227 = getelementptr i8, ptr %i.ok, i64 44
  %i.ol = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep228 = getelementptr i8, ptr %i.ol, i64 48
  %i.om = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep229 = getelementptr i8, ptr %i.om, i64 52
  %i.on = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep230 = getelementptr i8, ptr %i.on, i64 56
  %i.oo = getelementptr i8, ptr %i.je, i64 %i.nz  ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.oo, i64 60
  %i.op = load i8, ptr %next.gep216, align 1
  %i.oq = load i8, ptr %next.gep217, align 1
  %i.or = load i8, ptr %next.gep218, align 1
  %i.os = load i8, ptr %next.gep219, align 1
  %i.ot = load i8, ptr %next.gep220, align 1
  %i.ou = load i8, ptr %next.gep221, align 1
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.aeq = getelementptr i8, ptr %i.aaw, i64 23
  %i.aer = getelementptr i8, ptr %i.aax, i64 26
  %i.aes = getelementptr i8, ptr %i.aay, i64 29
  %i.aet = getelementptr i8, ptr %i.aaz, i64 32
  %i.aeu = getelementptr i8, ptr %i.aba, i64 35
  %i.aev = getelementptr i8, ptr %i.abb, i64 38
  %i.aew = getelementptr i8, ptr %i.abc, i64 41
  %i.aex = getelementptr i8, ptr %i.abd, i64 44
  %i.aey = getelementptr i8, ptr %i.abe, i64 47
  %i.aez = load i8, ptr %i.aej, align 1
  %i.afa = load i8, ptr %i.aek, align 1
  %i.afb = load i8, ptr %i.ael, align 1
  %i.afc = load i8, ptr %i.aem, align 1
  %i.afd = load i8, ptr %i.aen, align 1
  %i.afe = load i8, ptr %i.aeo, align 1
  %i.aff = load i8, ptr %i.aep, align 1
  %i.afg = load i8, ptr %i.aeq, align 1
  %i.afh = load i8, ptr %i.aer, align 1
  %i.afi = load i8, ptr %i.aes, align 1
  %i.afj = load i8, ptr %i.aet, align 1
  %i.afk = load i8, ptr %i.aeu, align 1
  %i.afl = load i8, ptr %i.aev, align 1
  %i.afm = load i8, ptr %i.aew, align 1
  %i.afn = load i8, ptr %i.aex, align 1
  %i.afo = load i8, ptr %i.aey, align 1
  %i.afp = insertelement <16 x i8> poison, i8 %i.aez, i64 0
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 1
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 2
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 3
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 4
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 5
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 6
  %i.afw = insertelement <16 x i8> %i.afv, i8 %i.afg, i64 7
  %i.afx = insertelement <16 x i8> %i.afw, i8 %i.afh, i64 8
  %i.afy = insertelement <16 x i8> %i.afx, i8 %i.afi, i64 9
  %i.afz = insertelement <16 x i8> %i.afy, i8 %i.afj, i64 10
  %i.aga = insertelement <16 x i8> %i.afz, i8 %i.afk, i64 11
  %i.agb = insertelement <16 x i8> %i.aga, i8 %i.afl, i64 12
  %i.agc = insertelement <16 x i8> %i.agb, i8 %i.afm, i64 13
  %i.agd = insertelement <16 x i8> %i.agc, i8 %i.afn, i64 14
  %i.age = insertelement <16 x i8> %i.agd, i8 %i.afo, i64 15
  %i.agf = zext <16 x i8> %i.age to <16 x i16>
  %i.agg = mul nuw nsw <16 x i16> %i.acl, splat (i16 77)
  %i.agh = mul nuw <16 x i16> %i.aei, splat (i16 150)
  %i.agi = add nuw <16 x i16> %i.agh, %i.agg
  %i.agj = mul nuw nsw <16 x i16> %i.agf, splat (i16 29)
  %i.agk = add nuw <16 x i16> %i.agi, %i.agj
  %i.agl = lshr <16 x i16> %i.agk, splat (i16 8)
  %i.agm = trunc nuw <16 x i16> %i.agl to <16 x i8>
  store <16 x i8> %i.agm, ptr %next.gep138, align 1
  %index.next155 = add nuw i64 %index137, 16      ; 2 uses
  %i.agn = icmp eq i64 %index.next155, %n.vec135
  br i1 %i.agn, label %middle.block156, label %vector.body136, !llvm.loop !87

middle.block156:                                  ; preds = %vector.body136
  br i1 %cmp.n157, label %.loopexit.i.i.i, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block156
  br i1 %min.epilog.iters.check165.not.not, label %.lr.ph221.i.i.i.preheader, label %vec.epilog.ph166, !prof !130

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check164
  %vec.epilog.resume.val158 = phi i64 [ %n.vec135, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check132 ]
  %i.ago = getelementptr i8, ptr %i.jh, i64 %n.vec167
  %i.agp = getelementptr i8, ptr %i.je, i64 %i.id
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph166
  %index169 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph166 ], [ %index.next179, %vec.epilog.vector.body168 ] ; 3 uses
  %next.gep170 = getelementptr i8, ptr %i.jh, i64 %index169
  %i.agq = mul i64 %index169, 3                   ; 8 uses
  %next.gep171 = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %i.agr = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep172 = getelementptr i8, ptr %i.agr, i64 3
  %i.ags = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep173 = getelementptr i8, ptr %i.ags, i64 6
  %i.agt = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.agt, i64 9
  %i.agu = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep175 = getelementptr i8, ptr %i.agu, i64 12
  %i.agv = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep176 = getelementptr i8, ptr %i.agv, i64 15
  %i.agw = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep177 = getelementptr i8, ptr %i.agw, i64 18
  %i.agx = getelementptr i8, ptr %i.je, i64 %i.agq ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.agx, i64 21
  %i.agy = load i8, ptr %next.gep171, align 1
  %i.agz = load i8, ptr %next.gep172, align 1
  %i.aha = load i8, ptr %next.gep173, align 1
  %i.ahb = load i8, ptr %next.gep174, align 1
  %i.ahc = load i8, ptr %next.gep175, align 1
  %i.ahd = load i8, ptr %next.gep176, align 1
  %i.ahe = load i8, ptr %next.gep177, align 1
  %i.ahf = load i8, ptr %next.gep178, align 1
  %i.ahg = insertelement <8 x i8> poison, i8 %i.agy, i64 0
  %i.ahh = insertelement <8 x i8> %i.ahg, i8 %i.agz, i64 1
  %i.ahi = insertelement <8 x i8> %i.ahh, i8 %i.aha, i64 2
  %i.ahj = insertelement <8 x i8> %i.ahi, i8 %i.ahb, i64 3
  %i.ahk = insertelement <8 x i8> %i.ahj, i8 %i.ahc, i64 4
  %i.ahl = insertelement <8 x i8> %i.ahk, i8 %i.ahd, i64 5
  %i.ahm = insertelement <8 x i8> %i.ahl, i8 %i.ahe, i64 6
  %i.ahn = insertelement <8 x i8> %i.ahm, i8 %i.ahf, i64 7
  %i.aho = zext <8 x i8> %i.ahn to <8 x i16>
  %i.ahp = getelementptr inbounds nuw i8, ptr %next.gep171, i64 1
  %i.ahq = getelementptr i8, ptr %i.agr, i64 4
  %i.ahr = getelementptr i8, ptr %i.ags, i64 7
  %i.ahs = getelementptr i8, ptr %i.agt, i64 10
  %i.aht = getelementptr i8, ptr %i.agu, i64 13
  %i.ahu = getelementptr i8, ptr %i.agv, i64 16
  %i.ahv = getelementptr i8, ptr %i.agw, i64 19
  %i.ahw = getelementptr i8, ptr %i.agx, i64 22
  %i.ahx = load i8, ptr %i.ahp, align 1
  %i.ahy = load i8, ptr %i.ahq, align 1
  %i.ahz = load i8, ptr %i.ahr, align 1
  %i.aia = load i8, ptr %i.ahs, align 1
  %i.aib = load i8, ptr %i.aht, align 1
  %i.aic = load i8, ptr %i.ahu, align 1
  %i.aid = load i8, ptr %i.ahv, align 1
  %i.aie = load i8, ptr %i.ahw, align 1
  %i.aif = insertelement <8 x i8> poison, i8 %i.ahx, i64 0
  %i.aig = insertelement <8 x i8> %i.aif, i8 %i.ahy, i64 1
  %i.aih = insertelement <8 x i8> %i.aig, i8 %i.ahz, i64 2
  %i.aii = insertelement <8 x i8> %i.aih, i8 %i.aia, i64 3
  %i.aij = insertelement <8 x i8> %i.aii, i8 %i.aib, i64 4
  %i.aik = insertelement <8 x i8> %i.aij, i8 %i.aic, i64 5
  %i.ail = insertelement <8 x i8> %i.aik, i8 %i.aid, i64 6
  %i.aim = insertelement <8 x i8> %i.ail, i8 %i.aie, i64 7
  %i.ain = zext <8 x i8> %i.aim to <8 x i16>
  %i.aio = getelementptr inbounds nuw i8, ptr %next.gep171, i64 2
  %i.aip = getelementptr i8, ptr %i.agr, i64 5
  %i.aiq = getelementptr i8, ptr %i.ags, i64 8
  %i.air = getelementptr i8, ptr %i.agt, i64 11
  %i.ais = getelementptr i8, ptr %i.agu, i64 14
  %i.ait = getelementptr i8, ptr %i.agv, i64 17
  %i.aiu = getelementptr i8, ptr %i.agw, i64 20
  %i.aiv = getelementptr i8, ptr %i.agx, i64 23
  %i.aiw = load i8, ptr %i.aio, align 1
  %i.aix = load i8, ptr %i.aip, align 1
  %i.aiy = load i8, ptr %i.aiq, align 1
  %i.aiz = load i8, ptr %i.air, align 1
  %i.aja = load i8, ptr %i.ais, align 1
  %i.ajb = load i8, ptr %i.ait, align 1
  %i.ajc = load i8, ptr %i.aiu, align 1
  %i.ajd = load i8, ptr %i.aiv, align 1
  %i.aje = insertelement <8 x i8> poison, i8 %i.aiw, i64 0
  %i.ajf = insertelement <8 x i8> %i.aje, i8 %i.aix, i64 1
  %i.ajg = insertelement <8 x i8> %i.ajf, i8 %i.aiy, i64 2
  %i.ajh = insertelement <8 x i8> %i.ajg, i8 %i.aiz, i64 3
  %i.aji = insertelement <8 x i8> %i.ajh, i8 %i.aja, i64 4
  %i.ajj = insertelement <8 x i8> %i.aji, i8 %i.ajb, i64 5
  %i.ajk = insertelement <8 x i8> %i.ajj, i8 %i.ajc, i64 6
  %i.ajl = insertelement <8 x i8> %i.ajk, i8 %i.ajd, i64 7
  %i.ajm = zext <8 x i8> %i.ajl to <8 x i16>
  %i.ajn = mul nuw nsw <8 x i16> %i.aho, splat (i16 77)
  %i.ajo = mul nuw <8 x i16> %i.ain, splat (i16 150)
  %i.ajp = add nuw <8 x i16> %i.ajo, %i.ajn
  %i.ajq = mul nuw nsw <8 x i16> %i.ajm, splat (i16 29)
  %i.ajr = add nuw <8 x i16> %i.ajp, %i.ajq
  %i.ajs = lshr <8 x i16> %i.ajr, splat (i16 8)
  %i.ajt = trunc nuw <8 x i16> %i.ajs to <8 x i8>
  store <8 x i8> %i.ajt, ptr %next.gep170, align 1
  %index.next179 = add nuw i64 %index169, 8       ; 2 uses
  %i.aju = icmp eq i64 %index.next179, %n.vec167
  br i1 %i.aju, label %vec.epilog.middle.block180, label %vec.epilog.vector.body168, !llvm.loop !88

vec.epilog.middle.block180:                       ; preds = %vec.epilog.vector.body168
  br i1 %cmp.n181, label %.loopexit.i.i.i, label %.lr.ph221.i.i.i.preheader

.lr.ph221.i.i.i.preheader:                        ; preds = %iter.check162, %vec.epilog.iter.check164, %vec.epilog.middle.block180
  %.7163220.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %iter.check162 ], [ %i.hz, %vec.epilog.iter.check164 ], [ %i.ic, %vec.epilog.middle.block180 ]
  %.7219.i.i.i.ph = phi ptr [ %i.jh, %iter.check162 ], [ %i.aan, %vec.epilog.iter.check164 ], [ %i.ago, %vec.epilog.middle.block180 ]
  %.7149218.i.i.i.ph = phi ptr [ %i.je, %iter.check162 ], [ %i.aao, %vec.epilog.iter.check164 ], [ %i.agp, %vec.epilog.middle.block180 ]
  br label %.lr.ph221.i.i.i

.preheader185.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i.preheader

.lr.ph226.i.i.i.preheader:                        ; preds = %.preheader185.i.i.i
  br i1 %lcmp.mod333.not, label %.lr.ph226.i.i.i.prol.loopexit, label %.lr.ph226.i.i.i.prol

.lr.ph226.i.i.i.prol:                             ; preds = %.lr.ph226.i.i.i.preheader
  %i.ajv = load i8, ptr %i.je, align 1
  store i8 %i.ajv, ptr %i.jh, align 1
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ajx = load i8, ptr %i.ajw, align 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.ajx, ptr %i.ajy, align 1
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.aka = load i8, ptr %i.ajz, align 1
  %i.akb = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.aka, ptr %i.akb, align 1
  %i.akc = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  store i8 -1, ptr %i.akc, align 1
  %i.akd = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %i.ake = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  br label %.lr.ph226.i.i.i.prol.loopexit

.lr.ph226.i.i.i.prol.loopexit:                    ; preds = %.lr.ph226.i.i.i.prol, %.lr.ph226.i.i.i.preheader
  %.6162225.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph226.i.i.i.preheader ], [ %.6162.i.i.i.prol, %.lr.ph226.i.i.i.prol ]
  %.6224.i.i.i.unr = phi ptr [ %i.jh, %.lr.ph226.i.i.i.preheader ], [ %i.ake, %.lr.ph226.i.i.i.prol ]
  %.6148223.i.i.i.unr = phi ptr [ %i.je, %.lr.ph226.i.i.i.preheader ], [ %i.akd, %.lr.ph226.i.i.i.prol ]
  br i1 %7, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i

.preheader183.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i.preheader

.lr.ph231.i.i.i.preheader:                        ; preds = %.preheader183.i.i.i
  br i1 %lcmp.mod336.not, label %.lr.ph231.i.i.i.prol.loopexit, label %.lr.ph231.i.i.i.prol

.lr.ph231.i.i.i.prol:                             ; preds = %.lr.ph231.i.i.i.preheader
  %i.akf = load i8, ptr %i.je, align 1            ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.akf, ptr %i.akg, align 1
  %i.akh = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.akf, ptr %i.akh, align 1
  store i8 %i.akf, ptr %i.jh, align 1
  %i.aki = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.akj = load i8, ptr %i.aki, align 1
  %i.akk = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  store i8 %i.akj, ptr %i.akk, align 1
  %i.akl = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.akm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  br label %.lr.ph231.i.i.i.prol.loopexit

.lr.ph231.i.i.i.prol.loopexit:                    ; preds = %.lr.ph231.i.i.i.prol, %.lr.ph231.i.i.i.preheader
  %.5161230.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph231.i.i.i.preheader ], [ %.5161.i.i.i.prol, %.lr.ph231.i.i.i.prol ]
  %.5229.i.i.i.unr = phi ptr [ %i.jh, %.lr.ph231.i.i.i.preheader ], [ %i.akm, %.lr.ph231.i.i.i.prol ]
  %.5147228.i.i.i.unr = phi ptr [ %i.je, %.lr.ph231.i.i.i.preheader ], [ %i.akl, %.lr.ph231.i.i.i.prol ]
  br i1 %8, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i

.preheader181.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i.preheader

.lr.ph236.i.i.i.preheader:                        ; preds = %.preheader181.i.i.i
  br i1 %lcmp.mod339.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol

.lr.ph236.i.i.i.prol:                             ; preds = %.lr.ph236.i.i.i.preheader, %.lr.ph236.i.i.i.prol
  %.4160235.i.i.i.prol = phi i32 [ %.4160.i.i.i.prol, %.lr.ph236.i.i.i.prol ], [ %.11167198.i.i.i, %.lr.ph236.i.i.i.preheader ]
  %.4234.i.i.i.prol = phi ptr [ %i.akr, %.lr.ph236.i.i.i.prol ], [ %i.jh, %.lr.ph236.i.i.i.preheader ] ; 4 uses
  %.4146233.i.i.i.prol = phi ptr [ %i.akq, %.lr.ph236.i.i.i.prol ], [ %i.je, %.lr.ph236.i.i.i.preheader ] ; 2 uses
  %prol.iter340 = phi i32 [ %prol.iter340.next, %.lr.ph236.i.i.i.prol ], [ 0, %.lr.ph236.i.i.i.preheader ]
  %i.akn = load i8, ptr %.4146233.i.i.i.prol, align 1 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 2
  store i8 %i.akn, ptr %i.ako, align 1
  %i.akp = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 1
  store i8 %i.akn, ptr %i.akp, align 1
  store i8 %i.akn, ptr %.4234.i.i.i.prol, align 1
  %i.akq = getelementptr inbounds nuw i8, ptr %.4146233.i.i.i.prol, i64 2 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 3 ; 2 uses
  %.4160.i.i.i.prol = add i32 %.4160235.i.i.i.prol, -1 ; 2 uses
  %prol.iter340.next = add i32 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i32 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol, !llvm.loop !89

.lr.ph236.i.i.i.prol.loopexit:                    ; preds = %.lr.ph236.i.i.i.prol, %.lr.ph236.i.i.i.preheader
  %.4160235.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph236.i.i.i.preheader ], [ %.4160.i.i.i.prol, %.lr.ph236.i.i.i.prol ]
  %.4234.i.i.i.unr = phi ptr [ %i.jh, %.lr.ph236.i.i.i.preheader ], [ %i.akr, %.lr.ph236.i.i.i.prol ]
  %.4146233.i.i.i.unr = phi ptr [ %i.je, %.lr.ph236.i.i.i.preheader ], [ %i.akq, %.lr.ph236.i.i.i.prol ]
  br i1 %i.ie, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i

.preheader179.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check108

iter.check108:                                    ; preds = %.preheader179.i.i.i
  br i1 %min.iters.check78, label %.lr.ph241.i.i.i.preheader, label %vector.main.loop.iter.check79

vector.main.loop.iter.check79:                    ; preds = %iter.check108
  br i1 %min.iters.check80, label %vec.epilog.ph112, label %vector.ph81

vector.ph81:                                      ; preds = %vector.main.loop.iter.check79
  %i.aks = getelementptr i8, ptr %i.jh, i64 %n.vec82
  %i.akt = getelementptr i8, ptr %i.je, i64 %i.ik
  br label %vector.body83

vector.body83:                                    ; preds = %vector.ph81, %vector.body83
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next102, %vector.body83 ] ; 3 uses
  %next.gep85 = getelementptr i8, ptr %i.jh, i64 %index84
  %i.aku = shl i64 %index84, 1                    ; 16 uses
  %next.gep86 = getelementptr i8, ptr %i.je, i64 %i.aku
  %i.akv = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep87 = getelementptr i8, ptr %i.akv, i64 2
  %i.akw = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep88 = getelementptr i8, ptr %i.akw, i64 4
  %i.akx = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep89 = getelementptr i8, ptr %i.akx, i64 6
  %i.aky = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep90 = getelementptr i8, ptr %i.aky, i64 8
  %i.akz = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep91 = getelementptr i8, ptr %i.akz, i64 10
  %i.ala = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep92 = getelementptr i8, ptr %i.ala, i64 12
  %i.alb = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep93 = getelementptr i8, ptr %i.alb, i64 14
  %i.alc = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep94 = getelementptr i8, ptr %i.alc, i64 16
  %i.ald = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep95 = getelementptr i8, ptr %i.ald, i64 18
  %i.ale = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep96 = getelementptr i8, ptr %i.ale, i64 20
  %i.alf = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep97 = getelementptr i8, ptr %i.alf, i64 22
  %i.alg = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep98 = getelementptr i8, ptr %i.alg, i64 24
  %i.alh = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep99 = getelementptr i8, ptr %i.alh, i64 26
  %i.ali = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep100 = getelementptr i8, ptr %i.ali, i64 28
  %i.alj = getelementptr i8, ptr %i.je, i64 %i.aku
  %next.gep101 = getelementptr i8, ptr %i.alj, i64 30
  %i.alk = load i8, ptr %next.gep86, align 1
  %i.all = load i8, ptr %next.gep87, align 1
  %i.alm = load i8, ptr %next.gep88, align 1
  %i.aln = load i8, ptr %next.gep89, align 1
  %i.alo = load i8, ptr %next.gep90, align 1
  %i.alp = load i8, ptr %next.gep91, align 1
  %i.alq = load i8, ptr %next.gep92, align 1
  %i.alr = load i8, ptr %next.gep93, align 1
  %i.als = load i8, ptr %next.gep94, align 1
  %i.alt = load i8, ptr %next.gep95, align 1
  %i.alu = load i8, ptr %next.gep96, align 1
  %i.alv = load i8, ptr %next.gep97, align 1
  %i.alw = load i8, ptr %next.gep98, align 1
  %i.alx = load i8, ptr %next.gep99, align 1
  %i.aly = load i8, ptr %next.gep100, align 1
  %i.alz = load i8, ptr %next.gep101, align 1
  %i.ama = insertelement <16 x i8> poison, i8 %i.alk, i64 0
  %i.amb = insertelement <16 x i8> %i.ama, i8 %i.all, i64 1
  %i.amc = insertelement <16 x i8> %i.amb, i8 %i.alm, i64 2
  %i.amd = insertelement <16 x i8> %i.amc, i8 %i.aln, i64 3
  %i.ame = insertelement <16 x i8> %i.amd, i8 %i.alo, i64 4
  %i.amf = insertelement <16 x i8> %i.ame, i8 %i.alp, i64 5
  %i.amg = insertelement <16 x i8> %i.amf, i8 %i.alq, i64 6
  %i.amh = insertelement <16 x i8> %i.amg, i8 %i.alr, i64 7
  %i.ami = insertelement <16 x i8> %i.amh, i8 %i.als, i64 8
  %i.amj = insertelement <16 x i8> %i.ami, i8 %i.alt, i64 9
  %i.amk = insertelement <16 x i8> %i.amj, i8 %i.alu, i64 10
  %i.aml = insertelement <16 x i8> %i.amk, i8 %i.alv, i64 11
  %i.amm = insertelement <16 x i8> %i.aml, i8 %i.alw, i64 12
  %i.amn = insertelement <16 x i8> %i.amm, i8 %i.alx, i64 13
  %i.amo = insertelement <16 x i8> %i.amn, i8 %i.aly, i64 14
  %i.amp = insertelement <16 x i8> %i.amo, i8 %i.alz, i64 15
  store <16 x i8> %i.amp, ptr %next.gep85, align 1
  %index.next102 = add nuw i64 %index84, 16       ; 2 uses
  %i.amq = icmp eq i64 %index.next102, %n.vec82
  br i1 %i.amq, label %vec.epilog.iter.check110, label %vector.body83, !llvm.loop !90

vec.epilog.iter.check110:                         ; preds = %vector.body83
  br i1 %min.epilog.iters.check111, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.ph112, !prof !130

.lr.ph241.i.i.i.preheader:                        ; preds = %vec.epilog.vector.body114, %iter.check108, %vec.epilog.iter.check110
  %.3159240.i.i.i.ph = phi i32 [ %.11167198.i.i.i, %iter.check108 ], [ %i.ij, %vec.epilog.iter.check110 ], [ %i.ip, %vec.epilog.vector.body114 ]
  %.3239.i.i.i.ph = phi ptr [ %i.jh, %iter.check108 ], [ %i.aks, %vec.epilog.iter.check110 ], [ %i.amr, %vec.epilog.vector.body114 ]
  %.3145238.i.i.i.ph = phi ptr [ %i.je, %iter.check108 ], [ %i.akt, %vec.epilog.iter.check110 ], [ %i.ams, %vec.epilog.vector.body114 ]
  br label %.lr.ph241.i.i.i

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check79, %vec.epilog.iter.check110
  %vec.epilog.resume.val104 = phi i64 [ %n.vec82, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check79 ]
  %i.amr = getelementptr i8, ptr %i.jh, i64 %n.vec113
  %i.ams = getelementptr i8, ptr %i.je, i64 %i.iq
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph112
  %index115 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph112 ], [ %index.next125, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %i.jh, i64 %index115
  %i.amt = shl i64 %index115, 1                   ; 8 uses
  %next.gep117 = getelementptr i8, ptr %i.je, i64 %i.amt
  %i.amu = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep118 = getelementptr i8, ptr %i.amu, i64 2
  %i.amv = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep119 = getelementptr i8, ptr %i.amv, i64 4
  %i.amw = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep120 = getelementptr i8, ptr %i.amw, i64 6
  %i.amx = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep121 = getelementptr i8, ptr %i.amx, i64 8
  %i.amy = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep122 = getelementptr i8, ptr %i.amy, i64 10
  %i.amz = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep123 = getelementptr i8, ptr %i.amz, i64 12
  %i.ana = getelementptr i8, ptr %i.je, i64 %i.amt
  %next.gep124 = getelementptr i8, ptr %i.ana, i64 14
  %i.anb = load i8, ptr %next.gep117, align 1
  %i.anc = load i8, ptr %next.gep118, align 1
  %i.and = load i8, ptr %next.gep119, align 1
  %i.ane = load i8, ptr %next.gep120, align 1
  %i.anf = load i8, ptr %next.gep121, align 1
  %i.ang = load i8, ptr %next.gep122, align 1
  %i.anh = load i8, ptr %next.gep123, align 1
  %i.ani = load i8, ptr %next.gep124, align 1
  %i.anj = insertelement <8 x i8> poison, i8 %i.anb, i64 0
  %i.ank = insertelement <8 x i8> %i.anj, i8 %i.anc, i64 1
  %i.anl = insertelement <8 x i8> %i.ank, i8 %i.and, i64 2
  %i.anm = insertelement <8 x i8> %i.anl, i8 %i.ane, i64 3
  %i.ann = insertelement <8 x i8> %i.anm, i8 %i.anf, i64 4
  %i.ano = insertelement <8 x i8> %i.ann, i8 %i.ang, i64 5
  %i.anp = insertelement <8 x i8> %i.ano, i8 %i.anh, i64 6
  %i.anq = insertelement <8 x i8> %i.anp, i8 %i.ani, i64 7
  store <8 x i8> %i.anq, ptr %next.gep116, align 1
  %index.next125 = add nuw i64 %index115, 8       ; 2 uses
  %i.anr = icmp eq i64 %index.next125, %n.vec113
  br i1 %i.anr, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.vector.body114, !llvm.loop !91

.preheader177.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph246.i.i.i.preheader

.lr.ph246.i.i.i.preheader:                        ; preds = %.preheader177.i.i.i
  br i1 %lcmp.mod342.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol

.lr.ph246.i.i.i.prol:                             ; preds = %.lr.ph246.i.i.i.preheader, %.lr.ph246.i.i.i.prol
  %.2158245.i.i.i.prol = phi i32 [ %.2158.i.i.i.prol, %.lr.ph246.i.i.i.prol ], [ %.11167198.i.i.i, %.lr.ph246.i.i.i.preheader ]
  %.2244.i.i.i.prol = phi ptr [ %i.anx, %.lr.ph246.i.i.i.prol ], [ %i.jh, %.lr.ph246.i.i.i.preheader ] ; 5 uses
  %.2144243.i.i.i.prol = phi ptr [ %i.anw, %.lr.ph246.i.i.i.prol ], [ %i.je, %.lr.ph246.i.i.i.preheader ] ; 2 uses
  %prol.iter343 = phi i32 [ %prol.iter343.next, %.lr.ph246.i.i.i.prol ], [ 0, %.lr.ph246.i.i.i.preheader ]
  %i.ans = load i8, ptr %.2144243.i.i.i.prol, align 1 ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 2
  store i8 %i.ans, ptr %i.ant, align 1
  %i.anu = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 1
  store i8 %i.ans, ptr %i.anu, align 1
  store i8 %i.ans, ptr %.2244.i.i.i.prol, align 1
  %i.anv = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 3
  store i8 -1, ptr %i.anv, align 1
  %i.anw = getelementptr inbounds nuw i8, ptr %.2144243.i.i.i.prol, i64 1 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 4 ; 2 uses
  %.2158.i.i.i.prol = add i32 %.2158245.i.i.i.prol, -1 ; 2 uses
  %prol.iter343.next = add i32 %prol.iter343, 1   ; 2 uses
  %prol.iter343.cmp.not = icmp eq i32 %prol.iter343.next, %xtraiter341
  br i1 %prol.iter343.cmp.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol, !llvm.loop !92

.lr.ph246.i.i.i.prol.loopexit:                    ; preds = %.lr.ph246.i.i.i.prol, %.lr.ph246.i.i.i.preheader
  %.2158245.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph246.i.i.i.preheader ], [ %.2158.i.i.i.prol, %.lr.ph246.i.i.i.prol ]
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !210

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #49 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !210

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #49 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #40

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #36

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_Assimp.cpp() #42 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 40), align 8
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEED2Ev, ptr nonnull @_ZN6AssimpL17gActiveLogStreamsE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 8), align 8
  store ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1110_List_baseIPN6Assimp9LogStreamESaIS3_EED2Ev, ptr nonnull @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 16), ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 8), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 16), align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN6AssimpL16gLastErrorStringB5cxx11E, ptr nonnull @__dso_handle) #47 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #40

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind memory(none) }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #41 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { noreturn nounwind }
attributes #45 = { builtin nounwind }
attributes #46 = { builtin allocsize(0) }
attributes #47 = { nounwind }
attributes #48 = { noreturn }
attributes #49 = { nounwind willreturn memory(read) }
attributes #50 = { nounwind allocsize(0) }
attributes #51 = { nounwind allocsize(1) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{null, null}
!6 = distinct !{!6, !13}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = !{}
!20 = !{i64 8}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !"_ZNK12aiMatrix3x3tIfEmlERKS0_"}
!28 = distinct !{!28, !27, !"_ZNK12aiMatrix3x3tIfEmlERKS0_: argument 0"}
!29 = !{!28}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!32 = distinct !{!32, !31, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!35 = distinct !{!35, !34, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!36 = !{!35}
!37 = distinct !{!37, !"_ZNK12aiMatrix4x4tIfEplERKS0_"}
!38 = distinct !{!38, !37, !"_ZNK12aiMatrix4x4tIfEplERKS0_: argument 0"}
!39 = !{!38}
!40 = distinct !{ptr @assimp_stbi_load_from_file, null, null, null}
!41 = distinct !{!41, !13, !14, !15}
!42 = distinct !{!42, !13, !14, !15}
!43 = distinct !{!43, !13, !15, !14}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13, !14, !15}
!46 = distinct !{!46, !13, !15, !14}
!47 = distinct !{ptr @assimp_stbi_load_from_file_16, null, null, null}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13, !14}
!51 = distinct !{ptr @assimp_stbi_loadf_from_file, null, null, null}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13, !14, !15}
!61 = distinct !{!61, !13, !14, !15}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !13, !14}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = !{ptr @_ZN23LogToCallbackRedirectorD2Ev}
!80 = distinct !{null}
!81 = distinct !{!81, !13}
!82 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!83 = distinct !{!83, !13, !14, !15}
!84 = distinct !{!84, !13, !14, !15}
!85 = distinct !{!85, !13, !14, !15}
!86 = distinct !{!86, !13, !14, !15}
!87 = distinct !{!87, !13, !14, !15}
!88 = distinct !{!88, !13, !14, !15}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !13, !14, !15}
!91 = distinct !{!91, !13, !14, !15}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14, !15}
!96 = distinct !{!96, !13, !15, !14}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13, !15, !14}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13, !15, !14}
!104 = distinct !{!104, !13, !15, !14}
!105 = distinct !{!105, !13, !15, !14}
!106 = distinct !{!106, !13, !15, !14}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !13, !14, !15}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17}
!116 = distinct !{!116, !13, !14, !15}
!117 = distinct !{!117, !13, !15, !14}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13, !15, !14}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = !{!"branch_weights", i32 8, i32 8}
!131 = distinct !{null}
!132 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
end_hunk_2
