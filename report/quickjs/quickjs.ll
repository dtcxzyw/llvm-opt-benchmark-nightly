Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@js_bigint_to_string1:bb.a
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !197
  %i.em = add i64 %i.el, -1
  %i.en = icmp ugt i64 %i.ej, %i.em
  br i1 %i.en, label %bb.ai, label %bb.ad, !prof !192

bb.ad:                                            ; preds = %bb.ac
  %i.eo = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ee, i64 noundef %i.ec), !inline_history !791 ; 8 uses
  %.not.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.ae

._crit_edge:                                      ; preds = %bb.ad
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !232
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load i64, ptr %i.eg, align 8, !tbaa !217
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !217
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 3 uses
  %i.es = load i16, ptr %i.er, align 8, !tbaa !218
  %i.et = icmp eq i16 %i.es, -1
  br i1 %i.et, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 1064
  %i.ev = icmp eq ptr %i.er, %i.eu
  br i1 %i.ev, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !219
  %i.ey = tail call i64 %i.ex(ptr noundef nonnull %i.er) #49, !inline_history !143 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ey, 0
  %i.ez = select i1 %.not15.i.i.i, i64 8, i64 %i.ey
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.fa = getelementptr inbounds i8, ptr %i.eo, i64 -6
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !218
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !221
  %i.ff = zext i16 %i.fe to i64
  br label %bb.ak

bb.ai:                                            ; preds = %._crit_edge, %bb.ac, %bb.ab
  %i.fg = phi ptr [ %.pre, %._crit_edge ], [ %i.ee, %bb.ac ], [ %i.ee, %bb.ab ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1256 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !233, !range !234, !noundef !235
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %js_bigint_new.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %i.fh, align 8, !tbaa !233
  %i.fk = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !792 ; 0 uses
  store i8 0, ptr %i.fh, align 8, !tbaa !233
  br label %js_bigint_new.exit.thread

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %.011.i.i.i = phi i64 [ 8, %bb.af ], [ %i.ez, %bb.ag ], [ %i.ff, %bb.ah ]
  %i.fl = load i64, ptr %i.eh, align 8, !tbaa !196
  %i.fm = add i64 %i.fl, %.011.i.i.i
  store i64 %i.fm, ptr %i.eh, align 8, !tbaa !196
  %i.fn = getelementptr inbounds i8, ptr %i.eo, i64 -4
  store i32 1, ptr %i.fn, align 4, !tbaa !191
  store i32 %i.az, ptr %i.eo, align 8, !tbaa !191
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.fp = load i32, ptr %i.ay, align 4, !tbaa !191
  %i.fq = zext i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr nonnull align 4 %i.dq, i64 %i.fr, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge253, %bb.y, %bb.ak
  %.pre-phi265 = phi i64 [ %.pre264, %._crit_edge253 ], [ %i.ds, %bb.y ], [ %i.ds, %bb.ak ]
  %i.fs = phi i32 [ %.pre254, %._crit_edge253 ], [ %i.az, %bb.y ], [ %i.az, %bb.ak ]
  %.0109 = phi ptr [ %i.dx, %._crit_edge253 ], [ %i.ay, %bb.y ], [ %i.eo, %bb.ak ] ; 4 uses
  %.0108 = phi ptr [ %i.dx, %._crit_edge253 ], [ null, %bb.y ], [ %i.eo, %bb.ak ] ; 2 uses
  %i.ft = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %3, i1 true) ; 2 uses
  %i.fu = xor i32 %i.ft, 31                       ; 3 uses
  %i.fv = shl i32 %i.fs, 5
  %i.fw = getelementptr inbounds nuw i8, ptr %.0109, i64 4 ; 8 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.pre-phi265
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !191
  %i.fz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fy, i1 false)
  %i.ga = or disjoint i32 %i.fv, 30
  %i.gb = add nuw nsw i32 %i.ft, %i.fz
  %i.gc = sub i32 %i.ga, %i.gb
  %i.gd = sdiv i32 %i.gc, %i.fu                   ; 4 uses
  %i.ge = add nuw nsw i32 %i.dv, 1
  %i.gf = add i32 %i.ge, %i.gd                    ; 2 uses
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !232 ; 8 uses
  %i.gj = icmp eq i32 %i.gf, 0
  br i1 %i.gj, label %bb.as, label %bb.am, !prof !192

bb.am:                                            ; preds = %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 48 ; 3 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !196
  %i.gn = add i64 %i.gm, %i.gg
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !197
  %i.gq = add i64 %i.gp, -1
  %i.gr = icmp ugt i64 %i.gn, %i.gq
  br i1 %i.gr, label %bb.as, label %bb.an, !prof !192

bb.an:                                            ; preds = %bb.am
  %i.gs = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.gi, i64 noundef %i.gg) ; 5 uses
  %.not.i176 = icmp eq ptr %i.gs, null
  br i1 %.not.i176, label %._crit_edge257, label %bb.ao

._crit_edge257:                                   ; preds = %bb.an
  %.pre258 = load ptr, ptr %i.gh, align 8, !tbaa !232
  br label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.gt = load i64, ptr %i.gk, align 8, !tbaa !217
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.gk, align 8, !tbaa !217
  %i.gv = getelementptr inbounds i8, ptr %i.gs, i64 -8 ; 3 uses
  %i.gw = load i16, ptr %i.gv, align 8, !tbaa !218
  %i.gx = icmp eq i16 %i.gw, -1
  br i1 %i.gx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 1064
  %i.gz = icmp eq ptr %i.gv, %i.gy
  br i1 %i.gz, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !219
  %i.hc = tail call i64 %i.hb(ptr noundef nonnull %i.gv) #49, !inline_history !12 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.hc, 0
  %i.hd = select i1 %.not15.i.i, i64 8, i64 %i.hc
  br label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds i8, ptr %i.gs, i64 -6
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !218
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !221
  %i.hj = zext i16 %i.hi to i64
  br label %bb.av

bb.as:                                            ; preds = %._crit_edge257, %bb.am, %bb.al
  %i.hk = phi ptr [ %.pre258, %._crit_edge257 ], [ %i.gi, %bb.am ], [ %i.gi, %bb.al ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1256 ; 3 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !233, !range !234, !noundef !235
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.hl, align 8, !tbaa !233
  %i.ho = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !309 ; 0 uses
  store i8 0, ptr %i.hl, align 8, !tbaa !233
  %.pre259 = load ptr, ptr %i.gh, align 8, !tbaa !232
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.hp = phi ptr [ %i.hk, %bb.as ], [ %.pre259, %bb.at ]
  tail call void @js_free_rt(ptr noundef %i.hp, ptr noundef %.0108)
  br label %js_bigint_new.exit.thread

bb.av:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %.011.i.i = phi i64 [ 8, %bb.ap ], [ %i.hd, %bb.aq ], [ %i.hj, %bb.ar ]
  %i.hq = load i64, ptr %i.gl, align 8, !tbaa !196
  %i.hr = add i64 %i.hq, %.011.i.i
  store i64 %i.hr, ptr %i.gl, align 8, !tbaa !196
  %i.hs = sext i32 %i.gd to i64
  %i.ht = getelementptr inbounds i8, ptr %i.gs, i64 %i.hs
  %i.hu = zext nneg i32 %i.dv to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu ; 5 uses
  store i8 0, ptr %i.hv, align 1, !tbaa !218
  br i1 %i.dp, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.av
  %invariant.op = sub nuw nsw i32 32, %i.fu
  %i.hw = icmp sgt i32 %i.gd, 0
  br i1 %i.hw, label %.lr.ph239, label %js_u64toa.exit

bb.aw:                                            ; preds = %bb.av
  %i.hx = add nsw i32 %3, -2
  %i.hy = zext nneg i32 %i.hx to i64              ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @js_radix_base_table, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !191 ; 4 uses
  %i.ib = load i32, ptr %.0109, align 4, !tbaa !191
  %i.ic = zext i32 %i.ia to i64                   ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr @js_digits_per_limb_table, i64 %i.hy
  %i.ie = icmp eq i32 %3, 10                      ; 2 uses
  br label %js_limb_to_a.exit

js_limb_to_a.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph30.i
  %lcmp.mod331.not = icmp eq i32 %xtraiter329, 0
  br i1 %lcmp.mod331.not, label %js_limb_to_a.exit.backedge, label %.lr.ph30.i.epil.preheader

.lr.ph30.i.epil.preheader:                        ; preds = %js_limb_to_a.exit.loopexit.unr-lcssa
  %i.if = urem i32 %i.la, 10
  %i.ig = trunc nuw nsw i32 %i.if to i8
  %i.ih = or disjoint i8 %i.ig, 48
  %i.ii = getelementptr inbounds i8, ptr %i.ld, i64 -1 ; 2 uses
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !218
  br label %js_limb_to_a.exit.backedge

js_limb_to_a.exit.backedge:                       ; preds = %js_limb_to_a.exit.loopexit313.unr-lcssa, %.lr.ph.i141.epil, %.lr.ph30.i.epil.preheader, %js_limb_to_a.exit.loopexit.unr-lcssa
  %.0106.be = phi ptr [ %i.ii, %.lr.ph30.i.epil.preheader ], [ %i.ld, %js_limb_to_a.exit.loopexit.unr-lcssa ], [ %i.mb, %js_limb_to_a.exit.loopexit313.unr-lcssa ], [ %i.io, %.lr.ph.i141.epil ]
  br label %js_limb_to_a.exit

js_limb_to_a.exit.loopexit313.unr-lcssa:          ; preds = %.lr.ph.i141
  %lcmp.mod324.not = icmp eq i32 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %js_limb_to_a.exit.backedge, label %.lr.ph.i141.epil.preheader

.lr.ph.i141.epil.preheader:                       ; preds = %js_limb_to_a.exit.loopexit313.unr-lcssa, %.lr.ph.i141.preheader
  %.11825.i.epil.init = phi ptr [ %.0106, %.lr.ph.i141.preheader ], [ %i.mb, %js_limb_to_a.exit.loopexit313.unr-lcssa ]
  %.12024.i.epil.init = phi i32 [ %phi.call, %.lr.ph.i141.preheader ], [ %i.lx, %js_limb_to_a.exit.loopexit313.unr-lcssa ]
  %lcmp.mod326 = icmp ne i32 %xtraiter323, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %.lr.ph.i141.epil

.lr.ph.i141.epil:                                 ; preds = %.lr.ph.i141.epil, %.lr.ph.i141.epil.preheader
  %.11825.i.epil = phi ptr [ %i.io, %.lr.ph.i141.epil ], [ %.11825.i.epil.init, %.lr.ph.i141.epil.preheader ]
  %.12024.i.epil = phi i32 [ %i.ik, %.lr.ph.i141.epil ], [ %.12024.i.epil.init, %.lr.ph.i141.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i141.epil ], [ 0, %.lr.ph.i141.epil.preheader ]
  %i.ij = urem i32 %.12024.i.epil, %3
  %i.ik = udiv i32 %.12024.i.epil, %3
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw i8, ptr @digits, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !218
  %i.io = getelementptr inbounds i8, ptr %.11825.i.epil, i64 -1 ; 3 uses
  store i8 %i.in, ptr %i.io, align 1, !tbaa !218
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter323
  br i1 %epil.iter.cmp.not, label %js_limb_to_a.exit.backedge, label %.lr.ph.i141.epil, !llvm.loop !1685

js_limb_to_a.exit:                                ; preds = %js_limb_to_a.exit.backedge, %bb.aw
  %.0106 = phi ptr [ %i.hv, %bb.aw ], [ %.0106.be, %js_limb_to_a.exit.backedge ] ; 6 uses
  %.0105 = phi i32 [ %i.ib, %bb.aw ], [ %.1229, %js_limb_to_a.exit.backedge ] ; 5 uses
  %i.ip = icmp sgt i32 %.0105, 1
  br i1 %i.ip, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %js_limb_to_a.exit, %bb.ax
  %.1236 = phi i32 [ %i.iv, %bb.ax ], [ %.0105, %js_limb_to_a.exit ] ; 4 uses
  %i.iq = zext nneg i32 %.1236 to i64
  %i.ir = getelementptr [4 x i8], ptr %i.fw, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 -4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !191
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = add nsw i32 %.1236, -1                  ; 2 uses
  br i1 %i.iu, label %bb.ax, label %.critedge.split.thread

.critedge.split.thread:                           ; preds = %.lr.ph
  %i.iw = zext nneg i32 %i.iv to i64
  br label %.lr.ph.i

bb.ax:                                            ; preds = %.lr.ph
  %i.ix = icmp sgt i32 %.1236, 2
  br i1 %i.ix, label %.lr.ph, label %.critedge.thread, !llvm.loop !1686

.critedge:                                        ; preds = %js_limb_to_a.exit
  switch i32 %.0105, label %js_mp_div1.exit [
    i32 1, label %.critedge.thread
    i32 -2147483648, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %.critedge, %.critedge.split.thread
  %.1230 = phi i32 [ %.1236, %.critedge.split.thread ], [ %.0105, %.critedge ]
  %.013.i218 = phi i64 [ %i.iw, %.critedge.split.thread ], [ 2147483647, %.critedge ] ; 5 uses
  %i.iy = add nuw nsw i64 %.013.i218, 1           ; 2 uses
  %i.iz = icmp eq i64 %.013.i218, 0
  br i1 %i.iz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.iy, 4294967294
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %.013.i218, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.ay ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.jp, %bb.ay ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ay ]
  %i.ja = shl nuw i64 %.01214.i, 32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !191
  %i.jd = zext i32 %i.jc to i64
  %i.je = or disjoint i64 %i.ja, %i.jd            ; 2 uses
  %i.jf = udiv i64 %i.je, %i.ic
  %i.jg = trunc i64 %i.jf to i32
  store i32 %i.jg, ptr %i.jb, align 4, !tbaa !191
  %i.jh = urem i64 %i.je, %i.ic
  %i.ji = shl nuw i64 %i.jh, 32
  %i.jj = getelementptr [4 x i8], ptr %.0109, i64 %indvars.iv.i ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !191
  %i.jl = zext i32 %i.jk to i64
  %i.jm = or disjoint i64 %i.ji, %i.jl            ; 2 uses
  %i.jn = udiv i64 %i.jm, %i.ic
  %i.jo = trunc i64 %i.jn to i32
  store i32 %i.jo, ptr %i.jj, align 4, !tbaa !191
  %i.jp = urem i64 %i.jm, %i.ic                   ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.ay, !llvm.loop !1687

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.ay
  %i.jq = and i64 %.013.i218, 1
  %lcmp.mod.not.not = icmp eq i64 %i.jq, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.loopexit.i

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ %.013.i218, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.jp, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod322 = trunc i64 %i.iy to i1
  tail call void @llvm.assume(i1 %lcmp.mod322)
  %i.jr = shl nuw i64 %.01214.i.epil.init, 32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !191
  %i.ju = zext i32 %i.jt to i64
  %i.jv = or disjoint i64 %i.jr, %i.ju            ; 2 uses
  %i.jw = udiv i64 %i.jv, %i.ic
  %i.jx = trunc i64 %i.jw to i32
  store i32 %i.jx, ptr %i.js, align 4, !tbaa !191
  %i.jy = urem i64 %i.jv, %i.ic
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa317 = phi i64 [ %i.jp, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.jy, %.epil.preheader ]
  %i.jz = trunc nuw i64 %.lcssa317 to i32
  br label %js_mp_div1.exit

.critedge.thread:                                 ; preds = %bb.ax, %.critedge
  %i.ka = load i32, ptr %i.fw, align 4, !tbaa !191 ; 5 uses
  %i.kb = icmp ult i32 %i.ka, %i.ia
  br i1 %i.kb, label %bb.az, label %.split.preheader

.split.preheader:                                 ; preds = %.critedge.thread
  %i.kc = udiv i32 %i.ka, %i.ia
  store i32 %i.kc, ptr %i.fw, align 4, !tbaa !191
  %i.kd = urem i32 %i.ka, %i.ia
  br label %js_mp_div1.exit

bb.az:                                            ; preds = %.critedge.thread
  %.not119 = icmp eq i32 %i.ka, 0
  br i1 %.not119, label %js_u64toa.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ke = zext i32 %i.ka to i64                   ; 2 uses
  br i1 %i.ie, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.ba
  %i.kf = zext nneg i32 %3 to i64                 ; 3 uses
  br label %bb.bb

.preheader.i:                                     ; preds = %bb.ba, %.preheader.i
  %.013.i139 = phi i64 [ %i.ki, %.preheader.i ], [ %i.ke, %bb.ba ] ; 3 uses
  %.0.i140 = phi ptr [ %i.kk, %.preheader.i ], [ %.0106, %bb.ba ]
  %i.kg = urem i64 %.013.i139, 10
  %i.kh = trunc nuw nsw i64 %i.kg to i8
  %i.ki = udiv i64 %.013.i139, 10
  %i.kj = or disjoint i8 %i.kh, 48
  %i.kk = getelementptr inbounds i8, ptr %.0.i140, i64 -1 ; 3 uses
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !218
  %.not15.i = icmp samesign ult i64 %.013.i139, 10
  br i1 %.not15.i, label %js_u64toa.exit, label %.preheader.i, !llvm.loop !1688

bb.bb:                                            ; preds = %bb.bb, %.preheader16.i
  %.114.i = phi i64 [ %i.km, %bb.bb ], [ %i.ke, %.preheader16.i ] ; 3 uses
  %.1.i = phi ptr [ %i.kp, %bb.bb ], [ %.0106, %.preheader16.i ]
  %i.kl = urem i64 %.114.i, %i.kf
  %i.km = udiv i64 %.114.i, %i.kf
  %i.kn = getelementptr inbounds nuw i8, ptr @digits, i64 %i.kl
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !218
  %i.kp = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 3 uses
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !218
  %.not.i138 = icmp samesign ult i64 %.114.i, %i.kf
  br i1 %.not.i138, label %js_u64toa.exit, label %bb.bb, !llvm.loop !1689

js_mp_div1.exit:                                  ; preds = %.critedge, %._crit_edge.loopexit.i, %.split.preheader
  %.1229 = phi i32 [ 1, %.split.preheader ], [ %.0105, %.critedge ], [ %.1230, %._crit_edge.loopexit.i ]
  %phi.call = phi i32 [ %i.kd, %.split.preheader ], [ 0, %.critedge ], [ %i.jz, %._crit_edge.loopexit.i ] ; 3 uses
  %i.kq = load i8, ptr %i.id, align 1, !tbaa !218 ; 2 uses
  %i.kr = zext i8 %i.kq to i32                    ; 4 uses
  br i1 %i.ie, label %.lr.ph30.i.preheader, label %.lr.ph.i141.preheader

.lr.ph.i141.preheader:                            ; preds = %js_mp_div1.exit
  %xtraiter323 = and i32 %i.kr, 3                 ; 3 uses
  %i.ks = add i8 %i.kq, -1
  %i.kt = icmp ult i8 %i.ks, 3
  br i1 %i.kt, label %.lr.ph.i141.epil.preheader, label %.lr.ph.i141.preheader.new

.lr.ph.i141.preheader.new:                        ; preds = %.lr.ph.i141.preheader
  %unroll_iter327 = and i32 %i.kr, 252
  br label %.lr.ph.i141

.lr.ph30.i.preheader:                             ; preds = %js_mp_div1.exit
  %xtraiter329 = and i32 %i.kr, 1
  %unroll_iter334 = and i32 %i.kr, 254
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i, %.lr.ph30.i.preheader
  %.01728.i = phi ptr [ %.0106, %.lr.ph30.i.preheader ], [ %i.ld, %.lr.ph30.i ] ; 2 uses
  %.01927.i = phi i32 [ %phi.call, %.lr.ph30.i.preheader ], [ %i.la, %.lr.ph30.i ] ; 3 uses
  %niter335 = phi i32 [ 0, %.lr.ph30.i.preheader ], [ %niter335.next.1, %.lr.ph30.i ]
  %i.ku = urem i32 %.01927.i, 10
  %i.kv = udiv i32 %.01927.i, 10
  %i.kw = trunc nuw nsw i32 %i.ku to i8
  %i.kx = or disjoint i8 %i.kw, 48
  %i.ky = getelementptr inbounds i8, ptr %.01728.i, i64 -1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !218
  %i.kz = urem i32 %i.kv, 10
  %i.la = udiv i32 %.01927.i, 100                 ; 2 uses
  %i.lb = trunc nuw nsw i32 %i.kz to i8
  %i.lc = or disjoint i8 %i.lb, 48
  %i.ld = getelementptr inbounds i8, ptr %.01728.i, i64 -2 ; 4 uses
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !218
  %niter335.next.1 = add i32 %niter335, 2         ; 2 uses
  %niter335.ncmp.1 = icmp eq i32 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %js_limb_to_a.exit.loopexit.unr-lcssa, label %.lr.ph30.i, !llvm.loop !1690

.lr.ph.i141:                                      ; preds = %.lr.ph.i141, %.lr.ph.i141.preheader.new
  %.11825.i = phi ptr [ %.0106, %.lr.ph.i141.preheader.new ], [ %i.mb, %.lr.ph.i141 ] ; 4 uses
  %.12024.i = phi i32 [ %phi.call, %.lr.ph.i141.preheader.new ], [ %i.lx, %.lr.ph.i141 ] ; 2 uses
  %niter328 = phi i32 [ 0, %.lr.ph.i141.preheader.new ], [ %niter328.next.3, %.lr.ph.i141 ]
  %i.le = urem i32 %.12024.i, %3
  %i.lf = udiv i32 %.12024.i, %3                  ; 2 uses
  %i.lg = zext nneg i32 %i.le to i64
  %i.lh = getelementptr inbounds nuw i8, ptr @digits, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !218
  %i.lj = getelementptr inbounds i8, ptr %.11825.i, i64 -1
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !218
  %i.lk = urem i32 %i.lf, %3
  %i.ll = udiv i32 %i.lf, %3                      ; 2 uses
  %i.lm = zext nneg i32 %i.lk to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @digits, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !218
  %i.lp = getelementptr inbounds i8, ptr %.11825.i, i64 -2
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !218
  %i.lq = urem i32 %i.ll, %3
  %i.lr = udiv i32 %i.ll, %3                      ; 2 uses
  %i.ls = zext nneg i32 %i.lq to i64
  %i.lt = getelementptr inbounds nuw i8, ptr @digits, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !218
  %i.lv = getelementptr inbounds i8, ptr %.11825.i, i64 -3
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !218
  %i.lw = urem i32 %i.lr, %3
  %i.lx = udiv i32 %i.lr, %3                      ; 2 uses
  %i.ly = zext nneg i32 %i.lw to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @digits, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !218
  %i.mb = getelementptr inbounds i8, ptr %.11825.i, i64 -4 ; 4 uses
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !218
  %niter328.next.3 = add i32 %niter328, 4         ; 2 uses
  %niter328.ncmp.3 = icmp eq i32 %niter328.next.3, %unroll_iter327
  br i1 %niter328.ncmp.3, label %js_limb_to_a.exit.loopexit313.unr-lcssa, label %.lr.ph.i141, !llvm.loop !1691

.lr.ph239:                                        ; preds = %.preheader, %bb.be
  %.0104238 = phi i32 [ %i.my, %bb.be ], [ 0, %.preheader ] ; 2 uses
  %.2237 = phi ptr [ %i.mx, %bb.be ], [ %i.hv, %.preheader ]
  %i.mc = mul nuw nsw i32 %.0104238, %i.fu        ; 2 uses
  %i.md = lshr i32 %i.mc, 5                       ; 2 uses
  %i.me = and i32 %i.mc, 31                       ; 3 uses
  %i.mf = zext nneg i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !191
  %i.mi = lshr i32 %i.mh, %i.me                   ; 3 uses
  %i.mj = icmp samesign ugt i32 %i.me, %invariant.op
  br i1 %i.mj, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.lr.ph239
  %i.mk = add nuw nsw i32 %i.md, 1                ; 2 uses
  %i.ml = load i32, ptr %.0109, align 4, !tbaa !191
  %i.mm = icmp ult i32 %i.mk, %i.ml
  br i1 %i.mm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mn = zext nneg i32 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !191
  %i.mq = sub nuw nsw i32 32, %i.me
  %i.mr = shl i32 %i.mp, %i.mq
  %i.ms = or disjoint i32 %i.mr, %i.mi
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph239
  %.0 = phi i32 [ %i.ms, %bb.bd ], [ %i.mi, %bb.bc ], [ %i.mi, %.lr.ph239 ]
  %i.mt = and i32 %.0, %i.dn
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @digits, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !218
  %i.mx = getelementptr inbounds i8, ptr %.2237, i64 -1 ; 3 uses
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !218
  %i.my = add nuw nsw i32 %.0104238, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.my, %i.gd
  br i1 %exitcond.not, label %js_u64toa.exit, label %.lr.ph239, !llvm.loop !1692

js_u64toa.exit:                                   ; preds = %bb.bb, %.preheader.i, %bb.be, %.preheader, %bb.az
  %.3 = phi ptr [ %.0106, %bb.az ], [ %i.mx, %bb.be ], [ %i.kk, %.preheader.i ], [ %i.hv, %.preheader ], [ %i.kp, %bb.bb ] ; 2 uses
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %js_u64toa.exit
  %i.mz = getelementptr inbounds i8, ptr %.3, i64 -1 ; 2 uses
  store i8 45, ptr %i.mz, align 1, !tbaa !218
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %js_u64toa.exit
  %.4 = phi ptr [ %i.mz, %bb.bf ], [ %.3, %js_u64toa.exit ] ; 2 uses
  %i.na = load ptr, ptr %i.gh, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.na, ptr noundef %.0108)
  %i.nb = ptrtoint ptr %i.hv to i64
  %i.nc = ptrtoint ptr %.4 to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 2 uses
  %i.ne = load ptr, ptr %i.gh, align 8, !tbaa !232 ; 8 uses
  %sext = shl i64 %i.nd, 32
  %i.nf = ashr exact i64 %sext, 32                ; 3 uses
  %i.ng = add nsw i64 %i.nf, 25                   ; 3 uses
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %bb.bn, label %bb.bh, !prof !192

bb.bh:                                            ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 40 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 48 ; 3 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !196
  %i.nl = add i64 %i.nk, %i.ng
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !197
  %i.no = add i64 %i.nn, -1
  %i.np = icmp ugt i64 %i.nl, %i.no
  br i1 %i.np, label %bb.bn, label %bb.bi, !prof !192

bb.bi:                                            ; preds = %bb.bh
  %i.nq = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ne, i64 noundef %i.ng), !inline_history !394 ; 8 uses
  %.not.i.i.i184 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i184, label %._crit_edge255, label %bb.bj

._crit_edge255:                                   ; preds = %bb.bi
  %.pre256 = load ptr, ptr %i.gh, align 8, !tbaa !232
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.nr = load i64, ptr %i.ni, align 8, !tbaa !217
  %i.ns = add i64 %i.nr, 1
  store i64 %i.ns, ptr %i.ni, align 8, !tbaa !217
  %i.nt = getelementptr inbounds i8, ptr %i.nq, i64 -8 ; 3 uses
  %i.nu = load i16, ptr %i.nt, align 8, !tbaa !218
  %i.nv = icmp eq i16 %i.nu, -1
  br i1 %i.nv, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ne, i64 1064
  %i.nx = icmp eq ptr %i.nt, %i.nw
  br i1 %i.nx, label %str8.exit180, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !219
  %i.oa = tail call i64 %i.nz(ptr noundef nonnull %i.nt) #49, !inline_history !25 ; 2 uses
  %.not15.i.i.i.i191 = icmp eq i64 %i.oa, 0
  %i.ob = select i1 %.not15.i.i.i.i191, i64 8, i64 %i.oa
  br label %str8.exit180

bb.bm:                                            ; preds = %bb.bj
  %i.oc = getelementptr inbounds i8, ptr %i.nq, i64 -6
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !218
  %i.oe = zext i8 %i.od to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.oe
  %i.og = load i16, ptr %i.of, align 2, !tbaa !221
  %i.oh = zext i16 %i.og to i64
  br label %str8.exit180

bb.bn:                                            ; preds = %._crit_edge255, %bb.bh, %bb.bg
  %i.oi = phi ptr [ %.pre256, %._crit_edge255 ], [ %i.ne, %bb.bh ], [ %i.ne, %bb.bg ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1256 ; 3 uses
  %i.ok = load i8, ptr %i.oj, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %js_new_string8_len.exit149, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.oj, align 8, !tbaa !233
  %i.om = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !395 ; 0 uses
  store i8 0, ptr %i.oj, align 8, !tbaa !233
  br label %js_new_string8_len.exit149
end_hunk_0
