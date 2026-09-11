Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_dynamic_gen2_file_write_all?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@shuffle_init:bb.a
  %i.ld = getelementptr inbounds [16 x i8], ptr %i.il, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !79
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.lh = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !21
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.li ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !9  ; 2 uses
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.ln
  store i64 %i.lf, ptr %i.lo, align 8, !tbaa !14
  %i.lp = add nsw i32 %i.lm, 1
  store i32 %i.lp, ptr %i.ll, align 4, !tbaa !9
  %i.lq = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.lr = sext i32 %i.lq to i64                   ; 3 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9  ; 3 uses
  %i.lu = load ptr, ptr %i.cj, align 8, !tbaa !64 ; 2 uses
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.lr ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !9
  %i.lx = icmp eq i32 %i.lt, %i.lw
  br i1 %i.lx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ly = shl nsw i32 %i.lt, 1
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !9
  %i.lz = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !19
  %i.md = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.ma
  %i.me = load i32, ptr %i.md, align 4, !tbaa !9
  %i.mf = sext i32 %i.me to i64
  %i.mg = shl nsw i64 %i.mf, 2
  %i.mh = tail call ptr @realloc(ptr noundef %i.mc, i64 noundef %i.mg) #16
  %i.mi = load ptr, ptr %i.cg, align 8, !tbaa !65
  %i.mj = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.mk = sext i32 %i.mj to i64                   ; 3 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mk
  store ptr %i.mh, ptr %i.ml, align 8, !tbaa !19
  %i.mm = load ptr, ptr %i.ci, align 8, !tbaa !66
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mk
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !21
  %i.mp = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.mk
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !9
  %i.ms = sext i32 %i.mr to i64
  %i.mt = shl nsw i64 %i.ms, 3
  %i.mu = tail call ptr @realloc(ptr noundef %i.mo, i64 noundef %i.mt) #16
  %i.mv = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.mw = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.mx = sext i32 %i.mw to i64                   ; 3 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.mx
  store ptr %i.mu, ptr %i.my, align 8, !tbaa !21
  %.pre714 = load ptr, ptr %i.cg, align 8, !tbaa !65
  %.pre716 = load ptr, ptr %3, align 8, !tbaa !63 ; 2 uses
  %.phi.trans.insert717 = getelementptr inbounds [4 x i8], ptr %.pre716, i64 %i.mx
  %.pre718 = load i32, ptr %.phi.trans.insert717, align 4, !tbaa !9
  %.pre720.pre.pre.a = load ptr, ptr %i.ch, align 8, !tbaa !59
  %.pre721.pre.pre = load ptr, ptr %i.cc, align 8, !tbaa !60
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre721.pre.a = phi ptr [ %.pre721.pre.pre, %bb.ag ], [ %i.im, %bb.af ]
  %.pre720.pre = phi ptr [ %.pre720.pre.pre.a, %bb.ag ], [ %i.il, %bb.af ]
  %i.mz = phi ptr [ %i.mv, %bb.ag ], [ %i.lg, %bb.af ]
  %i.na = phi i32 [ %.pre718, %bb.ag ], [ %i.lt, %bb.af ]
  %i.nb = phi ptr [ %.pre716, %bb.ag ], [ %i.kt, %bb.af ]
  %.pre-phi715 = phi i64 [ %i.mx, %bb.ag ], [ %i.lr, %bb.af ]
  %i.nc = phi ptr [ %.pre714, %bb.ag ], [ %i.kp, %bb.af ]
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %.pre-phi715
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !19
  %i.nf = sext i32 %i.na to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.nf
  store i32 0, ptr %i.ng, align 4, !tbaa !9
  %i.nh = load i32, ptr %i.ce, align 8, !tbaa !201
  %i.ni = sext i32 %i.nh to i64                   ; 3 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.ni
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !21
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.ni
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !9
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.nn
  store i64 0, ptr %i.no, align 8, !tbaa !14
  %.pre722.pre = load i32, ptr %i.cd, align 8, !tbaa !200
  br label %._crit_edge723

._crit_edge723:                                   ; preds = %._crit_edge759, %bb.ah
  %.pre-phi761 = phi i64 [ %.pre760, %._crit_edge759 ], [ %i.ni, %bb.ah ]
  %.pre722 = phi i32 [ %i.in, %._crit_edge759 ], [ %.pre722.pre, %bb.ah ] ; 2 uses
  %.pre721 = phi ptr [ %i.im, %._crit_edge759 ], [ %.pre721.pre.a, %bb.ah ]
  %.pre720 = phi ptr [ %i.il, %._crit_edge759 ], [ %.pre720.pre, %bb.ah ]
  %i.np = load ptr, ptr %i.ck, align 8, !tbaa !52
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %.pre-phi761
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !9
  %i.ns = icmp eq i32 %i.nr, %2
  %i.nt = sext i32 %.pre722 to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %.pre721, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !9
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [16 x i8], ptr %.pre720, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !80
  %i.oa = trunc i64 %i.nz to i32                  ; 2 uses
  %i.ob = select i1 %i.ns, i32 %i.oa, i32 0
  %i.oc = load i32, ptr %i.by, align 8, !tbaa !199
  %i.od = sub i32 %i.oc, %i.oa                    ; 2 uses
  store i32 %i.od, ptr %i.by, align 8, !tbaa !199
  %i.oe = add nsw i32 %.pre722, 1
  store i32 %i.oe, ptr %i.cd, align 8, !tbaa !200
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge723, %bb.w
  %.pr = phi i32 [ %i.gr, %bb.w ], [ %i.od, %._crit_edge723 ] ; 2 uses
  %.pn = phi i32 [ %i.gn, %bb.w ], [ %i.ob, %._crit_edge723 ]
  %.5 = add i32 %.0488606, %.pn                   ; 2 uses
  %.not551 = icmp eq i32 %.pr, 0
  br i1 %.not551, label %.loopexit583, label %bb.n, !llvm.loop !184

.loopexit583:                                     ; preds = %bb.ai, %.thread, %bb.m, %bb.ad, %bb.z
  %.6 = phi i32 [ %spec.select842.a, %bb.z ], [ %spec.select843, %bb.ad ], [ 0, %bb.m ], [ 0, %.thread ], [ %.5, %bb.ai ] ; 5 uses
  br i1 %i.e, label %.preheader581, label %.loopexit575

.preheader581:                                    ; preds = %.loopexit583
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !51 ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.preheader580.lr.ph, label %.loopexit575

.preheader580.lr.ph:                              ; preds = %.preheader581
  %i.oi = load ptr, ptr %3, align 8, !tbaa !63
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.trip.count667 = zext nneg i32 %i.og to i64
  br label %.preheader580

.preheader580:                                    ; preds = %.preheader580.lr.ph, %._crit_edge
  %indvars.iv664 = phi i64 [ 0, %.preheader580.lr.ph ], [ %indvars.iv.next665, %._crit_edge ] ; 3 uses
  %.0512613 = phi i32 [ 0, %.preheader580.lr.ph ], [ %.1513.lcssa, %._crit_edge ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv664
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !9  ; 3 uses
  %i.om = icmp sgt i32 %i.ol, 0
  br i1 %i.om, label %.lr.ph610, label %._crit_edge

.lr.ph610:                                        ; preds = %.preheader580
  %i.on = load ptr, ptr %i.oj, align 8, !tbaa !65
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv664
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !19 ; 2 uses
  %wide.trip.count662 = zext nneg i32 %i.ol to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ol, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph610
  %n.vec = and i64 %wide.trip.count662, 2147483640 ; 3 uses
  %i.oq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0512613, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.oq, %vector.ph ], [ %i.ox, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oy, %vector.body ]
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %wide.load = load <4 x i32>, ptr %i.or, align 4, !tbaa !9
  %wide.load19 = load <4 x i32>, ptr %i.os, align 4, !tbaa !9
  %i.ot = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.ou = icmp sgt <4 x i32> %wide.load19, zeroinitializer
  %i.ov = zext <4 x i1> %i.ot to <4 x i32>
  %i.ow = zext <4 x i1> %i.ou to <4 x i32>
  %i.ox = add <4 x i32> %vec.phi, %i.ov           ; 2 uses
  %i.oy = add <4 x i32> %vec.phi18, %i.ow         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oz = icmp eq i64 %index.next, %n.vec
  br i1 %i.oz, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.oy, %i.ox
  %i.pa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count662
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph610, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %.lr.ph610 ], [ %n.vec, %middle.block ]
  %.1513609.ph = phi i32 [ %.0512613, %.lr.ph610 ], [ %i.pa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %scalar.ph ], [ %indvars.iv659.ph, %scalar.ph.preheader ] ; 2 uses
  %.1513609 = phi i32 [ %spec.select, %scalar.ph ], [ %.1513609.ph, %scalar.ph.preheader ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv659
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !9
  %i.pd = icmp sgt i32 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %spec.select = add nsw i32 %.1513609, %i.pe     ; 2 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge, label %scalar.ph, !llvm.loop !186

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader580
  %.1513.lcssa = phi i32 [ %.0512613, %.preheader580 ], [ %i.pa, %middle.block ], [ %spec.select, %scalar.ph ] ; 15 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668.not, label %._crit_edge614, label %.preheader580, !llvm.loop !187

._crit_edge614:                                   ; preds = %._crit_edge
  %i.pf = icmp sgt i32 %.1513.lcssa, 0
  br i1 %i.pf, label %bb.aj, label %.loopexit575

bb.aj:                                            ; preds = %._crit_edge614
  %i.pg = zext nneg i32 %.1513.lcssa to i64       ; 5 uses
  %i.ph = mul nuw nsw i64 %i.pg, 24
  %i.pi = tail call noalias ptr @malloc(i64 noundef %i.ph) #14 ; 19 uses
  %i.pj = icmp eq ptr %i.pi, null
  br i1 %i.pj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.pk = shl nuw nsw i64 %i.pg, 2                ; 2 uses
  %i.pl = tail call noalias ptr @malloc(i64 noundef %i.pk) #14 ; 11 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.am, label %.preheader578.lr.ph

.preheader578.lr.ph:                              ; preds = %bb.al
  %i.pn = load ptr, ptr %3, align 8, !tbaa !63
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.trip.count677 = zext nneg i32 %i.og to i64
  br label %.preheader578

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.loopexit

.preheader578:                                    ; preds = %.preheader578.lr.ph, %._crit_edge620
  %indvars.iv674 = phi i64 [ 0, %.preheader578.lr.ph ], [ %indvars.iv.next675, %._crit_edge620 ] ; 5 uses
  %.0505623 = phi i32 [ 0, %.preheader578.lr.ph ], [ %.1506.lcssa, %._crit_edge620 ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv674
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9  ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader578
  %i.pt = load ptr, ptr %i.po, align 8, !tbaa !65
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv674
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !19
  %wide.trip.count672 = zext nneg i32 %i.pr to i64
  %i.pw = trunc nuw nsw i64 %indvars.iv674 to i32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph619, %bb.ap
  %indvars.iv669 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next670, %bb.ap ] ; 3 uses
  %.1506618 = phi i32 [ %.0505623, %.lr.ph619 ], [ %.2507, %bb.ap ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv669
  %i.py = load i32, ptr %i.px, align 4, !tbaa !9  ; 2 uses
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.qa = zext nneg i32 %i.py to i64
  %i.qb = sext i32 %.1506618 to i64
  %i.qc = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.qb ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.qa, ptr %i.qd, align 8, !tbaa !204
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i32 %i.pw, ptr %i.qe, align 8, !tbaa !205
  %i.qf = load ptr, ptr %i.pp, align 8, !tbaa !66
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv674
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !21
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv669
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !14
  store i64 %i.qj, ptr %i.qc, align 8, !tbaa !206
  %i.qk = add nsw i32 %.1506618, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.2507 = phi i32 [ %i.qk, %bb.ao ], [ %.1506618, %bb.an ] ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge620, label %bb.an, !llvm.loop !188

._crit_edge620:                                   ; preds = %bb.ap, %.preheader578
  %.1506.lcssa = phi i32 [ %.0505623, %.preheader578 ], [ %.2507, %bb.ap ]
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %._crit_edge624, label %.preheader578, !llvm.loop !189

._crit_edge624:                                   ; preds = %._crit_edge620
  %i.ql = add nsw i32 %.1513.lcssa, -1            ; 2 uses
  %i.qm = tail call noalias ptr @malloc(i64 noundef %i.pk) #14 ; 21 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge624
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %local_heap_sort.exit

bb.ar:                                            ; preds = %._crit_edge624
  store i32 0, ptr %i.qm, align 4, !tbaa !9
  %.not571 = icmp eq i32 %.1513.lcssa, 1
  br i1 %.not571, label %._crit_edge139.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ar
  %i.qo = add nsw i64 %i.pg, -1                   ; 2 uses
  %min.iters.check21 = icmp ult i32 %.1513.lcssa, 9
  br i1 %min.iters.check21, label %.lr.ph.i.preheader39, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.i.preheader
  %n.vec23 = and i64 %i.qo, -8                    ; 3 uses
  %i.qp = or disjoint i64 %n.vec23, 1
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next26, %vector.body24 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph22 ], [ %vec.ind.next, %vector.body24 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index25 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  store <4 x i32> %vec.ind, ptr %i.qr, align 4, !tbaa !9
  store <4 x i32> %step.add, ptr %i.qs, align 4, !tbaa !9
  %index.next26 = add nuw i64 %index25, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.qt = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.qt, label %middle.block27, label %vector.body24, !llvm.loop !190

middle.block27:                                   ; preds = %vector.body24
  %cmp.n28 = icmp eq i64 %i.qo, %n.vec23
  br i1 %cmp.n28, label %._crit_edge.i, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block27
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.qp, %middle.block27 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader39 ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv.i
  %i.qv = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.qv, ptr %i.qu, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.pg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block27
  %i.qw = lshr i32 %.1513.lcssa, 1
  br label %.preheader130.i

.loopexit.i:                                      ; preds = %bb.ax
  %i.qx = icmp sgt i32 %.1113134.in.i, 1
  br i1 %i.qx, label %.preheader130.i, label %.preheader.i, !llvm.loop !192

.preheader130.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %.1113134.in.i = phi i32 [ %.1113134.i, %.loopexit.i ], [ %i.qw, %._crit_edge.i ] ; 2 uses
  %.1113134.i = add nsw i32 %.1113134.in.i, -1    ; 2 uses
  br label %bb.as

.preheader.i:                                     ; preds = %.loopexit.i
  %i.qy = zext nneg i32 %i.ql to i64
  br label %.lr.ph138.i

bb.as:                                            ; preds = %bb.ay, %.preheader130.i
  %.0108132.i = phi i32 [ %.1113134.i, %.preheader130.i ], [ %.1105.i, %bb.ay ] ; 5 uses
  %i.qz = shl nuw nsw i32 %.0108132.i, 1          ; 3 uses
  %i.ra = add nuw nsw i32 %i.qz, 2                ; 3 uses
  %.not126.not.i = icmp slt i32 %i.qz, %i.ql
  br i1 %.not126.not.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.rb = or disjoint i32 %i.qz, 1                ; 2 uses
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !9
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !206
  %i.ri = zext nneg i32 %.0108132.i to i64
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !9
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !206
  %i.ro = icmp sgt i64 %i.rh, %i.rn
  br i1 %i.ro, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0104.i = phi i32 [ %.0108132.i, %bb.au ], [ %i.rb, %bb.at ] ; 3 uses
  %.not127.not.i = icmp samesign ult i32 %i.ra, %.1513.lcssa
  br i1 %.not127.not.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.rp = zext nneg i32 %i.ra to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !9
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rs
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !206
  %i.rv = zext nneg i32 %.0104.i to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !9
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.ry
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !206
  %i.sb = icmp sgt i64 %i.ru, %i.sa
  %spec.select.i = select i1 %i.sb, i32 %i.ra, i32 %.0104.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1105.i = phi i32 [ %.0104.i, %bb.av ], [ %spec.select.i, %bb.aw ] ; 3 uses
  %.not128.not.i = icmp eq i32 %.1105.i, %.0108132.i
  br i1 %.not128.not.i, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sc = zext nneg i32 %.1105.i to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.sc ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !9
  %i.sf = zext nneg i32 %.0108132.i to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.sf ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !9
  store i32 %i.sh, ptr %i.sd, align 4, !tbaa !9
  store i32 %i.se, ptr %i.sg, align 4, !tbaa !9
  br label %bb.as

.lr.ph138.i:                                      ; preds = %bb.bg, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.qy, %.preheader.i ], [ %indvars.iv.next143.i, %bb.bg ] ; 5 uses
  %indvars144.i = trunc i64 %indvars.iv142.i to i32
  %i.si = load i32, ptr %i.qm, align 4, !tbaa !9
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv142.i ; 3 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !9
  store i32 %i.sk, ptr %i.qm, align 4, !tbaa !9
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !9
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next143.i to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %.lr.ph138.i
  %.2110135.i = phi i32 [ 0, %.lr.ph138.i ], [ %.3107.i, %bb.bf ] ; 5 uses
  %i.sl = shl nsw i32 %.2110135.i, 1              ; 3 uses
  %i.sm = add nsw i32 %i.sl, 2                    ; 3 uses
  %.not122.not.i = icmp slt i32 %i.sl, %indvars.i
  br i1 %.not122.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.sn = or disjoint i32 %i.sl, 1                ; 2 uses
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !9
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.sr
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !206
  %i.su = sext i32 %.2110135.i to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.sx
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !206
  %i.ta = icmp sgt i64 %i.st, %i.sz
  br i1 %i.ta, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2106.i = phi i32 [ %.2110135.i, %bb.bb ], [ %i.sn, %bb.ba ] ; 3 uses
  %.not123.not.i = icmp slt i32 %i.sm, %indvars144.i
  br i1 %.not123.not.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.tb = sext i32 %i.sm to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !9
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.te
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !206
  %i.th = sext i32 %.2106.i to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.th
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !9
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !206
  %i.tn = icmp sgt i64 %i.tg, %i.tm
  %spec.select129.i = select i1 %i.tn, i32 %i.sm, i32 %.2106.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3107.i = phi i32 [ %.2106.i, %bb.bc ], [ %spec.select129.i, %bb.bd ] ; 3 uses
  %.not124.not.i = icmp eq i32 %.3107.i, %.2110135.i
  br i1 %.not124.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.to = sext i32 %.3107.i to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.to ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !9
  %i.tr = sext i32 %.2110135.i to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.tr ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !9
  store i32 %i.tt, ptr %i.tp, align 4, !tbaa !9
  store i32 %i.tq, ptr %i.ts, align 4, !tbaa !9
  br label %bb.az

bb.bg:                                            ; preds = %bb.be
  %i.tu = load i32, ptr %i.sj, align 4, !tbaa !9
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv142.i
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !9
  %i.tw = icmp sgt i64 %indvars.iv142.i, 1
  br i1 %i.tw, label %.lr.ph138.i, label %._crit_edge139.i.loopexit, !llvm.loop !193

._crit_edge139.i.loopexit:                        ; preds = %bb.bg
  %.pre735.a = load i32, ptr %i.qm, align 4, !tbaa !9
  br label %._crit_edge139.i

._crit_edge139.i:                                 ; preds = %._crit_edge139.i.loopexit, %bb.ar
  %i.tx = phi i32 [ %.pre735.a, %._crit_edge139.i.loopexit ], [ 0, %bb.ar ] ; 2 uses
  store i32 %i.tx, ptr %i.pl, align 4, !tbaa !9
  tail call void @free(ptr noundef nonnull %i.qm) #13
  %i.ty = sext i32 %i.tx to i64
  br label %local_heap_sort.exit

local_heap_sort.exit:                             ; preds = %bb.aq, %._crit_edge139.i
  %i.tz = phi i64 [ 0, %bb.aq ], [ %i.ty, %._crit_edge139.i ]
  %i.ua = shl nuw nsw i64 %i.pg, 3
  %i.ub = tail call noalias ptr @malloc(i64 noundef %i.ua) #14 ; 12 uses
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.tz
  store i64 0, ptr %i.uc, align 8, !tbaa !14
  %.not643 = icmp eq i32 %.1513.lcssa, 1
  br i1 %.not643, label %._crit_edge627, label %.lr.ph626.preheader

.lr.ph626.preheader:                              ; preds = %local_heap_sort.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %.1513.lcssa, i32 2)
  %wide.trip.count683 = zext nneg i32 %smax to i64
  %i.ud = add nsw i64 %wide.trip.count683, -1     ; 3 uses
  %xtraiter = and i64 %i.ud, 1
  %5 = icmp slt i32 %.1513.lcssa, 3
  br i1 %5, label %.lr.ph626.epil.preheader, label %.lr.ph626.preheader.new

.lr.ph626.preheader.new:                          ; preds = %.lr.ph626.preheader
  %unroll_iter = and i64 %i.ud, -2
  br label %.lr.ph626

.lr.ph626:                                        ; preds = %.lr.ph626, %.lr.ph626.preheader.new
  %indvars.iv680 = phi i64 [ 1, %.lr.ph626.preheader.new ], [ %indvars.iv.next681.1, %.lr.ph626 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph626.preheader.new ], [ %niter.next.1, %.lr.ph626 ]
  %i.ue = getelementptr [4 x i8], ptr %i.pl, i64 %indvars.iv680 ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 -4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !9
  %i.uh = sext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !14
  %i.uk = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.uh
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !204
  %i.un = add nsw i64 %i.um, %i.uj
  %i.uo = load i32, ptr %i.ue, align 4, !tbaa !9  ; 2 uses
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.up
  store i64 %i.un, ptr %i.uq, align 8, !tbaa !14
  %i.ur = getelementptr [4 x i8], ptr %i.pl, i64 %indvars.iv680
  %i.us = getelementptr i8, ptr %i.ur, i64 4
  %i.ut = sext i32 %i.uo to i64                   ; 2 uses
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.ut
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !14
  %i.uw = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.ut
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !204
  %i.uz = add nsw i64 %i.uy, %i.uv
  %i.va = load i32, ptr %i.us, align 4, !tbaa !9
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.vb
  store i64 %i.uz, ptr %i.vc, align 8, !tbaa !14
  %indvars.iv.next681.1 = add nuw nsw i64 %indvars.iv680, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge627.loopexit.unr-lcssa, label %.lr.ph626, !llvm.loop !194

._crit_edge627.loopexit.unr-lcssa:                ; preds = %.lr.ph626
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge627, label %.lr.ph626.epil.preheader

.lr.ph626.epil.preheader:                         ; preds = %._crit_edge627.loopexit.unr-lcssa, %.lr.ph626.preheader
  %indvars.iv680.epil.init = phi i64 [ 1, %.lr.ph626.preheader ], [ %indvars.iv.next681.1, %._crit_edge627.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %i.ud to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.vd = getelementptr [4 x i8], ptr %i.pl, i64 %indvars.iv680.epil.init ; 2 uses
  %i.ve = getelementptr i8, ptr %i.vd, i64 -4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !9
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.vg
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !14
  %i.vj = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.vg
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !204
  %i.vm = add nsw i64 %i.vl, %i.vi
  %i.vn = load i32, ptr %i.vd, align 4, !tbaa !9
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.vo
  store i64 %i.vm, ptr %i.vp, align 8, !tbaa !14
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %.lr.ph626.epil.preheader, %._crit_edge627.loopexit.unr-lcssa, %local_heap_sort.exit
  %i.vq = load i32, ptr %i.of, align 8, !tbaa !51
  %i.vr = sext i32 %i.vq to i64
  %i.vs = shl nsw i64 %i.vr, 2
  %i.vt = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.vs) #15 ; 3 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.bh, label %.lr.ph629

.lr.ph629:                                        ; preds = %._crit_edge627
  %i.vv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.trip.count689 = zext nneg i32 %.1513.lcssa to i64
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge627
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.loopexit

bb.bi:                                            ; preds = %.lr.ph629, %bb.bl
  %indvars.iv685 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next686, %bb.bl ] ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv685
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !9
  %i.vy = sext i32 %i.vx to i64                   ; 2 uses
  %i.vz = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !205 ; 3 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.vy
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !14
  %i.we = load ptr, ptr %i.vv, align 8, !tbaa !66
  %i.wf = sext i32 %i.wb to i64                   ; 3 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.we, i64 %i.wf
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !21
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.wf ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !9  ; 4 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.wh, i64 %i.wk
  store i64 %i.wd, ptr %i.wl, align 8, !tbaa !14
  %i.wm = load ptr, ptr %3, align 8, !tbaa !63
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.wf
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !9  ; 2 uses
  %i.wp = icmp slt i32 %i.wj, %i.wo
  br i1 %i.wp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.wq = add nsw i32 %i.wj, 1
  store i32 %i.wq, ptr %i.wi, align 4, !tbaa !9
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.wr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.wb, i32 noundef %i.wj, i32 noundef %i.wb, i32 noundef %i.wo) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count689
  br i1 %exitcond690.not, label %._crit_edge630, label %bb.bi, !llvm.loop !195

._crit_edge630:                                   ; preds = %bb.bl
  %.pre736.a = load i32, ptr %i.of, align 8, !tbaa !51
  tail call void @free(ptr noundef nonnull %i.vt) #13
  %i.ws = icmp sgt i32 %.pre736.a, 0
  br i1 %i.ws, label %.lr.ph633, label %.loopexit575

.lr.ph633:                                        ; preds = %._crit_edge630
  %i.wt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.wu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.wv = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.wy = add nsw i32 %0, 123
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 80
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph633, %bb.bp
  %indvars.iv691 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next692, %bb.bp ] ; 9 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv691 ; 2 uses
  store ptr @ompi_request_null, ptr %i.xa, align 8, !tbaa !70
  %i.xb = load ptr, ptr %3, align 8, !tbaa !63
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %indvars.iv691
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !9  ; 2 uses
  %i.xe = icmp sgt i32 %i.xd, 0
  br i1 %i.xe, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.xf = load ptr, ptr %i.wt, align 8, !tbaa !65
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv691
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !19
  %i.xi = load ptr, ptr %i.wu, align 8, !tbaa !66
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %indvars.iv691
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !21
  %i.xl = load ptr, ptr %i.wv, align 8, !tbaa !68
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %indvars.iv691
  %i.xn = tail call i32 @ompi_datatype_create_hindexed(i32 noundef %i.xd, ptr noundef %i.xh, ptr noundef %i.xk, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.xm) #13 ; 0 uses
  %i.xo = load ptr, ptr %i.wv, align 8, !tbaa !68
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %indvars.iv691
  %.val563 = load ptr, ptr %i.xp, align 8, !tbaa !69
  %i.xq = tail call i32 @opal_datatype_commit(ptr noundef %.val563) #13 ; 0 uses
  %i.xr = load ptr, ptr %i.wv, align 8, !tbaa !68
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %indvars.iv691
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !69 ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 24
  %.val564 = load i64, ptr %i.xu, align 8, !tbaa !211
  %.not559 = icmp eq i64 %.val564, 0
  br i1 %.not559, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !213
  %i.xw = load ptr, ptr %i.ww, align 8, !tbaa !67
  %i.xx = load ptr, ptr %i.wx, align 8, !tbaa !52
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv691
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !9
  %i.ya = load ptr, ptr %i.wz, align 8, !tbaa !214
  %i.yb = tail call i32 %i.xv(ptr noundef %i.xw, i64 noundef 1, ptr noundef nonnull %i.xt, i32 noundef %i.xz, i32 noundef %i.wy, ptr noundef %i.ya, ptr noundef nonnull %i.xa) #13
  %.not560 = icmp eq i32 %i.yb, 0
  br i1 %.not560, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %bb.bm, %bb.bo, %bb.bn
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %i.yc = load i32, ptr %i.of, align 8, !tbaa !51
  %i.yd = sext i32 %i.yc to i64
  %i.ye = icmp slt i64 %indvars.iv.next692, %i.yd
  br i1 %i.ye, label %bb.bm, label %.loopexit575, !llvm.loop !196

.loopexit575:                                     ; preds = %bb.bp, %.preheader581, %._crit_edge630, %._crit_edge614, %.loopexit583
  %.3515 = phi i32 [ 0, %.loopexit583 ], [ %.1513.lcssa, %._crit_edge614 ], [ %.1513.lcssa, %._crit_edge630 ], [ 0, %.preheader581 ], [ %.1513.lcssa, %bb.bp ] ; 3 uses
  %.0510 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.pi, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.pi, %bb.bp ] ; 8 uses
  %.0508 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.pl, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.pl, %bb.bp ] ; 7 uses
  %.0503 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.ub, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.ub, %bb.bp ] ; 7 uses
  %.not554 = icmp eq i32 %.6, 0
  br i1 %.not554, label %bb.cb, label %bb.bq

bb.bq:                                            ; preds = %.loopexit575
  %i.yf = sext i32 %.6 to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr @ompi_mpi_datatype_null, ptr %i.a, align 8, !tbaa !69
  %i.yg = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 10, i64 noundef 4) #15 ; 6 uses
  %i.yh = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 10, i64 noundef 8) #15 ; 4 uses
  %i.yi = icmp eq ptr %i.yg, null
  %i.yj = icmp eq ptr %i.yh, null
  %or.cond = or i1 %i.yi, %i.yj
  br i1 %or.cond, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.yk = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 8 uses
  %i.yn = load ptr, ptr %i.yk, align 8, !tbaa !57 ; 3 uses
  %i.yo = load i32, ptr %i.yl, align 8, !tbaa !215 ; 3 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [16 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !79
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = load i32, ptr %i.ym, align 4, !tbaa !216 ; 3 uses
  %i.yu = sext i32 %i.yt to i64
  %i.yv = add nsw i64 %i.yu, %i.ys                ; 2 uses
  %i.yw = sext i32 %i.yo to i64
  %i.yx = getelementptr inbounds [16 x i8], ptr %i.yn, i64 %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !80 ; 2 uses
  %i.za = sext i32 %i.yt to i64                   ; 2 uses
  %i.zb = sub i64 %i.yz, %i.za                    ; 2 uses
  %.not558.peel = icmp ugt i64 %i.zb, %i.yf
  br i1 %.not558.peel, label %.thread804, label %bb.bs

.thread804:                                       ; preds = %bb.br
  store i32 %.6, ptr %i.yg, align 4, !tbaa !9
  %i.zc = add i32 %i.yt, %.6
  store i32 %i.zc, ptr %i.ym, align 4, !tbaa !216
  br label %.thread812

bb.bs:                                            ; preds = %bb.br
  %i.zd = trunc i64 %i.zb to i32
  store i32 %i.zd, ptr %i.yg, align 4, !tbaa !9
  %.neg.peel = sub i64 %i.yf, %i.yz
  %i.ze = add i64 %.neg.peel, %i.za               ; 2 uses
  %i.zf = add nsw i32 %i.yo, 1
  store i32 %i.zf, ptr %i.yl, align 8, !tbaa !215
  store i32 0, ptr %i.ym, align 4, !tbaa !216
  %.not555.peel = icmp eq i64 %i.ze, 0
  br i1 %.not555.peel, label %.thread812, label %.peel.next

bb.bt:                                            ; preds = %bb.bq
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.thread566

.peel.next:                                       ; preds = %bb.bs, %bb.bw
  %i.zg = phi ptr [ %i.zq, %bb.bw ], [ %i.yn, %bb.bs ]
  %indvars.iv694 = phi i64 [ %indvars.iv.next695, %bb.bw ], [ 0, %bb.bs ] ; 2 uses
  %.0481638 = phi i32 [ %.1482, %bb.bw ], [ 10, %bb.bs ] ; 2 uses
  %.0484636 = phi i64 [ %i.aan, %bb.bw ], [ %i.ze, %bb.bs ] ; 3 uses
  %.0491635 = phi ptr [ %.1492, %bb.bw ], [ %i.yh, %bb.bs ] ; 2 uses
  %.0497634 = phi ptr [ %.1498, %bb.bw ], [ %i.yg, %bb.bs ] ; 2 uses
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 4 uses
  %i.zh = trunc nuw nsw i64 %indvars.iv.next695 to i32
  %.urem = urem i32 %i.zh, 10
  %i.zi = icmp eq i32 %.urem, 0
  br i1 %i.zi, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.peel.next
  %i.zj = add nsw i32 %.0481638, 10               ; 2 uses
  %i.zk = sext i32 %i.zj to i64                   ; 2 uses
  %i.zl = shl nsw i64 %i.zk, 2
  %i.zm = tail call ptr @realloc(ptr noundef nonnull %.0497634, i64 noundef %i.zl) #16
  %i.zn = shl nsw i64 %i.zk, 3
  %i.zo = tail call ptr @realloc(ptr noundef nonnull %.0491635, i64 noundef %i.zn) #16
  %.pre737.a = load ptr, ptr %i.yk, align 8, !tbaa !57
  %.pre738 = load i32, ptr %i.ym, align 4, !tbaa !216
  %i.zp = sext i32 %.pre738 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %.peel.next, %bb.bu
  %i.zq = phi ptr [ %.pre737.a, %bb.bu ], [ %i.zg, %.peel.next ] ; 3 uses
  %i.zr = phi i64 [ %i.zp, %bb.bu ], [ 0, %.peel.next ] ; 2 uses
  %.1498 = phi ptr [ %i.zm, %bb.bu ], [ %.0497634, %.peel.next ] ; 3 uses
  %.1492 = phi ptr [ %i.zo, %bb.bu ], [ %.0491635, %.peel.next ] ; 3 uses
  %.1482 = phi i32 [ %i.zj, %bb.bu ], [ %.0481638, %.peel.next ]
  %i.zs = load i32, ptr %i.yl, align 8, !tbaa !215
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [16 x i8], ptr %i.zq, i64 %i.zt ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !79
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = sub i64 %i.zw, %i.yv
  %i.zy = add i64 %i.zx, %i.zr
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %.1492, i64 %indvars.iv.next695
  store i64 %i.zy, ptr %i.zz, align 8, !tbaa !14
  %.phi.trans.insert740 = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %.pre741 = load i64, ptr %.phi.trans.insert740, align 8, !tbaa !80
  %i.aaa = sub i64 %.pre741, %i.zr                ; 2 uses
  %.not558 = icmp ult i64 %.0484636, %i.aaa
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.1498, i64 %indvars.iv.next695 ; 2 uses
  br i1 %.not558, label %.thread808, label %bb.bw

.thread808:                                       ; preds = %bb.bv
  %i.aac = trunc i64 %.0484636 to i32             ; 2 uses
  store i32 %i.aac, ptr %i.aab, align 4, !tbaa !9
  %i.aad = load i32, ptr %i.ym, align 4, !tbaa !216
  %i.aae = add i32 %i.aad, %i.aac
  store i32 %i.aae, ptr %i.ym, align 4, !tbaa !216
  br label %.loopexit821

bb.bw:                                            ; preds = %bb.bv
  %i.aaf = trunc i64 %i.aaa to i32
  store i32 %i.aaf, ptr %i.aab, align 4, !tbaa !9
  %i.aag = load i32, ptr %i.yl, align 8, !tbaa !215 ; 2 uses
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [16 x i8], ptr %i.zq, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !80
  %i.aal = load i32, ptr %i.ym, align 4, !tbaa !216
  %i.aam = sext i32 %i.aal to i64
  %.neg = sub i64 %.0484636, %i.aak
  %i.aan = add i64 %.neg, %i.aam                  ; 2 uses
  %i.aao = add nsw i32 %i.aag, 1
  store i32 %i.aao, ptr %i.yl, align 8, !tbaa !215
  store i32 0, ptr %i.ym, align 4, !tbaa !216
end_hunk_0
