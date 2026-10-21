Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@GenImageFontAtlas:bb.a
  %i.dt = icmp slt i64 %i.dr, %i.bt
  %or.cond = and i1 %i.ds, %i.dt
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split261
  %i.du = load ptr, ptr %i.bx, align 8
  %i.dv = mul nuw nsw i32 %i.dq, %.0208265
  %i.dw = trunc nuw nsw i64 %indvars.iv312 to i32
  %i.dx = add nsw i32 %i.dv, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dr
  store i8 %i.ea, ptr %gep, align 1
  %.pre = load i32, ptr %i.by, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split261
  %i.eb = phi i32 [ %.pre, %bb.j ], [ %i.dp, %.lr.ph.split261 ] ; 5 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next313, %i.ec
  br i1 %i.ed, label %.lr.ph.split261, label %._crit_edge260.loopexit

bb.l:                                             ; preds = %bb.e
  %i.ee = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #42 ; 16 uses
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 13 uses
  %i.eg = add nsw i32 %i.c, -1                    ; 2 uses
  %i.eh = icmp samesign ugt i32 %i.c, 1
  br i1 %i.eh, label %.lr.ph.preheader.i, label %stbrp_init_target.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.eg to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ei = add nsw i32 %i.c, -2
  %i.ej = icmp ult i32 %i.ei, 3
  br i1 %i.ej, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ek, ptr %i.em, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.1
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.en, ptr %i.ep, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.2
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eq, ptr %i.es, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.3
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %stbrp_init_target.exit.loopexit.unr-lcssa, label %.lr.ph.i

stbrp_init_target.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.epil
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.epil
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ew, ptr %i.ey, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil, !llvm.loop !50

stbrp_init_target.exit:                           ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.l
  %.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.0.lcssa.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr null, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 1, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i32 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store ptr %i.ef, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.fe, ptr %i.ff, align 8
  store i32 %i.bb, ptr %i.ee, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %.promoted, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  store i32 %i.c, ptr %i.fh, align 4
  %i.fi = add i32 %i.eg, %i.bb
  %i.fj = sdiv i32 %i.fi, %i.c
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.fj, ptr %i.fk, align 8
  store i32 0, ptr %i.fe, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store ptr %i.fm, ptr %i.fn, align 8
  store i32 %i.bb, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  store i32 1073741824, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store ptr null, ptr %i.fp, align 8
  %i.fq = mul nuw nsw i64 %i.d, 24
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fq) #42 ; 6 uses
  %i.fs = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.ft = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter397 = and i64 %i.d, 1
  %i.fu = icmp eq i32 %i.c, 1
  br i1 %i.fu, label %.epil.preheader, label %stbrp_init_target.exit.new

stbrp_init_target.exit.new:                       ; preds = %stbrp_init_target.exit
  %unroll_iter401 = and i64 %i.d, 2147483646
  br label %bb.n

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %stbrp_init_target.exit
  %indvars.iv292.epil.init = phi i64 [ 0, %stbrp_init_target.exit ], [ %indvars.iv.next293.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod400 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv292.epil.init ; 2 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv292.epil.init to i32
  store i32 %i.fw, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292.epil.init
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ga = load <2 x i32>, ptr %i.fy, align 8
  %i.gb = add nsw <2 x i32> %i.ga, %i.ft
  store <2 x i32> %i.gb, ptr %i.fz, align 4
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.gc = tail call i32 @stbrp_pack_rects(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.fr, i32 noundef %i.c) ; 0 uses
  %i.gd = sitofp i32 %5 to float
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.n:                                             ; preds = %bb.n, %stbrp_init_target.exit.new
  %indvars.iv292 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %indvars.iv.next293.1, %bb.n ] ; 5 uses
  %niter402 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %niter402.next.1, %bb.n ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv292 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv292 to i32
  store i32 %i.gh, ptr %i.gg, align 4
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gl = load <2 x i32>, ptr %i.gj, align 8
  %i.gm = add nsw <2 x i32> %i.gl, %i.ft
  store <2 x i32> %i.gm, ptr %i.gk, align 4
  %indvars.iv.next293 = or disjoint i64 %indvars.iv292, 1 ; 3 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv.next293 ; 2 uses
  %i.go = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.go, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.next293
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gs = load <2 x i32>, ptr %i.gq, align 8
  %i.gt = add nsw <2 x i32> %i.gs, %i.ft
  store <2 x i32> %i.gt, ptr %i.gr, align 4
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %.unr-lcssa, label %bb.n

bb.o:                                             ; preds = %.loopexit249
  tail call void @free(ptr noundef %i.fr) #39
  tail call void @free(ptr noundef %i.ef) #39
  tail call void @free(ptr noundef %i.ee) #39
  br label %bb.v

bb.p:                                             ; preds = %bb.m, %.loopexit249
  %indvars.iv307 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next308, %.loopexit249 ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv307 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv307
  %i.gx = load <2 x i32>, ptr %i.gv, align 4      ; 3 uses
  %i.gy = sitofp <2 x i32> %i.gx to <2 x float>
  %i.gz = fadd <2 x float> %i.gf, %i.gy
  %i.ha = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv307 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %7 = load <2 x i32>, ptr %i.hc, align 8         ; 3 uses
  %8 = sitofp <2 x i32> %7 to <2 x float>
  %9 = shufflevector <2 x float> %i.gz, <2 x float> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.gw, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.he = load i32, ptr %i.hd, align 4
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %bb.u, label %.preheader248

.preheader248:                                    ; preds = %bb.p
  %i.hf = extractelement <2 x i32> %7, i64 1      ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  %i.hh = extractelement <2 x i32> %7, i64 0      ; 4 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %or.cond359 = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %or.cond359, label %.preheader247.lr.ph.split, label %.loopexit249

.preheader247.lr.ph.split:                        ; preds = %.preheader248
  %i.hj = extractelement <2 x i32> %i.gx, i64 0
  %invariant.op = add i32 %5, %i.hj               ; 3 uses
  %i.hk = extractelement <2 x i32> %i.gx, i64 1
  %invariant.op256 = add i32 %5, %i.hk
  %i.hl = zext nneg i32 %i.hh to i64              ; 3 uses
  %wide.trip.count305 = zext nneg i32 %i.hf to i64
  %xtraiter403 = and i64 %i.hl, 1
  %i.hm = icmp eq i32 %i.hh, 1
  %unroll_iter407 = and i64 %i.hl, 2147483646
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  %lcmp.mod406 = trunc i32 %i.hh to i1
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.lr.ph.split, %._crit_edge
  %indvars.iv302 = phi i64 [ 0, %.preheader247.lr.ph.split ], [ %indvars.iv.next303, %._crit_edge ] ; 3 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv302 to i32
  %.reass257 = add i32 %invariant.op256, %i.hn    ; 3 uses
  %i.ho = icmp sgt i32 %.reass257, -1
  %i.hp = icmp slt i32 %.reass257, %.promoted
  %i.hq = and i1 %i.ho, %i.hp
  %i.hr = mul nuw nsw i64 %indvars.iv302, %i.hl   ; 3 uses
  %i.hs = mul nuw nsw i32 %.reass257, %i.bb       ; 3 uses
  %.fr = freeze i1 %i.hq
  br i1 %.fr, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.preheader247
  br i1 %i.hm, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  br i1 %lcmp.mod405.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv297.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next298.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.ht = trunc nuw nsw i64 %indvars.iv297.epil.init to i32
  %.reass.epil = add i32 %invariant.op, %i.ht     ; 3 uses
  %i.hu = icmp sgt i32 %.reass.epil, -1
  %i.hv = icmp slt i32 %.reass.epil, %i.bb
  %or.cond282.epil = and i1 %i.hu, %i.hv
  br i1 %or.cond282.epil, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.hw = load ptr, ptr %i.hb, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hr
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv297.epil.init
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = add nuw nsw i32 %i.hs, %.reass.epil
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ib
  store i8 %i.hz, ptr %i.ic, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.split.epil.preheader, %.preheader247
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexit249, label %.preheader247

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.1, %bb.t ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %niter408 = phi i64 [ %niter408.next.1, %bb.t ], [ 0, %.lr.ph.split.preheader ]
  %i.id = trunc nuw nsw i64 %indvars.iv297 to i32
  %.reass = add i32 %invariant.op, %i.id          ; 3 uses
  %i.ie = icmp sgt i32 %.reass, -1
  %i.if = icmp slt i32 %.reass, %i.bb
  %or.cond282 = and i1 %i.ie, %i.if
  br i1 %or.cond282, label %bb.r, label %.lr.ph.split.1

bb.r:                                             ; preds = %.lr.ph.split
  %i.ig = load ptr, ptr %i.hb, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hr
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv297
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = add nuw nsw i32 %i.hs, %.reass
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.il
  store i8 %i.ij, ptr %i.im, align 1
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.r, %.lr.ph.split
  %indvars.iv.next298 = or disjoint i64 %indvars.iv297, 1 ; 2 uses
  %i.in = trunc nuw nsw i64 %indvars.iv.next298 to i32
  %.reass.1 = add i32 %invariant.op, %i.in        ; 3 uses
  %i.io = icmp sgt i32 %.reass.1, -1
  %i.ip = icmp slt i32 %.reass.1, %i.bb
  %or.cond282.1 = and i1 %i.io, %i.ip
  br i1 %or.cond282.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.1
  %i.iq = load ptr, ptr %i.hb, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.hr
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv.next298
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = add nuw nsw i32 %i.hs, %.reass.1
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.iv
  store i8 %i.it, ptr %i.iw, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.1
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split

bb.u:                                             ; preds = %bb.p
  %i.ix = load i32, ptr %i.ha, align 8
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %i.ix) #39
  br label %.loopexit249

.loopexit249:                                     ; preds = %._crit_edge, %.preheader248, %bb.u
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.d
  br i1 %exitcond311.not, label %bb.o, label %bb.p

.loopexit246:                                     ; preds = %._crit_edge267
  store i32 %.fr284, ptr %i.bn, align 4
  store ptr %i.ck, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit246, %bb.e, %bb.o
  %i.iy = phi ptr [ %i.ck, %.loopexit246 ], [ %i.bp, %bb.e ], [ %i.bp, %bb.o ] ; 4 uses
  %i.iz = phi i32 [ %.fr284, %.loopexit246 ], [ %.promoted, %bb.e ], [ %.promoted, %bb.o ] ; 2 uses
  %i.ja = icmp sgt i32 %i.bb, 2
  %i.jb = icmp sgt i32 %i.iz, 2
  %or.cond6 = and i1 %i.ja, %i.jb
  %i.jc = mul i32 %i.iz, %i.bb                    ; 6 uses
  br i1 %or.cond6, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.v
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.je ; 3 uses
  store i8 -1, ptr %i.jf, align 1
  %i.jg = getelementptr i8, ptr %i.jf, i64 -1
  store i8 -1, ptr %i.jg, align 1
  %i.jh = getelementptr i8, ptr %i.jf, i64 -2
  store i8 -1, ptr %i.jh, align 1
  %i.ji = sub nsw i32 %i.jd, %i.bb                ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %i.iy, i64 %i.jj ; 3 uses
  store i8 -1, ptr %i.jk, align 1
  %i.jl = getelementptr i8, ptr %i.jk, i64 -1
  store i8 -1, ptr %i.jl, align 1
  %i.jm = getelementptr i8, ptr %i.jk, i64 -2
  store i8 -1, ptr %i.jm, align 1
  %i.jn = sub nsw i32 %i.ji, %i.bb
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds i8, ptr %i.iy, i64 %i.jo ; 3 uses
  store i8 -1, ptr %i.jp, align 1
  %i.jq = getelementptr i8, ptr %i.jp, i64 -1
  store i8 -1, ptr %i.jq, align 1
  %i.jr = getelementptr i8, ptr %i.jp, i64 -2
  store i8 -1, ptr %i.jr, align 1
  %.pre332.pre = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.loopexit.loopexit
  %.pre332 = phi ptr [ %.pre332.pre, %.loopexit.loopexit ], [ %i.iy, %bb.v ] ; 10 uses
  %i.js = sext i32 %i.jc to i64
  %i.jt = shl nsw i64 %i.js, 1
  %i.ju = tail call noalias ptr @malloc(i64 noundef %i.jt) #42 ; 11 uses
  %i.jv = icmp sgt i32 %i.jc, 0
  br i1 %i.jv, label %iter.check, label %._crit_edge281

iter.check:                                       ; preds = %.loopexit
  %wide.trip.count328 = zext nneg i32 %i.jc to i64 ; 10 uses
  %min.iters.check368 = icmp ult i32 %i.jc, 4
  br i1 %min.iters.check368, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jw = shl nuw nsw i64 %wide.trip.count328, 1
  %i.jx = getelementptr i8, ptr %i.ju, i64 %i.jw
  %i.jy = getelementptr i8, ptr %.pre332, i64 %wide.trip.count328
  %bound0 = icmp ult ptr %i.ju, %i.jy
  %bound1 = icmp ult ptr %.pre332, %i.jx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check369 = icmp ult i32 %i.jc, 16
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check
  %i.jz = and i64 %wide.trip.count328, 12
  %n.vec371 = and i64 %wide.trip.count328, 2147483632 ; 5 uses
  %i.ka = shl nuw nsw i64 %n.vec371, 1
  br label %vector.body372

vector.body372:                                   ; preds = %vector.ph370, %vector.body372
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next376, %vector.body372 ] ; 3 uses
  %i.kb = shl nuw i64 %index373, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %.pre332, i64 %index373 ; 2 uses
end_hunk_0
