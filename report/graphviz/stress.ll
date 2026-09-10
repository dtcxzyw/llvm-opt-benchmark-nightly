Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite408 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 24, i64 1, ptr %i.j) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = tail call ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1)
  br label %mdsModel.exit

bb.h:                                             ; preds = %bb.d
  switch i32 %6, label %mdsModel.exit.thread [
    i32 1, label %bb.i
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.l = tail call ptr @circuitModel(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not406 = icmp eq ptr %i.l, null
  br i1 %.not406, label %bb.j, label %mdsModel.exit.thread475

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.2) #15
  %i.m = tail call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %mdsModel.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.n = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not405 = icmp eq i8 %i.n, 0
  br i1 %.not405, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %i.o) #19 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mdsModel.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph48.preheader.i, label %._crit_edge49.i

.lr.ph48.preheader.i:                             ; preds = %bb.n
  %i.u = zext nneg i32 %1 to i64
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i, %.lr.ph48.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %.03646.i = phi double [ 0.000000e+00, %.lr.ph48.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03745.i = phi i32 [ 0, %.lr.ph48.preheader.i ], [ %i.w, %._crit_edge.i ]
  %i.v = trunc i64 %indvars.iv.i to i32           ; 2 uses
  %i.w = add nuw nsw i32 %.03745.i, %i.v          ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !44   ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph48.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = mul i32 %1, %i.v
  %i.ad = sub i32 %i.ac, %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.o

._crit_edge.i:                                    ; preds = %bb.q, %.lr.ph48.i
  %.1.lcssa.i = phi double [ %.03646.i, %.lr.ph48.i ], [ %.2.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next.i, %i.u
  br i1 %exitcond52.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !llvm.loop !0

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %.043.i = phi i64 [ 1, %.lr.ph.i ], [ %i.au, %bb.q ] ; 3 uses
  %.142.i = phi double [ %.03646.i, %.lr.ph.i ], [ %.2.i, %bb.q ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.043.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !46 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp sgt i64 %indvars.iv.i, %i.ah
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = add i32 %i.ad, %i.ag
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !48
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.043.i
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !48 ; 2 uses
  %i.aq = fsub float %i.am, %i.ap
  %i.ar = tail call float @llvm.fabs.f32(float %i.aq)
  %i.as = fpext float %i.ar to double
  %i.at = fadd double %.142.i, %i.as
  store float %i.ap, ptr %i.al, align 4, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i = phi double [ %.142.i, %bb.o ], [ %i.at, %bb.p ] ; 2 uses
  %i.au = add nuw i64 %.043.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.y
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1

._crit_edge49.i:                                  ; preds = %._crit_edge.i, %bb.n
  %.036.lcssa.i = phi double [ 0.000000e+00, %bb.n ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.av = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %mdsModel.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge49.i
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str, double noundef %.036.lcssa.i) #17 ; 0 uses
  br label %mdsModel.exit

mdsModel.exit:                                    ; preds = %bb.r, %._crit_edge49.i, %bb.g
  %.0363 = phi ptr [ %i.k, %bb.g ], [ %i.s, %bb.r ], [ %i.s, %._crit_edge49.i ] ; 2 uses
  %.not409 = icmp eq ptr %.0363, null
  br i1 %.not409, label %mdsModel.exit.thread, label %mdsModel.exit.thread475

mdsModel.exit.thread:                             ; preds = %bb.m, %bb.h, %bb.j, %mdsModel.exit
  %i.ay = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not410 = icmp eq i8 %i.ay, 0
  br i1 %.not410, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mdsModel.exit.thread
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite411 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr %i.az) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %mdsModel.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %.not412 = icmp eq ptr %i.bb, null
  br i1 %.not412, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call fastcc ptr @compute_weighted_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread475

bb.v:                                             ; preds = %bb.t
  %i.bd = tail call ptr @compute_apsp_packed(ptr noundef nonnull %0, i32 noundef %1)
  br label %mdsModel.exit.thread475

mdsModel.exit.thread475:                          ; preds = %bb.i, %bb.u, %bb.v, %mdsModel.exit
  %.1364 = phi ptr [ %.0363, %mdsModel.exit ], [ %i.bc, %bb.u ], [ %i.bd, %bb.v ], [ %i.l, %bb.i ] ; 18 uses
  %i.be = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not413 = icmp eq i8 %i.be, 0
  br i1 %.not413, label %bb.x, label %bb.w

bb.w:                                             ; preds = %mdsModel.exit.thread475
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bg = tail call double @elapsed_sec() #15
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.6, double noundef %i.bg) #17 ; 0 uses
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite414 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %i.bi) #19 ; 0 uses
  tail call void @start_timer() #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %mdsModel.exit.thread475
  %i.bj = icmp ne i32 %i.d, 0
  %i.bk = icmp sgt i32 %1, 1                      ; 3 uses
  %or.cond = and i1 %i.bk, %i.bj
  br i1 %or.cond, label %bb.y, label %bb.cq

bb.y:                                             ; preds = %bb.x
  %i.bl = zext i1 %i.h to i32
  %i.bm = tail call i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %1, i32 50) ; 15 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 12 uses
  %i.bo = tail call noalias ptr @calloc(i64 noundef %i.bn, i64 noundef 8) #16 ; 15 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.z, label %gv_calloc.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.br = shl nuw nsw i64 %i.bn, 3
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.15, i64 noundef %i.br) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.y
  %i.bt = mul nuw nsw i32 %i.bm, %1
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = tail call noalias ptr @calloc(i64 noundef %i.bu, i64 noundef 8) #16 ; 6 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.aa, label %gv_calloc.exit554.i

bb.aa:                                            ; preds = %gv_calloc.exit.i
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.by = shl nuw nsw i64 %i.bu, 3
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.15, i64 noundef %i.by) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit554.i:                              ; preds = %gv_calloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ca = zext nneg i32 %1 to i64                 ; 69 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.cb = add nsw i32 %i.bm, -1
  %i.cc = icmp ult i32 %i.cb, 3
  br i1 %i.cc, label %.epil.preheader, label %gv_calloc.exit554.i.new

gv_calloc.exit554.i.new:                          ; preds = %gv_calloc.exit554.i
  %unroll_iter = and i64 %i.bn, 60
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %gv_calloc.exit554.i.new
  %indvars.iv.i430 = phi i64 [ 0, %gv_calloc.exit554.i.new ], [ %indvars.iv.next.i431.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %gv_calloc.exit554.i.new ], [ %niter.next.3, %bb.ab ]
  %i.cd = mul nuw nsw i64 %indvars.iv.i430, %i.ca
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i430
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !12
  %indvars.iv.next.i431 = or disjoint i64 %indvars.iv.i430, 1 ; 2 uses
  %i.cg = mul nuw nsw i64 %indvars.iv.next.i431, %i.ca
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i431
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !12
  %indvars.iv.next.i431.1 = or disjoint i64 %indvars.iv.i430, 2 ; 2 uses
  %i.cj = mul nuw nsw i64 %indvars.iv.next.i431.1, %i.ca
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i431.1
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !12
  %indvars.iv.next.i431.2 = or disjoint i64 %indvars.iv.i430, 3 ; 2 uses
  %i.cm = mul nuw nsw i64 %indvars.iv.next.i431.2, %i.ca
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i431.2
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !12
  %indvars.iv.next.i431.3 = add nuw nsw i64 %indvars.iv.i430, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ab, !llvm.loop !81

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %gv_calloc.exit554.i
  %indvars.iv.i430.epil.init = phi i64 [ 0, %gv_calloc.exit554.i ], [ %indvars.iv.next.i431.3, %.unr-lcssa ]
  %lcmp.mod973 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod973)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i430.epil = phi i64 [ %indvars.iv.i430.epil.init, %.epil.preheader ], [ %indvars.iv.next.i431.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.cp = mul nuw nsw i64 %indvars.iv.i430.epil, %i.ca
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i430.epil
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !12
  %indvars.iv.next.i431.epil = add nuw nsw i64 %indvars.iv.i430.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !82

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %i.cs = shl nuw nsw i32 %i.bm, 1
  %i.ct = tail call i32 @llvm.umax.i32(i32 %i.cs, i32 50)
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %1, i32 %i.ct) ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !145
  call void @embed_graph(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 2) %i.bl) #15
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @center_coordinate(ptr noundef %i.cu, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %..i) #15
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @PCA_alloc(ptr noundef %i.cv, i32 noundef %..i, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.bo, i32 noundef %i.bm) #15
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !146
  call void @free(ptr noundef %i.cx) #15
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !145
  call void @free(ptr noundef %i.cy) #15
  %i.cz = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 4) #16 ; 6 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ad, label %gv_calloc.exit557.preheader.i

gv_calloc.exit557.preheader.i:                    ; preds = %.epilog-lcssa
  %i.db = shl nuw nsw i64 %i.ca, 2                ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 -1, i64 %i.db, i1 false), !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !43
  br i1 %i.h, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.epilog-lcssa
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.df = shl nuw nsw i64 %i.ca, 2
  %i.dg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.15, i64 noundef %i.df) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ae:                                            ; preds = %gv_calloc.exit557.preheader.i
  call void @compute_new_weights(ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %gv_calloc.exit557.preheader.i
  %i.dh = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 4) #16 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ag, label %gv_calloc.exit560.i

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.15, i64 noundef %i.db) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit560.i:                              ; preds = %bb.af
  %i.dl = call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 40, i64 noundef 4) #16 ; 6 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ah, label %gv_calloc.exit561.i

bb.ah:                                            ; preds = %gv_calloc.exit560.i
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.15, i64 noundef 160) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit561.i:                              ; preds = %gv_calloc.exit560.i
  %i.dp = mul nuw nsw i32 %1, 40
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dr = call noalias ptr @calloc(i64 noundef %i.dq, i64 noundef 4) #16 ; 49 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ai, label %gv_calloc.exit564.i

bb.ai:                                            ; preds = %gv_calloc.exit561.i
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.du = shl nuw nsw i64 %i.dq, 2
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.15, i64 noundef %i.du) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit564.i:                              ; preds = %gv_calloc.exit561.i
  %i.dw = call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 40, i64 noundef 8) #16 ; 48 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.aj, label %gv_calloc.exit565.preheader.i

gv_calloc.exit565.preheader.i:                    ; preds = %gv_calloc.exit564.i
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !146
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ca
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !146
  %.idx.i = shl nuw nsw i64 %i.ca, 3              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !146
  %.idx850.i = mul nuw nsw i64 %i.ca, 12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx850.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !146
  %.idx851.i = shl nuw nsw i64 %i.ca, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx851.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !146
  %.idx852.i = mul nuw nsw i64 %i.ca, 20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx852.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !146
  %.idx853.i = mul nuw nsw i64 %i.ca, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx853.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !146
  %.idx854.i = mul nuw nsw i64 %i.ca, 28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx854.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !146
  %.idx855.i = shl nuw nsw i64 %i.ca, 5           ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx855.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  store ptr %i.em, ptr %i.en, align 8, !tbaa !146
  %.idx856.i = mul nuw nsw i64 %i.ca, 36
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx856.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !146
  %.idx857.i = mul nuw nsw i64 %i.ca, 40          ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx857.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !146
  %.idx858.i = mul nuw nsw i64 %i.ca, 44
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx858.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  store ptr %i.es, ptr %i.et, align 8, !tbaa !146
  %.idx859.i = mul nuw nsw i64 %i.ca, 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx859.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !146
  %.idx860.i = mul nuw nsw i64 %i.ca, 52
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx860.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !146
  %.idx861.i = mul nuw nsw i64 %i.ca, 56
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx861.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !146
  %.idx862.i = mul nuw nsw i64 %i.ca, 60
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx862.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !146
  %.idx863.i = shl nuw nsw i64 %i.ca, 6
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx863.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !146
  %.idx864.i = mul nuw nsw i64 %i.ca, 68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx864.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !146
  %.idx865.i = mul nuw nsw i64 %i.ca, 72
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx865.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !146
  %.idx866.i = mul nuw nsw i64 %i.ca, 76
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx866.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !146
  %.idx867.i = mul nuw nsw i64 %i.ca, 80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx867.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !146
  %.idx868.i = mul nuw nsw i64 %i.ca, 84
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx868.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dw, i64 168
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !146
  %.idx869.i = mul nuw nsw i64 %i.ca, 88
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx869.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dw, i64 176
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !146
  %.idx870.i = mul nuw nsw i64 %i.ca, 92
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx870.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dw, i64 184
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !146
  %.idx871.i = mul nuw nsw i64 %i.ca, 96
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx871.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dw, i64 192
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !146
  %.idx872.i = mul nuw nsw i64 %i.ca, 100
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx872.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dw, i64 200
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !146
  %.idx873.i = mul nuw nsw i64 %i.ca, 104
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx873.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dw, i64 208
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !146
  %.idx874.i = mul nuw nsw i64 %i.ca, 108
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx874.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dw, i64 216
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !146
  %.idx875.i = mul nuw nsw i64 %i.ca, 112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx875.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dw, i64 224
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !146
  %.idx876.i = mul nuw nsw i64 %i.ca, 116
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx876.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dw, i64 232
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !146
  %.idx877.i = mul nuw nsw i64 %i.ca, 120
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx877.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !146
  %.idx878.i = mul nuw nsw i64 %i.ca, 124
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx878.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dw, i64 248
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !146
  %.idx879.i = shl nuw nsw i64 %i.ca, 7
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx879.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dw, i64 256
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !146
  %.idx880.i = mul nuw nsw i64 %i.ca, 132
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx880.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dw, i64 264
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !146
  %.idx881.i = mul nuw nsw i64 %i.ca, 136
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx881.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dw, i64 272
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !146
  %.idx882.i = mul nuw nsw i64 %i.ca, 140
  %i.go = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx882.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dw, i64 280
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !146
  %.idx883.i = mul nuw nsw i64 %i.ca, 144
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx883.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dw, i64 288
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !146
  %.idx884.i = mul nuw nsw i64 %i.ca, 148
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx884.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dw, i64 296
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !146
  %.idx885.i = mul nuw nsw i64 %i.ca, 152
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx885.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dw, i64 304
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !146
  %.idx886.i = mul nuw nsw i64 %i.ca, 156
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx886.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dw, i64 312
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !146
  %i.gy = call i32 @rand() #15
  %i.gz = srem i32 %i.gy, %1                      ; 6 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ha
  store i32 0, ptr %i.hb, align 4, !tbaa !46
  store i32 %i.gz, ptr %i.dl, align 4, !tbaa !46
  br i1 %i.h, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %gv_calloc.exit564.i
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.hd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.15, i64 noundef 320) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ak:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @ngdijkstra(i32 noundef %i.gz, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dr) #15
  br label %bb.am

bb.al:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @bfs(i32 noundef %i.gz, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dr) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, ptr noundef nonnull align 4 dereferenceable(1) %i.dr, i64 %i.db, i1 false), !tbaa !46
  %xtraiter975 = and i64 %i.ca, 3                 ; 3 uses
  %8 = add nsw i32 %1, -1
  %i.he = icmp ult i32 %8, 3
  br i1 %i.he, label %.epil.preheader974, label %.new

.new:                                             ; preds = %bb.am
  %unroll_iter980 = and i64 %i.ca, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.new
  %indvars.iv724.i = phi i64 [ 0, %.new ], [ %indvars.iv.next725.i.3, %bb.an ] ; 6 uses
  %.0507658.i = phi i32 [ 0, %.new ], [ %spec.select550.i.3, %bb.an ] ; 2 uses
  %.0513657.i = phi i32 [ %i.gz, %.new ], [ %spec.select.i.3, %bb.an ]
  %niter981 = phi i64 [ 0, %.new ], [ %niter981.next.3, %bb.an ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv724.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !46 ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, %.0507658.i
  %i.hi = trunc nuw nsw i64 %indvars.iv724.i to i32
  %spec.select.i = select i1 %i.hh, i32 %i.hi, i32 %.0513657.i
  %spec.select550.i = call i32 @llvm.smax.i32(i32 %i.hg, i32 %.0507658.i) ; 2 uses
  %indvars.iv.next725.i = or disjoint i64 %indvars.iv724.i, 1 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !46 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, %spec.select550.i
  %i.hm = trunc nuw nsw i64 %indvars.iv.next725.i to i32
  %spec.select.i.1 = select i1 %i.hl, i32 %i.hm, i32 %spec.select.i
  %spec.select550.i.1 = call i32 @llvm.smax.i32(i32 %i.hk, i32 %spec.select550.i) ; 2 uses
  %indvars.iv.next725.i.1 = or disjoint i64 %indvars.iv724.i, 2 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i.1
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !46 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, %spec.select550.i.1
  %i.hq = trunc nuw nsw i64 %indvars.iv.next725.i.1 to i32
  %spec.select.i.2 = select i1 %i.hp, i32 %i.hq, i32 %spec.select.i.1
  %spec.select550.i.2 = call i32 @llvm.smax.i32(i32 %i.ho, i32 %spec.select550.i.1) ; 2 uses
  %indvars.iv.next725.i.2 = or disjoint i64 %indvars.iv724.i, 3 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i.2
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !46 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %spec.select550.i.2
  %i.hu = trunc nuw nsw i64 %indvars.iv.next725.i.2 to i32
  %spec.select.i.3 = select i1 %i.ht, i32 %i.hu, i32 %spec.select.i.2 ; 3 uses
  %spec.select550.i.3 = call i32 @llvm.smax.i32(i32 %i.hs, i32 %spec.select550.i.2) ; 2 uses
  %indvars.iv.next725.i.3 = add nuw nsw i64 %indvars.iv724.i, 4 ; 2 uses
  %niter981.next.3 = add i64 %niter981, 4         ; 2 uses
  %niter981.ncmp.3 = icmp eq i64 %niter981.next.3, %unroll_iter980
  br i1 %niter981.ncmp.3, label %.preheader646.i.preheader.unr-lcssa, label %bb.an, !llvm.loop !83

.preheader646.i.preheader.unr-lcssa:              ; preds = %bb.an
  %lcmp.mod977.not = icmp eq i64 %xtraiter975, 0
  br i1 %lcmp.mod977.not, label %.preheader646.i.preheader, label %.epil.preheader974

.epil.preheader974:                               ; preds = %.preheader646.i.preheader.unr-lcssa, %bb.am
  %indvars.iv724.i.epil.init = phi i64 [ 0, %bb.am ], [ %indvars.iv.next725.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0507658.i.epil.init = phi i32 [ 0, %bb.am ], [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0513657.i.epil.init = phi i32 [ %i.gz, %bb.am ], [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %lcmp.mod979 = icmp ne i64 %xtraiter975, 0
  call void @llvm.assume(i1 %lcmp.mod979)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader974
  %indvars.iv724.i.epil = phi i64 [ %indvars.iv724.i.epil.init, %.epil.preheader974 ], [ %indvars.iv.next725.i.epil, %bb.ao ] ; 3 uses
  %.0507658.i.epil = phi i32 [ %.0507658.i.epil.init, %.epil.preheader974 ], [ %spec.select550.i.epil, %bb.ao ] ; 2 uses
  %.0513657.i.epil = phi i32 [ %.0513657.i.epil.init, %.epil.preheader974 ], [ %spec.select.i.epil, %bb.ao ]
  %epil.iter976 = phi i64 [ 0, %.epil.preheader974 ], [ %epil.iter976.next, %bb.ao ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv724.i.epil
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !46 ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %.0507658.i.epil
  %i.hy = trunc nuw nsw i64 %indvars.iv724.i.epil to i32
  %spec.select.i.epil = select i1 %i.hx, i32 %i.hy, i32 %.0513657.i.epil ; 2 uses
  %spec.select550.i.epil = call i32 @llvm.smax.i32(i32 %i.hw, i32 %.0507658.i.epil)
  %indvars.iv.next725.i.epil = add nuw nsw i64 %indvars.iv724.i.epil, 1
  %epil.iter976.next = add i64 %epil.iter976, 1   ; 2 uses
  %epil.iter976.cmp.not = icmp eq i64 %epil.iter976.next, %xtraiter975
  br i1 %epil.iter976.cmp.not, label %.preheader646.i.preheader, label %bb.ao, !llvm.loop !84

.preheader646.i.preheader:                        ; preds = %bb.ao, %.preheader646.i.preheader.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ], [ %spec.select.i.epil, %bb.ao ]
  br label %.preheader646.i

.preheader646.i:                                  ; preds = %.preheader646.i.preheader, %bb.ar
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %bb.ar ], [ 1, %.preheader646.i.preheader ] ; 4 uses
  %.2515663.i = phi i32 [ %.4517.i, %bb.ar ], [ %spec.select.i.lcssa, %.preheader646.i.preheader ] ; 5 uses
  %i.hz = sext i32 %.2515663.i to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.hz
  %i.ib = trunc nuw nsw i64 %indvars.iv734.i to i32
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !46
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv734.i
  store i32 %.2515663.i, ptr %i.ic, align 4, !tbaa !46
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv734.i
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !146 ; 3 uses
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader646.i
  call void @ngdijkstra(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ie) #15
  br label %.preheader972

.preheader972:                                    ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.aq:                                            ; preds = %.preheader646.i
  call void @bfs(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.ie) #15
  br label %.preheader972

bb.ar:                                            ; preds = %bb.av
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next735.i, 40
  br i1 %exitcond737.not.i, label %.preheader645.preheader.i, label %.preheader646.i, !llvm.loop !85

.preheader645.preheader.i:                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, i8 -1, i64 %i.db, i1 false), !tbaa !46
  %i.if = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 32) #16 ; 9 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.aw, label %gv_calloc.exit571.preheader.i

bb.as:                                            ; preds = %.preheader972, %bb.av
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i, %bb.av ], [ 0, %.preheader972 ] ; 5 uses
  %.2509660.i = phi i32 [ %.3510.i, %bb.av ], [ 0, %.preheader972 ] ; 4 uses
  %.3516659.i = phi i32 [ %.4517.i, %bb.av ], [ %.2515663.i, %.preheader972 ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv729.i ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !46
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv729.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !46
  %.551.i = call i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ik) ; 5 uses
  store i32 %.551.i, ptr %i.ih, align 4, !tbaa !46
  %i.il = icmp sgt i32 %.551.i, %.2509660.i
  br i1 %i.il, label %._crit_edge759, label %bb.at

._crit_edge759:                                   ; preds = %bb.as
  %.pre760 = trunc nuw nsw i64 %indvars.iv729.i to i32
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.im = icmp eq i32 %.551.i, %.2509660.i
  br i1 %i.im, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.in = call i32 @rand() #15
  %i.io = trunc i64 %indvars.iv729.i to i32       ; 2 uses
  %i.ip = add i32 %i.io, 1
  %i.iq = srem i32 %i.in, %i.ip
  %i.ir = icmp eq i32 %i.iq, 0                    ; 2 uses
  %spec.select = select i1 %i.ir, i32 %i.io, i32 %.3516659.i
  %spec.select830 = select i1 %i.ir, i32 %.551.i, i32 %.2509660.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge759, %bb.at
  %.4517.i = phi i32 [ %.3516659.i, %bb.at ], [ %spec.select, %bb.au ], [ %.pre760, %._crit_edge759 ] ; 2 uses
  %.3510.i = phi i32 [ %.2509660.i, %bb.at ], [ %spec.select830, %bb.au ], [ %.551.i, %._crit_edge759 ]
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond733.not.i = icmp eq i64 %indvars.iv.next730.i, %i.ca
  br i1 %exitcond733.not.i, label %bb.ar, label %bb.as, !llvm.loop !86

gv_calloc.exit571.preheader.i:                    ; preds = %.preheader645.preheader.i
  %i.is = add nsw i32 %1, -1
  %i.it = zext i32 %i.is to i64                   ; 8 uses
  %i.iu = add nsw i64 %i.ca, -1                   ; 5 uses
  %i.iv = add nsw i64 %i.it, -1
  br label %bb.ax

bb.aw:                                            ; preds = %.preheader645.preheader.i
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iw, ptr noundef nonnull @.str.15, i64 noundef %.idx855.i) #17 ; 0 uses
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
  %i.iy = sub i64 %i.it, %indvar                  ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv755.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !46 ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jc = call noalias ptr @calloc(i64 noundef %i.it, i64 noundef 4) #16 ; 13 uses
  %i.jd = ptrtoaddr ptr %i.jc to i64              ; 4 uses
  %i.je = icmp eq ptr %i.jc, null
  br i1 %i.je, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jg = shl nuw nsw i64 %i.it, 2
  %i.jh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.15, i64 noundef %i.jg) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %indvars.iv755.i ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jc, ptr %i.jj, align 8, !tbaa !53
  %i.jk = call noalias ptr @calloc(i64 noundef %i.it, i64 noundef 4) #16 ; 13 uses
  %i.jl = ptrtoaddr ptr %i.jk to i64              ; 4 uses
  %i.jm = icmp eq ptr %i.jk, null
  br i1 %i.jm, label %bb.bb, label %gv_calloc.exit579.i

bb.bb:                                            ; preds = %bb.ba
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jo = shl nuw nsw i64 %i.it, 2
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  br label %.preheader632.i

.preheader632.i:                                  ; preds = %bb.ci, %gv_calloc.exit624.i
  %.0492708.i = phi double [ %i.wk, %gv_calloc.exit624.i ], [ %.1493.i, %bb.ci ] ; 2 uses
  %.0529707.i = phi i32 [ 0, %gv_calloc.exit624.i ], [ %i.yq, %bb.ci ] ; 3 uses
  br i1 %.not.i605.not.i, label %._crit_edge706.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader632.i, %bb.cg
  %indvars.iv806.i = phi i64 [ %indvars.iv.next807.i, %bb.cg ], [ 0, %.preheader632.i ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv806.i ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge702.i, %.preheader.i
  %indvars.iv801.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next802.i, %._crit_edge702.i ] ; 6 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv801.i ; 5 uses
  store double 0.000000e+00, ptr %i.wm, align 8, !tbaa !35
  %i.wn = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %indvars.iv801.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !54
  %i.wq = getelementptr inbounds i8, ptr %i.wp, i64 -4
  %i.wr = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %indvars.iv801.i ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !43
  %i.ww = load i64, ptr %i.wr, align 8, !tbaa !44
  %i.wx = icmp ugt i64 %i.ww, 1
  br i1 %i.wx, label %.lr.ph701.preheader.i, label %._crit_edge702.i

.lr.ph701.preheader.i:                            ; preds = %bb.cc
  %i.wy = trunc nuw nsw i64 %indvars.iv801.i to i32
  br label %.lr.ph701.i

._crit_edge702.loopexit.i:                        ; preds = %bb.ce
  %.pre.i = load double, ptr %i.wm, align 8, !tbaa !35
  br label %._crit_edge702.i

._crit_edge702.i:                                 ; preds = %._crit_edge702.loopexit.i, %bb.cc
  %i.wz = phi double [ 0.000000e+00, %bb.cc ], [ %.pre.i, %._crit_edge702.loopexit.i ]
  %.3.lcssa.i = phi double [ 0.000000e+00, %bb.cc ], [ %.4.i, %._crit_edge702.loopexit.i ]
  %i.xa = load ptr, ptr %i.wl, align 8, !tbaa !12
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %indvars.iv801.i
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !35
  %i.xd = call double @llvm.fmuladd.f64(double %.3.lcssa.i, double %i.xc, double %i.wz)
  store double %i.xd, ptr %i.wm, align 8, !tbaa !35
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond805.not.i = icmp eq i64 %indvars.iv.next802.i, %i.ca
  br i1 %exitcond805.not.i, label %bb.cf, label %bb.cc, !llvm.loop !104

.lr.ph701.i:                                      ; preds = %bb.ce, %.lr.ph701.preheader.i
  %.0699.i = phi i64 [ %i.xy, %bb.ce ], [ 1, %.lr.ph701.preheader.i ] ; 4 uses
  %.3698.i = phi double [ %.4.i, %bb.ce ], [ 0.000000e+00, %.lr.ph701.preheader.i ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.0699.i
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !46 ; 2 uses
  %i.xg = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %i.wy, i32 noundef %i.xf) #15 ; 2 uses
  %i.xh = fcmp ogt double %i.xg, 1.000000e-30
  br i1 %i.xh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph701.i
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %.0699.i
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !48
  %i.xk = fneg float %i.xj
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %.0699.i
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !46
  %i.xn = sitofp i32 %i.xm to float
  %i.xo = fmul float %i.xk, %i.xn
  %i.xp = fpext float %i.xo to double
  %i.xq = fdiv double %i.xp, %i.xg                ; 2 uses
  %i.xr = fsub double %.3698.i, %i.xq
  %i.xs = load ptr, ptr %i.wl, align 8, !tbaa !12
  %i.xt = sext i32 %i.xf to i64
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.xs, i64 %i.xt
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !35
  %i.xw = load double, ptr %i.wm, align 8, !tbaa !35
  %i.xx = call double @llvm.fmuladd.f64(double %i.xq, double %i.xv, double %i.xw)
  store double %i.xx, ptr %i.wm, align 8, !tbaa !35
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph701.i
  %.4.i = phi double [ %i.xr, %bb.cd ], [ %.3698.i, %.lr.ph701.i ] ; 2 uses
  %i.xy = add nuw i64 %.0699.i, 1                 ; 2 uses
  %i.xz = load i64, ptr %i.wr, align 8, !tbaa !44
  %i.ya = icmp ult i64 %i.xy, %i.xz
  br i1 %i.ya, label %.lr.ph701.i, label %._crit_edge702.loopexit.i, !llvm.loop !105

bb.cf:                                            ; preds = %._crit_edge702.i
  call void @right_mult_with_vector_d(ptr noundef nonnull %i.bo, i32 noundef %i.bm, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.wb, ptr noundef nonnull %i.wf) #15
  %i.yb = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv806.i ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !12
  %i.ye = call i32 @conjugate_gradient_f(ptr noundef %i.yb, ptr noundef %i.yd, ptr noundef nonnull %i.wf, i32 noundef %i.bm, double noundef 1.000000e-03, i32 noundef %i.bm, i1 noundef zeroext false) #15
  %.not548.i = icmp eq i32 %i.ye, 0
  br i1 %.not548.i, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !12
  %i.yg = load ptr, ptr %i.wl, align 8, !tbaa !12
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bo, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef %i.yf, ptr noundef %i.yg) #15
  %indvars.iv.next807.i = add nuw nsw i64 %indvars.iv806.i, 1 ; 2 uses
  %exitcond810.not.i = icmp eq i64 %indvars.iv.next807.i, %wide.trip.count809.i
  br i1 %exitcond810.not.i, label %._crit_edge706.i, label %.preheader.i, !llvm.loop !106

._crit_edge706.i:                                 ; preds = %bb.cg, %.preheader632.i
  %i.yh = and i32 %.0529707.i, 1
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge706.i
  %i.yj = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.if, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e) ; 3 uses
  %i.yk = fsub double %i.yj, %.0492708.i
  %i.yl = call double @llvm.fabs.f64(double %i.yk)
  %i.ym = fadd double %i.yj, 1.000000e-10
  %i.yn = fdiv double %i.yl, %i.ym
  %i.yo = load double, ptr @Epsilon, align 8, !tbaa !35
  %i.yp = fcmp olt double %i.yn, %i.yo
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge706.i
  %.1493.i = phi double [ %i.yj, %bb.ch ], [ %.0492708.i, %._crit_edge706.i ]
  %.1491.i = phi i1 [ %i.yp, %bb.ch ], [ false, %._crit_edge706.i ]
  %i.yq = add nuw nsw i32 %.0529707.i, 1
  %i.yr = icmp samesign ugt i32 %.0529707.i, 48
  %.not547.i = select i1 %i.yr, i1 true, i1 %.1491.i
  br i1 %.not547.i, label %.loopexit.i, label %.preheader632.i, !llvm.loop !107

.loopexit.i:                                      ; preds = %bb.ci, %bb.cf
  %.1530.i = phi i1 [ true, %bb.cf ], [ false, %bb.ci ]
  call void @free(ptr noundef %i.wf) #15
  call void @free(ptr noundef %i.wb) #15
  br i1 %i.h, label %bb.cj, label %.preheader967

bb.cj:                                            ; preds = %.loopexit.i
  call void @restore_old_weights(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.dd) #15
  br label %.preheader967

.preheader967:                                    ; preds = %bb.cj, %.loopexit.i
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader967, %bb.cm
  %indvars.iv811.i = phi i64 [ %indvars.iv.next812.i, %bb.cm ], [ 0, %.preheader967 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %indvars.iv811.i ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load i8, ptr %i.yt, align 8, !tbaa !147, !range !150, !noundef !151
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !53
  call void @free(ptr noundef %i.yx) #15
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !54
  call void @free(ptr noundef %i.yz) #15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %indvars.iv.next812.i = add nuw nsw i64 %indvars.iv811.i, 1 ; 2 uses
  %exitcond815.not.i = icmp eq i64 %indvars.iv.next812.i, %i.ca
  br i1 %exitcond815.not.i, label %bb.cn, label %bb.ck, !llvm.loop !108

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.if) #15
  %i.za = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !45
  call void @free(ptr noundef %i.zb) #15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !43
  call void @free(ptr noundef %i.zd) #15
  call void @free(ptr noundef %i.oc) #15
  call void @free(ptr noundef %i.cz) #15
  call void @free(ptr noundef %i.dl) #15
  %i.ze = load ptr, ptr %i.vw, align 8, !tbaa !12
  call void @free(ptr noundef %i.ze) #15
  call void @free(ptr noundef %i.vw) #15
  %i.zf = load ptr, ptr %i.c, align 8, !tbaa !149 ; 2 uses
  %.not549.i = icmp eq ptr %i.zf, null
  br i1 %.not549.i, label %sparse_stress_subspace_majorization_kD.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !56
  call void @free(ptr noundef %i.zg) #15
  %i.zh = load ptr, ptr %i.c, align 8, !tbaa !149
  call void @free(ptr noundef %i.zh) #15
  br label %sparse_stress_subspace_majorization_kD.exit

sparse_stress_subspace_majorization_kD.exit:      ; preds = %bb.cn, %bb.co
  %i.zi = load ptr, ptr %i.bo, align 8, !tbaa !12
  call void @free(ptr noundef %i.zi) #15
  call void @free(ptr noundef %i.bo) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.1530.i, label %.thread, label %.preheader496

.preheader496:                                    ; preds = %sparse_stress_subspace_majorization_kD.exit
  %i.zj = icmp sgt i32 %4, 0
  br i1 %i.zj, label %.lr.ph.preheader, label %.loopexit497

.lr.ph.preheader:                                 ; preds = %.preheader496
  %xtraiter1022 = and i64 %i.ca, 1
  %unroll_iter1027 = and i64 %i.ca, 2147483646
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1022, 0
  %lcmp.mod1026 = trunc i32 %1 to i1
  %min.iters.check871 = icmp ult i32 %1, 2
  %n.vec873 = and i64 %i.ca, 2147483646           ; 3 uses
  %cmp.n881 = icmp eq i64 %n.vec873, %i.ca
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv623 = phi i64 [ %indvars.iv.next624, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !12 ; 3 uses
  br label %.lr.ph.new

.lr.ph505.unr-lcssa:                              ; preds = %.lr.ph.new
  br i1 %lcmp.mod1024.not, label %.lr.ph505, label %.epil.preheader1021

.epil.preheader1021:                              ; preds = %.lr.ph505.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1026)
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv.next.1
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !35
  %i.zo = call double @llvm.fabs.f64(double %i.zn) ; 2 uses
  %i.zp = fcmp ogt double %i.zo, %.1344.1
  %.1344.epil = select i1 %i.zp, double %i.zo, double %.1344.1
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505.unr-lcssa, %.epil.preheader1021
  %.1344.lcssa = phi double [ %.1344.1, %.lr.ph505.unr-lcssa ], [ %.1344.epil, %.epil.preheader1021 ] ; 2 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check871, label %scalar.ph870.preheader, label %vector.ph872

vector.ph872:                                     ; preds = %.lr.ph505
  %broadcast.splatinsert874 = insertelement <2 x double> poison, double %.1344.lcssa, i64 0
  %broadcast.splat875 = shufflevector <2 x double> %broadcast.splatinsert874, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph872
  %index877 = phi i64 [ 0, %vector.ph872 ], [ %index.next879, %vector.body876 ] ; 2 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %index877 ; 2 uses
  %wide.load878 = load <2 x double>, ptr %i.zs, align 8, !tbaa !35
  %i.zt = fdiv <2 x double> %wide.load878, %broadcast.splat875
  store <2 x double> %i.zt, ptr %i.zs, align 8, !tbaa !35
  %index.next879 = add nuw i64 %index877, 2       ; 2 uses
  %i.zu = icmp eq i64 %index.next879, %n.vec873
  br i1 %i.zu, label %middle.block880, label %vector.body876, !llvm.loop !109

middle.block880:                                  ; preds = %vector.body876
  br i1 %cmp.n881, label %.lr.ph507, label %scalar.ph870.preheader

scalar.ph870.preheader:                           ; preds = %.lr.ph505, %middle.block880
  %indvars.iv613.ph = phi i64 [ 0, %.lr.ph505 ], [ %n.vec873, %middle.block880 ]
  br label %scalar.ph870

.lr.ph.new:                                       ; preds = %.lr.ph.new, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph.new ] ; 3 uses
  %.0343503 = phi double [ 1.000000e+00, %.lr.ph ], [ %.1344.1, %.lr.ph.new ] ; 2 uses
  %niter1028 = phi i64 [ 0, %.lr.ph ], [ %niter1028.next.1, %.lr.ph.new ]
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !35
  %i.zx = call double @llvm.fabs.f64(double %i.zw) ; 2 uses
  %i.zy = fcmp ogt double %i.zx, %.0343503
  %.1344 = select i1 %i.zy, double %i.zx, double %.0343503 ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !35
  %i.aac = call double @llvm.fabs.f64(double %i.aab) ; 2 uses
  %i.aad = fcmp ogt double %i.aac, %.1344
  %.1344.1 = select i1 %i.aad, double %i.aac, double %.1344 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1028.next.1 = add i64 %niter1028, 2       ; 2 uses
  %niter1028.ncmp.1 = icmp eq i64 %niter1028.next.1, %unroll_iter1027
  br i1 %niter1028.ncmp.1, label %.lr.ph505.unr-lcssa, label %.lr.ph.new, !llvm.loop !110

.lr.ph507:                                        ; preds = %scalar.ph870, %middle.block880
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  br label %bb.cp

scalar.ph870:                                     ; preds = %scalar.ph870.preheader, %scalar.ph870
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %scalar.ph870 ], [ %indvars.iv613.ph, %scalar.ph870.preheader ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv613 ; 2 uses
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !35
  %i.aah = fdiv double %i.aag, %.1344.lcssa
  store double %i.aah, ptr %i.aaf, align 8, !tbaa !35
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %i.ca
  br i1 %exitcond617.not, label %.lr.ph507, label %scalar.ph870, !llvm.loop !111

bb.cp:                                            ; preds = %.lr.ph507, %bb.cp
  %indvars.iv618 = phi i64 [ 0, %.lr.ph507 ], [ %indvars.iv.next619, %bb.cp ] ; 2 uses
  %i.aai = call double @drand48() #15
  %i.aaj = fadd double %i.aai, -5.000000e-01
  %i.aak = load ptr, ptr %i.aae, align 8, !tbaa !12 ; 2 uses
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv618 ; 2 uses
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !35
  %i.aan = call double @llvm.fmuladd.f64(double %i.aaj, double f0x3EB0C6F7A0B5ED8D, double %i.aam)
  store double %i.aan, ptr %i.aal, align 8, !tbaa !35
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %i.ca
  br i1 %exitcond622.not, label %._crit_edge, label %bb.cp, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aak) #15
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count809.i
  br i1 %exitcond627.not, label %.loopexit497, label %.lr.ph, !llvm.loop !113

bb.cq:                                            ; preds = %bb.x
  %i.aao = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aap = icmp eq i32 %i.aao, 0
  br label %.loopexit497

.loopexit497:                                     ; preds = %._crit_edge, %.preheader496, %bb.cq
  %.0346 = phi i1 [ %i.aap, %bb.cq ], [ true, %.preheader496 ], [ true, %._crit_edge ]
  %i.aaq = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not415 = icmp eq i8 %i.aaq, 0
  br i1 %.not415, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit497
  %i.aar = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aas = call double @elapsed_sec() #15
  %i.aat = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aar, ptr noundef nonnull @.str.8, double noundef %i.aas) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit497
  %i.aau = icmp eq i32 %1, 1
  %i.aav = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aau, %i.aav
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aaw = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not416 = icmp eq i8 %i.aaw, 0
  br i1 %.not416, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aax = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aay = call double @elapsed_sec() #15
  %i.aaz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aax, ptr noundef nonnull @.str.6, double noundef %i.aay) #17 ; 0 uses
  %i.aba = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.aba) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abb = sext i32 %4 to i64                     ; 6 uses
  %.not.i437 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i437, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abc = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abd = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abd, ptr noundef nonnull @.str.14, i64 noundef %i.abb, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abf = call noalias ptr @calloc(i64 noundef %i.abb, i64 noundef 8) #16 ; 2 uses
  %i.abg = icmp eq ptr %i.abf, null
  br i1 %i.abg, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abh = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abi = shl nuw nsw i64 %i.abb, 3
  %i.abj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abh, ptr noundef nonnull @.str.15, i64 noundef %i.abi) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abk = phi ptr [ %i.abc, %.thread.i ], [ %i.abf, %bb.cy ] ; 13 uses
  %i.abl = mul nsw i32 %4, %1                     ; 4 uses
  %i.abm = sext i32 %i.abl to i64                 ; 6 uses
  %.not.i438 = icmp eq i32 %i.abl, 0              ; 2 uses
  br i1 %.not.i438, label %.thread.i441, label %bb.da

.thread.i441:                                     ; preds = %gv_calloc.exit
  %i.abn = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit442

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i440 = icmp slt i32 %i.abl, 0
  br i1 %mul.ov.i440, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abo = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abo, ptr noundef nonnull @.str.14, i64 noundef %i.abm, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abq = call noalias ptr @calloc(i64 noundef %i.abm, i64 noundef 4) #16 ; 2 uses
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %bb.dd, label %gv_calloc.exit442

bb.dd:                                            ; preds = %bb.dc
  %i.abs = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abt = shl nuw nsw i64 %i.abm, 2
  %i.abu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abs, ptr noundef nonnull @.str.15, i64 noundef %i.abt) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit442:                                ; preds = %.thread.i441, %bb.dc
  %i.abv = phi ptr [ %i.abn, %.thread.i441 ], [ %i.abq, %bb.dc ] ; 5 uses
  %i.abw = icmp ne i32 %4, 0                      ; 5 uses
  br i1 %i.abw, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %gv_calloc.exit442
  %i.abx = icmp sgt i32 %1, 0
  %i.aby = sext i32 %1 to i64
  %wide.trip.count636 = zext nneg i32 %4 to i64
  %wide.trip.count631 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check884 = icmp ult i32 %1, 4
  %n.vec886 = and i64 %wide.trip.count631, 2147483644 ; 3 uses
  %cmp.n893 = icmp eq i64 %n.vec886, %wide.trip.count631
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph514, %._crit_edge512
  %indvars.iv633 = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next634, %._crit_edge512 ] ; 4 uses
  %i.abz = mul nsw i64 %indvars.iv633, %i.aby
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abz ; 3 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv633
  store ptr %i.aca, ptr %i.acb, align 8, !tbaa !56
  br i1 %i.abx, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.de
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv633
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.body887

vector.body887:                                   ; preds = %.lr.ph511, %vector.body887
  %index888 = phi i64 [ %index.next891, %vector.body887 ], [ 0, %.lr.ph511 ] ; 3 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %index888 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %wide.load889 = load <2 x double>, ptr %i.ace, align 8, !tbaa !35
  %wide.load890 = load <2 x double>, ptr %i.acf, align 8, !tbaa !35
  %i.acg = fptrunc <2 x double> %wide.load889 to <2 x float>
  %i.ach = fptrunc <2 x double> %wide.load890 to <2 x float>
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %index888 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store <2 x float> %i.acg, ptr %i.aci, align 4, !tbaa !48
  store <2 x float> %i.ach, ptr %i.acj, align 4, !tbaa !48
  %index.next891 = add nuw i64 %index888, 4       ; 2 uses
  %i.ack = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.ack, label %middle.block892, label %vector.body887, !llvm.loop !114

middle.block892:                                  ; preds = %vector.body887
  br i1 %cmp.n893, label %._crit_edge512, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %.lr.ph511, %middle.block892
  %indvars.iv628.ph = phi i64 [ 0, %.lr.ph511 ], [ %n.vec886, %middle.block892 ]
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %scalar.ph883 ], [ %indvars.iv628.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %indvars.iv628
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !35
  %i.acn = fptrunc double %i.acm to float
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %indvars.iv628
  store float %i.acn, ptr %i.aco, align 4, !tbaa !48
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %._crit_edge512, label %scalar.ph883, !llvm.loop !115
end_hunk_1
begin_hunk_2_@stress_majorization_kD_mkernel:bb.a
  %i.afm = shl nuw nsw i64 %i.abb, 3
  %i.afn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afl, ptr noundef nonnull @.str.15, i64 noundef %i.afm) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit452:                                ; preds = %bb.dn
  br i1 %.not.i438, label %.thread.i456, label %bb.dp

.thread.i456:                                     ; preds = %gv_calloc.exit452.thread, %gv_calloc.exit452
  %i.afo = phi ptr [ %i.afg, %gv_calloc.exit452.thread ], [ %i.afj, %gv_calloc.exit452 ]
  %i.afp = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit457

bb.dp:                                            ; preds = %gv_calloc.exit452
  %mul.ov.i455 = icmp slt i32 %i.abl, 0
  br i1 %mul.ov.i455, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.afq = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.14, i64 noundef %i.abm, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.afs = call noalias ptr @calloc(i64 noundef %i.abm, i64 noundef 4) #16 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %bb.ds, label %gv_calloc.exit457

bb.ds:                                            ; preds = %bb.dr
  %i.afu = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.afv = shl nuw nsw i64 %i.abm, 2
  %i.afw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afu, ptr noundef nonnull @.str.15, i64 noundef %i.afv) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit457:                                ; preds = %.thread.i456, %bb.dr
  %i.afx = phi ptr [ %i.afo, %.thread.i456 ], [ %i.afj, %bb.dr ] ; 14 uses
  %i.afy = phi ptr [ %i.afp, %.thread.i456 ], [ %i.afs, %bb.dr ] ; 6 uses
  store ptr %i.afy, ptr %i.afx, align 8, !tbaa !56
  %i.afz = icmp samesign ugt i32 %4, 1
  br i1 %i.afz, label %.lr.ph532.preheader, label %._crit_edge533

.lr.ph532.preheader:                              ; preds = %gv_calloc.exit457
  %wide.trip.count666 = zext nneg i32 %4 to i64
  %i.aga = add nsw i64 %wide.trip.count666, -1    ; 2 uses
  %xtraiter1043 = and i64 %i.aga, 3               ; 3 uses
  %i.agb = add i32 %4, -2
  %i.agc = icmp ult i32 %i.agb, 3
  br i1 %i.agc, label %.lr.ph532.epil.preheader, label %.lr.ph532.preheader.new

.lr.ph532.preheader.new:                          ; preds = %.lr.ph532.preheader
  %unroll_iter1047 = and i64 %i.aga, -4
  br label %.lr.ph532

.lr.ph532:                                        ; preds = %.lr.ph532, %.lr.ph532.preheader.new
  %indvars.iv663 = phi i64 [ 1, %.lr.ph532.preheader.new ], [ %indvars.iv.next664.3, %.lr.ph532 ] ; 6 uses
  %niter1048 = phi i64 [ 0, %.lr.ph532.preheader.new ], [ %niter1048.next.3, %.lr.ph532 ]
  %i.agd = mul nsw i64 %indvars.iv663, %i.acy
  %i.age = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.agd
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv663
  store ptr %i.age, ptr %i.agf, align 8, !tbaa !56
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 2 uses
  %i.agg = mul nsw i64 %indvars.iv.next664, %i.acy
  %i.agh = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.agg
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv.next664
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !56
  %indvars.iv.next664.1 = add nuw nsw i64 %indvars.iv663, 2 ; 2 uses
  %i.agj = mul nsw i64 %indvars.iv.next664.1, %i.acy
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.agj
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv.next664.1
  store ptr %i.agk, ptr %i.agl, align 8, !tbaa !56
  %indvars.iv.next664.2 = add nuw nsw i64 %indvars.iv663, 3 ; 2 uses
  %i.agm = mul nsw i64 %indvars.iv.next664.2, %i.acy
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.agm
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv.next664.2
  store ptr %i.agn, ptr %i.ago, align 8, !tbaa !56
  %indvars.iv.next664.3 = add nuw nsw i64 %indvars.iv663, 4 ; 2 uses
  %niter1048.next.3 = add nuw i64 %niter1048, 4   ; 2 uses
  %niter1048.ncmp.3 = icmp eq i64 %niter1048.next.3, %unroll_iter1047
  br i1 %niter1048.ncmp.3, label %._crit_edge533.loopexit.unr-lcssa, label %.lr.ph532, !llvm.loop !120

._crit_edge533.loopexit.unr-lcssa:                ; preds = %.lr.ph532
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1043, 0
  br i1 %lcmp.mod1045.not, label %._crit_edge533, label %.lr.ph532.epil.preheader

.lr.ph532.epil.preheader:                         ; preds = %._crit_edge533.loopexit.unr-lcssa, %.lr.ph532.preheader
  %indvars.iv663.epil.init = phi i64 [ 1, %.lr.ph532.preheader ], [ %indvars.iv.next664.3, %._crit_edge533.loopexit.unr-lcssa ]
  %lcmp.mod1046 = icmp ne i64 %xtraiter1043, 0
  call void @llvm.assume(i1 %lcmp.mod1046)
  br label %.lr.ph532.epil

.lr.ph532.epil:                                   ; preds = %.lr.ph532.epil, %.lr.ph532.epil.preheader
  %indvars.iv663.epil = phi i64 [ %indvars.iv663.epil.init, %.lr.ph532.epil.preheader ], [ %indvars.iv.next664.epil, %.lr.ph532.epil ] ; 3 uses
  %epil.iter1044 = phi i64 [ 0, %.lr.ph532.epil.preheader ], [ %epil.iter1044.next, %.lr.ph532.epil ]
  %i.agp = mul nsw i64 %indvars.iv663.epil, %i.acy
  %i.agq = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.agp
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv663.epil
  store ptr %i.agq, ptr %i.agr, align 8, !tbaa !56
  %indvars.iv.next664.epil = add nuw nsw i64 %indvars.iv663.epil, 1
  %epil.iter1044.next = add i64 %epil.iter1044, 1 ; 2 uses
  %epil.iter1044.cmp.not = icmp eq i64 %epil.iter1044.next, %xtraiter1043
  br i1 %epil.iter1044.cmp.not, label %._crit_edge533, label %.lr.ph532.epil, !llvm.loop !121

._crit_edge533:                                   ; preds = %._crit_edge533.loopexit.unr-lcssa, %.lr.ph532.epil, %gv_calloc.exit457
  br i1 %.not.i443, label %bb.dt, label %.thread.i466

bb.dt:                                            ; preds = %._crit_edge533
  %mul.ov.i460 = icmp slt i32 %1, 0
  br i1 %mul.ov.i460, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ags = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.agt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ags, ptr noundef nonnull @.str.14, i64 noundef %i.acy, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.agu = call noalias ptr @calloc(i64 noundef %i.acy, i64 noundef 4) #16 ; 2 uses
  %i.agv = icmp eq ptr %i.agu, null
  br i1 %i.agv, label %bb.dw, label %gv_calloc.exit462

bb.dw:                                            ; preds = %bb.dv
  %i.agw = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.agx = shl nuw nsw i64 %i.acy, 2
  %i.agy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agw, ptr noundef nonnull @.str.15, i64 noundef %i.agx) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

.thread.i466:                                     ; preds = %._crit_edge533
  %i.agz = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.aha = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit467

gv_calloc.exit462:                                ; preds = %bb.dv
  %i.ahb = call noalias ptr @calloc(i64 noundef %i.acy, i64 noundef 4) #16 ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %bb.dx, label %gv_calloc.exit467

bb.dx:                                            ; preds = %gv_calloc.exit462
  %i.ahd = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahe = shl nuw nsw i64 %i.acy, 2
  %i.ahf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahd, ptr noundef nonnull @.str.15, i64 noundef %i.ahe) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit467:                                ; preds = %.thread.i466, %gv_calloc.exit462
  %i.ahg = phi ptr [ %i.agz, %.thread.i466 ], [ %i.agu, %gv_calloc.exit462 ] ; 11 uses
  %i.ahh = phi ptr [ %i.aha, %.thread.i466 ], [ %i.ahb, %gv_calloc.exit462 ] ; 30 uses
  %i.ahi = sext i32 %i.acw to i64                 ; 3 uses
  %.off = add i32 %i.acv, 1
  %.not.i468 = icmp ult i32 %.off, 3
  br i1 %.not.i468, label %.thread.i471, label %bb.dy

.thread.i471:                                     ; preds = %gv_calloc.exit467
  %i.ahj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit472

bb.dy:                                            ; preds = %gv_calloc.exit467
  %mul.ov.i470 = icmp slt i32 %i.acv, -1
  br i1 %mul.ov.i470, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ahk = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahk, ptr noundef nonnull @.str.14, i64 noundef %i.ahi, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ahm = call noalias ptr @calloc(i64 noundef %i.ahi, i64 noundef 4) #16 ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, null
  br i1 %i.ahn, label %bb.eb, label %gv_calloc.exit472

bb.eb:                                            ; preds = %bb.ea
  %i.aho = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahp = shl nuw nsw i64 %i.ahi, 2
  %i.ahq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aho, ptr noundef nonnull @.str.15, i64 noundef %i.ahp) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit472:                                ; preds = %.thread.i471, %bb.ea
  %i.ahr = phi ptr [ %i.ahj, %.thread.i471 ], [ %i.ahm, %bb.ea ] ; 13 uses
  %i.ahs = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not418 = icmp eq i8 %i.ahs, 0
  br i1 %.not418, label %.lr.ph585, label %bb.ec

bb.ec:                                            ; preds = %gv_calloc.exit472
  %i.aht = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahu = call double @elapsed_sec() #15
  %i.ahv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aht, ptr noundef nonnull @.str.6, double noundef %i.ahu) #17 ; 0 uses
  %i.ahw = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite419 = call i64 @fwrite(ptr nonnull @.str.10, i64 15, i64 1, ptr %i.ahw) #19 ; 0 uses
  call void @start_timer() #15
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %gv_calloc.exit472, %bb.ec
  %i.ahx = shl nuw nsw i64 %i.acy, 4
  %i.ahy = fpext float %i.act to double           ; 2 uses
  %i.ahz = add nsw i32 %1, -2
  %wide.trip.count708 = zext i32 %i.acq to i64
  %wide.trip.count674 = zext nneg i32 %4 to i64
  %wide.trip.count717 = zext i32 %1 to i64        ; 6 uses
  %i.aia = fadd double %i.ahy, 0.000000e+00
  %wide.trip.count722 = zext nneg i32 %4 to i64
  %wide.trip.count727 = zext nneg i32 %4 to i64
  %wide.trip.count732 = zext nneg i32 %4 to i64
  %wide.trip.count742 = zext nneg i32 %4 to i64
  %wide.trip.count747 = zext nneg i32 %4 to i64
  %xtraiter1067 = and i64 %wide.trip.count717, 1
  %unroll_iter1071 = and i64 %wide.trip.count717, 4294967294
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1067, 0
  %lcmp.mod1070 = trunc i32 %1 to i1
  %xtraiter1073 = and i64 %wide.trip.count717, 1
  %unroll_iter1077 = and i64 %wide.trip.count717, 4294967294
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1073, 0
  %lcmp.mod1076 = trunc i32 %1 to i1
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph585, %bb.eo
  %.0341583 = phi i32 [ 0, %.lr.ph585 ], [ %i.arw, %bb.eo ] ; 3 uses
  %.0354582 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph585 ], [ %.1353.lcssa, %bb.eo ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.aff, i8 0, i64 %i.ahx, i1 false)
  br i1 %i.acx, label %bb.ee, label %.preheader490.a

bb.ee:                                            ; preds = %bb.ed
  call void @sqrt_vecf(i32 noundef %i.acw, ptr noundef %.1364, ptr noundef %i.ahr) #15
  br label %.preheader490.a

.preheader490.a:                                  ; preds = %bb.ee, %bb.ed
  br i1 %i.bk, label %.lr.ph558, label %.lr.ph562.preheader

.lr.ph562.preheader:                              ; preds = %.loopexit484, %.preheader490.a
  br i1 %.not.i443, label %.lr.ph562, label %.preheader489

.lr.ph558:                                        ; preds = %.preheader490.a, %.loopexit484
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %.loopexit484 ], [ 0, %.preheader490.a ] ; 10 uses
  %indvars.iv687 = phi i32 [ %indvars.iv.next688, %.loopexit484 ], [ %i.ahz, %.preheader490.a ] ; 2 uses
  %indvars.iv668.in = phi i64 [ %indvars.iv668, %.loopexit484 ], [ %i.acy, %.preheader490.a ]
  %.3368556 = phi i32 [ %.6, %.loopexit484 ], [ 0, %.preheader490.a ] ; 3 uses
  %i.aib = trunc i64 %indvars.iv703 to i32
  %i.aic = sub i32 %i.acq, %i.aib                 ; 2 uses
  %i.aid = zext i32 %i.aic to i64                 ; 3 uses
  %i.aie = add nsw i64 %i.aid, -1                 ; 2 uses
  %i.aif = xor i64 %indvars.iv703, -1
  %i.aig = add nsw i64 %i.aif, %i.acy
  %umax922 = call i64 @llvm.umax.i64(i64 %i.aig, i64 1)
  %i.aih = shl i64 %umax922, 2                    ; 2 uses
  %scevgep923 = getelementptr i8, ptr %i.ahh, i64 %i.aih ; 2 uses
  %i.aii = shl nuw nsw i64 %indvars.iv703, 2
  %indvars.iv668 = add nsw i64 %indvars.iv668.in, -1 ; 10 uses
  %i.aij = trunc i64 %indvars.iv703 to i32
  %i.aik = sub i32 %i.acq, %i.aij
  %i.ail = zext i32 %i.aik to i64
  %i.aim = shl nuw nsw i64 %i.ail, 2
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv668, i64 1) ; 3 uses
  %i.ain = trunc nuw nsw i64 %indvars.iv703 to i32
  %i.aio = xor i32 %i.ain, -1
  %i.aip = add nsw i32 %1, %i.aio                 ; 5 uses
  call void @set_vector_valf(i32 noundef %i.aip, float noundef 0.000000e+00, ptr noundef %i.ahh) #15
  br i1 %i.abw, label %.preheader481.lr.ph, label %._crit_edge538.split

.preheader481.lr.ph:                              ; preds = %.lr.ph558
  %.not593 = icmp eq i32 %i.aip, 0
  br i1 %.not593, label %._crit_edge542.thread, label %.preheader481.preheader

.preheader481.preheader:                          ; preds = %.preheader481.lr.ph
  %min.iters.check930 = icmp ult i64 %indvars.iv668, 8
  %n.vec932 = and i64 %umax, -8                   ; 3 uses
  %cmp.n943 = icmp eq i64 %indvars.iv668, %n.vec932
  %xtraiter1049 = and i64 %umax, 1
  %lcmp.mod1050.not = icmp eq i64 %xtraiter1049, 0
  %invariant.op1092 = sub nuw i64 %umax, 1
  br label %.preheader481

.preheader481:                                    ; preds = %.preheader481.preheader, %._crit_edge536
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %._crit_edge536 ], [ 0, %.preheader481.preheader ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv671
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !56 ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv703 ; 6 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 4 ; 6 uses
  br i1 %min.iters.check930, label %scalar.ph929.preheader, label %vector.memcheck921

vector.memcheck921:                               ; preds = %.preheader481
  %i.aiu = getelementptr i8, ptr %i.air, i64 %i.aii
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 4
  %scevgep924 = getelementptr i8, ptr %i.aiv, i64 %i.aih
  %bound0 = icmp ult ptr %i.ahh, %scevgep924
  %bound1 = icmp ult ptr %i.ait, %scevgep923
  %found.conflict = and i1 %bound0, %bound1
  %bound0925 = icmp ult ptr %i.ahh, %i.ait
  %bound1926 = icmp ult ptr %i.ais, %scevgep923
  %found.conflict927 = and i1 %bound0925, %bound1926
  %conflict.rdx928 = or i1 %found.conflict, %found.conflict927
  br i1 %conflict.rdx928, label %scalar.ph929.preheader, label %vector.ph931

vector.ph931:                                     ; preds = %vector.memcheck921
  %i.aiw = load float, ptr %i.ais, align 4, !tbaa !48, !alias.scope !154
  %broadcast.splatinsert937 = insertelement <4 x float> poison, float %i.aiw, i64 0
  %broadcast.splat938 = shufflevector <4 x float> %broadcast.splatinsert937, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph931
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next941, %vector.body933 ] ; 3 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %index934 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  %wide.load935 = load <4 x float>, ptr %i.aix, align 4, !tbaa !48, !alias.scope !155
  %wide.load936 = load <4 x float>, ptr %i.aiy, align 4, !tbaa !48, !alias.scope !155
  %i.aiz = fsub <4 x float> %broadcast.splat938, %wide.load935 ; 2 uses
  %i.aja = fsub <4 x float> %broadcast.splat938, %wide.load936 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %index934 ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 2 uses
  %wide.load939 = load <4 x float>, ptr %i.ajb, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %wide.load940 = load <4 x float>, ptr %i.ajc, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %i.ajd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiz, <4 x float> %i.aiz, <4 x float> %wide.load939)
  %i.aje = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aja, <4 x float> %i.aja, <4 x float> %wide.load940)
  store <4 x float> %i.ajd, ptr %i.ajb, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  store <4 x float> %i.aje, ptr %i.ajc, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %index.next941 = add nuw i64 %index934, 8       ; 2 uses
  %i.ajf = icmp eq i64 %index.next941, %n.vec932
  br i1 %i.ajf, label %middle.block942, label %vector.body933, !llvm.loop !126

middle.block942:                                  ; preds = %vector.body933
  br i1 %cmp.n943, label %._crit_edge536, label %scalar.ph929.preheader

scalar.ph929.preheader:                           ; preds = %vector.memcheck921, %.preheader481, %middle.block942
  %.0342534.ph = phi i64 [ 0, %vector.memcheck921 ], [ 0, %.preheader481 ], [ %n.vec932, %middle.block942 ] ; 5 uses
  br i1 %lcmp.mod1050.not, label %scalar.ph929.prol.loopexit, label %scalar.ph929.prol

scalar.ph929.prol:                                ; preds = %scalar.ph929.preheader
  %i.ajg = load float, ptr %i.ais, align 4, !tbaa !48
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.0342534.ph
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !48
  %i.ajj = fsub float %i.ajg, %i.aji              ; 2 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %.0342534.ph ; 2 uses
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !48
  %i.ajm = call float @llvm.fmuladd.f32(float %i.ajj, float %i.ajj, float %i.ajl)
  store float %i.ajm, ptr %i.ajk, align 4, !tbaa !48
  %i.ajn = or disjoint i64 %.0342534.ph, 1
  br label %scalar.ph929.prol.loopexit

scalar.ph929.prol.loopexit:                       ; preds = %scalar.ph929.prol, %scalar.ph929.preheader
  %.0342534.unr = phi i64 [ %.0342534.ph, %scalar.ph929.preheader ], [ %i.ajn, %scalar.ph929.prol ]
  %i.ajo = icmp eq i64 %.0342534.ph, %invariant.op1092
  br i1 %i.ajo, label %._crit_edge536, label %scalar.ph929

scalar.ph929:                                     ; preds = %scalar.ph929.prol.loopexit, %scalar.ph929
  %.0342534 = phi i64 [ %i.ake, %scalar.ph929 ], [ %.0342534.unr, %scalar.ph929.prol.loopexit ] ; 4 uses
  %i.ajp = load float, ptr %i.ais, align 4, !tbaa !48
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.0342534
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !48
  %i.ajs = fsub float %i.ajp, %i.ajr              ; 2 uses
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %.0342534 ; 2 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !48
  %i.ajv = call float @llvm.fmuladd.f32(float %i.ajs, float %i.ajs, float %i.aju)
  store float %i.ajv, ptr %i.ajt, align 4, !tbaa !48
  %i.ajw = add nuw i64 %.0342534, 1               ; 2 uses
  %i.ajx = load float, ptr %i.ais, align 4, !tbaa !48
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %i.ajw
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !48
  %i.aka = fsub float %i.ajx, %i.ajz              ; 2 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ajw ; 2 uses
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !48
  %i.akd = call float @llvm.fmuladd.f32(float %i.aka, float %i.aka, float %i.akc)
  store float %i.akd, ptr %i.akb, align 4, !tbaa !48
  %i.ake = add nuw i64 %.0342534, 2               ; 2 uses
  %exitcond670.not.1 = icmp eq i64 %indvars.iv668, %i.ake
  br i1 %exitcond670.not.1, label %._crit_edge536, label %scalar.ph929, !llvm.loop !127

._crit_edge536:                                   ; preds = %scalar.ph929.prol.loopexit, %scalar.ph929, %middle.block942
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond675.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count674
  br i1 %exitcond675.not, label %._crit_edge538.split, label %.preheader481, !llvm.loop !128

._crit_edge538.split:                             ; preds = %._crit_edge536, %.lr.ph558
  call void @invert_sqrt_vec(i32 noundef %i.aip, ptr noundef %i.ahh) #15
  %i.akf = icmp sgt i32 %i.aip, 0                 ; 3 uses
  br i1 %i.akf, label %.lr.ph541.preheader, label %._crit_edge542

.lr.ph541.preheader:                              ; preds = %._crit_edge538.split
  %wide.trip.count681 = and i64 %indvars.iv668, 4294967295 ; 3 uses
  %min.iters.check896 = icmp samesign ult i64 %wide.trip.count681, 8
  br i1 %min.iters.check896, label %.lr.ph541.preheader957, label %vector.ph897

vector.ph897:                                     ; preds = %.lr.ph541.preheader
  %n.vec898 = and i64 %indvars.iv668, 4294967288  ; 3 uses
  br label %vector.body899

vector.body899:                                   ; preds = %pred.store.continue916, %vector.ph897
  %index900 = phi i64 [ 0, %vector.ph897 ], [ %index.next917, %pred.store.continue916 ] ; 9 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %index900 ; 3 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %wide.load901 = load <4 x float>, ptr %i.akg, align 4, !tbaa !48 ; 2 uses
  %wide.load902 = load <4 x float>, ptr %i.akh, align 4, !tbaa !48 ; 2 uses
  %i.aki = fcmp oge <4 x float> %wide.load901, splat (float f0x7F7FFFFF)
  %i.akj = fcmp oge <4 x float> %wide.load902, splat (float f0x7F7FFFFF)
  %i.akk = fcmp olt <4 x float> %wide.load901, zeroinitializer
  %i.akl = fcmp olt <4 x float> %wide.load902, zeroinitializer
  %i.akm = or <4 x i1> %i.aki, %i.akk             ; 4 uses
  %i.akn = or <4 x i1> %i.akj, %i.akl             ; 4 uses
  %i.ako = extractelement <4 x i1> %i.akm, i64 0
  br i1 %i.ako, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body899
  store float 0.000000e+00, ptr %i.akg, align 4, !tbaa !48
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body899
  %i.akp = extractelement <4 x i1> %i.akm, i64 1
  br i1 %i.akp, label %pred.store.if903, label %pred.store.continue904

pred.store.if903:                                 ; preds = %pred.store.continue
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %index900
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  store float 0.000000e+00, ptr %i.akr, align 4, !tbaa !48
  br label %pred.store.continue904

pred.store.continue904:                           ; preds = %pred.store.if903, %pred.store.continue
  %i.aks = extractelement <4 x i1> %i.akm, i64 2
  br i1 %i.aks, label %pred.store.if905, label %pred.store.continue906

pred.store.if905:                                 ; preds = %pred.store.continue904
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %index900
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store float 0.000000e+00, ptr %i.aku, align 4, !tbaa !48
  br label %pred.store.continue906

pred.store.continue906:                           ; preds = %pred.store.if905, %pred.store.continue904
  %i.akv = extractelement <4 x i1> %i.akm, i64 3
  br i1 %i.akv, label %pred.store.if907, label %pred.store.continue908

pred.store.if907:                                 ; preds = %pred.store.continue906
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %index900
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 12
  store float 0.000000e+00, ptr %i.akx, align 4, !tbaa !48
  br label %pred.store.continue908

pred.store.continue908:                           ; preds = %pred.store.if907, %pred.store.continue906
  %i.aky = extractelement <4 x i1> %i.akn, i64 0
  br i1 %i.aky, label %pred.store.if909, label %pred.store.continue910
end_hunk_2
begin_hunk_3_@stress_majorization_kD_mkernel:bb.a
  %cmp.n919 = icmp eq i64 %wide.trip.count681, %n.vec898
  br i1 %cmp.n919, label %._crit_edge542, label %.lr.ph541.preheader957

.lr.ph541.preheader957:                           ; preds = %.lr.ph541.preheader, %middle.block918
  %indvars.iv676.ph = phi i64 [ 0, %.lr.ph541.preheader ], [ %n.vec898, %middle.block918 ]
  br label %.lr.ph541

.lr.ph541:                                        ; preds = %.lr.ph541.preheader957, %bb.eg
  %indvars.iv676 = phi i64 [ %indvars.iv.next677, %bb.eg ], [ %indvars.iv676.ph, %.lr.ph541.preheader957 ] ; 2 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv676 ; 2 uses
  %i.alm = load float, ptr %i.all, align 4, !tbaa !48 ; 2 uses
  %i.aln = fcmp oge float %i.alm, f0x7F7FFFFF
  %i.alo = fcmp olt float %i.alm, 0.000000e+00
  %or.cond427 = or i1 %i.aln, %i.alo
  br i1 %or.cond427, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph541
  store float 0.000000e+00, ptr %i.all, align 4, !tbaa !48
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph541, %bb.ef
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1 ; 2 uses
  %exitcond682.not = icmp eq i64 %indvars.iv.next677, %wide.trip.count681
  br i1 %exitcond682.not, label %._crit_edge542, label %.lr.ph541, !llvm.loop !130

._crit_edge542:                                   ; preds = %bb.eg, %middle.block918, %._crit_edge538.split
  %i.alp = add i32 %.3368556, 1                   ; 4 uses
  br i1 %i.acx, label %.preheader483, label %.preheader485

._crit_edge542.thread:                            ; preds = %.preheader481.lr.ph
  call void @invert_sqrt_vec(i32 noundef %i.aip, ptr noundef %i.ahh) #15
  %i.alq = add i32 %.3368556, 1
  br label %.loopexit484

.preheader485:                                    ; preds = %._crit_edge542
  br i1 %i.akf, label %.lr.ph546.preheader, label %.loopexit484

.lr.ph546.preheader:                              ; preds = %.preheader485
  %i.alr = sext i32 %i.alp to i64
  %i.als = shl nsw i64 %i.alr, 2
  %scevgep = getelementptr i8, ptr %i.ahr, i64 %i.als
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.ahh, i64 %i.aim, i1 false), !tbaa !48
  %invariant.gep826 = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv703 ; 3 uses
  %xtraiter1052 = and i64 %indvars.iv668, 1
  %i.alt = icmp eq i64 %i.aie, 0
  br i1 %i.alt, label %.lr.ph546.epil.preheader, label %.lr.ph546.preheader.new

.lr.ph546.preheader.new:                          ; preds = %.lr.ph546.preheader
  %unroll_iter1057 = and i64 %indvars.iv668, 4294967294
  br label %.lr.ph546

.preheader483:                                    ; preds = %._crit_edge542
  br i1 %i.akf, label %.lr.ph552.preheader, label %.loopexit484

.lr.ph552.preheader:                              ; preds = %.preheader483
  %i.alu = sext i32 %i.alp to i64                 ; 2 uses
  %invariant.gep828 = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv703 ; 3 uses
  %xtraiter1059 = and i64 %i.aid, 1
  %i.alv = icmp eq i64 %i.aie, 0
  br i1 %i.alv, label %.lr.ph552.epil.preheader, label %.lr.ph552.preheader.new

.lr.ph552.preheader.new:                          ; preds = %.lr.ph552.preheader
  %unroll_iter1065 = and i64 %i.aid, 4294967294
  br label %.lr.ph552

.lr.ph552:                                        ; preds = %.lr.ph552, %.lr.ph552.preheader.new
  %indvars.iv696 = phi i64 [ 0, %.lr.ph552.preheader.new ], [ %indvars.iv.next697.1, %.lr.ph552 ] ; 4 uses
  %indvars.iv694 = phi i64 [ %i.alu, %.lr.ph552.preheader.new ], [ %indvars.iv.next695.1, %.lr.ph552 ] ; 3 uses
  %.1360551 = phi x86_fp80 [ 0.000000e+00, %.lr.ph552.preheader.new ], [ %i.amn, %.lr.ph552 ]
  %niter1066 = phi i64 [ 0, %.lr.ph552.preheader.new ], [ %niter1066.next.1, %.lr.ph552 ]
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv696
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !48
  %i.aly = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %indvars.iv694 ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !48
  %i.ama = fmul float %i.alx, %i.alz              ; 2 uses
  store float %i.ama, ptr %i.aly, align 4, !tbaa !48
  %i.amb = fpext float %i.ama to x86_fp80         ; 2 uses
  %i.amc = fadd x86_fp80 %.1360551, %i.amb
  %gep829 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep828, i64 %indvars.iv696
  %i.amd = getelementptr inbounds nuw i8, ptr %gep829, i64 16 ; 2 uses
  %i.ame = load x86_fp80, ptr %i.amd, align 16, !tbaa !153
  %i.amf = fsub x86_fp80 %i.ame, %i.amb
  store x86_fp80 %i.amf, ptr %i.amd, align 16, !tbaa !153
  %indvars.iv.next697 = or disjoint i64 %indvars.iv696, 1 ; 2 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv.next697
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !48
  %i.ami = getelementptr [4 x i8], ptr %i.ahr, i64 %indvars.iv694
  %i.amj = getelementptr i8, ptr %i.ami, i64 4    ; 2 uses
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !48
  %i.aml = fmul float %i.amh, %i.amk              ; 2 uses
  store float %i.aml, ptr %i.amj, align 4, !tbaa !48
  %i.amm = fpext float %i.aml to x86_fp80         ; 2 uses
  %i.amn = fadd x86_fp80 %i.amc, %i.amm           ; 3 uses
  %gep829.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep828, i64 %indvars.iv.next697
  %i.amo = getelementptr inbounds nuw i8, ptr %gep829.1, i64 16 ; 2 uses
  %i.amp = load x86_fp80, ptr %i.amo, align 16, !tbaa !153
  %i.amq = fsub x86_fp80 %i.amp, %i.amm
  store x86_fp80 %i.amq, ptr %i.amo, align 16, !tbaa !153
  %indvars.iv.next697.1 = add nuw nsw i64 %indvars.iv696, 2 ; 2 uses
  %indvars.iv.next695.1 = add nsw i64 %indvars.iv694, 2 ; 3 uses
  %niter1066.next.1 = add i64 %niter1066, 2       ; 2 uses
  %niter1066.ncmp.1 = icmp eq i64 %niter1066.next.1, %unroll_iter1065
  br i1 %niter1066.ncmp.1, label %.loopexit484.loopexit.unr-lcssa, label %.lr.ph552, !llvm.loop !131

.lr.ph546:                                        ; preds = %.lr.ph546, %.lr.ph546.preheader.new
  %indvars.iv685 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %indvars.iv.next686.1, %.lr.ph546 ] ; 4 uses
  %.2361545 = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader.new ], [ %i.anb, %.lr.ph546 ]
  %niter1058 = phi i64 [ 0, %.lr.ph546.preheader.new ], [ %niter1058.next.1, %.lr.ph546 ]
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv685
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !48
  %i.amt = fpext float %i.ams to x86_fp80         ; 2 uses
  %i.amu = fadd x86_fp80 %.2361545, %i.amt
  %gep827 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep826, i64 %indvars.iv685
  %i.amv = getelementptr inbounds nuw i8, ptr %gep827, i64 16 ; 2 uses
  %i.amw = load x86_fp80, ptr %i.amv, align 16, !tbaa !153
  %i.amx = fsub x86_fp80 %i.amw, %i.amt
  store x86_fp80 %i.amx, ptr %i.amv, align 16, !tbaa !153
  %indvars.iv.next686 = or disjoint i64 %indvars.iv685, 1 ; 2 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv.next686
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !48
  %i.ana = fpext float %i.amz to x86_fp80         ; 2 uses
  %i.anb = fadd x86_fp80 %i.amu, %i.ana           ; 3 uses
  %gep827.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep826, i64 %indvars.iv.next686
  %i.anc = getelementptr inbounds nuw i8, ptr %gep827.1, i64 16 ; 2 uses
  %i.and = load x86_fp80, ptr %i.anc, align 16, !tbaa !153
  %i.ane = fsub x86_fp80 %i.and, %i.ana
  store x86_fp80 %i.ane, ptr %i.anc, align 16, !tbaa !153
  %indvars.iv.next686.1 = add nuw nsw i64 %indvars.iv685, 2 ; 2 uses
  %niter1058.next.1 = add i64 %niter1058, 2       ; 2 uses
  %niter1058.ncmp.1 = icmp eq i64 %niter1058.next.1, %unroll_iter1057
  br i1 %niter1058.ncmp.1, label %.loopexit484.loopexit594.unr-lcssa, label %.lr.ph546, !llvm.loop !132

.loopexit484.loopexit.unr-lcssa:                  ; preds = %.lr.ph552
  %lcmp.mod1061.not = icmp eq i64 %xtraiter1059, 0
  br i1 %lcmp.mod1061.not, label %.loopexit484.loopexit, label %.lr.ph552.epil.preheader

.lr.ph552.epil.preheader:                         ; preds = %.loopexit484.loopexit.unr-lcssa, %.lr.ph552.preheader
  %indvars.iv696.epil.init = phi i64 [ 0, %.lr.ph552.preheader ], [ %indvars.iv.next697.1, %.loopexit484.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv694.epil.init = phi i64 [ %i.alu, %.lr.ph552.preheader ], [ %indvars.iv.next695.1, %.loopexit484.loopexit.unr-lcssa ] ; 2 uses
  %.1360551.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph552.preheader ], [ %i.amn, %.loopexit484.loopexit.unr-lcssa ]
  %lcmp.mod1064 = trunc i32 %i.aic to i1
  call void @llvm.assume(i1 %lcmp.mod1064)
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv696.epil.init
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !48
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %indvars.iv694.epil.init ; 2 uses
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !48
  %i.anj = fmul float %i.ang, %i.ani              ; 2 uses
  store float %i.anj, ptr %i.anh, align 4, !tbaa !48
  %i.ank = fpext float %i.anj to x86_fp80         ; 2 uses
  %i.anl = fadd x86_fp80 %.1360551.epil.init, %i.ank
  %gep829.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep828, i64 %indvars.iv696.epil.init
  %i.anm = getelementptr inbounds nuw i8, ptr %gep829.epil, i64 16 ; 2 uses
  %i.ann = load x86_fp80, ptr %i.anm, align 16, !tbaa !153
  %i.ano = fsub x86_fp80 %i.ann, %i.ank
  store x86_fp80 %i.ano, ptr %i.anm, align 16, !tbaa !153
  %indvars.iv.next695.epil = add nsw i64 %indvars.iv694.epil.init, 1
  br label %.loopexit484.loopexit

.loopexit484.loopexit:                            ; preds = %.loopexit484.loopexit.unr-lcssa, %.lr.ph552.epil.preheader
  %.lcssa961 = phi x86_fp80 [ %i.amn, %.loopexit484.loopexit.unr-lcssa ], [ %i.anl, %.lr.ph552.epil.preheader ]
  %indvars.iv.next695.lcssa = phi i64 [ %indvars.iv.next695.1, %.loopexit484.loopexit.unr-lcssa ], [ %indvars.iv.next695.epil, %.lr.ph552.epil.preheader ]
  %i.anp = trunc nsw i64 %indvars.iv.next695.lcssa to i32
  br label %.loopexit484

.loopexit484.loopexit594.unr-lcssa:               ; preds = %.lr.ph546
  %lcmp.mod1054.not = icmp eq i64 %xtraiter1052, 0
  br i1 %lcmp.mod1054.not, label %.loopexit484.loopexit594, label %.lr.ph546.epil.preheader

.lr.ph546.epil.preheader:                         ; preds = %.loopexit484.loopexit594.unr-lcssa, %.lr.ph546.preheader
  %indvars.iv685.epil.init = phi i64 [ 0, %.lr.ph546.preheader ], [ %indvars.iv.next686.1, %.loopexit484.loopexit594.unr-lcssa ] ; 2 uses
  %.2361545.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph546.preheader ], [ %i.anb, %.loopexit484.loopexit594.unr-lcssa ]
  %lcmp.mod1056 = trunc i64 %indvars.iv668 to i1
  call void @llvm.assume(i1 %lcmp.mod1056)
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv685.epil.init
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !48
  %i.ans = fpext float %i.anr to x86_fp80         ; 2 uses
  %i.ant = fadd x86_fp80 %.2361545.epil.init, %i.ans
  %gep827.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep826, i64 %indvars.iv685.epil.init
  %i.anu = getelementptr inbounds nuw i8, ptr %gep827.epil, i64 16 ; 2 uses
  %i.anv = load x86_fp80, ptr %i.anu, align 16, !tbaa !153
  %i.anw = fsub x86_fp80 %i.anv, %i.ans
  store x86_fp80 %i.anw, ptr %i.anu, align 16, !tbaa !153
  br label %.loopexit484.loopexit594

.loopexit484.loopexit594:                         ; preds = %.loopexit484.loopexit594.unr-lcssa, %.lr.ph546.epil.preheader
  %.lcssa = phi x86_fp80 [ %i.anb, %.loopexit484.loopexit594.unr-lcssa ], [ %i.ant, %.lr.ph546.epil.preheader ]
  %i.anx = add i32 %.3368556, 2
  %i.any = add i32 %i.anx, %indvars.iv687
  br label %.loopexit484

.loopexit484:                                     ; preds = %._crit_edge542.thread, %.loopexit484.loopexit594, %.loopexit484.loopexit, %.preheader485, %.preheader483
  %.6 = phi i32 [ %i.anp, %.loopexit484.loopexit ], [ %i.alp, %.preheader483 ], [ %i.alp, %.preheader485 ], [ %i.any, %.loopexit484.loopexit594 ], [ %i.alq, %._crit_edge542.thread ]
  %.3362 = phi x86_fp80 [ %.lcssa961, %.loopexit484.loopexit ], [ 0.000000e+00, %.preheader483 ], [ 0.000000e+00, %.preheader485 ], [ %.lcssa, %.loopexit484.loopexit594 ], [ 0.000000e+00, %._crit_edge542.thread ]
  %i.anz = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv703 ; 2 uses
  %i.aoa = load x86_fp80, ptr %i.anz, align 16, !tbaa !153
  %i.aob = fsub x86_fp80 %i.aoa, %.3362
  store x86_fp80 %i.aob, ptr %i.anz, align 16, !tbaa !153
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %indvars.iv.next688 = add i32 %indvars.iv687, -1
  %exitcond709.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count708
  br i1 %exitcond709.not, label %.lr.ph562.preheader, label %.lr.ph558, !llvm.loop !133

.preheader489.loopexit.unr-lcssa:                 ; preds = %.lr.ph562
  br i1 %lcmp.mod1069.not, label %.preheader489, label %.lr.ph562.epil.preheader

.lr.ph562.epil.preheader:                         ; preds = %.preheader489.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1070)
  %i.aoc = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv.next713.1
  %i.aod = load x86_fp80, ptr %i.aoc, align 16, !tbaa !153
  %i.aoe = fptrunc x86_fp80 %i.aod to float
  %i.aof = sext i32 %i.aow to i64
  %i.aog = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %i.aof
  store float %i.aoe, ptr %i.aog, align 4, !tbaa !48
  br label %.preheader489

.preheader489:                                    ; preds = %.lr.ph562.epil.preheader, %.preheader489.loopexit.unr-lcssa, %.lr.ph562.preheader
  br i1 %i.abw, label %.lr.ph564, label %._crit_edge574

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %.lr.ph562
  %indvars.iv712 = phi i64 [ %indvars.iv.next713.1, %.lr.ph562 ], [ 0, %.lr.ph562.preheader ] ; 3 uses
  %indvars.iv710 = phi i64 [ %indvars.iv.next711.1, %.lr.ph562 ], [ %i.acy, %.lr.ph562.preheader ] ; 3 uses
  %.7560 = phi i32 [ %i.aow, %.lr.ph562 ], [ 0, %.lr.ph562.preheader ] ; 2 uses
  %niter1072 = phi i64 [ %niter1072.next.1, %.lr.ph562 ], [ 0, %.lr.ph562.preheader ]
  %i.aoh = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv712
  %i.aoi = load x86_fp80, ptr %i.aoh, align 16, !tbaa !153
  %i.aoj = fptrunc x86_fp80 %i.aoi to float
  %i.aok = sext i32 %.7560 to i64
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %i.aok
  store float %i.aoj, ptr %i.aol, align 4, !tbaa !48
  %i.aom = trunc nsw i64 %indvars.iv710 to i32
  %i.aon = add nsw i32 %.7560, %i.aom             ; 2 uses
  %i.aoo = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %indvars.iv712
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %i.aoq = load x86_fp80, ptr %i.aop, align 16, !tbaa !153
  %i.aor = fptrunc x86_fp80 %i.aoq to float
  %i.aos = sext i32 %i.aon to i64
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.ahr, i64 %i.aos
  store float %i.aor, ptr %i.aot, align 4, !tbaa !48
  %indvars.iv.next713.1 = add nuw nsw i64 %indvars.iv712, 2 ; 2 uses
  %i.aou = trunc i64 %indvars.iv710 to i32
  %i.aov = add i32 %i.aou, -1
  %i.aow = add nsw i32 %i.aon, %i.aov             ; 2 uses
  %indvars.iv.next711.1 = add nsw i64 %indvars.iv710, -2
  %niter1072.next.1 = add i64 %niter1072, 2       ; 2 uses
  %niter1072.ncmp.1 = icmp eq i64 %niter1072.next.1, %unroll_iter1071
  br i1 %niter1072.ncmp.1, label %.preheader489.loopexit.unr-lcssa, label %.lr.ph562, !llvm.loop !134

.lr.ph564:                                        ; preds = %.preheader489, %.lr.ph564
  %indvars.iv719 = phi i64 [ %indvars.iv.next720, %.lr.ph564 ], [ 0, %.preheader489 ] ; 3 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv719
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !56
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv719
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !56
  call void @right_mult_with_vector_ff(ptr noundef %i.ahr, i32 noundef %1, ptr noundef %i.aoy, ptr noundef %i.apa) #15
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %exitcond723.not = icmp eq i64 %indvars.iv.next720, %wide.trip.count722
  br i1 %exitcond723.not, label %.lr.ph567, label %.lr.ph564, !llvm.loop !135

.lr.ph567:                                        ; preds = %.lr.ph564, %.lr.ph567
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %.lr.ph567 ], [ 0, %.lr.ph564 ] ; 3 uses
  %.0352566 = phi double [ %i.apg, %.lr.ph567 ], [ 0.000000e+00, %.lr.ph564 ]
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv724
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !56
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv724
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !56
  %i.apf = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.apc, ptr noundef %i.ape) #15
  %i.apg = fadd double %.0352566, %i.apf          ; 2 uses
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 1 ; 2 uses
  %exitcond728.not = icmp eq i64 %indvars.iv.next725, %wide.trip.count727
  br i1 %exitcond728.not, label %.lr.ph573.preheader, label %.lr.ph567, !llvm.loop !136

.lr.ph573.preheader:                              ; preds = %.lr.ph567
  %i.aph = fmul double %i.apg, 2.000000e+00
  %i.api = fadd double %i.aph, %i.ahy
  br label %.lr.ph573

.lr.ph573:                                        ; preds = %.lr.ph573.preheader, %.lr.ph573
  %indvars.iv729 = phi i64 [ 0, %.lr.ph573.preheader ], [ %indvars.iv.next730, %.lr.ph573 ] ; 2 uses
  %.1353571 = phi double [ %i.api, %.lr.ph573.preheader ], [ %i.apn, %.lr.ph573 ]
  %i.apj = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv729 ; 2 uses
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !56
  call void @right_mult_with_vector_ff(ptr noundef %.1364, i32 noundef %1, ptr noundef %i.apk, ptr noundef %i.ahg) #15
  %i.apl = load ptr, ptr %i.apj, align 8, !tbaa !56
  %i.apm = call double @vectors_inner_productf(i32 noundef %1, ptr noundef %i.apl, ptr noundef %i.ahg) #15
  %i.apn = fsub double %.1353571, %i.apm          ; 2 uses
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %._crit_edge574, label %.lr.ph573, !llvm.loop !137

._crit_edge574:                                   ; preds = %.lr.ph573, %.preheader489
  %.1353.lcssa = phi double [ %i.aia, %.preheader489 ], [ %i.apn, %.lr.ph573 ] ; 4 uses
  %i.apo = fsub double %.0354582, %.1353.lcssa
  %i.app = call double @llvm.fabs.f64(double %i.apo)
  %i.apq = fdiv double %i.app, %.0354582
  %i.apr = load double, ptr @Epsilon, align 8, !tbaa !35 ; 2 uses
  %i.aps = fcmp olt double %i.apq, %i.apr
  %i.apt = fcmp olt double %.1353.lcssa, %i.apr
  br i1 %i.abw, label %.lr.ph580, label %._crit_edge581

.lr.ph580:                                        ; preds = %._crit_edge574
  br i1 %.0346, label %.lr.ph580.split.us, label %.lr.ph580.split

.lr.ph580.split.us:                               ; preds = %.lr.ph580, %bb.eh
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.eh ], [ 0, %.lr.ph580 ] ; 3 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv744
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !56
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv744
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !56
  %i.apy = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.apv, ptr noundef %i.apx, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.apz = icmp slt i32 %i.apy, 0
  br i1 %i.apz, label %.thread, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph580.split.us
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count747
  br i1 %exitcond748.not, label %._crit_edge581, label %.lr.ph580.split.us, !llvm.loop !138

.lr.ph580.split:                                  ; preds = %.lr.ph580, %.loopexit
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %.loopexit ], [ 0, %.lr.ph580 ] ; 3 uses
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv739 ; 4 uses
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !56
  call void @copy_vectorf(i32 noundef %1, ptr noundef %i.aqb, ptr noundef %i.ahg) #15
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %indvars.iv739
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !56
  %i.aqe = call i32 @conjugate_gradient_mkernel(ptr noundef %.1364, ptr noundef %i.ahg, ptr noundef %i.aqd, i32 noundef %1, double noundef 1.000000e-03, i32 noundef %1) #15
  %i.aqf = icmp slt i32 %i.aqe, 0
  br i1 %i.aqf, label %.thread, label %.lr.ph577.preheader

.lr.ph577.preheader:                              ; preds = %.lr.ph580.split
  br i1 %.not.i443, label %.lr.ph577, label %.loopexit

.lr.ph577:                                        ; preds = %.lr.ph577.preheader, %bb.ek
  %indvars.iv734 = phi i64 [ %indvars.iv.next735.1, %bb.ek ], [ 0, %.lr.ph577.preheader ] ; 5 uses
  %niter1078 = phi i64 [ %niter1078.next.1, %bb.ek ], [ 0, %.lr.ph577.preheader ]
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv734
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !14
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !19
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 163
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !34
  %i.aqm = icmp ugt i8 %i.aql, 1
  br i1 %i.aqm, label %.lr.ph577.1, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph577
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv734
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !48
  %i.aqp = load ptr, ptr %i.aqa, align 8, !tbaa !56
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %indvars.iv734
  store float %i.aqo, ptr %i.aqq, align 4, !tbaa !48
  br label %.lr.ph577.1

.lr.ph577.1:                                      ; preds = %.lr.ph577, %bb.ei
  %indvars.iv.next735 = or disjoint i64 %indvars.iv734, 1 ; 3 uses
  %i.aqr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next735
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !14
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !19
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 163
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !34
  %i.aqx = icmp ugt i8 %i.aqw, 1
  br i1 %i.aqx, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph577.1
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next735
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !48
  %i.ara = load ptr, ptr %i.aqa, align 8, !tbaa !56
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %indvars.iv.next735
  store float %i.aqz, ptr %i.arb, align 4, !tbaa !48
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph577.1
  %indvars.iv.next735.1 = add nuw nsw i64 %indvars.iv734, 2 ; 4 uses
  %niter1078.next.1 = add i64 %niter1078, 2       ; 2 uses
  %niter1078.ncmp.1 = icmp eq i64 %niter1078.next.1, %unroll_iter1077
  br i1 %niter1078.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph577, !llvm.loop !139

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ek
  br i1 %lcmp.mod1075.not, label %.loopexit, label %.lr.ph577.epil.preheader

.lr.ph577.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1076)
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next735.1
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !14
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 16
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !19
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 163
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !34
  %i.ari = icmp ugt i8 %i.arh, 1
  br i1 %i.ari, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %.lr.ph577.epil.preheader
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv.next735.1
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !48
  %i.arl = load ptr, ptr %i.aqa, align 8, !tbaa !56
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %indvars.iv.next735.1
  store float %i.ark, ptr %i.arm, align 4, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.el, %.lr.ph577.epil.preheader, %.lr.ph577.preheader
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge581, label %.lr.ph580.split, !llvm.loop !138

._crit_edge581:                                   ; preds = %.loopexit, %bb.eh, %._crit_edge574
  %i.arn = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not423 = icmp ne i8 %i.arn, 0
  %i.aro = urem i32 %.0341583, 5
  %i.arp = icmp eq i32 %i.aro, 0
  %or.cond429 = and i1 %i.arp, %.not423
  br i1 %or.cond429, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %._crit_edge581
  %i.arq = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.arr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arq, ptr noundef nonnull @.str.11, double noundef %.1353.lcssa) #17 ; 0 uses
  %i.ars = add nuw nsw i32 %.0341583, 5
  %i.art = urem i32 %i.ars, 50
  %i.aru = icmp eq i32 %i.art, 0
  br i1 %i.aru, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.arv = load ptr, ptr @stderr, align 8, !tbaa !39
  %fputc = call i32 @fputc(i32 10, ptr %i.arv)    ; 0 uses
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge581, %bb.en, %bb.em
  %i.arw = add nuw nsw i32 %.0341583, 1           ; 5 uses
  %i.arx = icmp sge i32 %i.arw, %7
  %i.ary = select i1 %i.arx, i1 true, i1 %i.aps
  %.not421 = select i1 %i.ary, i1 true, i1 %i.apt
  br i1 %.not421, label %._crit_edge586, label %bb.ed, !llvm.loop !140

._crit_edge586:                                   ; preds = %bb.eo
  %i.arz = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not422 = icmp eq i8 %i.arz, 0
  br i1 %.not422, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge586
  %i.asa = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.asb = call fastcc double @compute_stressf(ptr noundef %i.abk, ptr noundef %.1364, i32 noundef %4, i32 noundef %1, i32 noundef %i.e)
  %i.asc = call double @elapsed_sec() #15
  %i.asd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asa, ptr noundef nonnull @.str.13, double noundef %i.asb, i32 noundef %i.arw, double noundef %i.asc) #17 ; 0 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge586
  %or.cond592 = and i1 %i.abw, %.not.i443
  br i1 %or.cond592, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.eq
  %wide.trip.count757 = zext nneg i32 %4 to i64
  %wide.trip.count752 = zext nneg i32 %1 to i64
  %min.iters.check946 = icmp ult i32 %1, 4
  %n.vec948 = and i64 %wide.trip.count717, 4294967292 ; 3 uses
  %cmp.n955 = icmp eq i64 %n.vec948, %wide.trip.count717
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge590
  %indvars.iv754 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next755, %._crit_edge590 ] ; 3 uses
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv754
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !56 ; 2 uses
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv754
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check946, label %scalar.ph945.preheader, label %vector.body949

vector.body949:                                   ; preds = %.preheader, %vector.body949
  %index950 = phi i64 [ %index.next953, %vector.body949 ], [ 0, %.preheader ] ; 3 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %index950 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %wide.load951 = load <2 x float>, ptr %i.asi, align 4, !tbaa !48
  %wide.load952 = load <2 x float>, ptr %i.asj, align 4, !tbaa !48
  %i.ask = fpext <2 x float> %wide.load951 to <2 x double>
  %i.asl = fpext <2 x float> %wide.load952 to <2 x double>
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %index950 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 16
  store <2 x double> %i.ask, ptr %i.asm, align 8, !tbaa !35
  store <2 x double> %i.asl, ptr %i.asn, align 8, !tbaa !35
  %index.next953 = add nuw i64 %index950, 4       ; 2 uses
  %i.aso = icmp eq i64 %index.next953, %n.vec948
  br i1 %i.aso, label %middle.block954, label %vector.body949, !llvm.loop !141

middle.block954:                                  ; preds = %vector.body949
  br i1 %cmp.n955, label %._crit_edge590, label %scalar.ph945.preheader

scalar.ph945.preheader:                           ; preds = %.preheader, %middle.block954
  %indvars.iv749.ph = phi i64 [ 0, %.preheader ], [ %n.vec948, %middle.block954 ]
  br label %scalar.ph945

scalar.ph945:                                     ; preds = %scalar.ph945.preheader, %scalar.ph945
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %scalar.ph945 ], [ %indvars.iv749.ph, %scalar.ph945.preheader ] ; 3 uses
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv749
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !48
  %i.asr = fpext float %i.asq to double
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %indvars.iv749
  store double %i.asr, ptr %i.ass, align 8, !tbaa !35
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %._crit_edge590, label %scalar.ph945, !llvm.loop !142

._crit_edge590:                                   ; preds = %scalar.ph945, %middle.block954
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %exitcond758.not = icmp eq i64 %indvars.iv.next755, %wide.trip.count757
  br i1 %exitcond758.not, label %.thread, label %.preheader, !llvm.loop !143

.thread:                                          ; preds = %.lr.ph580.split, %.lr.ph580.split.us, %._crit_edge590, %bb.eq, %sparse_stress_subspace_majorization_kD.exit
  %.0370 = phi ptr [ %i.abk, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.abk, %.lr.ph580.split.us ], [ %i.abk, %._crit_edge590 ], [ %i.abk, %.lr.ph580.split ]
  %.0369 = phi ptr [ %i.abv, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.abv, %.lr.ph580.split.us ], [ %i.abv, %._crit_edge590 ], [ %i.abv, %.lr.ph580.split ]
  %.0358 = phi ptr [ %.1364, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %.1364, %.lr.ph580.split.us ], [ %.1364, %._crit_edge590 ], [ %.1364, %.lr.ph580.split ]
  %.0357 = phi ptr [ %i.aff, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.aff, %.lr.ph580.split.us ], [ %i.aff, %._crit_edge590 ], [ %i.aff, %.lr.ph580.split ]
  %.0350 = phi ptr [ %i.afx, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.afx, %.lr.ph580.split.us ], [ %i.afx, %._crit_edge590 ], [ %i.afx, %.lr.ph580.split ] ; 3 uses
  %.0349 = phi ptr [ %i.ahg, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahg, %.lr.ph580.split.us ], [ %i.ahg, %._crit_edge590 ], [ %i.ahg, %.lr.ph580.split ]
  %.0348 = phi ptr [ %i.ahh, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahh, %.lr.ph580.split.us ], [ %i.ahh, %._crit_edge590 ], [ %i.ahh, %.lr.ph580.split ]
  %.0347 = phi ptr [ %i.ahr, %bb.eq ], [ null, %sparse_stress_subspace_majorization_kD.exit ], [ %i.ahr, %.lr.ph580.split.us ], [ %i.ahr, %._crit_edge590 ], [ %i.ahr, %.lr.ph580.split ]
  %.3 = phi i32 [ %i.arw, %bb.eq ], [ -1, %sparse_stress_subspace_majorization_kD.exit ], [ -1, %.lr.ph580.split.us ], [ %i.arw, %._crit_edge590 ], [ -1, %.lr.ph580.split ]
  call void @free(ptr noundef %.0369) #15
  call void @free(ptr noundef %.0370) #15
  call void @free(ptr noundef %.0358) #15
  %.not426 = icmp eq ptr %.0350, null
  br i1 %.not426, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.thread
  %i.ast = load ptr, ptr %.0350, align 8, !tbaa !56
  call void @free(ptr noundef %i.ast) #15
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
