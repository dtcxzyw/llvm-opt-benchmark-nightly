Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/spring_electrical?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@multilevel_spring_electrical_embedding:bb.a

bb.ax:                                            ; preds = %bb.aw
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !215
  %i.mp = mul nsw i32 %i.mo, %0                   ; 3 uses
  %i.mq = sext i32 %i.mp to i64                   ; 3 uses
  %.not.i176 = icmp eq i32 %i.mp, 0
  br i1 %.not.i176, label %.thread.i179, label %bb.ay

.thread.i179:                                     ; preds = %bb.ax
  %i.mr = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #23
  br label %gv_calloc.exit180

bb.ay:                                            ; preds = %bb.ax
  %mul.ov.i178 = icmp slt i32 %i.mp, 0
  br i1 %mul.ov.i178, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.mt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.24, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.mq, i64 noundef 8) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.mu = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.mq, i64 noundef 8) #23 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.bb, label %gv_calloc.exit180

bb.bb:                                            ; preds = %bb.ba
  %i.mw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.mx = shl nuw nsw i64 %i.mq, 3
  %i.my = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mw, ptr noundef nonnull @.str.25, i64 noundef %i.mx) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit180:                                ; preds = %bb.ba, %.thread.i179, %bb.aw
  %.0140 = phi ptr [ %4, %bb.aw ], [ %i.mr, %.thread.i179 ], [ %i.mu, %bb.ba ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.0142, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !36 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0142, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !37 ; 2 uses
  %i.nd = load i32, ptr %.0142, align 8, !tbaa !38 ; 5 uses
  %i.ne = add nsw i32 %i.nd, 1                    ; 2 uses
  %i.nf = sext i32 %i.ne to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i.i, label %.preheader.thread.i, label %bb.bc

.preheader.thread.i:                              ; preds = %gv_calloc.exit180
  %i.ng = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #23
  br label %power_law_graph.exit

bb.bc:                                            ; preds = %gv_calloc.exit180
  %mul.ov.i.i181 = icmp slt i32 %i.nd, -1
  br i1 %mul.ov.i.i181, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nh = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ni = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nh, ptr noundef nonnull @.str.24, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.nf, i64 noundef 4) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.nj = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.nf, i64 noundef 4) #23 ; 4 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bf, label %.preheader.i182

bb.bf:                                            ; preds = %bb.be
  %i.nl = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.nm = shl nuw nsw i64 %i.nf, 2
  %i.nn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nl, ptr noundef nonnull @.str.25, i64 noundef %i.nm) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

.preheader.i182:                                  ; preds = %bb.be
  %.not.i183 = icmp eq i32 %i.nd, 0
  br i1 %.not.i183, label %power_law_graph.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %.preheader.i182
  %wide.trip.count60.i = zext nneg i32 %i.nd to i64
  %.pre.i184 = load i32, ptr %i.na, align 4, !tbaa !39
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i185, %.lr.ph52.preheader.i
  %i.no = phi i32 [ %.pre.i184, %.lr.ph52.preheader.i ], [ %i.nq, %._crit_edge.i185 ] ; 2 uses
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %indvars.iv.next58.i, %._crit_edge.i185 ] ; 3 uses
  %.03950.i = phi i32 [ 0, %.lr.ph52.preheader.i ], [ %.039..i, %._crit_edge.i185 ]
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next58.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !39 ; 3 uses
  %i.nr = icmp slt i32 %i.no, %i.nq
  br i1 %i.nr, label %.lr.ph48.preheader.i, label %._crit_edge.i185

.lr.ph48.preheader.i:                             ; preds = %.lr.ph52.i
  %i.ns = sext i32 %i.no to i64                   ; 4 uses
  %wide.trip.count.i186 = sext i32 %i.nq to i64   ; 2 uses
  %i.nt = sub nsw i64 %wide.trip.count.i186, %i.ns ; 3 uses
  %min.iters.check = icmp ult i64 %i.nt, 8
  br i1 %min.iters.check, label %.lr.ph48.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph48.preheader.i
  %n.vec = and i64 %i.nt, -8                      ; 3 uses
  %i.nu = add nsw i64 %n.vec, %i.ns
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.nc, i64 %i.ns
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oc, %vector.body ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.od, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load451 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !39
  %i.nw = zext <4 x i32> %wide.load to <4 x i64>
  %i.nx = zext <4 x i32> %wide.load451 to <4 x i64>
  %i.ny = icmp ne <4 x i64> %broadcast.splat, %i.nw
  %i.nz = icmp ne <4 x i64> %broadcast.splat, %i.nx
  %i.oa = zext <4 x i1> %i.ny to <4 x i32>
  %i.ob = zext <4 x i1> %i.nz to <4 x i32>
  %i.oc = add <4 x i32> %vec.phi, %i.oa           ; 2 uses
  %i.od = add <4 x i32> %vec.phi450, %i.ob        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oe = icmp eq i64 %index.next, %n.vec
  br i1 %i.oe, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.od, %i.oc
  %i.of = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.nt, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %.lr.ph48.preheader.i, %middle.block
  %indvars.iv.i187.ph = phi i64 [ %i.ns, %.lr.ph48.preheader.i ], [ %i.nu, %middle.block ]
  %.03547.i.ph = phi i32 [ 0, %.lr.ph48.preheader.i ], [ %i.of, %middle.block ]
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i
  %indvars.iv.i187 = phi i64 [ %indvars.iv.next.i188, %.lr.ph48.i ], [ %indvars.iv.i187.ph, %.lr.ph48.i.preheader ] ; 2 uses
  %.03547.i = phi i32 [ %spec.select.i, %.lr.ph48.i ], [ %.03547.i.ph, %.lr.ph48.i.preheader ]
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %indvars.iv.i187
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !39
  %i.oi = zext i32 %i.oh to i64
  %i.oj = icmp ne i64 %indvars.iv57.i, %i.oi
  %i.ok = zext i1 %i.oj to i32
  %spec.select.i = add nuw nsw i32 %.03547.i, %i.ok ; 2 uses
  %indvars.iv.next.i188 = add nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i186
  br i1 %exitcond.not.i189, label %._crit_edge.loopexit.i, label %.lr.ph48.i, !llvm.loop !129

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.of, %middle.block ], [ %spec.select.i, %.lr.ph48.i ]
  %i.ol = zext nneg i32 %spec.select.i.lcssa to i64
  br label %._crit_edge.i185

._crit_edge.i185:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph52.i
  %.035.lcssa.i = phi i64 [ 0, %.lr.ph52.i ], [ %i.ol, %._crit_edge.loopexit.i ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.035.lcssa.i ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !39
  %i.oo = add nsw i32 %i.on, 1                    ; 2 uses
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !39
  %.039..i = tail call i32 @llvm.smax.i32(i32 %.03950.i, i32 %i.oo) ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge53.loopexit.i, label %.lr.ph52.i, !llvm.loop !130

._crit_edge53.loopexit.i:                         ; preds = %._crit_edge.i185
  %i.op = uitofp nneg i32 %.039..i to double
  %i.oq = fmul nnan double %i.op, 8.000000e-01
  br label %power_law_graph.exit

power_law_graph.exit:                             ; preds = %.preheader.thread.i, %.preheader.i182, %._crit_edge53.loopexit.i
  %i.or = phi ptr [ %i.nj, %.preheader.i182 ], [ %i.nj, %._crit_edge53.loopexit.i ], [ %i.ng, %.preheader.thread.i ] ; 2 uses
  %.039.lcssa.i = phi double [ 0.000000e+00, %.preheader.i182 ], [ %i.oq, %._crit_edge53.loopexit.i ], [ 0.000000e+00, %.preheader.thread.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !39
  tail call void @free(ptr noundef %i.or) #22
  %i.ou = load double, ptr %2, align 8, !tbaa !28
  %i.ov = fcmp oeq double %i.ou, f0xBFF0008164EF6DE2
  br i1 %i.ov, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %power_law_graph.exit
  %i.ow = sitofp i32 %i.ot to double              ; 2 uses
  %i.ox = fcmp olt double %.039.lcssa.i, %i.ow
  %i.oy = sitofp i32 %i.nd to double
  %i.oz = fmul nnan double %i.oy, 3.000000e-01
  %i.pa = fcmp olt double %i.oz, %i.ow
  %.0.i = select i1 %i.ox, i1 %i.pa, i1 false
  %spec.store.select = select i1 %.0.i, double -1.800000e+00, double -1.000000e+00
  store double %spec.store.select, ptr %2, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %power_law_graph.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.pi = zext nneg i32 %0 to i64                 ; 83 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 5 uses
  %13 = shl nuw nsw i64 %i.pi, 3                  ; 12 uses
  %i.po = shl nuw nsw i64 %i.pi, 3
  %i.pp = shl nuw nsw i64 %i.pi, 3
  %i.pq = shl nuw nsw i64 %i.pi, 3
  %i.pr = shl nuw nsw i64 %i.pi, 3
  %i.ps = shl nuw nsw i64 %i.pi, 3
  %i.pt = add nsw i64 %i.pi, -1                   ; 4 uses
  %xtraiter = and i64 %i.pi, 3                    ; 3 uses
  %i.pu = icmp ult i64 %i.pt, 3
  %unroll_iter = and i64 %i.pi, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod880 = icmp ne i64 %xtraiter, 0
  %min.iters.check687 = icmp ult i32 %0, 4
  %n.vec697 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n712 = icmp eq i64 %n.vec697, %i.pi
  %xtraiter881 = and i64 %i.pi, 1
  %lcmp.mod882.not = icmp eq i64 %xtraiter881, 0
  %i.pv = add nsw i64 %i.pi, -1
  %xtraiter884 = and i64 %i.pi, 3                 ; 3 uses
  %i.pw = icmp ult i64 %i.pt, 3
  %unroll_iter889 = and i64 %i.pi, 2147483644
  %lcmp.mod886.not = icmp eq i64 %xtraiter884, 0
  %lcmp.mod888 = icmp ne i64 %xtraiter884, 0
  %min.iters.check659 = icmp ult i32 %0, 2
  %n.vec661 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n669 = icmp eq i64 %n.vec661, %i.pi
  %min.iters.check639 = icmp ult i32 %0, 4
  %n.vec645 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n656 = icmp eq i64 %n.vec645, %i.pi
  %xtraiter891 = and i64 %i.pi, 1
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  %i.px = add nsw i64 %i.pi, -1
  %xtraiter894 = and i64 %i.pi, 3                 ; 3 uses
  %i.py = icmp ult i64 %i.pt, 3
  %unroll_iter899 = and i64 %i.pi, 2147483644
  %lcmp.mod896.not = icmp eq i64 %xtraiter894, 0
  %lcmp.mod898 = icmp ne i64 %xtraiter894, 0
  %min.iters.check603 = icmp ult i32 %0, 4
  %n.vec613 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n628 = icmp eq i64 %n.vec613, %i.pi
  %xtraiter901 = and i64 %i.pi, 1
  %lcmp.mod902.not = icmp eq i64 %xtraiter901, 0
  %i.pz = add nsw i64 %i.pi, -1
  %min.iters.check566 = icmp ult i32 %0, 2
  %n.vec576 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n588 = icmp eq i64 %n.vec576, %i.pi
  %xtraiter903 = and i64 %i.pi, 1
  %lcmp.mod904.not = icmp eq i64 %xtraiter903, 0
  %i.qa = add nsw i64 %i.pi, -1
  %min.iters.check528 = icmp ult i32 %0, 2
  %n.vec537 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n549 = icmp eq i64 %n.vec537, %i.pi
  %xtraiter905 = and i64 %i.pi, 1
  %lcmp.mod906.not = icmp eq i64 %xtraiter905, 0
  %i.qb = add nsw i64 %i.pi, -1
  %xtraiter909 = and i64 %i.pi, 3                 ; 3 uses
  %i.qc = icmp ult i64 %i.pt, 3
  %unroll_iter915 = and i64 %i.pi, 2147483644
  %lcmp.mod911.not = icmp eq i64 %xtraiter909, 0
  %lcmp.mod914 = icmp ne i64 %xtraiter909, 0
  %min.iters.check502 = icmp ult i32 %0, 2
  %n.vec504 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n512 = icmp eq i64 %n.vec504, %i.pi
  %min.iters.check486 = icmp ult i32 %0, 4
  %n.vec488 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n499 = icmp eq i64 %n.vec488, %i.pi
  %xtraiter917 = and i64 %i.pi, 1
  %lcmp.mod918.not = icmp eq i64 %xtraiter917, 0
  %i.qd = add nsw i64 %i.pi, -1
  %min.iters.check469 = icmp ult i32 %0, 4
  %n.vec471 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n480 = icmp eq i64 %n.vec471, %i.pi
  %min.iters.check453 = icmp ult i32 %0, 4
  %n.vec455 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec455, %i.pi
  br label %bb.bi

bb.bi:                                            ; preds = %prolongate.exit, %bb.bh
  %.0141 = phi ptr [ %i.mk, %bb.bh ], [ %i.aol, %prolongate.exit ] ; 6 uses
  %.1 = phi ptr [ %.0140, %bb.bh ], [ %.0, %prolongate.exit ] ; 38 uses
  %i.qe = load i32, ptr %i.pb, align 4, !tbaa !22
  switch i32 %i.qe, label %._crit_edge [
    i32 0, label %bb.bj
    i32 2, label %bb.bn
    i32 3, label %bb.bk
  ]

._crit_edge:                                      ; preds = %bb.bi
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !216
  br label %bb.cu

bb.bj:                                            ; preds = %bb.bi
  %i.qf = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !216
  call fastcc void @spring_electrical_embedding_slow(i32 noundef %0, ptr noundef %i.qg, ptr noundef nonnull %2, ptr noundef %.1, ptr noundef nonnull %7)
  br label %bb.el

bb.bk:                                            ; preds = %bb.bi
  %i.qh = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !216 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !38
  %i.qk = icmp sgt i32 %i.qj, 10000
  br i1 %i.qk, label %bb.bl, label %bb.cu

bb.bl:                                            ; preds = %bb.bk
  %i.ql = load i8, ptr @Verbose, align 1
  %.not407 = icmp eq i8 %i.ql, 0
  br i1 %.not407, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qm = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.qn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qm, ptr noundef nonnull @.str.12, i32 noundef 10000) #21 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bi, %bb.bm, %bb.bl
  %i.qo = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !216 ; 5 uses
  %i.qq = load double, ptr %2, align 8, !tbaa !28 ; 2 uses
  %i.qr = load double, ptr %i.pc, align 8, !tbaa !29 ; 2 uses
  %i.qs = load i32, ptr %i.pd, align 8, !tbaa !17 ; 2 uses
  %i.qt = load double, ptr %i.pe, align 8, !tbaa !18
  %i.qu = load i8, ptr %i.pf, align 4
  %i.qv = and i8 %i.qu, 2
  %.not183.i = icmp eq i8 %i.qv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.qw = load i32, ptr %i.pg, align 4, !tbaa !16 ; 2 uses
  %i.qx = icmp eq ptr %i.qp, null
  %i.qy = icmp slt i32 %i.qs, 1
  %or.cond.i190 = select i1 %i.qx, i1 true, i1 %i.qy
  br i1 %or.cond.i190, label %spring_electrical_embedding_fast.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !44 ; 6 uses
  %i.rb = icmp slt i32 %i.ra, 1
  br i1 %i.rb, label %spring_electrical_embedding_fast.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rc = load i32, ptr %i.qp, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %9, i8 0, i64 184, i1 false), !alias.scope !217
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i191 = icmp eq i32 %i.rc, %i.ra
  br i1 %.not.i191, label %bb.bq, label %.thread.i192

.thread.i192:                                     ; preds = %bb.bp
  store i32 -100, ptr %7, align 4, !tbaa !39
  store i32 %i.qw, ptr %i.pg, align 4, !tbaa !16
  br label %bb.ct

bb.bq:                                            ; preds = %bb.bp
  %i.rd = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.qp, i1 noundef zeroext true) #22 ; 7 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 32 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !36 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 40 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !37
  %i.ri = load i8, ptr %i.pf, align 4
  %i.rj = trunc i8 %i.ri to i1
  br i1 %i.rj, label %.lr.ph.preheader.i200, label %.loopexit187.i

.lr.ph.preheader.i200:                            ; preds = %bb.bq
  %i.rk = load i32, ptr %i.ph, align 8, !tbaa !19
  call void @srand(i32 noundef %i.rk) #22
  %i.rl = mul i32 %i.ra, %0
  %smax.i = call i32 @llvm.smax.i32(i32 %i.rl, i32 1)
  %wide.trip.count.i201 = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202, %.lr.ph.preheader.i200
  %indvars.iv.i203 = phi i64 [ 0, %.lr.ph.preheader.i200 ], [ %indvars.iv.next.i204, %.lr.ph.i202 ] ; 2 uses
  %i.rm = call double @drand() #22
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i203
  store double %i.rm, ptr %i.rn, align 8, !tbaa !12
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i203, 1 ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %indvars.iv.next.i204, %wide.trip.count.i201
  br i1 %exitcond.not.i205, label %.loopexit187.i, label %.lr.ph.i202, !llvm.loop !133

.loopexit187.i:                                   ; preds = %.lr.ph.i202, %bb.bq
  %i.ro = fcmp olt double %i.qr, 0.000000e+00
  br i1 %i.ro, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.loopexit187.i
  %i.rp = load ptr, ptr %i.re, align 8, !tbaa !36 ; 3 uses
  %i.rq = load ptr, ptr %i.rg, align 8, !tbaa !37
  %i.rr = load i32, ptr %i.rd, align 8, !tbaa !38 ; 3 uses
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.rs ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !39 ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %average_edge_length.exit.i, label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %bb.br
  %i.rw = icmp sgt i32 %i.rr, 0
  br i1 %i.rw, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.preheader45.i.i
  %wide.trip.count67.i.i = zext nneg i32 %i.rr to i64
  %.pre.i.i = load i32, ptr %i.rp, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.loopexit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.rx = phi i32 [ %.pre.i.i, %.lr.ph.split.us.preheader.i.i ], [ %i.tg, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next65.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.04153.us.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i ], [ %.1.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !39 ; 2 uses
  %i.sa = icmp slt i32 %i.rx, %i.rz
  br i1 %i.sa, label %.preheader.lr.ph.us.i.i, label %.loopexit.us.i.i

.preheader.lr.ph.us.i.i:                          ; preds = %.lr.ph.split.us.i.i
  %i.sb = mul nuw nsw i64 %indvars.iv64.i.i, %i.pi
  %i.sc = sext i32 %i.rx to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.sb ; 5 uses
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %._crit_edge.us.us.i.i ], [ %i.sc, %.preheader.lr.ph.us.i.i ] ; 2 uses
  %.148.us.us.i.i = phi double [ %i.tc, %._crit_edge.us.us.i.i ], [ %.04153.us.i.i, %.preheader.lr.ph.us.i.i ]
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %indvars.iv61.i.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !39
  %i.sf = mul nsw i32 %i.se, %0
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pu, label %.epil.preheader, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ] ; 5 uses
  %.04046.us.us.i.i = phi double [ %i.sx, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.sj = load double, ptr %gep.i.i, align 8, !tbaa !12
  %i.sk = fsub double %i.sj, %i.si                ; 2 uses
  %i.sl = call double @llvm.fmuladd.f64(double %i.sk, double %i.sk, double %.04046.us.us.i.i)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sn = load double, ptr %gep.i.i.1, align 8, !tbaa !12
  %i.so = fsub double %i.sn, %i.si                ; 2 uses
  %i.sp = call double @llvm.fmuladd.f64(double %i.so, double %i.so, double %i.sl)
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.sr = load double, ptr %gep.i.i.2, align 8, !tbaa !12
  %i.ss = fsub double %i.sr, %i.si                ; 2 uses
  %i.st = call double @llvm.fmuladd.f64(double %i.ss, double %i.ss, double %i.sp)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sv = load double, ptr %gep.i.i.3, align 8, !tbaa !12
  %i.sw = fsub double %i.sv, %i.si                ; 2 uses
  %i.sx = call double @llvm.fmuladd.f64(double %i.sw, double %i.sw, double %i.st) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !0

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.04046.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.sx, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod880)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.bs ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.04046.us.us.i.i.epil = phi double [ %i.ta, %bb.bs ], [ %.04046.us.us.i.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.bs ], [ 0, %.epil.preheader ]
  %gep.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil
  %i.sy = load double, ptr %gep.i.i.epil, align 8, !tbaa !12
  %i.sz = fsub double %i.sy, %i.si                ; 2 uses
  %i.ta = call double @llvm.fmuladd.f64(double %i.sz, double %i.sz, double %.04046.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i, label %bb.bs, !llvm.loop !134

._crit_edge.us.us.i.i:                            ; preds = %bb.bs, %._crit_edge.us.us.i.i.unr-lcssa
  %.lcssa = phi double [ %i.sx, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ta, %bb.bs ]
  %i.tb = call double @sqrt(double noundef %.lcssa) #22
  %i.tc = fadd double %.148.us.us.i.i, %i.tb      ; 2 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.td = load i32, ptr %i.ry, align 4, !tbaa !39 ; 2 uses
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp slt i64 %indvars.iv.next62.i.i, %i.te
  br i1 %i.tf, label %.preheader.us.us.i.i, label %.loopexit.us.i.i, !llvm.loop !1

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %i.tg = phi i32 [ %i.rz, %.lr.ph.split.us.i.i ], [ %i.td, %._crit_edge.us.us.i.i ]
  %.1.lcssa.us.i.i = phi double [ %.04153.us.i.i, %.lr.ph.split.us.i.i ], [ %i.tc, %._crit_edge.us.us.i.i ] ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.us.i.i
  %.pre69.i.i = load i32, ptr %i.rt, align 4, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader45.i.i
  %i.th = phi i32 [ %i.ru, %.preheader45.i.i ], [ %.pre69.i.i, %._crit_edge.loopexit.i.i ]
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %.preheader45.i.i ], [ %.1.lcssa.us.i.i, %._crit_edge.loopexit.i.i ]
  %i.ti = sitofp i32 %i.th to double
  %i.tj = fdiv double %.041.lcssa.i.i, %i.ti
  br label %average_edge_length.exit.i

average_edge_length.exit.i:                       ; preds = %._crit_edge.i.i, %bb.br
  %.042.i.i = phi double [ %i.tj, %._crit_edge.i.i ], [ 1.000000e+00, %bb.br ] ; 2 uses
  store double %.042.i.i, ptr %i.pc, align 8, !tbaa !29
  br label %bb.bt

bb.bt:                                            ; preds = %average_edge_length.exit.i, %.loopexit187.i
  %.0154.i = phi double [ %.042.i.i, %average_edge_length.exit.i ], [ %i.qr, %.loopexit187.i ] ; 3 uses
  %i.tk = fcmp ult double %i.qq, 0.000000e+00
  br i1 %i.tk, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0155.i = phi double [ -1.000000e+00, %bb.bu ], [ %i.qq, %bb.bt ] ; 3 uses
  %i.tl = fsub double 1.000000e+00, %.0155.i
  %i.tm = call double @pow(double noundef %.0154.i, double noundef %i.tl) #22
  %i.tn = fsub double 2.000000e+00, %.0155.i
  %i.to = fdiv double %i.tn, 3.000000e+00
  %i.tp = call double @pow(double noundef 2.000000e-01, double noundef %i.to) #22
  %i.tq = fdiv double %i.tp, %.0154.i             ; 4 uses
  %i.tr = mul nuw nsw i32 %i.ra, %0
  %i.ts = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tt = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.ts, i64 noundef 8) #23 ; 9 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %bb.bw, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.bv
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %wide.trip.count220.i = zext nneg i32 %i.ra to i64 ; 3 uses
  %14 = mul i64 %i.pr, %wide.trip.count220.i      ; 2 uses
  %scevgep636 = getelementptr i8, ptr %i.tt, i64 %14
  %scevgep637.a = getelementptr i8, ptr %.1, i64 %14
  %scevgep684.a = getelementptr i8, ptr %.1, i64 %13
  %broadcast.splatinsert700 = insertelement <2 x double> poison, double %i.tq, i64 0
  %broadcast.splat701 = shufflevector <2 x double> %broadcast.splatinsert700, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0641 = icmp ult ptr %.1, %scevgep636
  %bound1642 = icmp ult ptr %i.tt, %scevgep637.a
  %found.conflict643 = and i1 %bound0641, %bound1642
  br label %.lr.ph196.preheader.i

bb.bw:                                            ; preds = %bb.bv
  %i.tw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.tx = shl nuw nsw i64 %i.ts, 3
  %i.ty = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tw, ptr noundef nonnull @.str.25, i64 noundef %i.tx) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.lr.ph196.preheader.i:                            ; preds = %update_step.exit.i, %gv_calloc.exit.preheader.i
  %i.tz = phi i32 [ %i.zl, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ] ; 4 uses
  %.val.i193 = phi i32 [ %.val242.i, %update_step.exit.i ], [ %i.qw, %gv_calloc.exit.preheader.i ] ; 13 uses
  %.0153.i = phi double [ %.0.i.i, %update_step.exit.i ], [ %i.qt, %gv_calloc.exit.preheader.i ] ; 9 uses
  %.0151.i = phi double [ %i.xj, %update_step.exit.i ], [ 0.000000e+00, %gv_calloc.exit.preheader.i ] ; 2 uses
  %.0150.i = phi i32 [ %i.yl, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ]
  %i.ua = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.ra, i32 noundef %.val.i193, ptr noundef %.1) #22 ; 3 uses
  call void @QuadTree_get_repulsive_force(ptr noundef %i.ua, ptr noundef nonnull %i.tt, ptr noundef %.1, double noundef 6.000000e-01, double noundef %.0155.i, double noundef %i.tm, ptr noundef nonnull %i.g) #22
  %.pre.i194 = load i32, ptr %i.rf, align 4, !tbaa !39
  br label %.lr.ph196.i

.loopexit185.i:                                   ; preds = %.loopexit.i199, %.lr.ph196.i
  %i.ub = phi i32 [ %i.ui, %.lr.ph196.i ], [ %i.wl, %.loopexit.i199 ]
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.lr.ph203.i.preheader, label %.lr.ph196.i, !llvm.loop !135

.lr.ph203.i.preheader:                            ; preds = %.loopexit185.i
  %broadcast.splatinsert646 = insertelement <2 x double> poison, double %.0153.i, i64 0
  %broadcast.splat647 = shufflevector <2 x double> %broadcast.splatinsert646, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph203.i

.lr.ph196.i:                                      ; preds = %.loopexit185.i, %.lr.ph196.preheader.i
  %i.uc = phi i32 [ %.pre.i194, %.lr.ph196.preheader.i ], [ %i.ub, %.loopexit185.i ] ; 2 uses
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph196.preheader.i ], [ %indvars.iv.next218.i, %.loopexit185.i ] ; 5 uses
  %i.ud = mul i64 %i.ps, %indvars.iv217.i
  %i.ue = add i64 %13, %i.ud                      ; 2 uses
  %scevgep683 = getelementptr i8, ptr %.1, i64 %i.ue
  %scevgep685 = getelementptr i8, ptr %i.tt, i64 %i.ue ; 2 uses
  %i.uf = mul i64 %indvars.iv217.i, %i.pi         ; 2 uses
  %i.ug = getelementptr [8 x i8], ptr %i.tt, i64 %i.uf ; 6 uses
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next218.i ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !39 ; 3 uses
  %i.uj = icmp slt i32 %i.uc, %i.ui
  br i1 %i.uj, label %.lr.ph194.preheader.i, label %.loopexit185.i

.lr.ph194.preheader.i:                            ; preds = %.lr.ph196.i
  %i.uk = sext i32 %i.uc to i64
  %i.ul = trunc nuw nsw i64 %indvars.iv217.i to i32
  %invariant.gep.i197 = getelementptr [8 x i8], ptr %.1, i64 %i.uf ; 5 uses
  %bound0692 = icmp ult ptr %i.ug, %scevgep683
  %bound1693 = icmp ult ptr %invariant.gep.i197, %scevgep685
  %found.conflict694 = and i1 %bound0692, %bound1693
  br label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.loopexit.i199, %.lr.ph194.preheader.i
  %i.um = phi i32 [ %i.ui, %.lr.ph194.preheader.i ], [ %i.wl, %.loopexit.i199 ]
  %indvars.iv214.i = phi i64 [ %i.uk, %.lr.ph194.preheader.i ], [ %indvars.iv.next215.i, %.loopexit.i199 ] ; 2 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %indvars.iv214.i ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !39 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = icmp eq i64 %indvars.iv217.i, %i.up
  br i1 %i.uq, label %.loopexit.i199, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph194.i
  %i.ur = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.ul, i32 noundef %i.uo) #22 ; 4 uses
  %i.us = load i32, ptr %i.un, align 4, !tbaa !39
  %i.ut = mul nsw i32 %i.us, %0
  %i.uu = sext i32 %i.ut to i64                   ; 2 uses
  %invariant.gep264.i = getelementptr [8 x i8], ptr %.1, i64 %i.uu ; 5 uses
  br i1 %min.iters.check687, label %scalar.ph686.preheader, label %vector.memcheck688

vector.memcheck688:                               ; preds = %bb.bx
  %i.uv = shl nsw i64 %i.uu, 3
  %i.uw = getelementptr i8, ptr %scevgep684.a, i64 %i.uv
  %bound0689 = icmp ult ptr %i.ug, %i.uw
  %bound1690 = icmp ult ptr %invariant.gep264.i, %scevgep685
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx695 = or i1 %found.conflict691, %found.conflict694
  br i1 %conflict.rdx695, label %scalar.ph686.preheader, label %vector.ph696

vector.ph696:                                     ; preds = %vector.memcheck688
  %broadcast.splatinsert698 = insertelement <2 x double> poison, double %i.ur, i64 0
  %broadcast.splat699 = shufflevector <2 x double> %broadcast.splatinsert698, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body702

vector.body702:                                   ; preds = %vector.body702, %vector.ph696
  %index703 = phi i64 [ 0, %vector.ph696 ], [ %index.next710, %vector.body702 ] ; 4 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %index703 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load704.a = load <2 x double>, ptr %i.ux, align 8, !tbaa !12, !alias.scope !218
  %wide.load705.a = load <2 x double>, ptr %i.uy, align 8, !tbaa !12, !alias.scope !218
  %i.uz = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %index703 ; 2 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  %wide.load706.a = load <2 x double>, ptr %i.uz, align 8, !tbaa !12, !alias.scope !219
  %wide.load707.a = load <2 x double>, ptr %i.va, align 8, !tbaa !12, !alias.scope !219
  %i.vb = fsub <2 x double> %wide.load704.a, %wide.load706.a
  %i.vc = fsub <2 x double> %wide.load705.a, %wide.load707.a
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %index703 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16 ; 2 uses
  %wide.load708.a = load <2 x double>, ptr %i.vd, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %wide.load709 = load <2 x double>, ptr %i.ve, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %i.vf = fneg <2 x double> %i.vb
  %i.vg = fneg <2 x double> %i.vc
  %i.vh = fmul <2 x double> %broadcast.splat701, %i.vf
  %i.vi = fmul <2 x double> %broadcast.splat701, %i.vg
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %broadcast.splat699, <2 x double> %wide.load708.a)
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %broadcast.splat699, <2 x double> %wide.load709)
  store <2 x double> %i.vj, ptr %i.vd, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  store <2 x double> %i.vk, ptr %i.ve, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %index.next710 = add nuw i64 %index703, 4       ; 2 uses
  %i.vl = icmp eq i64 %index.next710, %n.vec697
  br i1 %i.vl, label %middle.block711, label %vector.body702, !llvm.loop !140

middle.block711:                                  ; preds = %vector.body702
  br i1 %cmp.n712, label %.loopexit.loopexit.i, label %scalar.ph686.preheader

scalar.ph686.preheader:                           ; preds = %vector.memcheck688, %bb.bx, %middle.block711
  %indvars.iv209.i.ph = phi i64 [ 0, %vector.memcheck688 ], [ 0, %bb.bx ], [ %n.vec697, %middle.block711 ] ; 6 uses
  br i1 %lcmp.mod882.not, label %scalar.ph686.prol.loopexit, label %scalar.ph686.prol

scalar.ph686.prol:                                ; preds = %scalar.ph686.preheader
  %gep.i198.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i.ph
  %i.vm = load double, ptr %gep.i198.prol, align 8, !tbaa !12
  %gep265.i.prol = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i.ph
  %i.vn = load double, ptr %gep265.i.prol, align 8, !tbaa !12
  %i.vo = fsub double %i.vm, %i.vn
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv209.i.ph ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !12
  %i.vr = fneg double %i.vo
  %i.vs = fmul double %i.tq, %i.vr
  %i.vt = call double @llvm.fmuladd.f64(double %i.vs, double %i.ur, double %i.vq)
  store double %i.vt, ptr %i.vp, align 8, !tbaa !12
  %indvars.iv.next210.i.prol = or disjoint i64 %indvars.iv209.i.ph, 1
  br label %scalar.ph686.prol.loopexit

scalar.ph686.prol.loopexit:                       ; preds = %scalar.ph686.prol, %scalar.ph686.preheader
  %indvars.iv209.i.unr = phi i64 [ %indvars.iv209.i.ph, %scalar.ph686.preheader ], [ %indvars.iv.next210.i.prol, %scalar.ph686.prol ]
  %i.vu = icmp eq i64 %indvars.iv209.i.ph, %i.pv
  br i1 %i.vu, label %.loopexit.loopexit.i, label %scalar.ph686

scalar.ph686:                                     ; preds = %scalar.ph686.prol.loopexit, %scalar.ph686
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i.1, %scalar.ph686 ], [ %indvars.iv209.i.unr, %scalar.ph686.prol.loopexit ] ; 5 uses
  %gep.i198 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i
  %i.vv = load double, ptr %gep.i198, align 8, !tbaa !12
  %gep265.i = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i
  %i.vw = load double, ptr %gep265.i, align 8, !tbaa !12
  %i.vx = fsub double %i.vv, %i.vw
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv209.i ; 2 uses
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !12
  %i.wa = fneg double %i.vx
  %i.wb = fmul double %i.tq, %i.wa
  %i.wc = call double @llvm.fmuladd.f64(double %i.wb, double %i.ur, double %i.vz)
  store double %i.wc, ptr %i.vy, align 8, !tbaa !12
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 3 uses
  %gep.i198.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv.next210.i
  %i.wd = load double, ptr %gep.i198.1, align 8, !tbaa !12
  %gep265.i.1 = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv.next210.i
  %i.we = load double, ptr %gep265.i.1, align 8, !tbaa !12
  %i.wf = fsub double %i.wd, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.next210.i ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !12
  %i.wi = fneg double %i.wf
  %i.wj = fmul double %i.tq, %i.wi
  %i.wk = call double @llvm.fmuladd.f64(double %i.wj, double %i.ur, double %i.wh)
  store double %i.wk, ptr %i.wg, align 8, !tbaa !12
  %indvars.iv.next210.i.1 = add nuw nsw i64 %indvars.iv209.i, 2 ; 2 uses
  %exitcond213.not.i.1 = icmp eq i64 %indvars.iv.next210.i.1, %i.pi
  br i1 %exitcond213.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph686, !llvm.loop !141

.loopexit.loopexit.i:                             ; preds = %scalar.ph686.prol.loopexit, %scalar.ph686, %middle.block711
  %.pre244.i = load i32, ptr %i.uh, align 4, !tbaa !39
  br label %.loopexit.i199

.loopexit.i199:                                   ; preds = %.loopexit.loopexit.i, %.lr.ph194.i
  %i.wl = phi i32 [ %.pre244.i, %.loopexit.loopexit.i ], [ %i.um, %.lr.ph194.i ] ; 3 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next215.i, %i.wm
  br i1 %i.wn, label %.lr.ph194.i, label %.loopexit185.i, !llvm.loop !142

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.preheader, %.loopexit847
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.loopexit847 ], [ 0, %.lr.ph203.i.preheader ] ; 2 uses
  %.1202.i = phi double [ %i.xj, %.loopexit847 ], [ 0.000000e+00, %.lr.ph203.i.preheader ]
  %i.wo = mul nuw nsw i64 %indvars.iv237.i, %i.pi ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.wo ; 11 uses
  br i1 %i.pw, label %.epil.preheader883, label %.lr.ph203.i.new

.lr.ph203.i.new:                                  ; preds = %.lr.ph203.i, %.lr.ph203.i.new
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ] ; 5 uses
  %.0152198.i = phi double [ %i.xe, %.lr.ph203.i.new ], [ 0.000000e+00, %.lr.ph203.i ]
  %niter890 = phi i64 [ %niter890.next.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ]
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !12 ; 2 uses
  %i.ws = call double @llvm.fmuladd.f64(double %i.wr, double %i.wr, double %.0152198.i)
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !12 ; 2 uses
  %i.ww = call double @llvm.fmuladd.f64(double %i.wv, double %i.wv, double %i.ws)
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !12 ; 2 uses
  %i.xa = call double @llvm.fmuladd.f64(double %i.wz, double %i.wz, double %i.ww)
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !12 ; 2 uses
  %i.xe = call double @llvm.fmuladd.f64(double %i.xd, double %i.xd, double %i.xa) ; 3 uses
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %niter890.next.3 = add i64 %niter890, 4         ; 2 uses
  %niter890.ncmp.3 = icmp eq i64 %niter890.next.3, %unroll_iter889
  br i1 %niter890.ncmp.3, label %.unr-lcssa, label %.lr.ph203.i.new, !llvm.loop !143

.unr-lcssa:                                       ; preds = %.lr.ph203.i.new
  br i1 %lcmp.mod886.not, label %.epilog-lcssa, label %.epil.preheader883

.epil.preheader883:                               ; preds = %.unr-lcssa, %.lr.ph203.i
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph203.i ], [ %indvars.iv.next223.i.3, %.unr-lcssa ]
  %.0152198.i.epil.init = phi double [ 0.000000e+00, %.lr.ph203.i ], [ %i.xe, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod888)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader883
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv222.i.epil.init, %.epil.preheader883 ], [ %indvars.iv.next223.i.epil, %bb.by ] ; 2 uses
  %.0152198.i.epil = phi double [ %.0152198.i.epil.init, %.epil.preheader883 ], [ %i.xh, %bb.by ]
  %epil.iter885 = phi i64 [ 0, %.epil.preheader883 ], [ %epil.iter885.next, %bb.by ]
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i.epil
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !12 ; 2 uses
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.xg, double %.0152198.i.epil) ; 2 uses
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %epil.iter885.next = add i64 %epil.iter885, 1   ; 2 uses
  %epil.iter885.cmp.not = icmp eq i64 %epil.iter885.next, %xtraiter884
  br i1 %epil.iter885.cmp.not, label %.epilog-lcssa, label %bb.by, !llvm.loop !144

.epilog-lcssa:                                    ; preds = %bb.by, %.unr-lcssa
  %.lcssa858 = phi double [ %i.xe, %.unr-lcssa ], [ %i.xh, %bb.by ]
  %i.xi = call double @sqrt(double noundef %.lcssa858) #22 ; 4 uses
end_hunk_0
begin_hunk_1_@multilevel_spring_electrical_embedding:bb.a
  %i.aam = icmp samesign ugt i32 %i.aak, 44       ; 4 uses
  br i1 %i.aam, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(180) %.sroa.5.0..sroa_idx.i, i8 0, i64 180, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.val328.i = phi i32 [ %i.aaf, %bb.cx ], [ 0, %bb.cw ]
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i207 = icmp eq i32 %i.aai, %i.aak
  br i1 %.not.i207, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 -100, ptr %7, align 4, !tbaa !39
  br label %bb.eg

bb.da:                                            ; preds = %bb.cy
  %i.aan = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.zy, i1 noundef zeroext true) #22 ; 6 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 32 ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !36 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 40 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !37
  %i.aas = load i8, ptr %i.pf, align 4
  %i.aat = trunc i8 %i.aas to i1
  br i1 %i.aat, label %.lr.ph.preheader.i253, label %.loopexit241.i

.lr.ph.preheader.i253:                            ; preds = %bb.da
  %i.aau = load i32, ptr %i.ph, align 8, !tbaa !19
  call void @srand(i32 noundef %i.aau) #22
  %i.aav = mul i32 %i.aai, %0
  %smax.i254 = call i32 @llvm.smax.i32(i32 %i.aav, i32 1)
  %wide.trip.count.i255 = zext nneg i32 %smax.i254 to i64
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256, %.lr.ph.preheader.i253
  %indvars.iv.i257 = phi i64 [ 0, %.lr.ph.preheader.i253 ], [ %indvars.iv.next.i258, %.lr.ph.i256 ] ; 2 uses
  %i.aaw = call double @drand() #22
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i257
  store double %i.aaw, ptr %i.aax, align 8, !tbaa !12
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i257, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i255
  br i1 %exitcond.not.i259, label %.loopexit241.i, label %.lr.ph.i256, !llvm.loop !154

.loopexit241.i:                                   ; preds = %.lr.ph.i256, %bb.da
  %i.aay = fcmp olt double %i.aaa, 0.000000e+00
  br i1 %i.aay, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %.loopexit241.i
  %i.aaz = load ptr, ptr %i.aao, align 8, !tbaa !36 ; 3 uses
  %i.aba = load ptr, ptr %i.aaq, align 8, !tbaa !37
  %i.abb = load i32, ptr %i.aan, align 8, !tbaa !38 ; 3 uses
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.aaz, i64 %i.abc ; 2 uses
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !39 ; 2 uses
  %i.abf = icmp eq i32 %i.abe, 0
  br i1 %i.abf, label %average_edge_length.exit.i227, label %.preheader45.i.i224

.preheader45.i.i224:                              ; preds = %bb.db
  %i.abg = icmp sgt i32 %i.abb, 0
  br i1 %i.abg, label %.lr.ph.split.us.preheader.i.i229, label %._crit_edge.i.i225

.lr.ph.split.us.preheader.i.i229:                 ; preds = %.preheader45.i.i224
  %wide.trip.count67.i.i230 = zext nneg i32 %i.abb to i64
  %.pre.i.i231 = load i32, ptr %i.aaz, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i232

.lr.ph.split.us.i.i232:                           ; preds = %.loopexit.us.i.i236, %.lr.ph.split.us.preheader.i.i229
  %i.abh = phi i32 [ %.pre.i.i231, %.lr.ph.split.us.preheader.i.i229 ], [ %i.acq, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv64.i.i233 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i229 ], [ %indvars.iv.next65.i.i235, %.loopexit.us.i.i236 ] ; 2 uses
  %.04153.us.i.i234 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i229 ], [ %.1.lcssa.us.i.i237, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv.next65.i.i235 = add nuw nsw i64 %indvars.iv64.i.i233, 1 ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.next65.i.i235 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !39 ; 2 uses
  %i.abk = icmp slt i32 %i.abh, %i.abj
  br i1 %i.abk, label %.preheader.lr.ph.us.i.i241, label %.loopexit.us.i.i236

.preheader.lr.ph.us.i.i241:                       ; preds = %.lr.ph.split.us.i.i232
  %i.abl = mul nuw nsw i64 %indvars.iv64.i.i233, %i.pi
  %i.abm = sext i32 %i.abh to i64
  %invariant.gep.i.i242 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.abl ; 5 uses
  br label %.preheader.us.us.i.i243

.preheader.us.us.i.i243:                          ; preds = %._crit_edge.us.us.i.i251, %.preheader.lr.ph.us.i.i241
  %indvars.iv61.i.i244 = phi i64 [ %indvars.iv.next62.i.i252, %._crit_edge.us.us.i.i251 ], [ %i.abm, %.preheader.lr.ph.us.i.i241 ] ; 2 uses
  %.148.us.us.i.i245 = phi double [ %i.acm, %._crit_edge.us.us.i.i251 ], [ %.04153.us.i.i234, %.preheader.lr.ph.us.i.i241 ]
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.aba, i64 %indvars.iv61.i.i244
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !39
  %i.abp = mul nsw i32 %i.abo, %0
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.abq
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !12 ; 5 uses
  br i1 %i.py, label %.epil.preheader893, label %.preheader.us.us.i.i243.new

.preheader.us.us.i.i243.new:                      ; preds = %.preheader.us.us.i.i243, %.preheader.us.us.i.i243.new
  %indvars.iv.i.i246 = phi i64 [ %indvars.iv.next.i.i249.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ] ; 5 uses
  %.04046.us.us.i.i247 = phi double [ %i.ach, %.preheader.us.us.i.i243.new ], [ 0.000000e+00, %.preheader.us.us.i.i243 ]
  %niter900 = phi i64 [ %niter900.next.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ]
  %gep.i.i248 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %i.abt = load double, ptr %gep.i.i248, align 8, !tbaa !12
  %i.abu = fsub double %i.abt, %i.abs             ; 2 uses
  %i.abv = call double @llvm.fmuladd.f64(double %i.abu, double %i.abu, double %.04046.us.us.i.i247)
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.1 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.abx = load double, ptr %gep.i.i248.1, align 8, !tbaa !12
  %i.aby = fsub double %i.abx, %i.abs             ; 2 uses
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double %i.aby, double %i.abv)
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.2 = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acb = load double, ptr %gep.i.i248.2, align 8, !tbaa !12
  %i.acc = fsub double %i.acb, %i.abs             ; 2 uses
  %i.acd = call double @llvm.fmuladd.f64(double %i.acc, double %i.acc, double %i.abz)
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.3 = getelementptr inbounds nuw i8, ptr %i.ace, i64 24
  %i.acf = load double, ptr %gep.i.i248.3, align 8, !tbaa !12
  %i.acg = fsub double %i.acf, %i.abs             ; 2 uses
  %i.ach = call double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.acd) ; 3 uses
  %indvars.iv.next.i.i249.3 = add nuw nsw i64 %indvars.iv.i.i246, 4 ; 2 uses
  %niter900.next.3 = add i64 %niter900, 4         ; 2 uses
  %niter900.ncmp.3 = icmp eq i64 %niter900.next.3, %unroll_iter899
  br i1 %niter900.ncmp.3, label %._crit_edge.us.us.i.i251.unr-lcssa, label %.preheader.us.us.i.i243.new, !llvm.loop !0

._crit_edge.us.us.i.i251.unr-lcssa:               ; preds = %.preheader.us.us.i.i243.new
  br i1 %lcmp.mod896.not, label %._crit_edge.us.us.i.i251, label %.epil.preheader893

.epil.preheader893:                               ; preds = %._crit_edge.us.us.i.i251.unr-lcssa, %.preheader.us.us.i.i243
  %indvars.iv.i.i246.epil.init = phi i64 [ 0, %.preheader.us.us.i.i243 ], [ %indvars.iv.next.i.i249.3, %._crit_edge.us.us.i.i251.unr-lcssa ]
  %.04046.us.us.i.i247.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i243 ], [ %i.ach, %._crit_edge.us.us.i.i251.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod898)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.epil.preheader893
  %indvars.iv.i.i246.epil = phi i64 [ %indvars.iv.next.i.i249.epil, %bb.dc ], [ %indvars.iv.i.i246.epil.init, %.epil.preheader893 ] ; 2 uses
  %.04046.us.us.i.i247.epil = phi double [ %i.ack, %bb.dc ], [ %.04046.us.us.i.i247.epil.init, %.epil.preheader893 ]
  %epil.iter895 = phi i64 [ %epil.iter895.next, %bb.dc ], [ 0, %.epil.preheader893 ]
  %gep.i.i248.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246.epil
  %i.aci = load double, ptr %gep.i.i248.epil, align 8, !tbaa !12
  %i.acj = fsub double %i.aci, %i.abs             ; 2 uses
  %i.ack = call double @llvm.fmuladd.f64(double %i.acj, double %i.acj, double %.04046.us.us.i.i247.epil) ; 2 uses
  %indvars.iv.next.i.i249.epil = add nuw nsw i64 %indvars.iv.i.i246.epil, 1
  %epil.iter895.next = add i64 %epil.iter895, 1   ; 2 uses
  %epil.iter895.cmp.not = icmp eq i64 %epil.iter895.next, %xtraiter894
  br i1 %epil.iter895.cmp.not, label %._crit_edge.us.us.i.i251, label %bb.dc, !llvm.loop !155

._crit_edge.us.us.i.i251:                         ; preds = %bb.dc, %._crit_edge.us.us.i.i251.unr-lcssa
  %.lcssa860 = phi double [ %i.ach, %._crit_edge.us.us.i.i251.unr-lcssa ], [ %i.ack, %bb.dc ]
  %i.acl = call double @sqrt(double noundef %.lcssa860) #22
  %i.acm = fadd double %.148.us.us.i.i245, %i.acl ; 2 uses
  %indvars.iv.next62.i.i252 = add nsw i64 %indvars.iv61.i.i244, 1 ; 2 uses
  %i.acn = load i32, ptr %i.abi, align 4, !tbaa !39 ; 2 uses
  %i.aco = sext i32 %i.acn to i64
  %i.acp = icmp slt i64 %indvars.iv.next62.i.i252, %i.aco
  br i1 %i.acp, label %.preheader.us.us.i.i243, label %.loopexit.us.i.i236, !llvm.loop !1

.loopexit.us.i.i236:                              ; preds = %._crit_edge.us.us.i.i251, %.lr.ph.split.us.i.i232
  %i.acq = phi i32 [ %i.abj, %.lr.ph.split.us.i.i232 ], [ %i.acn, %._crit_edge.us.us.i.i251 ]
  %.1.lcssa.us.i.i237 = phi double [ %.04153.us.i.i234, %.lr.ph.split.us.i.i232 ], [ %i.acm, %._crit_edge.us.us.i.i251 ] ; 2 uses
  %exitcond68.not.i.i238 = icmp eq i64 %indvars.iv.next65.i.i235, %wide.trip.count67.i.i230
  br i1 %exitcond68.not.i.i238, label %._crit_edge.loopexit.i.i239, label %.lr.ph.split.us.i.i232, !llvm.loop !2

._crit_edge.loopexit.i.i239:                      ; preds = %.loopexit.us.i.i236
  %.pre69.i.i240 = load i32, ptr %i.abd, align 4, !tbaa !39
  br label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %._crit_edge.loopexit.i.i239, %.preheader45.i.i224
  %i.acr = phi i32 [ %i.abe, %.preheader45.i.i224 ], [ %.pre69.i.i240, %._crit_edge.loopexit.i.i239 ]
  %.041.lcssa.i.i226 = phi double [ 0.000000e+00, %.preheader45.i.i224 ], [ %.1.lcssa.us.i.i237, %._crit_edge.loopexit.i.i239 ]
  %i.acs = sitofp i32 %i.acr to double
  %i.act = fdiv double %.041.lcssa.i.i226, %i.acs
  br label %average_edge_length.exit.i227

average_edge_length.exit.i227:                    ; preds = %._crit_edge.i.i225, %bb.db
  %.042.i.i228 = phi double [ %i.act, %._crit_edge.i.i225 ], [ 1.000000e+00, %bb.db ] ; 2 uses
  store double %.042.i.i228, ptr %i.pc, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %average_edge_length.exit.i227, %.loopexit241.i
  %.0208.i = phi double [ %.042.i.i228, %average_edge_length.exit.i227 ], [ %i.aaa, %.loopexit241.i ] ; 2 uses
  %i.acu = fcmp ult double %i.zz, 0.000000e+00
  br i1 %i.acu, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0209.i = phi double [ -1.000000e+00, %bb.de ], [ %i.zz, %bb.dd ] ; 2 uses
  %i.acv = fsub double 1.000000e+00, %.0209.i     ; 3 uses
  %i.acw = call double @pow(double noundef %.0208.i, double noundef %i.acv) #22 ; 5 uses
  %i.acx = fsub double 2.000000e+00, %.0209.i
  %i.acy = fdiv double %i.acx, 3.000000e+00
  %i.acz = call double @pow(double noundef 2.000000e-01, double noundef %i.acy) #22
  %i.ada = fdiv double %i.acz, %.0208.i           ; 4 uses
  %i.adb = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.pi, i64 noundef 8) #23 ; 33 uses
  %i.adc = icmp eq ptr %i.adb, null
  br i1 %i.adc, label %bb.dg, label %gv_calloc.exit.preheader.i208

gv_calloc.exit.preheader.i208:                    ; preds = %bb.df
  %i.add = uitofp nneg i32 %i.aai to double
  %wide.trip.count324.i = zext i32 %i.aai to i64  ; 3 uses
  %scevgep = getelementptr i8, ptr %i.adb, i64 %13 ; 5 uses
  %scevgep484 = getelementptr i8, ptr %.1, i64 %13
  %scevgep525 = getelementptr i8, ptr %.1, i64 %13
  %scevgep562 = getelementptr i8, ptr %.1, i64 %13 ; 2 uses
  %i.ade = mul i64 %i.pp, %wide.trip.count324.i
  %scevgep564 = getelementptr i8, ptr %.1, i64 %i.ade
  %i.adf = insertelement <2 x double> poison, double %i.add, i64 0
  %i.adg = shufflevector <2 x double> %i.adf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adh = getelementptr i8, ptr %.1, i64 %13
  %broadcast.splatinsert616 = insertelement <2 x double> poison, double %i.ada, i64 0
  %broadcast.splat617 = shufflevector <2 x double> %broadcast.splatinsert616, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adi = insertelement <2 x ptr> poison, ptr %i.adb, i64 0
  %i.adj = shufflevector <2 x ptr> %i.adi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.adk = insertelement <2 x ptr> poison, ptr %scevgep564, i64 0
  %i.adl = insertelement <2 x ptr> poison, ptr %.1, i64 0
  %i.adm = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.adn = shufflevector <2 x ptr> %i.adm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.acw, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ado = insertelement <2 x ptr> poison, ptr %i.adb, i64 0
  %i.adp = shufflevector <2 x ptr> %i.ado, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.adq = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.adr = shufflevector <2 x ptr> %i.adq, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %gv_calloc.exit.i209

bb.dg:                                            ; preds = %bb.df
  %i.ads = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.adt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ads, ptr noundef nonnull @.str.25, i64 noundef %13) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit.i209:                              ; preds = %update_step.exit.i216, %gv_calloc.exit.preheader.i208
  %i.adu = phi i32 [ %.val326.i, %update_step.exit.i216 ], [ %.val328.i, %gv_calloc.exit.preheader.i208 ] ; 12 uses
  %.0207.i = phi double [ %.0.i.i217, %update_step.exit.i216 ], [ %i.aac, %gv_calloc.exit.preheader.i208 ] ; 8 uses
  %.0203.i = phi double [ %i.alt, %update_step.exit.i216 ], [ 0.000000e+00, %gv_calloc.exit.preheader.i208 ] ; 2 uses
  %.0202.i = phi i32 [ %i.adv, %update_step.exit.i216 ], [ 0, %gv_calloc.exit.preheader.i208 ]
  %.0196.i = phi i32 [ %.1.i210, %update_step.exit.i216 ], [ %i.aaf, %gv_calloc.exit.preheader.i208 ]
  %i.adv = add nuw nsw i32 %.0202.i, 1            ; 2 uses
  br i1 %i.aam, label %bb.dh, label %.preheader240.preheader.i

bb.dh:                                            ; preds = %gv_calloc.exit.i209
  %i.adw = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aai, i32 noundef %i.adu, ptr noundef %.1) #22
  br label %.preheader240.preheader.i

.preheader240.preheader.i:                        ; preds = %bb.dh, %gv_calloc.exit.i209
  %.1.i210 = phi i32 [ %i.adu, %bb.dh ], [ %.0196.i, %gv_calloc.exit.i209 ] ; 3 uses
  %.0.i211 = phi ptr [ %i.adw, %bb.dh ], [ null, %gv_calloc.exit.i209 ] ; 3 uses
  %broadcast.splatinsert489 = insertelement <2 x double> poison, double %.0207.i, i64 0
  %broadcast.splat490 = shufflevector <2 x double> %broadcast.splatinsert489, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader240.i

.loopexit235.i:                                   ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block498
  %exitcond325.not.i = icmp eq i64 %indvars.iv.next322.i, %wide.trip.count324.i
  br i1 %exitcond325.not.i, label %._crit_edge266.i, label %.preheader240.i, !llvm.loop !156

.preheader240.i:                                  ; preds = %.loopexit235.i, %.preheader240.preheader.i
  %indvars.iv321.i = phi i64 [ 0, %.preheader240.preheader.i ], [ %indvars.iv.next322.i, %.loopexit235.i ] ; 13 uses
  %.1204263.i = phi double [ 0.000000e+00, %.preheader240.preheader.i ], [ %i.alt, %.loopexit235.i ]
  %i.adx = phi <2 x double> [ zeroinitializer, %.preheader240.preheader.i ], [ %i.akz, %.loopexit235.i ] ; 2 uses
  %i.ady = mul i64 %i.pq, %indvars.iv321.i
  %scevgep601 = getelementptr i8, ptr %i.adh, i64 %i.ady
  %i.adz = trunc i64 %indvars.iv321.i to i32
  %i.aea = mul i32 %0, %i.adz
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = shl nuw nsw i64 %i.aeb, 3
  %scevgep563 = getelementptr i8, ptr %scevgep562, i64 %i.aec
  %i.aed = trunc i64 %indvars.iv321.i to i32
  %i.aee = mul i32 %0, %i.aed
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = shl nuw nsw i64 %i.aef, 3
  %scevgep526 = getelementptr i8, ptr %scevgep525, i64 %i.aeg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adb, i8 0, i64 %13, i1 false), !tbaa !12
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv321.i
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !39 ; 2 uses
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv.next322.i ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !39 ; 2 uses
  %i.ael = icmp slt i32 %i.aei, %i.aek
  br i1 %i.ael, label %.lr.ph249.i, label %._crit_edge.i212

.lr.ph249.i:                                      ; preds = %.preheader240.i
  %i.aem = mul i64 %indvars.iv321.i, %i.pi
  %i.aen = sext i32 %i.aei to i64
  %i.aeo = trunc nuw nsw i64 %indvars.iv321.i to i32
  %invariant.gep.i221 = getelementptr [8 x i8], ptr %.1, i64 %i.aem ; 5 uses
  %bound0608 = icmp ult ptr %i.adb, %scevgep601
  %bound1609 = icmp ult ptr %invariant.gep.i221, %scevgep
  %found.conflict610 = and i1 %bound0608, %bound1609
  br label %bb.di

bb.di:                                            ; preds = %.loopexit234.i, %.lr.ph249.i
  %i.aep = phi i32 [ %i.aek, %.lr.ph249.i ], [ %i.ago, %.loopexit234.i ]
  %indvars.iv283.i = phi i64 [ %i.aen, %.lr.ph249.i ], [ %indvars.iv.next284.i, %.loopexit234.i ] ; 2 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.aar, i64 %indvars.iv283.i ; 2 uses
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !39 ; 2 uses
  %i.aes = zext i32 %i.aer to i64
  %i.aet = icmp eq i64 %indvars.iv321.i, %i.aes
  br i1 %i.aet, label %.loopexit234.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aeu = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aeo, i32 noundef %i.aer) #22 ; 4 uses
  %i.aev = load i32, ptr %i.aeq, align 4, !tbaa !39
  %i.aew = mul nsw i32 %i.aev, %0
  %i.aex = sext i32 %i.aew to i64                 ; 2 uses
  %invariant.gep352.i = getelementptr [8 x i8], ptr %.1, i64 %i.aex ; 5 uses
  br i1 %min.iters.check603, label %scalar.ph602.preheader, label %vector.memcheck604

vector.memcheck604:                               ; preds = %bb.dj
  %i.aey = shl nsw i64 %i.aex, 3
  %i.aez = getelementptr i8, ptr %scevgep562, i64 %i.aey
  %bound0605 = icmp ult ptr %i.adb, %i.aez
  %bound1606 = icmp ult ptr %invariant.gep352.i, %scevgep
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx611 = or i1 %found.conflict607, %found.conflict610
  br i1 %conflict.rdx611, label %scalar.ph602.preheader, label %vector.ph612

vector.ph612:                                     ; preds = %vector.memcheck604
  %broadcast.splatinsert614 = insertelement <2 x double> poison, double %i.aeu, i64 0
  %broadcast.splat615 = shufflevector <2 x double> %broadcast.splatinsert614, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph612
  %index619 = phi i64 [ 0, %vector.ph612 ], [ %index.next626, %vector.body618 ] ; 4 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %index619 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %wide.load620 = load <2 x double>, ptr %i.afa, align 8, !tbaa !12, !alias.scope !225
  %wide.load621 = load <2 x double>, ptr %i.afb, align 8, !tbaa !12, !alias.scope !225
  %i.afc = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %index619 ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afc, i64 16
  %wide.load622 = load <2 x double>, ptr %i.afc, align 8, !tbaa !12, !alias.scope !226
  %wide.load623 = load <2 x double>, ptr %i.afd, align 8, !tbaa !12, !alias.scope !226
  %i.afe = fsub <2 x double> %wide.load620, %wide.load622
  %i.aff = fsub <2 x double> %wide.load621, %wide.load623
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %index619 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 2 uses
  %wide.load624 = load <2 x double>, ptr %i.afg, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %wide.load625 = load <2 x double>, ptr %i.afh, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %i.afi = fneg <2 x double> %i.afe
  %i.afj = fneg <2 x double> %i.aff
  %i.afk = fmul <2 x double> %broadcast.splat617, %i.afi
  %i.afl = fmul <2 x double> %broadcast.splat617, %i.afj
  %i.afm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afk, <2 x double> %broadcast.splat615, <2 x double> %wide.load624)
  %i.afn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afl, <2 x double> %broadcast.splat615, <2 x double> %wide.load625)
  store <2 x double> %i.afm, ptr %i.afg, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  store <2 x double> %i.afn, ptr %i.afh, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %index.next626 = add nuw i64 %index619, 4       ; 2 uses
  %i.afo = icmp eq i64 %index.next626, %n.vec613
  br i1 %i.afo, label %middle.block627, label %vector.body618, !llvm.loop !161

middle.block627:                                  ; preds = %vector.body618
  br i1 %cmp.n628, label %.loopexit234.loopexit.i, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %vector.memcheck604, %bb.dj, %middle.block627
  %indvars.iv278.i.ph = phi i64 [ 0, %vector.memcheck604 ], [ 0, %bb.dj ], [ %n.vec613, %middle.block627 ] ; 6 uses
  br i1 %lcmp.mod902.not, label %scalar.ph602.prol.loopexit, label %scalar.ph602.prol

scalar.ph602.prol:                                ; preds = %scalar.ph602.preheader
  %gep.i222.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i.ph
  %i.afp = load double, ptr %gep.i222.prol, align 8, !tbaa !12
  %gep353.i.prol = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i.ph
  %i.afq = load double, ptr %gep353.i.prol, align 8, !tbaa !12
  %i.afr = fsub double %i.afp, %i.afq
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv278.i.ph ; 2 uses
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !12
  %i.afu = fneg double %i.afr
  %i.afv = fmul double %i.ada, %i.afu
  %i.afw = call double @llvm.fmuladd.f64(double %i.afv, double %i.aeu, double %i.aft)
  store double %i.afw, ptr %i.afs, align 8, !tbaa !12
  %indvars.iv.next279.i.prol = or disjoint i64 %indvars.iv278.i.ph, 1
  br label %scalar.ph602.prol.loopexit

scalar.ph602.prol.loopexit:                       ; preds = %scalar.ph602.prol, %scalar.ph602.preheader
  %indvars.iv278.i.unr = phi i64 [ %indvars.iv278.i.ph, %scalar.ph602.preheader ], [ %indvars.iv.next279.i.prol, %scalar.ph602.prol ]
  %i.afx = icmp eq i64 %indvars.iv278.i.ph, %i.pz
  br i1 %i.afx, label %.loopexit234.loopexit.i, label %scalar.ph602

scalar.ph602:                                     ; preds = %scalar.ph602.prol.loopexit, %scalar.ph602
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i.1, %scalar.ph602 ], [ %indvars.iv278.i.unr, %scalar.ph602.prol.loopexit ] ; 5 uses
  %gep.i222 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i
  %i.afy = load double, ptr %gep.i222, align 8, !tbaa !12
  %gep353.i = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i
  %i.afz = load double, ptr %gep353.i, align 8, !tbaa !12
  %i.aga = fsub double %i.afy, %i.afz
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv278.i ; 2 uses
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !12
  %i.agd = fneg double %i.aga
  %i.age = fmul double %i.ada, %i.agd
  %i.agf = call double @llvm.fmuladd.f64(double %i.age, double %i.aeu, double %i.agc)
  store double %i.agf, ptr %i.agb, align 8, !tbaa !12
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 3 uses
  %gep.i222.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv.next279.i
  %i.agg = load double, ptr %gep.i222.1, align 8, !tbaa !12
  %gep353.i.1 = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv.next279.i
  %i.agh = load double, ptr %gep353.i.1, align 8, !tbaa !12
  %i.agi = fsub double %i.agg, %i.agh
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next279.i ; 2 uses
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !12
  %i.agl = fneg double %i.agi
  %i.agm = fmul double %i.ada, %i.agl
  %i.agn = call double @llvm.fmuladd.f64(double %i.agm, double %i.aeu, double %i.agk)
  store double %i.agn, ptr %i.agj, align 8, !tbaa !12
  %indvars.iv.next279.i.1 = add nuw nsw i64 %indvars.iv278.i, 2 ; 2 uses
  %exitcond282.not.i.1 = icmp eq i64 %indvars.iv.next279.i.1, %i.pi
  br i1 %exitcond282.not.i.1, label %.loopexit234.loopexit.i, label %scalar.ph602, !llvm.loop !162

.loopexit234.loopexit.i:                          ; preds = %scalar.ph602.prol.loopexit, %scalar.ph602, %middle.block627
  %.pre.i223 = load i32, ptr %i.aej, align 4, !tbaa !39
  br label %.loopexit234.i

.loopexit234.i:                                   ; preds = %.loopexit234.loopexit.i, %bb.di
  %i.ago = phi i32 [ %.pre.i223, %.loopexit234.loopexit.i ], [ %i.aep, %bb.di ] ; 2 uses
  %indvars.iv.next284.i = add nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.agp = sext i32 %i.ago to i64
  %i.agq = icmp slt i64 %indvars.iv.next284.i, %i.agp
  br i1 %i.agq, label %bb.di, label %._crit_edge.i212, !llvm.loop !163

._crit_edge.i212:                                 ; preds = %.loopexit234.i, %.preheader240.i
  br i1 %i.aam, label %bb.dk, label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %._crit_edge.i212
  %i.agr = trunc i64 %indvars.iv321.i to i32      ; 2 uses
  %i.ags = mul i32 %0, %i.agr
  %i.agt = zext i32 %i.ags to i64
  %invariant.gep354.i = getelementptr [8 x i8], ptr %.1, i64 %i.agt ; 5 uses
  %i.agu = insertelement <2 x ptr> %i.adk, ptr %scevgep563, i64 1
  %i.agv = insertelement <2 x ptr> %i.adl, ptr %invariant.gep354.i, i64 1
  %i.agw = icmp ult <2 x ptr> %i.adj, %i.agu
  %i.agx = icmp ult <2 x ptr> %i.agv, %i.adn
  %i.agy = and <2 x i1> %i.agw, %i.agx
  %i.agz = bitcast <2 x i1> %i.agy to i2
  %.not849.a = icmp eq i2 %i.agz, 0
  br label %bb.dm

bb.dk:                                            ; preds = %._crit_edge.i212
  %i.aha = mul nuw nsw i64 %indvars.iv321.i, %i.pi ; 2 uses
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.aha
  %i.ahc = trunc nuw nsw i64 %indvars.iv321.i to i32
  call void @QuadTree_get_supernodes(ptr noundef %.0.i211, double noundef 6.000000e-01, ptr noundef %i.ahb, i32 noundef %i.ahc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ahd = load double, ptr %i.f, align 8, !tbaa !12
  %i.ahe = load i32, ptr %i.b, align 4, !tbaa !39 ; 3 uses
  %i.ahf = sitofp i32 %i.ahe to double
  %i.ahg = insertelement <2 x double> poison, double %i.ahf, i64 0
  %i.ahh = insertelement <2 x double> %i.ahg, double %i.ahd, i64 1
  %i.ahi = fadd <2 x double> %i.adx, %i.ahh       ; 2 uses
  %i.ahj = icmp sgt i32 %i.ahe, 0
  br i1 %i.ahj, label %.lr.ph256.i, label %.loopexit237.i

.lr.ph256.i:                                      ; preds = %bb.dk
  %i.ahk = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ahl = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ahm = load ptr, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.ahn = and i64 %i.aha, 4294967295
  %wide.trip.count304.i = zext nneg i32 %i.ahe to i64 ; 2 uses
  %invariant.gep358.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ahn ; 5 uses
  %i.aho = mul i64 %i.po, %wide.trip.count304.i
  %scevgep524 = getelementptr i8, ptr %i.ahm, i64 %i.aho
  %i.ahp = insertelement <2 x ptr> poison, ptr %scevgep526, i64 0
  %i.ahq = insertelement <2 x ptr> %i.ahp, ptr %scevgep524, i64 1
  %i.ahr = insertelement <2 x ptr> poison, ptr %invariant.gep358.i, i64 0
  %i.ahs = insertelement <2 x ptr> %i.ahr, ptr %i.ahm, i64 1
  %i.aht = icmp ult <2 x ptr> %i.adp, %i.ahq
  %i.ahu = icmp ult <2 x ptr> %i.ahs, %i.adr
  %i.ahv = and <2 x i1> %i.aht, %i.ahu
  %i.ahw = bitcast <2 x i1> %i.ahv to i2
  %.not850 = icmp eq i2 %i.ahw, 0
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit846, %.lr.ph256.i
  %indvars.iv301.i = phi i64 [ 0, %.lr.ph256.i ], [ %indvars.iv.next302.i, %.loopexit846 ] ; 4 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %indvars.iv301.i
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !12 ; 2 uses
  %i.ahz = fcmp ogt double %i.ahy, 1.000000e-15
  %i.aia = select i1 %i.ahz, double %i.ahy, double 1.000000e-15
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %indvars.iv301.i
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !12
  %i.aid = fmul double %i.acw, %i.aic             ; 4 uses
  %i.aie = mul nuw nsw i64 %indvars.iv301.i, %i.pi
  %i.aif = call double @pow(double noundef %i.aia, double noundef %i.acv) #22 ; 4 uses
  %invariant.gep360.i = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %i.aie ; 4 uses
  %.not850.not = xor i1 %.not850, true
  %brmerge983.a = select i1 %min.iters.check528, i1 true, i1 %.not850.not
  br i1 %brmerge983.a, label %scalar.ph527.preheader, label %vector.ph536

vector.ph536:                                     ; preds = %bb.dl
  %broadcast.splatinsert538 = insertelement <2 x double> poison, double %i.aid, i64 0
  %broadcast.splat539 = shufflevector <2 x double> %broadcast.splatinsert538, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert540 = insertelement <2 x double> poison, double %i.aif, i64 0
  %broadcast.splat541 = shufflevector <2 x double> %broadcast.splatinsert540, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph536
  %index543 = phi i64 [ 0, %vector.ph536 ], [ %index.next547, %vector.body542 ] ; 4 uses
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %index543
  %wide.load544 = load <2 x double>, ptr %i.aig, align 8, !tbaa !12, !alias.scope !229
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %index543
  %wide.load545 = load <2 x double>, ptr %i.aih, align 8, !tbaa !12, !alias.scope !230
  %i.aii = fsub <2 x double> %wide.load544, %wide.load545
  %i.aij = fmul <2 x double> %broadcast.splat539, %i.aii
  %i.aik = fdiv <2 x double> %i.aij, %broadcast.splat541
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %index543 ; 2 uses
  %wide.load546 = load <2 x double>, ptr %i.ail, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %i.aim = fadd <2 x double> %wide.load546, %i.aik
  store <2 x double> %i.aim, ptr %i.ail, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %index.next547 = add nuw i64 %index543, 2       ; 2 uses
  %i.ain = icmp eq i64 %index.next547, %n.vec537
  br i1 %i.ain, label %middle.block548, label %vector.body542, !llvm.loop !168

middle.block548:                                  ; preds = %vector.body542
  br i1 %cmp.n549, label %.loopexit846, label %scalar.ph527.preheader

scalar.ph527.preheader:                           ; preds = %bb.dl, %middle.block548
  %indvars.iv296.i.ph = phi i64 [ %n.vec537, %middle.block548 ], [ 0, %bb.dl ] ; 6 uses
  br i1 %lcmp.mod906.not, label %scalar.ph527.prol.loopexit, label %scalar.ph527.prol

scalar.ph527.prol:                                ; preds = %scalar.ph527.preheader
  %gep359.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv296.i.ph
  %i.aio = load double, ptr %gep359.i.prol, align 8, !tbaa !12
  %gep361.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv296.i.ph
  %i.aip = load double, ptr %gep361.i.prol, align 8, !tbaa !12
  %i.aiq = fsub double %i.aio, %i.aip
  %i.air = fmul double %i.aid, %i.aiq
  %i.ais = fdiv double %i.air, %i.aif
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv296.i.ph ; 2 uses
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !12
  %i.aiv = fadd double %i.aiu, %i.ais
  store double %i.aiv, ptr %i.ait, align 8, !tbaa !12
  %indvars.iv.next297.i.prol = or disjoint i64 %indvars.iv296.i.ph, 1
  br label %scalar.ph527.prol.loopexit

scalar.ph527.prol.loopexit:                       ; preds = %scalar.ph527.prol, %scalar.ph527.preheader
  %indvars.iv296.i.unr = phi i64 [ %indvars.iv296.i.ph, %scalar.ph527.preheader ], [ %indvars.iv.next297.i.prol, %scalar.ph527.prol ]
  %i.aiw = icmp eq i64 %indvars.iv296.i.ph, %i.qb
  br i1 %i.aiw, label %.loopexit846, label %scalar.ph527

scalar.ph527:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527
  %indvars.iv296.i = phi i64 [ %indvars.iv.next297.i.1, %scalar.ph527 ], [ %indvars.iv296.i.unr, %scalar.ph527.prol.loopexit ] ; 5 uses
  %gep359.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv296.i
  %i.aix = load double, ptr %gep359.i, align 8, !tbaa !12
  %gep361.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv296.i
  %i.aiy = load double, ptr %gep361.i, align 8, !tbaa !12
  %i.aiz = fsub double %i.aix, %i.aiy
  %i.aja = fmul double %i.aid, %i.aiz
  %i.ajb = fdiv double %i.aja, %i.aif
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv296.i ; 2 uses
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !12
  %i.aje = fadd double %i.ajd, %i.ajb
  store double %i.aje, ptr %i.ajc, align 8, !tbaa !12
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 3 uses
  %gep359.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv.next297.i
  %i.ajf = load double, ptr %gep359.i.1, align 8, !tbaa !12
  %gep361.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv.next297.i
  %i.ajg = load double, ptr %gep361.i.1, align 8, !tbaa !12
  %i.ajh = fsub double %i.ajf, %i.ajg
  %i.aji = fmul double %i.aid, %i.ajh
  %i.ajj = fdiv double %i.aji, %i.aif
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next297.i ; 2 uses
  %i.ajl = load double, ptr %i.ajk, align 8, !tbaa !12
  %i.ajm = fadd double %i.ajl, %i.ajj
  store double %i.ajm, ptr %i.ajk, align 8, !tbaa !12
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %exitcond300.not.i.1 = icmp eq i64 %indvars.iv.next297.i.1, %i.pi
  br i1 %exitcond300.not.i.1, label %.loopexit846, label %scalar.ph527, !llvm.loop !169

.loopexit846:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527, %middle.block548
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count304.i
  br i1 %exitcond305.not.i, label %.loopexit237.i, label %bb.dl, !llvm.loop !170

bb.dm:                                            ; preds = %.loopexit.i213, %.lr.ph252.i
  %indvars.iv291.i = phi i64 [ 0, %.lr.ph252.i ], [ %indvars.iv.next292.i, %.loopexit.i213 ] ; 4 uses
  %i.ajn = icmp eq i64 %indvars.iv291.i, %indvars.iv321.i
  br i1 %i.ajn, label %.loopexit.i213, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ajo = trunc nuw nsw i64 %indvars.iv291.i to i32
  %i.ajp = call double @distance_cropped(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.agr, i32 noundef %i.ajo) #22
  %i.ajq = mul nuw nsw i64 %indvars.iv291.i, %i.pi
  %i.ajr = call double @pow(double noundef %i.ajp, double noundef %i.acv) #22 ; 4 uses
  %invariant.gep356.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ajq ; 4 uses
  %.not849.not = xor i1 %.not849.a, true
  %brmerge984 = select i1 %min.iters.check566, i1 true, i1 %.not849.not
  br i1 %brmerge984, label %scalar.ph565.preheader, label %vector.ph575

vector.ph575:                                     ; preds = %bb.dn
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.ajr, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph575
  %index582 = phi i64 [ 0, %vector.ph575 ], [ %index.next586, %vector.body581 ] ; 4 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %index582
  %wide.load583 = load <2 x double>, ptr %i.ajs, align 8, !tbaa !12, !alias.scope !233
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %index582
  %wide.load584 = load <2 x double>, ptr %i.ajt, align 8, !tbaa !12, !alias.scope !234
  %i.aju = fsub <2 x double> %wide.load583, %wide.load584
  %i.ajv = fmul <2 x double> %broadcast.splat580, %i.aju
  %i.ajw = fdiv <2 x double> %i.ajv, %broadcast.splat578
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %index582 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.ajx, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %i.ajy = fadd <2 x double> %wide.load585, %i.ajw
  store <2 x double> %i.ajy, ptr %i.ajx, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %index.next586 = add nuw i64 %index582, 2       ; 2 uses
  %i.ajz = icmp eq i64 %index.next586, %n.vec576
  br i1 %i.ajz, label %middle.block587, label %vector.body581, !llvm.loop !175

middle.block587:                                  ; preds = %vector.body581
  br i1 %cmp.n588, label %.loopexit.i213, label %scalar.ph565.preheader

scalar.ph565.preheader:                           ; preds = %bb.dn, %middle.block587
  %indvars.iv286.i.ph = phi i64 [ %n.vec576, %middle.block587 ], [ 0, %bb.dn ] ; 6 uses
  br i1 %lcmp.mod904.not, label %scalar.ph565.prol.loopexit, label %scalar.ph565.prol

scalar.ph565.prol:                                ; preds = %scalar.ph565.preheader
  %gep355.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv286.i.ph
  %i.aka = load double, ptr %gep355.i.prol, align 8, !tbaa !12
  %gep357.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv286.i.ph
  %i.akb = load double, ptr %gep357.i.prol, align 8, !tbaa !12
  %i.akc = fsub double %i.aka, %i.akb
  %i.akd = fmul double %i.acw, %i.akc
  %i.ake = fdiv double %i.akd, %i.ajr
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv286.i.ph ; 2 uses
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !12
  %i.akh = fadd double %i.akg, %i.ake
  store double %i.akh, ptr %i.akf, align 8, !tbaa !12
  %indvars.iv.next287.i.prol = or disjoint i64 %indvars.iv286.i.ph, 1
  br label %scalar.ph565.prol.loopexit

scalar.ph565.prol.loopexit:                       ; preds = %scalar.ph565.prol, %scalar.ph565.preheader
  %indvars.iv286.i.unr = phi i64 [ %indvars.iv286.i.ph, %scalar.ph565.preheader ], [ %indvars.iv.next287.i.prol, %scalar.ph565.prol ]
  %i.aki = icmp eq i64 %indvars.iv286.i.ph, %i.qa
  br i1 %i.aki, label %.loopexit.i213, label %scalar.ph565

scalar.ph565:                                     ; preds = %scalar.ph565.prol.loopexit, %scalar.ph565
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i.1, %scalar.ph565 ], [ %indvars.iv286.i.unr, %scalar.ph565.prol.loopexit ] ; 5 uses
  %gep355.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv286.i
  %i.akj = load double, ptr %gep355.i, align 8, !tbaa !12
  %gep357.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv286.i
  %i.akk = load double, ptr %gep357.i, align 8, !tbaa !12
  %i.akl = fsub double %i.akj, %i.akk
  %i.akm = fmul double %i.acw, %i.akl
  %i.akn = fdiv double %i.akm, %i.ajr
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv286.i ; 2 uses
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !12
  %i.akq = fadd double %i.akp, %i.akn
  store double %i.akq, ptr %i.ako, align 8, !tbaa !12
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 3 uses
  %gep355.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv.next287.i
  %i.akr = load double, ptr %gep355.i.1, align 8, !tbaa !12
  %gep357.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv.next287.i
  %i.aks = load double, ptr %gep357.i.1, align 8, !tbaa !12
  %i.akt = fsub double %i.akr, %i.aks
  %i.aku = fmul double %i.acw, %i.akt
  %i.akv = fdiv double %i.aku, %i.ajr
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next287.i ; 2 uses
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@multilevel_spring_electrical_embedding:bb.a
bb.dt:                                            ; preds = %bb.dp
  %i.anj = getelementptr i8, ptr %i.anf, i64 -8
  %i.ank = load double, ptr %i.anj, align 8, !tbaa !12
  %i.anl = fcmp olt double %i.and, %i.ank
  %i.anm = icmp slt i32 %i.adu, 20
  %or.cond.i.i214 = and i1 %i.anm, %i.anl
  br i1 %or.cond.i.i214, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ann = add nsw i32 %i.adu, 1
  br label %oned_optimizer_train.exit.i215

bb.dv:                                            ; preds = %bb.dt
  %i.ano = add nsw i32 %i.adu, -1
  store i32 -1, ptr %i.pn, align 8, !tbaa !240
  br label %oned_optimizer_train.exit.i215

bb.dw:                                            ; preds = %bb.dp
  %i.anp = getelementptr i8, ptr %i.anf, i64 8
  %i.anq = load double, ptr %i.anp, align 8, !tbaa !12
  %i.anr = fcmp olt double %i.and, %i.anq
  %i.ans = icmp sgt i32 %i.adu, 0
  %or.cond37.i.i219 = and i1 %i.ans, %i.anr
  br i1 %or.cond37.i.i219, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ant = add nsw i32 %i.adu, -1
  br label %oned_optimizer_train.exit.i215

bb.dy:                                            ; preds = %bb.dw
  %i.anu = add nsw i32 %i.adu, 1
  store i32 1, ptr %i.pn, align 8, !tbaa !240
  br label %oned_optimizer_train.exit.i215

oned_optimizer_train.exit.i215:                   ; preds = %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.ds, %bb.dr, %._crit_edge266.i
  %.val326.i = phi i32 [ %i.anu, %bb.dy ], [ %i.ant, %bb.dx ], [ %i.ano, %bb.dv ], [ %i.ann, %bb.du ], [ %spec.select.i.i218, %bb.ds ], [ 19, %bb.dr ], [ %i.adu, %._crit_edge266.i ]
  br i1 %.not233.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %oned_optimizer_train.exit.i215
  %i.anv = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i216

bb.ea:                                            ; preds = %oned_optimizer_train.exit.i215
  %i.anw = fcmp ult double %i.alt, %.0203.i
  br i1 %i.anw, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.anx = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i216

bb.ec:                                            ; preds = %bb.ea
  %i.any = fmul double %.0203.i, f0x3FEE666666666666
  %i.anz = fcmp ogt double %i.alt, %i.any
  br i1 %i.anz, label %update_step.exit.i216, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aoa = fmul double %.0207.i, f0x3FEFAE147AE147AE
  %i.aob = fdiv double %i.aoa, 9.000000e-01
  br label %update_step.exit.i216

update_step.exit.i216:                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.dz
  %.0.i.i217 = phi double [ %i.anv, %bb.dz ], [ %i.anx, %bb.eb ], [ %.0207.i, %bb.ec ], [ %i.aob, %bb.ed ] ; 2 uses
  %i.aoc = fcmp ogt double %.0.i.i217, 1.000000e-03
  %i.aod = icmp slt i32 %i.adv, %i.aab
  %i.aoe = select i1 %i.aoc, i1 %i.aod, i1 false
  br i1 %i.aoe, label %gv_calloc.exit.i209, label %bb.ee, !llvm.loop !187

bb.ee:                                            ; preds = %update_step.exit.i216
  %i.aof = load i8, ptr %i.pf, align 4
  %i.aog = and i8 %i.aof, 4
  %.not230.i = icmp eq i8 %i.aog, 0
  br i1 %.not230.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @beautify_leaves(i32 noundef range(i32 1, -2147483648) %0, ptr noundef %i.aan, ptr noundef nonnull %.1)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.cz
  %.0218.i = phi ptr [ %i.zy, %bb.cz ], [ %i.aan, %bb.ef ], [ %i.aan, %bb.ee ] ; 2 uses
  %.0206.i = phi ptr [ null, %bb.cz ], [ %i.adb, %bb.ef ], [ %i.adb, %bb.ee ]
  %.2.i = phi i32 [ %i.aaf, %bb.cz ], [ %.1.i210, %bb.ef ], [ %.1.i210, %bb.ee ]
  br i1 %i.aam, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 %.2.i, ptr %i.pg, align 4, !tbaa !16
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.not231.i = icmp eq ptr %.0218.i, %i.zy
  br i1 %.not231.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @SparseMatrix_delete(ptr noundef %.0218.i) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  call void @free(ptr noundef %.0206.i) #22
  %i.aoh = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @free(ptr noundef %i.aoh) #22
  %i.aoi = load ptr, ptr %i.d, align 8, !tbaa !43
  call void @free(ptr noundef %i.aoi) #22
  %i.aoj = load ptr, ptr %i.e, align 8, !tbaa !43
  call void @free(ptr noundef %i.aoj) #22
  br label %spring_electrical_embedding.exit

spring_electrical_embedding.exit:                 ; preds = %bb.cu, %bb.cv, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.el

bb.el:                                            ; preds = %spring_electrical_embedding_fast.exit, %spring_electrical_embedding.exit, %bb.bj
  %i.aok = getelementptr inbounds nuw i8, ptr %.0141, i64 40
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !214 ; 6 uses
  %.not152 = icmp eq ptr %i.aol, null
  br i1 %.not152, label %bb.ey, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aom = load i32, ptr %7, align 4, !tbaa !39
  %.not154 = icmp eq i32 %i.aom, 0
  br i1 %.not154, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @free(ptr noundef %.1) #22
  br label %bb.fg

bb.eo:                                            ; preds = %bb.em
  %i.aon = getelementptr inbounds nuw i8, ptr %.0141, i64 16
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !241
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aol, i64 40
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !214
  %.not155 = icmp eq ptr %i.aoq, null
  br i1 %.not155, label %gv_calloc.exit264, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !215
  %i.aot = mul nsw i32 %i.aos, %0                 ; 3 uses
  %i.aou = sext i32 %i.aot to i64                 ; 3 uses
  %.not.i260 = icmp eq i32 %i.aot, 0
  br i1 %.not.i260, label %.thread.i263, label %bb.eq

.thread.i263:                                     ; preds = %bb.ep
  %i.aov = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #23
  br label %gv_calloc.exit264

bb.eq:                                            ; preds = %bb.ep
  %mul.ov.i262 = icmp slt i32 %i.aot, 0
  br i1 %mul.ov.i262, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aow = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.aox = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aow, ptr noundef nonnull @.str.24, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.aou, i64 noundef 8) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.aoy = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.aou, i64 noundef 8) #23 ; 2 uses
  %i.aoz = icmp eq ptr %i.aoy, null
  br i1 %i.aoz, label %bb.et, label %gv_calloc.exit264

bb.et:                                            ; preds = %bb.es
  %i.apa = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.apb = shl nuw nsw i64 %i.aou, 3
  %i.apc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apa, ptr noundef nonnull @.str.25, i64 noundef %i.apb) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit264:                                ; preds = %bb.es, %.thread.i263, %bb.eo
  %.0 = phi ptr [ %4, %bb.eo ], [ %i.aov, %.thread.i263 ], [ %i.aoy, %bb.es ] ; 5 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !216 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aol, i64 24
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !242 ; 3 uses
  %i.aph = load double, ptr %i.pc, align 8, !tbaa !29
  %i.api = fmul double %i.aph, 1.000000e-03
  call void @SparseMatrix_multiply_dense(ptr noundef %i.aoo, ptr noundef %.1, ptr noundef %.0, i32 noundef range(i32 1, -2147483648) %0) #22
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ape, i64 32
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !36 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ape, i64 40
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !37
  %i.apn = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.pi, i64 noundef 8) #23 ; 7 uses
  %i.apo = icmp eq ptr %i.apn, null
  br i1 %i.apo, label %bb.eu, label %gv_calloc.exit.preheader.i.i

gv_calloc.exit.preheader.i.i:                     ; preds = %gv_calloc.exit264
  %i.app = load i32, ptr %i.ape, align 8, !tbaa !38 ; 2 uses
  %i.apq = icmp sgt i32 %i.app, 0
  br i1 %i.apq, label %.preheader.preheader.i.i, label %interpolate_coord.exit.i

.preheader.preheader.i.i:                         ; preds = %gv_calloc.exit.preheader.i.i
  %wide.trip.count78.i.i = zext nneg i32 %i.app to i64
  %.pre.i.i275 = load i32, ptr %i.apk, align 4, !tbaa !39
  br label %.preheader.i.i

bb.eu:                                            ; preds = %gv_calloc.exit264
  %i.apr = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.aps = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apr, ptr noundef nonnull @.str.25, i64 noundef %13) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.preheader.i.i:                                   ; preds = %gv_calloc.exit.i.i, %.preheader.preheader.i.i
  %i.apt = phi i32 [ %.pre.i.i275, %.preheader.preheader.i.i ], [ %i.apv, %gv_calloc.exit.i.i ] ; 2 uses
  %indvars.iv75.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next76.i.i, %gv_calloc.exit.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.apn, i8 0, i64 %13, i1 false), !tbaa !12
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 3 uses
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.apk, i64 %indvars.iv.next76.i.i
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !39 ; 3 uses
  %i.apw = icmp slt i32 %i.apt, %i.apv
  br i1 %i.apw, label %.lr.ph.preheader.i.i, label %gv_calloc.exit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.apx = sext i32 %i.apt to i64
  %wide.trip.count68.i.i = sext i32 %i.apv to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv65.i.i = phi i64 [ %i.apx, %.lr.ph.preheader.i.i ], [ %indvars.iv.next66.i.i, %.loopexit.i.i ] ; 2 uses
  %.059.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %.loopexit.i.i ] ; 2 uses
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.apm, i64 %indvars.iv65.i.i
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !39 ; 2 uses
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = icmp eq i64 %indvars.iv75.i.i, %i.aqa
  br i1 %i.aqb, label %.loopexit.i.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i.i
  %i.aqc = mul nsw i32 %i.apz, %0
  %i.aqd = sext i32 %i.aqc to i64
  %invariant.gep.i.i276 = getelementptr [8 x i8], ptr %.0, i64 %i.aqd ; 2 uses
  br i1 %min.iters.check469, label %scalar.ph468.preheader, label %vector.body472

vector.body472:                                   ; preds = %bb.ev, %vector.body472
  %index473 = phi i64 [ %index.next478, %vector.body472 ], [ 0, %bb.ev ] ; 3 uses
  %i.aqe = getelementptr [8 x i8], ptr %invariant.gep.i.i276, i64 %index473 ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 16
  %wide.load474 = load <2 x double>, ptr %i.aqe, align 8, !tbaa !12
  %wide.load475 = load <2 x double>, ptr %i.aqf, align 8, !tbaa !12
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %index473 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16 ; 2 uses
  %wide.load476 = load <2 x double>, ptr %i.aqg, align 8, !tbaa !12
  %wide.load477 = load <2 x double>, ptr %i.aqh, align 8, !tbaa !12
  %i.aqi = fadd <2 x double> %wide.load474, %wide.load476
  %i.aqj = fadd <2 x double> %wide.load475, %wide.load477
  store <2 x double> %i.aqi, ptr %i.aqg, align 8, !tbaa !12
  store <2 x double> %i.aqj, ptr %i.aqh, align 8, !tbaa !12
  %index.next478 = add nuw i64 %index473, 4       ; 2 uses
  %i.aqk = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.aqk, label %middle.block479, label %vector.body472, !llvm.loop !188

middle.block479:                                  ; preds = %vector.body472
  br i1 %cmp.n480, label %.loopexit.loopexit.i.i, label %scalar.ph468.preheader

scalar.ph468.preheader:                           ; preds = %bb.ev, %middle.block479
  %indvars.iv.i.i277.ph = phi i64 [ 0, %bb.ev ], [ %n.vec471, %middle.block479 ]
  br label %scalar.ph468

scalar.ph468:                                     ; preds = %scalar.ph468.preheader, %scalar.ph468
  %indvars.iv.i.i277 = phi i64 [ %indvars.iv.next.i.i279, %scalar.ph468 ], [ %indvars.iv.i.i277.ph, %scalar.ph468.preheader ] ; 3 uses
  %gep.i.i278 = getelementptr [8 x i8], ptr %invariant.gep.i.i276, i64 %indvars.iv.i.i277
  %i.aql = load double, ptr %gep.i.i278, align 8, !tbaa !12
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %indvars.iv.i.i277 ; 2 uses
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !12
  %i.aqo = fadd double %i.aql, %i.aqn
  store double %i.aqo, ptr %i.aqm, align 8, !tbaa !12
  %indvars.iv.next.i.i279 = add nuw nsw i64 %indvars.iv.i.i277, 1 ; 2 uses
  %exitcond.not.i.i280 = icmp eq i64 %indvars.iv.next.i.i279, %i.pi
  br i1 %exitcond.not.i.i280, label %.loopexit.loopexit.i.i, label %scalar.ph468, !llvm.loop !189

.loopexit.loopexit.i.i:                           ; preds = %scalar.ph468, %middle.block479
  %i.aqp = add nsw i32 %.059.i.i, 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.059.i.i, %.lr.ph.i.i ], [ %i.aqp, %.loopexit.loopexit.i.i ] ; 3 uses
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %wide.trip.count68.i.i
  br i1 %exitcond69.not.i.i, label %._crit_edge.i.i281, label %.lr.ph.i.i, !llvm.loop !190

._crit_edge.i.i281:                               ; preds = %.loopexit.i.i
  %i.aqq = icmp sgt i32 %.1.i.i, 0
  br i1 %i.aqq, label %bb.ew, label %gv_calloc.exit.i.i

bb.ew:                                            ; preds = %._crit_edge.i.i281
  %i.aqr = uitofp nneg i32 %.1.i.i to double
  %i.aqs = fdiv nnan double 5.000000e-01, %i.aqr  ; 2 uses
  %i.aqt = mul nuw nsw i64 %indvars.iv75.i.i, %i.pi
  %invariant.gep84.i.i = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.aqt ; 2 uses
  br i1 %min.iters.check453, label %scalar.ph452.preheader, label %vector.ph454

vector.ph454:                                     ; preds = %bb.ew
  %broadcast.splatinsert456 = insertelement <2 x double> poison, double %i.aqs, i64 0
  %broadcast.splat457 = shufflevector <2 x double> %broadcast.splatinsert456, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph454
  %index459 = phi i64 [ 0, %vector.ph454 ], [ %index.next464, %vector.body458 ] ; 3 uses
  %i.aqu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep84.i.i, i64 %index459 ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16 ; 2 uses
  %wide.load460 = load <2 x double>, ptr %i.aqu, align 8, !tbaa !12
  %wide.load461 = load <2 x double>, ptr %i.aqv, align 8, !tbaa !12
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %index459 ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %wide.load462 = load <2 x double>, ptr %i.aqw, align 8, !tbaa !12
  %wide.load463 = load <2 x double>, ptr %i.aqx, align 8, !tbaa !12
  %i.aqy = fmul <2 x double> %broadcast.splat457, %wide.load462
  %i.aqz = fmul <2 x double> %broadcast.splat457, %wide.load463
  %i.ara = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load460, <2 x double> splat (double 5.000000e-01), <2 x double> %i.aqy)
  %i.arb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load461, <2 x double> splat (double 5.000000e-01), <2 x double> %i.aqz)
  store <2 x double> %i.ara, ptr %i.aqu, align 8, !tbaa !12
  store <2 x double> %i.arb, ptr %i.aqv, align 8, !tbaa !12
  %index.next464 = add nuw i64 %index459, 4       ; 2 uses
  %i.arc = icmp eq i64 %index.next464, %n.vec455
  br i1 %i.arc, label %middle.block465, label %vector.body458, !llvm.loop !191

middle.block465:                                  ; preds = %vector.body458
  br i1 %cmp.n466, label %gv_calloc.exit.i.i, label %scalar.ph452.preheader

scalar.ph452.preheader:                           ; preds = %bb.ew, %middle.block465
  %indvars.iv70.i.i.ph = phi i64 [ 0, %bb.ew ], [ %n.vec455, %middle.block465 ]
  br label %scalar.ph452

scalar.ph452:                                     ; preds = %scalar.ph452.preheader, %scalar.ph452
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i, %scalar.ph452 ], [ %indvars.iv70.i.i.ph, %scalar.ph452.preheader ] ; 3 uses
  %gep85.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep84.i.i, i64 %indvars.iv70.i.i ; 2 uses
  %i.ard = load double, ptr %gep85.i.i, align 8, !tbaa !12
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %indvars.iv70.i.i
  %i.arf = load double, ptr %i.are, align 8, !tbaa !12
  %i.arg = fmul double %i.aqs, %i.arf
  %i.arh = call double @llvm.fmuladd.f64(double %i.ard, double 5.000000e-01, double %i.arg)
  store double %i.arh, ptr %gep85.i.i, align 8, !tbaa !12
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %i.pi
  br i1 %exitcond74.not.i.i, label %gv_calloc.exit.i.i, label %scalar.ph452, !llvm.loop !192

gv_calloc.exit.i.i:                               ; preds = %scalar.ph452, %middle.block465, %._crit_edge.i.i281, %.preheader.i.i
  %exitcond79.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count78.i.i
  br i1 %exitcond79.not.i.i, label %interpolate_coord.exit.i, label %.preheader.i.i, !llvm.loop !193

interpolate_coord.exit.i:                         ; preds = %gv_calloc.exit.i.i, %gv_calloc.exit.preheader.i.i
  call void @free(ptr noundef %i.apn) #22
  %i.ari = load i32, ptr %i.apg, align 8, !tbaa !38 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apg, i64 32
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !36 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.apg, i64 40
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !37
  %i.arn = icmp sgt i32 %i.ari, 0
  br i1 %i.arn, label %.lr.ph.preheader.i266, label %prolongate.exit

.lr.ph.preheader.i266:                            ; preds = %interpolate_coord.exit.i
  %wide.trip.count.i267 = zext nneg i32 %i.ari to i64
  %.pre.i268 = load i32, ptr %i.ark, align 4, !tbaa !39
  br label %.lr.ph.i269

.loopexit30.i:                                    ; preds = %.loopexit.i273, %.lr.ph.i269
  %i.aro = phi i32 [ %i.arr, %.lr.ph.i269 ], [ %i.arv, %.loopexit.i273 ]
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i267
  br i1 %exitcond39.not.i, label %prolongate.exit, label %.lr.ph.i269, !llvm.loop !194

.lr.ph.i269:                                      ; preds = %.loopexit30.i, %.lr.ph.preheader.i266
  %i.arp = phi i32 [ %.pre.i268, %.lr.ph.preheader.i266 ], [ %i.aro, %.loopexit30.i ] ; 2 uses
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph.preheader.i266 ], [ %indvars.iv.next37.i, %.loopexit30.i ]
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 3 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %indvars.iv.next37.i ; 2 uses
  %.02732.i = add nsw i32 %i.arp, 1
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !39 ; 2 uses
  %i.ars = icmp slt i32 %.02732.i, %i.arr
  br i1 %i.ars, label %.preheader.preheader.i, label %.loopexit30.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i269
  %i.art = sext i32 %i.arp to i64
  %i.aru = add nsw i64 %i.art, 1
  br label %.preheader.i270

.loopexit.i273:                                   ; preds = %bb.ex
  %indvars.iv.next.i274 = add nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %i.arv = load i32, ptr %i.arq, align 4, !tbaa !39 ; 2 uses
  %i.arw = sext i32 %i.arv to i64
  %i.arx = icmp slt i64 %indvars.iv.next.i274, %i.arw
  br i1 %i.arx, label %.preheader.i270, label %.loopexit30.i, !llvm.loop !195

.preheader.i270:                                  ; preds = %.loopexit.i273, %.preheader.preheader.i
  %indvars.iv.i271 = phi i64 [ %i.aru, %.preheader.preheader.i ], [ %indvars.iv.next.i274, %.loopexit.i273 ] ; 2 uses
  %i.ary = getelementptr inbounds [4 x i8], ptr %i.arm, i64 %indvars.iv.i271
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %.preheader.i270
  %.031.i = phi i32 [ 0, %.preheader.i270 ], [ %i.asi, %bb.ex ] ; 2 uses
  %i.arz = call double @drand() #22
  %i.asa = fadd double %i.arz, -5.000000e-01
  %i.asb = load i32, ptr %i.ary, align 4, !tbaa !39
  %i.asc = mul nsw i32 %i.asb, %0
  %i.asd = add nsw i32 %i.asc, %.031.i
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.ase ; 2 uses
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !12
  %i.ash = call double @llvm.fmuladd.f64(double %i.api, double %i.asa, double %i.asg)
  store double %i.ash, ptr %i.asf, align 8, !tbaa !12
  %i.asi = add nuw nsw i32 %.031.i, 1             ; 2 uses
  %exitcond.not.i272 = icmp eq i32 %i.asi, %0
  br i1 %exitcond.not.i272, label %.loopexit.i273, label %bb.ex, !llvm.loop !196

prolongate.exit:                                  ; preds = %.loopexit30.i, %interpolate_coord.exit.i
  call void @free(ptr noundef %.1) #22
  %i.asj = load i8, ptr %i.pf, align 4
  %i.ask = load double, ptr %i.pc, align 8, !tbaa !29
  %i.asl = fmul double %i.ask, 7.500000e-01
  store double %i.asl, ptr %i.pc, align 8, !tbaa !29
  %i.asm = and i8 %i.asj, -4
  store i8 %i.asm, ptr %i.pf, align 4
  store double 1.000000e-01, ptr %i.pe, align 8, !tbaa !18
  br label %bb.bi

bb.ey:                                            ; preds = %bb.el
  call void @post_process_smoothing(i32 noundef %0, ptr noundef nonnull %.0142, ptr noundef nonnull byval(%struct.spring_electrical_control) align 8 %2, ptr noundef %4) #22
  %i.asn = load i8, ptr @Verbose, align 1, !tbaa !47
  %.not153 = icmp eq i8 %i.asn, 0
  br i1 %.not153, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aso = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.asp = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !20
  %i.asr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aso, ptr noundef nonnull @.str.13, i32 noundef %i.asq) #21 ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.ass = icmp eq i32 %0, 2
  br i1 %i.ass, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @pcp_rotate(i32 noundef %i.i, i32 noundef 2, ptr noundef %4)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.ast = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.asu = load double, ptr %i.ast, align 8, !tbaa !30 ; 2 uses
  %i.asv = fcmp une double %i.asu, 0.000000e+00
  br i1 %i.asv, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %13, i1 false), !tbaa !12
  %wide.trip.count83.i = zext nneg i32 %i.i to i64 ; 5 uses
  %min.iters.check715 = icmp ult i32 %0, 4
  %n.vec717 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n726 = icmp eq i64 %n.vec717, %i.pi
  br label %.preheader69.i

.preheader69.i:                                   ; preds = %.loopexit845, %bb.fd
  %indvars.iv80.i = phi i64 [ 0, %bb.fd ], [ %indvars.iv.next81.i, %.loopexit845 ] ; 2 uses
  %i.asw = mul nuw nsw i64 %indvars.iv80.i, %i.pi
  %invariant.gep.i282 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.asw ; 2 uses
  br i1 %min.iters.check715, label %scalar.ph714.preheader, label %vector.body718

vector.body718:                                   ; preds = %.preheader69.i, %vector.body718
  %index719 = phi i64 [ %index.next724, %vector.body718 ], [ 0, %.preheader69.i ] ; 3 uses
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i282, i64 %index719 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %wide.load720.a = load <2 x double>, ptr %i.asx, align 8, !tbaa !12
  %wide.load721.a = load <2 x double>, ptr %i.asy, align 8, !tbaa !12
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index719 ; 3 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 16 ; 2 uses
  %wide.load722.a = load <2 x double>, ptr %i.asz, align 16, !tbaa !12
  %wide.load723 = load <2 x double>, ptr %i.ata, align 16, !tbaa !12
  %i.atb = fadd <2 x double> %wide.load720.a, %wide.load722.a
  %i.atc = fadd <2 x double> %wide.load721.a, %wide.load723
  store <2 x double> %i.atb, ptr %i.asz, align 16, !tbaa !12
  store <2 x double> %i.atc, ptr %i.ata, align 16, !tbaa !12
  %index.next724 = add nuw i64 %index719, 4       ; 2 uses
  %i.atd = icmp eq i64 %index.next724, %n.vec717
  br i1 %i.atd, label %middle.block725, label %vector.body718, !llvm.loop !197

middle.block725:                                  ; preds = %vector.body718
  br i1 %cmp.n726, label %.loopexit845, label %scalar.ph714.preheader

scalar.ph714.preheader:                           ; preds = %.preheader69.i, %middle.block725
  %indvars.iv.i283.ph = phi i64 [ 0, %.preheader69.i ], [ %n.vec717, %middle.block725 ]
  br label %scalar.ph714

.preheader68.i:                                   ; preds = %.loopexit845
  %i.ate = uitofp nneg i32 %i.i to double         ; 2 uses
  %min.iters.check729 = icmp ult i32 %0, 2
  br i1 %min.iters.check729, label %scalar.ph728.preheader, label %vector.ph730

vector.ph730:                                     ; preds = %.preheader68.i
  %n.vec731 = and i64 %i.pi, 2147483646           ; 3 uses
  %broadcast.splatinsert732 = insertelement <2 x double> poison, double %i.ate, i64 0
  %broadcast.splat733 = shufflevector <2 x double> %broadcast.splatinsert732, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph730
  %index735 = phi i64 [ 0, %vector.ph730 ], [ %index.next737, %vector.body734 ] ; 2 uses
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index735 ; 2 uses
  %wide.load736 = load <2 x double>, ptr %i.atf, align 16, !tbaa !12
  %i.atg = fdiv <2 x double> %wide.load736, %broadcast.splat733
  store <2 x double> %i.atg, ptr %i.atf, align 16, !tbaa !12
  %index.next737 = add nuw i64 %index735, 2       ; 2 uses
  %i.ath = icmp eq i64 %index.next737, %n.vec731
  br i1 %i.ath, label %middle.block738, label %vector.body734, !llvm.loop !198

middle.block738:                                  ; preds = %vector.body734
  %cmp.n739 = icmp eq i64 %n.vec731, %i.pi
  br i1 %cmp.n739, label %.preheader.i287.preheader, label %scalar.ph728.preheader

scalar.ph728.preheader:                           ; preds = %.preheader68.i, %middle.block738
  %indvars.iv85.i.ph = phi i64 [ 0, %.preheader68.i ], [ %n.vec731, %middle.block738 ]
  br label %scalar.ph728

scalar.ph714:                                     ; preds = %scalar.ph714.preheader, %scalar.ph714
  %indvars.iv.i283 = phi i64 [ %indvars.iv.next.i285, %scalar.ph714 ], [ %indvars.iv.i283.ph, %scalar.ph714.preheader ] ; 3 uses
  %gep.i284 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i282, i64 %indvars.iv.i283
  %i.ati = load double, ptr %gep.i284, align 8, !tbaa !12
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i283 ; 2 uses
  %i.atk = load double, ptr %i.atj, align 8, !tbaa !12
  %i.atl = fadd double %i.ati, %i.atk
  store double %i.atl, ptr %i.atj, align 8, !tbaa !12
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i286 = icmp eq i64 %indvars.iv.next.i285, %i.pi
  br i1 %exitcond.not.i286, label %.loopexit845, label %scalar.ph714, !llvm.loop !199

.loopexit845:                                     ; preds = %scalar.ph714, %middle.block725
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %.preheader68.i, label %.preheader69.i, !llvm.loop !200

scalar.ph728:                                     ; preds = %scalar.ph728.preheader, %scalar.ph728
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %scalar.ph728 ], [ %indvars.iv85.i.ph, %scalar.ph728.preheader ] ; 2 uses
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv85.i ; 2 uses
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !12
  %i.ato = fdiv double %i.atn, %i.ate
  store double %i.ato, ptr %i.atm, align 8, !tbaa !12
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %i.pi
  br i1 %exitcond89.not.i, label %.preheader.i287.preheader, label %scalar.ph728, !llvm.loop !201

.preheader.i287.preheader:                        ; preds = %scalar.ph728, %middle.block738
  %min.iters.check742 = icmp ult i32 %0, 4
  %n.vec744 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n753 = icmp eq i64 %n.vec744, %i.pi
  br label %.preheader.i287

.preheader.i287:                                  ; preds = %.preheader.i287.preheader, %.loopexit844
  %indvars.iv95.i = phi i64 [ %indvars.iv.next96.i, %.loopexit844 ], [ 0, %.preheader.i287.preheader ] ; 2 uses
  %i.atp = mul nuw nsw i64 %indvars.iv95.i, %i.pi
  %invariant.gep105.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.atp ; 2 uses
  br i1 %min.iters.check742, label %scalar.ph741.preheader, label %vector.body745

vector.body745:                                   ; preds = %.preheader.i287, %vector.body745
  %index746 = phi i64 [ %index.next751, %vector.body745 ], [ 0, %.preheader.i287 ] ; 3 uses
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep105.i, i64 %index746 ; 3 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 16 ; 2 uses
  %wide.load747.a = load <2 x double>, ptr %i.atq, align 8, !tbaa !12
  %wide.load748.a = load <2 x double>, ptr %i.atr, align 8, !tbaa !12
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index746 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %wide.load749.a = load <2 x double>, ptr %i.ats, align 16, !tbaa !12
  %wide.load750 = load <2 x double>, ptr %i.att, align 16, !tbaa !12
  %i.atu = fsub <2 x double> %wide.load747.a, %wide.load749.a
  %i.atv = fsub <2 x double> %wide.load748.a, %wide.load750
  store <2 x double> %i.atu, ptr %i.atq, align 8, !tbaa !12
  store <2 x double> %i.atv, ptr %i.atr, align 8, !tbaa !12
  %index.next751 = add nuw i64 %index746, 4       ; 2 uses
  %i.atw = icmp eq i64 %index.next751, %n.vec744
  br i1 %i.atw, label %middle.block752, label %vector.body745, !llvm.loop !202

middle.block752:                                  ; preds = %vector.body745
  br i1 %cmp.n753, label %.loopexit844, label %scalar.ph741.preheader

scalar.ph741.preheader:                           ; preds = %.preheader.i287, %middle.block752
  %indvars.iv90.i.ph = phi i64 [ 0, %.preheader.i287 ], [ %n.vec744, %middle.block752 ]
  br label %scalar.ph741

scalar.ph741:                                     ; preds = %scalar.ph741.preheader, %scalar.ph741
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %scalar.ph741 ], [ %indvars.iv90.i.ph, %scalar.ph741.preheader ] ; 3 uses
  %gep106.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep105.i, i64 %indvars.iv90.i ; 2 uses
  %i.atx = load double, ptr %gep106.i, align 8, !tbaa !12
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv90.i
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !12
  %i.aua = fsub double %i.atx, %i.atz
  store double %i.aua, ptr %gep106.i, align 8, !tbaa !12
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next91.i, %i.pi
  br i1 %exitcond94.not.i, label %.loopexit844, label %scalar.ph741, !llvm.loop !203

.loopexit844:                                     ; preds = %scalar.ph741, %middle.block752
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count83.i
  br i1 %exitcond99.not.i, label %.lver.check, label %.preheader.i287, !llvm.loop !204

.lver.check:                                      ; preds = %.loopexit844
  %i.aub = fmul double %i.asu, f0xBF91DF45A50DE270 ; 2 uses
  %i.auc = call double @cos(double noundef %i.aub) #22 ; 2 uses
  %i.aud = call double @sin(double noundef %i.aub) #22 ; 2 uses
  %ident.check.not = icmp eq i32 %0, 1
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig.preheader

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %i.aue = insertelement <2 x double> poison, double %i.aud, i64 0
  %i.auf = insertelement <2 x double> %i.aue, double %i.auc, i64 1 ; 2 uses
  %i.aug = shufflevector <2 x double> %i.auf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig.preheader, %.ph.lver.orig
  %indvars.iv100.i.lver.orig = phi i64 [ %indvars.iv.next101.i.lver.orig, %.ph.lver.orig ], [ 0, %.ph.lver.orig.preheader ] ; 2 uses
  %i.auh = mul nuw nsw i64 %indvars.iv100.i.lver.orig, %i.pi
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.auh ; 3 uses
  %i.auj = load double, ptr %i.aui, align 8, !tbaa !12 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !12
  %i.aum = fneg double %i.auj
  %i.aun = insertelement <2 x double> poison, double %i.aul, i64 0
  %i.auo = shufflevector <2 x double> %i.aun, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aup = fmul <2 x double> %i.auf, %i.auo
  %i.auq = insertelement <2 x double> poison, double %i.auj, i64 0
  %i.aur = insertelement <2 x double> %i.auq, double %i.aum, i64 1
  %i.aus = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aur, <2 x double> %i.aug, <2 x double> %i.aup)
  store <2 x double> %i.aus, ptr %i.aui, align 8, !tbaa !12
  %indvars.iv.next101.i.lver.orig = add nuw nsw i64 %indvars.iv100.i.lver.orig, 1 ; 2 uses
  %exitcond104.not.i.lver.orig = icmp eq i64 %indvars.iv.next101.i.lver.orig, %wide.trip.count83.i
  br i1 %exitcond104.not.i.lver.orig, label %rotate.exit, label %.ph.lver.orig, !llvm.loop !205

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %4, align 8    ; 2 uses
  %i.aut = insertelement <2 x double> poison, double %i.aud, i64 0
  %i.auu = insertelement <2 x double> %i.aut, double %i.auc, i64 1 ; 4 uses
  %i.auv = shufflevector <2 x double> %i.auu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %xtraiter920 = and i64 %wide.trip.count83.i, 1
  %i.auw = icmp eq i32 %i.i, 1
  br i1 %i.auw, label %.epil.preheader919, label %.ph.new

.ph.new:                                          ; preds = %.ph
  %unroll_iter924 = and i64 %wide.trip.count83.i, 2147483646
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %.ph.new
  %store_forwarded = phi double [ %load_initial, %.ph.new ], [ %i.avu, %bb.fe ] ; 2 uses
  %indvars.iv100.i = phi i64 [ 0, %.ph.new ], [ %indvars.iv.next101.i.1, %bb.fe ] ; 3 uses
  %niter925 = phi i64 [ 0, %.ph.new ], [ %niter925.next.1, %bb.fe ]
  %i.aux = mul nuw nsw i64 %indvars.iv100.i, %i.pi
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aux ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !12
end_hunk_2
