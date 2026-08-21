inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_segment_span_allocate:bb.a
_mi_stat_decrease.exit.i.i:                       ; preds = %bb.x, %bb.w, %mi_commit_mask_all_set.exit.thread.i.i
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.dr = call zeroext i1 @_mi_os_commit(ptr noundef %i.dq, i64 noundef %i.bi, ptr noundef nonnull %i.c, ptr readnone poison)
  br i1 %i.dr, label %bb.y, label %mi_segment_ensure_committed.exit

bb.y:                                             ; preds = %_mi_stat_decrease.exit.i.i
  %i.ds = load <2 x i64>, ptr %i.k, align 8, !tbaa !105
  %i.dt = or <2 x i64> %i.ds, %i.aq
  store <2 x i64> %i.dt, ptr %i.k, align 8, !tbaa !105
  %i.du = load <2 x i64>, ptr %i.br, align 8, !tbaa !105
  %i.dv = or <2 x i64> %i.du, %i.as
  store <2 x i64> %i.dv, ptr %i.br, align 8, !tbaa !105
  %i.dw = load <2 x i64>, ptr %i.cq, align 8, !tbaa !105
  %i.dx = or <2 x i64> %i.dw, %.fr15
  store <2 x i64> %i.dx, ptr %i.cq, align 8, !tbaa !105
  %i.dy = load i64, ptr %i.cu, align 8, !tbaa !105
  %i.dz = or i64 %i.dy, %i.az
  store i64 %i.dz, ptr %i.cu, align 8, !tbaa !105
  %i.ea = load i64, ptr %i.cy, align 8, !tbaa !105
  %i.eb = or i64 %i.ea, %i.db
  store i64 %i.eb, ptr %i.cy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %mi_commit_mask_all_set.exit.i.i
  %i.ec = phi i64 [ %i.db, %bb.y ], [ %i.cl, %mi_commit_mask_all_set.exit.i.i ] ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !105 ; 2 uses
  %i.ef = and i64 %i.ee, %i.bl
  %.not.not.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.not.i.i.i, label %bb.aa, label %mi_commit_mask_any_set.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr i8, ptr %0, i64 56
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !105 ; 2 uses
  %i.ei = and i64 %i.eh, %i.bp
  %.not.1.not.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.1.not.i.i.i, label %bb.ab, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr i8, ptr %0, i64 64
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !105 ; 2 uses
  %i.el = and i64 %i.ek, %i.bt
  %.not.2.not.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.2.not.i.i.i, label %bb.ac, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr i8, ptr %0, i64 72
  %i.en = load i64, ptr %i.em, align 8, !tbaa !105 ; 2 uses
  %i.eo = and i64 %i.en, %i.bx
  %.not.3.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.3.not.i.i.i, label %bb.ad, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr i8, ptr %0, i64 80
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !105 ; 2 uses
  %i.er = and i64 %i.eq, %i.aw
  %.not.4.not.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.4.not.i.i.i, label %bb.ae, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr i8, ptr %0, i64 88
  %i.et = load i64, ptr %i.es, align 8, !tbaa !105 ; 2 uses
  %i.eu = and i64 %i.et, %i.ax
  %.not.5.not.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.5.not.i.i.i, label %bb.af, label %mi_commit_mask_any_set.exit.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr i8, ptr %0, i64 96
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !105 ; 2 uses
  %i.ex = and i64 %i.ew, %i.az
  %.not.6.not.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.6.not.i.i.i, label %mi_commit_mask_any_set.exit.i.i, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.i.i:                  ; preds = %bb.af
  %i.ey = getelementptr i8, ptr %0, i64 104
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !105 ; 2 uses
  %i.fa = and i64 %i.ez, %i.ec
  %.not.7.not.i.not.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ah, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.thread.i.i:           ; preds = %mi_commit_mask_any_set.exit.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.fb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #55 ; 0 uses
  %i.fc = load i64, ptr %3, align 8, !tbaa !138
  %i.fd = mul i64 %i.fc, 1000
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !140
  %i.fg = sdiv i64 %i.ff, 1000000
  %i.fh = add i64 %i.fg, %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !111
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ag, label %mi_option_get.exit.i.i, !prof !17

bb.ag:                                            ; preds = %mi_commit_mask_any_set.exit.thread.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !113
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ag, %mi_commit_mask_any_set.exit.thread.i.i
  %i.fk = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.fl = add i64 %i.fh, %i.fk
  %i.fm = getelementptr i8, ptr %0, i64 40
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !310
  %.pre37.i.i = load i64, ptr %i.ed, align 8, !tbaa !105
  %.phi.trans.insert38.i.i = getelementptr i8, ptr %0, i64 56
  %.pre39.i.i = load i64, ptr %.phi.trans.insert38.i.i, align 8, !tbaa !105
  %.phi.trans.insert40.i.i = getelementptr i8, ptr %0, i64 64
  %.pre41.i.i = load i64, ptr %.phi.trans.insert40.i.i, align 8, !tbaa !105
  %.phi.trans.insert42.i.i = getelementptr i8, ptr %0, i64 72
  %.pre43.i.i = load i64, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !105
  %.phi.trans.insert44.i.i = getelementptr i8, ptr %0, i64 80
  %.pre45.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !tbaa !105
  %.phi.trans.insert46.i.i = getelementptr i8, ptr %0, i64 88
  %.pre47.i.i = load i64, ptr %.phi.trans.insert46.i.i, align 8, !tbaa !105
  %.phi.trans.insert48.i.i = getelementptr i8, ptr %0, i64 96
  %.pre49.i.i = load i64, ptr %.phi.trans.insert48.i.i, align 8, !tbaa !105
  %.phi.trans.insert50.i.i = getelementptr i8, ptr %0, i64 104
  %.pre51.i.i = load i64, ptr %.phi.trans.insert50.i.i, align 8, !tbaa !105
  br label %bb.ah

bb.ah:                                            ; preds = %mi_option_get.exit.i.i, %mi_commit_mask_any_set.exit.i.i
  %i.fn = phi i64 [ %.pre51.i.i, %mi_option_get.exit.i.i ], [ %i.ez, %mi_commit_mask_any_set.exit.i.i ]
  %i.fo = phi i64 [ %.pre49.i.i, %mi_option_get.exit.i.i ], [ %i.ew, %mi_commit_mask_any_set.exit.i.i ]
  %i.fp = phi i64 [ %.pre47.i.i, %mi_option_get.exit.i.i ], [ %i.et, %mi_commit_mask_any_set.exit.i.i ]
  %i.fq = phi i64 [ %.pre45.i.i, %mi_option_get.exit.i.i ], [ %i.eq, %mi_commit_mask_any_set.exit.i.i ]
  %i.fr = phi i64 [ %.pre43.i.i, %mi_option_get.exit.i.i ], [ %i.en, %mi_commit_mask_any_set.exit.i.i ]
  %i.fs = phi i64 [ %.pre41.i.i, %mi_option_get.exit.i.i ], [ %i.ek, %mi_commit_mask_any_set.exit.i.i ]
  %i.ft = phi i64 [ %.pre39.i.i, %mi_option_get.exit.i.i ], [ %i.eh, %mi_commit_mask_any_set.exit.i.i ]
  %i.fu = phi i64 [ %.pre37.i.i, %mi_option_get.exit.i.i ], [ %i.ee, %mi_commit_mask_any_set.exit.i.i ]
  %i.fv = xor i64 %i.bl, -1
  %i.fw = and i64 %i.fu, %i.fv
  store i64 %i.fw, ptr %i.ed, align 8, !tbaa !105
  %i.fx = xor i64 %i.bp, -1
  %i.fy = getelementptr i8, ptr %0, i64 56
  %i.fz = and i64 %i.ft, %i.fx
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !105
  %i.ga = xor i64 %i.bt, -1
  %i.gb = getelementptr i8, ptr %0, i64 64
  %i.gc = and i64 %i.fs, %i.ga
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !105
  %i.gd = xor i64 %i.bx, -1
  %i.ge = getelementptr i8, ptr %0, i64 72
  %i.gf = and i64 %i.fr, %i.gd
  store i64 %i.gf, ptr %i.ge, align 8, !tbaa !105
  %i.gg = xor i64 %i.aw, -1
  %i.gh = getelementptr i8, ptr %0, i64 80
  %i.gi = and i64 %i.fq, %i.gg
  store i64 %i.gi, ptr %i.gh, align 8, !tbaa !105
  %i.gj = xor i64 %i.ax, -1
  %i.gk = getelementptr i8, ptr %0, i64 88
  %i.gl = and i64 %i.fp, %i.gj
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !105
  %i.gm = xor i64 %i.az, -1
  %i.gn = getelementptr i8, ptr %0, i64 96
  %i.go = and i64 %i.fo, %i.gm
  store i64 %i.go, ptr %i.gn, align 8, !tbaa !105
  %i.gp = xor i64 %i.ec, -1
  %i.gq = getelementptr i8, ptr %0, i64 104
  %i.gr = and i64 %i.fn, %i.gp
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !105
  br label %mi_segment_ensure_committed.exit.thread2

mi_segment_ensure_committed.exit.thread2:         ; preds = %bb.ah, %mi_commit_mask_is_empty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %mi_segment_ensure_committed.exit.thread

mi_segment_ensure_committed.exit:                 ; preds = %_mi_stat_decrease.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ak

mi_segment_ensure_committed.exit.thread:          ; preds = %mi_commit_mask_is_empty.exit.i, %mi_segment_ensure_committed.exit.thread2
  %i.gs = getelementptr i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gs, align 4, !tbaa !59
  %i.gt = trunc i64 %2 to i32
  store i32 %i.gt, ptr %i.e, align 8, !tbaa !52
  %i.gu = call i64 @llvm.umin.i64(i64 %i.j, i64 2147483648)
  %i.gv = trunc nuw i64 %i.gu to i32
  %i.gw = getelementptr i8, ptr %i.e, i64 28
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !21
  %i.gx = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gx, i64 255) ; 2 uses
  %i.gy = add i64 %spec.store.select, %1
  %i.gz = getelementptr i8, ptr %0, i64 248
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !285 ; 3 uses
  %.not = icmp ult i64 %i.gy, %i.ha
  %i.hb = xor i64 %1, -1
  %i.hc = add i64 %i.ha, %i.hb
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.hc ; 2 uses
  %.not554 = icmp eq i64 %.049, 0
  br i1 %.not554, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_segment_ensure_committed.exit.thread
  %i.hd = add i64 %.049, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.hd, i64 2) ; 2 uses
  %6 = add i64 %umax, -1                          ; 2 uses
  %i.he = add i64 %umax, -2
  %xtraiter = and i64 %6, 3                       ; 3 uses
  %i.hf = icmp ult i64 %i.he, 3
  br i1 %i.hf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %6, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0476.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ij, %._crit_edge.loopexit.unr-lcssa ]
  %.pn5.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0476.epil = phi i64 [ %i.hk, %.lr.ph.epil ], [ %.0476.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn5.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn5.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr i8, ptr %.pn5.epil, i64 80 ; 2 uses
  %i.hg = trunc i64 %.0476.epil to i32
  %i.hh = mul i32 %i.hg, 80
  %i.hi = getelementptr i8, ptr %.pn5.epil, i64 84
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !59
  store i32 0, ptr %.048.epil, align 8, !tbaa !52
  %i.hj = getelementptr i8, ptr %.pn5.epil, i64 108
  store i32 1, ptr %i.hj, align 4, !tbaa !21
  %i.hk = add nuw i64 %.0476.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !644

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mi_segment_ensure_committed.exit.thread
  %i.hl = getelementptr [80 x i8], ptr %i.e, i64 %2
  %i.hm = getelementptr i8, ptr %i.hl, i64 -80    ; 2 uses
  %i.hn = getelementptr [80 x i8], ptr %i.d, i64 %i.ha ; 2 uses
  %i.ho = icmp ugt ptr %i.hm, %i.hn
  %spec.select = select i1 %i.ho, ptr %i.hn, ptr %i.hm ; 5 uses
  %i.hp = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hp, label %bb.ai, label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0476 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ij, %.lr.ph ] ; 5 uses
  %.pn5 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr i8, ptr %.pn5, i64 80
  %i.hq = trunc i64 %.0476 to i32
  %i.hr = mul i32 %i.hq, 80
  %i.hs = getelementptr i8, ptr %.pn5, i64 84
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !59
  store i32 0, ptr %.048, align 8, !tbaa !52
  %i.ht = getelementptr i8, ptr %.pn5, i64 108
  store i32 1, ptr %i.ht, align 4, !tbaa !21
  %.048.1 = getelementptr i8, ptr %.pn5, i64 160
  %i.hu = trunc i64 %.0476 to i32
  %i.hv = mul i32 %i.hu, 80
  %i.hw = add i32 %i.hv, 80
  %i.hx = getelementptr i8, ptr %.pn5, i64 164
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !59
  store i32 0, ptr %.048.1, align 8, !tbaa !52
  %i.hy = getelementptr i8, ptr %.pn5, i64 188
  store i32 1, ptr %i.hy, align 4, !tbaa !21
  %.048.2 = getelementptr i8, ptr %.pn5, i64 240
  %i.hz = trunc i64 %.0476 to i32
  %i.ia = mul i32 %i.hz, 80
  %i.ib = add i32 %i.ia, 160
  %i.ic = getelementptr i8, ptr %.pn5, i64 244
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !59
  store i32 0, ptr %.048.2, align 8, !tbaa !52
  %i.id = getelementptr i8, ptr %.pn5, i64 268
  store i32 1, ptr %i.id, align 4, !tbaa !21
  %.048.3 = getelementptr i8, ptr %.pn5, i64 320  ; 3 uses
  %i.ie = trunc i64 %.0476 to i32
  %i.if = mul i32 %i.ie, 80
  %i.ig = add i32 %i.if, 240
  %i.ih = getelementptr i8, ptr %.pn5, i64 324
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !59
  store i32 0, ptr %.048.3, align 8, !tbaa !52
  %i.ii = getelementptr i8, ptr %.pn5, i64 348
  store i32 1, ptr %i.ii, align 4, !tbaa !21
  %i.ij = add nuw i64 %.0476, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !645

bb.ai:                                            ; preds = %._crit_edge
  %i.ik = ptrtoint ptr %spec.select to i64
  %i.il = sub i64 %i.ik, %i.f
  %i.im = trunc i64 %i.il to i32
  %i.in = getelementptr i8, ptr %spec.select, i64 4
  store i32 %i.im, ptr %i.in, align 4, !tbaa !59
  store i32 0, ptr %spec.select, align 8, !tbaa !52
  %i.io = getelementptr i8, ptr %spec.select, i64 28
  store i32 1, ptr %i.io, align 4, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.ip = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 8
  %i.ir = or i8 %i.iq, 1
  store i8 %i.ir, ptr %i.ip, align 8
  %i.is = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !67
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !67
  br label %bb.ak

bb.ak:                                            ; preds = %mi_segment_ensure_committed.exit, %bb.aj
  %.050 = phi ptr [ %i.e, %bb.aj ], [ null, %mi_segment_ensure_committed.exit ]
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal void @mi_buffered_out(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !60      ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %1, i64 16         ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !646  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !330
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %mi_buffered_flush.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.l = getelementptr i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !60
  %i.m = load ptr, ptr %1, align 8, !tbaa !327    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !331  ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = icmp eq ptr %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = icmp eq ptr %i.m, %i.r
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.s
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.t, label %bb.e, label %mi_buffered_flush.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic ptr, ptr @mi_out_arg acquire, align 8
  %i.v = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @mi_out_buf, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u) #55, !inline_history !647
  tail call fastcc void @mi_recurse_exit_prim()
  br label %mi_buffered_flush.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !329
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y) #55, !inline_history !647
  br label %mi_buffered_flush.exit

mi_buffered_flush.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !646
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !60
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %mi_buffered_flush.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.af = load i64, ptr %i.d, align 8, !tbaa !646
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !60
  %i.ah = load ptr, ptr %1, align 8, !tbaa !327   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !331 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, null
  %i.ak = load ptr, ptr @stdout, align 8
  %i.al = icmp eq ptr %i.ah, %i.ak
  %or.cond.i.i19 = select i1 %i.aj, i1 true, i1 %i.al
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = icmp eq ptr %i.ah, %i.am
  %or.cond17.i.i20 = select i1 %or.cond.i.i19, i1 true, i1 %i.an
  br i1 %or.cond17.i.i20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.ao, label %bb.i, label %mi_buffered_flush.exit21
end_hunk_0
