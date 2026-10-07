Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/storage?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@storage_compact_thread:bb.a
bb.s:                                             ; preds = %._crit_edge.i.thread, %bb.q, %bb.p, %._crit_edge.i
  %.not100.i128 = phi i1 [ true, %._crit_edge.i ], [ false, %bb.q ], [ false, %bb.p ], [ true, %._crit_edge.i.thread ]
  %i.dv = phi i32 [ 0, %._crit_edge.i ], [ %.pre, %bb.q ], [ %.pre, %bb.p ], [ 0, %._crit_edge.i.thread ]
  %.sroa.0.3 = phi i8 [ %i.bv, %._crit_edge.i ], [ %i.dq, %bb.q ], [ %i.dq, %bb.p ], [ %i.bv, %._crit_edge.i.thread ] ; 2 uses
  %i.dw = load i32, ptr %i.as, align 16, !tbaa !213 ; 2 uses
  %.not102.i = icmp eq i32 %i.dw, 0               ; 2 uses
  br i1 %.not102.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = or i8 %.sroa.0.3, 4                     ; 3 uses
  %i.dy = load i32, ptr %i.at, align 8, !tbaa !214
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ea = load i64, ptr %i.au, align 16, !tbaa !217 ; 2 uses
  %.not103.i = icmp eq i64 %i.ea, -1
  br i1 %.not103.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = load i32, ptr %i.av, align 16, !tbaa !218
  call void @extstore_evict_page(ptr noundef %0, i32 noundef %i.eb, i64 noundef %i.ea) #21
  br label %bb.ay

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.4 = phi i8 [ %.sroa.0.3, %bb.s ], [ %i.dx, %bb.u ], [ %i.dx, %bb.t ] ; 5 uses
  %i.ec = load i32, ptr %i.aw, align 8, !tbaa !213 ; 2 uses
  %i.ed = load i32, ptr %i.ax, align 4, !tbaa !215
  %i.ee = load i32, ptr %i.ay, align 16, !tbaa !214 ; 3 uses
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = icmp eq i32 %i.ec, %i.ef
  br i1 %i.eg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.au, %bb.as, %bb.ar, %bb.al, %bb.af, %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.1, i32 noundef 875, ptr noundef nonnull @__PRETTY_FUNCTION__.storage_compact_check) #22
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.eh = icmp ne i32 %i.ec, 0
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 300), align 4 ; 5 uses
  %i.ej = icmp ult i32 %i.ee, %i.ei
  %or.cond113.i = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond113.i, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ek = load i64, ptr %i.w, align 16, !tbaa !221 ; 2 uses
  %.not104.i = icmp eq i64 %i.ek, -1
  br i1 %.not104.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.av, %bb.at, %bb.an, %bb.ah, %bb.z
  %.sroa.0.8 = phi i8 [ %.sroa.0.7, %bb.av ], [ %.sroa.0.7, %bb.at ], [ %.sroa.0.6, %bb.an ], [ %.sroa.0.5, %bb.ah ], [ %.sroa.0.4, %bb.z ]
  %.lcssa136.i = phi ptr [ %i.ai, %bb.av ], [ %i.ag, %bb.at ], [ %i.ab, %bb.an ], [ %i.y, %bb.ah ], [ %3, %bb.z ]
  %.lcssa.i = phi i64 [ %i.gm, %bb.av ], [ %i.gg, %bb.at ], [ %i.fq, %bb.an ], [ %i.fd, %bb.ah ], [ %i.ek, %bb.z ]
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa136.i, i64 4
  br label %bb.aw

bb.ab:                                            ; preds = %bb.z
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.en = icmp ult i32 %i.ee, %i.em
  br i1 %i.en, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load i64, ptr %i.x, align 8, !tbaa !217 ; 2 uses
  %.not105.i = icmp eq i64 %i.eo, -1
  br i1 %.not105.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select = or i8 %i.ep, %.sroa.0.4          ; 3 uses
  %i.eq = and i8 %spec.select, 7
  %or.cond110.i = icmp eq i8 %i.eq, 0
  br i1 %or.cond110.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.aq, %bb.ak, %bb.ad
  %.lcssa137.i = phi ptr [ %3, %bb.ad ], [ %i.y, %bb.ak ], [ %i.ab, %bb.aq ]
  %.lcssa134.i = phi i8 [ %spec.select, %bb.ad ], [ %spec.select93, %bb.ak ], [ %spec.select95, %bb.aq ] ; 2 uses
  %.lcssa133.i = phi i64 [ %i.eo, %bb.ad ], [ %i.fg, %bb.ak ], [ %i.ft, %bb.aq ]
  %i.er = shl i8 %.lcssa134.i, 1
  %i.es = and i8 %i.er, 8
  %i.et = and i8 %.lcssa134.i, -9
  %i.eu = or disjoint i8 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa137.i, i64 8
  br label %bb.aw

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.0.5 = phi i8 [ %.sroa.0.4, %bb.ac ], [ %spec.select, %bb.ad ], [ %.sroa.0.4, %bb.ab ], [ %.sroa.0.4, %bb.y ] ; 5 uses
  %i.ew = load i32, ptr %i.az, align 16, !tbaa !213 ; 2 uses
  %i.ex = load i32, ptr %i.ba, align 4, !tbaa !215
  %i.ey = load i32, ptr %i.bb, align 8, !tbaa !214 ; 3 uses
  %i.ez = add i32 %i.ey, %i.ex
  %i.fa = icmp eq i32 %i.ew, %i.ez
  br i1 %i.fa, label %bb.ag, label %bb.x

bb.ag:                                            ; preds = %bb.af
  %i.fb = icmp ne i32 %i.ew, 0
  %i.fc = icmp ult i32 %i.ey, %i.ei
  %or.cond113.1.i = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond113.1.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i64, ptr %i.z, align 8, !tbaa !221 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.fd, -1
  br i1 %.not104.1.i, label %bb.ai, label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.ff = icmp ult i32 %i.ey, %i.fe
  br i1 %i.ff, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i64, ptr %i.aa, align 16, !tbaa !217 ; 2 uses
  %.not105.1.i = icmp eq i64 %i.fg, -1
  br i1 %.not105.1.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select93 = or i8 %i.fh, %.sroa.0.5        ; 3 uses
  %i.fi = and i8 %spec.select93, 7
  %or.cond110.1.i = icmp eq i8 %i.fi, 0
  br i1 %or.cond110.1.i, label %bb.al, label %bb.ae

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.sroa.0.6 = phi i8 [ %.sroa.0.5, %bb.aj ], [ %spec.select93, %bb.ak ], [ %.sroa.0.5, %bb.ai ], [ %.sroa.0.5, %bb.ag ] ; 5 uses
  %i.fj = load i32, ptr %i.bc, align 8, !tbaa !213 ; 2 uses
  %i.fk = load i32, ptr %i.bd, align 4, !tbaa !215
  %i.fl = load i32, ptr %i.be, align 16, !tbaa !214 ; 3 uses
  %i.fm = add i32 %i.fl, %i.fk
  %i.fn = icmp eq i32 %i.fj, %i.fm
  br i1 %i.fn, label %bb.am, label %bb.x

bb.am:                                            ; preds = %bb.al
  %i.fo = icmp ne i32 %i.fj, 0
  %i.fp = icmp ult i32 %i.fl, %i.ei
  %or.cond113.2.i = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond113.2.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fq = load i64, ptr %i.ac, align 16, !tbaa !221 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.fq, -1
  br i1 %.not104.2.i, label %bb.ao, label %bb.aa

bb.ao:                                            ; preds = %bb.an
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.fs = icmp ult i32 %i.fl, %i.fr
  br i1 %i.fs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load i64, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %.not105.2.i = icmp eq i64 %i.ft, -1
  br i1 %.not105.2.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select95 = or i8 %i.fu, %.sroa.0.6        ; 3 uses
  %i.fv = and i8 %spec.select95, 7
  %or.cond110.2.i = icmp eq i8 %i.fv, 0
  br i1 %or.cond110.2.i, label %bb.ar, label %bb.ae

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.sroa.0.7 = phi i8 [ %.sroa.0.6, %bb.ap ], [ %spec.select95, %bb.aq ], [ %.sroa.0.6, %bb.ao ], [ %.sroa.0.6, %bb.am ] ; 3 uses
  %i.fw = load i32, ptr %i.bf, align 16, !tbaa !213
  %i.fx = load i32, ptr %i.bg, align 4, !tbaa !215
  %i.fy = load i32, ptr %i.bh, align 8, !tbaa !214
  %i.fz = add i32 %i.fy, %i.fx
  %i.ga = icmp eq i32 %i.fw, %i.fz
  br i1 %i.ga, label %bb.as, label %bb.x

bb.as:                                            ; preds = %bb.ar
  %i.gb = load i32, ptr %i.t, align 4, !tbaa !215
  %i.gc = load i32, ptr %i.ap, align 16, !tbaa !214 ; 2 uses
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = icmp eq i32 %i.dv, %i.gd
  br i1 %i.ge, label %bb.at, label %bb.x

bb.at:                                            ; preds = %bb.as
  %i.gf = icmp uge i32 %i.gc, %i.ei
  %or.cond113.4.not179.i = select i1 %.not100.i128, i1 true, i1 %i.gf
  %i.gg = load i64, ptr %i.ah, align 16           ; 2 uses
  %.not104.4.i = icmp eq i64 %i.gg, -1
  %or.cond.i = select i1 %or.cond113.4.not179.i, i1 true, i1 %.not104.4.i
  br i1 %or.cond.i, label %bb.au, label %bb.aa

bb.au:                                            ; preds = %bb.at
  %i.gh = load i32, ptr %i.u, align 4, !tbaa !215
  %i.gi = load i32, ptr %i.at, align 8, !tbaa !214 ; 2 uses
  %i.gj = add i32 %i.gi, %i.gh
  %i.gk = icmp eq i32 %i.dw, %i.gj
  br i1 %i.gk, label %bb.av, label %bb.x

bb.av:                                            ; preds = %bb.au
  %i.gl = icmp uge i32 %i.gi, %i.ei
  %or.cond113.5.not181.i = select i1 %.not102.i, i1 true, i1 %i.gl
  %i.gm = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not104.5.i = icmp eq i64 %i.gm, -1
  %or.cond177.i = select i1 %or.cond113.5.not181.i, i1 true, i1 %.not104.5.i
  br i1 %or.cond177.i, label %bb.ay, label %bb.aa

bb.aw:                                            ; preds = %bb.ae, %bb.aa
  %.385 = phi i64 [ %.lcssa.i, %bb.aa ], [ %.lcssa133.i, %bb.ae ] ; 5 uses
  %.377.in = phi ptr [ %i.el, %bb.aa ], [ %i.ev, %bb.ae ]
  %.sroa.0.12 = phi i8 [ %.sroa.0.8, %bb.aa ], [ %i.eu, %bb.ae ] ; 3 uses
  %.377 = load i32, ptr %.377.in, align 4, !tbaa !18 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gn = load i16, ptr %i.al, align 4, !tbaa !116
  %i.go = and i16 %i.gn, 2
  %.not52 = icmp eq i16 %i.go, 0
  br i1 %.not52, label %.lr.ph, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 12, ptr noundef null, i32 noundef %.377, i64 noundef %.385) #21 ; 0 uses
  br label %.lr.ph

bb.ay:                                            ; preds = %bb.av, %bb.v, %bb.r, %.loopexit
  %.sroa.0.12.ph = phi i8 [ %i.dq, %bb.r ], [ %i.dx, %bb.v ], [ %.sroa.0.7, %bb.av ], [ %.sroa.0.0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gq = call i32 @pthread_cond_wait(ptr noundef nonnull @storage_compact_cond, ptr noundef nonnull @storage_compact_plock) #21 ; 0 uses
  br label %.loopexit.backedge

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %i.gr = trunc i64 %.385 to i32
  %i.gs = trunc i32 %.377 to i16
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.12 to i32 ; 3 uses
  %i.gt = and i32 %.sroa.0.0.insert.ext, 8
  %.not186.i = icmp eq i32 %i.gt, 0
  %i.gu = select i1 %.not186.i, i32 1, i32 5      ; 2 uses
  %i.gv = and i32 %.sroa.0.0.insert.ext, 2
  %.not191.i = icmp ne i32 %i.gv, 0
  %.not192.i = trunc i8 %.sroa.0.12 to i1
  %5 = and i32 %.sroa.0.0.insert.ext, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.cp, %.lr.ph
  %.299 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.cp ] ; 7 uses
  %i.gw = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.gx = zext i32 %.299 to i64
  %i.gy = icmp ule i64 %.pre.i, %i.gx             ; 2 uses
  %i.gz = load i8, ptr %i.k, align 8, !range !75
  %i.ha = trunc nuw i8 %i.gz to i1                ; 2 uses
  %or.cond = select i1 %i.gy, i1 true, i1 %i.ha
  %i.hb = load i8, ptr %i.l, align 1, !range !75
  %i.hc = trunc nuw i8 %i.hb to i1                ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.hc
  br i1 %or.cond5, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.gr, ptr %i.bi, align 4, !tbaa !222
  store i16 %i.gs, ptr %i.bj, align 8, !tbaa !223
  store i32 %.299, ptr %i.bk, align 4, !tbaa !224
  store ptr null, ptr %i.bl, align 8, !tbaa !225
  store i8 1, ptr %i.l, align 1, !tbaa !120
  store i8 0, ptr %i.bm, align 2, !tbaa !124
  %i.hd = call i32 @extstore_submit_bg(ptr noundef %0, ptr noundef nonnull %4) #21 ; 0 uses
  br label %bb.cp

bb.bb:                                            ; preds = %bb.az
  %i.he = load i8, ptr %i.bm, align 2, !tbaa !124, !range !75, !noundef !76
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hg = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hh = and i16 %i.hg, 2
  %.not55 = icmp eq i16 %i.hh, 0
  br i1 %.not55, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 13, ptr noundef null, i32 noundef %.377) #21 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store i8 0, ptr %i.k, align 8, !tbaa !119
  store i8 0, ptr %i.l, align 1, !tbaa !120
  br label %.thread145

bb.bf:                                            ; preds = %bb.bb
  %or.cond8 = select i1 %i.hc, i1 %i.ha, i1 false
  br i1 %or.cond8, label %bb.bg, label %bb.cl

bb.bg:                                            ; preds = %bb.bf
  %i.hj = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hk = and i16 %i.hj, 2
  %.not54 = icmp eq i16 %i.hk, 0
  br i1 %.not54, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 14, ptr noundef null, i32 noundef %.377, i32 noundef %.299) #21 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.cj, %bb.bi
  %.0176.i = phi i64 [ 0, %bb.bi ], [ %i.nf, %bb.cj ] ; 6 uses
  %.0169.i = phi i32 [ 0, %bb.bi ], [ %.4173.i, %bb.cj ] ; 13 uses
  %.0161.i = phi i32 [ 0, %bb.bi ], [ %.5166.i, %bb.cj ] ; 14 uses
  %.0153.i = phi i32 [ 0, %bb.bi ], [ %.5158.i, %bb.cj ] ; 15 uses
  %.0146.i = phi i32 [ 0, %bb.bi ], [ %.5151.i, %bb.cj ] ; 15 uses
  %.0141.i = phi i32 [ 0, %bb.bi ], [ %.2143.i, %bb.cj ] ; 11 uses
  %.0134.i = phi i32 [ 0, %bb.bi ], [ %.4138.i, %bb.cj ] ; 15 uses
  %.0129.i = phi i32 [ 0, %bb.bi ], [ %.4133.i, %bb.cj ] ; 15 uses
  %.0127.i = phi i32 [ 5000, %bb.bi ], [ %.3.i58, %bb.cj ] ; 11 uses
  %i.ho = icmp samesign ult i64 %.0176.i, %i.hn
  br i1 %i.ho, label %bb.bk, label %.thread226.i

bb.bk:                                            ; preds = %bb.bj
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0176.i ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 41 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !12  ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %.thread226.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ht = zext i8 %i.hr to i32
  %i.hu = add nuw nsw i32 %i.ht, 49
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !18
  %i.hx = add i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 38 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !14
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %i.ib = lshr i32 %i.ia, 6
  %i.ic = and i32 %i.ib, 4
  %i.id = add i32 %i.hx, %i.ic
  %i.ie = shl nuw nsw i32 %i.ia, 2
  %i.if = and i32 %i.ie, 8
  %i.ig = add i32 %i.id, %i.if                    ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !18 ; 4 uses
  call void @item_lock(i32 noundef %i.ii) #21
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.ik = load i16, ptr %i.hy, align 2, !tbaa !14
  %i.il = shl i16 %i.ik, 2
  %i.im = and i16 %i.il, 8
  %i.in = zext nneg i16 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = load i8, ptr %i.hq, align 1, !tbaa !12
  %i.iq = zext i8 %i.ip to i64
  %i.ir = call ptr @assoc_find(ptr noundef nonnull %i.io, i64 noundef %i.iq, i32 noundef %i.ii) #21 ; 14 uses
  %.not.i57 = icmp eq ptr %i.ir, null
  br i1 %.not.i57, label %bb.cj, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 36 ; 3 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !14
  %i.iu = add i16 %i.it, 1
  store i16 %i.iu, ptr %i.is, align 4, !tbaa !14
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 38 ; 5 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !14
  %i.ix = and i16 %i.iw, 128
  %.not187.i = icmp eq i16 %i.ix, 0
  br i1 %.not187.i, label %.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = call i32 @item_is_flushed(ptr noundef nonnull %i.ir) #21
  %.not188.i = icmp eq i32 %i.iy, 0
  br i1 %.not188.i, label %bb.bo, label %.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 28 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !18 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load volatile i32, ptr @current_time, align 4, !tbaa !18
  %i.jd = icmp ugt i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.bq, label %.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 41 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !12
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 49
  %i.jj = load i16, ptr %i.iv, align 2, !tbaa !14
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = lshr i32 %i.jk, 6
  %i.jm = and i32 %i.jl, 4
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jn
  %i.jp = shl nuw nsw i32 %i.jk, 2
  %i.jq = and i32 %i.jp, 8
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.ju = load i16, ptr %i.jt, align 4, !tbaa !16
  %i.jv = zext i16 %i.ju to i32
  %i.jw = icmp eq i32 %.377, %i.jv
  br i1 %i.jw, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.jx = load i32, ptr %i.js, align 4, !tbaa !17
  %i.jy = zext i32 %i.jx to i64
  %i.jz = icmp eq i64 %.385, %i.jy
  br i1 %i.jz, label %bb.bs, label %.thread.i

bb.bs:                                            ; preds = %bb.br
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !99
  %i.kc = trunc nuw i64 %.0176.i to i32
  %i.kd = add i32 %.299, %i.kc
  %i.ke = icmp eq i32 %i.kb, %i.kd
  br i1 %i.ke, label %bb.bt, label %.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.kf = call i32 @extstore_delete(ptr noundef %0, i32 noundef %.377, i64 noundef %.385, i32 noundef 1, i32 noundef %i.ig) #21 ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !12
  %i.ki = icmp sgt i8 %i.kh, -65                  ; 2 uses
  %brmerge.i = select i1 %i.ki, i1 true, i1 %.not191.i
  %.mux.i = select i1 %i.ki, i32 %i.gu, i32 4
  br i1 %brmerge.i, label %.thread208.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kj = add i32 %.0141.i, %5                    ; 2 uses
  br i1 %.not192.i, label %.thread.i, label %.thread208.i

.thread208.i:                                     ; preds = %bb.bu, %bb.bt
  %.0122215.i = phi i32 [ %i.gu, %bb.bu ], [ %.mux.i, %bb.bt ] ; 3 uses
  %.1142213.i = phi i32 [ %i.kj, %bb.bu ], [ %.0141.i, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 %i.ig, ptr %i.bn, align 8, !tbaa !101
  store i32 1, ptr %i.bo, align 4, !tbaa !102
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %.0127.i, i32 10) ; 2 uses
  %i.kk = sub i32 %.0127.i, %spec.store.select.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.thread208.i
  %.0120240.i = phi i32 [ %spec.store.select.i, %.thread208.i ], [ %i.kp, %bb.bw ] ; 2 uses
  %.1128239.i = phi i32 [ %.0127.i, %.thread208.i ], [ %i.kn, %bb.bw ] ; 5 uses
  %i.kl = call i32 @extstore_write_request(ptr noundef %0, i32 noundef %.0122215.i, i32 noundef %.0122215.i, ptr noundef nonnull %1) #21
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kn = add nsw i32 %.1128239.i, -1
  %i.ko = call i32 @usleep(i32 noundef 1000) #21  ; 0 uses
  %i.kp = add nsw i32 %.0120240.i, -1
  %i.kq = icmp sgt i32 %.0120240.i, 1
  br i1 %i.kq, label %bb.bv, label %.critedge.i, !llvm.loop !204

bb.bx:                                            ; preds = %bb.bv
  %i.kr = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.ks = load i32, ptr %i.bn, align 8, !tbaa !101
  %i.kt = zext i32 %i.ks to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr nonnull align 8 %i.hp, i64 %i.kt, i1 false)
  call void @extstore_write(ptr noundef %0, ptr noundef nonnull %1) #21
  %i.ku = load i16, ptr %i.is, align 4, !tbaa !14
  %i.kv = icmp eq i16 %i.ku, 2
  br i1 %i.kv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.kw = load i32, ptr %i.bq, align 4, !tbaa !97
  store i32 %i.kw, ptr %i.js, align 4, !tbaa !17
  %i.kx = load i16, ptr %i.br, align 8, !tbaa !98
  store i16 %i.kx, ptr %i.jt, align 4, !tbaa !16
  %i.ky = load i32, ptr %i.bs, align 4, !tbaa !100
  store i32 %i.ky, ptr %i.ka, align 4, !tbaa !99
  br label %bb.cf

bb.bz:                                            ; preds = %bb.bx
  %i.kz = load i16, ptr %i.iv, align 2, !tbaa !14 ; 2 uses
  %i.la = zext i16 %i.kz to i32                   ; 2 uses
  %i.lb = and i32 %i.la, 256
  %.not193.i = icmp eq i32 %i.lb, 0
  %.pre.i59 = load i8, ptr %i.je, align 1, !tbaa !12
  %.pre243.i = zext i8 %.pre.i59 to i64           ; 2 uses
  br i1 %.not193.i, label %._crit_edge.i60, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.pre243.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 49
  %i.le = shl nuw nsw i32 %i.la, 2
  %i.lf = and i32 %i.le, 8
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 1, !tbaa !18
  br label %._crit_edge.i60

._crit_edge.i60:                                  ; preds = %bb.ca, %bb.bz
  %.0118.i = phi i32 [ %i.li, %bb.ca ], [ 0, %bb.bz ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 2 uses
  %i.lk = shl i16 %i.kz, 2
  %i.ll = and i16 %i.lk, 8
  %i.lm = zext nneg i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i32, ptr %i.iz, align 4, !tbaa !18
  %i.lp = call ptr @do_item_alloc(ptr noundef nonnull %i.ln, i64 noundef %.pre243.i, i32 noundef %.0118.i, i32 noundef %i.lo, i32 noundef 12) #21 ; 8 uses
  %.not196.not.i = icmp eq ptr %i.lp, null
  br i1 %.not196.not.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i60
  %i.lq = load i16, ptr %i.iv, align 2, !tbaa !14
  %i.lr = and i16 %i.lq, -2                       ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 38
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !14
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i32 %i.lu, ptr %i.lv, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store i32 %i.lx, ptr %i.ly, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 41
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !12
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 49
  %i.me = zext i16 %i.lr to i32                   ; 2 uses
  %i.mf = lshr i32 %i.me, 6
  %i.mg = and i32 %i.mf, 4
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mh
  %i.mj = shl nuw nsw i32 %i.me, 2
  %i.mk = and i32 %i.mj, 8
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml ; 3 uses
  %i.mn = load i32, ptr %i.bq, align 4, !tbaa !97
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !17
  %i.mo = load i16, ptr %i.br, align 8, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i16 %i.mo, ptr %i.mp, align 4, !tbaa !16
  %i.mq = load i32, ptr %i.bs, align 4, !tbaa !100
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !99
  %i.ms = load i16, ptr %i.iv, align 2, !tbaa !14
  %i.mt = and i16 %i.ms, 2
  %.not199.i = icmp eq i16 %i.mt, 0
  br i1 %.not199.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mu = load i64, ptr %i.lj, align 8, !tbaa !12
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mv = phi i64 [ %i.mu, %bb.cc ], [ 0, %bb.cb ]
  %i.mw = call i32 @item_replace(ptr noundef nonnull %i.ir, ptr noundef nonnull %i.lp, i32 noundef %i.ii, i64 noundef %i.mv) #21 ; 0 uses
  call void @do_item_remove(ptr noundef nonnull %i.lp) #21
  %i.mx = add i32 %.0161.i, 1
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i60
  %i.my = add i32 %.0153.i, 1
  %i.mz = add i32 %.0146.i, 1
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd, %bb.by
  %.2163.ph.i = phi i32 [ %i.mx, %bb.cd ], [ %.0161.i, %bb.by ] ; 3 uses
  %i.na = add i32 %.0169.i, 1                     ; 3 uses
  switch i32 %.0122215.i, label %bb.ci [
    i32 4, label %bb.cg
    i32 5, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.nb = add i32 %.0134.i, 1
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.nc = add i32 %.0129.i, 1
  br label %bb.ci

.critedge.i:                                      ; preds = %bb.bw
  %i.nd = add i32 %.0153.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.1128238.i = phi i32 [ %i.kk, %.critedge.i ], [ %.1128239.i, %bb.cg ], [ %.1128239.i, %bb.ch ], [ %.1128239.i, %bb.cf ], [ %.1128239.i, %bb.ce ]
  %.2171.i = phi i32 [ %.0169.i, %.critedge.i ], [ %i.na, %bb.cg ], [ %i.na, %bb.ch ], [ %i.na, %bb.cf ], [ %.0169.i, %bb.ce ]
  %.3164.i = phi i32 [ %.0161.i, %.critedge.i ], [ %.2163.ph.i, %bb.cg ], [ %.2163.ph.i, %bb.ch ], [ %.2163.ph.i, %bb.cf ], [ %.0161.i, %bb.ce ]
  %.3156.i = phi i32 [ %i.nd, %.critedge.i ], [ %.0153.i, %bb.cg ], [ %.0153.i, %bb.ch ], [ %.0153.i, %bb.cf ], [ %i.my, %bb.ce ]
  %.3149.i = phi i32 [ %.0146.i, %.critedge.i ], [ %.0146.i, %bb.cg ], [ %.0146.i, %bb.ch ], [ %.0146.i, %bb.cf ], [ %i.mz, %bb.ce ]
  %.2136.i = phi i32 [ %.0134.i, %.critedge.i ], [ %i.nb, %bb.cg ], [ %.0134.i, %bb.ch ], [ %.0134.i, %bb.cf ], [ %.0134.i, %bb.ce ]
  %.2131.i = phi i32 [ %.0129.i, %.critedge.i ], [ %.0129.i, %bb.cg ], [ %i.nc, %bb.ch ], [ %.0129.i, %bb.cf ], [ %.0129.i, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ci, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bm
  %.1142206.i = phi i32 [ %.1142213.i, %bb.ci ], [ %i.kj, %bb.bu ], [ %.0141.i, %bb.bn ], [ %.0141.i, %bb.bm ], [ %.0141.i, %bb.bs ], [ %.0141.i, %bb.br ], [ %.0141.i, %bb.bq ], [ %.0141.i, %bb.bp ]
  %.3172.i = phi i32 [ %.2171.i, %bb.ci ], [ %.0169.i, %bb.bu ], [ %.0169.i, %bb.bn ], [ %.0169.i, %bb.bm ], [ %.0169.i, %bb.bs ], [ %.0169.i, %bb.br ], [ %.0169.i, %bb.bq ], [ %.0169.i, %bb.bp ]
  %.4165.i = phi i32 [ %.3164.i, %bb.ci ], [ %.0161.i, %bb.bu ], [ %.0161.i, %bb.bn ], [ %.0161.i, %bb.bm ], [ %.0161.i, %bb.bs ], [ %.0161.i, %bb.br ], [ %.0161.i, %bb.bq ], [ %.0161.i, %bb.bp ]
  %.4157.i = phi i32 [ %.3156.i, %bb.ci ], [ %.0153.i, %bb.bu ], [ %.0153.i, %bb.bn ], [ %.0153.i, %bb.bm ], [ %.0153.i, %bb.bs ], [ %.0153.i, %bb.br ], [ %.0153.i, %bb.bq ], [ %.0153.i, %bb.bp ]
  %.4150.i = phi i32 [ %.3149.i, %bb.ci ], [ %.0146.i, %bb.bu ], [ %.0146.i, %bb.bn ], [ %.0146.i, %bb.bm ], [ %.0146.i, %bb.bs ], [ %.0146.i, %bb.br ], [ %.0146.i, %bb.bq ], [ %.0146.i, %bb.bp ]
  %.3137.i = phi i32 [ %.2136.i, %bb.ci ], [ %.0134.i, %bb.bu ], [ %.0134.i, %bb.bn ], [ %.0134.i, %bb.bm ], [ %.0134.i, %bb.bs ], [ %.0134.i, %bb.br ], [ %.0134.i, %bb.bq ], [ %.0134.i, %bb.bp ]
  %.3132.i = phi i32 [ %.2131.i, %bb.ci ], [ %.0129.i, %bb.bu ], [ %.0129.i, %bb.bn ], [ %.0129.i, %bb.bm ], [ %.0129.i, %bb.bs ], [ %.0129.i, %bb.br ], [ %.0129.i, %bb.bq ], [ %.0129.i, %bb.bp ]
  %.2.i = phi i32 [ %.1128238.i, %bb.ci ], [ %.0127.i, %bb.bu ], [ %.0127.i, %bb.bn ], [ %.0127.i, %bb.bm ], [ %.0127.i, %bb.bs ], [ %.0127.i, %bb.br ], [ %.0127.i, %bb.bq ], [ %.0127.i, %bb.bp ]
  call void @do_item_remove(ptr noundef nonnull %i.ir) #21
  br label %bb.cj

bb.cj:                                            ; preds = %.thread.i, %bb.bl
  %.4173.i = phi i32 [ %.3172.i, %.thread.i ], [ %.0169.i, %bb.bl ] ; 2 uses
  %.5166.i = phi i32 [ %.4165.i, %.thread.i ], [ %.0161.i, %bb.bl ] ; 2 uses
  %.5158.i = phi i32 [ %.4157.i, %.thread.i ], [ %.0153.i, %bb.bl ] ; 2 uses
  %.5151.i = phi i32 [ %.4150.i, %.thread.i ], [ %.0146.i, %bb.bl ] ; 2 uses
  %.2143.i = phi i32 [ %.1142206.i, %.thread.i ], [ %.0141.i, %bb.bl ] ; 2 uses
  %.4138.i = phi i32 [ %.3137.i, %.thread.i ], [ %.0134.i, %bb.bl ] ; 2 uses
  %.4133.i = phi i32 [ %.3132.i, %.thread.i ], [ %.0129.i, %bb.bl ] ; 2 uses
  %.3.i58 = phi i32 [ %.2.i, %.thread.i ], [ %.0127.i, %bb.bl ]
  call void @item_unlock(i32 noundef %i.ii) #21
  %i.ne = zext i32 %i.ig to i64
  %i.nf = add nuw nsw i64 %.0176.i, %i.ne         ; 3 uses
  %i.ng = sub nsw i64 %i.hn, %i.nf
  %i.nh = icmp ult i64 %i.ng, 48
  br i1 %i.nh, label %.thread226.i, label %bb.bj

.thread226.i:                                     ; preds = %bb.cj, %bb.bk, %bb.bj
  %.2178.i = phi i64 [ %.0176.i, %bb.bj ], [ %.0176.i, %bb.bk ], [ %i.nf, %bb.cj ]
  %.6175.i = phi i32 [ %.0169.i, %bb.bj ], [ %.0169.i, %bb.bk ], [ %.4173.i, %bb.cj ] ; 2 uses
  %.7168.i = phi i32 [ %.0161.i, %bb.bj ], [ %.0161.i, %bb.bk ], [ %.5166.i, %bb.cj ]
  %.7160.i = phi i32 [ %.0153.i, %bb.bj ], [ %.0153.i, %bb.bk ], [ %.5158.i, %bb.cj ] ; 2 uses
  %.7.i = phi i32 [ %.0146.i, %bb.bj ], [ %.0146.i, %bb.bk ], [ %.5151.i, %bb.cj ]
  %.4145.i = phi i32 [ %.0141.i, %bb.bj ], [ %.0141.i, %bb.bk ], [ %.2143.i, %bb.cj ] ; 2 uses
  %.6140.i = phi i32 [ %.0134.i, %bb.bj ], [ %.0134.i, %bb.bk ], [ %.4138.i, %bb.cj ]
  %.6.i = phi i32 [ %.0129.i, %bb.bj ], [ %.0129.i, %bb.bk ], [ %.4133.i, %bb.cj ]
  call void @STATS_LOCK() #21
  %i.ni = zext i32 %.7160.i to i64
  %i.nj = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 160), align 8, !tbaa !35
  %i.nk = add i64 %i.nj, %i.ni
  store i64 %i.nk, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 160), align 8, !tbaa !35
  %i.nl = zext i32 %.6175.i to i64
  %i.nm = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 168), align 8, !tbaa !36
  %i.nn = add i64 %i.nm, %i.nl
  store i64 %i.nn, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 168), align 8, !tbaa !36
  %i.no = zext i32 %.4145.i to i64
  %i.np = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 176), align 8, !tbaa !39
  %i.nq = add i64 %i.np, %i.no
  store i64 %i.nq, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 176), align 8, !tbaa !39
  %i.nr = zext i32 %.6140.i to i64
  %i.ns = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 184), align 8, !tbaa !37
  %i.nt = add i64 %i.ns, %i.nr
  store i64 %i.nt, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 184), align 8, !tbaa !37
  %i.nu = zext i32 %.6.i to i64
  %i.nv = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 192), align 8, !tbaa !38
  %i.nw = add i64 %i.nv, %i.nu
  store i64 %i.nw, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 192), align 8, !tbaa !38
  call void @STATS_UNLOCK() #21
  %i.nx = load i16, ptr %i.al, align 4, !tbaa !116
  %i.ny = and i16 %i.nx, 2
  %.not200.i = icmp eq i16 %i.ny, 0
  br i1 %.not200.i, label %storage_compact_readback.exit, label %bb.ck

bb.ck:                                            ; preds = %.thread226.i
  %i.nz = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 15, ptr noundef null, i32 noundef %.377, i64 noundef %.2178.i, i32 noundef %.6175.i, i32 noundef %.7168.i, i32 noundef %.7160.i, i32 noundef %.7.i, i32 noundef %.4145.i) #21 ; 0 uses
  br label %storage_compact_readback.exit

storage_compact_readback.exit:                    ; preds = %.thread226.i, %bb.ck
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.ob = add i32 %i.oa, %.299
  store i8 0, ptr %i.k, align 8, !tbaa !119
  store i8 0, ptr %i.l, align 1, !tbaa !120
  br label %bb.cp

bb.cl:                                            ; preds = %bb.bf
  br i1 %i.gy, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  store i8 0, ptr %i.k, align 8, !tbaa !119
  store i8 0, ptr %i.l, align 1, !tbaa !120
  call void @extstore_close_page(ptr noundef %0, i32 noundef %.377, i64 noundef %.385) #21
  %i.oc = load i16, ptr %i.al, align 4, !tbaa !116
  %i.od = and i16 %i.oc, 2
  %.not53 = icmp eq i16 %i.od, 0
  br i1 %.not53, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oe = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef null, i32 noundef %.377) #21 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.of = call i32 @usleep(i32 noundef 1000) #21  ; 0 uses
  br label %.thread145

.thread145:                                       ; preds = %bb.be, %bb.co
  %i.og = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #21 ; 0 uses
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.thread145, %bb.ay
  %.sroa.0.0.be = phi i8 [ %.sroa.0.12.ph, %bb.ay ], [ %.sroa.0.12, %.thread145 ]
  br label %.loopexit

bb.cp:                                            ; preds = %bb.cl, %storage_compact_readback.exit, %bb.ba
  %.3 = phi i32 [ %.299, %bb.cl ], [ %i.ob, %storage_compact_readback.exit ], [ %.299, %bb.ba ]
  %i.oh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #21 ; 0 uses
  br label %bb.az, !llvm.loop !205
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @storage_conf_parse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !125
  %i.b = call ptr @strtok_r(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #23 ; 15 uses
  %i.e = call noalias ptr @strdup(ptr noundef nonnull %i.b) #21 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !227
  %i.g = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a) #21 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.39, i64 72, i64 1, ptr %i.i) #26 ; 0 uses
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @__ctype_tolower_loc() #27
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !229
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -1       ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = sext i8 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  store i8 0, ptr %i.n, align 1, !tbaa !12
  %sext = shl i32 %i.r, 24
  %i.s = ashr exact i32 %sext, 24
  %switch.tableidx = add nsw i32 %i.s, -103       ; 3 uses
  %i.t = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 8769, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.t, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite = call i64 @fwrite(ptr nonnull @.str.40, i64 72, i64 1, ptr %i.u) #26 ; 0 uses
  br label %bb.r

switch.lookup:                                    ; preds = %bb.d
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.storage_conf_parse, i64 %i.v
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.w = call i64 @__isoc23_strtol(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 10) #21, !inline_history !226
  %sext50 = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext50, 32
  %i.y = mul i64 %i.x, %switch.load
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.y, ptr %i.z, align 8, !tbaa !128
  %i.aa = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a) #21 ; 8 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.u, label %bb.f

bb.f:                                             ; preds = %switch.lookup
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.41) #28
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 1, ptr %i.ad, align 4, !tbaa !230
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.ae = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(7) @.str.42) #28
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 3, ptr %i.ag, align 4, !tbaa !230
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.ah = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.43) #28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 2, ptr %i.aj, align 4, !tbaa !230
  br label %bb.u
end_hunk_0
