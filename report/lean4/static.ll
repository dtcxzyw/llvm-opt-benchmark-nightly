Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL24mi_segment_span_allocateP12mi_segment_smm:bb.a
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !170
  %i.ff = sdiv i64 %i.fe, 1000000
  %i.fg = add nsw i64 %i.ff, %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ad, label %mi_option_get.exit.i.i, !prof !61

bb.ad:                                            ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ad, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.fj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.fk = add nsw i64 %i.fg, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !220
  %i.fm = load <2 x i64>, ptr %i.dz, align 8, !tbaa !98
  %.phi.trans.insert39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fn = load <2 x i64>, ptr %.phi.trans.insert39.i.i, align 8, !tbaa !98
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load <2 x i64>, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !98
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre48.i.i = load i64, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !98
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre50.i.i = load i64, ptr %.phi.trans.insert49.i.i, align 8, !tbaa !98
  br label %bb.ae

bb.ae:                                            ; preds = %mi_option_get.exit.i.i, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.fp = phi i64 [ %.pre50.i.i, %mi_option_get.exit.i.i ], [ %i.ey, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fq = phi i64 [ %.pre48.i.i, %mi_option_get.exit.i.i ], [ %i.ev, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fr = phi <2 x i64> [ %i.fm, %mi_option_get.exit.i.i ], [ %i.ee, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fs = phi <2 x i64> [ %i.fn, %mi_option_get.exit.i.i ], [ %i.el, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.ft = phi <2 x i64> [ %i.fo, %mi_option_get.exit.i.i ], [ %i.es, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fu = xor <2 x i64> %i.ap, splat (i64 -1)
  %i.fv = and <2 x i64> %i.fr, %i.fu
  store <2 x i64> %i.fv, ptr %i.dz, align 8, !tbaa !98
  %i.fw = xor <2 x i64> %i.ar, splat (i64 -1)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fy = and <2 x i64> %i.fs, %i.fw
  store <2 x i64> %i.fy, ptr %i.fx, align 8, !tbaa !98
  %i.fz = xor <2 x i64> %i.au, splat (i64 -1)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gb = and <2 x i64> %i.ft, %i.fz
  store <2 x i64> %i.gb, ptr %i.ga, align 8, !tbaa !98
  %i.gc = xor i64 %i.ay, -1
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ge = and i64 %i.fq, %i.gc
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !98
  %i.gf = xor i64 %i.dy, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gh = and i64 %i.fp, %i.gf
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !98
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57: ; preds = %bb.ae, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit: ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ah

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread: ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gi, align 4, !tbaa !67
  %i.gj = trunc i64 %2 to i32
  store i32 %i.gj, ptr %i.e, align 8, !tbaa !140
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.i, ptr %i.gk, align 8, !tbaa !62
  %i.gl = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gl, i64 255) ; 2 uses
  %i.gm = add i64 %spec.store.select, %1
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !139 ; 3 uses
  %.not = icmp ult i64 %i.gm, %i.go
  %i.gp = xor i64 %1, -1
  %i.gq = add i64 %i.go, %i.gp
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gq ; 2 uses
  %.not5559 = icmp eq i64 %.049, 0
  br i1 %.not5559, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.gr = add i64 %.049, 1                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gr, i64 2)
  %i.gs = add i64 %umax, -1                       ; 2 uses
  %xtraiter = and i64 %i.gs, 3                    ; 3 uses
  %i.gt = icmp ult i64 %i.gr, 5
  br i1 %i.gt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gs, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04761.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.hx, %._crit_edge.loopexit.unr-lcssa ]
  %.pn60.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04761.epil = phi i64 [ %i.gy, %.lr.ph.epil ], [ %.04761.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn60.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn60.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 96 ; 2 uses
  %i.gu = trunc i64 %.04761.epil to i32
  %i.gv = mul i32 %i.gu, 96
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 100
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !67
  store i32 0, ptr %.048.epil, align 8, !tbaa !140
  %i.gx = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 136
  store i64 1, ptr %i.gx, align 8, !tbaa !62
  %i.gy = add nuw i64 %.04761.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !397

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.gz = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %2
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -96 ; 2 uses
  %i.hb = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.go ; 2 uses
  %i.hc = icmp ugt ptr %i.ha, %i.hb
  %spec.select = select i1 %i.hc, ptr %i.hb, ptr %i.ha ; 5 uses
  %i.hd = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hd, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04761 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.hx, %.lr.ph ] ; 5 uses
  %.pn60 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr inbounds nuw i8, ptr %.pn60, i64 96
  %i.he = trunc i64 %.04761 to i32
  %i.hf = mul i32 %i.he, 96
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn60, i64 100
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !67
  store i32 0, ptr %.048, align 8, !tbaa !140
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn60, i64 136
  store i64 1, ptr %i.hh, align 8, !tbaa !62
  %.048.1 = getelementptr inbounds nuw i8, ptr %.pn60, i64 192
  %i.hi = trunc i64 %.04761 to i32
  %i.hj = mul i32 %i.hi, 96
  %i.hk = add i32 %i.hj, 96
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn60, i64 196
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !67
  store i32 0, ptr %.048.1, align 8, !tbaa !140
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn60, i64 232
  store i64 1, ptr %i.hm, align 8, !tbaa !62
  %.048.2 = getelementptr inbounds nuw i8, ptr %.pn60, i64 288
  %i.hn = trunc i64 %.04761 to i32
  %i.ho = mul i32 %i.hn, 96
  %i.hp = add i32 %i.ho, 192
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn60, i64 292
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !67
  store i32 0, ptr %.048.2, align 8, !tbaa !140
  %i.hr = getelementptr inbounds nuw i8, ptr %.pn60, i64 328
  store i64 1, ptr %i.hr, align 8, !tbaa !62
  %.048.3 = getelementptr inbounds nuw i8, ptr %.pn60, i64 384 ; 3 uses
  %i.hs = trunc i64 %.04761 to i32
  %i.ht = mul i32 %i.hs, 96
  %i.hu = add i32 %i.ht, 288
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn60, i64 388
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !67
  store i32 0, ptr %.048.3, align 8, !tbaa !140
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn60, i64 424
  store i64 1, ptr %i.hw, align 8, !tbaa !62
  %i.hx = add nuw i64 %.04761, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !398

bb.af:                                            ; preds = %._crit_edge
  %i.hy = ptrtoint ptr %spec.select to i64
  %i.hz = sub i64 %i.hy, %i.f
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !67
  store i32 0, ptr %spec.select, align 8, !tbaa !140
  %i.ic = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 1, ptr %i.ic, align 8, !tbaa !62
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !225
  %i.ih = icmp eq i32 %i.ig, 1
  %i.ii = select i1 %i.ih, i8 4, i8 0
  %i.ij = and i8 %i.ie, -6
  %i.ik = or disjoint i8 %i.ij, 1
  %i.il = or disjoint i8 %i.ii, %i.ik
  store i8 %i.il, ptr %i.id, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !193
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.im, align 8, !tbaa !193
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit, %bb.ag
  %.050 = phi ptr [ %i.e, %bb.ag ], [ null, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit ]
  ret ptr %.050
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15mi_buffered_outPKcPv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !69      ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !401  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !237
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %_ZL17mi_buffered_flushP10buffered_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !69
  %i.m = load ptr, ptr %1, align 8, !tbaa !235    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !238  ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = icmp eq ptr %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = icmp eq ptr %i.m, %i.r
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.s
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.t, label %bb.e, label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.v = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !96 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @_ZL10mi_out_bufPKcPv, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u), !inline_history !399
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !236
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y), !inline_history !399
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

_ZL17mi_buffered_flushP10buffered_s.exit:         ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !401
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !69
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.af = load i64, ptr %i.d, align 8, !tbaa !401
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !69
  %i.ah = load ptr, ptr %1, align 8, !tbaa !235   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !238 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, null
  %i.ak = load ptr, ptr @stdout, align 8
  %i.al = icmp eq ptr %i.ah, %i.ak
  %or.cond.i.i19 = select i1 %i.aj, i1 true, i1 %i.al
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = icmp eq ptr %i.ah, %i.am
  %or.cond17.i.i20 = select i1 %or.cond.i.i19, i1 true, i1 %i.an
  br i1 %or.cond17.i.i20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.ao, label %bb.i, label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.aq = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !96 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %i.ar, ptr @_ZL10mi_out_bufPKcPv, ptr %i.aq
  tail call void %i.as(ptr noundef %i.ai, ptr noundef %i.ap), !inline_history !399
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !236
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.at), !inline_history !399
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

_ZL17mi_buffered_flushP10buffered_s.exit21:       ; preds = %bb.h, %bb.i, %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !401
  br label %bb.k

bb.k:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit21, %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !69  ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !400

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_stat_print_exPK15mi_stat_count_sPKclPFvS3_PvES4_S3_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.210, ptr noundef %1)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.g = load i64, ptr %0, align 8, !tbaa !167
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.h = load i64, ptr %i.f, align 8, !tbaa !165
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.h, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i8 0, ptr %i.b, align 16, !tbaa !69
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.215)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.i = load i64, ptr %0, align 8, !tbaa !167
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.i, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.j = load i64, ptr %i.f, align 8, !tbaa !165
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.j, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.k = icmp eq i64 %2, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.11)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 16, !tbaa !69
  %i.l = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.219, i64 noundef 0, ptr noundef nonnull @.str.11) ; 0 uses
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef poison, i64 noundef 0, ptr noundef nonnull %3, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %.not66 = icmp eq i64 %i.n, 0
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.14)
  %i.o = icmp eq ptr %4, null
  %i.p = select i1 %i.o, ptr @.str.212, ptr %4
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull %i.p)
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.202)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.213)
  br label %bb.k

end_hunk_0
