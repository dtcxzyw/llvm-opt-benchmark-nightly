Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Format?download=true
inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
.noexc168:                                        ; preds = %bb.as
  %.pre.i.i.i.i166 = load i64, ptr %i.q, align 8, !tbaa !362
  %i.ek = icmp ne i64 %.pre.i.i.i.i166, 0
  %i.el = zext i1 %i.ek to i64
  br label %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit

_ZN3fmt2v96detail6bigintaSIyEEvT_.exit:           ; preds = %bb.ar, %.noexc168
  %..i.i.i.i167 = phi i64 [ 1, %bb.ar ], [ %i.el, %.noexc168 ]
  store i64 %..i.i.i.i167, ptr %i.r, align 8, !tbaa !371
  store i32 0, ptr %i.t, align 8, !tbaa !363
  br label %bb.at

bb.at:                                            ; preds = %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit, %bb.ah, %bb.aq, %bb.n
  %.off0 = phi i32 [ %extract.t, %bb.n ], [ %extract.t618, %bb.ah ], [ %extract.t619, %bb.aq ], [ %extract.t619, %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit ]
  %.2 = phi ptr [ %.076, %bb.n ], [ %.1, %bb.ah ], [ null, %bb.aq ], [ %8, %_ZN3fmt2v96detail6bigintaSIyEEvT_.exit ] ; 14 uses
  %i.em = and i32 %.off0, 1                       ; 2 uses
  %i.en = xor i32 %i.em, 1                        ; 2 uses
  %.not95 = icmp eq ptr %.2, null                 ; 8 uses
  %i.eo = and i32 %1, 2
  %.not96 = icmp eq i32 %i.eo, 0
  br i1 %.not96, label %bb.bu, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !371 ; 8 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.es = add nsw i32 %i.er, %i.eq                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not95, ptr %i.m, ptr %.2.sroa.gep
  %i.et = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !371
  %i.eu = trunc i64 %i.et to i32
  %.2.sroa.gep376 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel377 = select i1 %.not95, ptr %i.o, ptr %.2.sroa.gep376
  %i.ev = load i32, ptr %spec.store.select.sroa.sel377, align 8, !tbaa !363 ; 4 uses
  %i.ew = add nsw i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = call noundef i32 @llvm.smax.i32(i32 %i.es, i32 %i.ew) ; 2 uses
  %i.ey = load i64, ptr %i.h, align 8, !tbaa !371
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.fb = add nsw i32 %i.fa, %i.ez                ; 5 uses
  %i.fc = add nsw i32 %i.ex, 1
  %i.fd = icmp slt i32 %i.fc, %i.fb
  br i1 %i.fd, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = icmp sgt i32 %i.ex, %i.fb
  br i1 %i.fe, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ff = call noundef i32 @llvm.smin.i32(i32 %i.er, i32 %i.ev)
  %i.fg = call noundef i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fa) ; 2 uses
  %.not.not.not55.i = icmp sgt i32 %i.fb, %i.fg
  br i1 %.not.not.not55.i, label %.lr.ph.i, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.aw
  %i.fh = load ptr, ptr %i.a, align 8
  %.2.sroa.gep379 = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %spec.store.select.sroa.sel380 = select i1 %.not95, ptr %i.k, ptr %.2.sroa.gep379
  %i.fi = load ptr, ptr %spec.store.select.sroa.sel380, align 8
  %i.fj = load ptr, ptr %i.f, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i
  %.0.in57.i = phi i32 [ %i.fb, %.lr.ph.i ], [ %.058.i, %bb.bc ] ; 7 uses
  %.03256.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gk, %bb.bc ] ; 2 uses
  %.058.i = add nsw i32 %.0.in57.i, -1            ; 5 uses
  %.not.i.i169 = icmp sgt i32 %.0.in57.i, %i.er
  %i.fk = icmp sle i32 %.0.in57.i, %i.es
  %or.cond.i = and i1 %.not.i.i169, %i.fk
  br i1 %or.cond.i, label %bb.ay, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.fl = sub nsw i32 %.058.i, %i.er
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !65
  %i.fp = zext i32 %i.fo to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i: ; preds = %bb.ay, %bb.ax
  %i.fq = phi i64 [ %i.fp, %bb.ay ], [ 0, %bb.ax ]
  %.not.i43.i = icmp sgt i32 %.0.in57.i, %i.ev
  %i.fr = icmp sle i32 %.0.in57.i, %i.ew
  %or.cond52.i = and i1 %.not.i43.i, %i.fr
  br i1 %or.cond52.i, label %bb.az, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i

bb.az:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.fs = sub nsw i32 %.058.i, %i.ev
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !65
  %i.fw = zext i32 %i.fv to i64
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i: ; preds = %bb.az, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.fx = phi i64 [ %i.fw, %bb.az ], [ 0, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i ]
  %i.fy = add nuw nsw i64 %i.fx, %i.fq            ; 3 uses
  %.not.i45.i = icmp sgt i32 %.0.in57.i, %i.fa
  %i.fz = icmp sle i32 %.0.in57.i, %i.fb
  %or.cond53.i = and i1 %.not.i45.i, %i.fz
  br i1 %or.cond53.i, label %bb.ba, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

bb.ba:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i
  %i.ga = sub nsw i32 %.058.i, %i.fa
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !65
  %i.ge = zext i32 %i.gd to i64
  %i.gf = or disjoint i64 %.03256.i, %i.ge
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i: ; preds = %bb.ba, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i
  %i.gg = phi i64 [ %i.gf, %bb.ba ], [ %.03256.i, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i ] ; 3 uses
  %i.gh = icmp ugt i64 %i.fy, %i.gg
  br i1 %i.gh, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.gi = sub nuw nsw i64 %i.gg, %i.fy            ; 2 uses
  %i.gj = icmp ugt i64 %i.gi, 1
  br i1 %i.gj, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = shl nuw nsw i64 %i.gi, 32
  %.not.not.not.i = icmp sgt i32 %.058.i, %i.fg
  br i1 %.not.not.not.i, label %bb.ax, label %.thread.loopexit.i, !llvm.loop !378

.thread.loopexit.i:                               ; preds = %bb.bc
  %i.gl = icmp ne i64 %i.gg, %i.fy
  %i.gm = sext i1 %i.gl to i32
  br label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.bb, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i, %.thread.loopexit.i, %bb.aw, %bb.av, %bb.au
  %.4.i = phi i32 [ 1, %bb.av ], [ -1, %bb.au ], [ 0, %bb.aw ], [ %i.gm, %.thread.loopexit.i ], [ 1, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i ], [ -1, %bb.bb ]
  %i.gn = add nsw i32 %.4.i, %i.en
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %bb.bd, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bd:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.gp = load i32, ptr %4, align 4, !tbaa !65
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr %4, align 4, !tbaa !65
  %.not14.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not14.i.i, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %bb.bd
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter = and i64 %i.ep, 1
  %i.gs = icmp eq i64 %i.ep, 1
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph.i.i170.new

.lr.ph.i.i170.new:                                ; preds = %.lr.ph.i.i170
  %unroll_iter = and i64 %i.ep, -2
  br label %bb.be

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.be
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i170
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i170 ], [ %i.hq, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i170 ], [ %i.hp, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1090 = trunc i64 %i.ep to i1
  call void @llvm.assume(i1 %lcmp.mod1090)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.013.i.i.epil.init ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !65
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul nuw nsw i64 %i.gv, 10
  %i.gx = add nuw nsw i64 %i.gw, %.01112.i.i.epil.init ; 2 uses
  %i.gy = trunc i64 %i.gx to i32
  store i32 %i.gy, ptr %i.gt, align 4, !tbaa !65
  %i.gz = lshr i64 %i.gx, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1081 = phi i64 [ %i.hp, %._crit_edge.i.i.unr-lcssa ], [ %i.gz, %.epil.preheader ] ; 2 uses
  %i.ha = trunc nuw nsw i64 %.lcssa1081 to i32
  %.not.i.i172 = icmp eq i64 %.lcssa1081, 0
  br i1 %.not.i.i172, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i170.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %i.hq, %bb.be ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %i.hp, %bb.be ]
  %niter = phi i64 [ 0, %.lr.ph.i.i170.new ], [ %niter.next.1, %bb.be ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.013.i.i ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !65
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul nuw nsw i64 %i.hd, 10
  %i.hf = add nuw nsw i64 %i.he, %.01112.i.i      ; 2 uses
  %i.hg = trunc i64 %i.hf to i32
  store i32 %i.hg, ptr %i.hb, align 4, !tbaa !65
  %i.hh = lshr i64 %i.hf, 32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.013.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !65
  %i.hl = zext i32 %i.hk to i64
  %i.hm = mul nuw nsw i64 %i.hl, 10
  %i.hn = add nuw nsw i64 %i.hm, %i.hh            ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  store i32 %i.ho, ptr %i.hj, align 4, !tbaa !65
  %i.hp = lshr i64 %i.hn, 32                      ; 3 uses
  %i.hq = add nuw nsw i64 %.013.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.be, !llvm.loop !379

bb.bf:                                            ; preds = %._crit_edge.i.i
  %i.hr = add i64 %i.ep, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !362
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.bg, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173

bb.bg:                                            ; preds = %bb.bf
  %i.hu = load ptr, ptr %5, align 8, !tbaa !41
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.hr)
          to label %.noexc178 unwind label %bb.bp, !inline_history !380

.noexc178:                                        ; preds = %bb.bg
  %.pre.i.i.i175 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i176 = add i64 %.pre.i.i.i175, 1
  %.pre.i177 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173: ; preds = %.noexc178, %bb.bf
  %i.hw = phi ptr [ %i.gr, %bb.bf ], [ %.pre.i177, %.noexc178 ]
  %.pre-phi.i.i.i174 = phi i64 [ %i.hr, %bb.bf ], [ %.pre2.i.i.i176, %.noexc178 ]
  %i.hx = phi i64 [ %i.ep, %bb.bf ], [ %.pre.i.i.i175, %.noexc178 ]
  store i64 %.pre-phi.i.i.i174, ptr %i.c, align 8, !tbaa !371
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hx
  store i32 %i.ha, ptr %i.hy, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit:        ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i173, %._crit_edge.i.i, %bb.bd
  %i.hz = icmp slt i32 %2, 0
  br i1 %i.hz, label %bb.bh, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bh:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit
  %i.ia = load i64, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i179 = icmp eq i64 %i.ia, 0
  br i1 %.not14.i.i179, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %bb.bh
  %i.ib = load ptr, ptr %i.k, align 8, !tbaa !360 ; 4 uses
  %xtraiter1092 = and i64 %i.ia, 1
  %i.ic = icmp eq i64 %i.ia, 1
  br i1 %i.ic, label %.epil.preheader1091, label %.lr.ph.i.i180.new

.lr.ph.i.i180.new:                                ; preds = %.lr.ph.i.i180
  %unroll_iter1096 = and i64 %i.ia, -2
  br label %bb.bi

._crit_edge.i.i184.unr-lcssa:                     ; preds = %bb.bi
  %lcmp.mod1093.not = icmp eq i64 %xtraiter1092, 0
  br i1 %lcmp.mod1093.not, label %._crit_edge.i.i184, label %.epil.preheader1091

.epil.preheader1091:                              ; preds = %._crit_edge.i.i184.unr-lcssa, %.lr.ph.i.i180
  %.013.i.i181.epil.init = phi i64 [ 0, %.lr.ph.i.i180 ], [ %i.ja, %._crit_edge.i.i184.unr-lcssa ]
  %.01112.i.i182.epil.init = phi i64 [ 0, %.lr.ph.i.i180 ], [ %i.iz, %._crit_edge.i.i184.unr-lcssa ]
  %lcmp.mod1095 = trunc i64 %i.ia to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.013.i.i181.epil.init ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !65
  %i.if = zext i32 %i.ie to i64
  %i.ig = mul nuw nsw i64 %i.if, 10
  %i.ih = add nuw nsw i64 %i.ig, %.01112.i.i182.epil.init ; 2 uses
  %i.ii = trunc i64 %i.ih to i32
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !65
  %i.ij = lshr i64 %i.ih, 32
  br label %._crit_edge.i.i184

._crit_edge.i.i184:                               ; preds = %._crit_edge.i.i184.unr-lcssa, %.epil.preheader1091
  %.lcssa1080 = phi i64 [ %i.iz, %._crit_edge.i.i184.unr-lcssa ], [ %i.ij, %.epil.preheader1091 ] ; 2 uses
  %i.ik = trunc nuw nsw i64 %.lcssa1080 to i32
  %.not.i.i185 = icmp eq i64 %.lcssa1080, 0
  br i1 %.not.i.i185, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, label %bb.bj

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.i180.new
  %.013.i.i181 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %i.ja, %bb.bi ] ; 3 uses
  %.01112.i.i182 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %i.iz, %bb.bi ]
  %niter1097 = phi i64 [ 0, %.lr.ph.i.i180.new ], [ %niter1097.next.1, %bb.bi ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.013.i.i181 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !65
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw nsw i64 %i.in, 10
  %i.ip = add nuw nsw i64 %i.io, %.01112.i.i182   ; 2 uses
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.il, align 4, !tbaa !65
  %i.ir = lshr i64 %i.ip, 32
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.013.i.i181
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !65
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw nsw i64 %i.iv, 10
  %i.ix = add nuw nsw i64 %i.iw, %i.ir            ; 2 uses
  %i.iy = trunc i64 %i.ix to i32
  store i32 %i.iy, ptr %i.it, align 4, !tbaa !65
  %i.iz = lshr i64 %i.ix, 32                      ; 3 uses
  %i.ja = add nuw nsw i64 %.013.i.i181, 2         ; 2 uses
  %niter1097.next.1 = add nuw nsw i64 %niter1097, 2 ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %._crit_edge.i.i184.unr-lcssa, label %bb.bi, !llvm.loop !379

bb.bj:                                            ; preds = %._crit_edge.i.i184
  %i.jb = add i64 %i.ia, 1                        ; 3 uses
  %i.jc = load i64, ptr %i.l, align 8, !tbaa !362
  %i.jd = icmp ugt i64 %i.jb, %i.jc
  br i1 %i.jd, label %bb.bk, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i186

bb.bk:                                            ; preds = %bb.bj
  %i.je = load ptr, ptr %7, align 8, !tbaa !41
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.jb)
          to label %.noexc191 unwind label %bb.bp, !inline_history !380

.noexc191:                                        ; preds = %bb.bk
  %.pre.i.i.i188 = load i64, ptr %i.m, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i189 = add i64 %.pre.i.i.i188, 1
  %.pre.i190 = load ptr, ptr %i.k, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i186

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i186: ; preds = %.noexc191, %bb.bj
  %i.jg = phi ptr [ %i.ib, %bb.bj ], [ %.pre.i190, %.noexc191 ]
  %.pre-phi.i.i.i187 = phi i64 [ %i.jb, %bb.bj ], [ %.pre2.i.i.i189, %.noexc191 ]
  %i.jh = phi i64 [ %i.ia, %bb.bj ], [ %.pre.i.i.i188, %.noexc191 ]
  store i64 %.pre-phi.i.i.i187, ptr %i.m, align 8, !tbaa !371
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  store i32 %i.ik, ptr %i.ji, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i186, %._crit_edge.i.i184, %bb.bh
  br i1 %.not95, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, label %bb.bl

bb.bl:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192
  %i.jj = load i64, ptr %.2.sroa.gep, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i193 = icmp eq i64 %i.jj, 0
  br i1 %.not14.i.i193, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, label %.lr.ph.i.i194

.lr.ph.i.i194:                                    ; preds = %bb.bl
  %.2.sroa.gep385 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %.2.sroa.gep385, align 8, !tbaa !360 ; 4 uses
  %xtraiter1099 = and i64 %i.jj, 1
  %i.jl = icmp eq i64 %i.jj, 1
  br i1 %i.jl, label %.epil.preheader1098, label %.lr.ph.i.i194.new

.lr.ph.i.i194.new:                                ; preds = %.lr.ph.i.i194
  %unroll_iter1103 = and i64 %i.jj, -2
  br label %bb.bm

._crit_edge.i.i198.unr-lcssa:                     ; preds = %bb.bm
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1100.not, label %._crit_edge.i.i198, label %.epil.preheader1098

.epil.preheader1098:                              ; preds = %._crit_edge.i.i198.unr-lcssa, %.lr.ph.i.i194
  %.013.i.i195.epil.init = phi i64 [ 0, %.lr.ph.i.i194 ], [ %i.kj, %._crit_edge.i.i198.unr-lcssa ]
  %.01112.i.i196.epil.init = phi i64 [ 0, %.lr.ph.i.i194 ], [ %i.ki, %._crit_edge.i.i198.unr-lcssa ]
  %lcmp.mod1102 = trunc i64 %i.jj to i1
  call void @llvm.assume(i1 %lcmp.mod1102)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %.013.i.i195.epil.init ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !65
  %i.jo = zext i32 %i.jn to i64
  %i.jp = mul nuw nsw i64 %i.jo, 10
  %i.jq = add nuw nsw i64 %i.jp, %.01112.i.i196.epil.init ; 2 uses
  %i.jr = trunc i64 %i.jq to i32
  store i32 %i.jr, ptr %i.jm, align 4, !tbaa !65
  %i.js = lshr i64 %i.jq, 32
  br label %._crit_edge.i.i198

._crit_edge.i.i198:                               ; preds = %._crit_edge.i.i198.unr-lcssa, %.epil.preheader1098
  %.lcssa1079 = phi i64 [ %i.ki, %._crit_edge.i.i198.unr-lcssa ], [ %i.js, %.epil.preheader1098 ] ; 2 uses
  %i.jt = trunc nuw nsw i64 %.lcssa1079 to i32
  %.not.i.i199 = icmp eq i64 %.lcssa1079, 0
  br i1 %.not.i.i199, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, label %bb.bn

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i.i194.new
  %.013.i.i195 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %i.kj, %bb.bm ] ; 3 uses
  %.01112.i.i196 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %i.ki, %bb.bm ]
  %niter1104 = phi i64 [ 0, %.lr.ph.i.i194.new ], [ %niter1104.next.1, %bb.bm ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %.013.i.i195 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !65
  %i.jw = zext i32 %i.jv to i64
  %i.jx = mul nuw nsw i64 %i.jw, 10
  %i.jy = add nuw nsw i64 %i.jx, %.01112.i.i196   ; 2 uses
  %i.jz = trunc i64 %i.jy to i32
  store i32 %i.jz, ptr %i.ju, align 4, !tbaa !65
  %i.ka = lshr i64 %i.jy, 32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %.013.i.i195
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !65
  %i.ke = zext i32 %i.kd to i64
  %i.kf = mul nuw nsw i64 %i.ke, 10
  %i.kg = add nuw nsw i64 %i.kf, %i.ka            ; 2 uses
  %i.kh = trunc i64 %i.kg to i32
  store i32 %i.kh, ptr %i.kc, align 4, !tbaa !65
  %i.ki = lshr i64 %i.kg, 32                      ; 3 uses
  %i.kj = add nuw nsw i64 %.013.i.i195, 2         ; 2 uses
  %niter1104.next.1 = add nuw nsw i64 %niter1104, 2 ; 2 uses
  %niter1104.ncmp.1 = icmp eq i64 %niter1104.next.1, %unroll_iter1103
  br i1 %niter1104.ncmp.1, label %._crit_edge.i.i198.unr-lcssa, label %bb.bm, !llvm.loop !379

bb.bn:                                            ; preds = %._crit_edge.i.i198
  %i.kk = add i64 %i.jj, 1                        ; 3 uses
  %.2.sroa.gep388 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.kl = load i64, ptr %.2.sroa.gep388, align 8, !tbaa !362
  %i.km = icmp ugt i64 %i.kk, %i.kl
  br i1 %i.km, label %bb.bo, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200

bb.bo:                                            ; preds = %bb.bn
  %i.kn = load ptr, ptr %.2, align 8, !tbaa !41
  %i.ko = load ptr, ptr %i.kn, align 8
  invoke void %i.ko(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.kk)
          to label %.noexc205 unwind label %bb.bp, !inline_history !380

.noexc205:                                        ; preds = %bb.bo
  %.pre.i.i.i202 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i203 = add i64 %.pre.i.i.i202, 1
  %.pre.i204 = load ptr, ptr %.2.sroa.gep385, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200: ; preds = %.noexc205, %bb.bn
  %i.kp = phi ptr [ %i.jk, %bb.bn ], [ %.pre.i204, %.noexc205 ]
  %.pre-phi.i.i.i201 = phi i64 [ %i.kk, %bb.bn ], [ %.pre2.i.i.i203, %.noexc205 ]
  %i.kq = phi i64 [ %i.jj, %bb.bn ], [ %.pre.i.i.i202, %.noexc205 ]
  store i64 %.pre-phi.i.i.i201, ptr %.2.sroa.gep, align 8, !tbaa !371
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kq
  store i32 %i.jt, ptr %i.kr, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206

bb.bp:                                            ; preds = %bb.dw, %bb.dl, %bb.bs, %bb.bo, %bb.bk, %bb.bg
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i200, %._crit_edge.i.i198, %bb.bl, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit192, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.kt = and i32 %1, 4
  %.not97 = icmp eq i32 %i.kt, 0
  br i1 %.not97, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206
  %i.ku = load i32, ptr %4, align 4, !tbaa !65    ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, -1
  %i.kw = sub nsw i32 2147483646, %i.ku
  %i.kx = icmp sgt i32 %2, %i.kw
  %or.cond.i208 = select i1 %i.kv, i1 %i.kx, i1 false
  br i1 %or.cond.i208, label %bb.br, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.br:                                            ; preds = %bb.bq
  %i.ky = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull @.str.31)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %i.ky, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.ky, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #32
          to label %.noexc209 unwind label %bb.bp

.noexc209:                                        ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ky) #33
  br label %.body

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.bq
  %i.la = add i32 %2, 1
  %i.lb = add i32 %i.la, %i.ku
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206, %bb.at
  %.0421 = phi i32 [ %2, %bb.at ], [ %2, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit206 ], [ %i.lb, %_ZN3fmt2v96detail16adjust_precisionERii.exit ] ; 5 uses
  %i.lc = icmp slt i32 %.0421, 0
  br i1 %i.lc, label %bb.bv, label %bb.dh

bb.bv:                                            ; preds = %bb.bu
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !37 ; 3 uses
  %.2.sroa.gep391 = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 4 uses
  %spec.store.select.sroa.sel392 = select i1 %.not95, ptr %i.m, ptr %.2.sroa.gep391
  %.2.sroa.gep394 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel395 = select i1 %.not95, ptr %i.o, ptr %.2.sroa.gep394
  %.2.sroa.gep397 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 3 uses
  %spec.store.select.sroa.sel398 = select i1 %.not95, ptr %i.k, ptr %.2.sroa.gep397
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.2.sroa.gep406 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bv
  %indvars.iv520 = phi i64 [ 0, %bb.bv ], [ %indvars.iv.next521, %.backedge.backedge ] ; 7 uses
  %i.lh = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bw unwind label %bb.cl     ; 3 uses

bb.bw:                                            ; preds = %.backedge
  %i.li = load i64, ptr %i.c, align 8, !tbaa !371 ; 3 uses
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.ll = add nsw i32 %i.lk, %i.lj                ; 4 uses
  %i.lm = load i64, ptr %i.m, align 8, !tbaa !371
  %i.ln = trunc i64 %i.lm to i32                  ; 4 uses
  %i.lo = load i32, ptr %i.o, align 8, !tbaa !363
  %i.lp = add nsw i32 %i.lo, %i.ln                ; 2 uses
  %.not.i = icmp eq i32 %i.ll, %i.lp
  br i1 %.not.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lq = icmp sgt i32 %i.ll, %i.lp
  %i.lr = select i1 %i.lq, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.by:                                            ; preds = %bb.bw
  %i.ls = sub nsw i32 %i.lj, %i.ln
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ls, i32 0) ; 3 uses
  %i.lt = load ptr, ptr %i.a, align 8
  %i.lu = load ptr, ptr %i.k, align 8
  %smin = call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %i.lj) ; 2 uses
  %i.lv = trunc i64 %i.li to i32
  %.not35.not.i1025 = icmp slt i32 %spec.store.select.i, %i.lv
  br i1 %.not35.not.i1025, label %.lr.ph1029, label %._crit_edge1030

.lr.ph1029:                                       ; preds = %bb.by
  %i.lw = and i64 %i.li, 4294967295
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %i.lx = trunc nuw i64 %i.ly to i32
  %.not35.not.i = icmp slt i32 %spec.store.select.i, %i.lx
  br i1 %.not35.not.i, label %bb.ca, label %._crit_edge1030, !llvm.loop !381

bb.ca:                                            ; preds = %.lr.ph1029, %bb.bz
  %.0.in.i1027 = phi i32 [ %i.ln, %.lr.ph1029 ], [ %.0.i, %bb.bz ]
  %indvars.iv.i1026 = phi i64 [ %i.lw, %.lr.ph1029 ], [ %i.ly, %bb.bz ]
  %i.ly = add nsw i64 %indvars.iv.i1026, -1       ; 3 uses
  %.0.i = add nsw i32 %.0.in.i1027, -1            ; 3 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !65 ; 2 uses
  %i.mb = zext i32 %.0.i to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !65 ; 2 uses
  %.not37.i = icmp eq i32 %i.ma, %i.md
  br i1 %.not37.i, label %bb.bz, label %.loopexit.i, !llvm.loop !381

._crit_edge1030:                                  ; preds = %bb.bz, %bb.by
  %.0.in.i.lcssa = phi i32 [ %i.ln, %bb.by ], [ %.0.i, %bb.bz ] ; 2 uses
  %.not36.i = icmp eq i32 %.0.in.i.lcssa, %smin
  br i1 %.not36.i, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1030
  %i.me = icmp slt i32 %.0.in.i.lcssa, %smin
  %i.mf = select i1 %i.me, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %bb.ca
  %i.mg = icmp ugt i32 %i.ma, %i.md
  %i.mh = select i1 %i.mg, i32 1, i32 -1
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %.loopexit.i, %bb.cb, %._crit_edge1030, %bb.bx
  %.3.i = phi i32 [ %i.lr, %bb.bx ], [ 0, %._crit_edge1030 ], [ %i.mf, %bb.cb ], [ %i.mh, %.loopexit.i ]
  %i.mi = icmp sge i32 %.3.i, %i.en               ; 3 uses
  %i.mj = load i64, ptr %spec.store.select.sroa.sel392, align 8, !tbaa !371
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = load i32, ptr %spec.store.select.sroa.sel395, align 8, !tbaa !363 ; 4 uses
  %i.mm = add nsw i32 %i.ml, %i.mk                ; 2 uses
  %i.mn = call noundef i32 @llvm.smax.i32(i32 %i.ll, i32 %i.mm) ; 2 uses
  %i.mo = load i64, ptr %i.h, align 8, !tbaa !371
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.mr = add nsw i32 %i.mq, %i.mp                ; 5 uses
  %i.ms = add nsw i32 %i.mn, 1
  %i.mt = icmp slt i32 %i.ms, %i.mr
  br i1 %i.mt, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227, label %bb.cc

bb.cc:                                            ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit
  %i.mu = icmp sgt i32 %i.mn, %i.mr
  br i1 %i.mu, label %.thread629, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mv = call noundef i32 @llvm.smin.i32(i32 %i.lk, i32 %i.ml)
  %i.mw = call noundef i32 @llvm.smin.i32(i32 %i.mv, i32 %i.mq) ; 2 uses
  %.not.not.not55.i210 = icmp sgt i32 %i.mr, %i.mw
  br i1 %.not.not.not55.i210, label %.lr.ph.i212, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227

.lr.ph.i212:                                      ; preds = %bb.cd
  %i.mx = load ptr, ptr %i.a, align 8
  %i.my = load ptr, ptr %spec.store.select.sroa.sel398, align 8
  %i.mz = load ptr, ptr %i.f, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cj, %.lr.ph.i212
  %.0.in57.i213 = phi i32 [ %i.mr, %.lr.ph.i212 ], [ %.058.i215, %bb.cj ] ; 7 uses
  %.03256.i214 = phi i64 [ 0, %.lr.ph.i212 ], [ %i.oa, %bb.cj ] ; 2 uses
  %.058.i215 = add nsw i32 %.0.in57.i213, -1      ; 5 uses
  %.not.i.i216 = icmp sgt i32 %.0.in57.i213, %i.lk
  %i.na = icmp sle i32 %.0.in57.i213, %i.ll
  %or.cond.i217 = and i1 %.not.i.i216, %i.na
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
          cleanup
  br label %.body

.loopexit705:                                     ; preds = %bb.cz, %bb.dc, %bb.dg
  %lpad.loopexit707 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp706:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp708 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.od, label %.thread, label %.thread638

.thread638:                                       ; preds = %.thread629, %bb.cm
  %indvars.iv.next521626636641 = phi i64 [ %indvars.iv.next521, %bb.cm ], [ %indvars.iv.next521623, %.thread629 ] ; 6 uses
  %i.ol = phi i8 [ %i.oe, %bb.cm ], [ %i.oh, %.thread629 ] ; 3 uses
  %i.om = load i64, ptr %i.c, align 8, !tbaa !371
  %i.on = trunc i64 %i.om to i32
  %i.oo = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.op = add nsw i32 %i.oo, %i.on                ; 3 uses
  %i.oq = load i64, ptr %i.h, align 8, !tbaa !371
  %i.or = trunc i64 %i.oq to i32
  %i.os = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.ot = add nsw i32 %i.os, %i.or                ; 5 uses
  %i.ou = add nsw i32 %i.op, 1
  %i.ov = icmp slt i32 %i.ou, %i.ot
  br i1 %i.ov, label %.thread, label %bb.cn

bb.cn:                                            ; preds = %.thread638
  %i.ow = icmp sgt i32 %i.op, %i.ot
  br i1 %i.ow, label %.thread.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ox = call noundef i32 @llvm.smin.i32(i32 %i.oo, i32 %i.os) ; 2 uses
  %.not.not.not55.i228 = icmp sgt i32 %i.ot, %i.ox
  br i1 %.not.not.not55.i228, label %.lr.ph.i230, label %bb.cu

.lr.ph.i230:                                      ; preds = %bb.co
  %i.oy = load ptr, ptr %i.a, align 8
  %i.oz = load ptr, ptr %i.f, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ct, %.lr.ph.i230
  %.0.in57.i231 = phi i32 [ %i.ot, %.lr.ph.i230 ], [ %.058.i233, %bb.ct ] ; 5 uses
  %.03256.i232 = phi i64 [ 0, %.lr.ph.i230 ], [ %i.pt, %bb.ct ] ; 2 uses
  %.058.i233 = add nsw i32 %.0.in57.i231, -1      ; 4 uses
  %.not.i.i234 = icmp sgt i32 %.0.in57.i231, %i.oo
  %i.pa = icmp sle i32 %.0.in57.i231, %i.op
  %or.cond.i235 = and i1 %.not.i.i234, %i.pa
  br i1 %or.cond.i235, label %bb.cq, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239

bb.cq:                                            ; preds = %bb.cp
  %i.pb = sub nsw i32 %.058.i233, %i.oo
  %i.pc = zext i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !65
  %i.pf = zext i32 %i.pe to i64
  %i.pg = shl nuw nsw i64 %i.pf, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239: ; preds = %bb.cp, %bb.cq
  %i.ph = phi i64 [ %i.pg, %bb.cq ], [ 0, %bb.cp ] ; 3 uses
  %.not.i45.i240 = icmp sgt i32 %.0.in57.i231, %i.os
  %i.pi = icmp sle i32 %.0.in57.i231, %i.ot
  %or.cond53.i241 = and i1 %.not.i45.i240, %i.pi
  br i1 %or.cond53.i241, label %bb.cr, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242

bb.cr:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239
  %i.pj = sub nsw i32 %.058.i233, %i.os
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !65
  %i.pn = zext i32 %i.pm to i64
  %i.po = or disjoint i64 %.03256.i232, %i.pn
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242: ; preds = %bb.cr, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239
  %i.pp = phi i64 [ %i.po, %bb.cr ], [ %.03256.i232, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i239 ] ; 3 uses
  %i.pq = icmp ugt i64 %i.ph, %i.pp
  br i1 %i.pq, label %.thread.sink.split, label %bb.cs

bb.cs:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242
  %i.pr = sub nuw nsw i64 %i.pp, %i.ph            ; 2 uses
  %i.ps = icmp ugt i64 %i.pr, 1
  br i1 %i.ps, label %.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pt = shl nuw nsw i64 %i.pr, 32
  %.not.not.not.i243 = icmp sgt i32 %.058.i233, %i.ox
  br i1 %.not.not.not.i243, label %bb.cp, label %.thread.loopexit.i244, !llvm.loop !378

.thread.loopexit.i244:                            ; preds = %bb.ct
  %i.pu = icmp ne i64 %i.pp, %i.ph
  br label %bb.cu

bb.cu:                                            ; preds = %bb.co, %.thread.loopexit.i244
  %.4.i229.ph = phi i1 [ false, %bb.co ], [ %i.pu, %.thread.loopexit.i244 ]
  %i.pv = and i32 %i.lh, 1
  %.not100 = icmp eq i32 %i.pv, 0
  %or.cond = or i1 %.not100, %.4.i229.ph
  br i1 %or.cond, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242, %bb.cu, %bb.cn, %bb.ck, %.thread629
  %.sink679 = phi i8 [ %i.oe, %bb.ck ], [ %i.oh, %.thread629 ], [ %i.ol, %bb.cu ], [ %i.ol, %bb.cn ], [ %i.ol, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242 ]
  %indvars.iv.next521626635.ph = phi i64 [ %indvars.iv.next521, %bb.ck ], [ %indvars.iv.next521623, %.thread629 ], [ %indvars.iv.next521626636641, %bb.cu ], [ %indvars.iv.next521626636641, %bb.cn ], [ %indvars.iv.next521626636641, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i242 ]
  %i.pw = getelementptr i8, ptr %i.le, i64 %indvars.iv520
  %i.px = add i8 %.sink679, 49
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %bb.cs, %.thread.sink.split, %.thread638, %bb.cu, %bb.cm
  %indvars.iv.next521626635 = phi i64 [ %indvars.iv.next521, %bb.cm ], [ %indvars.iv.next521626636641, %.thread638 ], [ %indvars.iv.next521626636641, %bb.cu ], [ %indvars.iv.next521626635.ph, %.thread.sink.split ], [ %indvars.iv.next521626636641, %bb.cs ] ; 2 uses
  %i.py = load i64, ptr %i.lf, align 8, !tbaa !40 ; 2 uses
  %.not621 = icmp ugt i64 %i.py, %indvars.iv520
  br i1 %.not621, label %.split, label %bb.cv

bb.cv:                                            ; preds = %.thread
  %i.pz = load ptr, ptr %3, align 8, !tbaa !41
  %i.qa = load ptr, ptr %i.pz, align 8
  invoke void %i.qa(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next521626635)
          to label %.noexc247 unwind label %.loopexit.split-lp706, !inline_history !382

.noexc247:                                        ; preds = %bb.cv
  %.pre.i246 = load i64, ptr %i.lf, align 8, !tbaa !40
  br label %.split

.split:                                           ; preds = %.noexc247, %.thread
  %i.qb = phi i64 [ %i.py, %.thread ], [ %.pre.i246, %.noexc247 ]
  %..i = call i64 @llvm.umin.i64(i64 %indvars.iv.next521626635, i64 %i.qb)
  store i64 %..i, ptr %i.lg, align 8, !tbaa !39
  %i.qc = load i32, ptr %4, align 4, !tbaa !65
  %i.qd = trunc nuw nsw i64 %indvars.iv520 to i32
  %i.qe = sub nsw i32 %i.qc, %i.qd
  store i32 %i.qe, ptr %4, align 4, !tbaa !65
  br label %.loopexit

bb.cw:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit227
  %i.qf = load i64, ptr %i.c, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i248 = icmp eq i64 %i.qf, 0
  br i1 %.not14.i.i248, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261, label %.lr.ph.i.i249

.lr.ph.i.i249:                                    ; preds = %bb.cw
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter1120 = and i64 %i.qf, 1
  %i.qh = icmp eq i64 %i.qf, 1
  br i1 %i.qh, label %.epil.preheader1119, label %.lr.ph.i.i249.new

.lr.ph.i.i249.new:                                ; preds = %.lr.ph.i.i249
  %unroll_iter1124 = and i64 %i.qf, -2
  br label %bb.cx

._crit_edge.i.i253.unr-lcssa:                     ; preds = %bb.cx
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1121.not, label %._crit_edge.i.i253, label %.epil.preheader1119

.epil.preheader1119:                              ; preds = %._crit_edge.i.i253.unr-lcssa, %.lr.ph.i.i249
  %.013.i.i250.epil.init = phi i64 [ 0, %.lr.ph.i.i249 ], [ %i.rf, %._crit_edge.i.i253.unr-lcssa ]
  %.01112.i.i251.epil.init = phi i64 [ 0, %.lr.ph.i.i249 ], [ %i.re, %._crit_edge.i.i253.unr-lcssa ]
  %lcmp.mod1123 = trunc i64 %i.qf to i1
  call void @llvm.assume(i1 %lcmp.mod1123)
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i250.epil.init ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !65
  %i.qk = zext i32 %i.qj to i64
  %i.ql = mul nuw nsw i64 %i.qk, 10
  %i.qm = add nuw nsw i64 %i.ql, %.01112.i.i251.epil.init ; 2 uses
  %i.qn = trunc i64 %i.qm to i32
  store i32 %i.qn, ptr %i.qi, align 4, !tbaa !65
  %i.qo = lshr i64 %i.qm, 32
  br label %._crit_edge.i.i253

._crit_edge.i.i253:                               ; preds = %._crit_edge.i.i253.unr-lcssa, %.epil.preheader1119
  %.lcssa1047 = phi i64 [ %i.re, %._crit_edge.i.i253.unr-lcssa ], [ %i.qo, %.epil.preheader1119 ] ; 2 uses
  %i.qp = trunc nuw nsw i64 %.lcssa1047 to i32
  %.not.i.i254 = icmp eq i64 %.lcssa1047, 0
  br i1 %.not.i.i254, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261, label %bb.cy

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i.i249.new
  %.013.i.i250 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.rf, %bb.cx ] ; 3 uses
  %.01112.i.i251 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %i.re, %bb.cx ]
  %niter1125 = phi i64 [ 0, %.lr.ph.i.i249.new ], [ %niter1125.next.1, %bb.cx ]
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i250 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !65
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw nsw i64 %i.qs, 10
  %i.qu = add nuw nsw i64 %i.qt, %.01112.i.i251   ; 2 uses
  %i.qv = trunc i64 %i.qu to i32
  store i32 %i.qv, ptr %i.qq, align 4, !tbaa !65
  %i.qw = lshr i64 %i.qu, 32
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i250
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 4 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !65
  %i.ra = zext i32 %i.qz to i64
  %i.rb = mul nuw nsw i64 %i.ra, 10
  %i.rc = add nuw nsw i64 %i.rb, %i.qw            ; 2 uses
  %i.rd = trunc i64 %i.rc to i32
  store i32 %i.rd, ptr %i.qy, align 4, !tbaa !65
  %i.re = lshr i64 %i.rc, 32                      ; 3 uses
  %i.rf = add nuw nsw i64 %.013.i.i250, 2         ; 2 uses
  %niter1125.next.1 = add nuw nsw i64 %niter1125, 2 ; 2 uses
  %niter1125.ncmp.1 = icmp eq i64 %niter1125.next.1, %unroll_iter1124
  br i1 %niter1125.ncmp.1, label %._crit_edge.i.i253.unr-lcssa, label %bb.cx, !llvm.loop !379

bb.cy:                                            ; preds = %._crit_edge.i.i253
  %i.rg = add i64 %i.qf, 1                        ; 3 uses
  %i.rh = load i64, ptr %i.b, align 8, !tbaa !362
  %i.ri = icmp ugt i64 %i.rg, %i.rh
  br i1 %i.ri, label %bb.cz, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255

bb.cz:                                            ; preds = %bb.cy
  %i.rj = load ptr, ptr %5, align 8, !tbaa !41
  %i.rk = load ptr, ptr %i.rj, align 8
  invoke void %i.rk(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.rg)
          to label %.noexc260 unwind label %.loopexit705, !inline_history !380

.noexc260:                                        ; preds = %bb.cz
  %.pre.i.i.i257 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i258 = add i64 %.pre.i.i.i257, 1
  %.pre.i259 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255: ; preds = %.noexc260, %bb.cy
  %i.rl = phi ptr [ %i.qg, %bb.cy ], [ %.pre.i259, %.noexc260 ]
  %.pre-phi.i.i.i256 = phi i64 [ %i.rg, %bb.cy ], [ %.pre2.i.i.i258, %.noexc260 ]
  %i.rm = phi i64 [ %i.qf, %bb.cy ], [ %.pre.i.i.i257, %.noexc260 ]
  store i64 %.pre-phi.i.i.i256, ptr %i.c, align 8, !tbaa !371
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.rm
  store i32 %i.qp, ptr %i.rn, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i255, %._crit_edge.i.i253, %bb.cw
  %i.ro = load i64, ptr %i.m, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i262 = icmp eq i64 %i.ro, 0
  br i1 %.not14.i.i262, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275, label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261
  %i.rp = load ptr, ptr %i.k, align 8, !tbaa !360 ; 4 uses
  %xtraiter1127 = and i64 %i.ro, 1
  %i.rq = icmp eq i64 %i.ro, 1
  br i1 %i.rq, label %.epil.preheader1126, label %.lr.ph.i.i263.new

.lr.ph.i.i263.new:                                ; preds = %.lr.ph.i.i263
  %unroll_iter1131 = and i64 %i.ro, -2
  br label %bb.da

._crit_edge.i.i267.unr-lcssa:                     ; preds = %bb.da
  %lcmp.mod1128.not = icmp eq i64 %xtraiter1127, 0
  br i1 %lcmp.mod1128.not, label %._crit_edge.i.i267, label %.epil.preheader1126

.epil.preheader1126:                              ; preds = %._crit_edge.i.i267.unr-lcssa, %.lr.ph.i.i263
  %.013.i.i264.epil.init = phi i64 [ 0, %.lr.ph.i.i263 ], [ %i.so, %._crit_edge.i.i267.unr-lcssa ]
  %.01112.i.i265.epil.init = phi i64 [ 0, %.lr.ph.i.i263 ], [ %i.sn, %._crit_edge.i.i267.unr-lcssa ]
  %lcmp.mod1130 = trunc i64 %i.ro to i1
  call void @llvm.assume(i1 %lcmp.mod1130)
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %.013.i.i264.epil.init ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !65
  %i.rt = zext i32 %i.rs to i64
  %i.ru = mul nuw nsw i64 %i.rt, 10
  %i.rv = add nuw nsw i64 %i.ru, %.01112.i.i265.epil.init ; 2 uses
  %i.rw = trunc i64 %i.rv to i32
  store i32 %i.rw, ptr %i.rr, align 4, !tbaa !65
  %i.rx = lshr i64 %i.rv, 32
  br label %._crit_edge.i.i267

._crit_edge.i.i267:                               ; preds = %._crit_edge.i.i267.unr-lcssa, %.epil.preheader1126
  %.lcssa1048 = phi i64 [ %i.sn, %._crit_edge.i.i267.unr-lcssa ], [ %i.rx, %.epil.preheader1126 ] ; 2 uses
  %i.ry = trunc nuw nsw i64 %.lcssa1048 to i32
  %.not.i.i268 = icmp eq i64 %.lcssa1048, 0
  br i1 %.not.i.i268, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275, label %bb.db

bb.da:                                            ; preds = %bb.da, %.lr.ph.i.i263.new
  %.013.i.i264 = phi i64 [ 0, %.lr.ph.i.i263.new ], [ %i.so, %bb.da ] ; 3 uses
  %.01112.i.i265 = phi i64 [ 0, %.lr.ph.i.i263.new ], [ %i.sn, %bb.da ]
  %niter1132 = phi i64 [ 0, %.lr.ph.i.i263.new ], [ %niter1132.next.1, %bb.da ]
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %.013.i.i264 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !65
  %i.sb = zext i32 %i.sa to i64
  %i.sc = mul nuw nsw i64 %i.sb, 10
  %i.sd = add nuw nsw i64 %i.sc, %.01112.i.i265   ; 2 uses
  %i.se = trunc i64 %i.sd to i32
  store i32 %i.se, ptr %i.rz, align 4, !tbaa !65
  %i.sf = lshr i64 %i.sd, 32
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %.013.i.i264
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 4 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !65
  %i.sj = zext i32 %i.si to i64
  %i.sk = mul nuw nsw i64 %i.sj, 10
  %i.sl = add nuw nsw i64 %i.sk, %i.sf            ; 2 uses
  %i.sm = trunc i64 %i.sl to i32
  store i32 %i.sm, ptr %i.sh, align 4, !tbaa !65
  %i.sn = lshr i64 %i.sl, 32                      ; 3 uses
  %i.so = add nuw nsw i64 %.013.i.i264, 2         ; 2 uses
  %niter1132.next.1 = add nuw nsw i64 %niter1132, 2 ; 2 uses
  %niter1132.ncmp.1 = icmp eq i64 %niter1132.next.1, %unroll_iter1131
  br i1 %niter1132.ncmp.1, label %._crit_edge.i.i267.unr-lcssa, label %bb.da, !llvm.loop !379

bb.db:                                            ; preds = %._crit_edge.i.i267
  %i.sp = add i64 %i.ro, 1                        ; 3 uses
  %i.sq = load i64, ptr %i.l, align 8, !tbaa !362
  %i.sr = icmp ugt i64 %i.sp, %i.sq
  br i1 %i.sr, label %bb.dc, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i269

bb.dc:                                            ; preds = %bb.db
  %i.ss = load ptr, ptr %7, align 8, !tbaa !41
  %i.st = load ptr, ptr %i.ss, align 8
  invoke void %i.st(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.sp)
          to label %.noexc274 unwind label %.loopexit705, !inline_history !380

.noexc274:                                        ; preds = %bb.dc
  %.pre.i.i.i271 = load i64, ptr %i.m, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i272 = add i64 %.pre.i.i.i271, 1
  %.pre.i273 = load ptr, ptr %i.k, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i269

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i269: ; preds = %.noexc274, %bb.db
  %i.su = phi ptr [ %i.rp, %bb.db ], [ %.pre.i273, %.noexc274 ]
  %.pre-phi.i.i.i270 = phi i64 [ %i.sp, %bb.db ], [ %.pre2.i.i.i272, %.noexc274 ]
  %i.sv = phi i64 [ %i.ro, %bb.db ], [ %.pre.i.i.i271, %.noexc274 ]
  store i64 %.pre-phi.i.i.i270, ptr %i.m, align 8, !tbaa !371
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.sv
  store i32 %i.ry, ptr %i.sw, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i269, %._crit_edge.i.i267, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit261
  br i1 %.not95, label %.backedge.backedge, label %bb.dd

.backedge.backedge:                               ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275, %bb.dd, %._crit_edge.i.i281, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283
  br label %.backedge, !llvm.loop !383

bb.dd:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit275
  %i.sx = load i64, ptr %.2.sroa.gep391, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i276 = icmp eq i64 %i.sx, 0
  br i1 %.not14.i.i276, label %.backedge.backedge, label %.lr.ph.i.i277

.lr.ph.i.i277:                                    ; preds = %bb.dd
  %i.sy = load ptr, ptr %.2.sroa.gep397, align 8, !tbaa !360 ; 4 uses
  %xtraiter1134 = and i64 %i.sx, 1
  %i.sz = icmp eq i64 %i.sx, 1
  br i1 %i.sz, label %.epil.preheader1133, label %.lr.ph.i.i277.new

.lr.ph.i.i277.new:                                ; preds = %.lr.ph.i.i277
  %unroll_iter1138 = and i64 %i.sx, -2
  br label %bb.de

._crit_edge.i.i281.unr-lcssa:                     ; preds = %bb.de
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  br i1 %lcmp.mod1135.not, label %._crit_edge.i.i281, label %.epil.preheader1133

.epil.preheader1133:                              ; preds = %._crit_edge.i.i281.unr-lcssa, %.lr.ph.i.i277
  %.013.i.i278.epil.init = phi i64 [ 0, %.lr.ph.i.i277 ], [ %i.tx, %._crit_edge.i.i281.unr-lcssa ]
  %.01112.i.i279.epil.init = phi i64 [ 0, %.lr.ph.i.i277 ], [ %i.tw, %._crit_edge.i.i281.unr-lcssa ]
  %lcmp.mod1137 = trunc i64 %i.sx to i1
  call void @llvm.assume(i1 %lcmp.mod1137)
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %.013.i.i278.epil.init ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !65
  %i.tc = zext i32 %i.tb to i64
  %i.td = mul nuw nsw i64 %i.tc, 10
  %i.te = add nuw nsw i64 %i.td, %.01112.i.i279.epil.init ; 2 uses
  %i.tf = trunc i64 %i.te to i32
  store i32 %i.tf, ptr %i.ta, align 4, !tbaa !65
  %i.tg = lshr i64 %i.te, 32
  br label %._crit_edge.i.i281

._crit_edge.i.i281:                               ; preds = %._crit_edge.i.i281.unr-lcssa, %.epil.preheader1133
  %.lcssa1049 = phi i64 [ %i.tw, %._crit_edge.i.i281.unr-lcssa ], [ %i.tg, %.epil.preheader1133 ] ; 2 uses
  %i.th = trunc nuw nsw i64 %.lcssa1049 to i32
  %.not.i.i282 = icmp eq i64 %.lcssa1049, 0
  br i1 %.not.i.i282, label %.backedge.backedge, label %bb.df

bb.de:                                            ; preds = %bb.de, %.lr.ph.i.i277.new
  %.013.i.i278 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %i.tx, %bb.de ] ; 3 uses
  %.01112.i.i279 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %i.tw, %bb.de ]
  %niter1139 = phi i64 [ 0, %.lr.ph.i.i277.new ], [ %niter1139.next.1, %bb.de ]
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %.013.i.i278 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !65
  %i.tk = zext i32 %i.tj to i64
  %i.tl = mul nuw nsw i64 %i.tk, 10
  %i.tm = add nuw nsw i64 %i.tl, %.01112.i.i279   ; 2 uses
  %i.tn = trunc i64 %i.tm to i32
  store i32 %i.tn, ptr %i.ti, align 4, !tbaa !65
  %i.to = lshr i64 %i.tm, 32
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %.013.i.i278
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !65
  %i.ts = zext i32 %i.tr to i64
  %i.tt = mul nuw nsw i64 %i.ts, 10
  %i.tu = add nuw nsw i64 %i.tt, %i.to            ; 2 uses
  %i.tv = trunc i64 %i.tu to i32
  store i32 %i.tv, ptr %i.tq, align 4, !tbaa !65
  %i.tw = lshr i64 %i.tu, 32                      ; 3 uses
  %i.tx = add nuw nsw i64 %.013.i.i278, 2         ; 2 uses
  %niter1139.next.1 = add nuw nsw i64 %niter1139, 2 ; 2 uses
  %niter1139.ncmp.1 = icmp eq i64 %niter1139.next.1, %unroll_iter1138
  br i1 %niter1139.ncmp.1, label %._crit_edge.i.i281.unr-lcssa, label %bb.de, !llvm.loop !379

bb.df:                                            ; preds = %._crit_edge.i.i281
  %i.ty = add i64 %i.sx, 1                        ; 3 uses
  %i.tz = load i64, ptr %.2.sroa.gep406, align 8, !tbaa !362
  %i.ua = icmp ugt i64 %i.ty, %i.tz
  br i1 %i.ua, label %bb.dg, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283

bb.dg:                                            ; preds = %bb.df
  %i.ub = load ptr, ptr %.2, align 8, !tbaa !41
  %i.uc = load ptr, ptr %i.ub, align 8
  invoke void %i.uc(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.ty)
          to label %.noexc288 unwind label %.loopexit705, !inline_history !380

.noexc288:                                        ; preds = %bb.dg
  %.pre.i.i.i285 = load i64, ptr %.2.sroa.gep391, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i286 = add i64 %.pre.i.i.i285, 1
  %.pre.i287 = load ptr, ptr %.2.sroa.gep397, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i283: ; preds = %.noexc288, %bb.df
  %i.ud = phi ptr [ %i.sy, %bb.df ], [ %.pre.i287, %.noexc288 ]
  %.pre-phi.i.i.i284 = phi i64 [ %i.ty, %bb.df ], [ %.pre2.i.i.i286, %.noexc288 ]
  %i.ue = phi i64 [ %i.sx, %bb.df ], [ %.pre.i.i.i285, %.noexc288 ]
  store i64 %.pre-phi.i.i.i284, ptr %.2.sroa.gep391, align 8, !tbaa !371
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.ue
  store i32 %i.th, ptr %i.uf, align 4, !tbaa !65
  br label %.backedge.backedge

bb.dh:                                            ; preds = %bb.bu
  %i.ug = add nsw i32 %.0421, -1                  ; 4 uses
  %i.uh = load i32, ptr %4, align 4, !tbaa !65
  %i.ui = sub nsw i32 %i.uh, %i.ug
  store i32 %i.ui, ptr %4, align 4, !tbaa !65
  %i.uj = icmp eq i32 %.0421, 0
  br i1 %i.uj, label %bb.di, label %bb.dv

bb.di:                                            ; preds = %bb.dh
  %i.uk = load i64, ptr %i.h, align 8, !tbaa !371 ; 8 uses
  %.not14.i.i290 = icmp eq i64 %i.uk, 0
  br i1 %.not14.i.i290, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, label %.lr.ph.i.i291

.lr.ph.i.i291:                                    ; preds = %bb.di
  %i.ul = load ptr, ptr %i.f, align 8, !tbaa !360 ; 4 uses
  %xtraiter1113 = and i64 %i.uk, 1
  %i.um = icmp eq i64 %i.uk, 1
  br i1 %i.um, label %.epil.preheader1112, label %.lr.ph.i.i291.new

.lr.ph.i.i291.new:                                ; preds = %.lr.ph.i.i291
  %unroll_iter1117 = and i64 %i.uk, -2
  br label %bb.dj

._crit_edge.i.i295.unr-lcssa:                     ; preds = %bb.dj
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1113, 0
  br i1 %lcmp.mod1114.not, label %._crit_edge.i.i295, label %.epil.preheader1112

.epil.preheader1112:                              ; preds = %._crit_edge.i.i295.unr-lcssa, %.lr.ph.i.i291
  %.013.i.i292.epil.init = phi i64 [ 0, %.lr.ph.i.i291 ], [ %i.vk, %._crit_edge.i.i295.unr-lcssa ]
  %.01112.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i291 ], [ %i.vj, %._crit_edge.i.i295.unr-lcssa ]
  %lcmp.mod1116 = trunc i64 %i.uk to i1
  call void @llvm.assume(i1 %lcmp.mod1116)
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.013.i.i292.epil.init ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !65
  %i.up = zext i32 %i.uo to i64
  %i.uq = mul nuw nsw i64 %i.up, 10
  %i.ur = add nuw nsw i64 %i.uq, %.01112.i.i293.epil.init ; 2 uses
  %i.us = trunc i64 %i.ur to i32
  store i32 %i.us, ptr %i.un, align 4, !tbaa !65
  %i.ut = lshr i64 %i.ur, 32
  br label %._crit_edge.i.i295

._crit_edge.i.i295:                               ; preds = %._crit_edge.i.i295.unr-lcssa, %.epil.preheader1112
  %.lcssa1071 = phi i64 [ %i.vj, %._crit_edge.i.i295.unr-lcssa ], [ %i.ut, %.epil.preheader1112 ] ; 2 uses
  %i.uu = trunc nuw nsw i64 %.lcssa1071 to i32
  %.not.i.i296 = icmp eq i64 %.lcssa1071, 0
  br i1 %.not.i.i296, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, label %bb.dk

bb.dj:                                            ; preds = %bb.dj, %.lr.ph.i.i291.new
  %.013.i.i292 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %i.vk, %bb.dj ] ; 3 uses
  %.01112.i.i293 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %i.vj, %bb.dj ]
  %niter1118 = phi i64 [ 0, %.lr.ph.i.i291.new ], [ %niter1118.next.1, %bb.dj ]
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.013.i.i292 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !65
  %i.ux = zext i32 %i.uw to i64
  %i.uy = mul nuw nsw i64 %i.ux, 10
  %i.uz = add nuw nsw i64 %i.uy, %.01112.i.i293   ; 2 uses
  %i.va = trunc i64 %i.uz to i32
  store i32 %i.va, ptr %i.uv, align 4, !tbaa !65
  %i.vb = lshr i64 %i.uz, 32
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.013.i.i292
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !65
  %i.vf = zext i32 %i.ve to i64
  %i.vg = mul nuw nsw i64 %i.vf, 10
  %i.vh = add nuw nsw i64 %i.vg, %i.vb            ; 2 uses
  %i.vi = trunc i64 %i.vh to i32
  store i32 %i.vi, ptr %i.vd, align 4, !tbaa !65
  %i.vj = lshr i64 %i.vh, 32                      ; 3 uses
  %i.vk = add nuw nsw i64 %.013.i.i292, 2         ; 2 uses
  %niter1118.next.1 = add nuw nsw i64 %niter1118, 2 ; 2 uses
  %niter1118.ncmp.1 = icmp eq i64 %niter1118.next.1, %unroll_iter1117
  br i1 %niter1118.ncmp.1, label %._crit_edge.i.i295.unr-lcssa, label %bb.dj, !llvm.loop !379

bb.dk:                                            ; preds = %._crit_edge.i.i295
  %i.vl = add i64 %i.uk, 1                        ; 3 uses
  %i.vm = load i64, ptr %i.g, align 8, !tbaa !362
  %i.vn = icmp ugt i64 %i.vl, %i.vm
  br i1 %i.vn, label %bb.dl, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297

bb.dl:                                            ; preds = %bb.dk
  %i.vo = load ptr, ptr %6, align 8, !tbaa !41
  %i.vp = load ptr, ptr %i.vo, align 8
  invoke void %i.vp(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.vl)
          to label %.noexc302 unwind label %bb.bp, !inline_history !380

.noexc302:                                        ; preds = %bb.dl
  %.pre.i.i.i299 = load i64, ptr %i.h, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i300 = add i64 %.pre.i.i.i299, 1
  %.pre.i301 = load ptr, ptr %i.f, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297: ; preds = %.noexc302, %bb.dk
  %i.vq = phi ptr [ %i.ul, %bb.dk ], [ %.pre.i301, %.noexc302 ]
  %.pre-phi.i.i.i298 = phi i64 [ %i.vl, %bb.dk ], [ %.pre2.i.i.i300, %.noexc302 ] ; 2 uses
  %i.vr = phi i64 [ %i.uk, %bb.dk ], [ %.pre.i.i.i299, %.noexc302 ]
  store i64 %.pre-phi.i.i.i298, ptr %i.h, align 8, !tbaa !371
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.vr
  store i32 %i.uu, ptr %i.vs, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297, %._crit_edge.i.i295, %bb.di
  %i.vt = phi i64 [ %.pre-phi.i.i.i298, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i297 ], [ %i.uk, %._crit_edge.i.i295 ], [ 0, %bb.di ]
  %i.vu = load i64, ptr %i.c, align 8, !tbaa !371
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.vx = add nsw i32 %i.vw, %i.vv                ; 3 uses
  %i.vy = trunc i64 %i.vt to i32
  %i.vz = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.wa = add nsw i32 %i.vz, %i.vy                ; 5 uses
  %i.wb = add nsw i32 %i.vx, 1
  %i.wc = icmp slt i32 %i.wb, %i.wa
  br i1 %i.wc, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dm

bb.dm:                                            ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303
  %i.wd = icmp sgt i32 %i.vx, %i.wa
  br i1 %i.wd, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.we = call noundef i32 @llvm.smin.i32(i32 %i.vw, i32 %i.vz) ; 2 uses
  %.not.not.not55.i304 = icmp sgt i32 %i.wa, %i.we
  br i1 %.not.not.not55.i304, label %.lr.ph.i306, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321

.lr.ph.i306:                                      ; preds = %bb.dn
  %i.wf = load ptr, ptr %i.a, align 8
  %i.wg = load ptr, ptr %i.f, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dr, %.lr.ph.i306
  %.0.in57.i307 = phi i32 [ %i.wa, %.lr.ph.i306 ], [ %.058.i309, %bb.dr ] ; 5 uses
  %.03256.i308 = phi i64 [ 0, %.lr.ph.i306 ], [ %i.xa, %bb.dr ] ; 2 uses
  %.058.i309 = add nsw i32 %.0.in57.i307, -1      ; 4 uses
  %.not.i.i310 = icmp sgt i32 %.0.in57.i307, %i.vw
  %i.wh = icmp sle i32 %.0.in57.i307, %i.vx
  %or.cond.i311 = and i1 %.not.i.i310, %i.wh
  br i1 %or.cond.i311, label %bb.dp, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315

bb.dp:                                            ; preds = %bb.do
  %i.wi = sub nsw i32 %.058.i309, %i.vw
  %i.wj = zext i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !65
  %i.wm = zext i32 %i.wl to i64
  %i.wn = shl nuw nsw i64 %i.wm, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315: ; preds = %bb.do, %bb.dp
  %i.wo = phi i64 [ %i.wn, %bb.dp ], [ 0, %bb.do ] ; 2 uses
  %.not.i45.i316 = icmp sgt i32 %.0.in57.i307, %i.vz
  %i.wp = icmp sle i32 %.0.in57.i307, %i.wa
  %or.cond53.i317 = and i1 %.not.i45.i316, %i.wp
  br i1 %or.cond53.i317, label %bb.dq, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318

bb.dq:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315
  %i.wq = sub nsw i32 %.058.i309, %i.vz
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !65
  %i.wu = zext i32 %i.wt to i64
  %i.wv = or disjoint i64 %.03256.i308, %i.wu
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318: ; preds = %bb.dq, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315
  %i.ww = phi i64 [ %i.wv, %bb.dq ], [ %.03256.i308, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i315 ] ; 2 uses
  %i.wx = icmp ugt i64 %i.wo, %i.ww
  br i1 %i.wx, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, label %bb.dr

bb.dr:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318
  %i.wy = sub nuw nsw i64 %i.ww, %i.wo            ; 2 uses
  %i.wz = icmp ult i64 %i.wy, 2
  %i.xa = shl nuw nsw i64 %i.wy, 32
  %.not.not.not.i319 = icmp sgt i32 %.058.i309, %i.we
  %or.cond437 = select i1 %i.wz, i1 %.not.not.not.i319, i1 false
  br i1 %or.cond437, label %bb.do, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321, !llvm.loop !378

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321: ; preds = %bb.dr, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318, %bb.dn, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303, %bb.dm
  %i.xb = phi i8 [ 48, %bb.dn ], [ 49, %bb.dm ], [ 48, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit303 ], [ 49, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i318 ], [ 48, %bb.dr ]
  %i.xc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !39 ; 2 uses
  %i.xe = add i64 %i.xd, 1                        ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !40
  %i.xh = icmp ugt i64 %i.xe, %i.xg
  br i1 %i.xh, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321
  %i.xi = load ptr, ptr %3, align 8, !tbaa !41
  %i.xj = load ptr, ptr %i.xi, align 8
  invoke void %i.xj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.xe)
          to label %.noexc323 unwind label %bb.du, !inline_history !384

.noexc323:                                        ; preds = %bb.ds
  %.pre.i322 = load i64, ptr %i.xc, align 8, !tbaa !39 ; 2 uses
  %.pre2.i = add i64 %.pre.i322, 1
  br label %bb.dt

bb.dt:                                            ; preds = %.noexc323, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321
  %.pre-phi.i = phi i64 [ %i.xe, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321 ], [ %.pre2.i, %.noexc323 ]
  %i.xk = phi i64 [ %i.xd, %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit321 ], [ %.pre.i322, %.noexc323 ]
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !37
  store i64 %.pre-phi.i, ptr %i.xc, align 8, !tbaa !39
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xk
  store i8 %i.xb, ptr %i.xn, align 1, !tbaa !45
  br label %.loopexit

bb.du:                                            ; preds = %bb.ds
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %bb.dh
  %i.xp = zext nneg i32 %.0421 to i64             ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !40 ; 2 uses
  %i.xs = icmp ult i64 %i.xr, %i.xp
  br i1 %i.xs, label %bb.dw, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327

bb.dw:                                            ; preds = %bb.dv
  %i.xt = load ptr, ptr %3, align 8, !tbaa !41
  %i.xu = load ptr, ptr %i.xt, align 8
  invoke void %i.xu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.xp)
          to label %.noexc326 unwind label %bb.bp, !inline_history !382

.noexc326:                                        ; preds = %bb.dw
  %.pre.i325 = load i64, ptr %i.xq, align 8, !tbaa !40
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327: ; preds = %bb.dv, %.noexc326
  %i.xv = phi i64 [ %i.xr, %bb.dv ], [ %.pre.i325, %.noexc326 ]
  %..i324 = call i64 @llvm.umin.i64(i64 %i.xp, i64 %i.xv)
  %i.xw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i324, ptr %i.xw, align 8, !tbaa !39
  %.not680 = icmp eq i32 %.0421, 1                ; 2 uses
  br i1 %.not680, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327
  %i.xx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.ug to i64
  br label %bb.dx

._crit_edge:                                      ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit327
  %i.xy = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.ed unwind label %bb.en     ; 6 uses

bb.dx:                                            ; preds = %.lr.ph, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341 ] ; 2 uses
  %i.xz = invoke noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.ya = trunc i32 %i.xz to i8
  %i.yb = add i8 %i.ya, 48
  %i.yc = load ptr, ptr %i.xx, align 8, !tbaa !37
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %indvars.iv
  store i8 %i.yb, ptr %i.yd, align 1, !tbaa !45
  %i.ye = load i64, ptr %i.c, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i328 = icmp eq i64 %i.ye, 0
  br i1 %.not14.i.i328, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, label %.lr.ph.i.i329

.lr.ph.i.i329:                                    ; preds = %bb.dy
  %i.yf = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter1106 = and i64 %i.ye, 1
  %i.yg = icmp eq i64 %i.ye, 1
  br i1 %i.yg, label %.epil.preheader1105, label %.lr.ph.i.i329.new

.lr.ph.i.i329.new:                                ; preds = %.lr.ph.i.i329
  %unroll_iter1110 = and i64 %i.ye, -2
  br label %bb.dz

._crit_edge.i.i333.unr-lcssa:                     ; preds = %bb.dz
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %._crit_edge.i.i333, label %.epil.preheader1105

.epil.preheader1105:                              ; preds = %._crit_edge.i.i333.unr-lcssa, %.lr.ph.i.i329
  %.013.i.i330.epil.init = phi i64 [ 0, %.lr.ph.i.i329 ], [ %i.ze, %._crit_edge.i.i333.unr-lcssa ]
  %.01112.i.i331.epil.init = phi i64 [ 0, %.lr.ph.i.i329 ], [ %i.zd, %._crit_edge.i.i333.unr-lcssa ]
  %lcmp.mod1109 = trunc i64 %i.ye to i1
  call void @llvm.assume(i1 %lcmp.mod1109)
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.013.i.i330.epil.init ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !65
  %i.yj = zext i32 %i.yi to i64
  %i.yk = mul nuw nsw i64 %i.yj, 10
  %i.yl = add nuw nsw i64 %i.yk, %.01112.i.i331.epil.init ; 2 uses
  %i.ym = trunc i64 %i.yl to i32
  store i32 %i.ym, ptr %i.yh, align 4, !tbaa !65
  %i.yn = lshr i64 %i.yl, 32
  br label %._crit_edge.i.i333

._crit_edge.i.i333:                               ; preds = %._crit_edge.i.i333.unr-lcssa, %.epil.preheader1105
  %.lcssa1078 = phi i64 [ %i.zd, %._crit_edge.i.i333.unr-lcssa ], [ %i.yn, %.epil.preheader1105 ] ; 2 uses
  %i.yo = trunc nuw nsw i64 %.lcssa1078 to i32
  %.not.i.i334 = icmp eq i64 %.lcssa1078, 0
  br i1 %.not.i.i334, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341, label %bb.ea

bb.dz:                                            ; preds = %bb.dz, %.lr.ph.i.i329.new
  %.013.i.i330 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %i.ze, %bb.dz ] ; 3 uses
  %.01112.i.i331 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %i.zd, %bb.dz ]
  %niter1111 = phi i64 [ 0, %.lr.ph.i.i329.new ], [ %niter1111.next.1, %bb.dz ]
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.013.i.i330 ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !65
  %i.yr = zext i32 %i.yq to i64
  %i.ys = mul nuw nsw i64 %i.yr, 10
  %i.yt = add nuw nsw i64 %i.ys, %.01112.i.i331   ; 2 uses
  %i.yu = trunc i64 %i.yt to i32
  store i32 %i.yu, ptr %i.yp, align 4, !tbaa !65
  %i.yv = lshr i64 %i.yt, 32
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.013.i.i330
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !65
  %i.yz = zext i32 %i.yy to i64
  %i.za = mul nuw nsw i64 %i.yz, 10
  %i.zb = add nuw nsw i64 %i.za, %i.yv            ; 2 uses
  %i.zc = trunc i64 %i.zb to i32
  store i32 %i.zc, ptr %i.yx, align 4, !tbaa !65
  %i.zd = lshr i64 %i.zb, 32                      ; 3 uses
  %i.ze = add nuw nsw i64 %.013.i.i330, 2         ; 2 uses
  %niter1111.next.1 = add nuw nsw i64 %niter1111, 2 ; 2 uses
  %niter1111.ncmp.1 = icmp eq i64 %niter1111.next.1, %unroll_iter1110
  br i1 %niter1111.ncmp.1, label %._crit_edge.i.i333.unr-lcssa, label %bb.dz, !llvm.loop !379

bb.ea:                                            ; preds = %._crit_edge.i.i333
  %i.zf = add i64 %i.ye, 1                        ; 3 uses
  %i.zg = load i64, ptr %i.b, align 8, !tbaa !362
  %i.zh = icmp ugt i64 %i.zf, %i.zg
  br i1 %i.zh, label %bb.eb, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335

bb.eb:                                            ; preds = %bb.ea
  %i.zi = load ptr, ptr %5, align 8, !tbaa !41
  %i.zj = load ptr, ptr %i.zi, align 8
  invoke void %i.zj(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zf)
          to label %.noexc340 unwind label %bb.ec, !inline_history !380

.noexc340:                                        ; preds = %bb.eb
  %.pre.i.i.i337 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i338 = add i64 %.pre.i.i.i337, 1
  %.pre.i339 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335: ; preds = %.noexc340, %bb.ea
  %i.zk = phi ptr [ %i.yf, %bb.ea ], [ %.pre.i339, %.noexc340 ]
  %.pre-phi.i.i.i336 = phi i64 [ %i.zf, %bb.ea ], [ %.pre2.i.i.i338, %.noexc340 ]
  %i.zl = phi i64 [ %i.ye, %bb.ea ], [ %.pre.i.i.i337, %.noexc340 ]
  store i64 %.pre-phi.i.i.i336, ptr %i.c, align 8, !tbaa !371
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %i.zl
  store i32 %i.yo, ptr %i.zm, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit341:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i335, %._crit_edge.i.i333, %bb.dy
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.dx, !llvm.loop !385

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %._crit_edge
  %i.zo = load i64, ptr %i.c, align 8, !tbaa !371
  %i.zp = trunc i64 %i.zo to i32
  %i.zq = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.zr = add nsw i32 %i.zq, %i.zp                ; 3 uses
  %i.zs = load i64, ptr %i.h, align 8, !tbaa !371
  %i.zt = trunc i64 %i.zs to i32
  %i.zu = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.zv = add nsw i32 %i.zu, %i.zt                ; 5 uses
  %i.zw = add nsw i32 %i.zr, 1
  %i.zx = icmp slt i32 %i.zw, %i.zv
  br i1 %i.zx, label %.thread433, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zy = icmp sgt i32 %i.zr, %i.zv
  br i1 %i.zy, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zz = call noundef i32 @llvm.smin.i32(i32 %i.zq, i32 %i.zu) ; 2 uses
  %.not.not.not55.i342 = icmp sgt i32 %i.zv, %i.zz
  br i1 %.not.not.not55.i342, label %.lr.ph.i344, label %bb.el

.lr.ph.i344:                                      ; preds = %bb.ef
  %i.aaa = load ptr, ptr %i.a, align 8
  %i.aab = load ptr, ptr %i.f, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph.i344
  %.0.in57.i345 = phi i32 [ %i.zv, %.lr.ph.i344 ], [ %.058.i347, %bb.ek ] ; 5 uses
  %.03256.i346 = phi i64 [ 0, %.lr.ph.i344 ], [ %i.aav, %bb.ek ] ; 2 uses
  %.058.i347 = add nsw i32 %.0.in57.i345, -1      ; 4 uses
  %.not.i.i348 = icmp sgt i32 %.0.in57.i345, %i.zq
  %i.aac = icmp sle i32 %.0.in57.i345, %i.zr
  %or.cond.i349 = and i1 %.not.i.i348, %i.aac
  br i1 %or.cond.i349, label %bb.eh, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353

bb.eh:                                            ; preds = %bb.eg
  %i.aad = sub nsw i32 %.058.i347, %i.zq
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !65
  %i.aah = zext i32 %i.aag to i64
  %i.aai = shl nuw nsw i64 %i.aah, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353: ; preds = %bb.eg, %bb.eh
  %i.aaj = phi i64 [ %i.aai, %bb.eh ], [ 0, %bb.eg ] ; 3 uses
  %.not.i45.i354 = icmp sgt i32 %.0.in57.i345, %i.zu
  %i.aak = icmp sle i32 %.0.in57.i345, %i.zv
  %or.cond53.i355 = and i1 %.not.i45.i354, %i.aak
  br i1 %or.cond53.i355, label %bb.ei, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356

bb.ei:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353
  %i.aal = sub nsw i32 %.058.i347, %i.zu
  %i.aam = zext i32 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.aam
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !65
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = or disjoint i64 %.03256.i346, %i.aap
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356: ; preds = %bb.ei, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353
  %i.aar = phi i64 [ %i.aaq, %bb.ei ], [ %.03256.i346, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i353 ] ; 3 uses
  %i.aas = icmp ugt i64 %i.aaj, %i.aar
  br i1 %i.aas, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359, label %bb.ej

bb.ej:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356
  %i.aat = sub nuw nsw i64 %i.aar, %i.aaj         ; 2 uses
  %i.aau = icmp ugt i64 %i.aat, 1
  br i1 %i.aau, label %.thread433, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aav = shl nuw nsw i64 %i.aat, 32
  %.not.not.not.i357 = icmp sgt i32 %.058.i347, %i.zz
  br i1 %.not.not.not.i357, label %bb.eg, label %.thread.loopexit.i358, !llvm.loop !378

.thread.loopexit.i358:                            ; preds = %bb.ek
  %i.aaw = icmp ne i64 %i.aar, %i.aaj
  br label %bb.el

bb.el:                                            ; preds = %bb.ef, %.thread.loopexit.i358
  %.4.i343.ph = phi i1 [ false, %bb.ef ], [ %i.aaw, %.thread.loopexit.i358 ]
  %i.aax = and i32 %i.xy, 1
  %.not99 = icmp eq i32 %i.aax, 0
  %or.cond112 = or i1 %.not99, %.4.i343.ph
  br i1 %or.cond112, label %.thread433, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359: ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i356, %bb.ee, %bb.el
  %i.aay = icmp eq i32 %i.xy, 9
  br i1 %i.aay, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !37
  %i.abb = sext i32 %i.ug to i64
  %i.abc = getelementptr inbounds i8, ptr %i.aba, i64 %i.abb
  store i8 58, ptr %i.abc, align 1, !tbaa !45
  br i1 %.not680, label %.critedge, label %.lr.ph479

.lr.ph479:                                        ; preds = %bb.em, %bb.eo
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %bb.eo ], [ %i.xp, %bb.em ] ; 3 uses
  %indvars.iv.next518 = add nsw i64 %indvars.iv517, -1 ; 2 uses
  %i.abd = load ptr, ptr %i.aaz, align 8, !tbaa !37
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %indvars.iv.next518 ; 2 uses
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !45
  %i.abg = icmp eq i8 %i.abf, 58
  br i1 %i.abg, label %bb.eo, label %.critedge

.critedge:                                        ; preds = %.lr.ph479, %bb.eo, %bb.em
  %i.abh = load ptr, ptr %i.aaz, align 8, !tbaa !37 ; 2 uses
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !45
  %i.abj = icmp eq i8 %i.abi, 58
  br i1 %i.abj, label %bb.ep, label %.loopexit

bb.en:                                            ; preds = %._crit_edge
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eo:                                            ; preds = %.lr.ph479
  store i8 48, ptr %i.abe, align 1, !tbaa !45
  %i.abl = load ptr, ptr %i.aaz, align 8, !tbaa !37
  %i.abm = getelementptr i8, ptr %i.abl, i64 %indvars.iv517
  %i.abn = getelementptr i8, ptr %i.abm, i64 -2   ; 2 uses
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !45
  %i.abp = add i8 %i.abo, 1
  store i8 %i.abp, ptr %i.abn, align 1, !tbaa !45
  %i.abq = icmp samesign ugt i64 %indvars.iv517, 2
  br i1 %i.abq, label %.lr.ph479, label %.critedge, !llvm.loop !386

bb.ep:                                            ; preds = %.critedge
  store i8 49, ptr %i.abh, align 1, !tbaa !45
  %i.abr = load i32, ptr %4, align 4, !tbaa !65
  %i.abs = add nsw i32 %i.abr, 1
  store i32 %i.abs, ptr %4, align 4, !tbaa !65
  br label %.loopexit

bb.eq:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit359
  %i.abt = add nsw i32 %i.xy, 1
  br label %.thread433

.thread433:                                       ; preds = %bb.ej, %bb.ed, %bb.eq, %bb.el
  %.073 = phi i32 [ %i.abt, %bb.eq ], [ %i.xy, %bb.el ], [ %i.xy, %bb.ed ], [ %i.xy, %bb.ej ]
  %i.abu = trunc i32 %.073 to i8
  %i.abv = add i8 %i.abu, 48
  %i.abw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !37
  %i.aby = sext i32 %i.ug to i64
  %i.abz = getelementptr inbounds i8, ptr %i.abx, i64 %i.aby
  store i8 %i.abv, ptr %i.abz, align 1, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread433, %bb.ep, %.critedge, %bb.dt
  %i.aca = load ptr, ptr %i.p, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aca, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt2v96detail6bigintD2Ev.exit, label %bb.er

bb.er:                                            ; preds = %.loopexit
  %i.acb = load i64, ptr %i.q, align 8, !tbaa !362
  %i.acc = shl i64 %i.acb, 2
end_hunk_1
begin_hunk_2_@_ZN3fmt2v96detail6bigintlSEi:bb.a
  %i.s = shl <4 x i32> %wide.load26, %broadcast.splat25
  %i.t = add <4 x i32> %i.r, %i.p
  %i.u = add <4 x i32> %i.s, %i.q
  store <4 x i32> %i.t, ptr %i.l, align 4, !tbaa !65
  store <4 x i32> %i.u, ptr %i.m, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.o, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01418.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.017.ph = phi i32 [ 0, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.y, %scalar.ph ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418 = phi i64 [ %i.ab, %scalar.ph ], [ %.01418.ph, %scalar.ph.preheader ] ; 2 uses
  %.017 = phi i32 [ %i.y, %scalar.ph ], [ %.017.ph, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01418 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65   ; 2 uses
  %i.y = lshr i32 %i.x, %i.k                      ; 2 uses
  %i.z = shl i32 %i.x, %i.e
  %i.aa = add i32 %i.z, %.017
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !65
  %i.ab = add nuw i64 %.01418, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !390

bb.c:                                             ; preds = %._crit_edge
  %i.ac = add i64 %i.h, 1                         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !362
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac), !call_target !391, !inline_history !448
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit:   ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.ac, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.ai = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !360
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !371
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store i32 %.lcssa, ptr %i.al, align 4, !tbaa !65
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge, %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360
  store i32 1, ptr %i.c, align 4, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !362
  %.not8.i.i.not = icmp eq i64 %i.e, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !call_target !391, !inline_history !449
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !362
  %i.h = icmp ne i64 %.pre.i.i.i.i, 0
  %i.i = zext i1 %i.h to i64
  br label %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit

_ZN3fmt2v96detail6bigintaSIiEEvT_.exit:           ; preds = %bb.b, %bb.c
  %..i.i.i.i = phi i64 [ 1, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %..i.i.i.i, ptr %i.j, align 8, !tbaa !371
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !363
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i32 [ %i.l, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %.not = icmp slt i32 %1, %.0
  %i.l = shl i32 %.0, 1
  br i1 %.not, label %bb.d, label %.preheader, !llvm.loop !450

bb.d:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360
  store i32 5, ptr %i.n, align 4, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !362
  %.not8.i.i18.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i18.not, label %bb.e, label %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !41
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !call_target !391, !inline_history !449
  %.pre.i.i.i.i19 = load i64, ptr %i.o, align 8, !tbaa !362
  %i.s = icmp ne i64 %.pre.i.i.i.i19, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21

_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21:         ; preds = %bb.d, %bb.e
  %..i.i.i.i20 = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %..i.i.i.i20, ptr %i.u, align 8, !tbaa !371
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.v, align 8, !tbaa !363
  %i.w = ashr i32 %.0, 2                          ; 2 uses
  %.not1323 = icmp eq i32 %i.w, 0
  br i1 %.not1323, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit
  %.124 = phi i32 [ %i.bh, %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit ], [ %i.w, %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21 ] ; 2 uses
  tail call void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0)
  %i.x = and i32 %.124, %1
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.y = load i64, ptr %i.u, align 8, !tbaa !371  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.y, 0
  br i1 %.not14.i.i, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !360  ; 4 uses
  %xtraiter = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.y, -2
  br label %bb.g

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ax, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i.epil.init ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 5
  %i.af = add nuw nsw i64 %i.ae, %.01112.i.i.epil.init ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !65
  %i.ah = lshr i64 %i.af, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ax, %._crit_edge.i.i.unr-lcssa ], [ %i.ah, %.epil.preheader ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %.lcssa to i32
  %.not.i.i22 = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i22, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.g ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ax, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !65
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %.01112.i.i      ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !65
  %i.ap = lshr i64 %i.an, 32
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !65
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw nsw i64 %i.at, 5
  %i.av = add nuw nsw i64 %i.au, %i.ap            ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !65
  %i.ax = lshr i64 %i.av, 32                      ; 3 uses
  %i.ay = add nuw nsw i64 %.013.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.g, !llvm.loop !379

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.az = add i64 %i.y, 1                         ; 3 uses
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !362
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.i, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %0, align 8, !tbaa !41
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.az), !call_target !391, !inline_history !451
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.be = phi ptr [ %i.z, %bb.h ], [ %.pre.i, %bb.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.az, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bf = phi i64 [ %i.y, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.u, align 8, !tbaa !371
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.ai, ptr %i.bg, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit:        ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.f, %.lr.ph
  %i.bh = ashr i32 %.124, 1                       ; 2 uses
  %.not13 = icmp eq i32 %i.bh, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !452

._crit_edge:                                      ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21
  %i.bi = tail call noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !371  ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !363  ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !371  ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !363  ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %smin = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %i.c)
  %i.s = trunc i64 %i.b to i32
  %.not35.not.i98 = icmp slt i32 %spec.store.select.i, %i.s
  br i1 %.not35.not.i98, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = and i64 %i.b, 4294967295
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.u = trunc nuw i64 %i.v to i32
  %.not35.not.i = icmp slt i32 %spec.store.select.i, %i.u
  br i1 %.not35.not.i, label %bb.e, label %._crit_edge, !llvm.loop !381

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.in.i100 = phi i32 [ %i.i, %.lr.ph ], [ %.0.i, %bb.d ]
  %indvars.iv.i99 = phi i64 [ %i.t, %.lr.ph ], [ %i.v, %bb.d ]
  %i.v = add nsw i64 %indvars.iv.i99, -1          ; 3 uses
  %.0.i = add nsw i32 %.0.in.i100, -1             ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65   ; 2 uses
  %i.y = zext i32 %.0.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !65  ; 2 uses
  %.not37.i = icmp eq i32 %i.x, %i.aa
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !381

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.in.i.lcssa = phi i32 [ %i.i, %bb.c ], [ %.0.i, %bb.d ]
  %or.cond.not = icmp sgt i32 %.0.in.i.lcssa, %smin
  br i1 %or.cond.not, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %bb.e
  %i.ab = icmp ugt i32 %i.x, %i.aa
  br i1 %i.ab, label %select.unfold, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = sub nsw i32 %i.e, %i.k                  ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %_ZN3fmt2v96detail6bigint5alignERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.af = add nsw i32 %i.ad, %i.c
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !362 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.g, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !41
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ag), !call_target !391, !inline_history !453
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !362
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i: ; preds = %bb.g, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.am) ; 2 uses
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !371
  %i.an = icmp sgt i32 %i.c, 0
  br i1 %i.an, label %.lr.ph.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !360
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i
  %i.ao = add nsw i32 %i.c, -1                    ; 2 uses
  %i.ap = add i32 %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !360 ; 15 uses
  %i.as = sext i32 %i.ap to i64                   ; 5 uses
  %i.at = zext i32 %i.ao to i64                   ; 5 uses
  %i.au = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.av = sub nsw i64 %i.at, %i.as
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.ay = sub nsw i64 %i.at, %n.vec
  %i.az = sub nsw i64 %i.as, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = sub i64 %i.at, %index
  %i.bb = sub i64 %i.as, %index
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -12
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bd, align 4, !tbaa !65
  %wide.load113 = load <4 x i32>, ptr %i.be, align 4, !tbaa !65
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.bb ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -12
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -28
  store <4 x i32> %wide.load, ptr %i.bg, align 4, !tbaa !65
  store <4 x i32> %wide.load113, ptr %i.bh, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i ], [ %i.ay, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i ], [ %i.az, %middle.block ] ; 2 uses
  %i.bj = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !65
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i11.prol
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !65
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !455

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bn = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bn, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i
  %i.bo = phi ptr [ %.pre.i, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ], [ %i.ar, %scalar.ph.prol.loopexit ]
  %i.bp = zext nneg i32 %i.ad to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !65
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !363
  %i.br = sub nsw i32 %i.bq, %i.ad                ; 2 uses
  store i32 %i.br, ptr %i.d, align 8, !tbaa !363
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !371
  br label %_ZN3fmt2v96detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !65
  %i.bv = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65
  %i.by = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !65
  %i.ca = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !65
  %i.cd = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !65
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next19.i.2
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !65
  %i.ch = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.ci = getelementptr i8, ptr %i.ch, i64 -12
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !65
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i12.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i12.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !457

_ZN3fmt2v96detail6bigint5alignERKS2_.exit:        ; preds = %select.unfold, %._crit_edge.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.cj = phi i32 [ %i.e, %select.unfold ], [ %i.br, %._crit_edge.i ]
  %i.ck = phi i64 [ %i.b, %select.unfold ], [ %..i.i.i, %._crit_edge.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26: ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit
  %i.cn = phi i32 [ %i.cj, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fi, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ]
  %i.co = phi i64 [ %.pre, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fk, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ] ; 5 uses
  %i.cp = phi i64 [ %i.ck, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %..i.i.i.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fg, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ]
  %i.cq = trunc i64 %i.cp to i32
  %.not20.i = icmp eq i64 %i.co, 0
  br i1 %.not20.i, label %.preheader.thread.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.cr = load i32, ptr %i.j, align 8, !tbaa !363
  %i.cs = sub nsw i32 %i.cr, %i.cn                ; 2 uses
  %i.ct = load ptr, ptr %i.ac, align 8, !tbaa !360 ; 3 uses
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !360 ; 4 uses
  %xtraiter130 = and i64 %i.co, 1
  %i.cv = icmp eq i64 %i.co, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i13.new

.lr.ph.i13.new:                                   ; preds = %.lr.ph.i13
  %unroll_iter = and i64 %i.co, -2
  br label %bb.h

.preheader.i.unr-lcssa:                           ; preds = %bb.h
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i13
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %i.ej, %.preheader.i.unr-lcssa ]
  %.01222.i.epil.init = phi i32 [ %i.cs, %.lr.ph.i13 ], [ %i.ei, %.preheader.i.unr-lcssa ] ; 2 uses
  %.01721.i.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %i.eh, %.preheader.i.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.023.i.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !65
  %i.cy = zext i32 %.01222.i.epil.init to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !65
  %i.db = zext i32 %i.da to i64
  %i.dc = zext i32 %i.cx to i64
  %i.dd = add nuw nsw i64 %.01721.i.epil.init, %i.dc
  %i.de = sub nsw i64 %i.db, %i.dd                ; 2 uses
  %i.df = trunc i64 %i.de to i32
  store i32 %i.df, ptr %i.cz, align 4, !tbaa !65
  %i.dg = add nsw i32 %.01222.i.epil.init, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa115 = phi i64 [ %i.ef, %.preheader.i.unr-lcssa ], [ %i.de, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ei, %.preheader.i.unr-lcssa ], [ %i.dg, %.epil.preheader ]
  %i.dh = icmp sgt i64 %.lcssa115, -1
  br i1 %i.dh, label %.preheader.thread.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.preheader.i
  %i.di = zext i32 %.lcssa to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.di ; 2 uses
  %.promoted.i = load i32, ptr %i.dj, align 4, !tbaa !65
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i13.new
  %.023.i = phi i64 [ 0, %.lr.ph.i13.new ], [ %i.ej, %bb.h ] ; 3 uses
  %.01222.i = phi i32 [ %i.cs, %.lr.ph.i13.new ], [ %i.ei, %bb.h ] ; 3 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i13.new ], [ %i.eh, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i13.new ], [ %niter.next.1, %bb.h ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.023.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !65
  %i.dm = zext i32 %.01222.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !65
  %i.dp = zext i32 %i.do to i64
  %i.dq = zext i32 %i.dl to i64
  %i.dr = add nuw nsw i64 %.01721.i, %i.dq
  %i.ds = sub nsw i64 %i.dp, %i.dr                ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %i.dn, align 4, !tbaa !65
  %i.du = lshr i64 %i.ds, 63
  %i.dv = add nsw i32 %.01222.i, 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.023.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !65
  %i.dz = zext i32 %i.dv to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.ec = zext i32 %i.eb to i64
  %i.ed = zext i32 %i.dy to i64
  %i.ee = add nuw nsw i64 %i.du, %i.ed
  %i.ef = sub nsw i64 %i.ec, %i.ee                ; 3 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ea, align 4, !tbaa !65
  %i.eh = lshr i64 %i.ef, 63                      ; 2 uses
  %i.ei = add nsw i32 %.01222.i, 2                ; 3 uses
  %i.ej = add nuw nsw i64 %.023.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !458

bb.i:                                             ; preds = %bb.i, %.lr.ph27.i
  %i.ek = phi i32 [ %.promoted.i, %.lr.ph27.i ], [ %i.en, %bb.i ]
  %.126.i = phi i64 [ 1, %.lr.ph27.i ], [ %i.eo, %bb.i ]
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 %i.el, %.126.i              ; 3 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i64 %i.em, 63
  %.not13.i = icmp sgt i64 %i.em, -1
  br i1 %.not13.i, label %._crit_edge.i15, label %bb.i, !llvm.loop !459

._crit_edge.i15:                                  ; preds = %bb.i
  store i32 %i.en, ptr %i.dj, align 4, !tbaa !65
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i15, %.preheader.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.ep = load ptr, ptr %i.cl, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 1) ; 2 uses
  %i.eq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph102, label %.critedge.i.i

.lr.ph102:                                        ; preds = %.preheader.thread.i
  %i.es = and i64 %i.cp, 2147483647
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.et = trunc nuw i64 %i.ew to i32              ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.k, label %.critedge.i.i, !llvm.loop !460

bb.k:                                             ; preds = %.lr.ph102, %bb.j
  %i.ev = phi i32 [ %i.eq, %.lr.ph102 ], [ %i.et, %bb.j ]
  %indvars.iv.i14.i101 = phi i64 [ %i.es, %.lr.ph102 ], [ %i.ew, %bb.j ]
  %i.ew = add nsw i64 %indvars.iv.i14.i101, -1    ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !65
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !460

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !460

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.ev, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ]
  %i.fa = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.fb = load i64, ptr %i.cm, align 8, !tbaa !362 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.l, label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.fd = load ptr, ptr %0, align 8, !tbaa !41
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.fa), !call_target !391, !inline_history !461
  %.pre.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !362
  br label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  %i.ff = phi i64 [ %i.fb, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.l ]
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ff) ; 5 uses
  store i64 %..i.i.i.i, ptr %i.a, align 8, !tbaa !371
  %i.fg = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fh = trunc nuw i64 %..i.i.i.i to i32         ; 3 uses
  %i.fi = load i32, ptr %i.d, align 8, !tbaa !363 ; 2 uses
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = load i64, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 4 uses
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !363
  %i.fn = add nsw i32 %i.fm, %i.fl                ; 2 uses
  %.not.i16 = icmp eq i32 %i.fj, %i.fn
  br i1 %.not.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fo = icmp sgt i32 %i.fj, %i.fn
  br i1 %i.fo, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.n:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fp = sub nsw i32 %i.fh, %i.fl
  %spec.store.select.i18 = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0) ; 3 uses
  %i.fq = load ptr, ptr %i.cl, align 8
  %i.fr = load ptr, ptr %i.ac, align 8
  %smin62 = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i18, i32 %i.fh)
  %i.fs = trunc nuw i64 %..i.i.i.i to i32
  %.not35.not.i21106 = icmp slt i32 %spec.store.select.i18, %i.fs
  br i1 %.not35.not.i21106, label %.lr.ph110, label %._crit_edge111

bb.o:                                             ; preds = %.lr.ph110
  %i.ft = trunc nuw i64 %i.fu to i32
  %.not35.not.i21 = icmp slt i32 %spec.store.select.i18, %i.ft
  br i1 %.not35.not.i21, label %.lr.ph110, label %._crit_edge111, !llvm.loop !381

.lr.ph110:                                        ; preds = %bb.n, %bb.o
  %.0.in.i20108 = phi i32 [ %.0.i23, %bb.o ], [ %i.fl, %bb.n ]
  %indvars.iv.i19107 = phi i64 [ %i.fu, %bb.o ], [ %..i.i.i.i, %bb.n ]
  %i.fu = add nsw i64 %indvars.iv.i19107, -1      ; 3 uses
  %.0.i23 = add nsw i32 %.0.in.i20108, -1         ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !65 ; 2 uses
  %i.fx = zext i32 %.0.i23 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !65 ; 2 uses
  %.not37.i24 = icmp eq i32 %i.fw, %i.fz
  br i1 %.not37.i24, label %bb.o, label %.loopexit.i25, !llvm.loop !381

._crit_edge111:                                   ; preds = %bb.o, %bb.n
  %.0.in.i20.lcssa = phi i32 [ %i.fl, %bb.n ], [ %.0.i23, %bb.o ]
  %or.cond.not48 = icmp sgt i32 %.0.in.i20.lcssa, %smin62
  br i1 %or.cond.not48, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge

.loopexit.i25:                                    ; preds = %.lr.ph110
  %i.ga = icmp ugt i32 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge: ; preds = %.loopexit.i25, %bb.m, %._crit_edge111
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26, !llvm.loop !462

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge111, %.loopexit.i25, %bb.m, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fg, %bb.m ], [ %i.fg, %.loopexit.i25 ], [ %i.fg, %._crit_edge111 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !360  ; 4 uses
  %i.j = icmp ugt i64 %.0, 2305843009213693951
  br i1 %i.j, label %bb.d, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !227

bb.d:                                             ; preds = %.thread, %bb.c
  %.027 = phi i64 [ %i.g, %.thread ], [ %.0, %bb.c ]
  %i.k = icmp ugt i64 %.027, 4611686018427387903
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.0, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !371  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %bb.i, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 4, !tbaa !65
  store i32 %i.r, ptr %i.m, align 4, !tbaa !65
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !360
  store i64 %.0, ptr %i.a, align 8, !tbaa !362
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.s
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  %i.t = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.t) #35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::basic_memory_buffer.45", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !371  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 10 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !360  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !362  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !360
  store i64 %i.j, ptr %i.f, align 8, !tbaa !362
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %.idx.i.i, i1 false), !tbaa !65
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !360
  store i64 %i.j, ptr %i.f, align 8, !tbaa !362
  store ptr %i.k, ptr %i.g, align 8, !tbaa !360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.h, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.p = icmp ugt i64 %i.b, %i.j
  br i1 %i.p, label %bb.d, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.q = lshr i64 %i.j, 1
  %i.r = add i64 %i.q, %i.j                       ; 3 uses
  %i.s = icmp ugt i64 %i.b, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.t, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.u = call i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.b, %bb.d ] ; 5 uses
  %i.v = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !227

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.027.i = phi i64 [ %i.u, %.thread.i ], [ %.0.i, %bb.f ]
  %i.w = icmp ugt i64 %.027.i, 4611686018427387903
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc110 unwind label %bb.k

.noexc110:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc111 unwind label %bb.k

.noexc111:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #37
          to label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i unwind label %bb.k

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  store ptr %i.y, ptr %i.e, align 8, !tbaa !360
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !362
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.n, %i.z
  br i1 %.not.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.aa = shl i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.aa) #35
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !362
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !362
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #36
  unreachable

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit: ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i, %bb.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.ad = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.pre, %bb.j ], [ %i.o, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.ae = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.j ], [ %.0.i, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.ae)
  store i64 %..i.i.i.i, ptr %i.af, align 8, !tbaa !371
  %i.ag = zext i32 %i.d to i64                    ; 3 uses
  %i.ah = icmp ult i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.l, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.l:                                             ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !41
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.ag)
          to label %.noexc unwind label %bb.m, !inline_history !463

.noexc:                                           ; preds = %bb.l
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !362
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit, %.noexc
  %i.ak = phi i64 [ %i.ad, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ak) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !371
  %i.al = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.al, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !360 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.o
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.o ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.bz, %bb.o ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.an = icmp eq i64 %indvars.iv, 0
  br i1 %i.an, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.o
  %.pre93.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre93.a = phi ptr [ %.pre93.pre94, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.bz, %.preheader.loopexit ]
  %i.ao = icmp sgt i32 %i.d, %i.c
  br i1 %i.ao, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.ap = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  %2 = add nsw i32 %i.c, 1
  %i.ar = add i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv85.prol = add nsw i64 %i.aq, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv85.prol
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.n, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.n ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.n ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bn, %bb.n ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.n ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv67
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv65
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.150, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv67
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !65
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv65
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !65
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.bg
  %i.bm = zext i64 %i.bl to i128
  %i.bn = add i128 %i.bc, %i.bm                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !464

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.o, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bn, %.unr-lcssa ]
  %lcmp.mod149 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv67.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !65
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv65.epil.init
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !65
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw i64 %i.bt, %i.bq
  %i.bv = zext i64 %i.bu to i128
  %i.bw = add i128 %.150.epil.init, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa146 = phi i128 [ %i.bn, %.unr-lcssa ], [ %i.bw, %.epil.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  %i.by = trunc i128 %.lcssa146 to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !65
  %i.bz = lshr i128 %.lcssa146, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !465

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge62.loopexit ], [ %.pre93.a, %.preheader ]
  %i.cb = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph141, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph141
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph141, label %.critedge.i, !llvm.loop !460

.lr.ph141:                                        ; preds = %._crit_edge62, %bb.p
  %i.cg = phi i32 [ %i.ce, %bb.p ], [ %i.cc, %._crit_edge62 ]
  %indvars.iv.i140 = phi i64 [ %i.ch, %bb.p ], [ %..i.i, %._crit_edge62 ]
  %i.ch = add nsw i64 %indvars.iv.i140, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %..critedge.i_crit_edge, !llvm.loop !460

..critedge.i_crit_edge:                           ; preds = %.lr.ph141
  br label %.critedge.i, !llvm.loop !460

.critedge.i:                                      ; preds = %bb.p, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.p ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ak, %i.cl
  br i1 %i.cm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.critedge.i
  %i.cn = load ptr, ptr %0, align 8, !tbaa !41
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cl)
          to label %.noexc46 unwind label %bb.u, !inline_history !466

.noexc46:                                         ; preds = %bb.q
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !362
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv81 = phi i64 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 4 uses
  %.03360 = phi i32 [ %i.c, %.lr.ph61 ], [ %i.dz, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.dy, %._crit_edge ] ; 3 uses
  %.reass.reass = add i32 %.03360, %invariant.op
  %i.cp = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.cq = sub i32 %indvar, %i.c
  %i.cr = and i32 %i.cq, 1
  %lcmp.mod151.not.not = icmp eq i32 %i.cr, 0
  br i1 %lcmp.mod151.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv81, 1
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv81
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !65
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load i32, ptr %i.as, align 4, !tbaa !65
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.cu
  %i.cy = zext i64 %i.cx to i128
  %i.cz = add nsw i128 %.259, %i.cy               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa145.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %indvars.iv81, %.lr.ph.preheader ], [ %indvars.iv.next84.prol, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %i.da = icmp eq i32 %i.ar, %indvar
  br i1 %i.da, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph ], [ %indvars.iv83.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.du, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv83
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !65
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv85.in
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !65
  %i.dh = zext i32 %i.dg to i64
  %i.di = mul nuw i64 %i.dh, %i.dd
  %i.dj = zext i64 %i.di to i128
  %i.dk = add i128 %.355, %i.dj
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !65
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv85.1
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !65
  %i.dr = zext i32 %i.dq to i64
  %i.ds = mul nuw i64 %i.dr, %i.do
  %i.dt = zext i64 %i.ds to i128
  %i.du = add i128 %i.dk, %i.dt                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !467

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.r
  %.3.lcssa = phi i128 [ %.259, %bb.r ], [ %.lcssa145.unr, %.lr.ph.prol.loopexit ], [ %i.du, %.lr.ph ] ; 2 uses
  %i.dv = zext i32 %.03360 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre93.a, i64 %i.dv
  %i.dx = trunc i128 %.3.lcssa to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !65
  %i.dy = lshr i128 %.3.lcssa, 32
  %i.dz = add nsw i32 %.03360, 1
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next82 to i32
  %exitcond91.not = icmp eq i32 %2, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge62.loopexit, label %bb.r, !llvm.loop !468

bb.s:                                             ; preds = %.noexc46, %.critedge.i
  %i.ea = phi i64 [ %i.ak, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ea)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !371
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !363
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !363
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !360 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = load i64, ptr %i.f, align 8, !tbaa !362
  %i.eh = shl i64 %i.eg, 2
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.u:                                             ; preds = %bb.q
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.ei, %bb.u ]
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !360 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = load i64, ptr %i.f, align 8, !tbaa !362
  %i.em = shl i64 %i.el, 2
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %0, align 8, !tbaa !41
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN3fmt2v912format_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.58, align 8             ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.60, align 8             ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %10 = alloca %class.anon.61, align 8            ; 12 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %11 = alloca %class.anon.62, align 8            ; 10 uses
  %.fr140 = freeze i64 %3                         ; 4 uses
  store i64 %.fr140, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = load ptr, ptr %1, align 8, !tbaa !349    ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !351  ; 9 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 48, ptr %i.c, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.n = lshr i64 %.fr140, 32                     ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32                ; 7 uses
  %i.p = lshr i64 %.fr140, 40
  %i.q = trunc i64 %i.p to i8                     ; 3 uses
  store i8 %i.q, ptr %i.d, align 1, !tbaa !248
  %.not = icmp ne i8 %i.q, 0
  %i.r = zext i1 %.not to i32
  %i.s = add i32 %i.m, %i.r
  %i.t = zext i32 %i.s to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.u = and i32 %i.o, 131072                     ; 3 uses
  %.not65 = icmp eq i32 %i.u, 0
  %i.v = trunc i64 %.fr140 to i32                 ; 7 uses
  br i1 %.not65, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef signext i8 @_ZN3fmt2v96detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi i8 [ %i.w, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.x, ptr %i.e, align 1, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !352  ; 3 uses
  %i.aa = add nsw i32 %i.m, %i.z                  ; 10 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = trunc i64 %i.n to i8
  switch i8 %i.ac, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115 [
    i8 1, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 0, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  ]

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.c
  %i.ad = icmp slt i32 %i.aa, -3
  %i.ae = icmp sgt i32 %i.v, 0
  %spec.select.i = select i1 %i.ae, i32 %i.v, i32 16
  %i.af = icmp sgt i32 %i.aa, %spec.select.i
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.c, %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  %i.ah = and i32 %i.o, 524288
  %.not73 = icmp eq i32 %i.ah, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ai = sub nsw i32 %i.v, %i.m
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0) ; 2 uses
  %i.aj = zext nneg i32 %spec.store.select to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.t
  br label %bb.g

bb.e:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.al = icmp eq i32 %i.m, 1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 1, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.am = phi i8 [ %i.x, %bb.d ], [ 0, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.054 = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.0 = phi i64 [ %i.ak, %bb.d ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  %i.an = and i32 %i.o, 65536
  %.not75 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not75, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 %i.q, ptr %6, align 8, !tbaa !469
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ap, align 8, !tbaa !471
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.m, ptr %i.aq, align 8, !tbaa !472
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.am, ptr %i.ar, align 4, !tbaa !473
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.054, ptr %i.as, align 8, !tbaa !474
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 48, ptr %i.at, align 4, !tbaa !475
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !476
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.ab, ptr %i.av, align 8, !tbaa !477
  %i.aw = load i32, ptr %2, align 4, !tbaa !165   ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not74.not = icmp eq i8 %i.am, 0
  %i.ay = select i1 %.not74.not, i64 2, i64 3
  %i.az = icmp slt i32 %i.aa, 1
  %i.ba = sub nsw i32 1, %i.aa
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %i.ab   ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 99
  %i.bd = icmp sgt i32 %i.bb, 999
  %i.be = select i1 %i.bd, i64 4, i64 3
  %.060 = select i1 %i.bc, i64 %i.be, i64 2
  %i.bf = add nuw nsw i64 %.0, %.060
  %i.bg = add nuw nsw i64 %i.bf, %i.ay
  %i.bh = zext nneg i32 %i.aw to i64
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %i.bg) ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit
  %i.fd = icmp slt i32 %i.fb, 0
  br i1 %i.fd, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = ashr i64 %i.es, 32
  %i.ff = getelementptr [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !68
  %i.fi = shl i64 %i.fh, %i.ef                    ; 3 uses
  %i.fj = udiv i64 %i.ea, 10                      ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj
  %.not.i98 = icmp ugt i64 %i.fj, %i.fk
  br i1 %.not.i98, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = shl nuw nsw i64 %i.fj, 1
  %i.fm = sub i64 %i.fi, %i.fl
  %.not23.i = icmp ult i64 %i.fm, 20
  br i1 %.not23.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not24.i = icmp ult i64 %i.ea, 100
  br i1 %.not24.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = add nsw i64 %i.fj, -10                  ; 2 uses
  %i.fo = sub i64 %i.fi, %i.fn
  %.not25.i = icmp ult i64 %i.fn, %i.fo
  br i1 %.not25.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.fp = phi i8 [ 48, %bb.w ], [ 49, %bb.y ]
  store i8 %i.fp, ptr %i.ed, align 1, !tbaa !45
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aa:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %.sroa.33.0 = phi i32 [ %i.fb, %_ZN3fmt2v96detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit ] ; 7 uses
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.sroa.33.0, i32 1) ; 2 uses
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fr to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %bb.aa
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %bb.au ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %bb.aa ] ; 4 uses
  %i.fs = phi i32 [ %i.gl, %bb.au ], [ %i.eu, %bb.aa ] ; 3 uses
  %.0207 = phi i32 [ %.1208, %bb.au ], [ %i.ei, %bb.aa ] ; 20 uses
  switch i32 %i.fs, label %bb.al [
    i32 10, label %bb.ac
    i32 9, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.af
    i32 6, label %bb.ag
    i32 5, label %bb.ah
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = udiv i32 %.0207, 1000000000
  %i.fu = urem i32 %.0207, 1000000000
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fv = udiv i32 %.0207, 100000000
  %i.fw = urem i32 %.0207, 100000000
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.fx = udiv i32 %.0207, 10000000
  %i.fy = urem i32 %.0207, 10000000
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.fz = udiv i32 %.0207, 1000000
  %i.ga = urem i32 %.0207, 1000000
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.gb = udiv i32 %.0207, 100000
  %i.gc = urem i32 %.0207, 100000
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.gd = udiv i32 %.0207, 10000
  %i.ge = urem i32 %.0207, 10000
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.gf = udiv i32 %.0207, 1000
  %i.gg = urem i32 %.0207, 1000
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.gh = udiv i32 %.0207, 100
  %i.gi = urem i32 %.0207, 100
  br label %bb.am

bb.ak:                                            ; preds = %bb.ab
  %i.gj = udiv i32 %.0207, 10
  %i.gk = urem i32 %.0207, 10
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0209 = phi i32 [ 0, %bb.al ], [ %i.ft, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fx, %bb.ae ], [ %i.fz, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gd, %bb.ah ], [ %i.gf, %bb.ai ], [ %i.gh, %bb.aj ], [ %i.gj, %bb.ak ], [ %.0207, %bb.ab ]
  %.1208 = phi i32 [ %.0207, %bb.al ], [ %i.fu, %bb.ac ], [ %i.fw, %bb.ad ], [ %i.fy, %bb.ae ], [ %i.ga, %bb.af ], [ %i.gc, %bb.ag ], [ %i.ge, %bb.ah ], [ %i.gg, %bb.ai ], [ %i.gi, %bb.aj ], [ %i.gk, %bb.ak ], [ 0, %bb.ab ] ; 2 uses
  %i.gl = add nsw i32 %i.fs, -1                   ; 9 uses
  %i.gm = trunc i32 %.0209 to i8                  ; 2 uses
  %i.gn = add i8 %i.gm, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.gp = trunc nuw nsw i64 %indvars.iv.next to i32 ; 5 uses
  %i.gq = zext i32 %.1208 to i64
  %i.gr = shl i64 %i.gq, %i.ef
  %i.gs = add i64 %i.gr, %i.el                    ; 5 uses
  %i.gt = sext i32 %i.gl to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !68
  %i.gw = shl i64 %i.gv, %i.ef                    ; 3 uses
  %i.gx = sub i64 %i.gw, %i.gs
  %.not.i.i = icmp ugt i64 %i.gs, %i.gx
  br i1 %.not.i.i, label %.thread213, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = shl i64 %i.gs, 1
  %i.gz = sub i64 %i.gw, %i.gy
  %.not23.i.i = icmp ult i64 %i.gz, 2
  br i1 %.not23.i.i, label %bb.ap, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ap:                                            ; preds = %bb.ao
  %.not24.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not24.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %.thread213

.thread213:                                       ; preds = %bb.an, %bb.ap
  %i.ha = add i64 %i.gs, -1                       ; 2 uses
  %i.hb = sub i64 %i.gw, %i.ha
  %.not25.i.i = icmp ult i64 %i.ha, %i.hb
  br i1 %.not25.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i: ; preds = %.thread213
  %i.hc = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next
  %i.hd = getelementptr i8, ptr %i.ed, i64 %indvars.iv
  %i.he = add i8 %i.gm, 49
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !45
  %.not = icmp eq i32 %i.fr, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ %indvars.iv.next, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !45
  %i.hh = icmp sgt i8 %i.hg, 57
  br i1 %i.hh, label %bb.aq, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aq, %.lr.ph.i101, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i
  %i.hi = load i8, ptr %i.ed, align 1, !tbaa !45
  %i.hj = icmp sgt i8 %i.hi, 57
  br i1 %i.hj, label %bb.ar, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aq:                                            ; preds = %.lr.ph.i101
  store i8 48, ptr %i.hf, align 1, !tbaa !45
  %i.hk = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 -2     ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !45
  %i.hn = add i8 %i.hm, 1
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !45
  %i.ho = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ho, label %.lr.ph.i101, label %.critedge.i, !llvm.loop !745

bb.ar:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.ed, align 1, !tbaa !45
  br i1 %i.d, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hp = add nuw nsw i32 %i.fq, 1
  store i8 48, ptr %i.hc, align 1, !tbaa !45
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.at:                                            ; preds = %bb.ar
  %i.hq = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.au:                                            ; preds = %bb.am
  %i.hr = icmp sgt i32 %i.fs, 1
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1
  br i1 %i.hr, label %bb.ab, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader, !llvm.loop !746

_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader: ; preds = %bb.au
  %sext = zext nneg i32 %.sroa.33.0 to i64
  br label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115

_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115: ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader, %bb.av
  %i.hs = phi i32 [ %i.gl, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader ], [ %i.hz, %bb.av ]
  %indvars.iv312 = phi i64 [ %indvars.iv309, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader ], [ %indvars.iv.next313, %bb.av ] ; 4 uses
  %.045.i = phi i64 [ 1, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader ], [ %i.hu, %bb.av ] ; 2 uses
  %.042.i = phi i64 [ %i.el, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115.preheader ], [ %i.hy, %bb.av ]
  %i.ht = mul i64 %.042.i, 10                     ; 2 uses
  %i.hu = mul i64 %.045.i, 10                     ; 6 uses
  %i.hv = lshr i64 %i.ht, %i.ef
  %i.hw = trunc i64 %i.hv to i8                   ; 2 uses
  %i.hx = add i8 %i.hw, 48
  %i.hy = and i64 %i.ht, %i.ek                    ; 6 uses
  %i.hz = add nsw i32 %i.hs, -1                   ; 8 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv312
  store i8 %i.hx, ptr %i.ia, align 1, !tbaa !45
  %.not.i102 = icmp ult i64 %i.hu, %i.hy
  br i1 %.not.i102, label %bb.av, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit

bb.av:                                            ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115
  %5 = icmp samesign ult i64 %indvars.iv.next313, %sext
  br i1 %5, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, label %bb.aw, !llvm.loop !747

bb.aw:                                            ; preds = %bb.av
  %i.ib = trunc nuw nsw i64 %indvars.iv312 to i32
  %6 = trunc nuw i64 %indvars.iv.next313 to i32   ; 5 uses
  %.not29.i = icmp ult i64 %i.hu, %i.eg
  %i.ic = sub nuw i64 %i.eg, %i.hu
  %.not30.i = icmp ult i64 %i.hu, %i.ic
  %or.cond32.i = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond32.i, label %bb.ax, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.id = sub i64 %i.eg, %i.hy
  %.not.i.i105 = icmp ugt i64 %i.hy, %i.id
  br i1 %.not.i.i105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ie = mul i64 %.045.i, 20
  %i.if = shl nuw i64 %i.hy, 1
  %i.ig = sub i64 %i.eg, %i.if
  %.not23.i.i106 = icmp ugt i64 %i.ie, %i.ig
  br i1 %.not23.i.i106, label %bb.az, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ih = sub nuw nsw i64 %i.hy, %i.hu            ; 2 uses
  %i.ii = sub i64 %i.eg, %i.ih
  %.not25.i.i108 = icmp ult i64 %i.ih, %i.ii
  br i1 %.not25.i.i108, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109: ; preds = %bb.az
  %i.ij = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next313
  %i.ik = getelementptr i8, ptr %i.ed, i64 %indvars.iv312
  %i.il = add i8 %i.hw, 49
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !45
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.ba, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next313, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109 ], [ %indvars.iv.next.i114, %bb.ba ] ; 3 uses
  %indvars.iv.next.i114 = add nsw i64 %indvars.iv.i113, -1 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i114 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !45
  %i.io = icmp sgt i8 %i.in, 57
  br i1 %i.io, label %bb.ba, label %.critedge.i110

.critedge.i110:                                   ; preds = %bb.ba, %.lr.ph.i112
  %i.ip = load i8, ptr %i.ed, align 1, !tbaa !45
  %i.iq = icmp sgt i8 %i.ip, 57
  br i1 %i.iq, label %bb.bb, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ba:                                            ; preds = %.lr.ph.i112
  store i8 48, ptr %i.im, align 1, !tbaa !45
  %i.ir = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i113
  %i.is = getelementptr i8, ptr %i.ir, i64 -2     ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !45
  %i.iu = add i8 %i.it, 1
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !45
  %i.iv = icmp samesign ugt i64 %indvars.iv.i113, 2
  br i1 %i.iv, label %.lr.ph.i112, label %.critedge.i110, !llvm.loop !745

bb.bb:                                            ; preds = %.critedge.i110
  store i8 49, ptr %i.ed, align 1, !tbaa !45
  br i1 %i.d, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iw = add nuw nsw i32 %i.ib, 2
  store i8 48, ptr %i.ij, align 1, !tbaa !45
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.bd:                                            ; preds = %bb.bb
  %i.ix = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235: ; preds = %.critedge.i110, %bb.bc, %bb.bd, %bb.ay, %bb.ao, %.critedge.i, %bb.as, %bb.at, %bb.z, %bb.u
  %i.iy = phi i32 [ %i.eu, %bb.u ], [ %i.eu, %bb.z ], [ %i.hz, %bb.bc ], [ %i.hz, %bb.bd ], [ %i.hz, %.critedge.i110 ], [ %i.hz, %bb.ay ], [ %i.gl, %bb.as ], [ %i.gl, %bb.at ], [ %i.gl, %.critedge.i ], [ %i.gl, %bb.ao ]
  %.sroa.16.2242 = phi i32 [ 0, %bb.u ], [ 1, %bb.z ], [ %i.iw, %bb.bc ], [ %6, %bb.bd ], [ %6, %.critedge.i110 ], [ %6, %bb.ay ], [ %i.hp, %bb.as ], [ %i.gp, %bb.at ], [ %i.gp, %.critedge.i ], [ %i.gp, %bb.ao ]
  %.sroa.40.2241 = phi i32 [ %i.ee, %bb.u ], [ %i.ee, %bb.z ], [ %i.ee, %bb.bc ], [ %i.ix, %bb.bd ], [ %i.ee, %.critedge.i110 ], [ %i.ee, %bb.ay ], [ %i.ee, %bb.as ], [ %i.hq, %bb.at ], [ %i.ee, %.critedge.i ], [ %i.ee, %bb.ao ]
  %i.iz = add nsw i32 %i.iy, %.sroa.40.2241
  store i32 %i.iz, ptr %i.b, align 4, !tbaa !65
  %i.ja = zext i32 %.sroa.16.2242 to i64          ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !40 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.ja
  br i1 %i.jd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.je = load ptr, ptr %3, align 8, !tbaa !41
  %i.jf = load ptr, ptr %i.je, align 8
  tail call void %i.jf(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ja), !call_target !85, !inline_history !354
  %.pre.i117 = load i64, ptr %i.jb, align 8, !tbaa !40
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.jg = phi i64 [ %i.jc, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235 ], [ %.pre.i117, %bb.be ]
  %..i116 = tail call i64 @llvm.umin.i64(i64 %i.ja, i64 %i.jg)
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i116, ptr %i.jh, align 8, !tbaa !39
  br label %bb.bj

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit: ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115
  %7 = trunc nuw i64 %indvars.iv.next313 to i32
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread: ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit, %bb.ap, %.thread213, %bb.aw, %bb.az, %bb.y, %bb.x
  %i.ji = phi i32 [ %i.eu, %bb.y ], [ %i.eu, %bb.x ], [ %i.gl, %bb.ap ], [ %i.gl, %.thread213 ], [ %i.hz, %bb.aw ], [ %i.hz, %bb.az ], [ %i.hz, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit ]
  %.sroa.16.2231 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.gp, %bb.ap ], [ %i.gp, %.thread213 ], [ %6, %bb.aw ], [ %6, %bb.az ], [ %7, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit ]
  %.sroa.33.1230 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %.sroa.33.0, %bb.ap ], [ %.sroa.33.0, %.thread213 ], [ %.sroa.33.0, %bb.aw ], [ %.sroa.33.0, %bb.az ], [ %.sroa.33.0, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread.loopexit ]
  %reass.sub288 = sub i32 %.sroa.16.2231, %i.dm
  %i.jj = add i32 %reass.sub288, 347
  %i.jk = add nsw i32 %i.jj, %i.ji
  store i32 %i.jk, ptr %i.b, align 4, !tbaa !65
  %i.jl = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not85 = icmp eq i32 %i.jl, 0
  br i1 %.not85, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jm = fptrunc double %0 to float
  %i.jn = bitcast float %i.jm to i32              ; 2 uses
  %i.jo = and i32 %i.jn, 8388607                  ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i128             ; 2 uses
  %i.jq = and i32 %i.jn, 2139095040               ; 3 uses
  %i.jr = icmp eq i32 %i.jq, 0                    ; 2 uses
  %i.js = lshr exact i32 %i.jq, 23
  %i.jt = or disjoint i128 %i.jp, 8388608
  %i.ju = add nsw i32 %i.js, -150
  %storemerge.i = select i1 %i.jr, i128 %i.jp, i128 %i.jt
  %.0.i119 = select i1 %i.jr, i32 -149, i32 %i.ju
  %i.jv = icmp eq i32 %i.jo, 0
  %i.jw = icmp samesign ugt i32 %i.jq, 16777215
  %i.jx = and i1 %i.jv, %i.jw
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jy = zext nneg i64 %i.cr to i128             ; 2 uses
  %i.jz = or disjoint i128 %i.jy, 4503599627370496
  %storemerge.i120 = select i1 %i.ct, i128 %i.jy, i128 %i.jz
  %i.ka = icmp eq i64 %i.cr, 0
  %i.kb = icmp samesign ugt i64 %i.cs, 9007199254740991
  %i.kc = and i1 %i.ka, %i.kb
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.0 = phi i128 [ %storemerge.i120, %bb.bh ], [ %storemerge.i, %bb.bg ]
  %.sroa.6.0 = phi i32 [ %.0.i.i, %bb.bh ], [ %.0.i119, %bb.bg ]
  %i.kd = phi i1 [ %i.kc, %bb.bh ], [ %i.jx, %bb.bg ]
  %spec.select = zext i1 %i.kd to i32             ; 2 uses
  %i.ke = or disjoint i32 %spec.select, 4
  %.181 = select i1 %i.d, i32 %i.ke, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.sroa.33.1230, i32 767)
  store i128 %.sroa.0.0, ptr %4, align 16, !tbaa !357
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !65
  call void @_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v9::detail::basic_fp") align 16 %4, i32 noundef %.181, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %i.kf = and i32 %.sroa.1.0.extract.trunc, 524288
  %.not86 = icmp ne i32 %i.kf, 0
  %or.cond90.not = select i1 %i.d, i1 true, i1 %.not86
  br i1 %or.cond90.not, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !39 ; 2 uses
  %.not87284 = icmp eq i64 %i.kh, 0
  br i1 %.not87284, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %.promoted = load i32, ptr %i.b, align 4
  %i.ki = load ptr, ptr %i.ec, align 8, !tbaa !37
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bm
  %.0285 = phi i64 [ %i.kh, %.lr.ph ], [ %i.kk, %bb.bm ] ; 5 uses
  %i.kj = phi i32 [ %.promoted, %.lr.ph ], [ %i.ko, %bb.bm ]
  %i.kk = add i64 %.0285, -1                      ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !45
  %i.kn = icmp eq i8 %i.km, 48
  br i1 %i.kn, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.ko = add nsw i32 %i.kj, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.b, align 4, !tbaa !65
  %.not87 = icmp eq i64 %i.kk, 0
  br i1 %.not87, label %.critedge.thread, label %bb.bl, !llvm.loop !748

.critedge.thread:                                 ; preds = %bb.bm, %bb.bk
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !40
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

.critedge:                                        ; preds = %bb.bl
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !40 ; 2 uses
  %i.kt = icmp ugt i64 %.0285, %i.ks
  br i1 %i.kt, label %bb.bn, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

bb.bn:                                            ; preds = %.critedge
  %i.ku = load ptr, ptr %3, align 8, !tbaa !41
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.0285), !call_target !85, !inline_history !354
  %.pre.i123 = load i64, ptr %i.kr, align 8, !tbaa !40
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124: ; preds = %.critedge.thread, %.critedge, %bb.bn
  %.0.lcssa339 = phi i64 [ %.0285, %.critedge ], [ %.0285, %bb.bn ], [ 0, %.critedge.thread ]
  %i.kw = phi i64 [ %i.ks, %.critedge ], [ %.pre.i123, %bb.bn ], [ %i.kq, %.critedge.thread ]
  %..i122 = call i64 @llvm.umin.i64(i64 %.0.lcssa339, i64 %i.kw)
  store i64 %..i122, ptr %i.kg, align 8, !tbaa !39
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124, %bb.bj
  %i.kx = load i32, ptr %i.b, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit: ; preds = %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i, %bb.l, %bb.k, %bb.bo, %bb.o
  %.077 = phi i32 [ %i.kx, %bb.bo ], [ %i.co, %bb.o ], [ %.sroa.437.0.extract.trunc, %bb.k ], [ %.sroa.437.0.extract.trunc, %bb.l ], [ %.sroa.437.0.extract.trunc, %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit
  %.1 = phi i32 [ %i.ac, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit ], [ %.077, %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_(ptr %0, i64 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  %i.b = or i64 %1, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt2v96detail15do_count_digitsEmE9bsr2log10.const, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp ult i64 %1, %i.i
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = add nsw i64 %.neg.i.i, %i.g              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  %i.p = add i64 %i.k, %i.m                       ; 2 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit: ; preds = %bb.a
  store i64 %i.p, ptr %i.l, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.k ; 2 uses
  %i.v = icmp ugt i64 %1, 99
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %.01920.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.u, %bb.b ]
  %i.w = getelementptr inbounds i8, ptr %.01920.i, i64 -2 ; 3 uses
  %i.x = urem i64 %.021.i, 100
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr @.str.16, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 1
  store i16 %i.aa, ptr %i.w, align 1
  %i.ab = udiv i64 %.021.i, 100                   ; 2 uses
  %i.ac = icmp ugt i64 %.021.i, 9999
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !184

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.019.lcssa.i = phi ptr [ %i.u, %bb.b ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.ab, %.lr.ph.i ] ; 3 uses
  %i.ad = icmp samesign ult i64 %.0.lcssa.i, 10
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds i8, ptr %.019.lcssa.i, i64 -1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !45
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds i8, ptr %.019.lcssa.i, i64 -2
  %i.ai = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @.str.16, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 1
  store i16 %i.ak, ptr %i.ah, align 1
  br label %bb.g

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread: ; preds = %bb.a, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.k ; 3 uses
  %i.am = icmp ugt i64 %1, 99
  br i1 %i.am, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread, %.lr.ph.i.i
  %.021.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %1, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread ] ; 3 uses
  %.01920.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread ]
  %i.an = getelementptr inbounds i8, ptr %.01920.i.i, i64 -2 ; 3 uses
  %i.ao = urem i64 %.021.i.i, 100
end_hunk_3
