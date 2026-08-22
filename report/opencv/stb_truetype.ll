Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cvL23stbtt__VaryGlyphShapeTTEPKNS_14stbtt_fontinfoEiiiiPNS_12stbtt_vertexEiPiS5_S5_S5_:bb.a
  %i.ng = add nuw nsw i64 %i.nf, 1
  %i.nh = sub nsw i64 %i.nf, %indvars.iv613.ph
  %xtraiter100 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader545.split.us.split.us.prol.loopexit, label %.preheader545.split.us.split.us.prol

.preheader545.split.us.split.us.prol:             ; preds = %.preheader545.split.us.split.us.preheader, %.preheader545.split.us.split.us.prol
  %indvars.iv613.prol = phi i64 [ %indvars.iv.next614.prol, %.preheader545.split.us.split.us.prol ], [ %indvars.iv613.ph, %.preheader545.split.us.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader545.split.us.split.us.prol ], [ 0, %.preheader545.split.us.split.us.preheader ]
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv613.prol
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !14
  %i.nk = sext i8 %i.nj to i16
  %gep731.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv613.prol
  store i16 %i.nk, ptr %gep731.prol, align 2, !tbaa !41
  %indvars.iv.next614.prol = add nuw nsw i64 %indvars.iv613.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter100
  br i1 %prol.iter.cmp.not, label %.preheader545.split.us.split.us.prol.loopexit, label %.preheader545.split.us.split.us.prol, !llvm.loop !282

.preheader545.split.us.split.us.prol.loopexit:    ; preds = %.preheader545.split.us.split.us.prol, %.preheader545.split.us.split.us.preheader
  %indvars.iv613.unr = phi i64 [ %indvars.iv613.ph, %.preheader545.split.us.split.us.preheader ], [ %indvars.iv.next614.prol, %.preheader545.split.us.split.us.prol ]
  %i.nl = icmp ult i64 %i.nh, 3
  br i1 %i.nl, label %.split.us, label %.preheader545.split.us.split.us

.preheader545.split.us.split.us:                  ; preds = %.preheader545.split.us.split.us.prol.loopexit, %.preheader545.split.us.split.us
  %indvars.iv613 = phi i64 [ %indvars.iv.next614.3, %.preheader545.split.us.split.us ], [ %indvars.iv613.unr, %.preheader545.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv613
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !14
  %i.no = sext i8 %i.nn to i16
  %gep731 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv613
  store i16 %i.no, ptr %gep731, align 2, !tbaa !41
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.next614
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !14
  %i.nr = sext i8 %i.nq to i16
  %gep731.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv.next614
  store i16 %i.nr, ptr %gep731.1, align 2, !tbaa !41
  %indvars.iv.next614.1 = add nuw nsw i64 %indvars.iv613, 2 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.next614.1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !14
  %i.nu = sext i8 %i.nt to i16
  %gep731.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv.next614.1
  store i16 %i.nu, ptr %gep731.2, align 2, !tbaa !41
  %indvars.iv.next614.2 = add nuw nsw i64 %indvars.iv613, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.next614.2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !14
  %i.nx = sext i8 %i.nw to i16
  %gep731.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv.next614.2
  store i16 %i.nx, ptr %gep731.3, align 2, !tbaa !41
  %indvars.iv.next614.3 = add nuw nsw i64 %indvars.iv613, 4 ; 2 uses
  %exitcond617.not.3 = icmp eq i64 %indvars.iv.next614.3, %wide.trip.count616
  br i1 %exitcond617.not.3, label %.split.us, label %.preheader545.split.us.split.us, !llvm.loop !283

.preheader545.split.us.split:                     ; preds = %.preheader545.split.us.split.prol.loopexit, %.preheader545.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader545.split.us.split ], [ %indvars.iv.unr, %.preheader545.split.us.split.prol.loopexit ] ; 4 uses
  %i.ny = shl nuw nsw i64 %indvars.iv, 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ny ; 2 uses
  %.val499.us = load i8, ptr %i.nz, align 1, !tbaa !14
  %i.oa = getelementptr i8, ptr %i.nz, i64 1
  %.val500.us = load i8, ptr %i.oa, align 1, !tbaa !14
  %i.ob = zext i8 %.val499.us to i16
  %i.oc = shl nuw i16 %i.ob, 8
  %i.od = zext i8 %.val500.us to i16
  %i.oe = or disjoint i16 %i.oc, %i.od
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv
  store i16 %i.oe, ptr %gep, align 2, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.of = shl nuw nsw i64 %indvars.iv.next, 1
  %i.og = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.of ; 2 uses
  %.val499.us.1 = load i8, ptr %i.og, align 1, !tbaa !14
  %i.oh = getelementptr i8, ptr %i.og, i64 1
  %.val500.us.1 = load i8, ptr %i.oh, align 1, !tbaa !14
  %i.oi = zext i8 %.val499.us.1 to i16
  %i.oj = shl nuw i16 %i.oi, 8
  %i.ok = zext i8 %.val500.us.1 to i16
  %i.ol = or disjoint i16 %i.oj, %i.ok
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep730, i64 %indvars.iv.next
  store i16 %i.ol, ptr %gep.1, align 2, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count616
  br i1 %exitcond.not.1, label %.split.us, label %.preheader545.split.us.split, !llvm.loop !284

.split.us:                                        ; preds = %.preheader545.split.us.split.prol.loopexit, %.preheader545.split.us.split, %.preheader545.split.us.split.us.prol.loopexit, %.preheader545.split.us.split.us, %middle.block82, %middle.block51, %vec.epilog.middle.block64, %.preheader545.split.preheader
  %i.om = select i1 %.not483, i32 1, i32 2
  %i.on = select i1 %.not482, i32 %i.om, i32 0
  %i.oo = mul nuw nsw i32 %i.on, %i.id
  %i.op = add nsw i32 %i.oo, %i.ia                ; 2 uses
  %i.oq = icmp slt i32 %i.ie, %i.hp
  br i1 %i.oq, label %.lr.ph561, label %.preheader550, !llvm.loop !285

.preheader549:                                    ; preds = %.lr.ph563, %middle.block27, %vec.epilog.middle.block, %.preheader550
  store <8 x i16> zeroinitializer, ptr %i.df, align 2, !tbaa !41
  br i1 %i.hq, label %.lr.ph566, label %._crit_edge567

.lr.ph563:                                        ; preds = %.lr.ph563.preheader, %.lr.ph563
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %.lr.ph563 ], [ %indvars.iv618.ph, %.lr.ph563.preheader ] ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv618
  store i16 %i.cb, ptr %i.or, align 2, !tbaa !41
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond623.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count622
  br i1 %exitcond623.not, label %.preheader549, label %.lr.ph563, !llvm.loop !286

.lr.ph566:                                        ; preds = %.preheader549
  %i.os = icmp eq i32 %i.hm, 0                    ; 3 uses
  %i.ot = zext nneg i32 %i.ho to i64              ; 3 uses
  %invariant.gep732 = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.ot ; 3 uses
  %xtraiter102 = and i64 %i.ot, 1
  %i.ou = icmp eq i32 %i.ho, 1
  br i1 %i.ou, label %.epil.preheader, label %.lr.ph566.new

.lr.ph566.new:                                    ; preds = %.lr.ph566
  %unroll_iter = and i64 %i.ot, 2147483646
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph566.new
  %indvars.iv628 = phi i64 [ 0, %.lr.ph566.new ], [ %indvars.iv.next629.1, %bb.aj ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph566.new ], [ %niter.next.1, %bb.aj ]
  br i1 %i.os, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv628
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !41
  %i.ox = zext i16 %i.ow to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.oy = phi i64 [ %i.ox, %bb.ag ], [ %indvars.iv628, %bb.af ]
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv628
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !41
  %i.pb = shl nuw i64 %i.oy, 1
  %i.pc = and i64 %i.pb, 4294967294
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.pc ; 2 uses
  store i16 %i.pa, ptr %i.pd, align 2, !tbaa !41
  %gep733.a = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv628
  %i.pe = load i16, ptr %gep733.a, align 2, !tbaa !41
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !41
  %indvars.iv.next629 = or disjoint i64 %indvars.iv628, 1 ; 4 uses
  br i1 %i.os, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv.next629
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !41
  %i.pi = zext i16 %i.ph to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.pj = phi i64 [ %i.pi, %bb.ai ], [ %indvars.iv.next629, %bb.ah ]
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv.next629
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !41
  %i.pm = shl nuw i64 %i.pj, 1
  %i.pn = and i64 %i.pm, 4294967294
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.pn ; 2 uses
  store i16 %i.pl, ptr %i.po, align 2, !tbaa !41
  %gep733.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv.next629
  %i.pp = load i16, ptr %gep733.1, align 2, !tbaa !41
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  store i16 %i.pp, ptr %i.pq, align 2, !tbaa !41
  %indvars.iv.next629.1 = add nuw nsw i64 %indvars.iv628, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge567.loopexit.unr-lcssa, label %bb.af, !llvm.loop !287

._crit_edge567.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %._crit_edge567, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge567.loopexit.unr-lcssa, %.lr.ph566
  %indvars.iv628.epil.init = phi i64 [ 0, %.lr.ph566 ], [ %indvars.iv.next629.1, %._crit_edge567.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod104 = trunc i32 %i.ho to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br i1 %i.os, label %._crit_edge567.loopexit.epilog-lcssa, label %bb.ak

bb.ak:                                            ; preds = %.epil.preheader
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.0380, i64 %indvars.iv628.epil.init
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !41
  %i.pt = zext i16 %i.ps to i64
  br label %._crit_edge567.loopexit.epilog-lcssa

._crit_edge567.loopexit.epilog-lcssa:             ; preds = %bb.ak, %.epil.preheader
  %i.pu = phi i64 [ %i.pt, %bb.ak ], [ %indvars.iv628.epil.init, %.epil.preheader ]
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv628.epil.init
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !41
  %i.px = shl nuw i64 %i.pu, 1
  %i.py = and i64 %i.px, 4294967294
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.py ; 2 uses
  store i16 %i.pw, ptr %i.pz, align 2, !tbaa !41
  %gep733.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep732, i64 %indvars.iv628.epil.init
  %i.qa = load i16, ptr %gep733.epil, align 2, !tbaa !41
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !41
  br label %._crit_edge567

._crit_edge567:                                   ; preds = %._crit_edge567.loopexit.epilog-lcssa, %._crit_edge567.loopexit.unr-lcssa, %.preheader549
  %i.qc = icmp sge i32 %i.ho, %i.br
  %brmerge.reass.reass = or i1 %i.qc, %invariant.op
  br i1 %brmerge.reass.reass, label %.loopexit547, label %.lr.ph587

.lr.ph587:                                        ; preds = %._crit_edge567, %.loopexit543
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %.loopexit543 ], [ 0, %._crit_edge567 ] ; 2 uses
  %.0373586 = phi i32 [ %12, %.loopexit543 ], [ 0, %._crit_edge567 ] ; 4 uses
  %i.qd = shl nuw nsw i64 %indvars.iv653, 1
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.qd ; 2 uses
  %.val = load i8, ptr %i.qe, align 1, !tbaa !14  ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 1
  %.val486 = load i8, ptr %i.qf, align 1, !tbaa !14 ; 2 uses
  %i.qg = zext i8 %.val to i32
  %i.qh = shl nuw nsw i32 %i.qg, 8                ; 3 uses
  %i.qi = zext i8 %.val486 to i32                 ; 3 uses
  %i.qj = or disjoint i32 %i.qh, %i.qi            ; 5 uses
  %.not467574 = icmp sgt i32 %.0373586, %i.qj
  br i1 %.not467574, label %.loopexit543, label %.lr.ph581.preheader

.lr.ph581.preheader:                              ; preds = %.lr.ph587
  %i.qk = zext i8 %.val to i64
  %i.ql = shl nuw nsw i64 %i.qk, 8
  %i.qm = zext i8 %.val486 to i64
  %i.qn = or disjoint i64 %i.ql, %i.qm
  %i.qo = zext nneg i32 %.0373586 to i64
  %i.qp = zext nneg i32 %i.qj to i64              ; 3 uses
  %11 = or disjoint i32 %i.qh, 1
  %i.qq = add nuw nsw i32 %11, %i.qi
  %wide.trip.count645 = zext nneg i32 %i.qq to i64
  br label %.lr.ph581

.lr.ph581:                                        ; preds = %.lr.ph581.preheader, %bb.bh
  %indvar = phi i64 [ 0, %.lr.ph581.preheader ], [ %indvar.next, %bb.bh ] ; 3 uses
  %indvars.iv636 = phi i64 [ %i.qo, %.lr.ph581.preheader ], [ %indvars.iv.next637, %bb.bh ] ; 9 uses
  %.0366579 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.3.ph, %bb.bh ] ; 3 uses
  %.0367578 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.2369.ph, %bb.bh ] ; 4 uses
  %.0370577 = phi i32 [ -1, %.lr.ph581.preheader ], [ %.2372.ph, %bb.bh ] ; 2 uses
  %.idx712 = shl nsw i64 %indvars.iv636, 2
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx712 ; 3 uses
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !41
  %.not468 = icmp eq i16 %i.qs, %i.cb
  br i1 %.not468, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph581
  %i.qt = trunc nsw i64 %indvars.iv636 to i32     ; 3 uses
  %i.qu = icmp eq i32 %.0367578, %i.qt
  %spec.store.select = select i1 %i.qu, i32 -1, i32 %.0367578
  %i.qv = icmp slt i32 %.0366579, 0
  %spec.select = select i1 %i.qv, i32 %i.qt, i32 %.0366579
  br label %bb.bh

bb.am:                                            ; preds = %.lr.ph581
  %i.qw = icmp slt i32 %.0370577, 0
  br i1 %i.qw, label %.preheader541, label %bb.ao

.preheader541:                                    ; preds = %bb.am
  %i.qx = icmp samesign ult i64 %indvars.iv636, %i.qp
  %i.qy = trunc nsw i64 %indvars.iv636 to i32     ; 2 uses
  br i1 %i.qx, label %.lr.ph569, label %._crit_edge570

.lr.ph569:                                        ; preds = %.preheader541, %bb.an
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %bb.an ], [ %i.qn, %.preheader541 ] ; 3 uses
  %.idx713 = shl nsw i64 %indvars.iv633, 2
  %i.qz = getelementptr inbounds i8, ptr %i.bz, i64 %.idx713
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !41
  %.not469 = icmp eq i16 %i.ra, %i.cb
  br i1 %.not469, label %bb.an, label %._crit_edge570.loopexit

bb.an:                                            ; preds = %.lr.ph569
  %indvars.iv.next634 = add nsw i64 %indvars.iv633, -1 ; 2 uses
  %i.rb = icmp sgt i64 %indvars.iv.next634, %indvars.iv636
  br i1 %i.rb, label %.lr.ph569, label %.preheader542, !llvm.loop !288

._crit_edge570.loopexit:                          ; preds = %.lr.ph569
  %i.rc = trunc nsw i64 %indvars.iv633 to i32
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %.preheader541, %._crit_edge570.loopexit
  %.0374.lcssa = phi i32 [ %i.rc, %._crit_edge570.loopexit ], [ %i.qj, %.preheader541 ] ; 3 uses
  %i.rd = icmp eq i32 %.0374.lcssa, %i.qy
  br i1 %i.rd, label %.preheader542, label %bb.ao

.preheader542:                                    ; preds = %._crit_edge570, %bb.an
  %.not480582 = icmp slt i32 %i.qj, %i.qy
  br i1 %.not480582, label %.loopexit543, label %.lr.ph584.preheader

.lr.ph584.preheader:                              ; preds = %.preheader542
  %i.re = shl nsw i32 %.0373586, 2
  %i.rf = zext i32 %i.re to i64
  %i.rg = shl nuw nsw i64 %indvar, 2
  %gep737 = getelementptr i8, ptr %invariant.gep736, i64 %i.rg
  %i.rh = getelementptr i8, ptr %gep737, i64 16
  %scevgep648 = getelementptr i8, ptr %i.rh, i64 %i.rf
  %i.ri = or disjoint i32 %i.qh, %i.qi
  %i.rj = trunc i64 %indvar to i32
  %i.rk = add i32 %.0373586, %i.rj
  %i.rl = sub i32 %i.ri, %i.rk
  %i.rm = zext i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep648, i8 0, i64 %i.ro, i1 false), !tbaa !41
  br label %.loopexit543

bb.ao:                                            ; preds = %._crit_edge570, %bb.am
  %.1371 = phi i32 [ %.0370577, %bb.am ], [ %.0374.lcssa, %._crit_edge570 ] ; 3 uses
  %.2 = phi i32 [ %.0366579, %bb.am ], [ %.0374.lcssa, %._crit_edge570 ] ; 3 uses
  %i.rp = icmp slt i32 %.0367578, 0
  br i1 %i.rp, label %.preheader540.preheader, label %.loopexit

.preheader540.preheader:                          ; preds = %bb.ao
  %exitcond642.not12 = icmp eq i64 %indvars.iv636, %i.qp
  br i1 %exitcond642.not12, label %.loopexit, label %.lr.ph

.preheader540:                                    ; preds = %.lr.ph
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %i.qp
  br i1 %exitcond642.not, label %.loopexit, label %.lr.ph, !llvm.loop !289

.lr.ph:                                           ; preds = %.preheader540.preheader, %.preheader540
  %indvars.iv63813 = phi i64 [ %indvars.iv.next639, %.preheader540 ], [ %indvars.iv636, %.preheader540.preheader ]
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv63813, 1 ; 4 uses
  %.idx714 = shl nsw i64 %indvars.iv.next639, 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx714
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !41
  %.not471 = icmp eq i16 %i.rr, %i.cb
  br i1 %.not471, label %.preheader540, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !289

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.rs = trunc nsw i64 %indvars.iv.next639 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader540, %.preheader540.preheader, %.loopexit.loopexit.split.loop.exit, %bb.ao
  %.1368 = phi i32 [ %.0367578, %bb.ao ], [ %i.rs, %.loopexit.loopexit.split.loop.exit ], [ %.2, %.preheader540.preheader ], [ %.2, %.preheader540 ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv636 ; 2 uses
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !30 ; 5 uses
  %i.rv = sext i16 %i.ru to i32                   ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !32 ; 5 uses
  %i.ry = sext i16 %i.rx to i32                   ; 2 uses
  %i.rz = sext i32 %.1371 to i64
  %i.sa = getelementptr inbounds [14 x i8], ptr %5, i64 %i.rz ; 2 uses
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !30 ; 5 uses
  %i.sc = sext i16 %i.sb to i32                   ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !32 ; 5 uses
  %i.sf = sext i16 %i.se to i32                   ; 2 uses
  %i.sg = sext i32 %.1368 to i64
  %i.sh = getelementptr inbounds [14 x i8], ptr %5, i64 %i.sg ; 2 uses
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !30 ; 5 uses
  %i.sj = sext i16 %i.si to i32                   ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !32 ; 5 uses
  %i.sm = sext i16 %i.sl to i32                   ; 2 uses
  %i.sn = shl nsw i32 %.1371, 1
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.so ; 2 uses
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !41 ; 2 uses
  %i.sr = sext i16 %i.sq to i32                   ; 6 uses
  %i.ss = getelementptr i8, ptr %i.sp, i64 2
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !41 ; 2 uses
  %i.su = sext i16 %i.st to i32                   ; 6 uses
  %i.sv = shl nsw i32 %.1368, 1
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.sw ; 2 uses
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !41 ; 2 uses
  %i.sz = sext i16 %i.sy to i32                   ; 5 uses
  %i.ta = getelementptr i8, ptr %i.sx, i64 2
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !41 ; 2 uses
  %i.tc = sext i16 %i.tb to i32                   ; 5 uses
  %i.td = sub nsw i32 %i.sj, %i.sc                ; 4 uses
  %i.te = sub nsw i32 %i.sm, %i.sf                ; 4 uses
  %i.tf = icmp eq i16 %i.sb, %i.si
  br i1 %i.tf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.tg = icmp eq i16 %i.sq, %i.sy
  %i.th = select i1 %i.tg, i32 %i.sr, i32 0
  br label %bb.ax

bb.aq:                                            ; preds = %.loopexit
  %i.ti = icmp slt i16 %i.sb, %i.si
  br i1 %i.ti, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not474 = icmp sgt i16 %i.ru, %i.sb
  br i1 %.not474, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %.not475 = icmp slt i16 %i.ru, %i.si
  br i1 %.not475, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.tj = sub nsw i32 %i.sz, %i.sr
  %i.tk = sub nsw i32 %i.rv, %i.sc
  %i.tl = mul nsw i32 %i.tj, %i.tk
  %i.tm = mul nsw i32 %i.td, %i.sr
  %i.tn = add nsw i32 %i.tl, %i.tm
  %i.to = sdiv i32 %i.tn, %i.td
  br label %bb.ax

bb.au:                                            ; preds = %bb.aq
  %.not472 = icmp sgt i16 %i.ru, %i.si
  br i1 %.not472, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.not473 = icmp slt i16 %i.ru, %i.sb
  br i1 %.not473, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tp = sub nsw i32 %i.sr, %i.sz
  %i.tq = sub nsw i32 %i.rv, %i.sj
  %i.tr = mul nsw i32 %i.tp, %i.tq
  %i.ts = mul nsw i32 %i.td, %i.sz
  %i.tt = sub nsw i32 %i.tr, %i.ts
  %i.tu = sub nsw i32 0, %i.td
  %i.tv = sdiv i32 %i.tt, %i.tu
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.av, %bb.at, %bb.ar, %bb.as, %bb.ap
  %.0365 = phi i32 [ %i.th, %bb.ap ], [ %i.sz, %bb.as ], [ %i.to, %bb.at ], [ %i.sr, %bb.ar ], [ %i.tv, %bb.aw ], [ %i.sz, %bb.au ], [ %i.sr, %bb.av ]
  %i.tw = icmp eq i16 %i.se, %i.sl
  br i1 %i.tw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.tx = icmp eq i16 %i.st, %i.tb
  %i.ty = select i1 %i.tx, i32 %i.su, i32 0
  br label %bb.bg

bb.az:                                            ; preds = %bb.ax
  %i.tz = icmp slt i16 %i.se, %i.sl
  br i1 %i.tz, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %.not478 = icmp sgt i16 %i.rx, %i.se
  br i1 %.not478, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %.not479 = icmp slt i16 %i.rx, %i.sl
  br i1 %.not479, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ua = sub nsw i32 %i.tc, %i.su
  %i.ub = sub nsw i32 %i.ry, %i.sf
  %i.uc = mul nsw i32 %i.ua, %i.ub
  %i.ud = mul nsw i32 %i.te, %i.su
  %i.ue = add nsw i32 %i.uc, %i.ud
  %i.uf = sdiv i32 %i.ue, %i.te
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %.not476 = icmp sgt i16 %i.rx, %i.sl
  br i1 %.not476, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not477 = icmp slt i16 %i.rx, %i.se
  br i1 %.not477, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ug = sub nsw i32 %i.su, %i.tc
  %i.uh = sub nsw i32 %i.ry, %i.sm
  %i.ui = mul nsw i32 %i.ug, %i.uh
  %i.uj = mul nsw i32 %i.te, %i.tc
  %i.uk = sub nsw i32 %i.ui, %i.uj
  %i.ul = sub nsw i32 0, %i.te
  %i.um = sdiv i32 %i.uk, %i.ul
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.be, %bb.bc, %bb.ba, %bb.bb, %bb.ay
  %.0 = phi i32 [ %i.ty, %bb.ay ], [ %i.tc, %bb.bb ], [ %i.uf, %bb.bc ], [ %i.su, %bb.ba ], [ %i.um, %bb.bf ], [ %i.tc, %bb.bd ], [ %i.su, %bb.be ]
  %i.un = trunc i32 %.0365 to i16
  store i16 %i.un, ptr %i.qr, align 2, !tbaa !41
  %i.uo = trunc i32 %.0 to i16
  %i.up = getelementptr i8, ptr %i.qr, i64 2
  store i16 %i.uo, ptr %i.up, align 2, !tbaa !41
  br label %bb.bh

bb.bh:                                            ; preds = %bb.al, %bb.bg
  %.2372.ph = phi i32 [ %.1371, %bb.bg ], [ %i.qt, %bb.al ]
  %.2369.ph = phi i32 [ %.1368, %bb.bg ], [ %spec.store.select, %bb.al ]
  %.3.ph = phi i32 [ %.2, %bb.bg ], [ %spec.select, %bb.al ]
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next637, %wide.trip.count645
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond646.not, label %.loopexit543, label %.lr.ph581, !llvm.loop !290

.loopexit543:                                     ; preds = %bb.bh, %.lr.ph584.preheader, %.lr.ph587, %.preheader542
  %12 = add nuw nsw i32 %i.qj, 1
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count656
  br i1 %exitcond657.not, label %.loopexit547, label %.lr.ph587, !llvm.loop !291

.loopexit547:                                     ; preds = %.loopexit543, %._crit_edge567
  br i1 %i.cc, label %.lr.ph590.preheader, label %._crit_edge591

.lr.ph590.preheader:                              ; preds = %.loopexit547
  br i1 %min.iters.check, label %.lr.ph590.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph590.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.4.i506, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %wide.load = load <4 x i16>, ptr %i.uq, align 2, !tbaa !41
  %wide.load14 = load <4 x i16>, ptr %i.ur, align 2, !tbaa !41
  %i.us = sext <4 x i16> %wide.load to <4 x i32>
  %i.ut = sext <4 x i16> %wide.load14 to <4 x i32>
  %i.uu = mul nsw <4 x i32> %broadcast.splat, %i.us
  %i.uv = mul nsw <4 x i32> %broadcast.splat, %i.ut
  %i.uw = ashr <4 x i32> %i.uu, splat (i32 8)
  %i.ux = ashr <4 x i32> %i.uv, splat (i32 8)
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16 ; 2 uses
  %wide.load15 = load <4 x i32>, ptr %i.uy, align 4, !tbaa !18
  %wide.load16 = load <4 x i32>, ptr %i.uz, align 4, !tbaa !18
  %i.va = add nsw <4 x i32> %i.uw, %wide.load15
  %i.vb = add nsw <4 x i32> %i.ux, %wide.load16
  store <4 x i32> %i.va, ptr %i.uy, align 4, !tbaa !18
  store <4 x i32> %i.vb, ptr %i.uz, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vc = icmp eq i64 %index.next, %n.vec
  br i1 %i.vc, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge591, label %.lr.ph590.preheader89

.lr.ph590.preheader89:                            ; preds = %.lr.ph590.preheader, %middle.block
  %indvars.iv658.ph = phi i64 [ 0, %.lr.ph590.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.preheader89, %.lr.ph590
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %.lr.ph590 ], [ %indvars.iv658.ph, %.lr.ph590.preheader89 ] ; 3 uses
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv658
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !41
  %i.vf = sext i16 %i.ve to i32
  %i.vg = mul nsw i32 %.4.i506, %i.vf
  %i.vh = ashr i32 %i.vg, 8
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv658 ; 2 uses
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !18
  %i.vk = add nsw i32 %i.vh, %i.vj
  store i32 %i.vk, ptr %i.vi, align 4, !tbaa !18
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %exitcond663.not.a = icmp eq i64 %indvars.iv.next659, %wide.trip.count662
  br i1 %exitcond663.not.a, label %._crit_edge591, label %.lr.ph590, !llvm.loop !293

.thread537:                                       ; preds = %bb.ac, %.lr.ph561, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread532

._crit_edge591:                                   ; preds = %.lr.ph590, %middle.block, %.loopexit547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread522

.thread522:                                       ; preds = %bb.z, %bb.y, %bb.t, %bb.v, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit, %._crit_edge591
  %.9526 = phi i32 [ %.3392.lcssa, %._crit_edge591 ], [ %i.eh, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit ], [ %i.eh, %bb.t ], [ %i.eh, %bb.v ], [ %i.eh, %bb.y ], [ %i.eh, %bb.z ]
  %i.vl = add nuw nsw i32 %.0394592, 1            ; 2 uses
  %exitcond664.not = icmp eq i32 %i.vl, %i.de
  br i1 %exitcond664.not, label %.preheader, label %bb.o, !llvm.loop !294

.lr.ph598:                                        ; preds = %.lr.ph598, %.lr.ph598.preheader.new
  %indvars.iv665 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %indvars.iv.next666.1, %.lr.ph598 ] ; 4 uses
  %niter109 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %niter109.next.1, %.lr.ph598 ]
  %.idx715 = shl nuw nsw i64 %indvars.iv665, 3
  %i.vm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715
  %i.vn = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665 ; 2 uses
  %i.vo = load <2 x i32>, ptr %i.vm, align 4, !tbaa !18
  %i.vp = lshr <2 x i32> %i.vo, splat (i32 8)
  %i.vq = load <2 x i16>, ptr %i.vn, align 2, !tbaa !41
  %i.vr = trunc <2 x i32> %i.vp to <2 x i16>
  %i.vs = add <2 x i16> %i.vq, %i.vr
  store <2 x i16> %i.vs, ptr %i.vn, align 2, !tbaa !41
  %indvars.iv.next666 = or disjoint i64 %indvars.iv665, 1 ; 2 uses
  %.idx715.1 = shl nuw nsw i64 %indvars.iv.next666, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.1
  %i.vu = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv.next666 ; 2 uses
  %i.vv = load <2 x i32>, ptr %i.vt, align 4, !tbaa !18
  %i.vw = lshr <2 x i32> %i.vv, splat (i32 8)
  %i.vx = load <2 x i16>, ptr %i.vu, align 2, !tbaa !41
  %i.vy = trunc <2 x i32> %i.vw to <2 x i16>
  %i.vz = add <2 x i16> %i.vx, %i.vy
  store <2 x i16> %i.vz, ptr %i.vu, align 2, !tbaa !41
  %indvars.iv.next666.1 = add nuw nsw i64 %indvars.iv665, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %._crit_edge599.loopexit.unr-lcssa, label %.lr.ph598, !llvm.loop !295

._crit_edge599.loopexit.unr-lcssa:                ; preds = %.lr.ph598
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge599, label %.lr.ph598.epil.preheader

.lr.ph598.epil.preheader:                         ; preds = %._crit_edge599.loopexit.unr-lcssa, %.lr.ph598.preheader
  %indvars.iv665.epil.init = phi i64 [ 0, %.lr.ph598.preheader ], [ %indvars.iv.next666.1, %._crit_edge599.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %.idx715.epil = shl nuw nsw i64 %indvars.iv665.epil.init, 3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.epil
  %i.wb = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665.epil.init ; 2 uses
  %i.wc = load <2 x i32>, ptr %i.wa, align 4, !tbaa !18
  %i.wd = lshr <2 x i32> %i.wc, splat (i32 8)
  %i.we = load <2 x i16>, ptr %i.wb, align 2, !tbaa !41
  %i.wf = trunc <2 x i32> %i.wd to <2 x i16>
  %i.wg = add <2 x i16> %i.we, %i.wf
  store <2 x i16> %i.wg, ptr %i.wb, align 2, !tbaa !41
  br label %._crit_edge599

._crit_edge599:                                   ; preds = %.lr.ph598.epil.preheader, %._crit_edge599.loopexit.unr-lcssa, %.preheader
  %.not459 = icmp eq ptr %7, null
  br i1 %.not459, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge599
  %i.wh = shl nsw i32 %i.bq, 1
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !18
  %i.wl = ashr i32 %i.wk, 8
  %i.wm = load i32, ptr %7, align 4, !tbaa !18
  %i.wn = add nsw i32 %i.wm, %i.wl
  store i32 %i.wn, ptr %7, align 4, !tbaa !18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge599
  %.not460 = icmp eq ptr %8, null
  br i1 %.not460, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wo = shl nsw i32 %i.bq, 1
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr [4 x i8], ptr %i.bu, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 20
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !18
  %i.wt = ashr i32 %i.ws, 8
  %i.wu = load i32, ptr %8, align 4, !tbaa !18
  %i.wv = add nsw i32 %i.wu, %i.wt
  store i32 %i.wv, ptr %8, align 4, !tbaa !18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.not461 = icmp eq ptr %9, null
  br i1 %.not461, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ww = shl nsw i32 %i.bq, 1
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr [4 x i8], ptr %i.bu, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 8
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !18
  %i.xb = ashr i32 %i.xa, 8
  %i.xc = load i32, ptr %9, align 4, !tbaa !18
  %i.xd = add nsw i32 %i.xc, %i.xb
  store i32 %i.xd, ptr %9, align 4, !tbaa !18
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not462 = icmp eq ptr %10, null
  br i1 %.not462, label %.thread532, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xe = shl nsw i32 %i.bq, 1
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr [4 x i8], ptr %i.bu, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 28
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !18
  %i.xj = ashr i32 %i.xi, 8
  %i.xk = load i32, ptr %10, align 4, !tbaa !18
  %i.xl = add nsw i32 %i.xk, %i.xj
  store i32 %i.xl, ptr %10, align 4, !tbaa !18
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
