Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.1, i64 24, i64 1, ptr %i.j) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1)
  br label %mdsModel.exit

bb.h:                                             ; preds = %bb.d
  switch i32 %6, label %mdsModel.exit.thread [
    i32 1, label %bb.i
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = tail call ptr @circuitModel(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not406 = icmp eq ptr %i.m, null
  br i1 %.not406, label %bb.j, label %mdsModel.exit.thread469

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.2) #15
  %i.n = tail call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %mdsModel.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.o = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not405 = icmp eq i8 %i.o, 0
  br i1 %.not405, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %i.p) #19 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mdsModel.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.v = icmp sgt i32 %1, 0
  br i1 %i.v, label %.lr.ph48.preheader.i, label %._crit_edge49.i

.lr.ph48.preheader.i:                             ; preds = %bb.n
  %i.w = zext nneg i32 %1 to i64
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i, %.lr.ph48.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %.03646.i = phi double [ 0.000000e+00, %.lr.ph48.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03745.i = phi i32 [ 0, %.lr.ph48.preheader.i ], [ %i.y, %._crit_edge.i ]
  %i.x = trunc i64 %indvars.iv.i to i32           ; 2 uses
  %i.y = add nuw nsw i32 %.03745.i, %i.x          ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph48.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = mul i32 %1, %i.x
  %i.af = sub i32 %i.ae, %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.o

._crit_edge.i:                                    ; preds = %bb.q, %.lr.ph48.i
  %.1.lcssa.i = phi double [ %.03646.i, %.lr.ph48.i ], [ %.2.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond52.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !llvm.loop !0

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %.043.i = phi i64 [ 1, %.lr.ph.i ], [ %i.aw, %bb.q ] ; 3 uses
  %.142.i = phi double [ %.03646.i, %.lr.ph.i ], [ %.2.i, %bb.q ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.043.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp sgt i64 %indvars.iv.i, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add i32 %i.af, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !48
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.043.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !48 ; 2 uses
  %i.as = fsub float %i.ao, %i.ar
  %i.at = tail call float @llvm.fabs.f32(float %i.as)
  %i.au = fpext float %i.at to double
  %i.av = fadd double %.142.i, %i.au
  store float %i.ar, ptr %i.an, align 4, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i = phi double [ %.142.i, %bb.o ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = add nuw i64 %.043.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.aa
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1

._crit_edge49.i:                                  ; preds = %._crit_edge.i, %bb.n
  %.036.lcssa.i = phi double [ 0.000000e+00, %bb.n ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.ax = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %mdsModel.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge49.i
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, double noundef %.036.lcssa.i) #17 ; 0 uses
  br label %mdsModel.exit

mdsModel.exit:                                    ; preds = %bb.r, %._crit_edge49.i, %bb.g
  %.0363 = phi ptr [ %i.l, %bb.g ], [ %i.u, %bb.r ], [ %i.u, %._crit_edge49.i ] ; 2 uses
  %.not408 = icmp eq ptr %.0363, null
  br i1 %.not408, label %mdsModel.exit.thread, label %mdsModel.exit.thread469

mdsModel.exit.thread:                             ; preds = %bb.m, %bb.h, %bb.j, %mdsModel.exit
  %i.ba = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not409 = icmp eq i8 %i.ba, 0
  br i1 %.not409, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mdsModel.exit.thread
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr %i.bb) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %mdsModel.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43
  %.not410 = icmp eq ptr %i.be, null
  br i1 %.not410, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread469

bb.v:                                             ; preds = %bb.t
  %i.bg = tail call ptr @compute_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread469

mdsModel.exit.thread469:                          ; preds = %bb.i, %bb.u, %bb.v, %mdsModel.exit
  %.1364 = phi ptr [ %.0363, %mdsModel.exit ], [ %i.bf, %bb.u ], [ %i.bg, %bb.v ], [ %i.m, %bb.i ] ; 18 uses
  %i.bh = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not411 = icmp eq i8 %i.bh, 0
  br i1 %.not411, label %bb.x, label %bb.w

bb.w:                                             ; preds = %mdsModel.exit.thread469
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bj = tail call double @elapsed_sec() #15
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.6, double noundef %i.bj) #17 ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bm = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %i.bl) #19 ; 0 uses
  tail call void @start_timer() #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %mdsModel.exit.thread469
  %i.bn = icmp ne i32 %i.d, 0
  %i.bo = icmp sgt i32 %1, 1                      ; 3 uses
  %or.cond = and i1 %i.bo, %i.bn
  br i1 %or.cond, label %bb.y, label %bb.cq

bb.y:                                             ; preds = %bb.x
  %i.bp = zext i1 %i.h to i32
  %i.bq = tail call i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %1, i32 50) ; 15 uses
  %i.br = zext nneg i32 %i.bq to i64              ; 12 uses
  %i.bs = tail call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 8) #16 ; 15 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.z, label %gv_calloc.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bv = shl nuw nsw i64 %i.br, 3
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.15, i64 noundef %i.bv) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.y
  %i.bx = mul nuw nsw i32 %i.bq, %1
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = tail call noalias ptr @calloc(i64 noundef %i.by, i64 noundef 8) #16 ; 6 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.aa, label %gv_calloc.exit554.i

bb.aa:                                            ; preds = %gv_calloc.exit.i
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.cc = shl nuw nsw i64 %i.by, 3
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.15, i64 noundef %i.cc) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit554.i:                              ; preds = %gv_calloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ce = zext nneg i32 %1 to i64                 ; 69 uses
  %xtraiter = and i64 %i.br, 3                    ; 3 uses
  %i.cf = add nsw i32 %i.bq, -1
  %i.cg = icmp ult i32 %i.cf, 3
  br i1 %i.cg, label %.epil.preheader, label %gv_calloc.exit554.i.new

gv_calloc.exit554.i.new:                          ; preds = %gv_calloc.exit554.i
  %unroll_iter = and i64 %i.br, 60
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %gv_calloc.exit554.i.new
  %indvars.iv.i424 = phi i64 [ 0, %gv_calloc.exit554.i.new ], [ %indvars.iv.next.i425.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %gv_calloc.exit554.i.new ], [ %niter.next.3, %bb.ab ]
  %i.ch = mul nuw nsw i64 %indvars.iv.i424, %i.ce
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i424
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !12
  %indvars.iv.next.i425 = or disjoint i64 %indvars.iv.i424, 1 ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv.next.i425, %i.ce
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !12
  %indvars.iv.next.i425.1 = or disjoint i64 %indvars.iv.i424, 2 ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv.next.i425.1, %i.ce
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425.1
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !12
  %indvars.iv.next.i425.2 = or disjoint i64 %indvars.iv.i424, 3 ; 2 uses
  %i.cq = mul nuw nsw i64 %indvars.iv.next.i425.2, %i.ce
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425.2
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !12
  %indvars.iv.next.i425.3 = add nuw nsw i64 %indvars.iv.i424, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ab, !llvm.loop !81

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %gv_calloc.exit554.i
  %indvars.iv.i424.epil.init = phi i64 [ 0, %gv_calloc.exit554.i ], [ %indvars.iv.next.i425.3, %.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i424.epil = phi i64 [ %indvars.iv.i424.epil.init, %.epil.preheader ], [ %indvars.iv.next.i425.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.ct = mul nuw nsw i64 %indvars.iv.i424.epil, %i.ce
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i424.epil
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !12
  %indvars.iv.next.i425.epil = add nuw nsw i64 %indvars.iv.i424.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !82

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %i.cw = shl nuw nsw i32 %i.bq, 1
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cw, i32 50)
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %1, i32 %i.cx) ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !145
  call void @embed_graph(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 2) %i.bp) #15
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @center_coordinate(ptr noundef %i.cy, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i) #15
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @PCA_alloc(ptr noundef %i.cz, i32 noundef %..i, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.bs, i32 noundef %i.bq) #15
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !146
  call void @free(ptr noundef %i.db) #15
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @free(ptr noundef %i.dc) #15
  %i.dd = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 4) #16 ; 6 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ad, label %gv_calloc.exit557.preheader.i

gv_calloc.exit557.preheader.i:                    ; preds = %.epilog-lcssa
  %i.df = shl nuw nsw i64 %i.ce, 2                ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dd, i8 -1, i64 %i.df, i1 false), !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !43
  br i1 %i.h, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.epilog-lcssa
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.dj = shl nuw nsw i64 %i.ce, 2
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.15, i64 noundef %i.dj) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ae:                                            ; preds = %gv_calloc.exit557.preheader.i
  call void @compute_new_weights(ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %gv_calloc.exit557.preheader.i
  %i.dl = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 4) #16 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ag, label %gv_calloc.exit560.i

bb.ag:                                            ; preds = %bb.af
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.15, i64 noundef %i.df) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit560.i:                              ; preds = %bb.af
  %i.dp = call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 40, i64 noundef 4) #16 ; 6 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ah, label %gv_calloc.exit561.i

bb.ah:                                            ; preds = %gv_calloc.exit560.i
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.15, i64 noundef 160) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit561.i:                              ; preds = %gv_calloc.exit560.i
  %i.dt = mul nuw nsw i32 %1, 40
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = call noalias ptr @calloc(i64 noundef %i.du, i64 noundef 4) #16 ; 49 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ai, label %gv_calloc.exit564.i

bb.ai:                                            ; preds = %gv_calloc.exit561.i
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.dy = shl nuw nsw i64 %i.du, 2
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.15, i64 noundef %i.dy) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit564.i:                              ; preds = %gv_calloc.exit561.i
  %i.ea = call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 40, i64 noundef 8) #16 ; 48 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %gv_calloc.exit565.preheader.i

gv_calloc.exit565.preheader.i:                    ; preds = %gv_calloc.exit564.i
  store ptr %i.dv, ptr %i.ea, align 8, !tbaa !146
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ce
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !146
  %.idx.i = shl nuw nsw i64 %i.ce, 3              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !146
  %.idx850.i = mul nuw nsw i64 %i.ce, 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx850.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !146
  %.idx851.i = shl nuw nsw i64 %i.ce, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx851.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !146
  %.idx852.i = mul nuw nsw i64 %i.ce, 20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx852.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !146
  %.idx853.i = mul nuw nsw i64 %i.ce, 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx853.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %i.em, ptr %i.en, align 8, !tbaa !146
  %.idx854.i = mul nuw nsw i64 %i.ce, 28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx854.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !146
  %.idx855.i = shl nuw nsw i64 %i.ce, 5           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx855.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !146
  %.idx856.i = mul nuw nsw i64 %i.ce, 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx856.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  store ptr %i.es, ptr %i.et, align 8, !tbaa !146
  %.idx857.i = mul nuw nsw i64 %i.ce, 40          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx857.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !146
  %.idx858.i = mul nuw nsw i64 %i.ce, 44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx858.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !146
  %.idx859.i = mul nuw nsw i64 %i.ce, 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx859.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !146
  %.idx860.i = mul nuw nsw i64 %i.ce, 52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx860.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !146
  %.idx861.i = mul nuw nsw i64 %i.ce, 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx861.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !146
  %.idx862.i = mul nuw nsw i64 %i.ce, 60
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx862.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !146
  %.idx863.i = shl nuw nsw i64 %i.ce, 6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx863.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !146
  %.idx864.i = mul nuw nsw i64 %i.ce, 68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx864.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !146
  %.idx865.i = mul nuw nsw i64 %i.ce, 72
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx865.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !146
  %.idx866.i = mul nuw nsw i64 %i.ce, 76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx866.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !146
  %.idx867.i = mul nuw nsw i64 %i.ce, 80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx867.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !146
  %.idx868.i = mul nuw nsw i64 %i.ce, 84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx868.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !146
  %.idx869.i = mul nuw nsw i64 %i.ce, 88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx869.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !146
  %.idx870.i = mul nuw nsw i64 %i.ce, 92
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx870.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !146
  %.idx871.i = mul nuw nsw i64 %i.ce, 96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx871.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !146
  %.idx872.i = mul nuw nsw i64 %i.ce, 100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx872.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !146
  %.idx873.i = mul nuw nsw i64 %i.ce, 104
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx873.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !146
  %.idx874.i = mul nuw nsw i64 %i.ce, 108
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx874.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 216
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !146
  %.idx875.i = mul nuw nsw i64 %i.ce, 112
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx875.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 224
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !146
  %.idx876.i = mul nuw nsw i64 %i.ce, 116
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx876.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 232
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !146
  %.idx877.i = mul nuw nsw i64 %i.ce, 120
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx877.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !146
  %.idx878.i = mul nuw nsw i64 %i.ce, 124
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx878.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 248
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !146
  %.idx879.i = shl nuw nsw i64 %i.ce, 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx879.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !146
  %.idx880.i = mul nuw nsw i64 %i.ce, 132
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx880.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ea, i64 264
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !146
  %.idx881.i = mul nuw nsw i64 %i.ce, 136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx881.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !146
  %.idx882.i = mul nuw nsw i64 %i.ce, 140
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx882.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !146
  %.idx883.i = mul nuw nsw i64 %i.ce, 144
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx883.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 288
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !146
  %.idx884.i = mul nuw nsw i64 %i.ce, 148
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx884.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 296
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !146
  %.idx885.i = mul nuw nsw i64 %i.ce, 152
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx885.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ea, i64 304
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !146
  %.idx886.i = mul nuw nsw i64 %i.ce, 156
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx886.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ea, i64 312
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !146
  %i.hc = call i32 @rand() #15
  %i.hd = srem i32 %i.hc, %1                      ; 6 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.he
  store i32 0, ptr %i.hf, align 4, !tbaa !46
  store i32 %i.hd, ptr %i.dp, align 4, !tbaa !46
  br i1 %i.h, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %gv_calloc.exit564.i
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.hh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hg, ptr noundef nonnull @.str.15, i64 noundef 320) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ak:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @ngdijkstra(i32 noundef %i.hd, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dv) #15
  br label %bb.am

bb.al:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @bfs(i32 noundef %i.hd, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dv) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, ptr noundef nonnull align 4 dereferenceable(1) %i.dv, i64 %i.df, i1 false), !tbaa !46
  %xtraiter969 = and i64 %i.ce, 3                 ; 3 uses
  %8 = add nsw i32 %1, -1
  %i.hi = icmp ult i32 %8, 3
  br i1 %i.hi, label %.epil.preheader968, label %.new

.new:                                             ; preds = %bb.am
  %unroll_iter974 = and i64 %i.ce, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.new
  %indvars.iv724.i = phi i64 [ 0, %.new ], [ %indvars.iv.next725.i.3, %bb.an ] ; 6 uses
  %.0507658.i = phi i32 [ 0, %.new ], [ %spec.select550.i.3, %bb.an ] ; 2 uses
  %.0513657.i = phi i32 [ %i.hd, %.new ], [ %spec.select.i.3, %bb.an ]
  %niter975 = phi i64 [ 0, %.new ], [ %niter975.next.3, %bb.an ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !46 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, %.0507658.i
  %i.hm = trunc nuw nsw i64 %indvars.iv724.i to i32
  %spec.select.i = select i1 %i.hl, i32 %i.hm, i32 %.0513657.i
  %spec.select550.i = call i32 @llvm.smax.i32(i32 %i.hk, i32 %.0507658.i) ; 2 uses
  %indvars.iv.next725.i = or disjoint i64 %indvars.iv724.i, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !46 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, %spec.select550.i
  %i.hq = trunc nuw nsw i64 %indvars.iv.next725.i to i32
  %spec.select.i.1 = select i1 %i.hp, i32 %i.hq, i32 %spec.select.i
  %spec.select550.i.1 = call i32 @llvm.smax.i32(i32 %i.ho, i32 %spec.select550.i) ; 2 uses
  %indvars.iv.next725.i.1 = or disjoint i64 %indvars.iv724.i, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !46 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %spec.select550.i.1
  %i.hu = trunc nuw nsw i64 %indvars.iv.next725.i.1 to i32
  %spec.select.i.2 = select i1 %i.ht, i32 %i.hu, i32 %spec.select.i.1
  %spec.select550.i.2 = call i32 @llvm.smax.i32(i32 %i.hs, i32 %spec.select550.i.1) ; 2 uses
  %indvars.iv.next725.i.2 = or disjoint i64 %indvars.iv724.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.2
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !46 ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %spec.select550.i.2
  %i.hy = trunc nuw nsw i64 %indvars.iv.next725.i.2 to i32
  %spec.select.i.3 = select i1 %i.hx, i32 %i.hy, i32 %spec.select.i.2 ; 3 uses
  %spec.select550.i.3 = call i32 @llvm.smax.i32(i32 %i.hw, i32 %spec.select550.i.2) ; 2 uses
  %indvars.iv.next725.i.3 = add nuw nsw i64 %indvars.iv724.i, 4 ; 2 uses
  %niter975.next.3 = add i64 %niter975, 4         ; 2 uses
  %niter975.ncmp.3 = icmp eq i64 %niter975.next.3, %unroll_iter974
  br i1 %niter975.ncmp.3, label %.preheader646.i.preheader.unr-lcssa, label %bb.an, !llvm.loop !83

.preheader646.i.preheader.unr-lcssa:              ; preds = %bb.an
  %lcmp.mod971.not = icmp eq i64 %xtraiter969, 0
  br i1 %lcmp.mod971.not, label %.preheader646.i.preheader, label %.epil.preheader968

.epil.preheader968:                               ; preds = %.preheader646.i.preheader.unr-lcssa, %bb.am
  %indvars.iv724.i.epil.init = phi i64 [ 0, %bb.am ], [ %indvars.iv.next725.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0507658.i.epil.init = phi i32 [ 0, %bb.am ], [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0513657.i.epil.init = phi i32 [ %i.hd, %bb.am ], [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %lcmp.mod973 = icmp ne i64 %xtraiter969, 0
  call void @llvm.assume(i1 %lcmp.mod973)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader968
  %indvars.iv724.i.epil = phi i64 [ %indvars.iv724.i.epil.init, %.epil.preheader968 ], [ %indvars.iv.next725.i.epil, %bb.ao ] ; 3 uses
  %.0507658.i.epil = phi i32 [ %.0507658.i.epil.init, %.epil.preheader968 ], [ %spec.select550.i.epil, %bb.ao ] ; 2 uses
  %.0513657.i.epil = phi i32 [ %.0513657.i.epil.init, %.epil.preheader968 ], [ %spec.select.i.epil, %bb.ao ]
  %epil.iter970 = phi i64 [ 0, %.epil.preheader968 ], [ %epil.iter970.next, %bb.ao ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i.epil
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !46 ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, %.0507658.i.epil
  %i.ic = trunc nuw nsw i64 %indvars.iv724.i.epil to i32
  %spec.select.i.epil = select i1 %i.ib, i32 %i.ic, i32 %.0513657.i.epil ; 2 uses
  %spec.select550.i.epil = call i32 @llvm.smax.i32(i32 %i.ia, i32 %.0507658.i.epil)
  %indvars.iv.next725.i.epil = add nuw nsw i64 %indvars.iv724.i.epil, 1
  %epil.iter970.next = add i64 %epil.iter970, 1   ; 2 uses
  %epil.iter970.cmp.not = icmp eq i64 %epil.iter970.next, %xtraiter969
  br i1 %epil.iter970.cmp.not, label %.preheader646.i.preheader, label %bb.ao, !llvm.loop !84

.preheader646.i.preheader:                        ; preds = %bb.ao, %.preheader646.i.preheader.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ], [ %spec.select.i.epil, %bb.ao ]
  br label %.preheader646.i

.preheader646.i:                                  ; preds = %.preheader646.i.preheader, %bb.ar
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %bb.ar ], [ 1, %.preheader646.i.preheader ] ; 4 uses
  %.2515663.i = phi i32 [ %.4517.i, %bb.ar ], [ %spec.select.i.lcssa, %.preheader646.i.preheader ] ; 5 uses
  %i.id = sext i32 %.2515663.i to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.id
  %i.if = trunc nuw nsw i64 %indvars.iv734.i to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !46
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv734.i
  store i32 %.2515663.i, ptr %i.ig, align 4, !tbaa !46
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv734.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !146 ; 3 uses
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader646.i
  call void @ngdijkstra(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ii) #15
  br label %.preheader966

.preheader966:                                    ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.aq:                                            ; preds = %.preheader646.i
  call void @bfs(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ii) #15
  br label %.preheader966

bb.ar:                                            ; preds = %bb.av
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next735.i, 40
  br i1 %exitcond737.not.i, label %.preheader645.preheader.i, label %.preheader646.i, !llvm.loop !85

.preheader645.preheader.i:                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, i8 -1, i64 %i.df, i1 false), !tbaa !46
  %i.ij = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 32) #16 ; 9 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.aw, label %gv_calloc.exit571.preheader.i

bb.as:                                            ; preds = %.preheader966, %bb.av
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i, %bb.av ], [ 0, %.preheader966 ] ; 5 uses
  %.2509660.i = phi i32 [ %.3510.i, %bb.av ], [ 0, %.preheader966 ] ; 4 uses
  %.3516659.i = phi i32 [ %.4517.i, %bb.av ], [ %.2515663.i, %.preheader966 ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv729.i ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !46
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv729.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !46
  %.551.i = call i32 @llvm.smin.i32(i32 %i.im, i32 %i.io) ; 5 uses
  store i32 %.551.i, ptr %i.il, align 4, !tbaa !46
  %i.ip = icmp sgt i32 %.551.i, %.2509660.i
  br i1 %i.ip, label %._crit_edge753, label %bb.at

._crit_edge753:                                   ; preds = %bb.as
  %.pre754 = trunc nuw nsw i64 %indvars.iv729.i to i32
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.iq = icmp eq i32 %.551.i, %.2509660.i
  br i1 %i.iq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ir = call i32 @rand() #15
  %i.is = trunc i64 %indvars.iv729.i to i32       ; 2 uses
  %i.it = add i32 %i.is, 1
  %i.iu = srem i32 %i.ir, %i.it
  %i.iv = icmp eq i32 %i.iu, 0                    ; 2 uses
  %spec.select = select i1 %i.iv, i32 %i.is, i32 %.3516659.i
  %spec.select824 = select i1 %i.iv, i32 %.551.i, i32 %.2509660.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge753, %bb.at
  %.4517.i = phi i32 [ %.3516659.i, %bb.at ], [ %spec.select, %bb.au ], [ %.pre754, %._crit_edge753 ] ; 2 uses
  %.3510.i = phi i32 [ %.2509660.i, %bb.at ], [ %spec.select824, %bb.au ], [ %.551.i, %._crit_edge753 ]
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond733.not.i = icmp eq i64 %indvars.iv.next730.i, %i.ce
  br i1 %exitcond733.not.i, label %bb.ar, label %bb.as, !llvm.loop !86

gv_calloc.exit571.preheader.i:                    ; preds = %.preheader645.preheader.i
  %i.iw = add nsw i32 %1, -1
  %i.ix = zext i32 %i.iw to i64                   ; 8 uses
  %i.iy = add nsw i64 %i.ce, -1                   ; 5 uses
  %i.iz = add nsw i64 %i.ix, -1
  br label %bb.ax

bb.aw:                                            ; preds = %.preheader645.preheader.i
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.15, i64 noundef %.idx855.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ax:                                            ; preds = %gv_calloc.exit571.i, %gv_calloc.exit571.preheader.i
  %indvar = phi i64 [ %indvar.next, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 2 uses
  %indvars.iv755.i = phi i64 [ %indvars.iv.next756.pre-phi.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 18 uses
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i, %gv_calloc.exit571.i ], [ 1, %gv_calloc.exit571.preheader.i ] ; 7 uses
  %.0488676.i = phi i64 [ %.1.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ]
  %.0498675.i = phi ptr [ %.2500.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0501674.i = phi ptr [ %.2503.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0504673.i = phi i32 [ %.2506.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 6 uses
  %i.jc = sub i64 %i.ix, %indvar                  ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv755.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !46 ; 3 uses
  %i.jf = icmp sgt i32 %i.je, -1
  br i1 %i.jf, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jg = call noalias ptr @calloc(i64 noundef %i.ix, i64 noundef 4) #16 ; 13 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64              ; 4 uses
  %i.ji = icmp eq ptr %i.jg, null
  br i1 %i.ji, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jk = shl nuw nsw i64 %i.ix, 2
  %i.jl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.15, i64 noundef %i.jk) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv755.i ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jg, ptr %i.jn, align 8, !tbaa !53
  %i.jo = call noalias ptr @calloc(i64 noundef %i.ix, i64 noundef 4) #16 ; 13 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64              ; 4 uses
  %i.jq = icmp eq ptr %i.jo, null
  br i1 %i.jq, label %bb.bb, label %gv_calloc.exit579.i

bb.bb:                                            ; preds = %bb.ba
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.js = shl nuw nsw i64 %i.ix, 2
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  br label %.preheader632.i

.preheader632.i:                                  ; preds = %bb.ci, %gv_calloc.exit624.i
  %.0492708.i = phi double [ %i.wo, %gv_calloc.exit624.i ], [ %.1493.i, %bb.ci ] ; 2 uses
  %.0529707.i = phi i32 [ 0, %gv_calloc.exit624.i ], [ %i.yu, %bb.ci ] ; 3 uses
  br i1 %.not.i605.not.i, label %._crit_edge706.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader632.i, %bb.cg
  %indvars.iv806.i = phi i64 [ %indvars.iv.next807.i, %bb.cg ], [ 0, %.preheader632.i ] ; 3 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv806.i ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge702.i, %.preheader.i
  %indvars.iv801.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next802.i, %._crit_edge702.i ] ; 6 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %indvars.iv801.i ; 5 uses
  store double 0.000000e+00, ptr %i.wq, align 8, !tbaa !35
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv801.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !54
  %i.wu = getelementptr inbounds i8, ptr %i.wt, i64 -4
  %i.wv = getelementptr inbounds nuw [40 x i8], ptr %i.og, i64 %indvars.iv801.i ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !43
  %i.xa = load i64, ptr %i.wv, align 8, !tbaa !44
  %i.xb = icmp ugt i64 %i.xa, 1
  br i1 %i.xb, label %.lr.ph701.preheader.i, label %._crit_edge702.i

.lr.ph701.preheader.i:                            ; preds = %bb.cc
  %i.xc = trunc nuw nsw i64 %indvars.iv801.i to i32
  br label %.lr.ph701.i

._crit_edge702.loopexit.i:                        ; preds = %bb.ce
  %.pre.i = load double, ptr %i.wq, align 8, !tbaa !35
  br label %._crit_edge702.i

._crit_edge702.i:                                 ; preds = %._crit_edge702.loopexit.i, %bb.cc
  %i.xd = phi double [ 0.000000e+00, %bb.cc ], [ %.pre.i, %._crit_edge702.loopexit.i ]
  %.3.lcssa.i = phi double [ 0.000000e+00, %bb.cc ], [ %.4.i, %._crit_edge702.loopexit.i ]
  %i.xe = load ptr, ptr %i.wp, align 8, !tbaa !12
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv801.i
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !35
  %i.xh = call double @llvm.fmuladd.f64(double %.3.lcssa.i, double %i.xg, double %i.xd)
  store double %i.xh, ptr %i.wq, align 8, !tbaa !35
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond805.not.i = icmp eq i64 %indvars.iv.next802.i, %i.ce
  br i1 %exitcond805.not.i, label %bb.cf, label %bb.cc, !llvm.loop !104

.lr.ph701.i:                                      ; preds = %bb.ce, %.lr.ph701.preheader.i
  %.0699.i = phi i64 [ %i.yc, %bb.ce ], [ 1, %.lr.ph701.preheader.i ] ; 4 uses
  %.3698.i = phi double [ %.4.i, %bb.ce ], [ 0.000000e+00, %.lr.ph701.preheader.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0699.i
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !46 ; 2 uses
  %i.xk = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %i.xc, i32 noundef %i.xj) #15 ; 2 uses
  %i.xl = fcmp ogt double %i.xk, 1.000000e-30
  br i1 %i.xl, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph701.i
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.0699.i
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !48
  %i.xo = fneg float %i.xn
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.0699.i
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !46
  %i.xr = sitofp i32 %i.xq to float
  %i.xs = fmul float %i.xo, %i.xr
  %i.xt = fpext float %i.xs to double
  %i.xu = fdiv double %i.xt, %i.xk                ; 2 uses
  %i.xv = fsub double %.3698.i, %i.xu
  %i.xw = load ptr, ptr %i.wp, align 8, !tbaa !12
  %i.xx = sext i32 %i.xj to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !35
  %i.ya = load double, ptr %i.wq, align 8, !tbaa !35
  %i.yb = call double @llvm.fmuladd.f64(double %i.xu, double %i.xz, double %i.ya)
  store double %i.yb, ptr %i.wq, align 8, !tbaa !35
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph701.i
  %.4.i = phi double [ %i.xv, %bb.cd ], [ %.3698.i, %.lr.ph701.i ] ; 2 uses
  %i.yc = add nuw i64 %.0699.i, 1                 ; 2 uses
  %i.yd = load i64, ptr %i.wv, align 8, !tbaa !44
  %i.ye = icmp ult i64 %i.yc, %i.yd
  br i1 %i.ye, label %.lr.ph701.i, label %._crit_edge702.loopexit.i, !llvm.loop !105

bb.cf:                                            ; preds = %._crit_edge702.i
  call void @right_mult_with_vector_d(ptr noundef nonnull %i.bs, i32 noundef %i.bq, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.wf, ptr noundef nonnull %i.wj) #15
  %i.yf = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv806.i ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !12
  %i.yi = call i32 @conjugate_gradient_f(ptr noundef %i.yf, ptr noundef %i.yh, ptr noundef nonnull %i.wj, i32 noundef %i.bq, double noundef 1.000000e-03, i32 noundef %i.bq, i1 noundef zeroext false) #15
  %.not548.i = icmp eq i32 %i.yi, 0
  br i1 %.not548.i, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.yj = load ptr, ptr %i.yg, align 8, !tbaa !12
  %i.yk = load ptr, ptr %i.wp, align 8, !tbaa !12
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bs, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bq, ptr noundef %i.yj, ptr noundef %i.yk) #15
  %indvars.iv.next807.i = add nuw nsw i64 %indvars.iv806.i, 1 ; 2 uses
  %exitcond810.not.i = icmp eq i64 %indvars.iv.next807.i, %wide.trip.count809.i
  br i1 %exitcond810.not.i, label %._crit_edge706.i, label %.preheader.i, !llvm.loop !106

._crit_edge706.i:                                 ; preds = %bb.cg, %.preheader632.i
  %i.yl = and i32 %.0529707.i, 1
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge706.i
  %i.yn = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.ij, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e) ; 3 uses
  %i.yo = fsub double %i.yn, %.0492708.i
  %i.yp = call double @llvm.fabs.f64(double %i.yo)
  %i.yq = fadd double %i.yn, 1.000000e-10
  %i.yr = fdiv double %i.yp, %i.yq
  %i.ys = load double, ptr @Epsilon, align 8, !tbaa !35
  %i.yt = fcmp olt double %i.yr, %i.ys
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge706.i
  %.1493.i = phi double [ %i.yn, %bb.ch ], [ %.0492708.i, %._crit_edge706.i ]
  %.1491.i = phi i1 [ %i.yt, %bb.ch ], [ false, %._crit_edge706.i ]
  %i.yu = add nuw nsw i32 %.0529707.i, 1
  %i.yv = icmp samesign ugt i32 %.0529707.i, 48
  %.not547.i = select i1 %i.yv, i1 true, i1 %.1491.i
  br i1 %.not547.i, label %.loopexit.i, label %.preheader632.i, !llvm.loop !107

.loopexit.i:                                      ; preds = %bb.ci, %bb.cf
  %.1530.i = phi i1 [ true, %bb.cf ], [ false, %bb.ci ]
  call void @free(ptr noundef %i.wj) #15
  call void @free(ptr noundef %i.wf) #15
  br i1 %i.h, label %bb.cj, label %.preheader961

bb.cj:                                            ; preds = %.loopexit.i
  call void @restore_old_weights(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.dh) #15
  br label %.preheader961

.preheader961:                                    ; preds = %bb.cj, %.loopexit.i
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader961, %bb.cm
  %indvars.iv811.i = phi i64 [ %indvars.iv.next812.i, %bb.cm ], [ 0, %.preheader961 ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv811.i ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load i8, ptr %i.yx, align 8, !tbaa !147, !range !150, !noundef !151
  %i.yz = trunc nuw i8 %i.yy to i1
  br i1 %i.yz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !53
  call void @free(ptr noundef %i.zb) #15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !54
  call void @free(ptr noundef %i.zd) #15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %indvars.iv.next812.i = add nuw nsw i64 %indvars.iv811.i, 1 ; 2 uses
  %exitcond815.not.i = icmp eq i64 %indvars.iv.next812.i, %i.ce
  br i1 %exitcond815.not.i, label %bb.cn, label %bb.ck, !llvm.loop !108

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.ij) #15
  %i.ze = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !45
  call void @free(ptr noundef %i.zf) #15
  %i.zg = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !43
  call void @free(ptr noundef %i.zh) #15
  call void @free(ptr noundef %i.og) #15
  call void @free(ptr noundef %i.dd) #15
  call void @free(ptr noundef %i.dp) #15
  %i.zi = load ptr, ptr %i.wa, align 8, !tbaa !12
  call void @free(ptr noundef %i.zi) #15
  call void @free(ptr noundef %i.wa) #15
  %i.zj = load ptr, ptr %i.c, align 8, !tbaa !149 ; 2 uses
  %.not549.i = icmp eq ptr %i.zj, null
  br i1 %.not549.i, label %sparse_stress_subspace_majorization_kD.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !56
  call void @free(ptr noundef %i.zk) #15
  %i.zl = load ptr, ptr %i.c, align 8, !tbaa !149
  call void @free(ptr noundef %i.zl) #15
  br label %sparse_stress_subspace_majorization_kD.exit

sparse_stress_subspace_majorization_kD.exit:      ; preds = %bb.cn, %bb.co
  %i.zm = load ptr, ptr %i.bs, align 8, !tbaa !12
  call void @free(ptr noundef %i.zm) #15
  call void @free(ptr noundef %i.bs) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.1530.i, label %.thread, label %.preheader490

.preheader490:                                    ; preds = %sparse_stress_subspace_majorization_kD.exit
  %i.zn = icmp sgt i32 %4, 0
  br i1 %i.zn, label %.lr.ph.preheader, label %.loopexit491

.lr.ph.preheader:                                 ; preds = %.preheader490
  %xtraiter1016 = and i64 %i.ce, 1
  %unroll_iter1021 = and i64 %i.ce, 2147483646
  %lcmp.mod1018.not = icmp eq i64 %xtraiter1016, 0
  %lcmp.mod1020 = trunc i32 %1 to i1
  %min.iters.check865 = icmp ult i32 %1, 2
  %n.vec867 = and i64 %i.ce, 2147483646           ; 3 uses
  %cmp.n875 = icmp eq i64 %n.vec867, %i.ce
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv617
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !12 ; 3 uses
  br label %.lr.ph.new

.lr.ph499.unr-lcssa:                              ; preds = %.lr.ph.new
  br i1 %lcmp.mod1018.not, label %.lr.ph499, label %.epil.preheader1015

.epil.preheader1015:                              ; preds = %.lr.ph499.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1020)
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv.next.1
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !35
  %i.zs = call double @llvm.fabs.f64(double %i.zr) ; 2 uses
  %i.zt = fcmp ogt double %i.zs, %.1344.1
  %.1344.epil = select i1 %i.zt, double %i.zs, double %.1344.1
  br label %.lr.ph499

.lr.ph499:                                        ; preds = %.lr.ph499.unr-lcssa, %.epil.preheader1015
  %.1344.lcssa = phi double [ %.1344.1, %.lr.ph499.unr-lcssa ], [ %.1344.epil, %.epil.preheader1015 ] ; 2 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv617
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check865, label %scalar.ph864.preheader, label %vector.ph866

vector.ph866:                                     ; preds = %.lr.ph499
  %broadcast.splatinsert868 = insertelement <2 x double> poison, double %.1344.lcssa, i64 0
  %broadcast.splat869 = shufflevector <2 x double> %broadcast.splatinsert868, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph866
  %index871 = phi i64 [ 0, %vector.ph866 ], [ %index.next873, %vector.body870 ] ; 2 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %index871 ; 2 uses
  %wide.load872 = load <2 x double>, ptr %i.zw, align 8, !tbaa !35
  %i.zx = fdiv <2 x double> %wide.load872, %broadcast.splat869
  store <2 x double> %i.zx, ptr %i.zw, align 8, !tbaa !35
  %index.next873 = add nuw i64 %index871, 2       ; 2 uses
  %i.zy = icmp eq i64 %index.next873, %n.vec867
  br i1 %i.zy, label %middle.block874, label %vector.body870, !llvm.loop !109

middle.block874:                                  ; preds = %vector.body870
  br i1 %cmp.n875, label %.lr.ph501, label %scalar.ph864.preheader

scalar.ph864.preheader:                           ; preds = %.lr.ph499, %middle.block874
  %indvars.iv607.ph = phi i64 [ 0, %.lr.ph499 ], [ %n.vec867, %middle.block874 ]
  br label %scalar.ph864

.lr.ph.new:                                       ; preds = %.lr.ph.new, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph.new ] ; 3 uses
  %.0343497 = phi double [ 1.000000e+00, %.lr.ph ], [ %.1344.1, %.lr.ph.new ] ; 2 uses
  %niter1022 = phi i64 [ 0, %.lr.ph ], [ %niter1022.next.1, %.lr.ph.new ]
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !35
  %i.aab = call double @llvm.fabs.f64(double %i.aaa) ; 2 uses
  %i.aac = fcmp ogt double %i.aab, %.0343497
  %.1344 = select i1 %i.aac, double %i.aab, double %.0343497 ; 2 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !35
  %i.aag = call double @llvm.fabs.f64(double %i.aaf) ; 2 uses
  %i.aah = fcmp ogt double %i.aag, %.1344
  %.1344.1 = select i1 %i.aah, double %i.aag, double %.1344 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1022.next.1 = add i64 %niter1022, 2       ; 2 uses
  %niter1022.ncmp.1 = icmp eq i64 %niter1022.next.1, %unroll_iter1021
  br i1 %niter1022.ncmp.1, label %.lr.ph499.unr-lcssa, label %.lr.ph.new, !llvm.loop !110

.lr.ph501:                                        ; preds = %scalar.ph864, %middle.block874
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv617
  br label %bb.cp

scalar.ph864:                                     ; preds = %scalar.ph864.preheader, %scalar.ph864
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %scalar.ph864 ], [ %indvars.iv607.ph, %scalar.ph864.preheader ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %indvars.iv607 ; 2 uses
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !35
  %i.aal = fdiv double %i.aak, %.1344.lcssa
  store double %i.aal, ptr %i.aaj, align 8, !tbaa !35
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %exitcond611.not = icmp eq i64 %indvars.iv.next608, %i.ce
  br i1 %exitcond611.not, label %.lr.ph501, label %scalar.ph864, !llvm.loop !111

bb.cp:                                            ; preds = %.lr.ph501, %bb.cp
  %indvars.iv612 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next613, %bb.cp ] ; 2 uses
  %i.aam = call double @drand48() #15
  %i.aan = fadd double %i.aam, -5.000000e-01
  %i.aao = load ptr, ptr %i.aai, align 8, !tbaa !12 ; 2 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %indvars.iv612 ; 2 uses
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !35
  %i.aar = call double @llvm.fmuladd.f64(double %i.aan, double f0x3EB0C6F7A0B5ED8D, double %i.aaq)
  store double %i.aar, ptr %i.aap, align 8, !tbaa !35
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %i.ce
  br i1 %exitcond616.not, label %._crit_edge, label %bb.cp, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aao) #15
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count809.i
  br i1 %exitcond621.not, label %.loopexit491, label %.lr.ph, !llvm.loop !113

bb.cq:                                            ; preds = %bb.x
  %i.aas = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aat = icmp eq i32 %i.aas, 0
  br label %.loopexit491

.loopexit491:                                     ; preds = %._crit_edge, %.preheader490, %bb.cq
  %.0346 = phi i1 [ %i.aat, %bb.cq ], [ true, %.preheader490 ], [ true, %._crit_edge ]
  %i.aau = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not412 = icmp eq i8 %i.aau, 0
  br i1 %.not412, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit491
  %i.aav = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aaw = call double @elapsed_sec() #15
  %i.aax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aav, ptr noundef nonnull @.str.8, double noundef %i.aaw) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit491
  %i.aay = icmp eq i32 %1, 1
  %i.aaz = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aay, %i.aaz
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aba = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not413 = icmp eq i8 %i.aba, 0
  br i1 %.not413, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abb = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abc = call double @elapsed_sec() #15
  %i.abd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abb, ptr noundef nonnull @.str.6, double noundef %i.abc) #17 ; 0 uses
  %i.abe = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abf = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.abe) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abg = sext i32 %4 to i64                     ; 6 uses
  %.not.i431 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i431, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abi, ptr noundef nonnull @.str.14, i64 noundef %i.abg, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abk = call noalias ptr @calloc(i64 noundef %i.abg, i64 noundef 8) #16 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abm = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abn = shl nuw nsw i64 %i.abg, 3
  %i.abo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abm, ptr noundef nonnull @.str.15, i64 noundef %i.abn) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abp = phi ptr [ %i.abh, %.thread.i ], [ %i.abk, %bb.cy ] ; 13 uses
  %i.abq = mul nsw i32 %4, %1                     ; 4 uses
  %i.abr = sext i32 %i.abq to i64                 ; 6 uses
  %.not.i432 = icmp eq i32 %i.abq, 0              ; 2 uses
  br i1 %.not.i432, label %.thread.i435, label %bb.da

.thread.i435:                                     ; preds = %gv_calloc.exit
  %i.abs = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit436

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i434 = icmp slt i32 %i.abq, 0
  br i1 %mul.ov.i434, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abt = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abt, ptr noundef nonnull @.str.14, i64 noundef %i.abr, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abv = call noalias ptr @calloc(i64 noundef %i.abr, i64 noundef 4) #16 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %bb.dd, label %gv_calloc.exit436

bb.dd:                                            ; preds = %bb.dc
  %i.abx = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aby = shl nuw nsw i64 %i.abr, 2
  %i.abz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abx, ptr noundef nonnull @.str.15, i64 noundef %i.aby) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit436:                                ; preds = %.thread.i435, %bb.dc
  %i.aca = phi ptr [ %i.abs, %.thread.i435 ], [ %i.abv, %bb.dc ] ; 5 uses
  %i.acb = icmp ne i32 %4, 0                      ; 5 uses
  br i1 %i.acb, label %.lr.ph508, label %._crit_edge509

.lr.ph508:                                        ; preds = %gv_calloc.exit436
  %i.acc = icmp sgt i32 %1, 0
  %i.acd = sext i32 %1 to i64
  %wide.trip.count630 = zext nneg i32 %4 to i64
  %wide.trip.count625 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check878 = icmp ult i32 %1, 4
  %n.vec880 = and i64 %wide.trip.count625, 2147483644 ; 3 uses
  %cmp.n887 = icmp eq i64 %n.vec880, %wide.trip.count625
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph508, %._crit_edge506
  %indvars.iv627 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next628, %._crit_edge506 ] ; 4 uses
  %i.ace = mul nsw i64 %indvars.iv627, %i.acd
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.aca, i64 %i.ace ; 3 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv627
  store ptr %i.acf, ptr %i.acg, align 8, !tbaa !56
  br i1 %i.acc, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %bb.de
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv627
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check878, label %scalar.ph877.preheader, label %vector.body881

vector.body881:                                   ; preds = %.lr.ph505, %vector.body881
  %index882 = phi i64 [ %index.next885, %vector.body881 ], [ 0, %.lr.ph505 ] ; 3 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %index882 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %wide.load883 = load <2 x double>, ptr %i.acj, align 8, !tbaa !35
  %wide.load884 = load <2 x double>, ptr %i.ack, align 8, !tbaa !35
  %i.acl = fptrunc <2 x double> %wide.load883 to <2 x float>
  %i.acm = fptrunc <2 x double> %wide.load884 to <2 x float>
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %index882 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store <2 x float> %i.acl, ptr %i.acn, align 4, !tbaa !48
  store <2 x float> %i.acm, ptr %i.aco, align 4, !tbaa !48
  %index.next885 = add nuw i64 %index882, 4       ; 2 uses
  %i.acp = icmp eq i64 %index.next885, %n.vec880
  br i1 %i.acp, label %middle.block886, label %vector.body881, !llvm.loop !114

middle.block886:                                  ; preds = %vector.body881
  br i1 %cmp.n887, label %._crit_edge506, label %scalar.ph877.preheader

scalar.ph877.preheader:                           ; preds = %.lr.ph505, %middle.block886
  %indvars.iv622.ph = phi i64 [ 0, %.lr.ph505 ], [ %n.vec880, %middle.block886 ]
  br label %scalar.ph877

scalar.ph877:                                     ; preds = %scalar.ph877.preheader, %scalar.ph877
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %scalar.ph877 ], [ %indvars.iv622.ph, %scalar.ph877.preheader ] ; 3 uses
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %indvars.iv622
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !35
  %i.acs = fptrunc double %i.acr to float
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv622
  store float %i.acs, ptr %i.act, align 4, !tbaa !48
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %._crit_edge506, label %scalar.ph877, !llvm.loop !115
end_hunk_1
begin_hunk_2_@stress_majorization_kD_mkernel:bb.a
  %i.afr = shl nuw nsw i64 %i.abg, 3
  %i.afs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.15, i64 noundef %i.afr) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit446:                                ; preds = %bb.dn
  br i1 %.not.i432, label %.thread.i450, label %bb.dp

.thread.i450:                                     ; preds = %gv_calloc.exit446.thread, %gv_calloc.exit446
  %i.aft = phi ptr [ %i.afl, %gv_calloc.exit446.thread ], [ %i.afo, %gv_calloc.exit446 ]
  %i.afu = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit451

bb.dp:                                            ; preds = %gv_calloc.exit446
  %mul.ov.i449 = icmp slt i32 %i.abq, 0
  br i1 %mul.ov.i449, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.afv = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afv, ptr noundef nonnull @.str.14, i64 noundef %i.abr, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.afx = call noalias ptr @calloc(i64 noundef %i.abr, i64 noundef 4) #16 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %bb.ds, label %gv_calloc.exit451

bb.ds:                                            ; preds = %bb.dr
  %i.afz = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aga = shl nuw nsw i64 %i.abr, 2
  %i.agb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afz, ptr noundef nonnull @.str.15, i64 noundef %i.aga) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit451:                                ; preds = %.thread.i450, %bb.dr
  %i.agc = phi ptr [ %i.aft, %.thread.i450 ], [ %i.afo, %bb.dr ] ; 14 uses
  %i.agd = phi ptr [ %i.afu, %.thread.i450 ], [ %i.afx, %bb.dr ] ; 6 uses
  store ptr %i.agd, ptr %i.agc, align 8, !tbaa !56
  %i.age = icmp samesign ugt i32 %4, 1
  br i1 %i.age, label %.lr.ph526.preheader, label %._crit_edge527

.lr.ph526.preheader:                              ; preds = %gv_calloc.exit451
  %wide.trip.count660 = zext nneg i32 %4 to i64
  %i.agf = add nsw i64 %wide.trip.count660, -1    ; 2 uses
  %xtraiter1037 = and i64 %i.agf, 3               ; 3 uses
  %i.agg = add i32 %4, -2
  %i.agh = icmp ult i32 %i.agg, 3
  br i1 %i.agh, label %.lr.ph526.epil.preheader, label %.lr.ph526.preheader.new

.lr.ph526.preheader.new:                          ; preds = %.lr.ph526.preheader
  %unroll_iter1041 = and i64 %i.agf, -4
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %.lr.ph526, %.lr.ph526.preheader.new
  %indvars.iv657 = phi i64 [ 1, %.lr.ph526.preheader.new ], [ %indvars.iv.next658.3, %.lr.ph526 ] ; 6 uses
  %niter1042 = phi i64 [ 0, %.lr.ph526.preheader.new ], [ %niter1042.next.3, %.lr.ph526 ]
  %i.agi = mul nsw i64 %indvars.iv657, %i.add
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.agi
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv657
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !56
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %i.agl = mul nsw i64 %indvars.iv.next658, %i.add
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.agl
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv.next658
  store ptr %i.agm, ptr %i.agn, align 8, !tbaa !56
  %indvars.iv.next658.1 = add nuw nsw i64 %indvars.iv657, 2 ; 2 uses
  %i.ago = mul nsw i64 %indvars.iv.next658.1, %i.add
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.ago
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv.next658.1
  store ptr %i.agp, ptr %i.agq, align 8, !tbaa !56
  %indvars.iv.next658.2 = add nuw nsw i64 %indvars.iv657, 3 ; 2 uses
  %i.agr = mul nsw i64 %indvars.iv.next658.2, %i.add
  %i.ags = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.agr
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv.next658.2
  store ptr %i.ags, ptr %i.agt, align 8, !tbaa !56
  %indvars.iv.next658.3 = add nuw nsw i64 %indvars.iv657, 4 ; 2 uses
  %niter1042.next.3 = add nuw i64 %niter1042, 4   ; 2 uses
  %niter1042.ncmp.3 = icmp eq i64 %niter1042.next.3, %unroll_iter1041
  br i1 %niter1042.ncmp.3, label %._crit_edge527.loopexit.unr-lcssa, label %.lr.ph526, !llvm.loop !120

._crit_edge527.loopexit.unr-lcssa:                ; preds = %.lr.ph526
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1037, 0
  br i1 %lcmp.mod1039.not, label %._crit_edge527, label %.lr.ph526.epil.preheader

.lr.ph526.epil.preheader:                         ; preds = %._crit_edge527.loopexit.unr-lcssa, %.lr.ph526.preheader
  %indvars.iv657.epil.init = phi i64 [ 1, %.lr.ph526.preheader ], [ %indvars.iv.next658.3, %._crit_edge527.loopexit.unr-lcssa ]
  %lcmp.mod1040 = icmp ne i64 %xtraiter1037, 0
  call void @llvm.assume(i1 %lcmp.mod1040)
  br label %.lr.ph526.epil

.lr.ph526.epil:                                   ; preds = %.lr.ph526.epil, %.lr.ph526.epil.preheader
  %indvars.iv657.epil = phi i64 [ %indvars.iv657.epil.init, %.lr.ph526.epil.preheader ], [ %indvars.iv.next658.epil, %.lr.ph526.epil ] ; 3 uses
  %epil.iter1038 = phi i64 [ 0, %.lr.ph526.epil.preheader ], [ %epil.iter1038.next, %.lr.ph526.epil ]
  %i.agu = mul nsw i64 %indvars.iv657.epil, %i.add
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.agu
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv657.epil
  store ptr %i.agv, ptr %i.agw, align 8, !tbaa !56
  %indvars.iv.next658.epil = add nuw nsw i64 %indvars.iv657.epil, 1
  %epil.iter1038.next = add i64 %epil.iter1038, 1 ; 2 uses
  %epil.iter1038.cmp.not = icmp eq i64 %epil.iter1038.next, %xtraiter1037
  br i1 %epil.iter1038.cmp.not, label %._crit_edge527, label %.lr.ph526.epil, !llvm.loop !121

._crit_edge527:                                   ; preds = %._crit_edge527.loopexit.unr-lcssa, %.lr.ph526.epil, %gv_calloc.exit451
  br i1 %.not.i437, label %bb.dt, label %.thread.i460

bb.dt:                                            ; preds = %._crit_edge527
  %mul.ov.i454 = icmp slt i32 %1, 0
  br i1 %mul.ov.i454, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.agx = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.agy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agx, ptr noundef nonnull @.str.14, i64 noundef %i.add, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.agz = call noalias ptr @calloc(i64 noundef %i.add, i64 noundef 4) #16 ; 2 uses
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %bb.dw, label %gv_calloc.exit456

bb.dw:                                            ; preds = %bb.dv
  %i.ahb = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahc = shl nuw nsw i64 %i.add, 2
  %i.ahd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahb, ptr noundef nonnull @.str.15, i64 noundef %i.ahc) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

.thread.i460:                                     ; preds = %._crit_edge527
  %i.ahe = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ahf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit461

gv_calloc.exit456:                                ; preds = %bb.dv
  %i.ahg = call noalias ptr @calloc(i64 noundef %i.add, i64 noundef 4) #16 ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %bb.dx, label %gv_calloc.exit461

bb.dx:                                            ; preds = %gv_calloc.exit456
  %i.ahi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahj = shl nuw nsw i64 %i.add, 2
  %i.ahk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahi, ptr noundef nonnull @.str.15, i64 noundef %i.ahj) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit461:                                ; preds = %.thread.i460, %gv_calloc.exit456
  %i.ahl = phi ptr [ %i.ahe, %.thread.i460 ], [ %i.agz, %gv_calloc.exit456 ] ; 11 uses
  %i.ahm = phi ptr [ %i.ahf, %.thread.i460 ], [ %i.ahg, %gv_calloc.exit456 ] ; 30 uses
  %i.ahn = sext i32 %i.adb to i64                 ; 3 uses
  %.off = add i32 %i.ada, 1
  %.not.i462 = icmp ult i32 %.off, 3
  br i1 %.not.i462, label %.thread.i465, label %bb.dy

.thread.i465:                                     ; preds = %gv_calloc.exit461
  %i.aho = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit466

bb.dy:                                            ; preds = %gv_calloc.exit461
  %mul.ov.i464 = icmp slt i32 %i.ada, -1
  br i1 %mul.ov.i464, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ahp = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahp, ptr noundef nonnull @.str.14, i64 noundef %i.ahn, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ahr = call noalias ptr @calloc(i64 noundef %i.ahn, i64 noundef 4) #16 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %bb.eb, label %gv_calloc.exit466

bb.eb:                                            ; preds = %bb.ea
  %i.aht = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahu = shl nuw nsw i64 %i.ahn, 2
  %i.ahv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aht, ptr noundef nonnull @.str.15, i64 noundef %i.ahu) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit466:                                ; preds = %.thread.i465, %bb.ea
  %i.ahw = phi ptr [ %i.aho, %.thread.i465 ], [ %i.ahr, %bb.ea ] ; 13 uses
  %i.ahx = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not414 = icmp eq i8 %i.ahx, 0
  br i1 %.not414, label %.lr.ph579, label %bb.ec

bb.ec:                                            ; preds = %gv_calloc.exit466
  %i.ahy = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahz = call double @elapsed_sec() #15
  %i.aia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahy, ptr noundef nonnull @.str.6, double noundef %i.ahz) #17 ; 0 uses
  %i.aib = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aic = call i64 @fwrite(ptr nonnull @.str.10, i64 15, i64 1, ptr %i.aib) #19 ; 0 uses
  call void @start_timer() #15
  br label %.lr.ph579

.lr.ph579:                                        ; preds = %gv_calloc.exit466, %bb.ec
  %i.aid = shl nuw nsw i64 %i.add, 4
  %i.aie = fpext float %i.acy to double           ; 2 uses
  %i.aif = add nsw i32 %1, -2
  %wide.trip.count702 = zext i32 %i.acv to i64
  %wide.trip.count668 = zext nneg i32 %4 to i64
  %wide.trip.count711 = zext i32 %1 to i64        ; 6 uses
  %i.aig = fadd double %i.aie, 0.000000e+00
  %wide.trip.count716 = zext nneg i32 %4 to i64
  %wide.trip.count721 = zext nneg i32 %4 to i64
  %wide.trip.count726 = zext nneg i32 %4 to i64
  %wide.trip.count736 = zext nneg i32 %4 to i64
  %wide.trip.count741 = zext nneg i32 %4 to i64
  %xtraiter1061 = and i64 %wide.trip.count711, 1
  %unroll_iter1065 = and i64 %wide.trip.count711, 4294967294
  %lcmp.mod1063.not = icmp eq i64 %xtraiter1061, 0
  %lcmp.mod1064 = trunc i32 %1 to i1
  %xtraiter1067 = and i64 %wide.trip.count711, 1
  %unroll_iter1071 = and i64 %wide.trip.count711, 4294967294
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1067, 0
  %lcmp.mod1070 = trunc i32 %1 to i1
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph579, %bb.eo
  %.0341577 = phi i32 [ 0, %.lr.ph579 ], [ %i.asc, %bb.eo ] ; 3 uses
  %.0354576 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph579 ], [ %.1353.lcssa, %bb.eo ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.afk, i8 0, i64 %i.aid, i1 false)
  br i1 %i.adc, label %bb.ee, label %.preheader484.a

bb.ee:                                            ; preds = %bb.ed
  call void @sqrt_vecf(i32 noundef %i.adb, ptr noundef %.1364, ptr noundef %i.ahw) #15
  br label %.preheader484.a

.preheader484.a:                                  ; preds = %bb.ee, %bb.ed
  br i1 %i.bo, label %.lr.ph552, label %.lr.ph556.preheader

.lr.ph556.preheader:                              ; preds = %.loopexit478, %.preheader484.a
  br i1 %.not.i437, label %.lr.ph556, label %.preheader483

.lr.ph552:                                        ; preds = %.preheader484.a, %.loopexit478
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %.loopexit478 ], [ 0, %.preheader484.a ] ; 10 uses
  %indvars.iv681 = phi i32 [ %indvars.iv.next682, %.loopexit478 ], [ %i.aif, %.preheader484.a ] ; 2 uses
  %indvars.iv662.in = phi i64 [ %indvars.iv662, %.loopexit478 ], [ %i.add, %.preheader484.a ]
  %.3368550 = phi i32 [ %.6, %.loopexit478 ], [ 0, %.preheader484.a ] ; 3 uses
  %i.aih = trunc i64 %indvars.iv697 to i32
  %i.aii = sub i32 %i.acv, %i.aih                 ; 2 uses
  %i.aij = zext i32 %i.aii to i64                 ; 3 uses
  %i.aik = add nsw i64 %i.aij, -1                 ; 2 uses
  %i.ail = xor i64 %indvars.iv697, -1
  %i.aim = add nsw i64 %i.ail, %i.add
  %umax916 = call i64 @llvm.umax.i64(i64 %i.aim, i64 1)
  %i.ain = shl i64 %umax916, 2                    ; 2 uses
  %scevgep917 = getelementptr i8, ptr %i.ahm, i64 %i.ain ; 2 uses
  %i.aio = shl nuw nsw i64 %indvars.iv697, 2
  %indvars.iv662 = add nsw i64 %indvars.iv662.in, -1 ; 10 uses
  %i.aip = trunc i64 %indvars.iv697 to i32
  %i.aiq = sub i32 %i.acv, %i.aip
  %i.air = zext i32 %i.aiq to i64
  %i.ais = shl nuw nsw i64 %i.air, 2
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv662, i64 1) ; 3 uses
  %i.ait = trunc nuw nsw i64 %indvars.iv697 to i32
  %i.aiu = xor i32 %i.ait, -1
  %i.aiv = add nsw i32 %1, %i.aiu                 ; 5 uses
  call void @set_vector_valf(i32 noundef %i.aiv, float noundef 0.000000e+00, ptr noundef %i.ahm) #15
  br i1 %i.acb, label %.preheader475.lr.ph, label %._crit_edge532.split

.preheader475.lr.ph:                              ; preds = %.lr.ph552
  %.not587 = icmp eq i32 %i.aiv, 0
  br i1 %.not587, label %._crit_edge536.thread, label %.preheader475.preheader

.preheader475.preheader:                          ; preds = %.preheader475.lr.ph
  %min.iters.check924 = icmp ult i64 %indvars.iv662, 8
  %n.vec926 = and i64 %umax, -8                   ; 3 uses
  %cmp.n937 = icmp eq i64 %indvars.iv662, %n.vec926
  %xtraiter1043 = and i64 %umax, 1
  %lcmp.mod1044.not = icmp eq i64 %xtraiter1043, 0
  %invariant.op1086 = sub nuw i64 %umax, 1
  br label %.preheader475

.preheader475:                                    ; preds = %.preheader475.preheader, %._crit_edge530
  %indvars.iv665 = phi i64 [ %indvars.iv.next666, %._crit_edge530 ], [ 0, %.preheader475.preheader ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv665
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !56 ; 2 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv697 ; 6 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4 ; 6 uses
  br i1 %min.iters.check924, label %scalar.ph923.preheader, label %vector.memcheck915

vector.memcheck915:                               ; preds = %.preheader475
  %i.aja = getelementptr i8, ptr %i.aix, i64 %i.aio
  %i.ajb = getelementptr i8, ptr %i.aja, i64 4
  %scevgep918 = getelementptr i8, ptr %i.ajb, i64 %i.ain
  %bound0 = icmp ult ptr %i.ahm, %scevgep918
  %bound1 = icmp ult ptr %i.aiz, %scevgep917
  %found.conflict = and i1 %bound0, %bound1
  %bound0919 = icmp ult ptr %i.ahm, %i.aiz
  %bound1920 = icmp ult ptr %i.aiy, %scevgep917
  %found.conflict921 = and i1 %bound0919, %bound1920
  %conflict.rdx922 = or i1 %found.conflict, %found.conflict921
  br i1 %conflict.rdx922, label %scalar.ph923.preheader, label %vector.ph925

vector.ph925:                                     ; preds = %vector.memcheck915
  %i.ajc = load float, ptr %i.aiy, align 4, !tbaa !48, !alias.scope !154
  %broadcast.splatinsert931 = insertelement <4 x float> poison, float %i.ajc, i64 0
  %broadcast.splat932 = shufflevector <4 x float> %broadcast.splatinsert931, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph925
  %index928 = phi i64 [ 0, %vector.ph925 ], [ %index.next935, %vector.body927 ] ; 3 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %index928 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  %wide.load929 = load <4 x float>, ptr %i.ajd, align 4, !tbaa !48, !alias.scope !155
  %wide.load930 = load <4 x float>, ptr %i.aje, align 4, !tbaa !48, !alias.scope !155
  %i.ajf = fsub <4 x float> %broadcast.splat932, %wide.load929 ; 2 uses
  %i.ajg = fsub <4 x float> %broadcast.splat932, %wide.load930 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %index928 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16 ; 2 uses
  %wide.load933 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %wide.load934 = load <4 x float>, ptr %i.aji, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %i.ajj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajf, <4 x float> %i.ajf, <4 x float> %wide.load933)
  %i.ajk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajg, <4 x float> %i.ajg, <4 x float> %wide.load934)
  store <4 x float> %i.ajj, ptr %i.ajh, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  store <4 x float> %i.ajk, ptr %i.aji, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %index.next935 = add nuw i64 %index928, 8       ; 2 uses
  %i.ajl = icmp eq i64 %index.next935, %n.vec926
  br i1 %i.ajl, label %middle.block936, label %vector.body927, !llvm.loop !126

middle.block936:                                  ; preds = %vector.body927
  br i1 %cmp.n937, label %._crit_edge530, label %scalar.ph923.preheader

scalar.ph923.preheader:                           ; preds = %vector.memcheck915, %.preheader475, %middle.block936
  %.0342528.ph = phi i64 [ 0, %vector.memcheck915 ], [ 0, %.preheader475 ], [ %n.vec926, %middle.block936 ] ; 5 uses
  br i1 %lcmp.mod1044.not, label %scalar.ph923.prol.loopexit, label %scalar.ph923.prol

scalar.ph923.prol:                                ; preds = %scalar.ph923.preheader
  %i.ajm = load float, ptr %i.aiy, align 4, !tbaa !48
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %.0342528.ph
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !48
  %i.ajp = fsub float %i.ajm, %i.ajo              ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.0342528.ph ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !48
  %i.ajs = call float @llvm.fmuladd.f32(float %i.ajp, float %i.ajp, float %i.ajr)
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !48
  %i.ajt = or disjoint i64 %.0342528.ph, 1
  br label %scalar.ph923.prol.loopexit

scalar.ph923.prol.loopexit:                       ; preds = %scalar.ph923.prol, %scalar.ph923.preheader
  %.0342528.unr = phi i64 [ %.0342528.ph, %scalar.ph923.preheader ], [ %i.ajt, %scalar.ph923.prol ]
  %i.aju = icmp eq i64 %.0342528.ph, %invariant.op1086
  br i1 %i.aju, label %._crit_edge530, label %scalar.ph923

scalar.ph923:                                     ; preds = %scalar.ph923.prol.loopexit, %scalar.ph923
  %.0342528 = phi i64 [ %i.akk, %scalar.ph923 ], [ %.0342528.unr, %scalar.ph923.prol.loopexit ] ; 4 uses
  %i.ajv = load float, ptr %i.aiy, align 4, !tbaa !48
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %.0342528
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !48
  %i.ajy = fsub float %i.ajv, %i.ajx              ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.0342528 ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !48
  %i.akb = call float @llvm.fmuladd.f32(float %i.ajy, float %i.ajy, float %i.aka)
  store float %i.akb, ptr %i.ajz, align 4, !tbaa !48
  %i.akc = add nuw i64 %.0342528, 1               ; 2 uses
  %i.akd = load float, ptr %i.aiy, align 4, !tbaa !48
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.akc
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !48
  %i.akg = fsub float %i.akd, %i.akf              ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.akc ; 2 uses
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !48
  %i.akj = call float @llvm.fmuladd.f32(float %i.akg, float %i.akg, float %i.aki)
  store float %i.akj, ptr %i.akh, align 4, !tbaa !48
  %i.akk = add nuw i64 %.0342528, 2               ; 2 uses
  %exitcond664.not.1 = icmp eq i64 %indvars.iv662, %i.akk
  br i1 %exitcond664.not.1, label %._crit_edge530, label %scalar.ph923, !llvm.loop !127

._crit_edge530:                                   ; preds = %scalar.ph923.prol.loopexit, %scalar.ph923, %middle.block936
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge532.split, label %.preheader475, !llvm.loop !128

._crit_edge532.split:                             ; preds = %._crit_edge530, %.lr.ph552
  call void @invert_sqrt_vec(i32 noundef %i.aiv, ptr noundef %i.ahm) #15
  %i.akl = icmp sgt i32 %i.aiv, 0                 ; 3 uses
  br i1 %i.akl, label %.lr.ph535.preheader, label %._crit_edge536

.lr.ph535.preheader:                              ; preds = %._crit_edge532.split
  %wide.trip.count675 = and i64 %indvars.iv662, 4294967295 ; 3 uses
  %min.iters.check890 = icmp samesign ult i64 %wide.trip.count675, 8
  br i1 %min.iters.check890, label %.lr.ph535.preheader951, label %vector.ph891

vector.ph891:                                     ; preds = %.lr.ph535.preheader
  %n.vec892 = and i64 %indvars.iv662, 4294967288  ; 3 uses
  br label %vector.body893

vector.body893:                                   ; preds = %pred.store.continue910, %vector.ph891
  %index894 = phi i64 [ 0, %vector.ph891 ], [ %index.next911, %pred.store.continue910 ] ; 9 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %index894 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 16
  %wide.load895 = load <4 x float>, ptr %i.akm, align 4, !tbaa !48 ; 2 uses
  %wide.load896 = load <4 x float>, ptr %i.akn, align 4, !tbaa !48 ; 2 uses
  %i.ako = fcmp oge <4 x float> %wide.load895, splat (float f0x7F7FFFFF)
  %i.akp = fcmp oge <4 x float> %wide.load896, splat (float f0x7F7FFFFF)
  %i.akq = fcmp olt <4 x float> %wide.load895, zeroinitializer
  %i.akr = fcmp olt <4 x float> %wide.load896, zeroinitializer
  %i.aks = or <4 x i1> %i.ako, %i.akq             ; 4 uses
  %i.akt = or <4 x i1> %i.akp, %i.akr             ; 4 uses
  %i.aku = extractelement <4 x i1> %i.aks, i64 0
  br i1 %i.aku, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body893
  store float 0.000000e+00, ptr %i.akm, align 4, !tbaa !48
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body893
  %i.akv = extractelement <4 x i1> %i.aks, i64 1
  br i1 %i.akv, label %pred.store.if897, label %pred.store.continue898

pred.store.if897:                                 ; preds = %pred.store.continue
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %index894
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  store float 0.000000e+00, ptr %i.akx, align 4, !tbaa !48
  br label %pred.store.continue898

pred.store.continue898:                           ; preds = %pred.store.if897, %pred.store.continue
  %i.aky = extractelement <4 x i1> %i.aks, i64 2
  br i1 %i.aky, label %pred.store.if899, label %pred.store.continue900

pred.store.if899:                                 ; preds = %pred.store.continue898
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %index894
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  store float 0.000000e+00, ptr %i.ala, align 4, !tbaa !48
  br label %pred.store.continue900

pred.store.continue900:                           ; preds = %pred.store.if899, %pred.store.continue898
  %i.alb = extractelement <4 x i1> %i.aks, i64 3
  br i1 %i.alb, label %pred.store.if901, label %pred.store.continue902

pred.store.if901:                                 ; preds = %pred.store.continue900
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %index894
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  store float 0.000000e+00, ptr %i.ald, align 4, !tbaa !48
  br label %pred.store.continue902

pred.store.continue902:                           ; preds = %pred.store.if901, %pred.store.continue900
  %i.ale = extractelement <4 x i1> %i.akt, i64 0
  br i1 %i.ale, label %pred.store.if903, label %pred.store.continue904
end_hunk_2
begin_hunk_3_@stress_majorization_kD_mkernel:bb.a
  %cmp.n913 = icmp eq i64 %wide.trip.count675, %n.vec892
  br i1 %cmp.n913, label %._crit_edge536, label %.lr.ph535.preheader951

.lr.ph535.preheader951:                           ; preds = %.lr.ph535.preheader, %middle.block912
  %indvars.iv670.ph = phi i64 [ 0, %.lr.ph535.preheader ], [ %n.vec892, %middle.block912 ]
  br label %.lr.ph535

.lr.ph535:                                        ; preds = %.lr.ph535.preheader951, %bb.eg
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %bb.eg ], [ %indvars.iv670.ph, %.lr.ph535.preheader951 ] ; 2 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv670 ; 2 uses
  %i.als = load float, ptr %i.alr, align 4, !tbaa !48 ; 2 uses
  %i.alt = fcmp oge float %i.als, f0x7F7FFFFF
  %i.alu = fcmp olt float %i.als, 0.000000e+00
  %or.cond421 = or i1 %i.alt, %i.alu
  br i1 %or.cond421, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph535
  store float 0.000000e+00, ptr %i.alr, align 4, !tbaa !48
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph535, %bb.ef
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge536, label %.lr.ph535, !llvm.loop !130

._crit_edge536:                                   ; preds = %bb.eg, %middle.block912, %._crit_edge532.split
  %i.alv = add i32 %.3368550, 1                   ; 4 uses
  br i1 %i.adc, label %.preheader477, label %.preheader479

._crit_edge536.thread:                            ; preds = %.preheader475.lr.ph
  call void @invert_sqrt_vec(i32 noundef %i.aiv, ptr noundef %i.ahm) #15
  %i.alw = add i32 %.3368550, 1
  br label %.loopexit478

.preheader479:                                    ; preds = %._crit_edge536
  br i1 %i.akl, label %.lr.ph540.preheader, label %.loopexit478

.lr.ph540.preheader:                              ; preds = %.preheader479
  %i.alx = sext i32 %i.alv to i64
  %i.aly = shl nsw i64 %i.alx, 2
  %scevgep = getelementptr i8, ptr %i.ahw, i64 %i.aly
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.ahm, i64 %i.ais, i1 false), !tbaa !48
  %invariant.gep820 = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv697 ; 3 uses
  %xtraiter1046 = and i64 %indvars.iv662, 1
  %i.alz = icmp eq i64 %i.aik, 0
  br i1 %i.alz, label %.lr.ph540.epil.preheader, label %.lr.ph540.preheader.new

.lr.ph540.preheader.new:                          ; preds = %.lr.ph540.preheader
  %unroll_iter1051 = and i64 %indvars.iv662, 4294967294
  br label %.lr.ph540

.preheader477:                                    ; preds = %._crit_edge536
  br i1 %i.akl, label %.lr.ph546.preheader, label %.loopexit478

.lr.ph546.preheader:                              ; preds = %.preheader477
  %i.ama = sext i32 %i.alv to i64                 ; 2 uses
  %invariant.gep822 = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv697 ; 3 uses
  %xtraiter1053 = and i64 %i.aij, 1
  %i.amb = icmp eq i64 %i.aik, 0
  br i1 %i.amb, label %.lr.ph546.epil.preheader, label %.lr.ph546.preheader.new

.lr.ph546.preheader.new:                          ; preds = %.lr.ph546.preheader
  %unroll_iter1059 = and i64 %i.aij, 4294967294
  br label %.lr.ph546

.lr.ph546:                                        ; preds = %.lr.ph546, %.lr.ph546.preheader.new
  %indvars.iv690 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %indvars.iv.next691.1, %.lr.ph546 ] ; 4 uses
  %indvars.iv688 = phi i64 [ %i.ama, %.lr.ph546.preheader.new ], [ %indvars.iv.next689.1, %.lr.ph546 ] ; 3 uses
  %.1360545 = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader.new ], [ %i.amt, %.lr.ph546 ]
  %niter1060 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %niter1060.next.1, %.lr.ph546 ]
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv690
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !48
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %indvars.iv688 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !48
  %i.amg = fmul float %i.amd, %i.amf              ; 2 uses
  store float %i.amg, ptr %i.ame, align 4, !tbaa !48
  %i.amh = fpext float %i.amg to x86_fp80         ; 2 uses
  %i.ami = fadd x86_fp80 %.1360545, %i.amh
  %gep823 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv690
  %i.amj = getelementptr inbounds nuw i8, ptr %gep823, i64 16 ; 2 uses
  %i.amk = load x86_fp80, ptr %i.amj, align 16, !tbaa !153
  %i.aml = fsub x86_fp80 %i.amk, %i.amh
  store x86_fp80 %i.aml, ptr %i.amj, align 16, !tbaa !153
  %indvars.iv.next691 = or disjoint i64 %indvars.iv690, 1 ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv.next691
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !48
  %i.amo = getelementptr [4 x i8], ptr %i.ahw, i64 %indvars.iv688
  %i.amp = getelementptr i8, ptr %i.amo, i64 4    ; 2 uses
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !48
  %i.amr = fmul float %i.amn, %i.amq              ; 2 uses
  store float %i.amr, ptr %i.amp, align 4, !tbaa !48
  %i.ams = fpext float %i.amr to x86_fp80         ; 2 uses
  %i.amt = fadd x86_fp80 %i.ami, %i.ams           ; 3 uses
  %gep823.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv.next691
  %i.amu = getelementptr inbounds nuw i8, ptr %gep823.1, i64 16 ; 2 uses
  %i.amv = load x86_fp80, ptr %i.amu, align 16, !tbaa !153
  %i.amw = fsub x86_fp80 %i.amv, %i.ams
  store x86_fp80 %i.amw, ptr %i.amu, align 16, !tbaa !153
  %indvars.iv.next691.1 = add nuw nsw i64 %indvars.iv690, 2 ; 2 uses
  %indvars.iv.next689.1 = add nsw i64 %indvars.iv688, 2 ; 3 uses
  %niter1060.next.1 = add i64 %niter1060, 2       ; 2 uses
  %niter1060.ncmp.1 = icmp eq i64 %niter1060.next.1, %unroll_iter1059
  br i1 %niter1060.ncmp.1, label %.loopexit478.loopexit.unr-lcssa, label %.lr.ph546, !llvm.loop !131

.lr.ph540:                                        ; preds = %.lr.ph540, %.lr.ph540.preheader.new
  %indvars.iv679 = phi i64 [ 0, %.lr.ph540.preheader.new ], [ %indvars.iv.next680.1, %.lr.ph540 ] ; 4 uses
  %.2361539 = phi x86_fp80 [ 0.000000e+00, %.lr.ph540.preheader.new ], [ %i.anh, %.lr.ph540 ]
  %niter1052 = phi i64 [ 0, %.lr.ph540.preheader.new ], [ %niter1052.next.1, %.lr.ph540 ]
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv679
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !48
  %i.amz = fpext float %i.amy to x86_fp80         ; 2 uses
  %i.ana = fadd x86_fp80 %.2361539, %i.amz
  %gep821 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv679
  %i.anb = getelementptr inbounds nuw i8, ptr %gep821, i64 16 ; 2 uses
  %i.anc = load x86_fp80, ptr %i.anb, align 16, !tbaa !153
  %i.and = fsub x86_fp80 %i.anc, %i.amz
  store x86_fp80 %i.and, ptr %i.anb, align 16, !tbaa !153
  %indvars.iv.next680 = or disjoint i64 %indvars.iv679, 1 ; 2 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv.next680
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !48
  %i.ang = fpext float %i.anf to x86_fp80         ; 2 uses
  %i.anh = fadd x86_fp80 %i.ana, %i.ang           ; 3 uses
  %gep821.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv.next680
  %i.ani = getelementptr inbounds nuw i8, ptr %gep821.1, i64 16 ; 2 uses
  %i.anj = load x86_fp80, ptr %i.ani, align 16, !tbaa !153
  %i.ank = fsub x86_fp80 %i.anj, %i.ang
  store x86_fp80 %i.ank, ptr %i.ani, align 16, !tbaa !153
  %indvars.iv.next680.1 = add nuw nsw i64 %indvars.iv679, 2 ; 2 uses
  %niter1052.next.1 = add i64 %niter1052, 2       ; 2 uses
  %niter1052.ncmp.1 = icmp eq i64 %niter1052.next.1, %unroll_iter1051
  br i1 %niter1052.ncmp.1, label %.loopexit478.loopexit588.unr-lcssa, label %.lr.ph540, !llvm.loop !132

.loopexit478.loopexit.unr-lcssa:                  ; preds = %.lr.ph546
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1053, 0
  br i1 %lcmp.mod1055.not, label %.loopexit478.loopexit, label %.lr.ph546.epil.preheader

.lr.ph546.epil.preheader:                         ; preds = %.loopexit478.loopexit.unr-lcssa, %.lr.ph546.preheader
  %indvars.iv690.epil.init = phi i64 [ 0, %.lr.ph546.preheader ], [ %indvars.iv.next691.1, %.loopexit478.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv688.epil.init = phi i64 [ %i.ama, %.lr.ph546.preheader ], [ %indvars.iv.next689.1, %.loopexit478.loopexit.unr-lcssa ] ; 2 uses
  %.1360545.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader ], [ %i.amt, %.loopexit478.loopexit.unr-lcssa ]
  %lcmp.mod1058 = trunc i32 %i.aii to i1
  call void @llvm.assume(i1 %lcmp.mod1058)
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv690.epil.init
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !48
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %indvars.iv688.epil.init ; 2 uses
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !48
  %i.anp = fmul float %i.anm, %i.ano              ; 2 uses
  store float %i.anp, ptr %i.ann, align 4, !tbaa !48
  %i.anq = fpext float %i.anp to x86_fp80         ; 2 uses
  %i.anr = fadd x86_fp80 %.1360545.epil.init, %i.anq
  %gep823.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep822, i64 %indvars.iv690.epil.init
  %i.ans = getelementptr inbounds nuw i8, ptr %gep823.epil, i64 16 ; 2 uses
  %i.ant = load x86_fp80, ptr %i.ans, align 16, !tbaa !153
  %i.anu = fsub x86_fp80 %i.ant, %i.anq
  store x86_fp80 %i.anu, ptr %i.ans, align 16, !tbaa !153
  %indvars.iv.next689.epil = add nsw i64 %indvars.iv688.epil.init, 1
  br label %.loopexit478.loopexit

.loopexit478.loopexit:                            ; preds = %.loopexit478.loopexit.unr-lcssa, %.lr.ph546.epil.preheader
  %.lcssa955 = phi x86_fp80 [ %i.amt, %.loopexit478.loopexit.unr-lcssa ], [ %i.anr, %.lr.ph546.epil.preheader ]
  %indvars.iv.next689.lcssa = phi i64 [ %indvars.iv.next689.1, %.loopexit478.loopexit.unr-lcssa ], [ %indvars.iv.next689.epil, %.lr.ph546.epil.preheader ]
  %i.anv = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %.loopexit478

.loopexit478.loopexit588.unr-lcssa:               ; preds = %.lr.ph540
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1048.not, label %.loopexit478.loopexit588, label %.lr.ph540.epil.preheader

.lr.ph540.epil.preheader:                         ; preds = %.loopexit478.loopexit588.unr-lcssa, %.lr.ph540.preheader
  %indvars.iv679.epil.init = phi i64 [ 0, %.lr.ph540.preheader ], [ %indvars.iv.next680.1, %.loopexit478.loopexit588.unr-lcssa ] ; 2 uses
  %.2361539.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph540.preheader ], [ %i.anh, %.loopexit478.loopexit588.unr-lcssa ]
  %lcmp.mod1050 = trunc i64 %indvars.iv662 to i1
  call void @llvm.assume(i1 %lcmp.mod1050)
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv679.epil.init
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !48
  %i.any = fpext float %i.anx to x86_fp80         ; 2 uses
  %i.anz = fadd x86_fp80 %.2361539.epil.init, %i.any
  %gep821.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep820, i64 %indvars.iv679.epil.init
  %i.aoa = getelementptr inbounds nuw i8, ptr %gep821.epil, i64 16 ; 2 uses
  %i.aob = load x86_fp80, ptr %i.aoa, align 16, !tbaa !153
  %i.aoc = fsub x86_fp80 %i.aob, %i.any
  store x86_fp80 %i.aoc, ptr %i.aoa, align 16, !tbaa !153
  br label %.loopexit478.loopexit588

.loopexit478.loopexit588:                         ; preds = %.loopexit478.loopexit588.unr-lcssa, %.lr.ph540.epil.preheader
  %.lcssa = phi x86_fp80 [ %i.anh, %.loopexit478.loopexit588.unr-lcssa ], [ %i.anz, %.lr.ph540.epil.preheader ]
  %i.aod = add i32 %.3368550, 2
  %i.aoe = add i32 %i.aod, %indvars.iv681
  br label %.loopexit478

.loopexit478:                                     ; preds = %._crit_edge536.thread, %.loopexit478.loopexit588, %.loopexit478.loopexit, %.preheader479, %.preheader477
  %.6 = phi i32 [ %i.anv, %.loopexit478.loopexit ], [ %i.alv, %.preheader477 ], [ %i.alv, %.preheader479 ], [ %i.aoe, %.loopexit478.loopexit588 ], [ %i.alw, %._crit_edge536.thread ]
  %.3362 = phi x86_fp80 [ %.lcssa955, %.loopexit478.loopexit ], [ 0.000000e+00, %.preheader477 ], [ 0.000000e+00, %.preheader479 ], [ %.lcssa, %.loopexit478.loopexit588 ], [ 0.000000e+00, %._crit_edge536.thread ]
  %i.aof = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv697 ; 2 uses
  %i.aog = load x86_fp80, ptr %i.aof, align 16, !tbaa !153
  %i.aoh = fsub x86_fp80 %i.aog, %.3362
  store x86_fp80 %i.aoh, ptr %i.aof, align 16, !tbaa !153
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %indvars.iv.next682 = add i32 %indvars.iv681, -1
  %exitcond703.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count702
  br i1 %exitcond703.not, label %.lr.ph556.preheader, label %.lr.ph552, !llvm.loop !133

.preheader483.loopexit.unr-lcssa:                 ; preds = %.lr.ph556
  br i1 %lcmp.mod1063.not, label %.preheader483, label %.lr.ph556.epil.preheader

.lr.ph556.epil.preheader:                         ; preds = %.preheader483.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1064)
  %i.aoi = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv.next707.1
  %i.aoj = load x86_fp80, ptr %i.aoi, align 16, !tbaa !153
  %i.aok = fptrunc x86_fp80 %i.aoj to float
  %i.aol = sext i32 %i.apc to i64
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %i.aol
  store float %i.aok, ptr %i.aom, align 4, !tbaa !48
  br label %.preheader483

.preheader483:                                    ; preds = %.lr.ph556.epil.preheader, %.preheader483.loopexit.unr-lcssa, %.lr.ph556.preheader
  br i1 %i.acb, label %.lr.ph558, label %._crit_edge568

.lr.ph556:                                        ; preds = %.lr.ph556.preheader, %.lr.ph556
  %indvars.iv706 = phi i64 [ %indvars.iv.next707.1, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ] ; 3 uses
  %indvars.iv704 = phi i64 [ %indvars.iv.next705.1, %.lr.ph556 ], [ %i.add, %.lr.ph556.preheader ] ; 3 uses
  %.7554 = phi i32 [ %i.apc, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ] ; 2 uses
  %niter1066 = phi i64 [ %niter1066.next.1, %.lr.ph556 ], [ 0, %.lr.ph556.preheader ]
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv706
  %i.aoo = load x86_fp80, ptr %i.aon, align 16, !tbaa !153
  %i.aop = fptrunc x86_fp80 %i.aoo to float
  %i.aoq = sext i32 %.7554 to i64
  %i.aor = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %i.aoq
  store float %i.aop, ptr %i.aor, align 4, !tbaa !48
  %i.aos = trunc nsw i64 %indvars.iv704 to i32
  %i.aot = add nsw i32 %.7554, %i.aos             ; 2 uses
  %i.aou = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %indvars.iv706
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 16
  %i.aow = load x86_fp80, ptr %i.aov, align 16, !tbaa !153
  %i.aox = fptrunc x86_fp80 %i.aow to float
  %i.aoy = sext i32 %i.aot to i64
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %i.aoy
  store float %i.aox, ptr %i.aoz, align 4, !tbaa !48
  %indvars.iv.next707.1 = add nuw nsw i64 %indvars.iv706, 2 ; 2 uses
  %i.apa = trunc i64 %indvars.iv704 to i32
  %i.apb = add i32 %i.apa, -1
  %i.apc = add nsw i32 %i.aot, %i.apb             ; 2 uses
  %indvars.iv.next705.1 = add nsw i64 %indvars.iv704, -2
  %niter1066.next.1 = add i64 %niter1066, 2       ; 2 uses
  %niter1066.ncmp.1 = icmp eq i64 %niter1066.next.1, %unroll_iter1065
  br i1 %niter1066.ncmp.1, label %.preheader483.loopexit.unr-lcssa, label %.lr.ph556, !llvm.loop !134

.lr.ph558:                                        ; preds = %.preheader483, %.lr.ph558
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %.lr.ph558 ], [ 0, %.preheader483 ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv713
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !56
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv713
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !56
  call void @right_mult_with_vector_ff(ptr noundef %i.ahw, i32 noundef %1, ptr noundef %i.ape, ptr noundef %i.apg) #15
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.lr.ph561, label %.lr.ph558, !llvm.loop !135

.lr.ph561:                                        ; preds = %.lr.ph558, %.lr.ph561
  %indvars.iv718 = phi i64 [ %indvars.iv.next719, %.lr.ph561 ], [ 0, %.lr.ph558 ] ; 3 uses
  %.0352560 = phi double [ %i.apm, %.lr.ph561 ], [ 0.000000e+00, %.lr.ph558 ]
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv718
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !56
  %i.apj = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv718
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !56
  %i.apl = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.api, ptr noundef %i.apk) #15
  %i.apm = fadd double %.0352560, %i.apl          ; 2 uses
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next719, %wide.trip.count721
  br i1 %exitcond722.not, label %.lr.ph567.preheader, label %.lr.ph561, !llvm.loop !136

.lr.ph567.preheader:                              ; preds = %.lr.ph561
  %i.apn = fmul double %i.apm, 2.000000e+00
  %i.apo = fadd double %i.apn, %i.aie
  br label %.lr.ph567

.lr.ph567:                                        ; preds = %.lr.ph567.preheader, %.lr.ph567
  %indvars.iv723 = phi i64 [ 0, %.lr.ph567.preheader ], [ %indvars.iv.next724, %.lr.ph567 ] ; 2 uses
  %.1353565 = phi double [ %i.apo, %.lr.ph567.preheader ], [ %i.apt, %.lr.ph567 ]
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv723 ; 2 uses
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !56
  call void @right_mult_with_vector_ff(ptr noundef %.1364, i32 noundef %1, ptr noundef %i.apq, ptr noundef %i.ahl) #15
  %i.apr = load ptr, ptr %i.app, align 8, !tbaa !56
  %i.aps = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.apr, ptr noundef %i.ahl) #15
  %i.apt = fsub double %.1353565, %i.aps          ; 2 uses
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge568, label %.lr.ph567, !llvm.loop !137

._crit_edge568:                                   ; preds = %.lr.ph567, %.preheader483
  %.1353.lcssa = phi double [ %i.aig, %.preheader483 ], [ %i.apt, %.lr.ph567 ] ; 4 uses
  %i.apu = fsub double %.0354576, %.1353.lcssa
  %i.apv = call double @llvm.fabs.f64(double %i.apu)
  %i.apw = fdiv double %i.apv, %.0354576
  %i.apx = load double, ptr @Epsilon, align 8, !tbaa !35 ; 2 uses
  %i.apy = fcmp olt double %i.apw, %i.apx
  %i.apz = fcmp olt double %.1353.lcssa, %i.apx
  br i1 %i.acb, label %.lr.ph574, label %._crit_edge575

.lr.ph574:                                        ; preds = %._crit_edge568
  br i1 %.0346, label %.lr.ph574.split.us, label %.lr.ph574.split

.lr.ph574.split.us:                               ; preds = %.lr.ph574, %bb.eh
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %bb.eh ], [ 0, %.lr.ph574 ] ; 3 uses
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv738
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !56
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv738
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !56
  %i.aqe = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.aqb, ptr noundef %i.aqd, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.aqf = icmp slt i32 %i.aqe, 0
  br i1 %i.aqf, label %.thread, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph574.split.us
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next739, %wide.trip.count741
  br i1 %exitcond742.not, label %._crit_edge575, label %.lr.ph574.split.us, !llvm.loop !138

.lr.ph574.split:                                  ; preds = %.lr.ph574, %.loopexit
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %.loopexit ], [ 0, %.lr.ph574 ] ; 3 uses
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv733 ; 4 uses
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !56
  call void @copy_vectorf(i32 noundef %1, ptr noundef %i.aqh, ptr noundef %i.ahl) #15
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %indvars.iv733
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !56
  %i.aqk = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.ahl, ptr noundef %i.aqj, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.aql = icmp slt i32 %i.aqk, 0
  br i1 %i.aql, label %.thread, label %.lr.ph571.preheader

.lr.ph571.preheader:                              ; preds = %.lr.ph574.split
  br i1 %.not.i437, label %.lr.ph571, label %.loopexit

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.ek
  %indvars.iv728 = phi i64 [ %indvars.iv.next729.1, %bb.ek ], [ 0, %.lr.ph571.preheader ] ; 5 uses
  %niter1072 = phi i64 [ %niter1072.next.1, %bb.ek ], [ 0, %.lr.ph571.preheader ]
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv728
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !14
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !19
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 163
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !34
  %i.aqs = icmp ugt i8 %i.aqr, 1
  br i1 %i.aqs, label %.lr.ph571.1, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph571
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv728
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !48
  %i.aqv = load ptr, ptr %i.aqg, align 8, !tbaa !56
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aqv, i64 %indvars.iv728
  store float %i.aqu, ptr %i.aqw, align 4, !tbaa !48
  br label %.lr.ph571.1

.lr.ph571.1:                                      ; preds = %.lr.ph571, %bb.ei
  %indvars.iv.next729 = or disjoint i64 %indvars.iv728, 1 ; 3 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next729
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !14
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !19
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 163
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !34
  %i.ard = icmp ugt i8 %i.arc, 1
  br i1 %i.ard, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph571.1
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv.next729
  %i.arf = load float, ptr %i.are, align 4, !tbaa !48
  %i.arg = load ptr, ptr %i.aqg, align 8, !tbaa !56
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %indvars.iv.next729
  store float %i.arf, ptr %i.arh, align 4, !tbaa !48
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph571.1
  %indvars.iv.next729.1 = add nuw nsw i64 %indvars.iv728, 2 ; 4 uses
  %niter1072.next.1 = add i64 %niter1072, 2       ; 2 uses
  %niter1072.ncmp.1 = icmp eq i64 %niter1072.next.1, %unroll_iter1071
  br i1 %niter1072.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph571, !llvm.loop !139

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ek
  br i1 %lcmp.mod1069.not, label %.loopexit, label %.lr.ph571.epil.preheader

.lr.ph571.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1070)
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next729.1
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !14
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !19
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 163
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !34
  %i.aro = icmp ugt i8 %i.arn, 1
  br i1 %i.aro, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %.lr.ph571.epil.preheader
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv.next729.1
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !48
  %i.arr = load ptr, ptr %i.aqg, align 8, !tbaa !56
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.next729.1
  store float %i.arq, ptr %i.ars, align 4, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.el, %.lr.ph571.epil.preheader, %.lr.ph571.preheader
  %indvars.iv.next734 = add nuw nsw i64 %indvars.iv733, 1 ; 2 uses
  %exitcond737.not = icmp eq i64 %indvars.iv.next734, %wide.trip.count736
  br i1 %exitcond737.not, label %._crit_edge575, label %.lr.ph574.split, !llvm.loop !138

._crit_edge575:                                   ; preds = %.loopexit, %bb.eh, %._crit_edge568
  %i.art = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not418 = icmp ne i8 %i.art, 0
  %i.aru = urem i32 %.0341577, 5
  %i.arv = icmp eq i32 %i.aru, 0
  %or.cond423 = and i1 %i.arv, %.not418
  br i1 %or.cond423, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %._crit_edge575
  %i.arw = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.arx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arw, ptr noundef nonnull @.str.11, double noundef %.1353.lcssa) #17 ; 0 uses
  %i.ary = add nuw nsw i32 %.0341577, 5
  %i.arz = urem i32 %i.ary, 50
  %i.asa = icmp eq i32 %i.arz, 0
  br i1 %i.asa, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.asb = load ptr, ptr @stderr, align 8, !tbaa !39
  %fputc = call i32 @fputc(i32 10, ptr %i.asb)    ; 0 uses
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge575, %bb.en, %bb.em
  %i.asc = add nuw nsw i32 %.0341577, 1           ; 5 uses
  %i.asd = icmp sge i32 %i.asc, %7
  %i.ase = select i1 %i.asd, i1 true, i1 %i.apy
  %.not416 = select i1 %i.ase, i1 true, i1 %i.apz
  br i1 %.not416, label %._crit_edge580, label %bb.ed, !llvm.loop !140

._crit_edge580:                                   ; preds = %bb.eo
  %i.asf = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not417 = icmp eq i8 %i.asf, 0
  br i1 %.not417, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge580
  %i.asg = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ash = call fastcc double @compute_stressf(ptr noundef %i.abp, ptr noundef %.1364, i32 noundef %4, i32 noundef %1, i32 noundef %i.e)
  %i.asi = call double @elapsed_sec() #15
  %i.asj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asg, ptr noundef nonnull @.str.13, double noundef %i.ash, i32 noundef %i.asc, double noundef %i.asi) #17 ; 0 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge580
  %or.cond586 = and i1 %i.acb, %.not.i437
  br i1 %or.cond586, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.eq
  %wide.trip.count751 = zext nneg i32 %4 to i64
  %wide.trip.count746 = zext nneg i32 %1 to i64
  %min.iters.check940 = icmp ult i32 %1, 4
  %n.vec942 = and i64 %wide.trip.count711, 4294967292 ; 3 uses
  %cmp.n949 = icmp eq i64 %n.vec942, %wide.trip.count711
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge584
  %indvars.iv748 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next749, %._crit_edge584 ] ; 3 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %indvars.iv748
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !56 ; 2 uses
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check940, label %scalar.ph939.preheader, label %vector.body943

vector.body943:                                   ; preds = %.preheader, %vector.body943
  %index944 = phi i64 [ %index.next947, %vector.body943 ], [ 0, %.preheader ] ; 3 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.asl, i64 %index944 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %wide.load945 = load <2 x float>, ptr %i.aso, align 4, !tbaa !48
  %wide.load946 = load <2 x float>, ptr %i.asp, align 4, !tbaa !48
  %i.asq = fpext <2 x float> %wide.load945 to <2 x double>
  %i.asr = fpext <2 x float> %wide.load946 to <2 x double>
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asn, i64 %index944 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  store <2 x double> %i.asq, ptr %i.ass, align 8, !tbaa !35
  store <2 x double> %i.asr, ptr %i.ast, align 8, !tbaa !35
  %index.next947 = add nuw i64 %index944, 4       ; 2 uses
  %i.asu = icmp eq i64 %index.next947, %n.vec942
  br i1 %i.asu, label %middle.block948, label %vector.body943, !llvm.loop !141

middle.block948:                                  ; preds = %vector.body943
  br i1 %cmp.n949, label %._crit_edge584, label %scalar.ph939.preheader

scalar.ph939.preheader:                           ; preds = %.preheader, %middle.block948
  %indvars.iv743.ph = phi i64 [ 0, %.preheader ], [ %n.vec942, %middle.block948 ]
  br label %scalar.ph939

scalar.ph939:                                     ; preds = %scalar.ph939.preheader, %scalar.ph939
  %indvars.iv743 = phi i64 [ %indvars.iv.next744, %scalar.ph939 ], [ %indvars.iv743.ph, %scalar.ph939.preheader ] ; 3 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.asl, i64 %indvars.iv743
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !48
  %i.asx = fpext float %i.asw to double
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asn, i64 %indvars.iv743
  store double %i.asx, ptr %i.asy, align 8, !tbaa !35
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  br i1 %exitcond747.not, label %._crit_edge584, label %scalar.ph939, !llvm.loop !142

._crit_edge584:                                   ; preds = %scalar.ph939, %middle.block948
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %.thread, label %.preheader, !llvm.loop !143

.thread:                                          ; preds = %.lr.ph574.split, %.lr.ph574.split.us, %._crit_edge584, %bb.eq, %sparse_stress_subspace_majorization_kD.exit
  %.0370 = phi ptr [ %i.abp, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.abp, %.lr.ph574.split.us ], [ %i.abp, %._crit_edge584 ], [ %i.abp, %.lr.ph574.split ]
  %.0369 = phi ptr [ %i.aca, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.aca, %.lr.ph574.split.us ], [ %i.aca, %._crit_edge584 ], [ %i.aca, %.lr.ph574.split ]
  %.0358 = phi ptr [ %.1364, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %.1364, %.lr.ph574.split.us ], [ %.1364, %._crit_edge584 ], [ %.1364, %.lr.ph574.split ]
  %.0357 = phi ptr [ %i.afk, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.afk, %.lr.ph574.split.us ], [ %i.afk, %._crit_edge584 ], [ %i.afk, %.lr.ph574.split ]
  %.0350 = phi ptr [ %i.agc, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.agc, %.lr.ph574.split.us ], [ %i.agc, %._crit_edge584 ], [ %i.agc, %.lr.ph574.split ] ; 3 uses
  %.0349 = phi ptr [ %i.ahl, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahl, %.lr.ph574.split.us ], [ %i.ahl, %._crit_edge584 ], [ %i.ahl, %.lr.ph574.split ]
  %.0348 = phi ptr [ %i.ahm, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahm, %.lr.ph574.split.us ], [ %i.ahm, %._crit_edge584 ], [ %i.ahm, %.lr.ph574.split ]
  %.0347 = phi ptr [ %i.ahw, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahw, %.lr.ph574.split.us ], [ %i.ahw, %._crit_edge584 ], [ %i.ahw, %.lr.ph574.split ]
  %.3 = phi i32 [ %i.asc, %bb.eq ], [ -1, %sparse_stress_subspace_majorization_kD.exit ], [ -1, %.lr.ph574.split.us ], [ %i.asc, %._crit_edge584 ], [ -1, %.lr.ph574.split ]
  call void @free(ptr noundef %.0369) #15
  call void @free(ptr noundef %.0370) #15
  call void @free(ptr noundef %.0358) #15
  %.not420 = icmp eq ptr %.0350, null
  br i1 %.not420, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.thread
  %i.asz = load ptr, ptr %.0350, align 8, !tbaa !56
  call void @free(ptr noundef %i.asz) #15
  call void @free(ptr noundef nonnull %.0350) #15
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.thread
  call void @free(ptr noundef %.0349) #15
  call void @free(ptr noundef %.0348) #15
  call void @free(ptr noundef %.0357) #15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cs, %bb.es
  %.0347.sink = phi ptr [ %.0347, %bb.es ], [ %.1364, %bb.cs ]
  %.0.ph = phi i32 [ %.3, %bb.es ], [ 0, %bb.cs ]
  call void @free(ptr noundef %.0347.sink) #15
  br label %bb.et

bb.et:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare void @start_timer() local_unnamed_addr #3

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @agerr(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare double @elapsed_sec() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare hidden void @square_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @invert_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare hidden void @sqrt_vecf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @set_vector_valf(i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare hidden void @invert_sqrt_vec(i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @right_mult_with_vector_ff(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden double @vectors_inner_productf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @copy_vectorf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden i32 @conjugate_gradient_mkernel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @compute_stressf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 2, 1) %3, i32 noundef range(i32 0, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = add i32 %3, -1                           ; 6 uses
  %i.b = icmp sgt i32 %3, 1
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  %i.d = icmp eq i32 %4, 2
  br i1 %i.d, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %i.c, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.e = add nsw i32 %3, -2
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.f = zext nneg i32 %3 to i64
  %wide.trip.count167 = zext nneg i32 %i.a to i64
  %invariant.op180 = add nsw i64 %i.f, -1
end_hunk_3
