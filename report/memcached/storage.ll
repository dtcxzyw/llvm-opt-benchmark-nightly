Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/storage?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@storage_compact_thread:bb.a
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
  %.sroa.0.12 = phi i8 [ %.sroa.0.8, %bb.aa ], [ %i.eu, %bb.ae ] ; 2 uses
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
  %5 = lshr i32 %.sroa.0.0.insert.ext, 1
  %6 = and i32 %5, 4
  %7 = or disjoint i32 %6, 1                      ; 2 uses
  %i.gt = and i32 %.sroa.0.0.insert.ext, 2
  %.not191.i = icmp ne i32 %i.gt, 0
  %i.gu = and i32 %.sroa.0.0.insert.ext, 1
  %.not192.i = icmp eq i32 %i.gu, 0
  br label %bb.az

bb.az:                                            ; preds = %bb.cp, %.lr.ph
  %.299 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.cp ] ; 7 uses
  %i.gv = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.gw = zext i32 %.299 to i64
  %i.gx = icmp ule i64 %.pre.i, %i.gw             ; 2 uses
  %i.gy = load i8, ptr %i.k, align 8, !range !75
  %i.gz = trunc nuw i8 %i.gy to i1                ; 2 uses
  %or.cond = select i1 %i.gx, i1 true, i1 %i.gz
  %i.ha = load i8, ptr %i.l, align 1, !range !75
  %i.hb = trunc nuw i8 %i.ha to i1                ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.hb
  br i1 %or.cond5, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.gr, ptr %i.bi, align 4, !tbaa !222
  store i16 %i.gs, ptr %i.bj, align 8, !tbaa !223
  store i32 %.299, ptr %i.bk, align 4, !tbaa !224
  store ptr null, ptr %i.bl, align 8, !tbaa !225
  store i8 1, ptr %i.l, align 1, !tbaa !120
  store i8 0, ptr %i.bm, align 2, !tbaa !124
  %i.hc = call i32 @extstore_submit_bg(ptr noundef %0, ptr noundef nonnull %4) #21 ; 0 uses
  br label %bb.cp

bb.bb:                                            ; preds = %bb.az
  %i.hd = load i8, ptr %i.bm, align 2, !tbaa !124, !range !75, !noundef !76
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hf = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hg = and i16 %i.hf, 2
  %.not55 = icmp eq i16 %i.hg, 0
  br i1 %.not55, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hh = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 13, ptr noundef null, i32 noundef %.377) #21 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store i8 0, ptr %i.k, align 8, !tbaa !119
  store i8 0, ptr %i.l, align 1, !tbaa !120
  br label %.thread145

bb.bf:                                            ; preds = %bb.bb
  %or.cond8 = select i1 %i.hb, i1 %i.gz, i1 false
  br i1 %or.cond8, label %bb.bg, label %bb.cl

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hj = and i16 %i.hi, 2
  %.not54 = icmp eq i16 %i.hj, 0
  br i1 %.not54, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 14, ptr noundef null, i32 noundef %.377, i32 noundef %.299) #21 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.cj, %bb.bi
  %.0176.i = phi i64 [ 0, %bb.bi ], [ %i.ne, %bb.cj ] ; 6 uses
  %.0169.i = phi i32 [ 0, %bb.bi ], [ %.4173.i, %bb.cj ] ; 13 uses
  %.0161.i = phi i32 [ 0, %bb.bi ], [ %.5166.i, %bb.cj ] ; 14 uses
  %.0153.i = phi i32 [ 0, %bb.bi ], [ %.5158.i, %bb.cj ] ; 15 uses
  %.0146.i = phi i32 [ 0, %bb.bi ], [ %.5151.i, %bb.cj ] ; 15 uses
  %.0141.i = phi i32 [ 0, %bb.bi ], [ %.2143.i, %bb.cj ] ; 11 uses
  %.0134.i = phi i32 [ 0, %bb.bi ], [ %.4138.i, %bb.cj ] ; 15 uses
  %.0129.i = phi i32 [ 0, %bb.bi ], [ %.4133.i, %bb.cj ] ; 15 uses
  %.0127.i = phi i32 [ 5000, %bb.bi ], [ %.3.i58, %bb.cj ] ; 11 uses
  %i.hn = icmp samesign ult i64 %.0176.i, %i.hm
  br i1 %i.hn, label %bb.bk, label %.thread226.i

bb.bk:                                            ; preds = %bb.bj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0176.i ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 41 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !12  ; 2 uses
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %.thread226.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hs = zext i8 %i.hq to i32
  %i.ht = add nuw nsw i32 %i.hs, 49
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !18
  %i.hw = add i32 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 38 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !14
  %i.hz = zext i16 %i.hy to i32                   ; 2 uses
  %i.ia = lshr i32 %i.hz, 6
  %i.ib = and i32 %i.ia, 4
  %i.ic = add i32 %i.hw, %i.ib
  %i.id = shl nuw nsw i32 %i.hz, 2
  %i.ie = and i32 %i.id, 8
  %i.if = add i32 %i.ic, %i.ie                    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !18 ; 4 uses
  call void @item_lock(i32 noundef %i.ih) #21
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.ij = load i16, ptr %i.hx, align 2, !tbaa !14
  %i.ik = shl i16 %i.ij, 2
  %i.il = and i16 %i.ik, 8
  %i.im = zext nneg i16 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.im
  %i.io = load i8, ptr %i.hp, align 1, !tbaa !12
  %i.ip = zext i8 %i.io to i64
  %i.iq = call ptr @assoc_find(ptr noundef nonnull %i.in, i64 noundef %i.ip, i32 noundef %i.ih) #21 ; 14 uses
  %.not.i57 = icmp eq ptr %i.iq, null
  br i1 %.not.i57, label %bb.cj, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 36 ; 3 uses
  %i.is = load i16, ptr %i.ir, align 4, !tbaa !14
  %i.it = add i16 %i.is, 1
  store i16 %i.it, ptr %i.ir, align 4, !tbaa !14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 38 ; 5 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !14
  %i.iw = and i16 %i.iv, 128
  %.not187.i = icmp eq i16 %i.iw, 0
  br i1 %.not187.i, label %.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ix = call i32 @item_is_flushed(ptr noundef nonnull %i.iq) #21
  %.not188.i = icmp eq i32 %i.ix, 0
  br i1 %.not188.i, label %bb.bo, label %.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 28 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !18 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jb = load volatile i32, ptr @current_time, align 4, !tbaa !18
  %i.jc = icmp ugt i32 %i.iz, %i.jb
  br i1 %i.jc, label %bb.bq, label %.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 41 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !12
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 49
  %i.ji = load i16, ptr %i.iu, align 2, !tbaa !14
  %i.jj = zext i16 %i.ji to i32                   ; 2 uses
  %i.jk = lshr i32 %i.jj, 6
  %i.jl = and i32 %i.jk, 4
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jm
  %i.jo = shl nuw nsw i32 %i.jj, 2
  %i.jp = and i32 %i.jo, 8
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 4, !tbaa !16
  %i.ju = zext i16 %i.jt to i32
  %i.jv = icmp eq i32 %.377, %i.ju
  br i1 %i.jv, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i32, ptr %i.jr, align 4, !tbaa !17
  %i.jx = zext i32 %i.jw to i64
  %i.jy = icmp eq i64 %.385, %i.jx
  br i1 %i.jy, label %bb.bs, label %.thread.i

bb.bs:                                            ; preds = %bb.br
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !99
  %i.kb = trunc nuw i64 %.0176.i to i32
  %i.kc = add i32 %.299, %i.kb
  %i.kd = icmp eq i32 %i.ka, %i.kc
  br i1 %i.kd, label %bb.bt, label %.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.ke = call i32 @extstore_delete(ptr noundef %0, i32 noundef %.377, i64 noundef %.385, i32 noundef 1, i32 noundef %i.if) #21 ; 0 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !12
  %i.kh = icmp sgt i8 %i.kg, -65                  ; 2 uses
  %brmerge.i = select i1 %i.kh, i1 true, i1 %.not191.i
  %.mux.i = select i1 %i.kh, i32 %7, i32 4
  br i1 %brmerge.i, label %.thread208.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ki = add i32 %.0141.i, 1
  br i1 %.not192.i, label %.thread208.i, label %.thread.i

.thread208.i:                                     ; preds = %bb.bu, %bb.bt
  %.0122215.i = phi i32 [ %7, %bb.bu ], [ %.mux.i, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 %i.if, ptr %i.bn, align 8, !tbaa !101
  store i32 1, ptr %i.bo, align 4, !tbaa !102
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %.0127.i, i32 10) ; 2 uses
  %i.kj = sub i32 %.0127.i, %spec.store.select.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.thread208.i
  %.0120240.i = phi i32 [ %spec.store.select.i, %.thread208.i ], [ %i.ko, %bb.bw ] ; 2 uses
  %.1128239.i = phi i32 [ %.0127.i, %.thread208.i ], [ %i.km, %bb.bw ] ; 5 uses
  %i.kk = call i32 @extstore_write_request(ptr noundef %0, i32 noundef %.0122215.i, i32 noundef %.0122215.i, ptr noundef nonnull %1) #21
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.km = add nsw i32 %.1128239.i, -1
  %i.kn = call i32 @usleep(i32 noundef 1000) #21  ; 0 uses
  %i.ko = add nsw i32 %.0120240.i, -1
  %i.kp = icmp sgt i32 %.0120240.i, 1
  br i1 %i.kp, label %bb.bv, label %.critedge.i, !llvm.loop !204

bb.bx:                                            ; preds = %bb.bv
  %i.kq = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.kr = load i32, ptr %i.bn, align 8, !tbaa !101
  %i.ks = zext i32 %i.kr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr nonnull align 8 %i.ho, i64 %i.ks, i1 false)
  call void @extstore_write(ptr noundef %0, ptr noundef nonnull %1) #21
  %i.kt = load i16, ptr %i.ir, align 4, !tbaa !14
  %i.ku = icmp eq i16 %i.kt, 2
  br i1 %i.ku, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.kv = load i32, ptr %i.bq, align 4, !tbaa !97
  store i32 %i.kv, ptr %i.jr, align 4, !tbaa !17
  %i.kw = load i16, ptr %i.br, align 8, !tbaa !98
  store i16 %i.kw, ptr %i.js, align 4, !tbaa !16
  %i.kx = load i32, ptr %i.bs, align 4, !tbaa !100
  store i32 %i.kx, ptr %i.jz, align 4, !tbaa !99
  br label %bb.cf

bb.bz:                                            ; preds = %bb.bx
  %i.ky = load i16, ptr %i.iu, align 2, !tbaa !14 ; 2 uses
  %i.kz = zext i16 %i.ky to i32                   ; 2 uses
  %i.la = and i32 %i.kz, 256
  %.not193.i = icmp eq i32 %i.la, 0
  %.pre.i59 = load i8, ptr %i.jd, align 1, !tbaa !12
  %.pre243.i = zext i8 %.pre.i59 to i64           ; 2 uses
  br i1 %.not193.i, label %._crit_edge.i60, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.pre243.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 49
  %i.ld = shl nuw nsw i32 %i.kz, 2
  %i.le = and i32 %i.ld, 8
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !18
  br label %._crit_edge.i60

._crit_edge.i60:                                  ; preds = %bb.ca, %bb.bz
  %.0118.i = phi i32 [ %i.lh, %bb.ca ], [ 0, %bb.bz ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.iq, i64 48 ; 2 uses
  %i.lj = shl i16 %i.ky, 2
  %i.lk = and i16 %i.lj, 8
  %i.ll = zext nneg i16 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ll
  %i.ln = load i32, ptr %i.iy, align 4, !tbaa !18
  %i.lo = call ptr @do_item_alloc(ptr noundef nonnull %i.lm, i64 noundef %.pre243.i, i32 noundef %.0118.i, i32 noundef %i.ln, i32 noundef 12) #21 ; 8 uses
  %.not196.not.i = icmp eq ptr %i.lo, null
  br i1 %.not196.not.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i60
  %i.lp = load i16, ptr %i.iu, align 2, !tbaa !14
  %i.lq = and i16 %i.lp, -2                       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 38
  store i16 %i.lq, ptr %i.lr, align 2, !tbaa !14
  %i.ls = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.lt, ptr %i.lu, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lo, i64 41
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !12
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 49
  %i.md = zext i16 %i.lq to i32                   ; 2 uses
  %i.me = lshr i32 %i.md, 6
  %i.mf = and i32 %i.me, 4
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mg
  %i.mi = shl nuw nsw i32 %i.md, 2
  %i.mj = and i32 %i.mi, 8
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mk ; 3 uses
  %i.mm = load i32, ptr %i.bq, align 4, !tbaa !97
  store i32 %i.mm, ptr %i.ml, align 4, !tbaa !17
  %i.mn = load i16, ptr %i.br, align 8, !tbaa !98
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i16 %i.mn, ptr %i.mo, align 4, !tbaa !16
  %i.mp = load i32, ptr %i.bs, align 4, !tbaa !100
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !99
  %i.mr = load i16, ptr %i.iu, align 2, !tbaa !14
  %i.ms = and i16 %i.mr, 2
  %.not199.i = icmp eq i16 %i.ms, 0
  br i1 %.not199.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mt = load i64, ptr %i.li, align 8, !tbaa !12
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mu = phi i64 [ %i.mt, %bb.cc ], [ 0, %bb.cb ]
  %i.mv = call i32 @item_replace(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.lo, i32 noundef %i.ih, i64 noundef %i.mu) #21 ; 0 uses
  call void @do_item_remove(ptr noundef nonnull %i.lo) #21
  %i.mw = add i32 %.0161.i, 1
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i60
  %i.mx = add i32 %.0153.i, 1
  %i.my = add i32 %.0146.i, 1
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd, %bb.by
  %.2163.ph.i = phi i32 [ %i.mw, %bb.cd ], [ %.0161.i, %bb.by ] ; 3 uses
  %i.mz = add i32 %.0169.i, 1                     ; 3 uses
  switch i32 %.0122215.i, label %bb.ci [
    i32 4, label %bb.cg
    i32 5, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.na = add i32 %.0134.i, 1
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.nb = add i32 %.0129.i, 1
  br label %bb.ci

.critedge.i:                                      ; preds = %bb.bw
  %i.nc = add i32 %.0153.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.1128238.i = phi i32 [ %i.kj, %.critedge.i ], [ %.1128239.i, %bb.cg ], [ %.1128239.i, %bb.ch ], [ %.1128239.i, %bb.cf ], [ %.1128239.i, %bb.ce ]
  %.2171.i = phi i32 [ %.0169.i, %.critedge.i ], [ %i.mz, %bb.cg ], [ %i.mz, %bb.ch ], [ %i.mz, %bb.cf ], [ %.0169.i, %bb.ce ]
  %.3164.i = phi i32 [ %.0161.i, %.critedge.i ], [ %.2163.ph.i, %bb.cg ], [ %.2163.ph.i, %bb.ch ], [ %.2163.ph.i, %bb.cf ], [ %.0161.i, %bb.ce ]
  %.3156.i = phi i32 [ %i.nc, %.critedge.i ], [ %.0153.i, %bb.cg ], [ %.0153.i, %bb.ch ], [ %.0153.i, %bb.cf ], [ %i.mx, %bb.ce ]
  %.3149.i = phi i32 [ %.0146.i, %.critedge.i ], [ %.0146.i, %bb.cg ], [ %.0146.i, %bb.ch ], [ %.0146.i, %bb.cf ], [ %i.my, %bb.ce ]
  %.2136.i = phi i32 [ %.0134.i, %.critedge.i ], [ %i.na, %bb.cg ], [ %.0134.i, %bb.ch ], [ %.0134.i, %bb.cf ], [ %.0134.i, %bb.ce ]
  %.2131.i = phi i32 [ %.0129.i, %.critedge.i ], [ %.0129.i, %bb.cg ], [ %i.nb, %bb.ch ], [ %.0129.i, %bb.cf ], [ %.0129.i, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ci, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bm
  %.1142206.i = phi i32 [ %.0141.i, %bb.ci ], [ %i.ki, %bb.bu ], [ %.0141.i, %bb.bn ], [ %.0141.i, %bb.bm ], [ %.0141.i, %bb.bs ], [ %.0141.i, %bb.br ], [ %.0141.i, %bb.bq ], [ %.0141.i, %bb.bp ]
  %.3172.i = phi i32 [ %.2171.i, %bb.ci ], [ %.0169.i, %bb.bu ], [ %.0169.i, %bb.bn ], [ %.0169.i, %bb.bm ], [ %.0169.i, %bb.bs ], [ %.0169.i, %bb.br ], [ %.0169.i, %bb.bq ], [ %.0169.i, %bb.bp ]
  %.4165.i = phi i32 [ %.3164.i, %bb.ci ], [ %.0161.i, %bb.bu ], [ %.0161.i, %bb.bn ], [ %.0161.i, %bb.bm ], [ %.0161.i, %bb.bs ], [ %.0161.i, %bb.br ], [ %.0161.i, %bb.bq ], [ %.0161.i, %bb.bp ]
  %.4157.i = phi i32 [ %.3156.i, %bb.ci ], [ %.0153.i, %bb.bu ], [ %.0153.i, %bb.bn ], [ %.0153.i, %bb.bm ], [ %.0153.i, %bb.bs ], [ %.0153.i, %bb.br ], [ %.0153.i, %bb.bq ], [ %.0153.i, %bb.bp ]
  %.4150.i = phi i32 [ %.3149.i, %bb.ci ], [ %.0146.i, %bb.bu ], [ %.0146.i, %bb.bn ], [ %.0146.i, %bb.bm ], [ %.0146.i, %bb.bs ], [ %.0146.i, %bb.br ], [ %.0146.i, %bb.bq ], [ %.0146.i, %bb.bp ]
  %.3137.i = phi i32 [ %.2136.i, %bb.ci ], [ %.0134.i, %bb.bu ], [ %.0134.i, %bb.bn ], [ %.0134.i, %bb.bm ], [ %.0134.i, %bb.bs ], [ %.0134.i, %bb.br ], [ %.0134.i, %bb.bq ], [ %.0134.i, %bb.bp ]
  %.3132.i = phi i32 [ %.2131.i, %bb.ci ], [ %.0129.i, %bb.bu ], [ %.0129.i, %bb.bn ], [ %.0129.i, %bb.bm ], [ %.0129.i, %bb.bs ], [ %.0129.i, %bb.br ], [ %.0129.i, %bb.bq ], [ %.0129.i, %bb.bp ]
  %.2.i = phi i32 [ %.1128238.i, %bb.ci ], [ %.0127.i, %bb.bu ], [ %.0127.i, %bb.bn ], [ %.0127.i, %bb.bm ], [ %.0127.i, %bb.bs ], [ %.0127.i, %bb.br ], [ %.0127.i, %bb.bq ], [ %.0127.i, %bb.bp ]
  call void @do_item_remove(ptr noundef nonnull %i.iq) #21
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
  call void @item_unlock(i32 noundef %i.ih) #21
  %i.nd = zext i32 %i.if to i64
  %i.ne = add nuw nsw i64 %.0176.i, %i.nd         ; 3 uses
  %i.nf = sub nsw i64 %i.hm, %i.ne
  %i.ng = icmp ult i64 %i.nf, 48
  br i1 %i.ng, label %.thread226.i, label %bb.bj

.thread226.i:                                     ; preds = %bb.cj, %bb.bk, %bb.bj
  %.2178.i = phi i64 [ %.0176.i, %bb.bj ], [ %.0176.i, %bb.bk ], [ %i.ne, %bb.cj ]
  %.6175.i = phi i32 [ %.0169.i, %bb.bj ], [ %.0169.i, %bb.bk ], [ %.4173.i, %bb.cj ] ; 2 uses
  %.7168.i = phi i32 [ %.0161.i, %bb.bj ], [ %.0161.i, %bb.bk ], [ %.5166.i, %bb.cj ]
  %.7160.i = phi i32 [ %.0153.i, %bb.bj ], [ %.0153.i, %bb.bk ], [ %.5158.i, %bb.cj ] ; 2 uses
  %.7.i = phi i32 [ %.0146.i, %bb.bj ], [ %.0146.i, %bb.bk ], [ %.5151.i, %bb.cj ]
  %.4145.i = phi i32 [ %.0141.i, %bb.bj ], [ %.0141.i, %bb.bk ], [ %.2143.i, %bb.cj ] ; 2 uses
  %.6140.i = phi i32 [ %.0134.i, %bb.bj ], [ %.0134.i, %bb.bk ], [ %.4138.i, %bb.cj ]
  %.6.i = phi i32 [ %.0129.i, %bb.bj ], [ %.0129.i, %bb.bk ], [ %.4133.i, %bb.cj ]
  call void @STATS_LOCK() #21
  %i.nh = zext i32 %.7160.i to i64
  %i.ni = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 160), align 8, !tbaa !35
  %i.nj = add i64 %i.ni, %i.nh
  store i64 %i.nj, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 160), align 8, !tbaa !35
end_hunk_0
