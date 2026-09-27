Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2cvL23stbtt__VaryGlyphShapeTTEPKNS_14stbtt_fontinfoEiiiiPNS_12stbtt_vertexEiPiS5_S5_S5_:bb.a
  %i.lj = sext <8 x i8> %wide.load44.2 to <8 x i16>
  %i.lk = sext <8 x i8> %wide.load45.2 to <8 x i16>
  %i.ll = getelementptr inbounds nuw i8, ptr %invariant.gep730, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %invariant.gep730, i64 80
  store <8 x i16> %i.lj, ptr %i.ll, align 2, !tbaa !49
  store <8 x i16> %i.lk, ptr %i.lm, align 2, !tbaa !49
  %i.ln = icmp eq i64 %n.vec41, 48
  br i1 %i.ln, label %middle.block47, label %vector.body42.3

vector.body42.3:                                  ; preds = %vector.body42.2
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.lp = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %wide.load44.3 = load <8 x i8>, ptr %i.lo, align 1, !tbaa !32
  %wide.load45.3 = load <8 x i8>, ptr %i.lp, align 1, !tbaa !32
  %i.lq = sext <8 x i8> %wide.load44.3 to <8 x i16>
  %i.lr = sext <8 x i8> %wide.load45.3 to <8 x i16>
  %i.ls = getelementptr inbounds nuw i8, ptr %invariant.gep730, i64 96
  %i.lt = getelementptr inbounds nuw i8, ptr %invariant.gep730, i64 112
  store <8 x i16> %i.lq, ptr %i.ls, align 2, !tbaa !49
  store <8 x i16> %i.lr, ptr %i.lt, align 2, !tbaa !49
  br label %middle.block47

middle.block47:                                   ; preds = %vector.body42.3, %vector.body42.2, %vector.body42.1, %vector.ph40
  %cmp.n48 = icmp eq i64 %n.vec41, %wide.trip.count616
  br i1 %cmp.n48, label %.split.us, label %vec.epilog.iter.check52

vec.epilog.iter.check52:                          ; preds = %middle.block47
  %min.epilog.iters.check53 = icmp eq i64 %i.ku, 0
  br i1 %min.epilog.iters.check53, label %.preheader545.split.us.split.us.preheader, label %vec.epilog.ph54, !prof !284

vec.epilog.ph54:                                  ; preds = %vector.main.loop.iter.check38, %vec.epilog.iter.check52
  %vec.epilog.resume.val49 = phi i64 [ %n.vec41, %vec.epilog.iter.check52 ], [ 0, %vector.main.loop.iter.check38 ]
  %n.vec55 = and i64 %wide.trip.count616, 124     ; 3 uses
  br label %vec.epilog.vector.body56

vec.epilog.vector.body56:                         ; preds = %vec.epilog.vector.body56, %vec.epilog.ph54
  %index57 = phi i64 [ %vec.epilog.resume.val49, %vec.epilog.ph54 ], [ %index.next59, %vec.epilog.vector.body56 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hw, i64 %index57
  %wide.load58 = load <4 x i8>, ptr %i.lu, align 1, !tbaa !32
  %i.lv = sext <4 x i8> %wide.load58 to <4 x i16>
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %index57
  store <4 x i16> %i.lv, ptr %i.lw, align 2, !tbaa !49
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.lx = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.lx, label %vec.epilog.middle.block60, label %vec.epilog.vector.body56, !llvm.loop !270

vec.epilog.middle.block60:                        ; preds = %vec.epilog.vector.body56
  %cmp.n61 = icmp eq i64 %n.vec55, %wide.trip.count616
  br i1 %cmp.n61, label %.split.us, label %.preheader545.split.us.split.us.preheader

.preheader545.split.us.split.us.preheader:        ; preds = %iter.check50, %vec.epilog.iter.check52, %vec.epilog.middle.block60
  %indvars.iv613.ph = phi i64 [ 0, %iter.check50 ], [ %n.vec41, %vec.epilog.iter.check52 ], [ %n.vec55, %vec.epilog.middle.block60 ]
  br label %.preheader545.split.us.split.us

.preheader545.split.us.split.us:                  ; preds = %.preheader545.split.us.split.us.preheader, %.preheader545.split.us.split.us
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %.preheader545.split.us.split.us ], [ %indvars.iv613.ph, %.preheader545.split.us.split.us.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv613
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !32
  %i.ma = sext i8 %i.lz to i16
  %gep731 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv613
  store i16 %i.ma, ptr %gep731, align 2, !tbaa !49
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %.split.us, label %.preheader545.split.us.split.us, !llvm.loop !271

.preheader545.split.us.split:                     ; preds = %.preheader545.split.us.split.preheader75, %.preheader545.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader545.split.us.split ], [ %indvars.iv.ph, %.preheader545.split.us.split.preheader75 ] ; 3 uses
  %i.mb = shl nuw nsw i64 %indvars.iv, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.mb ; 2 uses
  %.val499.us = load i8, ptr %i.mc, align 1, !tbaa !32
  %i.md = getelementptr i8, ptr %i.mc, i64 1
  %.val500.us = load i8, ptr %i.md, align 1, !tbaa !32
  %i.me = zext i8 %.val499.us to i16
  %i.mf = shl nuw i16 %i.me, 8
  %i.mg = zext i8 %.val500.us to i16
  %i.mh = or disjoint i16 %i.mf, %i.mg
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv
  store i16 %i.mh, ptr %gep, align 2, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count616
  br i1 %exitcond.not, label %.split.us, label %.preheader545.split.us.split, !llvm.loop !272

.split.us:                                        ; preds = %.preheader545.split.us.split, %.preheader545.split.us.split.us, %middle.block70, %middle.block47, %vec.epilog.middle.block60, %.preheader545.split.preheader
  %i.mi = select i1 %.not483, i32 1, i32 2
  %i.mj = select i1 %.not482, i32 %i.mi, i32 0
  %i.mk = mul nuw nsw i32 %i.mj, %i.ht
  %i.ml = add nsw i32 %i.mk, %i.hq                ; 2 uses
  %i.mm = icmp slt i32 %i.hu, %i.hf
  br i1 %i.mm, label %.lr.ph561, label %.preheader550, !llvm.loop !273

.preheader549:                                    ; preds = %.lr.ph563, %middle.block27, %vec.epilog.middle.block, %.preheader550
  store <8 x i16> zeroinitializer, ptr %i.df, align 2, !tbaa !49
  br i1 %i.hg, label %.lr.ph566, label %._crit_edge567

.lr.ph563:                                        ; preds = %.lr.ph563.preheader, %.lr.ph563
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %.lr.ph563 ], [ %indvars.iv618.ph, %.lr.ph563.preheader ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv618
  store i16 %i.cb, ptr %i.mn, align 2, !tbaa !49
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond623.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count622
  br i1 %exitcond623.not, label %.preheader549, label %.lr.ph563, !llvm.loop !274

.lr.ph566:                                        ; preds = %.preheader549
  %i.mo = icmp eq i32 %i.hc, 0                    ; 3 uses
  %i.mp = zext nneg i32 %i.he to i64              ; 3 uses
  %invariant.gep732 = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.mp ; 3 uses
  %xtraiter = and i64 %i.mp, 1
  %i.mq = icmp eq i32 %i.he, 1
  br i1 %i.mq, label %.epil.preheader, label %.lr.ph566.new

.lr.ph566.new:                                    ; preds = %.lr.ph566
  %unroll_iter = and i64 %i.mp, 2147483646
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph566.new
  %indvars.iv628 = phi i64 [ 0, %.lr.ph566.new ], [ %indvars.iv.next629.1, %bb.aj ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph566.new ], [ %niter.next.1, %bb.aj ]
  br i1 %i.mo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv628
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !49
  %i.mt = zext i16 %i.ms to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.mu = phi i64 [ %i.mt, %bb.ag ], [ %indvars.iv628, %bb.af ]
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv628
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !49
  %i.mx = shl nuw i64 %i.mu, 1
  %i.my = and i64 %i.mx, 4294967294
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.my ; 2 uses
  store i16 %i.mw, ptr %i.mz, align 2, !tbaa !49
  %gep733.a = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv628
  %i.na = load i16, ptr %gep733.a, align 2, !tbaa !49
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  store i16 %i.na, ptr %i.nb, align 2, !tbaa !49
  %indvars.iv.next629 = or disjoint i64 %indvars.iv628, 1 ; 4 uses
  br i1 %i.mo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv.next629
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !49
  %i.ne = zext i16 %i.nd to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.nf = phi i64 [ %i.ne, %bb.ai ], [ %indvars.iv.next629, %bb.ah ]
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next629
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !49
  %i.ni = shl nuw i64 %i.nf, 1
  %i.nj = and i64 %i.ni, 4294967294
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.nj ; 2 uses
  store i16 %i.nh, ptr %i.nk, align 2, !tbaa !49
  %gep733.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv.next629
  %i.nl = load i16, ptr %gep733.1, align 2, !tbaa !49
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  store i16 %i.nl, ptr %i.nm, align 2, !tbaa !49
  %indvars.iv.next629.1 = add nuw nsw i64 %indvars.iv628, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge567.loopexit.unr-lcssa, label %bb.af, !llvm.loop !275

._crit_edge567.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge567, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge567.loopexit.unr-lcssa, %.lr.ph566
  %indvars.iv628.epil.init = phi i64 [ 0, %.lr.ph566 ], [ %indvars.iv.next629.1, %._crit_edge567.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod88 = trunc i32 %i.he to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br i1 %i.mo, label %._crit_edge567.loopexit.epilog-lcssa, label %bb.ak

bb.ak:                                            ; preds = %.epil.preheader
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv628.epil.init
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !49
  %i.np = zext i16 %i.no to i64
  br label %._crit_edge567.loopexit.epilog-lcssa

._crit_edge567.loopexit.epilog-lcssa:             ; preds = %bb.ak, %.epil.preheader
  %i.nq = phi i64 [ %i.np, %bb.ak ], [ %indvars.iv628.epil.init, %.epil.preheader ]
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv628.epil.init
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !49
  %i.nt = shl nuw i64 %i.nq, 1
  %i.nu = and i64 %i.nt, 4294967294
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.nu ; 2 uses
  store i16 %i.ns, ptr %i.nv, align 2, !tbaa !49
  %gep733.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv628.epil.init
  %i.nw = load i16, ptr %gep733.epil, align 2, !tbaa !49
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !49
  br label %._crit_edge567

._crit_edge567:                                   ; preds = %._crit_edge567.loopexit.epilog-lcssa, %._crit_edge567.loopexit.unr-lcssa, %.preheader549
  %i.ny = icmp sge i32 %i.he, %i.br
  %brmerge.reass.reass = or i1 %i.ny, %invariant.op
  br i1 %brmerge.reass.reass, label %.loopexit547, label %.lr.ph587

.lr.ph587:                                        ; preds = %._crit_edge567, %.loopexit543
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %.loopexit543 ], [ 0, %._crit_edge567 ] ; 2 uses
  %.0373586 = phi i32 [ %12, %.loopexit543 ], [ 0, %._crit_edge567 ] ; 4 uses
  %i.nz = shl nuw nsw i64 %indvars.iv653, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.nz ; 2 uses
  %.val = load i8, ptr %i.oa, align 1, !tbaa !32  ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 1
  %.val486 = load i8, ptr %i.ob, align 1, !tbaa !32 ; 2 uses
  %i.oc = zext i8 %.val to i32
  %i.od = shl nuw nsw i32 %i.oc, 8                ; 3 uses
  %i.oe = zext i8 %.val486 to i32                 ; 3 uses
  %i.of = or disjoint i32 %i.od, %i.oe            ; 5 uses
  %.not467574 = icmp sgt i32 %.0373586, %i.of
  br i1 %.not467574, label %.loopexit543, label %.lr.ph581.preheader

.lr.ph581.preheader:                              ; preds = %.lr.ph587
  %i.og = zext i8 %.val to i64
  %i.oh = shl nuw nsw i64 %i.og, 8
  %i.oi = zext i8 %.val486 to i64
  %i.oj = or disjoint i64 %i.oh, %i.oi
  %i.ok = zext nneg i32 %.0373586 to i64
  %i.ol = zext nneg i32 %i.of to i64              ; 3 uses
  %11 = or disjoint i32 %i.od, 1
  %i.om = add nuw nsw i32 %11, %i.oe
  %wide.trip.count645 = zext nneg i32 %i.om to i64
  br label %.lr.ph581

.lr.ph581:                                        ; preds = %.lr.ph581.preheader, %bb.bh
  %indvar = phi i64 [ 0, %.lr.ph581.preheader ], [ %indvar.next, %bb.bh ] ; 3 uses
  %indvars.iv636 = phi i64 [ %i.ok, %.lr.ph581.preheader ], [ %indvars.iv.next637, %bb.bh ] ; 9 uses
  %.0366579 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.3.ph, %bb.bh ] ; 3 uses
  %.0367578 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.2369.ph, %bb.bh ] ; 4 uses
  %.0370577 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.2372.ph, %bb.bh ] ; 2 uses
  %.idx712 = shl nsw i64 %indvars.iv636, 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx712 ; 3 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !49
  %.not468 = icmp eq i16 %i.oo, %i.cb
  br i1 %.not468, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph581
  %i.op = trunc nsw i64 %indvars.iv636 to i32     ; 3 uses
  %i.oq = icmp eq i32 %.0367578, %i.op
  %spec.store.select = select i1 %i.oq, i32 -1, i32 %.0367578
  %i.or = icmp slt i32 %.0366579, 0
  %spec.select = select i1 %i.or, i32 %i.op, i32 %.0366579
  br label %bb.bh

bb.am:                                            ; preds = %.lr.ph581
  %i.os = icmp slt i32 %.0370577, 0
  br i1 %i.os, label %.preheader541, label %bb.ao

.preheader541:                                    ; preds = %bb.am
  %i.ot = icmp samesign ult i64 %indvars.iv636, %i.ol
  %i.ou = trunc nsw i64 %indvars.iv636 to i32     ; 2 uses
  br i1 %i.ot, label %.lr.ph569, label %._crit_edge570

.lr.ph569:                                        ; preds = %.preheader541, %bb.an
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %bb.an ], [ %i.oj, %.preheader541 ] ; 3 uses
  %.idx713 = shl nsw i64 %indvars.iv633, 2
  %i.ov = getelementptr inbounds i8, ptr %i.bz, i64 %.idx713
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !49
  %.not469 = icmp eq i16 %i.ow, %i.cb
  br i1 %.not469, label %bb.an, label %._crit_edge570.loopexit

bb.an:                                            ; preds = %.lr.ph569
  %indvars.iv.next634 = add nsw i64 %indvars.iv633, -1 ; 2 uses
  %i.ox = icmp sgt i64 %indvars.iv.next634, %indvars.iv636
  br i1 %i.ox, label %.lr.ph569, label %.preheader542, !llvm.loop !276

._crit_edge570.loopexit:                          ; preds = %.lr.ph569
  %i.oy = trunc nsw i64 %indvars.iv633 to i32
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %.preheader541, %._crit_edge570.loopexit
  %.0374.lcssa = phi i32 [ %i.oy, %._crit_edge570.loopexit ], [ %i.of, %.preheader541 ] ; 3 uses
  %i.oz = icmp eq i32 %.0374.lcssa, %i.ou
  br i1 %i.oz, label %.preheader542, label %bb.ao

.preheader542:                                    ; preds = %._crit_edge570, %bb.an
  %.not480582 = icmp slt i32 %i.of, %i.ou
  br i1 %.not480582, label %.loopexit543, label %.lr.ph584.preheader

.lr.ph584.preheader:                              ; preds = %.preheader542
  %i.pa = shl nsw i32 %.0373586, 2
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %indvar, 2
  %gep737 = getelementptr i8, ptr %invariant.gep736, i64 %i.pc
  %i.pd = getelementptr i8, ptr %gep737, i64 16
  %scevgep648 = getelementptr i8, ptr %i.pd, i64 %i.pb
  %i.pe = or disjoint i32 %i.od, %i.oe
  %i.pf = trunc i64 %indvar to i32
  %i.pg = add i32 %.0373586, %i.pf
  %i.ph = sub i32 %i.pe, %i.pg
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = add nuw nsw i64 %i.pj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep648, i8 0, i64 %i.pk, i1 false), !tbaa !49
  br label %.loopexit543

bb.ao:                                            ; preds = %._crit_edge570, %bb.am
  %.1371 = phi i32 [ %.0370577, %bb.am ], [ %.0374.lcssa, %._crit_edge570 ] ; 3 uses
  %.2 = phi i32 [ %.0366579, %bb.am ], [ %.0374.lcssa, %._crit_edge570 ] ; 3 uses
  %i.pl = icmp slt i32 %.0367578, 0
  br i1 %i.pl, label %.preheader540.preheader, label %.loopexit

.preheader540.preheader:                          ; preds = %bb.ao
  %exitcond642.not12 = icmp eq i64 %indvars.iv636, %i.ol
  br i1 %exitcond642.not12, label %.loopexit, label %.lr.ph

.preheader540:                                    ; preds = %.lr.ph
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %i.ol
  br i1 %exitcond642.not, label %.loopexit, label %.lr.ph, !llvm.loop !277

.lr.ph:                                           ; preds = %.preheader540.preheader, %.preheader540
  %indvars.iv63813 = phi i64 [ %indvars.iv.next639, %.preheader540 ], [ %indvars.iv636, %.preheader540.preheader ]
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv63813, 1 ; 4 uses
  %.idx714 = shl nsw i64 %indvars.iv.next639, 2
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx714
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !49
  %.not471 = icmp eq i16 %i.pn, %i.cb
  br i1 %.not471, label %.preheader540, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !277

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.po = trunc nsw i64 %indvars.iv.next639 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader540, %.preheader540.preheader, %.loopexit.loopexit.split.loop.exit, %bb.ao
  %.1368 = phi i32 [ %.0367578, %bb.ao ], [ %i.po, %.loopexit.loopexit.split.loop.exit ], [ %.2, %.preheader540.preheader ], [ %.2, %.preheader540 ] ; 3 uses
  %i.pp = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv636 ; 2 uses
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !44 ; 5 uses
  %i.pr = sext i16 %i.pq to i32                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 2
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !45 ; 5 uses
  %i.pu = sext i16 %i.pt to i32                   ; 2 uses
  %i.pv = sext i32 %.1371 to i64
  %i.pw = getelementptr inbounds [14 x i8], ptr %5, i64 %i.pv ; 2 uses
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !44 ; 5 uses
  %i.py = sext i16 %i.px to i32                   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !45 ; 5 uses
  %i.qb = sext i16 %i.qa to i32                   ; 2 uses
  %i.qc = sext i32 %.1368 to i64
  %i.qd = getelementptr inbounds [14 x i8], ptr %5, i64 %i.qc ; 2 uses
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !44 ; 5 uses
  %i.qf = sext i16 %i.qe to i32                   ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !45 ; 5 uses
  %i.qi = sext i16 %i.qh to i32                   ; 2 uses
  %i.qj = shl nsw i32 %.1371, 1
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.qk ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !49 ; 2 uses
  %i.qn = sext i16 %i.qm to i32                   ; 6 uses
  %i.qo = getelementptr i8, ptr %i.ql, i64 2
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !49 ; 2 uses
  %i.qq = sext i16 %i.qp to i32                   ; 6 uses
  %i.qr = shl nsw i32 %.1368, 1
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.qs ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !49 ; 2 uses
  %i.qv = sext i16 %i.qu to i32                   ; 5 uses
  %i.qw = getelementptr i8, ptr %i.qt, i64 2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !49 ; 2 uses
  %i.qy = sext i16 %i.qx to i32                   ; 5 uses
  %i.qz = sub nsw i32 %i.qf, %i.py                ; 4 uses
  %i.ra = sub nsw i32 %i.qi, %i.qb                ; 4 uses
  %i.rb = icmp eq i16 %i.px, %i.qe
  br i1 %i.rb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.rc = icmp eq i16 %i.qm, %i.qu
  %i.rd = select i1 %i.rc, i32 %i.qn, i32 0
  br label %bb.ax

bb.aq:                                            ; preds = %.loopexit
  %i.re = icmp slt i16 %i.px, %i.qe
  br i1 %i.re, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not474 = icmp sgt i16 %i.pq, %i.px
  br i1 %.not474, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %.not475 = icmp slt i16 %i.pq, %i.qe
  br i1 %.not475, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.rf = sub nsw i32 %i.qv, %i.qn
  %i.rg = sub nsw i32 %i.pr, %i.py
  %i.rh = mul nsw i32 %i.rf, %i.rg
  %i.ri = mul nsw i32 %i.qz, %i.qn
  %i.rj = add nsw i32 %i.rh, %i.ri
  %i.rk = sdiv i32 %i.rj, %i.qz
  br label %bb.ax

bb.au:                                            ; preds = %bb.aq
  %.not472 = icmp sgt i16 %i.pq, %i.qe
  br i1 %.not472, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.not473 = icmp slt i16 %i.pq, %i.px
  br i1 %.not473, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.rl = sub nsw i32 %i.qn, %i.qv
  %i.rm = sub nsw i32 %i.pr, %i.qf
  %i.rn = mul nsw i32 %i.rl, %i.rm
  %i.ro = mul nsw i32 %i.qz, %i.qv
  %i.rp = sub nsw i32 %i.rn, %i.ro
  %i.rq = sub nsw i32 0, %i.qz
  %i.rr = sdiv i32 %i.rp, %i.rq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.av, %bb.at, %bb.ar, %bb.as, %bb.ap
  %.0365 = phi i32 [ %i.rd, %bb.ap ], [ %i.qv, %bb.as ], [ %i.rk, %bb.at ], [ %i.qn, %bb.ar ], [ %i.rr, %bb.aw ], [ %i.qv, %bb.au ], [ %i.qn, %bb.av ]
  %i.rs = icmp eq i16 %i.qa, %i.qh
  br i1 %i.rs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.rt = icmp eq i16 %i.qp, %i.qx
  %i.ru = select i1 %i.rt, i32 %i.qq, i32 0
  br label %bb.bg

bb.az:                                            ; preds = %bb.ax
  %i.rv = icmp slt i16 %i.qa, %i.qh
  br i1 %i.rv, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %.not478 = icmp sgt i16 %i.pt, %i.qa
  br i1 %.not478, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %.not479 = icmp slt i16 %i.pt, %i.qh
  br i1 %.not479, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.rw = sub nsw i32 %i.qy, %i.qq
  %i.rx = sub nsw i32 %i.pu, %i.qb
  %i.ry = mul nsw i32 %i.rw, %i.rx
  %i.rz = mul nsw i32 %i.ra, %i.qq
  %i.sa = add nsw i32 %i.ry, %i.rz
  %i.sb = sdiv i32 %i.sa, %i.ra
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %.not476 = icmp sgt i16 %i.pt, %i.qh
  br i1 %.not476, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not477 = icmp slt i16 %i.pt, %i.qa
  br i1 %.not477, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.sc = sub nsw i32 %i.qq, %i.qy
  %i.sd = sub nsw i32 %i.pu, %i.qi
  %i.se = mul nsw i32 %i.sc, %i.sd
  %i.sf = mul nsw i32 %i.ra, %i.qy
  %i.sg = sub nsw i32 %i.se, %i.sf
  %i.sh = sub nsw i32 0, %i.ra
  %i.si = sdiv i32 %i.sg, %i.sh
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.be, %bb.bc, %bb.ba, %bb.bb, %bb.ay
  %.0 = phi i32 [ %i.ru, %bb.ay ], [ %i.qy, %bb.bb ], [ %i.sb, %bb.bc ], [ %i.qq, %bb.ba ], [ %i.si, %bb.bf ], [ %i.qy, %bb.bd ], [ %i.qq, %bb.be ]
  %i.sj = trunc i32 %.0365 to i16
  store i16 %i.sj, ptr %i.on, align 2, !tbaa !49
  %i.sk = trunc i32 %.0 to i16
  %i.sl = getelementptr i8, ptr %i.on, i64 2
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.al, %bb.bg
  %.2372.ph = phi i32 [ %.1371, %bb.bg ], [ %i.op, %bb.al ]
  %.2369.ph = phi i32 [ %.1368, %bb.bg ], [ %spec.store.select, %bb.al ]
  %.3.ph = phi i32 [ %.2, %bb.bg ], [ %spec.select, %bb.al ]
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next637, %wide.trip.count645
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond646.not, label %.loopexit543, label %.lr.ph581, !llvm.loop !278

.loopexit543:                                     ; preds = %bb.bh, %.lr.ph584.preheader, %.lr.ph587, %.preheader542
  %12 = add nuw nsw i32 %i.of, 1
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count656
  br i1 %exitcond657.not, label %.loopexit547, label %.lr.ph587, !llvm.loop !279

.loopexit547:                                     ; preds = %.loopexit543, %._crit_edge567
  br i1 %i.cc, label %.lr.ph590.preheader, label %._crit_edge591

.lr.ph590.preheader:                              ; preds = %.loopexit547
  br i1 %min.iters.check, label %.lr.ph590.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph590.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.4.i506, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %wide.load = load <4 x i16>, ptr %i.sm, align 2, !tbaa !49
  %wide.load14 = load <4 x i16>, ptr %i.sn, align 2, !tbaa !49
  %i.so = sext <4 x i16> %wide.load to <4 x i32>
  %i.sp = sext <4 x i16> %wide.load14 to <4 x i32>
  %i.sq = mul nsw <4 x i32> %broadcast.splat, %i.so
  %i.sr = mul nsw <4 x i32> %broadcast.splat, %i.sp
  %i.ss = ashr <4 x i32> %i.sq, splat (i32 8)
  %i.st = ashr <4 x i32> %i.sr, splat (i32 8)
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 2 uses
  %wide.load15 = load <4 x i32>, ptr %i.su, align 4, !tbaa !34
  %wide.load16 = load <4 x i32>, ptr %i.sv, align 4, !tbaa !34
  %i.sw = add nsw <4 x i32> %i.ss, %wide.load15
  %i.sx = add nsw <4 x i32> %i.st, %wide.load16
  store <4 x i32> %i.sw, ptr %i.su, align 4, !tbaa !34
  store <4 x i32> %i.sx, ptr %i.sv, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sy = icmp eq i64 %index.next, %n.vec
  br i1 %i.sy, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge591, label %.lr.ph590.preheader77

.lr.ph590.preheader77:                            ; preds = %.lr.ph590.preheader, %middle.block
  %indvars.iv658.ph = phi i64 [ 0, %.lr.ph590.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.preheader77, %.lr.ph590
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %.lr.ph590 ], [ %indvars.iv658.ph, %.lr.ph590.preheader77 ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv658
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !49
  %i.tb = sext i16 %i.ta to i32
  %i.tc = mul nsw i32 %.4.i506, %i.tb
  %i.td = ashr i32 %i.tc, 8
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv658 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !34
  %i.tg = add nsw i32 %i.td, %i.tf
  store i32 %i.tg, ptr %i.te, align 4, !tbaa !34
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %exitcond663.not.a = icmp eq i64 %indvars.iv.next659, %wide.trip.count662
  br i1 %exitcond663.not.a, label %._crit_edge591, label %.lr.ph590, !llvm.loop !281

.thread537:                                       ; preds = %bb.ac, %.lr.ph561, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread532

._crit_edge591:                                   ; preds = %.lr.ph590, %middle.block, %.loopexit547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread522

.thread522:                                       ; preds = %bb.z, %bb.y, %bb.t, %bb.v, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit, %._crit_edge591
  %.9526 = phi i32 [ %.3392.lcssa, %._crit_edge591 ], [ %i.dx, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit ], [ %i.dx, %bb.t ], [ %i.dx, %bb.v ], [ %i.dx, %bb.y ], [ %i.dx, %bb.z ]
  %i.th = add nuw nsw i32 %.0394592, 1            ; 2 uses
  %exitcond664.not = icmp eq i32 %i.th, %i.de
  br i1 %exitcond664.not, label %.preheader, label %bb.o, !llvm.loop !282

.lr.ph598:                                        ; preds = %.lr.ph598, %.lr.ph598.preheader.new
  %indvars.iv665 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %indvars.iv.next666.1, %.lr.ph598 ] ; 4 uses
  %niter93 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %niter93.next.1, %.lr.ph598 ]
  %.idx715 = shl nuw nsw i64 %indvars.iv665, 3
  %i.ti = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715
  %i.tj = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665 ; 2 uses
  %i.tk = load <2 x i32>, ptr %i.ti, align 4, !tbaa !34
  %i.tl = lshr <2 x i32> %i.tk, splat (i32 8)
  %i.tm = load <2 x i16>, ptr %i.tj, align 2, !tbaa !49
  %i.tn = trunc <2 x i32> %i.tl to <2 x i16>
  %i.to = add <2 x i16> %i.tm, %i.tn
  store <2 x i16> %i.to, ptr %i.tj, align 2, !tbaa !49
  %indvars.iv.next666 = or disjoint i64 %indvars.iv665, 1 ; 2 uses
  %.idx715.1 = shl nuw nsw i64 %indvars.iv.next666, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.1
  %i.tq = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv.next666 ; 2 uses
  %i.tr = load <2 x i32>, ptr %i.tp, align 4, !tbaa !34
  %i.ts = lshr <2 x i32> %i.tr, splat (i32 8)
  %i.tt = load <2 x i16>, ptr %i.tq, align 2, !tbaa !49
  %i.tu = trunc <2 x i32> %i.ts to <2 x i16>
  %i.tv = add <2 x i16> %i.tt, %i.tu
  store <2 x i16> %i.tv, ptr %i.tq, align 2, !tbaa !49
  %indvars.iv.next666.1 = add nuw nsw i64 %indvars.iv665, 2 ; 2 uses
  %niter93.next.1 = add i64 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %._crit_edge599.loopexit.unr-lcssa, label %.lr.ph598, !llvm.loop !283

._crit_edge599.loopexit.unr-lcssa:                ; preds = %.lr.ph598
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %._crit_edge599, label %.lr.ph598.epil.preheader

.lr.ph598.epil.preheader:                         ; preds = %._crit_edge599.loopexit.unr-lcssa, %.lr.ph598.preheader
  %indvars.iv665.epil.init = phi i64 [ 0, %.lr.ph598.preheader ], [ %indvars.iv.next666.1, %._crit_edge599.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %.idx715.epil = shl nuw nsw i64 %indvars.iv665.epil.init, 3
  %i.tw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.epil
  %i.tx = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665.epil.init ; 2 uses
  %i.ty = load <2 x i32>, ptr %i.tw, align 4, !tbaa !34
  %i.tz = lshr <2 x i32> %i.ty, splat (i32 8)
  %i.ua = load <2 x i16>, ptr %i.tx, align 2, !tbaa !49
  %i.ub = trunc <2 x i32> %i.tz to <2 x i16>
  %i.uc = add <2 x i16> %i.ua, %i.ub
  store <2 x i16> %i.uc, ptr %i.tx, align 2, !tbaa !49
  br label %._crit_edge599

._crit_edge599:                                   ; preds = %.lr.ph598.epil.preheader, %._crit_edge599.loopexit.unr-lcssa, %.preheader
  %.not459 = icmp eq ptr %7, null
  br i1 %.not459, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge599
  %i.ud = shl nsw i32 %i.bq, 1
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !34
  %i.uh = ashr i32 %i.ug, 8
  %i.ui = load i32, ptr %7, align 4, !tbaa !34
  %i.uj = add nsw i32 %i.ui, %i.uh
  store i32 %i.uj, ptr %7, align 4, !tbaa !34
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge599
  %.not460 = icmp eq ptr %8, null
  br i1 %.not460, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.uk = shl nsw i32 %i.bq, 1
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr [4 x i8], ptr %i.bu, i64 %i.ul
  %i.un = getelementptr i8, ptr %i.um, i64 20
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !34
  %i.up = ashr i32 %i.uo, 8
  %i.uq = load i32, ptr %8, align 4, !tbaa !34
  %i.ur = add nsw i32 %i.uq, %i.up
  store i32 %i.ur, ptr %8, align 4, !tbaa !34
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.not461 = icmp eq ptr %9, null
  br i1 %.not461, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.us = shl nsw i32 %i.bq, 1
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr [4 x i8], ptr %i.bu, i64 %i.ut
  %i.uv = getelementptr i8, ptr %i.uu, i64 8
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !34
  %i.ux = ashr i32 %i.uw, 8
  %i.uy = load i32, ptr %9, align 4, !tbaa !34
  %i.uz = add nsw i32 %i.uy, %i.ux
  store i32 %i.uz, ptr %9, align 4, !tbaa !34
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not462 = icmp eq ptr %10, null
  br i1 %.not462, label %.thread532, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.va = shl nsw i32 %i.bq, 1
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr [4 x i8], ptr %i.bu, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.vc, i64 28
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !34
  %i.vf = ashr i32 %i.ve, 8
  %i.vg = load i32, ptr %10, align 4, !tbaa !34
  %i.vh = add nsw i32 %i.vg, %i.vf
  store i32 %i.vh, ptr %10, align 4, !tbaa !34
  br label %.thread532

.thread532:                                       ; preds = %bb.r, %.thread537, %bb.bn, %bb.bo, %bb.m
  tail call void @free(ptr noundef %i.bu) #22
  br label %.thread528

.thread528:                                       ; preds = %bb.o, %.thread532, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.h, %bb.g, %.thread528, %bb.j, %bb.i, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -2147483647, -2147483648) i32 @_ZN2cvL23stbtt__ReadPointNumbersEPKNS_14stbtt_fontinfoEiPiPt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
