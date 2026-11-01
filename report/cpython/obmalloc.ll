Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_segment_span_allocate:bb.a
  %i.eg = load <2 x i64>, ptr %i.eb, align 8, !tbaa !128
  %i.eh = and i64 %i.ef, %i.bn
  %.not.1.not.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.1.not.i.i.i, label %bb.ab, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !128
  %i.ek = and i64 %i.ej, %i.br
  %.not.2.not.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.2.not.i.i.i, label %bb.ac, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr i8, ptr %0, i64 72
  %i.em = load i64, ptr %i.el, align 8, !tbaa !128
  %i.en = load <2 x i64>, ptr %i.ei, align 8, !tbaa !128
  %i.eo = and i64 %i.em, %i.bv
  %.not.3.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.3.not.i.i.i, label %bb.ad, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !128
  %i.er = and i64 %i.eq, %i.aw
  %.not.4.not.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.4.not.i.i.i, label %bb.ae, label %mi_commit_mask_any_set.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr i8, ptr %0, i64 88
  %i.et = load i64, ptr %i.es, align 8, !tbaa !128
  %i.eu = load <2 x i64>, ptr %i.ep, align 8, !tbaa !128
  %i.ev = and i64 %i.et, %i.ax
  %.not.5.not.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.5.not.i.i.i, label %bb.af, label %mi_commit_mask_any_set.exit.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr i8, ptr %0, i64 96
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !128 ; 2 uses
  %i.ey = and i64 %i.ex, %i.az
  %.not.6.not.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.6.not.i.i.i, label %mi_commit_mask_any_set.exit.i.i, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.i.i:                  ; preds = %bb.af
  %i.ez = getelementptr i8, ptr %0, i64 104
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !128 ; 2 uses
  %i.fb = and i64 %i.fa, %i.ea
  %.not.7.not.i.not.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ah, label %mi_commit_mask_any_set.exit.thread.i.i

mi_commit_mask_any_set.exit.thread.i.i:           ; preds = %mi_commit_mask_any_set.exit.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.fc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #52 ; 0 uses
  %i.fd = load i64, ptr %3, align 8, !tbaa !153
  %i.fe = mul i64 %i.fd, 1000
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !154
  %i.fh = sdiv i64 %i.fg, 1000000
  %i.fi = add i64 %i.fh, %i.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !133
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ag, label %mi_option_get.exit.i.i, !prof !61

bb.ag:                                            ; preds = %mi_commit_mask_any_set.exit.thread.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !134
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ag, %mi_commit_mask_any_set.exit.thread.i.i
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !135
  %i.fm = add i64 %i.fi, %i.fl
  %i.fn = getelementptr i8, ptr %0, i64 40
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !206
  %i.fo = load <2 x i64>, ptr %i.eb, align 8, !tbaa !128
  %.phi.trans.insert40.i.i = getelementptr i8, ptr %0, i64 64
  %i.fp = load <2 x i64>, ptr %.phi.trans.insert40.i.i, align 8, !tbaa !128
  %.phi.trans.insert44.i.i = getelementptr i8, ptr %0, i64 80
  %i.fq = load <2 x i64>, ptr %.phi.trans.insert44.i.i, align 8, !tbaa !128
  %.phi.trans.insert48.i.i = getelementptr i8, ptr %0, i64 96
  %.pre49.i.i = load i64, ptr %.phi.trans.insert48.i.i, align 8, !tbaa !128
  %.phi.trans.insert50.i.i = getelementptr i8, ptr %0, i64 104
  %.pre51.i.i = load i64, ptr %.phi.trans.insert50.i.i, align 8, !tbaa !128
  br label %bb.ah

bb.ah:                                            ; preds = %mi_option_get.exit.i.i, %mi_commit_mask_any_set.exit.i.i
  %i.fr = phi i64 [ %.pre51.i.i, %mi_option_get.exit.i.i ], [ %i.fa, %mi_commit_mask_any_set.exit.i.i ]
  %i.fs = phi i64 [ %.pre49.i.i, %mi_option_get.exit.i.i ], [ %i.ex, %mi_commit_mask_any_set.exit.i.i ]
  %i.ft = phi <2 x i64> [ %i.fo, %mi_option_get.exit.i.i ], [ %i.eg, %mi_commit_mask_any_set.exit.i.i ]
  %i.fu = phi <2 x i64> [ %i.fp, %mi_option_get.exit.i.i ], [ %i.en, %mi_commit_mask_any_set.exit.i.i ]
  %i.fv = phi <2 x i64> [ %i.fq, %mi_option_get.exit.i.i ], [ %i.eu, %mi_commit_mask_any_set.exit.i.i ]
  %i.fw = xor <2 x i64> %i.aq, splat (i64 -1)
  %i.fx = and <2 x i64> %i.ft, %i.fw
  store <2 x i64> %i.fx, ptr %i.eb, align 8, !tbaa !128
  %i.fy = xor <2 x i64> %i.as, splat (i64 -1)
  %i.fz = getelementptr i8, ptr %0, i64 64
  %i.ga = and <2 x i64> %i.fu, %i.fy
  store <2 x i64> %i.ga, ptr %i.fz, align 8, !tbaa !128
  %i.gb = xor <2 x i64> %i.av, splat (i64 -1)
  %i.gc = getelementptr i8, ptr %0, i64 80
  %i.gd = and <2 x i64> %i.fv, %i.gb
  store <2 x i64> %i.gd, ptr %i.gc, align 8, !tbaa !128
  %i.ge = xor i64 %i.az, -1
  %i.gf = getelementptr i8, ptr %0, i64 96
  %i.gg = and i64 %i.fs, %i.ge
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !128
  %i.gh = xor i64 %i.ea, -1
  %i.gi = getelementptr i8, ptr %0, i64 104
  %i.gj = and i64 %i.fr, %i.gh
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !128
  br label %mi_segment_ensure_committed.exit.thread2

mi_segment_ensure_committed.exit.thread2:         ; preds = %bb.ah, %mi_commit_mask_is_empty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %mi_segment_ensure_committed.exit.thread

mi_segment_ensure_committed.exit:                 ; preds = %_mi_stat_decrease.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.ak

mi_segment_ensure_committed.exit.thread:          ; preds = %mi_commit_mask_is_empty.exit.i, %mi_segment_ensure_committed.exit.thread2
  %i.gk = getelementptr i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gk, align 4, !tbaa !100
  %i.gl = trunc i64 %2 to i32
  store i32 %i.gl, ptr %i.e, align 8, !tbaa !93
  %i.gm = call i64 @llvm.umin.i64(i64 %i.j, i64 2147483648)
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = getelementptr i8, ptr %i.e, i64 28
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !65
  %i.gp = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gp, i64 255) ; 2 uses
  %i.gq = add i64 %spec.store.select, %1
  %i.gr = getelementptr i8, ptr %0, i64 248
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !195 ; 3 uses
  %.not = icmp ult i64 %i.gq, %i.gs
  %i.gt = xor i64 %1, -1
  %i.gu = add i64 %i.gs, %i.gt
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gu ; 2 uses
  %.not554 = icmp eq i64 %.049, 0
  br i1 %.not554, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_segment_ensure_committed.exit.thread
  %i.gv = add i64 %.049, 1                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gv, i64 2)
  %i.gw = add i64 %umax, -1                       ; 2 uses
  %xtraiter = and i64 %i.gw, 3                    ; 3 uses
  %i.gx = icmp ult i64 %i.gv, 5
  br i1 %i.gx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gw, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0476.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ib, %._crit_edge.loopexit.unr-lcssa ]
  %.pn5.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0476.epil = phi i64 [ %i.hc, %.lr.ph.epil ], [ %.0476.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn5.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn5.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr i8, ptr %.pn5.epil, i64 80 ; 2 uses
  %i.gy = trunc i64 %.0476.epil to i32
  %i.gz = mul i32 %i.gy, 80
  %i.ha = getelementptr i8, ptr %.pn5.epil, i64 84
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !100
  store i32 0, ptr %.048.epil, align 8, !tbaa !93
  %i.hb = getelementptr i8, ptr %.pn5.epil, i64 108
  store i32 1, ptr %i.hb, align 4, !tbaa !65
  %i.hc = add nuw i64 %.0476.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !652

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mi_segment_ensure_committed.exit.thread
  %i.hd = getelementptr [80 x i8], ptr %i.e, i64 %2
  %i.he = getelementptr i8, ptr %i.hd, i64 -80    ; 2 uses
  %i.hf = getelementptr [80 x i8], ptr %i.d, i64 %i.gs ; 2 uses
  %i.hg = icmp ugt ptr %i.he, %i.hf
  %spec.select = select i1 %i.hg, ptr %i.hf, ptr %i.he ; 5 uses
  %i.hh = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hh, label %bb.ai, label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0476 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ib, %.lr.ph ] ; 5 uses
  %.pn5 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr i8, ptr %.pn5, i64 80
  %i.hi = trunc i64 %.0476 to i32
  %i.hj = mul nsw i32 %i.hi, 80
  %i.hk = getelementptr i8, ptr %.pn5, i64 84
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !100
  store i32 0, ptr %.048, align 8, !tbaa !93
  %i.hl = getelementptr i8, ptr %.pn5, i64 108
  store i32 1, ptr %i.hl, align 4, !tbaa !65
  %.048.1 = getelementptr i8, ptr %.pn5, i64 160
  %i.hm = trunc i64 %.0476 to i32
  %i.hn = mul i32 %i.hm, 80
  %i.ho = add i32 %i.hn, 80
  %i.hp = getelementptr i8, ptr %.pn5, i64 164
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !100
  store i32 0, ptr %.048.1, align 8, !tbaa !93
  %i.hq = getelementptr i8, ptr %.pn5, i64 188
  store i32 1, ptr %i.hq, align 4, !tbaa !65
  %.048.2 = getelementptr i8, ptr %.pn5, i64 240
  %i.hr = trunc i64 %.0476 to i32
  %i.hs = mul i32 %i.hr, 80
  %i.ht = add i32 %i.hs, 160
  %i.hu = getelementptr i8, ptr %.pn5, i64 244
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !100
  store i32 0, ptr %.048.2, align 8, !tbaa !93
  %i.hv = getelementptr i8, ptr %.pn5, i64 268
  store i32 1, ptr %i.hv, align 4, !tbaa !65
  %.048.3 = getelementptr i8, ptr %.pn5, i64 320  ; 3 uses
  %i.hw = trunc i64 %.0476 to i32
  %i.hx = mul i32 %i.hw, 80
  %i.hy = add i32 %i.hx, 240
  %i.hz = getelementptr i8, ptr %.pn5, i64 324
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !100
  store i32 0, ptr %.048.3, align 8, !tbaa !93
  %i.ia = getelementptr i8, ptr %.pn5, i64 348
  store i32 1, ptr %i.ia, align 4, !tbaa !65
  %i.ib = add nuw i64 %.0476, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !653

bb.ai:                                            ; preds = %._crit_edge
  %i.ic = ptrtoint ptr %spec.select to i64
  %i.id = sub i64 %i.ic, %i.f
  %i.ie = trunc i64 %i.id to i32
  %i.if = getelementptr i8, ptr %spec.select, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !100
  store i32 0, ptr %spec.select, align 8, !tbaa !93
  %i.ig = getelementptr i8, ptr %spec.select, i64 28
  store i32 1, ptr %i.ig, align 4, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.ih = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = or i8 %i.ii, 1
  store i8 %i.ij, ptr %i.ih, align 8
  %i.ik = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !112
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !112
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
  %i.c = load i8, ptr %0, align 1, !tbaa !101     ; 2 uses
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !656  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !214
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %mi_buffered_flush.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.l = getelementptr i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !101
  %i.m = load ptr, ptr %1, align 8, !tbaa !212    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !215  ; 2 uses
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
  %i.v = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !84 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @mi_out_buf, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u) #52, !inline_history !654
  tail call fastcc void @mi_recurse_exit_prim()
  br label %mi_buffered_flush.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !213
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y) #52, !inline_history !654
  br label %mi_buffered_flush.exit

mi_buffered_flush.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !656
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !101
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %mi_buffered_flush.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.af = load i64, ptr %i.d, align 8, !tbaa !656
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !101
  %i.ah = load ptr, ptr %1, align 8, !tbaa !212   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !215 ; 2 uses
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

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic ptr, ptr @mi_out_arg acquire, align 8
  %i.aq = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !84 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %i.ar, ptr @mi_out_buf, ptr %i.aq
  tail call void %i.as(ptr noundef %i.ai, ptr noundef %i.ap) #52, !inline_history !654
  tail call fastcc void @mi_recurse_exit_prim()
  br label %mi_buffered_flush.exit21

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !213
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.at) #52, !inline_history !654
  br label %mi_buffered_flush.exit21

mi_buffered_flush.exit21:                         ; preds = %bb.h, %bb.i, %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !656
  br label %bb.k

bb.k:                                             ; preds = %mi_buffered_flush.exit21, %mi_buffered_flush.exit
  %i.au = getelementptr i8, ptr %.023, i64 1      ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !101 ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !655

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_stat_print_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef %1)
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  tail call fastcc void @mi_printf_amount(i64 noundef %i.d, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.e = load i64, ptr %0, align 8, !tbaa !146
  tail call fastcc void @mi_printf_amount(i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147
  tail call fastcc void @mi_printf_amount(i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
end_hunk_0
