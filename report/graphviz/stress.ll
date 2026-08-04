begin_hunk_0_@stress_majorization_kD_mkernel:bb.a

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
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
  br i1 %.not406, label %bb.j, label %mdsModel.exit.thread468

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.2) #15
  %i.n = tail call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %mdsModel.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.o = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not405 = icmp eq i8 %i.o, 0
  br i1 %.not405, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %i.p) #19 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph48.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ae = mul i32 %1, %i.x
  %i.af = sub i32 %i.ae, %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.o

._crit_edge.i:                                    ; preds = %bb.q, %.lr.ph48.i
  %.1.lcssa.i = phi double [ %.03646.i, %.lr.ph48.i ], [ %.2.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond52.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !llvm.loop !59

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %.043.i = phi i64 [ 1, %.lr.ph.i ], [ %i.aw, %bb.q ] ; 3 uses
  %.142.i = phi double [ %.03646.i, %.lr.ph.i ], [ %.2.i, %bb.q ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.043.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp sgt i64 %indvars.iv.i, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = add i32 %i.af, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !51
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.043.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !51 ; 2 uses
  %i.as = fsub float %i.ao, %i.ar
  %i.at = tail call float @llvm.fabs.f32(float %i.as)
  %i.au = fpext float %i.at to double
  %i.av = fadd double %.142.i, %i.au
  store float %i.ar, ptr %i.an, align 4, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i = phi double [ %.142.i, %bb.o ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = add nuw i64 %.043.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.aa
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !60

._crit_edge49.i:                                  ; preds = %._crit_edge.i, %bb.n
  %.036.lcssa.i = phi double [ 0.000000e+00, %bb.n ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.ax = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %mdsModel.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge49.i
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, double noundef %.036.lcssa.i) #17 ; 0 uses
  br label %mdsModel.exit

mdsModel.exit:                                    ; preds = %bb.r, %._crit_edge49.i, %bb.g
  %.0342 = phi ptr [ %i.l, %bb.g ], [ %i.u, %bb.r ], [ %i.u, %._crit_edge49.i ] ; 2 uses
  %.not408 = icmp eq ptr %.0342, null
  br i1 %.not408, label %mdsModel.exit.thread, label %mdsModel.exit.thread468

mdsModel.exit.thread:                             ; preds = %bb.m, %bb.h, %bb.j, %mdsModel.exit
  %i.ba = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not409 = icmp eq i8 %i.ba, 0
  br i1 %.not409, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mdsModel.exit.thread
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr %i.bb) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %mdsModel.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !44
  %.not410 = icmp eq ptr %i.be, null
  br i1 %.not410, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread468

bb.v:                                             ; preds = %bb.t
  %i.bg = tail call ptr @compute_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread468

mdsModel.exit.thread468:                          ; preds = %bb.i, %bb.u, %bb.v, %mdsModel.exit
  %.1343 = phi ptr [ %.0342, %mdsModel.exit ], [ %i.bf, %bb.u ], [ %i.bg, %bb.v ], [ %i.m, %bb.i ] ; 18 uses
  %i.bh = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not411 = icmp eq i8 %i.bh, 0
  br i1 %.not411, label %bb.x, label %bb.w

bb.w:                                             ; preds = %mdsModel.exit.thread468
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.bj = tail call double @elapsed_sec() #15
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.6, double noundef %i.bj) #17 ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.bm = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %i.bl) #19 ; 0 uses
  tail call void @start_timer() #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %mdsModel.exit.thread468
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
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !42
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
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !42
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
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !8
  %indvars.iv.next.i425 = or disjoint i64 %indvars.iv.i424, 1 ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv.next.i425, %i.ce
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !8
  %indvars.iv.next.i425.1 = or disjoint i64 %indvars.iv.i424, 2 ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv.next.i425.1, %i.ce
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425.1
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !8
  %indvars.iv.next.i425.2 = or disjoint i64 %indvars.iv.i424, 3 ; 2 uses
  %i.cq = mul nuw nsw i64 %indvars.iv.next.i425.2, %i.ce
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i425.2
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !8
  %indvars.iv.next.i425.3 = add nuw nsw i64 %indvars.iv.i424, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ab, !llvm.loop !76

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %gv_calloc.exit554.i
  %indvars.iv.i424.epil.init = phi i64 [ 0, %gv_calloc.exit554.i ], [ %indvars.iv.next.i425.3, %.unr-lcssa ]
  %lcmp.mod971 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod971)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i424.epil = phi i64 [ %indvars.iv.i424.epil.init, %.epil.preheader ], [ %indvars.iv.next.i425.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.ct = mul nuw nsw i64 %indvars.iv.i424.epil, %i.ce
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i424.epil
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !8
  %indvars.iv.next.i425.epil = add nuw nsw i64 %indvars.iv.i424.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !77

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %i.cw = shl nuw nsw i32 %i.bq, 1
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cw, i32 50)
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %1, i32 %i.cx) ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !78
  call void @embed_graph(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 2) %i.bp) #15
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !78
  call void @center_coordinate(ptr noundef %i.cy, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i) #15
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !78
  call void @PCA_alloc(ptr noundef %i.cz, i32 noundef %..i, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.bs, i32 noundef %i.bq) #15
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80
  call void @free(ptr noundef %i.db) #15
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !78
  call void @free(ptr noundef %i.dc) #15
  %i.dd = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 4) #16 ; 6 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ad, label %gv_calloc.exit557.preheader.i

gv_calloc.exit557.preheader.i:                    ; preds = %.epilog-lcssa
  %i.df = shl nuw nsw i64 %i.ce, 2                ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dd, i8 -1, i64 %i.df, i1 false), !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !44
  br i1 %i.h, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.epilog-lcssa
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !42
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
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.15, i64 noundef %i.df) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit560.i:                              ; preds = %bb.af
  %i.dp = call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 40, i64 noundef 4) #16 ; 6 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ah, label %gv_calloc.exit561.i

bb.ah:                                            ; preds = %gv_calloc.exit560.i
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !42
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
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.dy = shl nuw nsw i64 %i.du, 2
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.15, i64 noundef %i.dy) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit564.i:                              ; preds = %gv_calloc.exit561.i
  %i.ea = call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 40, i64 noundef 8) #16 ; 48 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %gv_calloc.exit565.preheader.i

gv_calloc.exit565.preheader.i:                    ; preds = %gv_calloc.exit564.i
  store ptr %i.dv, ptr %i.ea, align 8, !tbaa !80
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ce
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !80
  %.idx.i = shl nuw nsw i64 %i.ce, 3              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !80
  %.idx848.i = mul nuw nsw i64 %i.ce, 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx848.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !80
  %.idx849.i = shl nuw nsw i64 %i.ce, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx849.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !80
  %.idx850.i = mul nuw nsw i64 %i.ce, 20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx850.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !80
  %.idx851.i = mul nuw nsw i64 %i.ce, 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx851.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %i.em, ptr %i.en, align 8, !tbaa !80
  %.idx852.i = mul nuw nsw i64 %i.ce, 28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx852.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !80
  %.idx853.i = shl nuw nsw i64 %i.ce, 5           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx853.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !80
  %.idx854.i = mul nuw nsw i64 %i.ce, 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx854.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  store ptr %i.es, ptr %i.et, align 8, !tbaa !80
  %.idx855.i = mul nuw nsw i64 %i.ce, 40          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx855.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !80
  %.idx856.i = mul nuw nsw i64 %i.ce, 44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx856.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !80
  %.idx857.i = mul nuw nsw i64 %i.ce, 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx857.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !80
  %.idx858.i = mul nuw nsw i64 %i.ce, 52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx858.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !80
  %.idx859.i = mul nuw nsw i64 %i.ce, 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx859.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !80
  %.idx860.i = mul nuw nsw i64 %i.ce, 60
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx860.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !80
  %.idx861.i = shl nuw nsw i64 %i.ce, 6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx861.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !80
  %.idx862.i = mul nuw nsw i64 %i.ce, 68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx862.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !80
  %.idx863.i = mul nuw nsw i64 %i.ce, 72
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx863.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !80
  %.idx864.i = mul nuw nsw i64 %i.ce, 76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx864.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !80
  %.idx865.i = mul nuw nsw i64 %i.ce, 80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx865.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !80
  %.idx866.i = mul nuw nsw i64 %i.ce, 84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx866.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !80
  %.idx867.i = mul nuw nsw i64 %i.ce, 88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx867.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !80
  %.idx868.i = mul nuw nsw i64 %i.ce, 92
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx868.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !80
  %.idx869.i = mul nuw nsw i64 %i.ce, 96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx869.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !80
  %.idx870.i = mul nuw nsw i64 %i.ce, 100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx870.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !80
  %.idx871.i = mul nuw nsw i64 %i.ce, 104
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx871.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !80
  %.idx872.i = mul nuw nsw i64 %i.ce, 108
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx872.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 216
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !80
  %.idx873.i = mul nuw nsw i64 %i.ce, 112
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx873.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 224
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !80
  %.idx874.i = mul nuw nsw i64 %i.ce, 116
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx874.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 232
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !80
  %.idx875.i = mul nuw nsw i64 %i.ce, 120
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx875.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !80
  %.idx876.i = mul nuw nsw i64 %i.ce, 124
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx876.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 248
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !80
  %.idx877.i = shl nuw nsw i64 %i.ce, 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx877.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !80
  %.idx878.i = mul nuw nsw i64 %i.ce, 132
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx878.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ea, i64 264
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !80
  %.idx879.i = mul nuw nsw i64 %i.ce, 136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx879.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !80
  %.idx880.i = mul nuw nsw i64 %i.ce, 140
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx880.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !80
  %.idx881.i = mul nuw nsw i64 %i.ce, 144
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx881.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 288
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !80
  %.idx882.i = mul nuw nsw i64 %i.ce, 148
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx882.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 296
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !80
  %.idx883.i = mul nuw nsw i64 %i.ce, 152
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx883.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ea, i64 304
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !80
  %.idx884.i = mul nuw nsw i64 %i.ce, 156
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx884.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ea, i64 312
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !80
  %i.hc = call i32 @rand() #15
  %i.hd = srem i32 %i.hc, %1                      ; 6 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.he
  store i32 0, ptr %i.hf, align 4, !tbaa !50
  store i32 %i.hd, ptr %i.dp, align 4, !tbaa !50
  br i1 %i.h, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %gv_calloc.exit564.i
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !42
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, ptr noundef nonnull align 4 dereferenceable(1) %i.dv, i64 %i.df, i1 false), !tbaa !50
  %xtraiter973 = and i64 %i.ce, 3                 ; 3 uses
  %8 = add nsw i32 %1, -1
  %i.hi = icmp ult i32 %8, 3
  br i1 %i.hi, label %.epil.preheader972, label %.new

.new:                                             ; preds = %bb.am
  %unroll_iter978 = and i64 %i.ce, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.new
  %indvars.iv724.i = phi i64 [ 0, %.new ], [ %indvars.iv.next725.i.3, %bb.an ] ; 6 uses
  %.0504657.i = phi i32 [ %i.hd, %.new ], [ %spec.select550.i.3, %bb.an ]
  %.0511656.i = phi i32 [ 0, %.new ], [ %spec.select.i.3, %bb.an ] ; 2 uses
  %niter979 = phi i64 [ 0, %.new ], [ %niter979.next.3, %bb.an ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !50 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, %.0511656.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.hk, i32 %.0511656.i) ; 2 uses
  %i.hm = trunc nuw nsw i64 %indvars.iv724.i to i32
  %spec.select550.i = select i1 %i.hl, i32 %i.hm, i32 %.0504657.i
  %indvars.iv.next725.i = or disjoint i64 %indvars.iv724.i, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !50 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, %spec.select.i
  %spec.select.i.1 = call i32 @llvm.smax.i32(i32 %i.ho, i32 %spec.select.i) ; 2 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv.next725.i to i32
  %spec.select550.i.1 = select i1 %i.hp, i32 %i.hq, i32 %spec.select550.i
  %indvars.iv.next725.i.1 = or disjoint i64 %indvars.iv724.i, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !50 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %spec.select.i.1
  %spec.select.i.2 = call i32 @llvm.smax.i32(i32 %i.hs, i32 %spec.select.i.1) ; 2 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv.next725.i.1 to i32
  %spec.select550.i.2 = select i1 %i.ht, i32 %i.hu, i32 %spec.select550.i.1
  %indvars.iv.next725.i.2 = or disjoint i64 %indvars.iv724.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next725.i.2
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !50 ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %spec.select.i.2
  %spec.select.i.3 = call i32 @llvm.smax.i32(i32 %i.hw, i32 %spec.select.i.2) ; 2 uses
  %i.hy = trunc nuw nsw i64 %indvars.iv.next725.i.2 to i32
  %spec.select550.i.3 = select i1 %i.hx, i32 %i.hy, i32 %spec.select550.i.2 ; 3 uses
  %indvars.iv.next725.i.3 = add nuw nsw i64 %indvars.iv724.i, 4 ; 2 uses
  %niter979.next.3 = add i64 %niter979, 4         ; 2 uses
  %niter979.ncmp.3 = icmp eq i64 %niter979.next.3, %unroll_iter978
  br i1 %niter979.ncmp.3, label %.preheader646.i.preheader.unr-lcssa, label %bb.an, !llvm.loop !81

.preheader646.i.preheader.unr-lcssa:              ; preds = %bb.an
  %lcmp.mod975.not = icmp eq i64 %xtraiter973, 0
  br i1 %lcmp.mod975.not, label %.preheader646.i.preheader, label %.epil.preheader972

.epil.preheader972:                               ; preds = %.preheader646.i.preheader.unr-lcssa, %bb.am
  %indvars.iv724.i.epil.init = phi i64 [ 0, %bb.am ], [ %indvars.iv.next725.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0504657.i.epil.init = phi i32 [ %i.hd, %bb.am ], [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0511656.i.epil.init = phi i32 [ 0, %bb.am ], [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %lcmp.mod977 = icmp ne i64 %xtraiter973, 0
  call void @llvm.assume(i1 %lcmp.mod977)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader972
  %indvars.iv724.i.epil = phi i64 [ %indvars.iv724.i.epil.init, %.epil.preheader972 ], [ %indvars.iv.next725.i.epil, %bb.ao ] ; 3 uses
  %.0504657.i.epil = phi i32 [ %.0504657.i.epil.init, %.epil.preheader972 ], [ %spec.select550.i.epil, %bb.ao ]
  %.0511656.i.epil = phi i32 [ %.0511656.i.epil.init, %.epil.preheader972 ], [ %spec.select.i.epil, %bb.ao ] ; 2 uses
  %epil.iter974 = phi i64 [ 0, %.epil.preheader972 ], [ %epil.iter974.next, %bb.ao ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv724.i.epil
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !50 ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, %.0511656.i.epil
  %spec.select.i.epil = call i32 @llvm.smax.i32(i32 %i.ia, i32 %.0511656.i.epil)
  %i.ic = trunc nuw nsw i64 %indvars.iv724.i.epil to i32
  %spec.select550.i.epil = select i1 %i.ib, i32 %i.ic, i32 %.0504657.i.epil ; 2 uses
  %indvars.iv.next725.i.epil = add nuw nsw i64 %indvars.iv724.i.epil, 1
  %epil.iter974.next = add i64 %epil.iter974, 1   ; 2 uses
  %epil.iter974.cmp.not = icmp eq i64 %epil.iter974.next, %xtraiter973
  br i1 %epil.iter974.cmp.not, label %.preheader646.i.preheader, label %bb.ao, !llvm.loop !82

.preheader646.i.preheader:                        ; preds = %bb.ao, %.preheader646.i.preheader.unr-lcssa
  %spec.select550.i.lcssa = phi i32 [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ], [ %spec.select550.i.epil, %bb.ao ]
  br label %.preheader646.i

.preheader646.i:                                  ; preds = %.preheader646.i.preheader, %bb.ar
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %bb.ar ], [ 1, %.preheader646.i.preheader ] ; 4 uses
  %.2506662.i = phi i32 [ %.4508.i, %bb.ar ], [ %spec.select550.i.lcssa, %.preheader646.i.preheader ] ; 5 uses
  %i.id = sext i32 %.2506662.i to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.id
  %i.if = trunc nuw nsw i64 %indvars.iv734.i to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !50
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv734.i
  store i32 %.2506662.i, ptr %i.ig, align 4, !tbaa !50
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv734.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !80 ; 3 uses
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader646.i
  call void @ngdijkstra(i32 noundef %.2506662.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ii) #15
  br label %.preheader970

.preheader970:                                    ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.aq:                                            ; preds = %.preheader646.i
  call void @bfs(i32 noundef %.2506662.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ii) #15
  br label %.preheader970

bb.ar:                                            ; preds = %bb.av
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next735.i, 40
  br i1 %exitcond737.not.i, label %.preheader645.preheader.i, label %.preheader646.i, !llvm.loop !83

.preheader645.preheader.i:                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, i8 -1, i64 %i.df, i1 false), !tbaa !50
  %i.ij = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 32) #16 ; 9 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.aw, label %gv_calloc.exit571.preheader.i

bb.as:                                            ; preds = %.preheader970, %bb.av
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i, %bb.av ], [ 0, %.preheader970 ] ; 5 uses
  %.3507660.i = phi i32 [ %.4508.i, %bb.av ], [ %.2506662.i, %.preheader970 ] ; 2 uses
  %.2513659.i = phi i32 [ %.3514.i, %bb.av ], [ 0, %.preheader970 ] ; 4 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv729.i ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !50
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv729.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !50
  %.551.i = call i32 @llvm.smin.i32(i32 %i.im, i32 %i.io) ; 5 uses
  store i32 %.551.i, ptr %i.il, align 4, !tbaa !50
  %i.ip = icmp sgt i32 %.551.i, %.2513659.i
  br i1 %i.ip, label %._crit_edge752, label %bb.at

._crit_edge752:                                   ; preds = %bb.as
  %.pre753 = trunc nuw nsw i64 %indvars.iv729.i to i32
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.iq = icmp eq i32 %.551.i, %.2513659.i
  br i1 %i.iq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ir = call i32 @rand() #15
  %i.is = trunc i64 %indvars.iv729.i to i32       ; 2 uses
  %i.it = add i32 %i.is, 1
  %i.iu = srem i32 %i.ir, %i.it
  %i.iv = icmp eq i32 %i.iu, 0                    ; 2 uses
  %spec.select = select i1 %i.iv, i32 %.551.i, i32 %.2513659.i
  %spec.select822 = select i1 %i.iv, i32 %i.is, i32 %.3507660.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge752, %bb.at
  %.3514.i = phi i32 [ %.2513659.i, %bb.at ], [ %spec.select, %bb.au ], [ %.551.i, %._crit_edge752 ]
  %.4508.i = phi i32 [ %.3507660.i, %bb.at ], [ %spec.select822, %bb.au ], [ %.pre753, %._crit_edge752 ] ; 2 uses
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond733.not.i = icmp eq i64 %indvars.iv.next730.i, %i.ce
  br i1 %exitcond733.not.i, label %bb.ar, label %bb.as, !llvm.loop !84

gv_calloc.exit571.preheader.i:                    ; preds = %.preheader645.preheader.i
  %i.iw = add nsw i32 %1, -1
  %i.ix = zext i32 %i.iw to i64                   ; 8 uses
  %i.iy = add nsw i64 %i.ce, -1                   ; 6 uses
  %i.iz = add nsw i64 %i.ix, -1
  br label %bb.ax

bb.aw:                                            ; preds = %.preheader645.preheader.i
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.15, i64 noundef %.idx853.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ax:                                            ; preds = %gv_calloc.exit571.i, %gv_calloc.exit571.preheader.i
  %indvar = phi i64 [ %indvar.next, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 2 uses
  %indvars.iv755.i = phi i64 [ %indvars.iv.next756.pre-phi.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 18 uses
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i, %gv_calloc.exit571.i ], [ 1, %gv_calloc.exit571.preheader.i ] ; 7 uses
  %.0488676.i = phi i64 [ %.1.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ]
  %.0515673.i = phi i32 [ %.2517.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 6 uses
  %.0525672.i = phi ptr [ %.2527.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0528671.i = phi ptr [ %.2530.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %i.jc = sub i64 %i.ix, %indvar                  ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv755.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !50 ; 3 uses
  %i.jf = icmp sgt i32 %i.je, -1
  br i1 %i.jf, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jg = call noalias ptr @calloc(i64 noundef %i.ix, i64 noundef 4) #16 ; 13 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64              ; 4 uses
  %i.ji = icmp eq ptr %i.jg, null
  br i1 %i.ji, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jk = shl nuw nsw i64 %i.ix, 2
  %i.jl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.15, i64 noundef %i.jk) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv755.i ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jg, ptr %i.jn, align 8, !tbaa !85
  %i.jo = call noalias ptr @calloc(i64 noundef %i.ix, i64 noundef 4) #16 ; 13 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64              ; 4 uses
  %i.jq = icmp eq ptr %i.jo, null
  br i1 %i.jq, label %bb.bb, label %gv_calloc.exit579.i

bb.bb:                                            ; preds = %bb.ba
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.js = shl nuw nsw i64 %i.ix, 2
  %i.jt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.15, i64 noundef %i.js) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit579.i:                              ; preds = %bb.ba
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store ptr %i.jo, ptr %i.ju, align 8, !tbaa !87
  store i64 %i.iy, ptr %i.jm, align 8, !tbaa !88
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i8 1, ptr %i.jv, align 8, !tbaa !89
  %.not711.i = icmp eq i64 %indvars.iv755.i, 0
  br i1 %.not711.i, label %.preheader643.i, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %gv_calloc.exit579.i
  %i.jw = zext nneg i32 %i.je to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !80 ; 7 uses
  %min.iters.check848 = icmp ult i64 %indvars.iv755.i, 12
  br i1 %min.iters.check848, label %scalar.ph847.preheader, label %vector.memcheck841

vector.memcheck841:                               ; preds = %.lr.ph.i429
  %i.jz = ptrtoaddr ptr %i.jy to i64              ; 2 uses
  %i.ka = sub i64 %i.jh, %i.jp
  %diff.check842 = icmp ugt i64 %i.ka, -32
  %i.kb = sub i64 %i.jh, %i.jz
  %diff.check843 = icmp ugt i64 %i.kb, -32
  %conflict.rdx844 = or i1 %diff.check842, %diff.check843
  %i.kc = sub i64 %i.jz, %i.jp
  %diff.check845 = icmp ugt i64 %i.kc, -32
  %conflict.rdx846 = or i1 %conflict.rdx844, %diff.check845
  br i1 %conflict.rdx846, label %scalar.ph847.preheader, label %vector.ph849

vector.ph849:                                     ; preds = %vector.memcheck841
  %n.vec851 = and i64 %indvars.iv755.i, -8        ; 3 uses
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph849
  %index853 = phi i64 [ 0, %vector.ph849 ], [ %index.next858, %vector.body852 ] ; 4 uses
  %vec.ind854 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph849 ], [ %vec.ind.next859, %vector.body852 ] ; 3 uses
  %step.add855 = add <4 x i32> %vec.ind854, splat (i32 4)
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index853 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <4 x i32> %vec.ind854, ptr %i.kd, align 4, !tbaa !50
  store <4 x i32> %step.add855, ptr %i.ke, align 4, !tbaa !50
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %index853 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load856 = load <4 x i32>, ptr %i.kf, align 4, !tbaa !50
  %wide.load857 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !50
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %index853 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <4 x i32> %wide.load856, ptr %i.kh, align 4, !tbaa !50
  store <4 x i32> %wide.load857, ptr %i.ki, align 4, !tbaa !50
  %index.next858 = add nuw i64 %index853, 8       ; 2 uses
  %vec.ind.next859 = add <4 x i32> %vec.ind854, splat (i32 8)
  %i.kj = icmp eq i64 %index.next858, %n.vec851
  br i1 %i.kj, label %middle.block860, label %vector.body852, !llvm.loop !90

middle.block860:                                  ; preds = %vector.body852
  %cmp.n861 = icmp eq i64 %indvars.iv755.i, %n.vec851
  br i1 %cmp.n861, label %.preheader643.i, label %scalar.ph847.preheader

scalar.ph847.preheader:                           ; preds = %vector.memcheck841, %.lr.ph.i429, %middle.block860
  %indvars.iv745.i.ph = phi i64 [ 0, %vector.memcheck841 ], [ 0, %.lr.ph.i429 ], [ %n.vec851, %middle.block860 ] ; 3 uses
  %xtraiter980 = and i64 %indvars.iv755.i, 3      ; 2 uses
  %lcmp.mod981.not = icmp eq i64 %xtraiter980, 0
  br i1 %lcmp.mod981.not, label %scalar.ph847.prol.loopexit, label %scalar.ph847.prol

scalar.ph847.prol:                                ; preds = %scalar.ph847.preheader, %scalar.ph847.prol
  %indvars.iv745.i.prol = phi i64 [ %indvars.iv.next746.i.prol, %scalar.ph847.prol ], [ %indvars.iv745.i.ph, %scalar.ph847.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph847.prol ], [ 0, %scalar.ph847.preheader ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv745.i.prol
  %i.kl = trunc nuw nsw i64 %indvars.iv745.i.prol to i32
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !50
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv745.i.prol
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !50
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv745.i.prol
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !50
  %indvars.iv.next746.i.prol = add nuw nsw i64 %indvars.iv745.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter980
  br i1 %prol.iter.cmp.not, label %scalar.ph847.prol.loopexit, label %scalar.ph847.prol, !llvm.loop !91

scalar.ph847.prol.loopexit:                       ; preds = %scalar.ph847.prol, %scalar.ph847.preheader
  %indvars.iv745.i.unr = phi i64 [ %indvars.iv745.i.ph, %scalar.ph847.preheader ], [ %indvars.iv.next746.i.prol, %scalar.ph847.prol ]
  %i.kp = sub i64 %indvars.iv745.i.ph, %indvars.iv755.i
  %i.kq = icmp ugt i64 %i.kp, -4
  br i1 %i.kq, label %.preheader643.i, label %scalar.ph847

.preheader643.i:                                  ; preds = %scalar.ph847.prol.loopexit, %scalar.ph847, %middle.block860, %gv_calloc.exit579.i
  %i.kr = add nuw nsw i64 %indvars.iv755.i, 1     ; 5 uses
  %i.ks = icmp samesign ult i64 %i.kr, %i.ce
  br i1 %i.ks, label %.lr.ph670.i, label %gv_calloc.exit571.i

.lr.ph670.i:                                      ; preds = %.preheader643.i
  %i.kt = zext nneg i32 %i.je to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !80 ; 5 uses
  %min.iters.check = icmp ult i64 %i.jc, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph670.i
  %i.kw = ptrtoaddr ptr %i.kv to i64              ; 2 uses
  %i.kx = sub i64 %i.jh, %i.jp
  %diff.check = icmp ugt i64 %i.kx, -32
  %i.ky = sub i64 %i.kw, %i.jh
  %i.kz = add i64 %i.ky, 3
  %diff.check836 = icmp ult i64 %i.kz, 31
  %conflict.rdx = or i1 %diff.check, %diff.check836
  %i.la = sub i64 %i.jp, %i.kw
  %i.lb = add i64 %i.la, -5
  %diff.check837 = icmp ult i64 %i.lb, 31
  %conflict.rdx838 = or i1 %conflict.rdx, %diff.check837
  br i1 %conflict.rdx838, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jc, -8                      ; 4 uses
  %i.lc = add i64 %indvars.iv755.i, %n.vec
  %i.ld = add i64 %indvars.iv751.i, %n.vec
  %i.le = trunc i64 %indvars.iv751.i to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.le, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv751.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.lg = add nuw i64 %indvars.iv755.i, %index    ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x i32> %vec.ind, ptr %i.lh, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.li, align 4, !tbaa !50
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load = load <4 x i32>, ptr %i.lj, align 4, !tbaa !50
  %wide.load839 = load <4 x i32>, ptr %i.lk, align 4, !tbaa !50
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lg ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <4 x i32> %wide.load, ptr %i.ll, align 4, !tbaa !50
  store <4 x i32> %wide.load839, ptr %i.lm, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jc, %n.vec
  br i1 %cmp.n, label %gv_calloc.exit571.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph670.i, %middle.block
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  br label %.preheader632.i

.preheader632.i:                                  ; preds = %bb.ci, %gv_calloc.exit624.i
  %.0490709.i = phi i32 [ 0, %gv_calloc.exit624.i ], [ %i.yu, %bb.ci ] ; 3 uses
  %.0502707.i = phi double [ %i.wo, %gv_calloc.exit624.i ], [ %.1503.i, %bb.ci ] ; 2 uses
  br i1 %.not.i605.not.i, label %._crit_edge706.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader632.i, %bb.cg
  %indvars.iv806.i = phi i64 [ %indvars.iv.next807.i, %bb.cg ], [ 0, %.preheader632.i ] ; 3 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv806.i ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge702.i, %.preheader.i
  %indvars.iv801.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next802.i, %._crit_edge702.i ] ; 6 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %indvars.iv801.i ; 5 uses
  store double 0.000000e+00, ptr %i.wq, align 8, !tbaa !34
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv801.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !87
  %i.wu = getelementptr inbounds i8, ptr %i.wt, i64 -4
  %i.wv = getelementptr inbounds nuw [40 x i8], ptr %i.og, i64 %indvars.iv801.i ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !49
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !44
  %i.xa = load i64, ptr %i.wv, align 8, !tbaa !48
  %i.xb = icmp ugt i64 %i.xa, 1
  br i1 %i.xb, label %.lr.ph701.preheader.i, label %._crit_edge702.i

.lr.ph701.preheader.i:                            ; preds = %bb.cc
  %i.xc = trunc nuw nsw i64 %indvars.iv801.i to i32
  br label %.lr.ph701.i

._crit_edge702.loopexit.i:                        ; preds = %bb.ce
  %.pre.i = load double, ptr %i.wq, align 8, !tbaa !34
  br label %._crit_edge702.i

._crit_edge702.i:                                 ; preds = %._crit_edge702.loopexit.i, %bb.cc
  %i.xd = phi double [ 0.000000e+00, %bb.cc ], [ %.pre.i, %._crit_edge702.loopexit.i ]
  %.3521.lcssa.i = phi double [ 0.000000e+00, %bb.cc ], [ %.4522.i, %._crit_edge702.loopexit.i ]
  %i.xe = load ptr, ptr %i.wp, align 8, !tbaa !8
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv801.i
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !34
  %i.xh = call double @llvm.fmuladd.f64(double %.3521.lcssa.i, double %i.xg, double %i.xd)
  store double %i.xh, ptr %i.wq, align 8, !tbaa !34
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond805.not.i = icmp eq i64 %indvars.iv.next802.i, %i.ce
  br i1 %exitcond805.not.i, label %bb.cf, label %bb.cc, !llvm.loop !110

.lr.ph701.i:                                      ; preds = %bb.ce, %.lr.ph701.preheader.i
  %.0699.i = phi i64 [ %i.yc, %bb.ce ], [ 1, %.lr.ph701.preheader.i ] ; 4 uses
  %.3521698.i = phi double [ %.4522.i, %bb.ce ], [ 0.000000e+00, %.lr.ph701.preheader.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0699.i
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !50 ; 2 uses
  %i.xk = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %i.xc, i32 noundef %i.xj) #15 ; 2 uses
  %i.xl = fcmp ogt double %i.xk, 1.000000e-30
  br i1 %i.xl, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph701.i
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.0699.i
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !51
  %i.xo = fneg float %i.xn
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.0699.i
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !50
  %i.xr = sitofp i32 %i.xq to float
  %i.xs = fmul float %i.xo, %i.xr
  %i.xt = fpext float %i.xs to double
  %i.xu = fdiv double %i.xt, %i.xk                ; 2 uses
  %i.xv = fsub double %.3521698.i, %i.xu
  %i.xw = load ptr, ptr %i.wp, align 8, !tbaa !8
  %i.xx = sext i32 %i.xj to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !34
  %i.ya = load double, ptr %i.wq, align 8, !tbaa !34
  %i.yb = call double @llvm.fmuladd.f64(double %i.xu, double %i.xz, double %i.ya)
  store double %i.yb, ptr %i.wq, align 8, !tbaa !34
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph701.i
  %.4522.i = phi double [ %i.xv, %bb.cd ], [ %.3521698.i, %.lr.ph701.i ] ; 2 uses
  %i.yc = add nuw i64 %.0699.i, 1                 ; 2 uses
  %i.yd = load i64, ptr %i.wv, align 8, !tbaa !48
  %i.ye = icmp ult i64 %i.yc, %i.yd
  br i1 %i.ye, label %.lr.ph701.i, label %._crit_edge702.loopexit.i, !llvm.loop !111

bb.cf:                                            ; preds = %._crit_edge702.i
  call void @right_mult_with_vector_d(ptr noundef nonnull %i.bs, i32 noundef %i.bq, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.wf, ptr noundef nonnull %i.wj) #15
  %i.yf = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv806.i ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !8
  %i.yi = call i32 @conjugate_gradient_f(ptr noundef %i.yf, ptr noundef %i.yh, ptr noundef nonnull %i.wj, i32 noundef %i.bq, double noundef 1.000000e-03, i32 noundef %i.bq, i1 noundef zeroext false) #15
  %.not548.i = icmp eq i32 %i.yi, 0
  br i1 %.not548.i, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.yj = load ptr, ptr %i.yg, align 8, !tbaa !8
  %i.yk = load ptr, ptr %i.wp, align 8, !tbaa !8
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bs, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bq, ptr noundef %i.yj, ptr noundef %i.yk) #15
  %indvars.iv.next807.i = add nuw nsw i64 %indvars.iv806.i, 1 ; 2 uses
  %exitcond810.not.i = icmp eq i64 %indvars.iv.next807.i, %wide.trip.count809.i
  br i1 %exitcond810.not.i, label %._crit_edge706.i, label %.preheader.i, !llvm.loop !112

._crit_edge706.i:                                 ; preds = %bb.cg, %.preheader632.i
  %i.yl = and i32 %.0490709.i, 1
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge706.i
  %i.yn = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.ij, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e) ; 3 uses
  %i.yo = fsub double %i.yn, %.0502707.i
  %i.yp = call double @llvm.fabs.f64(double %i.yo)
  %i.yq = fadd double %i.yn, 1.000000e-10
  %i.yr = fdiv double %i.yp, %i.yq
  %i.ys = load double, ptr @Epsilon, align 8, !tbaa !34
  %i.yt = fcmp olt double %i.yr, %i.ys
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge706.i
  %.1503.i = phi double [ %i.yn, %bb.ch ], [ %.0502707.i, %._crit_edge706.i ]
  %.1495.i = phi i1 [ %i.yt, %bb.ch ], [ false, %._crit_edge706.i ]
  %i.yu = add nuw nsw i32 %.0490709.i, 1
  %i.yv = icmp samesign ugt i32 %.0490709.i, 48
  %.not547.i = select i1 %i.yv, i1 true, i1 %.1495.i
  br i1 %.not547.i, label %.loopexit.i, label %.preheader632.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %bb.ci, %bb.cf
  %.1491.i = phi i1 [ true, %bb.cf ], [ false, %bb.ci ]
  call void @free(ptr noundef %i.wj) #15
  call void @free(ptr noundef %i.wf) #15
  br i1 %i.h, label %bb.cj, label %.preheader965

bb.cj:                                            ; preds = %.loopexit.i
  call void @restore_old_weights(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.dh) #15
  br label %.preheader965

.preheader965:                                    ; preds = %bb.cj, %.loopexit.i
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader965, %bb.cm
  %indvars.iv811.i = phi i64 [ %indvars.iv.next812.i, %bb.cm ], [ 0, %.preheader965 ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %indvars.iv811.i ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load i8, ptr %i.yx, align 8, !tbaa !89, !range !114, !noundef !115
  %i.yz = trunc nuw i8 %i.yy to i1
  br i1 %i.yz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !85
  call void @free(ptr noundef %i.zb) #15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !87
  call void @free(ptr noundef %i.zd) #15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %indvars.iv.next812.i = add nuw nsw i64 %indvars.iv811.i, 1 ; 2 uses
  %exitcond815.not.i = icmp eq i64 %indvars.iv.next812.i, %i.ce
  br i1 %exitcond815.not.i, label %bb.cn, label %bb.ck, !llvm.loop !116

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.ij) #15
  %i.ze = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !49
  call void @free(ptr noundef %i.zf) #15
  %i.zg = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !44
  call void @free(ptr noundef %i.zh) #15
  call void @free(ptr noundef %i.og) #15
  call void @free(ptr noundef %i.dd) #15
  call void @free(ptr noundef %i.dp) #15
  %i.zi = load ptr, ptr %i.wa, align 8, !tbaa !8
  call void @free(ptr noundef %i.zi) #15
  call void @free(ptr noundef %i.wa) #15
  %i.zj = load ptr, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %.not549.i = icmp eq ptr %i.zj, null
  br i1 %.not549.i, label %sparse_stress_subspace_majorization_kD.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !109
  call void @free(ptr noundef %i.zk) #15
  %i.zl = load ptr, ptr %i.c, align 8, !tbaa !107
  call void @free(ptr noundef %i.zl) #15
  br label %sparse_stress_subspace_majorization_kD.exit

sparse_stress_subspace_majorization_kD.exit:      ; preds = %bb.cn, %bb.co
  %i.zm = load ptr, ptr %i.bs, align 8, !tbaa !8
  call void @free(ptr noundef %i.zm) #15
  call void @free(ptr noundef %i.bs) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.1491.i, label %.thread, label %.preheader489

.preheader489:                                    ; preds = %sparse_stress_subspace_majorization_kD.exit
  %i.zn = icmp sgt i32 %4, 0
  br i1 %i.zn, label %.lr.ph.preheader, label %.loopexit490

.lr.ph.preheader:                                 ; preds = %.preheader489
  %xtraiter1020 = and i64 %i.ce, 1
  %i.zo = icmp eq i64 %i.iy, 0
  %unroll_iter1025 = and i64 %i.ce, 2147483646
  %lcmp.mod1022.not = icmp eq i64 %xtraiter1020, 0
  %lcmp.mod1024 = trunc i32 %1 to i1
  %min.iters.check864 = icmp ult i32 %1, 2
  %n.vec867 = and i64 %i.ce, 2147483646           ; 3 uses
  %cmp.n875 = icmp eq i64 %n.vec867, %i.ce
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv616 = phi i64 [ %indvars.iv.next617, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv616
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !8  ; 3 uses
  br i1 %i.zo, label %.epil.preheader1019, label %.lr.ph.new

.lr.ph498.unr-lcssa:                              ; preds = %.lr.ph.new
  br i1 %lcmp.mod1022.not, label %.lr.ph498, label %.epil.preheader1019

.epil.preheader1019:                              ; preds = %.lr.ph498.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph498.unr-lcssa ]
  %.0349496.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %.1350.1, %.lr.ph498.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1024)
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv.epil.init
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !34
  %i.zt = call double @llvm.fabs.f64(double %i.zs) ; 2 uses
  %i.zu = fcmp ogt double %i.zt, %.0349496.epil.init
  %.1350.epil = select i1 %i.zu, double %i.zt, double %.0349496.epil.init
  br label %.lr.ph498

.lr.ph498:                                        ; preds = %.lr.ph498.unr-lcssa, %.epil.preheader1019
  %.1350.lcssa = phi double [ %.1350.1, %.lr.ph498.unr-lcssa ], [ %.1350.epil, %.epil.preheader1019 ] ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv616
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !8  ; 2 uses
  br i1 %min.iters.check864, label %scalar.ph863.preheader, label %vector.ph865

vector.ph865:                                     ; preds = %.lr.ph498
  %broadcast.splatinsert868 = insertelement <2 x double> poison, double %.1350.lcssa, i64 0
  %broadcast.splat869 = shufflevector <2 x double> %broadcast.splatinsert868, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph865
  %index871 = phi i64 [ 0, %vector.ph865 ], [ %index.next873, %vector.body870 ] ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %index871 ; 2 uses
  %wide.load872 = load <2 x double>, ptr %i.zx, align 8, !tbaa !34
  %i.zy = fdiv <2 x double> %wide.load872, %broadcast.splat869
  store <2 x double> %i.zy, ptr %i.zx, align 8, !tbaa !34
  %index.next873 = add nuw i64 %index871, 2       ; 2 uses
  %i.zz = icmp eq i64 %index.next873, %n.vec867
  br i1 %i.zz, label %middle.block874, label %vector.body870, !llvm.loop !117

middle.block874:                                  ; preds = %vector.body870
  br i1 %cmp.n875, label %.lr.ph500, label %scalar.ph863.preheader

scalar.ph863.preheader:                           ; preds = %.lr.ph498, %middle.block874
  %indvars.iv606.ph = phi i64 [ 0, %.lr.ph498 ], [ %n.vec867, %middle.block874 ]
  br label %scalar.ph863

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.0349496 = phi double [ %.1350.1, %.lr.ph.new ], [ 1.000000e+00, %.lr.ph ] ; 2 uses
  %niter1026 = phi i64 [ %niter1026.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !34
  %i.aac = call double @llvm.fabs.f64(double %i.aab) ; 2 uses
  %i.aad = fcmp ogt double %i.aac, %.0349496
  %.1350 = select i1 %i.aad, double %i.aac, double %.0349496 ; 2 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !34
  %i.aah = call double @llvm.fabs.f64(double %i.aag) ; 2 uses
  %i.aai = fcmp ogt double %i.aah, %.1350
  %.1350.1 = select i1 %i.aai, double %i.aah, double %.1350 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1026.next.1 = add i64 %niter1026, 2       ; 2 uses
  %niter1026.ncmp.1 = icmp eq i64 %niter1026.next.1, %unroll_iter1025
  br i1 %niter1026.ncmp.1, label %.lr.ph498.unr-lcssa, label %.lr.ph.new, !llvm.loop !118

.lr.ph500:                                        ; preds = %scalar.ph863, %middle.block874
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv616
  br label %bb.cp

scalar.ph863:                                     ; preds = %scalar.ph863.preheader, %scalar.ph863
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %scalar.ph863 ], [ %indvars.iv606.ph, %scalar.ph863.preheader ] ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %indvars.iv606 ; 2 uses
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !34
  %i.aam = fdiv double %i.aal, %.1350.lcssa
  store double %i.aam, ptr %i.aak, align 8, !tbaa !34
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %exitcond610.not = icmp eq i64 %indvars.iv.next607, %i.ce
  br i1 %exitcond610.not, label %.lr.ph500, label %scalar.ph863, !llvm.loop !119

bb.cp:                                            ; preds = %.lr.ph500, %bb.cp
  %indvars.iv611 = phi i64 [ 0, %.lr.ph500 ], [ %indvars.iv.next612, %bb.cp ] ; 2 uses
  %i.aan = call double @drand48() #15
  %i.aao = fadd double %i.aan, -5.000000e-01
  %i.aap = load ptr, ptr %i.aaj, align 8, !tbaa !8 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %indvars.iv611 ; 2 uses
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !34
  %i.aas = call double @llvm.fmuladd.f64(double %i.aao, double f0x3EB0C6F7A0B5ED8D, double %i.aar)
  store double %i.aas, ptr %i.aaq, align 8, !tbaa !34
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %i.ce
  br i1 %exitcond615.not, label %._crit_edge, label %bb.cp, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aap) #15
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %exitcond620.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count809.i
  br i1 %exitcond620.not, label %.loopexit490, label %.lr.ph, !llvm.loop !121

bb.cq:                                            ; preds = %bb.x
  %i.aat = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aau = icmp eq i32 %i.aat, 0
  br label %.loopexit490

.loopexit490:                                     ; preds = %._crit_edge, %.preheader489, %bb.cq
  %.0352 = phi i1 [ %i.aau, %bb.cq ], [ true, %.preheader489 ], [ true, %._crit_edge ]
  %i.aav = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not412 = icmp eq i8 %i.aav, 0
  br i1 %.not412, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit490
  %i.aaw = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aax = call double @elapsed_sec() #15
  %i.aay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aaw, ptr noundef nonnull @.str.8, double noundef %i.aax) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit490
  %i.aaz = icmp eq i32 %1, 1
  %i.aba = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aaz, %i.aba
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abb = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not413 = icmp eq i8 %i.abb, 0
  br i1 %.not413, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abc = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abd = call double @elapsed_sec() #15
  %i.abe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abc, ptr noundef nonnull @.str.6, double noundef %i.abd) #17 ; 0 uses
  %i.abf = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abg = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.abf) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abh = sext i32 %4 to i64                     ; 6 uses
  %.not.i430 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i430, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abi = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abj = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abj, ptr noundef nonnull @.str.14, i64 noundef %i.abh, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abl = call noalias ptr @calloc(i64 noundef %i.abh, i64 noundef 8) #16 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abn = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abo = shl nuw nsw i64 %i.abh, 3
  %i.abp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abn, ptr noundef nonnull @.str.15, i64 noundef %i.abo) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abq = phi ptr [ %i.abi, %.thread.i ], [ %i.abl, %bb.cy ] ; 13 uses
  %i.abr = mul nsw i32 %4, %1                     ; 4 uses
  %i.abs = sext i32 %i.abr to i64                 ; 6 uses
  %.not.i431 = icmp eq i32 %i.abr, 0              ; 2 uses
  br i1 %.not.i431, label %.thread.i434, label %bb.da

.thread.i434:                                     ; preds = %gv_calloc.exit
  %i.abt = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit435

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i433 = icmp slt i32 %i.abr, 0
  br i1 %mul.ov.i433, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abu = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.abv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abu, ptr noundef nonnull @.str.14, i64 noundef %i.abs, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abw = call noalias ptr @calloc(i64 noundef %i.abs, i64 noundef 4) #16 ; 2 uses
end_hunk_1
