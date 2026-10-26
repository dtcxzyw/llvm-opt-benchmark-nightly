Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/backward_references_cost_enc?download=true
inline.NumInlined: 65
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@VP8LBackwardReferencesTraceBackwards:bb.a
  %i.my = shl nsw i64 %i.mx, 23
  %i.mz = add nsw i64 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.i.i
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.af, !llvm.loop !45

._crit_edge.i.i:                                  ; preds = %GetLengthCost.exit.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  store i64 1, ptr %i.nb, align 8, !tbaa !25
  %.not96.i.i = icmp eq i32 %i.a, 1
  br i1 %.not96.i.i, label %._crit_edge69.i.i, label %.lr.ph68.i.i.preheader

.lr.ph68.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.nc = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.nc, 1
  %i.nd = icmp eq i32 %i.a, 2
  br i1 %i.nd, label %.lr.ph68.i.i.epil.preheader, label %.lr.ph68.i.i.preheader.new

.lr.ph68.i.i.preheader.new:                       ; preds = %.lr.ph68.i.i.preheader
  %unroll_iter = and i64 %i.nc, -2
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %bb.ak, %.lr.ph68.i.i.preheader.new
  %i.ne = phi i64 [ 1, %.lr.ph68.i.i.preheader.new ], [ %i.nq, %bb.ak ] ; 2 uses
  %indvars.iv78.i.i = phi i64 [ 1, %.lr.ph68.i.i.preheader.new ], [ %indvars.iv.next79.i.i.1, %bb.ak ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.preheader.new ], [ %niter.next.1, %bb.ak ]
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv78.i.i ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !26
  %i.nh = getelementptr i8, ptr %i.nf, i64 -8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !26
  %.not64.i.i = icmp eq i64 %i.ng, %i.ni
  br i1 %.not64.i.i, label %.lr.ph68.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph68.i.i
  %i.nj = add i64 %i.ne, 1                        ; 2 uses
  store i64 %i.nj, ptr %i.nb, align 8, !tbaa !25
  br label %.lr.ph68.i.i.1

.lr.ph68.i.i.1:                                   ; preds = %bb.ai, %.lr.ph68.i.i
  %i.nk = phi i64 [ %i.ne, %.lr.ph68.i.i ], [ %i.nj, %bb.ai ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv78.i.i ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !26
  %i.no = load i64, ptr %i.nl, align 8, !tbaa !26
  %.not64.i.i.1 = icmp eq i64 %i.nn, %i.no
  br i1 %.not64.i.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph68.i.i.1
  %i.np = add i64 %i.nk, 1                        ; 2 uses
  store i64 %i.np, ptr %i.nb, align 8, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph68.i.i.1
  %i.nq = phi i64 [ %i.nk, %.lr.ph68.i.i.1 ], [ %i.np, %bb.aj ] ; 3 uses
  %indvars.iv.next79.i.i.1 = add nuw nsw i64 %indvars.iv78.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge69.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i, !llvm.loop !46

._crit_edge69.i.i.loopexit.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge69.i.i, label %.lr.ph68.i.i.epil.preheader

.lr.ph68.i.i.epil.preheader:                      ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.preheader
  %.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %i.nq, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv78.i.i.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %indvars.iv.next79.i.i.1, %._crit_edge69.i.i.loopexit.unr-lcssa ]
  %lcmp.mod203 = trunc i64 %i.nc to i1
  call void @llvm.assume(i1 %lcmp.mod203)
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv78.i.i.epil.init ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !26
  %i.nt = getelementptr i8, ptr %i.nr, i64 -8
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !26
  %.not64.i.i.epil = icmp eq i64 %i.ns, %i.nu
  br i1 %.not64.i.i.epil, label %._crit_edge69.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph68.i.i.epil.preheader
  %i.nv = add i64 %.epil.init, 1                  ; 2 uses
  store i64 %i.nv, ptr %i.nb, align 8, !tbaa !25
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %bb.al, %.lr.ph68.i.i.epil.preheader, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.nw = phi i1 [ false, %._crit_edge.thread.i.i ], [ false, %._crit_edge.i.i ], [ true, %.lr.ph68.i.i.epil.preheader ], [ true, %bb.al ], [ true, %._crit_edge69.i.i.loopexit.unr-lcssa ]
  %i.nx = phi i64 [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ], [ %i.nq, %._crit_edge69.i.i.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph68.i.i.epil.preheader ], [ %i.nv, %bb.al ]
  %i.ny = call ptr @WebPSafeMalloc(i64 noundef %i.nx, i64 noundef 16) #8 ; 7 uses
  store ptr %i.ny, ptr %i.lc, align 8, !tbaa !17
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %CostManagerInit.exit.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge69.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i32 0, ptr %i.oa, align 8, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  store i32 1, ptr %i.ob, align 4, !tbaa !29
  %i.oc = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !26 ; 3 uses
  store i64 %i.od, ptr %i.ny, align 8, !tbaa !30
  br i1 %i.nw, label %.lr.ph73.preheader.i.i, label %._crit_edge74.i.i

.lr.ph73.preheader.i.i:                           ; preds = %bb.am
  %wide.trip.count86.i.i = zext i32 %i.la to i64
  %i.oe = add nsw i64 %wide.trip.count86.i.i, -1  ; 3 uses
  %xtraiter204 = and i64 %i.oe, 1
  %i.of = icmp eq i32 %i.a, 2
  br i1 %i.of, label %.lr.ph73.i.i.epil.preheader, label %.lr.ph73.preheader.i.i.new

.lr.ph73.preheader.i.i.new:                       ; preds = %.lr.ph73.preheader.i.i
  %unroll_iter209 = and i64 %i.oe, -2
  br label %.lr.ph73.i.i

.lr.ph73.i.i:                                     ; preds = %bb.ap, %.lr.ph73.preheader.i.i.new
  %i.og = phi i64 [ %i.od, %.lr.ph73.preheader.i.i.new ], [ %i.op, %bb.ap ]
  %indvars.iv83.i.i = phi i64 [ 1, %.lr.ph73.preheader.i.i.new ], [ %indvars.iv.next84.i.i.1, %bb.ap ] ; 4 uses
  %.071.i.i = phi ptr [ %i.ny, %.lr.ph73.preheader.i.i.new ], [ %.1.i.i.1, %bb.ap ] ; 3 uses
  %niter210 = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %niter210.next.1, %bb.ap ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv83.i.i
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !26 ; 3 uses
  %.not.i.i = icmp eq i64 %i.oi, %i.og
  br i1 %.not.i.i, label %.lr.ph73.i.i.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph73.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 24
  %i.ol = trunc nuw nsw i64 %indvars.iv83.i.i to i32
  store i32 %i.ol, ptr %i.ok, align 8, !tbaa !28
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !30
  br label %.lr.ph73.i.i.1

.lr.ph73.i.i.1:                                   ; preds = %bb.an, %.lr.ph73.i.i
  %.1.i.i = phi ptr [ %i.oj, %bb.an ], [ %.071.i.i, %.lr.ph73.i.i ] ; 4 uses
  %indvars.iv.next84.i.i = add nuw nsw i64 %indvars.iv83.i.i, 1 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 12
  %i.on = trunc nuw nsw i64 %indvars.iv.next84.i.i to i32
  store i32 %i.on, ptr %i.om, align 4, !tbaa !29
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next84.i.i
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !26 ; 4 uses
  %.not.i.i.1 = icmp eq i64 %i.op, %i.oi
  br i1 %.not.i.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph73.i.i.1
  %i.oq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.os = trunc nuw nsw i64 %indvars.iv.next84.i.i to i32
  store i32 %i.os, ptr %i.or, align 8, !tbaa !28
  store i64 %i.op, ptr %i.oq, align 8, !tbaa !30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph73.i.i.1
  %.1.i.i.1 = phi ptr [ %i.oq, %bb.ao ], [ %.1.i.i, %.lr.ph73.i.i.1 ] ; 3 uses
  %indvars.iv.next84.i.i.1 = add nuw nsw i64 %indvars.iv83.i.i, 2 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 12
  %i.ou = trunc nuw nsw i64 %indvars.iv.next84.i.i.1 to i32
  store i32 %i.ou, ptr %i.ot, align 4, !tbaa !29
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %._crit_edge74.i.i.loopexit.unr-lcssa, label %.lr.ph73.i.i, !llvm.loop !47

._crit_edge74.i.i.loopexit.unr-lcssa:             ; preds = %bb.ap
  %lcmp.mod207.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod207.not, label %._crit_edge74.i.i, label %.lr.ph73.i.i.epil.preheader

.lr.ph73.i.i.epil.preheader:                      ; preds = %._crit_edge74.i.i.loopexit.unr-lcssa, %.lr.ph73.preheader.i.i
  %.epil.init206 = phi i64 [ %i.od, %.lr.ph73.preheader.i.i ], [ %i.op, %._crit_edge74.i.i.loopexit.unr-lcssa ]
  %indvars.iv83.i.i.epil.init = phi i64 [ 1, %.lr.ph73.preheader.i.i ], [ %indvars.iv.next84.i.i.1, %._crit_edge74.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.071.i.i.epil.init = phi ptr [ %i.ny, %.lr.ph73.preheader.i.i ], [ %.1.i.i.1, %._crit_edge74.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod208 = trunc i64 %i.oe to i1
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv83.i.i.epil.init
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.ow, %.epil.init206
  br i1 %.not.i.i.epil, label %._crit_edge74.i.i.loopexit.epilog-lcssa, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph73.i.i.epil.preheader
  %i.ox = getelementptr inbounds nuw i8, ptr %.071.i.i.epil.init, i64 16 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.071.i.i.epil.init, i64 24
  %i.oz = trunc nuw nsw i64 %indvars.iv83.i.i.epil.init to i32
  store i32 %i.oz, ptr %i.oy, align 8, !tbaa !28
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !30
  br label %._crit_edge74.i.i.loopexit.epilog-lcssa

._crit_edge74.i.i.loopexit.epilog-lcssa:          ; preds = %bb.aq, %.lr.ph73.i.i.epil.preheader
  %.1.i.i.epil = phi ptr [ %i.ox, %bb.aq ], [ %.071.i.i.epil.init, %.lr.ph73.i.i.epil.preheader ]
  %i.pa = getelementptr inbounds nuw i8, ptr %.1.i.i.epil, i64 12
  %i.pb = trunc i64 %indvars.iv83.i.i.epil.init to i32
  %i.pc = add i32 %i.pb, 1
  store i32 %i.pc, ptr %i.pa, align 4, !tbaa !29
  br label %._crit_edge74.i.i

._crit_edge74.i.i:                                ; preds = %._crit_edge74.i.i.loopexit.epilog-lcssa, %._crit_edge74.i.i.loopexit.unr-lcssa, %bb.am
  %i.pd = call ptr @WebPSafeMalloc(i64 noundef %i.b, i64 noundef 8) #8 ; 6 uses
  store ptr %i.pd, ptr %i.lb, align 8, !tbaa !16
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %CostManagerInit.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge74.i.i
  br i1 %i.mb, label %.lr.ph76.preheader.i.i, label %.loopexit157.i

.lr.ph76.preheader.i.i:                           ; preds = %.preheader.i.i
  %wide.trip.count91.i.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph76.i.i.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph76.preheader.i.i
  %n.vec173 = and i64 %wide.trip.count91.i.i, 2147483644 ; 3 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next176, %vector.body174 ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %index175 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store <2 x i64> splat (i64 9223372036854775807), ptr %i.pf, align 8, !tbaa !26
  store <2 x i64> splat (i64 9223372036854775807), ptr %i.pg, align 8, !tbaa !26
  %index.next176 = add nuw i64 %index175, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next176, %n.vec173
  br i1 %i.ph, label %middle.block177, label %vector.body174, !llvm.loop !48

middle.block177:                                  ; preds = %vector.body174
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count91.i.i
  br i1 %cmp.n178, label %.loopexit157.i, label %.lr.ph76.i.i.preheader

.lr.ph76.i.i.preheader:                           ; preds = %.lr.ph76.preheader.i.i, %middle.block177
  %indvars.iv88.i.i.ph = phi i64 [ 0, %.lr.ph76.preheader.i.i ], [ %n.vec173, %middle.block177 ]
  br label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.preheader, %.lr.ph76.i.i
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %.lr.ph76.i.i ], [ %indvars.iv88.i.i.ph, %.lr.ph76.i.i.preheader ] ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv88.i.i
  store i64 9223372036854775807, ptr %i.pi, align 8, !tbaa !26
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %indvars.iv.next89.i.i, %wide.trip.count91.i.i
  br i1 %exitcond92.not.i.i, label %.loopexit157.i, label %.lr.ph76.i.i, !llvm.loop !49

CostManagerInit.exit.i:                           ; preds = %._crit_edge74.i.i, %._crit_edge69.i.i
  call fastcc void @CostManagerClear(ptr noundef nonnull %i.m)
  br label %bb.bw

.loopexit157.i:                                   ; preds = %.lr.ph76.i.i, %middle.block177, %.preheader.i.i
  store i16 0, ptr %i.c, align 2, !tbaa !31
  %i.pj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.pk = load i32, ptr %2, align 4, !tbaa !62    ; 7 uses
  br i1 %i.e, label %.thread2.i.i, label %bb.ar

bb.ar:                                            ; preds = %.loopexit157.i
  %.val108.i = load i32, ptr %i.pj, align 8
  %.val107.i = load ptr, ptr %8, align 8
  %i.pl = mul i32 %i.pk, 506832829
  %i.pm = lshr i32 %i.pl, %.val108.i              ; 3 uses
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %.val107.i, i64 %i.pn ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !62
  %i.pq = icmp eq i32 %i.pp, %i.pk
  %i.pr = icmp sgt i32 %i.pm, -1
  %or.cond.i.i = and i1 %i.pr, %i.pq
  br i1 %or.cond.i.i, label %bb.as, label %.thread1.i.i

bb.as:                                            ; preds = %bb.ar
  %.val25.i.i = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ps = add nuw i32 %i.pm, 280
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %.val25.i.i, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !62
  %i.pw = zext i32 %i.pv to i64
  %i.px = mul nuw nsw i64 %i.pw, 68
  %i.py = add nuw nsw i64 %i.px, 48
  br label %bb.at

.thread1.i.i:                                     ; preds = %bb.ar
  store i32 %i.pk, ptr %i.po, align 4, !tbaa !62
  br label %.thread2.i.i

.thread2.i.i:                                     ; preds = %.thread1.i.i, %.loopexit157.i
  %i.pz = lshr i32 %i.pk, 24
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !62
  %i.qd = zext i32 %i.qc to i64
  %i.qe = lshr i32 %i.pk, 16
  %i.qf = and i32 %i.qe, 255
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !62
  %i.qj = zext i32 %i.qi to i64
  %i.qk = add nuw nsw i64 %i.qj, %i.qd
  %i.ql = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.qm = lshr i32 %i.pk, 8
  %i.qn = and i32 %i.qm, 255
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !62
  %i.qr = zext i32 %i.qq to i64
  %i.qs = add nuw nsw i64 %i.qk, %i.qr
  %i.qt = and i32 %i.pk, 255
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !62
  %i.qx = zext i32 %i.qw to i64
  %i.qy = add nuw nsw i64 %i.qs, %i.qx
  %i.qz = mul nuw nsw i64 %i.qy, 82
  %i.ra = add nuw nsw i64 %i.qz, 50
  br label %bb.at

bb.at:                                            ; preds = %.thread2.i.i, %bb.as
  %.pn.in.i.i = phi i64 [ %i.py, %bb.as ], [ %i.ra, %.thread2.i.i ]
  %.pn.i.i = udiv i64 %.pn.in.i.i, 100            ; 2 uses
  %i.rb = load i64, ptr %i.pd, align 8, !tbaa !26
  %i.rc = icmp sgt i64 %i.rb, %.pn.i.i
  br i1 %i.rc, label %bb.au, label %AddSingleLiteralWithCostModel.exit.i

bb.au:                                            ; preds = %bb.at
  store i64 %.pn.i.i, ptr %i.pd, align 8, !tbaa !26
  store i16 1, ptr %i.c, align 2, !tbaa !31
  br label %AddSingleLiteralWithCostModel.exit.i

AddSingleLiteralWithCostModel.exit.i:             ; preds = %bb.au, %bb.at
  %i.rd = icmp sgt i32 %i.a, 1
  br i1 %i.rd, label %.lr.ph179.i, label %._crit_edge.i

.lr.ph179.i:                                      ; preds = %AddSingleLiteralWithCostModel.exit.i
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.av

bb.av:                                            ; preds = %UpdateCostAtIndex.exit137.i, %.lr.ph179.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph179.i ], [ %indvars.iv.next.i, %UpdateCostAtIndex.exit137.i ] ; 13 uses
  %.081174.i = phi i32 [ 0, %.lr.ph179.i ], [ %.2.i, %UpdateCostAtIndex.exit137.i ] ; 3 uses
  %.082173.i = phi i32 [ -1, %.lr.ph179.i ], [ %.284.i, %UpdateCostAtIndex.exit137.i ] ; 2 uses
  %.085172.i = phi i64 [ -1, %.lr.ph179.i ], [ %.186.i, %UpdateCostAtIndex.exit137.i ] ; 4 uses
  %.087171.i = phi i32 [ -1, %.lr.ph179.i ], [ %i.rl, %UpdateCostAtIndex.exit137.i ]
  %.088170.i = phi i32 [ -1, %.lr.ph179.i ], [ %i.rk, %UpdateCostAtIndex.exit137.i ] ; 2 uses
  %indvars190.i = trunc i64 %indvars.iv.i to i32  ; 4 uses
  %i.re = load ptr, ptr %i.lb, align 8, !tbaa !16 ; 5 uses
  %i.rf = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !26 ; 2 uses
  %.val111.i = load ptr, ptr %4, align 8, !tbaa !68 ; 3 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.val111.i, i64 %indvars.iv.i
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !62 ; 2 uses
  %i.rk = lshr i32 %i.rj, 12                      ; 3 uses
  %i.rl = and i32 %i.rj, 4095                     ; 4 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !62 ; 7 uses
  br i1 %i.e, label %.thread2.i117.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val106.i = load i32, ptr %i.pj, align 8
  %.val.i = load ptr, ptr %8, align 8
  %i.ro = mul i32 %i.rn, 506832829
  %i.rp = lshr i32 %i.ro, %.val106.i              ; 3 uses
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.rq ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !62
  %i.rt = icmp eq i32 %i.rs, %i.rn
  %i.ru = icmp sgt i32 %i.rp, -1
  %or.cond.i115.i = and i1 %i.ru, %i.rt
  br i1 %or.cond.i115.i, label %bb.ax, label %.thread1.i116.i

bb.ax:                                            ; preds = %bb.aw
  %.val25.i121.i = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.rv = add nuw i32 %i.rp, 280
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %.val25.i121.i, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !62
  %i.rz = zext i32 %i.ry to i64
  %i.sa = mul nuw nsw i64 %i.rz, 68
  %i.sb = add nuw nsw i64 %i.sa, 48
  br label %bb.ay

.thread1.i116.i:                                  ; preds = %bb.aw
  store i32 %i.rn, ptr %i.rr, align 4, !tbaa !62
  br label %.thread2.i117.i

.thread2.i117.i:                                  ; preds = %.thread1.i116.i, %bb.av
  %i.sc = lshr i32 %i.rn, 24
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !62
  %i.sg = zext i32 %i.sf to i64
  %i.sh = lshr i32 %i.rn, 16
  %i.si = and i32 %i.sh, 255
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !62
  %i.sm = zext i32 %i.sl to i64
  %i.sn = add nuw nsw i64 %i.sm, %i.sg
  %i.so = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.sp = lshr i32 %i.rn, 8
  %i.sq = and i32 %i.sp, 255
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !62
  %i.su = zext i32 %i.st to i64
  %i.sv = add nuw nsw i64 %i.sn, %i.su
  %i.sw = and i32 %i.rn, 255
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !62
  %i.ta = zext i32 %i.sz to i64
  %i.tb = add nuw nsw i64 %i.sv, %i.ta
  %i.tc = mul nuw nsw i64 %i.tb, 82
  %i.td = add nuw nsw i64 %i.tc, 50
  br label %bb.ay
end_hunk_0
begin_hunk_1_@InsertInterval:bb.a
  store i16 %i.n, ptr %i.p, align 2, !tbaa !31
  br label %UpdateCost.exit.i.prol

UpdateCost.exit.i.prol:                           ; preds = %bb.c, %.prol.preheader92
  %indvars.iv.next.i.prol = add nsw i64 %i.g, 1
  br label %.prol.loopexit93

.prol.loopexit93:                                 ; preds = %UpdateCost.exit.i.prol, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.g, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %UpdateCost.exit.i.prol ]
  %i.q = add nsw i64 %wide.trip.count.i, -1
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %UpdateCostPerInterval.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit93, %UpdateCost.exit.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %UpdateCost.exit.i.1 ], [ %indvars.iv.i.unr, %.prol.loopexit93 ] ; 5 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp sgt i64 %i.t, %2
  br i1 %i.u, label %bb.d, label %UpdateCost.exit.i

bb.d:                                             ; preds = %.lr.ph.i.new
  store i64 %2, ptr %i.s, align 8, !tbaa !26
  %i.v = trunc i64 %indvars.iv.i to i32
  %i.w = sub i32 %i.v, %3
  %i.x = trunc i32 %i.w to i16
  %i.y = add i16 %i.x, 1
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.z, i64 %indvars.iv.i
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !31
  br label %UpdateCost.exit.i

UpdateCost.exit.i:                                ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.i ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = icmp sgt i64 %i.ac, %2
  br i1 %i.ad, label %bb.e, label %UpdateCost.exit.i.1

bb.e:                                             ; preds = %UpdateCost.exit.i
  store i64 %2, ptr %i.ab, align 8, !tbaa !26
  %i.ae = trunc i64 %indvars.iv.next.i to i32
  %i.af = sub i32 %i.ae, %3
  %i.ag = trunc i32 %i.af to i16
  %i.ah = add i16 %i.ag, 1
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  store i16 %i.ah, ptr %i.aj, align 2, !tbaa !31
  br label %UpdateCost.exit.i.1

UpdateCost.exit.i.1:                              ; preds = %bb.e, %UpdateCost.exit.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %UpdateCostPerInterval.exit, label %.lr.ph.i.new, !llvm.loop !81

bb.f:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 33208 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 3 uses
  %.not38 = icmp eq ptr %i.al, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !24
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 33216 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 3 uses
  %.not39 = icmp eq ptr %i.ap, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !19
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.as = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef 40) #8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i40, label %bb.n

.lr.ph.i40:                                       ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32792
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32800 ; 3 uses
  %i.ax = sext i32 %4 to i64                      ; 6 uses
  %wide.trip.count.i41 = sext i32 %5 to i64       ; 3 uses
  %i.ay = sub nsw i64 %wide.trip.count.i41, %i.ax
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i40
  %i.az = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26
  %i.bb = icmp sgt i64 %i.ba, %2
  br i1 %i.bb, label %bb.k, label %UpdateCost.exit.i43.prol

bb.k:                                             ; preds = %.prol.preheader
  store i64 %2, ptr %i.az, align 8, !tbaa !26
  %i.bc = sub i32 %4, %3
  %i.bd = trunc i32 %i.bc to i16
  %i.be = add i16 %i.bd, 1
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.ax
  store i16 %i.be, ptr %i.bg, align 2, !tbaa !31
  br label %UpdateCost.exit.i43.prol

UpdateCost.exit.i43.prol:                         ; preds = %bb.k, %.prol.preheader
  %indvars.iv.next.i44.prol = add nsw i64 %i.ax, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %UpdateCost.exit.i43.prol, %.lr.ph.i40
  %indvars.iv.i42.unr = phi i64 [ %i.ax, %.lr.ph.i40 ], [ %indvars.iv.next.i44.prol, %UpdateCost.exit.i43.prol ]
  %i.bh = add nsw i64 %wide.trip.count.i41, -1
  %i.bi = icmp eq i64 %i.bh, %i.ax
  br i1 %i.bi, label %UpdateCostPerInterval.exit, label %.lr.ph.i40.new

.lr.ph.i40.new:                                   ; preds = %.prol.loopexit, %UpdateCost.exit.i43.1
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i44.1, %UpdateCost.exit.i43.1 ], [ %indvars.iv.i42.unr, %.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv.i42 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = icmp sgt i64 %i.bk, %2
  br i1 %i.bl, label %bb.l, label %UpdateCost.exit.i43

bb.l:                                             ; preds = %.lr.ph.i40.new
  store i64 %2, ptr %i.bj, align 8, !tbaa !26
  %i.bm = trunc i64 %indvars.iv.i42 to i32
  %i.bn = sub i32 %i.bm, %3
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = add i16 %i.bo, 1
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %indvars.iv.i42
  store i16 %i.bp, ptr %i.br, align 2, !tbaa !31
  br label %UpdateCost.exit.i43

UpdateCost.exit.i43:                              ; preds = %bb.l, %.lr.ph.i40.new
  %indvars.iv.next.i44 = add nsw i64 %indvars.iv.i42, 1 ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv.next.i44 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bu = icmp sgt i64 %i.bt, %2
  br i1 %i.bu, label %bb.m, label %UpdateCost.exit.i43.1

bb.m:                                             ; preds = %UpdateCost.exit.i43
  store i64 %2, ptr %i.bs, align 8, !tbaa !26
  %i.bv = trunc i64 %indvars.iv.next.i44 to i32
  %i.bw = sub i32 %i.bv, %3
  %i.bx = trunc i32 %i.bw to i16
  %i.by = add i16 %i.bx, 1
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %indvars.iv.next.i44
  store i16 %i.by, ptr %i.ca, align 2, !tbaa !31
  br label %UpdateCost.exit.i43.1

UpdateCost.exit.i43.1:                            ; preds = %bb.m, %UpdateCost.exit.i43
  %indvars.iv.next.i44.1 = add nsw i64 %indvars.iv.i42, 2 ; 2 uses
  %exitcond.not.i45.1 = icmp eq i64 %indvars.iv.next.i44.1, %wide.trip.count.i41
  br i1 %exitcond.not.i45.1, label %UpdateCostPerInterval.exit, label %.lr.ph.i40.new, !llvm.loop !81

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.0 = phi ptr [ %i.al, %bb.g ], [ %i.ap, %bb.i ], [ %i.as, %bb.j ] ; 11 uses
  store i64 %2, ptr %.0, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i32 %3, ptr %i.cb, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %4, ptr %i.cc, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 %5, ptr %i.cd, align 4, !tbaa !33
  %i.ce = icmp eq ptr %1, null
  br i1 %i.ce, label %bb.o, label %.lr.ph.i47.preheader

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %.not42.i = icmp eq ptr %i.cf, null
  br i1 %.not42.i, label %.critedge.i.preheader, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %bb.o, %bb.n
  %.143.i.ph = phi ptr [ %1, %bb.n ], [ %i.cf, %bb.o ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.p
  %.143.i = phi ptr [ %i.ck, %bb.p ], [ %.143.i.ph, %.lr.ph.i47.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.143.i, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !32
  %i.ci = icmp slt i32 %4, %i.ch
  br i1 %i.ci, label %bb.p, label %.critedge.i.preheader

bb.p:                                             ; preds = %.lr.ph.i47
  %i.cj = getelementptr inbounds nuw i8, ptr %.143.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph.i47, !llvm.loop !82

.critedge.i.preheader:                            ; preds = %bb.p, %.lr.ph.i47, %bb.o
  %.2.i.ph = phi ptr [ null, %bb.o ], [ null, %bb.p ], [ %.143.i, %.lr.ph.i47 ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.r
  %.2.i = phi ptr [ %i.cm, %bb.r ], [ %.2.i.ph, %.critedge.i.preheader ] ; 5 uses
  %.not27.i = icmp eq ptr %.2.i, null
  br i1 %.not27.i, label %.critedge29.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.2.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 5 uses
  %.not28.i = icmp eq ptr %i.cm, null
  br i1 %.not28.i, label %.split.thread.i, label %bb.r

.split.thread.i:                                  ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.2.i, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store ptr null, ptr %i.co, align 8, !tbaa !23
  br label %PositionOrphanInterval.exit

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !32
  %i.cr = icmp slt i32 %i.cq, %4
  br i1 %i.cr, label %.critedge.i, label %bb.s, !llvm.loop !83

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store ptr %i.cm, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %.0, ptr %i.cu, align 8, !tbaa !36
  br label %PositionOrphanInterval.exit

.critedge29.i:                                    ; preds = %.critedge.i
  %i.cv = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !23
  %.not9.i33.i = icmp eq ptr %i.cv, null
  br i1 %.not9.i33.i, label %PositionOrphanInterval.exit, label %bb.t

bb.t:                                             ; preds = %.critedge29.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %.0, ptr %i.cx, align 8, !tbaa !36
  br label %PositionOrphanInterval.exit

PositionOrphanInterval.exit:                      ; preds = %.split.thread.i, %bb.s, %.critedge29.i, %bb.t
  %.sink66.i = phi ptr [ %i.cs, %bb.s ], [ %i.cn, %.split.thread.i ], [ %0, %.critedge29.i ], [ %0, %bb.t ]
  store ptr %.0, ptr %.sink66.i, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store ptr %.2.i, ptr %i.cy, align 8, !tbaa !36
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !20
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.a, align 8, !tbaa !20
  br label %UpdateCostPerInterval.exit

UpdateCostPerInterval.exit:                       ; preds = %.prol.loopexit, %UpdateCost.exit.i43.1, %.prol.loopexit93, %UpdateCost.exit.i.1, %bb.a, %PositionOrphanInterval.exit
  ret void
}

declare void @VP8LClearBackwardRefs(ptr noundef) local_unnamed_addr #2

declare void @VP8LBackwardRefsCursorAdd(ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i40 @llvm.ctpop.i40(i40) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"p1 _ZTS12CostInterval", !8, i64 0}
!13 = !{!"p1 long", !8, i64 0}
!14 = !{!"p1 short", !8, i64 0}
!15 = !{!"", !12, i64 0, !5, i64 8, !8, i64 16, !9, i64 24, !4, i64 32, !13, i64 32792, !14, i64 32800, !4, i64 32808, !12, i64 33208, !12, i64 33216}
!16 = !{!15, !13, i64 32792}
!17 = !{!15, !8, i64 16}
!18 = !{!15, !12, i64 0}
!19 = !{!15, !12, i64 33216}
!20 = !{!15, !5, i64 8}
!21 = !{!15, !14, i64 32800}
!22 = !{!"CostInterval", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32}
!23 = !{!22, !12, i64 32}
!24 = !{!15, !12, i64 33208}
!25 = !{!15, !9, i64 24}
!26 = !{!9, !9, i64 0}
!27 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!27, !5, i64 8}
!29 = !{!27, !5, i64 12}
!30 = !{!27, !9, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!22, !5, i64 8}
!33 = !{!22, !5, i64 12}
!34 = !{!22, !9, i64 0}
!35 = !{!22, !5, i64 16}
!36 = !{!22, !12, i64 24}
!37 = !{!12, !12, i64 0}
!38 = distinct !{!38, !11, !63, !64}
!39 = distinct !{!39, !11, !64, !63}
!40 = distinct !{null, null, null, null}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11, !63, !64}
!43 = distinct !{!43, !11, !63, !64}
!44 = distinct !{!44, !11, !63, !64}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11, !63, !64}
!49 = distinct !{!49, !11, !64, !63}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = !{!"p1 int", !8, i64 0}
!57 = !{!"", !4, i64 0, !4, i64 1024, !4, i64 2048, !4, i64 3072, !56, i64 3232}
!58 = !{!57, !56, i64 3232}
!59 = !{!"", !56, i64 0, !4, i64 8, !4, i64 1032, !4, i64 2056, !4, i64 3080, !5, i64 3240, !4, i64 3244, !9, i64 3256, !4, i64 3264, !4, i64 3304, !10, i64 3310}
!60 = !{!59, !5, i64 3240}
!61 = !{!59, !56, i64 0}
!62 = !{!5, !5, i64 0}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!8, !8, i64 0}
!66 = !{!4, !4, i64 0}
!67 = !{!"VP8LHashChain", !56, i64 0, !5, i64 8}
!68 = !{!67, !56, i64 0}
!69 = !{!"p1 _ZTS14PixOrCopyBlock", !8, i64 0}
!70 = !{!"any p2 pointer", !8, i64 0}
!71 = !{!"p2 _ZTS14PixOrCopyBlock", !70, i64 0}
!72 = !{!"VP8LBackwardRefs", !5, i64 0, !5, i64 4, !69, i64 8, !71, i64 16, !69, i64 24, !69, i64 32}
!73 = !{!72, !5, i64 4}
!74 = !{!"", !56, i64 0, !5, i64 8, !5, i64 12}
!75 = !{!74, !56, i64 0}
!76 = !{!74, !5, i64 8}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
end_hunk_1
