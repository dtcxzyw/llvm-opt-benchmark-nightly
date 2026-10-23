Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_vulcan_file_write_all?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@shuffle_init:bb.a
  %i.le = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !57
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %i.li = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.lj ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9  ; 2 uses
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.lo
  store i64 %i.lg, ptr %i.lp, align 8, !tbaa !16
  %i.lq = add nsw i32 %i.ln, 1
  store i32 %i.lq, ptr %i.lm, align 4, !tbaa !9
  %i.lr = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.ls = sext i32 %i.lr to i64                   ; 3 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !9  ; 3 uses
  %i.lv = load ptr, ptr %i.ck, align 8, !tbaa !69 ; 2 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.ls ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !9
  %i.ly = icmp eq i32 %i.lu, %i.lx
  br i1 %i.ly, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lz = shl nsw i32 %i.lu, 1
  store i32 %i.lz, ptr %i.lw, align 4, !tbaa !9
  %i.ma = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !21
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.mb
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !9
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 2
  %i.mi = tail call ptr @realloc(ptr noundef %i.md, i64 noundef %i.mh) #15
  %i.mj = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.mk = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.ml = sext i32 %i.mk to i64                   ; 3 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.ml
  store ptr %i.mi, ptr %i.mm, align 8, !tbaa !21
  %i.mn = load ptr, ptr %i.cj, align 8, !tbaa !71
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.ml
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !23
  %i.mq = load ptr, ptr %i.ck, align 8, !tbaa !69
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.ml
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !9
  %i.mt = sext i32 %i.ms to i64
  %i.mu = shl nsw i64 %i.mt, 3
  %i.mv = tail call ptr @realloc(ptr noundef %i.mp, i64 noundef %i.mu) #15
  %i.mw = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %i.mx = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.my = sext i32 %i.mx to i64                   ; 3 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.my
  store ptr %i.mv, ptr %i.mz, align 8, !tbaa !23
  %.pre716 = load ptr, ptr %i.ch, align 8, !tbaa !70
  %.pre718 = load ptr, ptr %3, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert719 = getelementptr inbounds [4 x i8], ptr %.pre718, i64 %i.my
  %.pre720 = load i32, ptr %.phi.trans.insert719, align 4, !tbaa !9
  %.pre722.pre.pre.a = load ptr, ptr %i.ci, align 8, !tbaa !65
  %.pre723.pre.pre = load ptr, ptr %i.cd, align 8, !tbaa !66
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre723.pre.a = phi ptr [ %.pre723.pre.pre, %bb.ag ], [ %i.in, %bb.af ]
  %.pre722.pre = phi ptr [ %.pre722.pre.pre.a, %bb.ag ], [ %i.im, %bb.af ]
  %i.na = phi ptr [ %i.mw, %bb.ag ], [ %i.lh, %bb.af ]
  %i.nb = phi i32 [ %.pre720, %bb.ag ], [ %i.lu, %bb.af ]
  %i.nc = phi ptr [ %.pre718, %bb.ag ], [ %i.ku, %bb.af ]
  %.pre-phi717 = phi i64 [ %i.my, %bb.ag ], [ %i.ls, %bb.af ]
  %i.nd = phi ptr [ %.pre716, %bb.ag ], [ %i.kq, %bb.af ]
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %.pre-phi717
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !21
  %i.ng = sext i32 %i.nb to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.ng
  store i32 0, ptr %i.nh, align 4, !tbaa !9
  %i.ni = load i32, ptr %i.cf, align 8, !tbaa !211
  %i.nj = sext i32 %i.ni to i64                   ; 3 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !23
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.nj
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.no
  store i64 0, ptr %i.np, align 8, !tbaa !16
  %.pre724.pre = load i32, ptr %i.ce, align 8, !tbaa !210
  br label %._crit_edge725

._crit_edge725:                                   ; preds = %._crit_edge765, %bb.ah
  %.pre-phi767 = phi i64 [ %.pre766, %._crit_edge765 ], [ %i.nj, %bb.ah ]
  %.pre724 = phi i32 [ %i.io, %._crit_edge765 ], [ %.pre724.pre, %bb.ah ] ; 2 uses
  %.pre723 = phi ptr [ %i.in, %._crit_edge765 ], [ %.pre723.pre.a, %bb.ah ]
  %.pre722 = phi ptr [ %i.im, %._crit_edge765 ], [ %.pre722.pre, %bb.ah ]
  %i.nq = load ptr, ptr %i.cl, align 8, !tbaa !55
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %.pre-phi767
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !9
  %i.nt = icmp eq i32 %i.ns, %2
  %i.nu = sext i32 %.pre724 to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %.pre723, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !9
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [16 x i8], ptr %.pre722, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !58
  %i.ob = trunc i64 %i.oa to i32                  ; 2 uses
  %i.oc = select i1 %i.nt, i32 %i.ob, i32 0
  %i.od = load i32, ptr %i.bz, align 8, !tbaa !209
  %i.oe = sub i32 %i.od, %i.ob                    ; 2 uses
  store i32 %i.oe, ptr %i.bz, align 8, !tbaa !209
  %i.of = add nsw i32 %.pre724, 1
  store i32 %i.of, ptr %i.ce, align 8, !tbaa !210
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge725, %bb.w
  %.pr = phi i32 [ %i.gs, %bb.w ], [ %i.oe, %._crit_edge725 ] ; 2 uses
  %.pn = phi i32 [ %i.go, %bb.w ], [ %i.oc, %._crit_edge725 ]
  %.5 = add i32 %.0488606, %.pn                   ; 2 uses
  %.not551 = icmp eq i32 %.pr, 0
  br i1 %.not551, label %.loopexit583, label %bb.n, !llvm.loop !194

.loopexit583:                                     ; preds = %bb.ai, %.thread, %bb.m, %bb.ad, %bb.z
  %.6 = phi i32 [ %spec.select848.a, %bb.z ], [ %spec.select849, %bb.ad ], [ 0, %bb.m ], [ 0, %.thread ], [ %.5, %bb.ai ] ; 5 uses
  br i1 %i.e, label %.preheader581, label %.loopexit575

.preheader581:                                    ; preds = %.loopexit583
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !54 ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.preheader580.lr.ph, label %.loopexit575

.preheader580.lr.ph:                              ; preds = %.preheader581
  %i.oj = load ptr, ptr %3, align 8, !tbaa !68
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.trip.count667 = zext nneg i32 %i.oh to i64
  br label %.preheader580

.preheader580:                                    ; preds = %.preheader580.lr.ph, %._crit_edge
  %indvars.iv664 = phi i64 [ 0, %.preheader580.lr.ph ], [ %indvars.iv.next665, %._crit_edge ] ; 3 uses
  %.0512613 = phi i32 [ 0, %.preheader580.lr.ph ], [ %.1513.lcssa, %._crit_edge ] ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv664
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !9  ; 3 uses
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.lr.ph610, label %._crit_edge

.lr.ph610:                                        ; preds = %.preheader580
  %i.oo = load ptr, ptr %i.ok, align 8, !tbaa !70
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %indvars.iv664
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !21 ; 2 uses
  %wide.trip.count662 = zext nneg i32 %i.om to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.om, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph610
  %n.vec = and i64 %wide.trip.count662, 2147483640 ; 3 uses
  %i.or = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0512613, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.or, %vector.ph ], [ %i.oy, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oz, %vector.body ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %index ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load = load <4 x i32>, ptr %i.os, align 4, !tbaa !9
  %wide.load19 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !9
  %i.ou = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.ov = icmp sgt <4 x i32> %wide.load19, zeroinitializer
  %i.ow = zext <4 x i1> %i.ou to <4 x i32>
  %i.ox = zext <4 x i1> %i.ov to <4 x i32>
  %i.oy = add <4 x i32> %vec.phi, %i.ow           ; 2 uses
  %i.oz = add <4 x i32> %vec.phi18, %i.ox         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pa = icmp eq i64 %index.next, %n.vec
  br i1 %i.pa, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.oz, %i.oy
  %i.pb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count662
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph610, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %.lr.ph610 ], [ %n.vec, %middle.block ]
  %.1513609.ph = phi i32 [ %.0512613, %.lr.ph610 ], [ %i.pb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %scalar.ph ], [ %indvars.iv659.ph, %scalar.ph.preheader ] ; 2 uses
  %.1513609 = phi i32 [ %spec.select, %scalar.ph ], [ %.1513609.ph, %scalar.ph.preheader ]
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv659
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !9
  %i.pe = icmp sgt i32 %i.pd, 0
  %i.pf = zext i1 %i.pe to i32
  %spec.select = add nsw i32 %.1513609, %i.pf     ; 2 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge, label %scalar.ph, !llvm.loop !196

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader580
  %.1513.lcssa = phi i32 [ %.0512613, %.preheader580 ], [ %i.pb, %middle.block ], [ %spec.select, %scalar.ph ] ; 14 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668.not, label %._crit_edge614, label %.preheader580, !llvm.loop !197

._crit_edge614:                                   ; preds = %._crit_edge
  %i.pg = icmp sgt i32 %.1513.lcssa, 0
  br i1 %i.pg, label %bb.aj, label %.loopexit575

bb.aj:                                            ; preds = %._crit_edge614
  %i.ph = zext nneg i32 %.1513.lcssa to i64       ; 6 uses
  %i.pi = mul nuw nsw i64 %i.ph, 24
  %i.pj = tail call noalias ptr @malloc(i64 noundef %i.pi) #13 ; 19 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.pl = shl nuw nsw i64 %i.ph, 2                ; 2 uses
  %i.pm = tail call noalias ptr @malloc(i64 noundef %i.pl) #13 ; 11 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %bb.am, label %.preheader578.lr.ph

.preheader578.lr.ph:                              ; preds = %bb.al
  %i.po = load ptr, ptr %3, align 8, !tbaa !68
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.trip.count677 = zext nneg i32 %i.oh to i64
  br label %.preheader578

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.loopexit

.preheader578:                                    ; preds = %.preheader578.lr.ph, %._crit_edge620
  %indvars.iv674 = phi i64 [ 0, %.preheader578.lr.ph ], [ %indvars.iv.next675, %._crit_edge620 ] ; 5 uses
  %.0505623 = phi i32 [ 0, %.preheader578.lr.ph ], [ %.1506.lcssa, %._crit_edge620 ] ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv674
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !9  ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, 0
  br i1 %i.pt, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader578
  %i.pu = load ptr, ptr %i.pp, align 8, !tbaa !70
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %indvars.iv674
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !21
  %wide.trip.count672 = zext nneg i32 %i.ps to i64
  %i.px = trunc nuw nsw i64 %indvars.iv674 to i32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph619, %bb.ap
  %indvars.iv669 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next670, %bb.ap ] ; 3 uses
  %.1506618 = phi i32 [ %.0505623, %.lr.ph619 ], [ %.2507, %bb.ap ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv669
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !9  ; 2 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.qb = zext nneg i32 %i.pz to i64
  %i.qc = sext i32 %.1506618 to i64
  %i.qd = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.qc ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store i64 %i.qb, ptr %i.qe, align 8, !tbaa !214
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store i32 %i.px, ptr %i.qf, align 8, !tbaa !215
  %i.qg = load ptr, ptr %i.pq, align 8, !tbaa !71
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv674
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !23
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %indvars.iv669
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !16
  store i64 %i.qk, ptr %i.qd, align 8, !tbaa !216
  %i.ql = add nsw i32 %.1506618, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.2507 = phi i32 [ %i.ql, %bb.ao ], [ %.1506618, %bb.an ] ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge620, label %bb.an, !llvm.loop !198

._crit_edge620:                                   ; preds = %bb.ap, %.preheader578
  %.1506.lcssa = phi i32 [ %.0505623, %.preheader578 ], [ %.2507, %bb.ap ]
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %._crit_edge624, label %.preheader578, !llvm.loop !199

._crit_edge624:                                   ; preds = %._crit_edge620
  %i.qm = add nsw i32 %.1513.lcssa, -1            ; 2 uses
  %i.qn = tail call noalias ptr @malloc(i64 noundef %i.pl) #13 ; 21 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge624
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %local_heap_sort.exit

bb.ar:                                            ; preds = %._crit_edge624
  store i32 0, ptr %i.qn, align 4, !tbaa !9
  %.not571 = icmp eq i32 %.1513.lcssa, 1
  br i1 %.not571, label %._crit_edge139.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ar
  %i.qp = add nsw i64 %i.ph, -1                   ; 2 uses
  %min.iters.check21 = icmp ult i32 %.1513.lcssa, 9
  br i1 %min.iters.check21, label %.lr.ph.i.preheader39, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.i.preheader
  %n.vec23 = and i64 %i.qp, -8                    ; 3 uses
  %i.qq = or disjoint i64 %n.vec23, 1
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next26, %vector.body24 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph22 ], [ %vec.ind.next, %vector.body24 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %index25 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 20
  store <4 x i32> %vec.ind, ptr %i.qs, align 4, !tbaa !9
  store <4 x i32> %step.add, ptr %i.qt, align 4, !tbaa !9
  %index.next26 = add nuw i64 %index25, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.qu = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.qu, label %middle.block27, label %vector.body24, !llvm.loop !200

middle.block27:                                   ; preds = %vector.body24
  %cmp.n28 = icmp eq i64 %i.qp, %n.vec23
  br i1 %cmp.n28, label %._crit_edge.i, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block27
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.qq, %middle.block27 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader39 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv.i
  %i.qw = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.qw, ptr %i.qv, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ph
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !201

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block27
  %i.qx = lshr i32 %.1513.lcssa, 1
  br label %.preheader130.i

.loopexit.i:                                      ; preds = %bb.ax
  %i.qy = icmp sgt i32 %.1113134.in.i, 1
  br i1 %i.qy, label %.preheader130.i, label %.preheader.i, !llvm.loop !202

.preheader130.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %.1113134.in.i = phi i32 [ %.1113134.i, %.loopexit.i ], [ %i.qx, %._crit_edge.i ] ; 2 uses
  %.1113134.i = add nsw i32 %.1113134.in.i, -1    ; 2 uses
  br label %bb.as

.preheader.i:                                     ; preds = %.loopexit.i
  %i.qz = zext nneg i32 %i.qm to i64
  br label %.lr.ph138.i

bb.as:                                            ; preds = %bb.ay, %.preheader130.i
  %.0108132.i = phi i32 [ %.1113134.i, %.preheader130.i ], [ %.1105.i, %bb.ay ] ; 5 uses
  %i.ra = shl nuw nsw i32 %.0108132.i, 1          ; 3 uses
  %i.rb = add nuw nsw i32 %i.ra, 2                ; 3 uses
  %.not126.not.i = icmp slt i32 %i.ra, %i.qm
  br i1 %.not126.not.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.rc = or disjoint i32 %i.ra, 1                ; 2 uses
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !9
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !216
  %i.rj = zext nneg i32 %.0108132.i to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !9
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.rm
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !216
  %i.rp = icmp sgt i64 %i.ri, %i.ro
  br i1 %i.rp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0104.i = phi i32 [ %.0108132.i, %bb.au ], [ %i.rc, %bb.at ] ; 3 uses
  %.not127.not.i = icmp samesign ult i32 %i.rb, %.1513.lcssa
  br i1 %.not127.not.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.rq = zext nneg i32 %i.rb to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !9
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !216
  %i.rw = zext nneg i32 %.0104.i to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !9
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.rz
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !216
  %i.sc = icmp sgt i64 %i.rv, %i.sb
  %spec.select.i = select i1 %i.sc, i32 %i.rb, i32 %.0104.i
  br label %bb.ax
end_hunk_0
begin_hunk_1_@shuffle_init:bb.a
  %.1105.i = phi i32 [ %.0104.i, %bb.av ], [ %spec.select.i, %bb.aw ] ; 3 uses
  %.not128.not.i = icmp eq i32 %.1105.i, %.0108132.i
  br i1 %.not128.not.i, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sd = zext nneg i32 %.1105.i to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.sd ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !9
  %i.sg = zext nneg i32 %.0108132.i to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.sg ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !9
  store i32 %i.si, ptr %i.se, align 4, !tbaa !9
  store i32 %i.sf, ptr %i.sh, align 4, !tbaa !9
  br label %bb.as

.lr.ph138.i:                                      ; preds = %bb.bg, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.qz, %.preheader.i ], [ %indvars.iv.next143.i, %bb.bg ] ; 5 uses
  %indvars144.i = trunc i64 %indvars.iv142.i to i32
  %i.sj = load i32, ptr %i.qn, align 4, !tbaa !9
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv142.i ; 3 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !9
  store i32 %i.sl, ptr %i.qn, align 4, !tbaa !9
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !9
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next143.i to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %.lr.ph138.i
  %.2110135.i = phi i32 [ 0, %.lr.ph138.i ], [ %.3107.i, %bb.bf ] ; 5 uses
  %i.sm = shl nsw i32 %.2110135.i, 1              ; 3 uses
  %i.sn = add nsw i32 %i.sm, 2                    ; 3 uses
  %.not122.not.i = icmp slt i32 %i.sm, %indvars.i
  br i1 %.not122.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.so = or disjoint i32 %i.sm, 1                ; 2 uses
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !9
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.ss
  %i.su = load i64, ptr %i.st, align 8, !tbaa !216
  %i.sv = sext i32 %.2110135.i to i64
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !9
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !216
  %i.tb = icmp sgt i64 %i.su, %i.ta
  br i1 %i.tb, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2106.i = phi i32 [ %.2110135.i, %bb.bb ], [ %i.so, %bb.ba ] ; 3 uses
  %.not123.not.i = icmp slt i32 %i.sn, %indvars144.i
  br i1 %.not123.not.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.tc = sext i32 %i.sn to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !9
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.tf
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !216
  %i.ti = sext i32 %.2106.i to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !9
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.tl
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !216
  %i.to = icmp sgt i64 %i.th, %i.tn
  %spec.select129.i = select i1 %i.to, i32 %i.sn, i32 %.2106.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3107.i = phi i32 [ %.2106.i, %bb.bc ], [ %spec.select129.i, %bb.bd ] ; 3 uses
  %.not124.not.i = icmp eq i32 %.3107.i, %.2110135.i
  br i1 %.not124.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.tp = sext i32 %.3107.i to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.tp ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !9
  %i.ts = sext i32 %.2110135.i to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !9
  store i32 %i.tu, ptr %i.tq, align 4, !tbaa !9
  store i32 %i.tr, ptr %i.tt, align 4, !tbaa !9
  br label %bb.az

bb.bg:                                            ; preds = %bb.be
  %i.tv = load i32, ptr %i.sk, align 4, !tbaa !9
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv142.i
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !9
  %i.tx = icmp sgt i64 %indvars.iv142.i, 1
  br i1 %i.tx, label %.lr.ph138.i, label %._crit_edge139.i.loopexit, !llvm.loop !203

._crit_edge139.i.loopexit:                        ; preds = %bb.bg
  %.pre737.a = load i32, ptr %i.qn, align 4, !tbaa !9
  br label %._crit_edge139.i

._crit_edge139.i:                                 ; preds = %._crit_edge139.i.loopexit, %bb.ar
  %i.ty = phi i32 [ %.pre737.a, %._crit_edge139.i.loopexit ], [ 0, %bb.ar ] ; 2 uses
  store i32 %i.ty, ptr %i.pm, align 4, !tbaa !9
  tail call void @free(ptr noundef nonnull %i.qn) #12
  %i.tz = sext i32 %i.ty to i64
  br label %local_heap_sort.exit

local_heap_sort.exit:                             ; preds = %bb.aq, %._crit_edge139.i
  %i.ua = phi i64 [ 0, %bb.aq ], [ %i.tz, %._crit_edge139.i ]
  %i.ub = shl nuw nsw i64 %i.ph, 3
  %i.uc = tail call noalias ptr @malloc(i64 noundef %i.ub) #13 ; 12 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.ua
  store i64 0, ptr %i.ud, align 8, !tbaa !16
  %.not643 = icmp eq i32 %.1513.lcssa, 1
  br i1 %.not643, label %._crit_edge627, label %.lr.ph626.preheader

.lr.ph626.preheader:                              ; preds = %local_heap_sort.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %.1513.lcssa, i32 2)
  %wide.trip.count683 = zext nneg i32 %smax to i64
  %i.ue = add nsw i64 %wide.trip.count683, -1     ; 3 uses
  %xtraiter = and i64 %i.ue, 1
  %i.uf = icmp slt i32 %.1513.lcssa, 3
  br i1 %i.uf, label %.lr.ph626.epil.preheader, label %.lr.ph626.preheader.new

.lr.ph626.preheader.new:                          ; preds = %.lr.ph626.preheader
  %unroll_iter = and i64 %i.ue, -2
  br label %.lr.ph626

.lr.ph626:                                        ; preds = %.lr.ph626, %.lr.ph626.preheader.new
  %indvars.iv680 = phi i64 [ 1, %.lr.ph626.preheader.new ], [ %indvars.iv.next681.1, %.lr.ph626 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph626.preheader.new ], [ %niter.next.1, %.lr.ph626 ]
  %i.ug = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv680 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 -4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.uj = sext i32 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.uj
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !16
  %i.um = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.uj
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !214
  %i.up = add nsw i64 %i.uo, %i.ul
  %i.uq = load i32, ptr %i.ug, align 4, !tbaa !9  ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.ur
  store i64 %i.up, ptr %i.us, align 8, !tbaa !16
  %i.ut = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv680
  %i.uu = getelementptr i8, ptr %i.ut, i64 4
  %i.uv = sext i32 %i.uq to i64                   ; 2 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.uv
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !16
  %i.uy = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.uv
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !214
  %i.vb = add nsw i64 %i.va, %i.ux
  %i.vc = load i32, ptr %i.uu, align 4, !tbaa !9
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.vd
  store i64 %i.vb, ptr %i.ve, align 8, !tbaa !16
  %indvars.iv.next681.1 = add nuw nsw i64 %indvars.iv680, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge627.loopexit.unr-lcssa, label %.lr.ph626, !llvm.loop !204

._crit_edge627.loopexit.unr-lcssa:                ; preds = %.lr.ph626
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge627, label %.lr.ph626.epil.preheader

.lr.ph626.epil.preheader:                         ; preds = %._crit_edge627.loopexit.unr-lcssa, %.lr.ph626.preheader
  %indvars.iv680.epil.init = phi i64 [ 1, %.lr.ph626.preheader ], [ %indvars.iv.next681.1, %._crit_edge627.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %i.ue to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.vf = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv680.epil.init ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 -4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !9
  %i.vi = sext i32 %i.vh to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !16
  %i.vl = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.vi
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !214
  %i.vo = add nsw i64 %i.vn, %i.vk
  %i.vp = load i32, ptr %i.vf, align 4, !tbaa !9
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.vq
  store i64 %i.vo, ptr %i.vr, align 8, !tbaa !16
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %.lr.ph626.epil.preheader, %._crit_edge627.loopexit.unr-lcssa, %local_heap_sort.exit
  %i.vs = load i32, ptr %i.og, align 8, !tbaa !54
  %i.vt = sext i32 %i.vs to i64
  %i.vu = shl nsw i64 %i.vt, 2
  %i.vv = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.vu) #14 ; 3 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %bb.bh, label %.lr.ph629

.lr.ph629:                                        ; preds = %._crit_edge627
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.pre739.a = load ptr, ptr %i.vx, align 8, !tbaa !71
  %.pre741.a = load ptr, ptr %3, align 8, !tbaa !68
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge627
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.loopexit

bb.bi:                                            ; preds = %.lr.ph629, %bb.bl
  %i.vy = phi ptr [ %.pre741.a, %.lr.ph629 ], [ %i.wu, %bb.bl ] ; 2 uses
  %i.vz = phi ptr [ %.pre739.a, %.lr.ph629 ], [ %i.wv, %bb.bl ] ; 2 uses
  %indvars.iv685 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next686, %bb.bl ] ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv685
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !9
  %i.wc = sext i32 %i.wb to i64                   ; 2 uses
  %i.wd = getelementptr inbounds [24 x i8], ptr %i.pj, i64 %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !215 ; 3 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.wc
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !16
  %i.wi = sext i32 %i.wf to i64                   ; 3 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.wi
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !23
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.wi ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !9  ; 4 uses
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.wk, i64 %i.wn
  store i64 %i.wh, ptr %i.wo, align 8, !tbaa !16
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.wi
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !9  ; 2 uses
  %i.wr = icmp slt i32 %i.wm, %i.wq
  br i1 %i.wr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ws = add nsw i32 %i.wm, 1
  store i32 %i.ws, ptr %i.wl, align 4, !tbaa !9
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.wt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.wf, i32 noundef %i.wm, i32 noundef %i.wf, i32 noundef %i.wq) ; 0 uses
  %.pre738 = load ptr, ptr %i.vx, align 8, !tbaa !71
  %.pre740 = load ptr, ptr %3, align 8, !tbaa !68
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.wu = phi ptr [ %i.vy, %bb.bj ], [ %.pre740, %bb.bk ]
  %i.wv = phi ptr [ %i.vz, %bb.bj ], [ %.pre738, %bb.bk ]
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next686, %i.ph
  br i1 %exitcond690.not, label %._crit_edge630, label %bb.bi, !llvm.loop !205

._crit_edge630:                                   ; preds = %bb.bl
  %.pre742.a = load i32, ptr %i.og, align 8, !tbaa !54
  tail call void @free(ptr noundef nonnull %i.vv) #12
  %i.ww = icmp sgt i32 %.pre742.a, 0
  br i1 %i.ww, label %.lr.ph633, label %.loopexit575

.lr.ph633:                                        ; preds = %._crit_edge630
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.xb = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.xc = add nsw i32 %0, 123
  %i.xd = getelementptr inbounds nuw i8, ptr %3, i64 80
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph633, %bb.bp
  %indvars.iv691 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next692, %bb.bp ] ; 9 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv691 ; 2 uses
  store ptr @ompi_request_null, ptr %i.xe, align 8, !tbaa !14
  %i.xf = load ptr, ptr %3, align 8, !tbaa !68
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv691
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !9  ; 2 uses
  %i.xi = icmp sgt i32 %i.xh, 0
  br i1 %i.xi, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.xj = load ptr, ptr %i.wx, align 8, !tbaa !70
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv691
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !21
  %i.xm = load ptr, ptr %i.wy, align 8, !tbaa !71
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %indvars.iv691
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !23
  %i.xp = load ptr, ptr %i.wz, align 8, !tbaa !73
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %indvars.iv691
  %i.xr = tail call i32 @ompi_datatype_create_hindexed(i32 noundef %i.xh, ptr noundef %i.xl, ptr noundef %i.xo, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.xq) #12 ; 0 uses
  %i.xs = load ptr, ptr %i.wz, align 8, !tbaa !73
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %indvars.iv691
  %.val563 = load ptr, ptr %i.xt, align 8, !tbaa !74
  %i.xu = tail call i32 @opal_datatype_commit(ptr noundef %.val563) #12 ; 0 uses
  %i.xv = load ptr, ptr %i.wz, align 8, !tbaa !73
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv691
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !74 ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xx, i64 24
  %.val564 = load i64, ptr %i.xy, align 8, !tbaa !221
  %.not559 = icmp eq i64 %.val564, 0
  br i1 %.not559, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !223
  %i.ya = load ptr, ptr %i.xa, align 8, !tbaa !72
  %i.yb = load ptr, ptr %i.xb, align 8, !tbaa !55
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv691
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = load ptr, ptr %i.xd, align 8, !tbaa !224
  %i.yf = tail call i32 %i.xz(ptr noundef %i.ya, i64 noundef 1, ptr noundef nonnull %i.xx, i32 noundef %i.yd, i32 noundef %i.xc, ptr noundef %i.ye, ptr noundef nonnull %i.xe) #12
  %.not560 = icmp eq i32 %i.yf, 0
  br i1 %.not560, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %bb.bm, %bb.bo, %bb.bn
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %i.yg = load i32, ptr %i.og, align 8, !tbaa !54
  %i.yh = sext i32 %i.yg to i64
  %i.yi = icmp slt i64 %indvars.iv.next692, %i.yh
  br i1 %i.yi, label %bb.bm, label %.loopexit575, !llvm.loop !206

.loopexit575:                                     ; preds = %bb.bp, %.preheader581, %._crit_edge630, %._crit_edge614, %.loopexit583
  %.3515 = phi i32 [ 0, %.loopexit583 ], [ %.1513.lcssa, %._crit_edge614 ], [ %.1513.lcssa, %._crit_edge630 ], [ 0, %.preheader581 ], [ %.1513.lcssa, %bb.bp ] ; 3 uses
  %.0510 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.pj, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.pj, %bb.bp ] ; 8 uses
  %.0508 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.pm, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.pm, %bb.bp ] ; 7 uses
  %.0503 = phi ptr [ null, %.loopexit583 ], [ null, %._crit_edge614 ], [ %i.uc, %._crit_edge630 ], [ null, %.preheader581 ], [ %i.uc, %bb.bp ] ; 7 uses
  %.not554 = icmp eq i32 %.6, 0
  br i1 %.not554, label %bb.cb, label %bb.bq

bb.bq:                                            ; preds = %.loopexit575
  %i.yj = sext i32 %.6 to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr @ompi_mpi_datatype_null, ptr %i.a, align 8, !tbaa !74
  %i.yk = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 10, i64 noundef 4) #14 ; 6 uses
  %i.yl = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 10, i64 noundef 8) #14 ; 4 uses
  %i.ym = icmp eq ptr %i.yk, null
  %i.yn = icmp eq ptr %i.yl, null
  %or.cond = or i1 %i.ym, %i.yn
  br i1 %or.cond, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 8 uses
  %i.yr = load ptr, ptr %i.yo, align 8, !tbaa !63 ; 3 uses
  %i.ys = load i32, ptr %i.yp, align 8, !tbaa !225 ; 3 uses
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [16 x i8], ptr %i.yr, i64 %i.yt
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !57
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = load i32, ptr %i.yq, align 4, !tbaa !226 ; 3 uses
  %i.yy = sext i32 %i.yx to i64
  %i.yz = add nsw i64 %i.yy, %i.yw                ; 2 uses
  %i.za = sext i32 %i.ys to i64
  %i.zb = getelementptr inbounds [16 x i8], ptr %i.yr, i64 %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !58 ; 2 uses
  %i.ze = sext i32 %i.yx to i64                   ; 2 uses
  %i.zf = sub i64 %i.zd, %i.ze                    ; 2 uses
  %.not558.peel = icmp ugt i64 %i.zf, %i.yj
  br i1 %.not558.peel, label %.thread810, label %bb.bs

.thread810:                                       ; preds = %bb.br
  store i32 %.6, ptr %i.yk, align 4, !tbaa !9
  %i.zg = add i32 %i.yx, %.6
  store i32 %i.zg, ptr %i.yq, align 4, !tbaa !226
  br label %.thread818

bb.bs:                                            ; preds = %bb.br
  %i.zh = trunc i64 %i.zf to i32
  store i32 %i.zh, ptr %i.yk, align 4, !tbaa !9
  %.neg.peel = sub i64 %i.yj, %i.zd
  %i.zi = add i64 %.neg.peel, %i.ze               ; 2 uses
  %i.zj = add nsw i32 %i.ys, 1
  store i32 %i.zj, ptr %i.yp, align 8, !tbaa !225
  store i32 0, ptr %i.yq, align 4, !tbaa !226
  %.not555.peel = icmp eq i64 %i.zi, 0
  br i1 %.not555.peel, label %.thread818, label %.peel.next

bb.bt:                                            ; preds = %bb.bq
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.thread566

.peel.next:                                       ; preds = %bb.bs, %bb.bw
  %i.zk = phi ptr [ %i.zu, %bb.bw ], [ %i.yr, %bb.bs ]
  %indvars.iv694 = phi i64 [ %indvars.iv.next695, %bb.bw ], [ 0, %bb.bs ] ; 2 uses
  %.0481638 = phi i32 [ %.1482, %bb.bw ], [ 10, %bb.bs ] ; 2 uses
  %.0484636 = phi i64 [ %i.aar, %bb.bw ], [ %i.zi, %bb.bs ] ; 3 uses
  %.0491635 = phi ptr [ %.1492, %bb.bw ], [ %i.yl, %bb.bs ] ; 2 uses
  %.0497634 = phi ptr [ %.1498, %bb.bw ], [ %i.yk, %bb.bs ] ; 2 uses
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 4 uses
  %i.zl = trunc nuw nsw i64 %indvars.iv.next695 to i32
  %.urem = urem i32 %i.zl, 10
  %i.zm = icmp eq i32 %.urem, 0
  br i1 %i.zm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.peel.next
  %i.zn = add nsw i32 %.0481638, 10               ; 2 uses
  %i.zo = sext i32 %i.zn to i64                   ; 2 uses
  %i.zp = shl nsw i64 %i.zo, 2
  %i.zq = tail call ptr @realloc(ptr noundef nonnull %.0497634, i64 noundef %i.zp) #15
  %i.zr = shl nsw i64 %i.zo, 3
  %i.zs = tail call ptr @realloc(ptr noundef nonnull %.0491635, i64 noundef %i.zr) #15
  %.pre743.a = load ptr, ptr %i.yo, align 8, !tbaa !63
  %.pre744 = load i32, ptr %i.yq, align 4, !tbaa !226
  %i.zt = sext i32 %.pre744 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %.peel.next, %bb.bu
  %i.zu = phi ptr [ %.pre743.a, %bb.bu ], [ %i.zk, %.peel.next ] ; 3 uses
  %i.zv = phi i64 [ %i.zt, %bb.bu ], [ 0, %.peel.next ] ; 2 uses
  %.1498 = phi ptr [ %i.zq, %bb.bu ], [ %.0497634, %.peel.next ] ; 3 uses
  %.1492 = phi ptr [ %i.zs, %bb.bu ], [ %.0491635, %.peel.next ] ; 3 uses
  %.1482 = phi i32 [ %i.zn, %bb.bu ], [ %.0481638, %.peel.next ]
  %i.zw = load i32, ptr %i.yp, align 8, !tbaa !225
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr inbounds [16 x i8], ptr %i.zu, i64 %i.zx ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !57
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = sub i64 %i.aaa, %i.yz
  %i.aac = add i64 %i.aab, %i.zv
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %.1492, i64 %indvars.iv.next695
  store i64 %i.aac, ptr %i.aad, align 8, !tbaa !16
  %.phi.trans.insert746 = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %.pre747 = load i64, ptr %.phi.trans.insert746, align 8, !tbaa !58
  %i.aae = sub i64 %.pre747, %i.zv                ; 2 uses
  %.not558 = icmp ult i64 %.0484636, %i.aae
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %.1498, i64 %indvars.iv.next695 ; 2 uses
  br i1 %.not558, label %.thread814, label %bb.bw

.thread814:                                       ; preds = %bb.bv
  %i.aag = trunc i64 %.0484636 to i32             ; 2 uses
  store i32 %i.aag, ptr %i.aaf, align 4, !tbaa !9
  %i.aah = load i32, ptr %i.yq, align 4, !tbaa !226
  %i.aai = add i32 %i.aah, %i.aag
  store i32 %i.aai, ptr %i.yq, align 4, !tbaa !226
  br label %.loopexit827

bb.bw:                                            ; preds = %bb.bv
  %i.aaj = trunc i64 %i.aae to i32
  store i32 %i.aaj, ptr %i.aaf, align 4, !tbaa !9
  %i.aak = load i32, ptr %i.yp, align 8, !tbaa !225 ; 2 uses
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [16 x i8], ptr %i.zu, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !58
  %i.aap = load i32, ptr %i.yq, align 4, !tbaa !226
  %i.aaq = sext i32 %i.aap to i64
  %.neg = sub i64 %.0484636, %i.aao
  %i.aar = add i64 %.neg, %i.aaq                  ; 2 uses
  %i.aas = add nsw i32 %i.aak, 1
  store i32 %i.aas, ptr %i.yp, align 8, !tbaa !225
  store i32 0, ptr %i.yq, align 4, !tbaa !226
end_hunk_1
