Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/inffast?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inflate_fast:bb.a
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %.3269, i64 2
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !51
  %i.li = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.lj = load i8, ptr %i.lf, align 1, !tbaa !51
  %i.lk = getelementptr inbounds nuw i8, ptr %.3269, i64 3
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !51
  %i.ll = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %.3269, i64 4
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.lp = load i8, ptr %i.ll, align 1, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %.3269, i64 5
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !51
  %i.lr = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !51
  %i.lt = getelementptr inbounds nuw i8, ptr %.3269, i64 6
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %.3269, i64 7
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !51
  %i.lx = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %.3269, i64 8 ; 2 uses
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !51
  %i.ma = add i32 %.2245, -8                      ; 2 uses
  %.not322.7 = icmp eq i32 %i.ma, 0
  br i1 %.not322.7, label %.loopexit656, label %vec.epilog.scalar.ph567, !llvm.loop !20

.loopexit656:                                     ; preds = %vec.epilog.scalar.ph567.prol.loopexit, %vec.epilog.scalar.ph567, %vec.epilog.middle.block578, %middle.block561
  %.lcssa516 = phi ptr [ %i.ku, %vec.epilog.middle.block578 ], [ %i.kq, %middle.block561 ], [ %.lcssa688.unr, %vec.epilog.scalar.ph567.prol.loopexit ], [ %i.lz, %vec.epilog.scalar.ph567 ] ; 2 uses
  %i.mb = sub nuw nsw i32 %i.km, %i.z
  %i.mc = zext nneg i32 %i.fn to i64
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %.lcssa516, i64 %i.md
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.mf = sub nuw i32 %i.z, %i.fv
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.mg ; 7 uses
  %i.mi = icmp ult i32 %i.fv, %.0239
  br i1 %i.mi, label %iter.check638, label %bb.v

iter.check638:                                    ; preds = %bb.u
  %i.mj = add i32 %i.bi, %i.fm
  %i.mk = add i32 %i.mj, %i.es
  %i.ml = trunc i64 %i.fr to i32
  %i.mm = sub i32 %i.mk, %i.ml                    ; 3 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 5 uses
  %min.iters.check621 = icmp ult i32 %i.mm, 3
  br i1 %min.iters.check621, label %vec.epilog.scalar.ph639.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check638
  %i.mp = add i64 %i.ac, %i.mg
  %i.mq = sub i64 %i.mp, %i.fr
  %diff.check620 = icmp ugt i64 %i.mq, -32
  br i1 %diff.check620, label %vec.epilog.scalar.ph639.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck619
  %min.iters.check623 = icmp ult i32 %i.mm, 31
  br i1 %min.iters.check623, label %vec.epilog.ph642, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.mr = and i64 %i.mo, 28
  %n.vec625 = and i64 %i.mo, 8589934560           ; 6 uses
  %i.ms = getelementptr i8, ptr %.0266, i64 %n.vec625 ; 2 uses
  %i.mt = trunc i64 %n.vec625 to i32
  %i.mu = sub i32 %i.fv, %i.mt
  %i.mv = getelementptr i8, ptr %i.mh, i64 %n.vec625
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0266, i64 %index627 ; 2 uses
  %next.gep629 = getelementptr i8, ptr %i.mh, i64 %index627 ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep629, i64 16
  %wide.load630 = load <16 x i8>, ptr %next.gep629, align 1, !tbaa !51
  %wide.load631 = load <16 x i8>, ptr %i.mw, align 1, !tbaa !51
  %i.mx = getelementptr i8, ptr %next.gep628, i64 16
  store <16 x i8> %wide.load630, ptr %next.gep628, align 1, !tbaa !51
  store <16 x i8> %wide.load631, ptr %i.mx, align 1, !tbaa !51
  %index.next632 = add nuw i64 %index627, 32      ; 2 uses
  %i.my = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.my, label %middle.block633, label %vector.body626, !llvm.loop !21

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %i.mo, %n.vec625
  br i1 %cmp.n634, label %.loopexit658, label %vec.epilog.iter.check640

vec.epilog.iter.check640:                         ; preds = %middle.block633
  %min.epilog.iters.check641 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check641, label %vec.epilog.scalar.ph639.preheader, label %vec.epilog.ph642, !prof !61

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check640
  %vec.epilog.resume.val635 = phi i64 [ %n.vec625, %vec.epilog.iter.check640 ], [ 0, %vector.main.loop.iter.check622 ]
  %n.vec643 = and i64 %i.mo, 8589934588           ; 5 uses
  %i.mz = getelementptr i8, ptr %.0266, i64 %n.vec643 ; 2 uses
  %i.na = trunc i64 %n.vec643 to i32
  %i.nb = sub i32 %i.fv, %i.na
  %i.nc = getelementptr i8, ptr %i.mh, i64 %n.vec643
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph642
  %index645 = phi i64 [ %vec.epilog.resume.val635, %vec.epilog.ph642 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 3 uses
  %next.gep646 = getelementptr i8, ptr %.0266, i64 %index645
  %next.gep647 = getelementptr i8, ptr %i.mh, i64 %index645
  %wide.load648 = load <4 x i8>, ptr %next.gep647, align 1, !tbaa !51
  store <4 x i8> %wide.load648, ptr %next.gep646, align 1, !tbaa !51
  %index.next649 = add nuw i64 %index645, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.nd, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !22

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  %cmp.n651 = icmp eq i64 %i.mo, %n.vec643
  br i1 %cmp.n651, label %.loopexit658, label %vec.epilog.scalar.ph639.preheader

vec.epilog.scalar.ph639.preheader:                ; preds = %vector.memcheck619, %iter.check638, %vec.epilog.iter.check640, %vec.epilog.middle.block650
  %.4270.ph = phi ptr [ %.0266, %iter.check638 ], [ %.0266, %vector.memcheck619 ], [ %i.ms, %vec.epilog.iter.check640 ], [ %i.mz, %vec.epilog.middle.block650 ] ; 2 uses
  %.3246.ph = phi i32 [ %i.fv, %iter.check638 ], [ %i.fv, %vector.memcheck619 ], [ %i.mu, %vec.epilog.iter.check640 ], [ %i.nb, %vec.epilog.middle.block650 ] ; 4 uses
  %.3.ph = phi ptr [ %i.mh, %iter.check638 ], [ %i.mh, %vector.memcheck619 ], [ %i.mv, %vec.epilog.iter.check640 ], [ %i.nc, %vec.epilog.middle.block650 ] ; 2 uses
  %i.ne = add i32 %.3246.ph, -1
  %xtraiter = and i32 %.3246.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol

vec.epilog.scalar.ph639.prol:                     ; preds = %vec.epilog.scalar.ph639.preheader, %vec.epilog.scalar.ph639.prol
  %.4270.prol = phi ptr [ %i.nh, %vec.epilog.scalar.ph639.prol ], [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %.3246.prol = phi i32 [ %i.ni, %vec.epilog.scalar.ph639.prol ], [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ]
  %.3.prol = phi ptr [ %i.nf, %vec.epilog.scalar.ph639.prol ], [ %.3.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph639.prol ], [ 0, %vec.epilog.scalar.ph639.preheader ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.ng = load i8, ptr %.3.prol, align 1, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %.4270.prol, i64 1 ; 3 uses
  store i8 %i.ng, ptr %.4270.prol, align 1, !tbaa !51
  %i.ni = add i32 %.3246.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol, !llvm.loop !23

vec.epilog.scalar.ph639.prol.loopexit:            ; preds = %vec.epilog.scalar.ph639.prol, %vec.epilog.scalar.ph639.preheader
  %.lcssa686.unr = phi ptr [ poison, %vec.epilog.scalar.ph639.preheader ], [ %i.nh, %vec.epilog.scalar.ph639.prol ]
  %.4270.unr = phi ptr [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.nh, %vec.epilog.scalar.ph639.prol ]
  %.3246.unr = phi i32 [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.ni, %vec.epilog.scalar.ph639.prol ]
  %.3.unr = phi ptr [ %.3.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.nf, %vec.epilog.scalar.ph639.prol ]
  %i.nj = icmp ult i32 %i.ne, 7
  br i1 %i.nj, label %.loopexit658, label %vec.epilog.scalar.ph639

vec.epilog.scalar.ph639:                          ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639
  %.4270 = phi ptr [ %i.oh, %vec.epilog.scalar.ph639 ], [ %.4270.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %.3246 = phi i32 [ %i.oi, %vec.epilog.scalar.ph639 ], [ %.3246.unr, %vec.epilog.scalar.ph639.prol.loopexit ]
  %.3 = phi ptr [ %i.of, %vec.epilog.scalar.ph639 ], [ %.3.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.nl = load i8, ptr %.3, align 1, !tbaa !51
  %i.nm = getelementptr inbounds nuw i8, ptr %.4270, i64 1
  store i8 %i.nl, ptr %.4270, align 1, !tbaa !51
  %i.nn = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !51
  %i.np = getelementptr inbounds nuw i8, ptr %.4270, i64 2
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !51
  %i.nq = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.nr = load i8, ptr %i.nn, align 1, !tbaa !51
  %i.ns = getelementptr inbounds nuw i8, ptr %.4270, i64 3
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !51
  %i.nt = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.nu = load i8, ptr %i.nq, align 1, !tbaa !51
  %i.nv = getelementptr inbounds nuw i8, ptr %.4270, i64 4
  store i8 %i.nu, ptr %i.ns, align 1, !tbaa !51
  %i.nw = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.nx = load i8, ptr %i.nt, align 1, !tbaa !51
  %i.ny = getelementptr inbounds nuw i8, ptr %.4270, i64 5
  store i8 %i.nx, ptr %i.nv, align 1, !tbaa !51
  %i.nz = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !51
  %i.ob = getelementptr inbounds nuw i8, ptr %.4270, i64 6
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !51
  %i.oc = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.od = load i8, ptr %i.nz, align 1, !tbaa !51
  %i.oe = getelementptr inbounds nuw i8, ptr %.4270, i64 7
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.og = load i8, ptr %i.oc, align 1, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %.4270, i64 8 ; 2 uses
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !51
  %i.oi = add i32 %.3246, -8                      ; 2 uses
  %.not320.7 = icmp eq i32 %i.oi, 0
  br i1 %.not320.7, label %.loopexit658, label %vec.epilog.scalar.ph639, !llvm.loop !24

.loopexit658:                                     ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639, %vec.epilog.middle.block650, %middle.block633
  %.lcssa514 = phi ptr [ %i.mz, %vec.epilog.middle.block650 ], [ %i.ms, %middle.block633 ], [ %.lcssa686.unr, %vec.epilog.scalar.ph639.prol.loopexit ], [ %i.oh, %vec.epilog.scalar.ph639 ] ; 2 uses
  %i.oj = sub nuw nsw i32 %.0239, %i.fv
  %i.ok = zext nneg i32 %i.fn to i64
  %i.ol = sub nsw i64 0, %i.ok
  %i.om = getelementptr inbounds i8, ptr %.lcssa514, i64 %i.ol
  br label %bb.v

bb.v:                                             ; preds = %.loopexit657, %.loopexit656, %bb.t, %.loopexit658, %bb.u, %bb.r, %.loopexit655
  %.5271 = phi ptr [ %.lcssa517, %.loopexit655 ], [ %.0266, %bb.r ], [ %.lcssa516, %.loopexit656 ], [ %.lcssa515, %.loopexit657 ], [ %.0266, %bb.t ], [ %.lcssa514, %.loopexit658 ], [ %.0266, %bb.u ] ; 6 uses
  %.1240 = phi i32 [ %i.ic, %.loopexit655 ], [ %.0239, %bb.r ], [ %i.mb, %.loopexit656 ], [ %i.km, %.loopexit657 ], [ %.0239, %bb.t ], [ %i.oj, %.loopexit658 ], [ %.0239, %bb.u ] ; 5 uses
  %.4 = phi ptr [ %i.if, %.loopexit655 ], [ %i.ga, %bb.r ], [ %i.me, %.loopexit656 ], [ %i.ab, %.loopexit657 ], [ %i.ij, %bb.t ], [ %i.om, %.loopexit658 ], [ %i.mh, %bb.u ] ; 6 uses
  %i.on = icmp ugt i32 %.1240, 2
  br i1 %i.on, label %.lr.ph376.preheader, label %._crit_edge377

.lr.ph376.preheader:                              ; preds = %bb.v
  %2 = add i32 %.1240, -3                         ; 2 uses
  %3 = udiv i32 %2, 3
  %4 = and i32 %3, 1
  %lcmp.mod714.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod714.not.not, label %.lr.ph376.prol, label %.lr.ph376.prol.loopexit

.lr.ph376.prol:                                   ; preds = %.lr.ph376.preheader
  %5 = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %6 = load i8, ptr %.4, align 1, !tbaa !51
  %7 = getelementptr inbounds nuw i8, ptr %.5271, i64 1
  store i8 %6, ptr %.5271, align 1, !tbaa !51
  %8 = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %9 = load i8, ptr %5, align 1, !tbaa !51
  %10 = getelementptr inbounds nuw i8, ptr %.5271, i64 2
  store i8 %9, ptr %7, align 1, !tbaa !51
  %11 = getelementptr inbounds nuw i8, ptr %.4, i64 3 ; 2 uses
  %12 = load i8, ptr %8, align 1, !tbaa !51
  %13 = getelementptr inbounds nuw i8, ptr %.5271, i64 3 ; 2 uses
  store i8 %12, ptr %10, align 1, !tbaa !51
  %14 = add i32 %.1240, -3                        ; 2 uses
  br label %.lr.ph376.prol.loopexit

.lr.ph376.prol.loopexit:                          ; preds = %.lr.ph376.prol, %.lr.ph376.preheader
  %.5374.unr = phi ptr [ %.4, %.lr.ph376.preheader ], [ %11, %.lr.ph376.prol ]
  %.2241373.unr = phi i32 [ %.1240, %.lr.ph376.preheader ], [ %14, %.lr.ph376.prol ]
  %.6272372.unr = phi ptr [ %.5271, %.lr.ph376.preheader ], [ %13, %.lr.ph376.prol ]
  %.lcssa692.unr = phi ptr [ poison, %.lr.ph376.preheader ], [ %11, %.lr.ph376.prol ]
  %.lcssa691.unr = phi ptr [ poison, %.lr.ph376.preheader ], [ %13, %.lr.ph376.prol ]
  %.lcssa690.unr = phi i32 [ poison, %.lr.ph376.preheader ], [ %14, %.lr.ph376.prol ]
  %15 = icmp ult i32 %2, 3
  br i1 %15, label %._crit_edge377, label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376.prol.loopexit, %.lr.ph376
  %.5374 = phi ptr [ %i.ou, %.lr.ph376 ], [ %.5374.unr, %.lr.ph376.prol.loopexit ] ; 7 uses
  %.2241373 = phi i32 [ %i.ox, %.lr.ph376 ], [ %.2241373.unr, %.lr.ph376.prol.loopexit ]
  %.6272372 = phi ptr [ %i.ow, %.lr.ph376 ], [ %.6272372.unr, %.lr.ph376.prol.loopexit ] ; 7 uses
  %16 = getelementptr inbounds nuw i8, ptr %.5374, i64 1
  %17 = load i8, ptr %.5374, align 1, !tbaa !51
  %18 = getelementptr inbounds nuw i8, ptr %.6272372, i64 1
  store i8 %17, ptr %.6272372, align 1, !tbaa !51
  %19 = getelementptr inbounds nuw i8, ptr %.5374, i64 2
  %20 = load i8, ptr %16, align 1, !tbaa !51
  %21 = getelementptr inbounds nuw i8, ptr %.6272372, i64 2
  store i8 %20, ptr %18, align 1, !tbaa !51
  %22 = getelementptr inbounds nuw i8, ptr %.5374, i64 3
  %23 = load i8, ptr %19, align 1, !tbaa !51
  %24 = getelementptr inbounds nuw i8, ptr %.6272372, i64 3
  store i8 %23, ptr %21, align 1, !tbaa !51
  %i.oo = getelementptr inbounds nuw i8, ptr %.5374, i64 4
  %i.op = load i8, ptr %22, align 1, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %.6272372, i64 4
  store i8 %i.op, ptr %24, align 1, !tbaa !51
  %i.or = getelementptr inbounds nuw i8, ptr %.5374, i64 5
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.ot = getelementptr inbounds nuw i8, ptr %.6272372, i64 5
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !51
  %i.ou = getelementptr inbounds nuw i8, ptr %.5374, i64 6 ; 2 uses
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !51
  %i.ow = getelementptr inbounds nuw i8, ptr %.6272372, i64 6 ; 2 uses
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !51
  %i.ox = add i32 %.2241373, -6                   ; 3 uses
  %i.oy = icmp ugt i32 %i.ox, 2
  br i1 %i.oy, label %.lr.ph376, label %._crit_edge377, !llvm.loop !25

._crit_edge377:                                   ; preds = %.lr.ph376.prol.loopexit, %.lr.ph376, %bb.v
  %.6272.lcssa = phi ptr [ %.5271, %bb.v ], [ %.lcssa691.unr, %.lr.ph376.prol.loopexit ], [ %i.ow, %.lr.ph376 ] ; 4 uses
  %.2241.lcssa = phi i32 [ %.1240, %bb.v ], [ %.lcssa690.unr, %.lr.ph376.prol.loopexit ], [ %i.ox, %.lr.ph376 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4, %bb.v ], [ %.lcssa692.unr, %.lr.ph376.prol.loopexit ], [ %i.ou, %.lr.ph376 ] ; 2 uses
  %.not324 = icmp eq i32 %.2241.lcssa, 0
  br i1 %.not324, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %._crit_edge377
  %i.oz = load i8, ptr %.5.lcssa, align 1, !tbaa !51
  %i.pa = getelementptr inbounds nuw i8, ptr %.6272.lcssa, i64 1 ; 2 uses
  store i8 %i.oz, ptr %.6272.lcssa, align 1, !tbaa !51
  %i.pb = icmp eq i32 %.2241.lcssa, 2
  br i1 %i.pb, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.pc = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !51
  %i.pe = getelementptr inbounds nuw i8, ptr %.6272.lcssa, i64 2
  store i8 %i.pd, ptr %i.pa, align 1, !tbaa !51
  br label %bb.ah

bb.y:                                             ; preds = %bb.n
  %i.pf = zext nneg i32 %i.fn to i64
  %i.pg = sub nsw i64 0, %i.pf
  %i.ph = getelementptr inbounds i8, ptr %.0266, i64 %i.pg
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.7273 = phi ptr [ %.0266, %bb.y ], [ %i.pq, %bb.z ] ; 6 uses
  %.3242 = phi i32 [ %.0239, %bb.y ], [ %i.pr, %bb.z ]
  %.6 = phi ptr [ %i.ph, %bb.y ], [ %i.po, %bb.z ] ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.pj = load i8, ptr %.6, align 1, !tbaa !51
  %i.pk = getelementptr inbounds nuw i8, ptr %.7273, i64 1
  store i8 %i.pj, ptr %.7273, align 1, !tbaa !51
  %i.pl = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.pm = load i8, ptr %i.pi, align 1, !tbaa !51
  %i.pn = getelementptr inbounds nuw i8, ptr %.7273, i64 2
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !51
  %i.po = getelementptr inbounds nuw i8, ptr %.6, i64 3 ; 2 uses
  %i.pp = load i8, ptr %i.pl, align 1, !tbaa !51
  %i.pq = getelementptr inbounds nuw i8, ptr %.7273, i64 3 ; 3 uses
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !51
  %i.pr = add i32 %.3242, -3                      ; 4 uses
  %i.ps = icmp ugt i32 %i.pr, 2
  br i1 %i.ps, label %bb.z, label %bb.aa, !llvm.loop !26

bb.aa:                                            ; preds = %bb.z
  %.not318 = icmp eq i32 %i.pr, 0
  br i1 %.not318, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pt = load i8, ptr %i.po, align 1, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %.7273, i64 4 ; 2 uses
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !51
  %i.pv = icmp eq i32 %i.pr, 2
  br i1 %i.pv, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.pw = getelementptr inbounds nuw i8, ptr %.6, i64 4
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !51
  %i.py = getelementptr inbounds nuw i8, ptr %.7273, i64 5
  store i8 %i.px, ptr %i.pu, align 1, !tbaa !51
  br label %bb.ah

.lr.ph366:                                        ; preds = %bb.k, %bb.ad
  %i.pz = phi i32 [ %i.qt, %bb.ad ], [ %i.eo, %bb.k ] ; 2 uses
  %i.qa = phi i32 [ %i.qr, %bb.ad ], [ %i.em, %bb.k ] ; 2 uses
  %i.qb = phi i64 [ %i.qq, %bb.ad ], [ %i.el, %bb.k ] ; 3 uses
  %.1248364 = phi ptr [ %i.ql, %bb.ad ], [ %i.eg, %bb.k ]
  %i.qc = and i32 %i.pz, 64
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.ad, label %.loopexit.sink.split.sink.split

bb.ad:                                            ; preds = %.lr.ph366
  %i.qe = getelementptr inbounds nuw i8, ptr %.1248364, i64 2
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !56
  %i.qg = zext i16 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.qg
  %notmask316 = shl nsw i32 -1, %i.pz
  %i.qi = xor i32 %notmask316, -1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = and i64 %i.qb, %i.qj
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qk ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !54  ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = zext nneg i8 %i.qn to i64
  %i.qq = lshr i64 %i.qb, %i.qp                   ; 2 uses
  %i.qr = sub i32 %i.qa, %i.qo                    ; 2 uses
  %i.qs = load i8, ptr %i.ql, align 2, !tbaa !55
  %i.qt = zext i8 %i.qs to i32                    ; 3 uses
  %i.qu = and i32 %i.qt, 16
  %.not315 = icmp eq i32 %i.qu, 0
  br i1 %.not315, label %.lr.ph366, label %._crit_edge367

bb.ae:                                            ; preds = %.lr.ph
  %i.qv = and i32 %i.cv, 64
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qx = getelementptr inbounds nuw i8, ptr %.0247360, i64 2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !56
  %i.qz = zext i16 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qz
  %notmask312 = shl nsw i32 -1, %i.cv
  %i.rb = xor i32 %notmask312, -1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = and i64 %i.cu, %i.rc
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rd ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !54  ; 2 uses
  %i.rh = zext i8 %i.rg to i32
  %i.ri = zext nneg i8 %i.rg to i64
  %i.rj = lshr i64 %i.cu, %i.ri                   ; 2 uses
  %i.rk = sub i32 %i.ct, %i.rh                    ; 2 uses
  %i.rl = load i8, ptr %i.re, align 2, !tbaa !55  ; 2 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ae
  %i.rn = and i32 %i.cv, 32
  %.not311 = icmp eq i32 %i.rn, 0
  br i1 %.not311, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

bb.ah:                                            ; preds = %._crit_edge, %bb.aa, %bb.ac, %bb.ab, %._crit_edge377, %bb.x, %bb.w
  %.6282 = phi ptr [ %.1277, %._crit_edge ], [ %.5281, %bb.x ], [ %.5281, %bb.w ], [ %.5281, %._crit_edge377 ], [ %.5281, %bb.ac ], [ %.5281, %bb.ab ], [ %.5281, %bb.aa ] ; 3 uses
  %.8274 = phi ptr [ %i.cs, %._crit_edge ], [ %i.pe, %bb.x ], [ %i.pa, %bb.w ], [ %.6272.lcssa, %._crit_edge377 ], [ %i.py, %bb.ac ], [ %i.pu, %bb.ab ], [ %i.pq, %bb.aa ] ; 3 uses
  %.8264 = phi i64 [ %.lcssa333, %._crit_edge ], [ %i.fp, %bb.x ], [ %i.fp, %bb.w ], [ %i.fp, %._crit_edge377 ], [ %i.fp, %bb.ac ], [ %i.fp, %bb.ab ], [ %i.fp, %bb.aa ] ; 2 uses
  %.8 = phi i32 [ %.lcssa330, %._crit_edge ], [ %i.fq, %bb.x ], [ %i.fq, %bb.w ], [ %i.fq, %._crit_edge377 ], [ %i.fq, %bb.ac ], [ %i.fq, %bb.ab ], [ %i.fq, %bb.aa ] ; 2 uses
  %i.ro = icmp ult ptr %.6282, %i.h
  %i.rp = icmp ult ptr %.8274, %i.t
  %i.rq = select i1 %i.ro, i1 %i.rp, i1 false
  br i1 %i.rq, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit.sink.split.sink.split:                  ; preds = %bb.p, %.lr.ph366, %bb.ag
  %.str.sink = phi ptr [ @.str.2, %bb.ag ], [ @.str.1, %.lr.ph366 ], [ @.str, %bb.p ]
  %.7283.ph.ph = phi ptr [ %.1277, %bb.ag ], [ %.4280, %.lr.ph366 ], [ %.5281, %bb.p ]
  %.9265.ph.ph = phi i64 [ %i.cu, %bb.ag ], [ %i.qb, %.lr.ph366 ], [ %i.fp, %bb.p ]
  %.9.ph.ph = phi i32 [ %i.ct, %bb.ag ], [ %i.qa, %.lr.ph366 ], [ %i.fq, %bb.p ]
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.str.sink, ptr %i.rr, align 8, !tbaa !63
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %bb.ag
  %.sink = phi i32 [ 16191, %bb.ag ], [ 16209, %.loopexit.sink.split.sink.split ]
  %.7283.ph = phi ptr [ %.1277, %bb.ag ], [ %.7283.ph.ph, %.loopexit.sink.split.sink.split ]
  %.9265.ph = phi i64 [ %i.cu, %bb.ag ], [ %.9265.ph.ph, %.loopexit.sink.split.sink.split ]
  %.9.ph = phi i32 [ %i.ct, %bb.ag ], [ %.9.ph.ph, %.loopexit.sink.split.sink.split ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.rs, align 8, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %.loopexit.sink.split
  %.7283 = phi ptr [ %.7283.ph, %.loopexit.sink.split ], [ %.6282, %bb.ah ]
  %.9275 = phi ptr [ %.0266, %.loopexit.sink.split ], [ %.8274, %bb.ah ] ; 2 uses
  %.9265 = phi i64 [ %.9265.ph, %.loopexit.sink.split ], [ %.8264, %bb.ah ]
  %.9 = phi i32 [ %.9.ph, %.loopexit.sink.split ], [ %.8, %bb.ah ] ; 2 uses
  %i.rt = lshr i32 %.9, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = sub nsw i64 0, %i.ru
  %i.rw = getelementptr inbounds i8, ptr %.7283, i64 %i.rv ; 2 uses
  store ptr %i.rw, ptr %0, align 8, !tbaa !34
  store ptr %.9275, ptr %i.i, align 8, !tbaa !36
  %i.rx = ptrtoint ptr %i.h to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = trunc i64 %i.rz to i32
  %i.sb = add i32 %i.sa, 5
  store i32 %i.sb, ptr %i.d, align 8, !tbaa !35
  %i.sc = ptrtoint ptr %i.t to i64
  %i.sd = ptrtoint ptr %.9275 to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = and i32 %.9, 7                          ; 2 uses
  %notmask325 = shl nsw i32 -1, %i.sf
  %i.sg = xor i32 %notmask325, -1
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = and i64 %.9265, %i.sh
  %i.sj = trunc i64 %i.se to i32
  %i.sk = add i32 %i.sj, 257
  store i32 %i.sk, ptr %i.l, align 8, !tbaa !37
  store i64 %i.si, ptr %i.ad, align 8, !tbaa !45
  store i32 %i.sf, ptr %i.af, align 8, !tbaa !46
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !58, !59, !60}
!10 = distinct !{!10, !58, !59, !60}
end_hunk_0
