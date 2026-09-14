Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_treematch_dist_graph_create?download=true
inline.NumInlined: 16
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@mca_topo_treematch_dist_graph_create:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.bc = load i8, ptr @opal_uses_threads, align 1, !tbaa !128, !range !129, !noundef !130
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.l, !prof !127

bb.k:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_group_peer_lookup.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = load volatile i32, ptr %i.bb, align 4, !tbaa !36
  %i.bg = add nsw i32 %i.bf, 1
  store volatile i32 %i.bg, ptr %i.bb, align 4, !tbaa !36
  %i.bh = load volatile i32, ptr %i.bb, align 4, !tbaa !36 ; 0 uses
  br label %ompi_group_peer_lookup.exit

ompi_group_peer_lookup.exit:                      ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %.0.i.i.i = phi ptr [ %i.ap, %bb.h ], [ %i.av, %bb.l ], [ %i.av, %bb.k ], [ %i.av, %bb.i ] ; 3 uses
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !36
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp eq i64 %indvars.iv, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ompi_group_peer_lookup.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !138
  %i.bn = and i16 %i.bm, 12
  %or.cond993.not = icmp eq i16 %i.bn, 12
  br i1 %or.cond993.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %ompi_group_peer_lookup.exit
  %i.bo = add nsw i32 %.08451108, 1
  %i.bp = sext i32 %.08451108 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.bp
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1846 = phi i32 [ %i.bo, %bb.n ], [ %.08451108, %bb.m ] ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !142
  %i.bu = call i32 @opal_pmix_convert_jobid(ptr noundef nonnull %10, i32 noundef %i.bt) #12 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !143 ; 2 uses
  %cond = icmp eq i32 %i.bw, -1
  %spec.select1764 = select i1 %cond, i32 -4, i32 %i.bw
  store i32 %spec.select1764, ptr %i.ak, align 4, !tbaa !145
  %i.bx = call i32 @PMIx_Get(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.g) #12
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !141 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i16, ptr %i.by, align 8, !tbaa !147
  %.not990 = icmp eq i16 %i.ca, 14
  %i.cb = icmp eq i32 %i.bx, 0
  %or.cond994 = select i1 %.not990, i1 %i.cb, i1 false
  br i1 %or.cond994, label %bb.q, label %.split.thread

.split.thread:                                    ; preds = %bb.p
  call void @PMIx_Value_free(ptr noundef nonnull %i.by, i64 noundef 1) #12
  br label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cc = call i32 @PMIx_Value_unload(ptr noundef nonnull %i.by, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #12
  %i.cd = icmp eq i32 %i.cc, 0                    ; 2 uses
  %.pr.pre = load ptr, ptr %i.g, align 8, !tbaa !141 ; 2 uses
  %.not991 = icmp eq ptr %.pr.pre, null
  br i1 %.not991, label %bb.r, label %.split

.split:                                           ; preds = %bb.q
  call void @PMIx_Value_free(ptr noundef nonnull %.pr.pre, i64 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br i1 %i.cd, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br i1 %i.cd, label %bb.t, label %bb.s

.sink.split:                                      ; preds = %bb.o, %.split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.split, %bb.r
  %i.ce = call ptr @ompi_pmix_print_name(ptr noundef nonnull %i.bs) #12
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.ce) #12
  br label %bb.u

bb.t:                                             ; preds = %.split, %bb.r
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink1648 = phi i32 [ %i.cf, %bb.t ], [ -1, %bb.s ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %.sink1648, ptr %i.cg, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.u, %bb.g
  %.0845.lcssa = phi i32 [ 0, %bb.g ], [ %.1846, %bb.u ] ; 21 uses
  %i.ch = sext i32 %.0845.lcssa to i64            ; 5 uses
  %i.ci = shl nsw i64 %i.ch, 2                    ; 2 uses
  %i.cj = call noalias ptr @malloc(i64 noundef %i.ci) #14 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cj, ptr align 4 %i.ah, i64 %i.ci, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.ai, i64 %i.ag, i1 false)
  br i1 %i.aj, label %.lr.ph1117.preheader, label %._crit_edge1118.thread

.lr.ph1117.preheader:                             ; preds = %._crit_edge
  %wide.trip.count1330 = zext nneg i32 %.val999.val to i64 ; 10 uses
  br label %.lr.ph1117

.lr.ph1117:                                       ; preds = %.lr.ph1117.preheader, %.loopexit1097
  %indvar = phi i64 [ 0, %.lr.ph1117.preheader ], [ %indvar.next, %.loopexit1097 ] ; 2 uses
  %indvars.iv1326 = phi i64 [ 0, %.lr.ph1117.preheader ], [ %indvars.iv.next1327.pre-phi, %.loopexit1097 ] ; 3 uses
  %indvars.iv1319 = phi i64 [ 1, %.lr.ph1117.preheader ], [ %indvars.iv.next1320, %.loopexit1097 ] ; 4 uses
  %.08471114 = phi i32 [ 0, %.lr.ph1117.preheader ], [ %.1848, %.loopexit1097 ] ; 2 uses
  %i.ck = xor i64 %indvar, -1
  %i.cl = add i64 %i.ck, %wide.trip.count1330     ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1326 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !36
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %.lr.ph1117..loopexit1097_crit_edge, label %bb.v

.lr.ph1117..loopexit1097_crit_edge:               ; preds = %.lr.ph1117
  %.pre = add nuw nsw i64 %indvars.iv1326, 1
  br label %.loopexit1097

bb.v:                                             ; preds = %.lr.ph1117
  %i.cp = add nsw i32 %.08471114, 1               ; 3 uses
  %i.cq = add nuw nsw i64 %indvars.iv1326, 1      ; 4 uses
  %i.cr = icmp slt i64 %i.cq, %i.af
  br i1 %i.cr, label %.lr.ph1113.preheader, label %.loopexit1097

.lr.ph1113.preheader:                             ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check, label %.lr.ph1113.preheader1788, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1113.preheader
  %n.vec = and i64 %i.cl, -8                      ; 3 uses
  %i.cs = add i64 %indvars.iv1319, %n.vec
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1319
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = load i32, ptr %i.cm, align 4, !tbaa !36
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cv, align 4, !tbaa !36 ; 2 uses
  %wide.load1666 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !36 ; 2 uses
  %i.cx = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %i.cy = icmp eq <4 x i32> %broadcast.splat, %wide.load1666
  %i.cz = select <4 x i1> %i.cx, <4 x i32> splat (i32 -1), <4 x i32> %wide.load
  %i.da = select <4 x i1> %i.cy, <4 x i32> splat (i32 -1), <4 x i32> %wide.load1666
  store <4 x i32> %i.cz, ptr %i.cv, align 4
  store <4 x i32> %i.da, ptr %i.cw, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %.loopexit1097, label %.lr.ph1113.preheader1788

.lr.ph1113.preheader1788:                         ; preds = %.lr.ph1113.preheader, %middle.block
  %indvars.iv1321.ph = phi i64 [ %indvars.iv1319, %.lr.ph1113.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph1113

.lr.ph1113:                                       ; preds = %.lr.ph1113.preheader1788, %.lr.ph1113
  %indvars.iv1321 = phi i64 [ %indvars.iv.next1322, %.lr.ph1113 ], [ %indvars.iv1321.ph, %.lr.ph1113.preheader1788 ] ; 2 uses
  %i.dc = load i32, ptr %i.cm, align 4, !tbaa !36
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1321 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.df = icmp eq i32 %i.dc, %i.de
  %spec.store.select = select i1 %i.df, i32 -1, i32 %i.de
  store i32 %spec.store.select, ptr %i.dd, align 4
  %indvars.iv.next1322 = add nuw nsw i64 %indvars.iv1321, 1 ; 2 uses
  %exitcond1325.not = icmp eq i64 %indvars.iv.next1322, %wide.trip.count1330
  br i1 %exitcond1325.not, label %.loopexit1097, label %.lr.ph1113, !llvm.loop !52

.loopexit1097:                                    ; preds = %.lr.ph1113, %middle.block, %.lr.ph1117..loopexit1097_crit_edge, %bb.v
  %indvars.iv.next1327.pre-phi = phi i64 [ %.pre, %.lr.ph1117..loopexit1097_crit_edge ], [ %i.cq, %bb.v ], [ %i.cq, %middle.block ], [ %i.cq, %.lr.ph1113 ] ; 2 uses
  %.1848 = phi i32 [ %.08471114, %.lr.ph1117..loopexit1097_crit_edge ], [ %i.cp, %bb.v ], [ %i.cp, %middle.block ], [ %i.cp, %.lr.ph1113 ] ; 19 uses
  %indvars.iv.next1320 = add nuw nsw i64 %indvars.iv1319, 1
  %exitcond1331.not = icmp eq i64 %indvars.iv.next1327.pre-phi, %wide.trip.count1330
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1331.not, label %._crit_edge1118, label %.lr.ph1117, !llvm.loop !53

._crit_edge1118:                                  ; preds = %.loopexit1097
  %i.dg = icmp eq i32 %.1848, 0
  br i1 %i.dg, label %._crit_edge1118.thread, label %bb.w

._crit_edge1118.thread:                           ; preds = %._crit_edge, %._crit_edge1118
  call void @free(ptr noundef %i.ah) #12
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef %i.cj) #12
  br label %bb.c

bb.w:                                             ; preds = %._crit_edge1118
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !36
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph1123.preheader, label %.loopexit1096

.lr.ph1123.preheader:                             ; preds = %bb.w
  %i.dj = sext i32 %.1848 to i64
  %i.dk = call noalias ptr @calloc(i64 noundef %i.dj, i64 noundef 4) #15 ; 6 uses
  %xtraiter = and i64 %wide.trip.count1330, 1
  %i.dl = icmp eq i32 %.val999.val, 1
  br i1 %i.dl, label %.lr.ph1123.epil.preheader, label %.lr.ph1123.preheader.new

.lr.ph1123.preheader.new:                         ; preds = %.lr.ph1123.preheader
  %unroll_iter = and i64 %wide.trip.count1330, 2147483646
  br label %.lr.ph1123

.lr.ph1123:                                       ; preds = %bb.z, %.lr.ph1123.preheader.new
  %indvars.iv1332 = phi i64 [ 0, %.lr.ph1123.preheader.new ], [ %indvars.iv.next1333.1, %bb.z ] ; 4 uses
  %.08061121 = phi i32 [ 0, %.lr.ph1123.preheader.new ], [ %.1807.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1123.preheader.new ], [ %niter.next.1, %bb.z ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1332
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36
  %.not987 = icmp eq i32 %i.dn, -1
  br i1 %.not987, label %.lr.ph1123.1, label %bb.x

bb.x:                                             ; preds = %.lr.ph1123
  %i.do = add nsw i32 %.08061121, 1
  %i.dp = sext i32 %.08061121 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dp
  %i.dr = trunc nuw nsw i64 %indvars.iv1332 to i32
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !36
  br label %.lr.ph1123.1

.lr.ph1123.1:                                     ; preds = %.lr.ph1123, %bb.x
  %.1807 = phi i32 [ %i.do, %bb.x ], [ %.08061121, %.lr.ph1123 ] ; 3 uses
  %indvars.iv.next1333 = or disjoint i64 %indvars.iv1332, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next1333
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !36
  %.not987.1 = icmp eq i32 %i.dt, -1
  br i1 %.not987.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph1123.1
  %i.du = add nsw i32 %.1807, 1
  %i.dv = sext i32 %.1807 to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dv
  %i.dx = trunc nuw nsw i64 %indvars.iv.next1333 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph1123.1
  %.1807.1 = phi i32 [ %i.du, %bb.y ], [ %.1807, %.lr.ph1123.1 ] ; 2 uses
  %indvars.iv.next1333.1 = add nuw nsw i64 %indvars.iv1332, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1096.loopexit.unr-lcssa, label %.lr.ph1123, !llvm.loop !54

.loopexit1096.loopexit.unr-lcssa:                 ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1096, label %.lr.ph1123.epil.preheader

.lr.ph1123.epil.preheader:                        ; preds = %.loopexit1096.loopexit.unr-lcssa, %.lr.ph1123.preheader
  %indvars.iv1332.epil.init = phi i64 [ 0, %.lr.ph1123.preheader ], [ %indvars.iv.next1333.1, %.loopexit1096.loopexit.unr-lcssa ] ; 2 uses
  %.08061121.epil.init = phi i32 [ 0, %.lr.ph1123.preheader ], [ %.1807.1, %.loopexit1096.loopexit.unr-lcssa ]
  %lcmp.mod1789 = trunc i32 %.val999.val to i1
  call void @llvm.assume(i1 %lcmp.mod1789)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1332.epil.init
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !36
  %.not987.epil = icmp eq i32 %i.dz, -1
  br i1 %.not987.epil, label %.loopexit1096, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1123.epil.preheader
  %i.ea = sext i32 %.08061121.epil.init to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.ea
  %i.ec = trunc nuw nsw i64 %indvars.iv1332.epil.init to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !36
  br label %.loopexit1096

.loopexit1096:                                    ; preds = %.loopexit1096.loopexit.unr-lcssa, %bb.aa, %.lr.ph1123.epil.preheader, %bb.w
  %.0862 = phi ptr [ null, %bb.w ], [ %i.dk, %.lr.ph1123.epil.preheader ], [ %i.dk, %bb.aa ], [ %i.dk, %.loopexit1096.loopexit.unr-lcssa ] ; 5 uses
  call void @free(ptr noundef nonnull %i.ah) #12
  %i.ed = call noalias ptr @hwloc_bitmap_alloc_full() #12 ; 11 uses
  %i.ee = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.ef = call i32 @hwloc_get_cpubind(ptr noundef %i.ee, ptr noundef %i.ed, i32 noundef 0) #12 ; 0 uses
  %i.eg = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118 ; 6 uses
  %i.eh = call i32 @hwloc_get_type_depth(ptr noundef %i.eg, i32 noundef 3) #12 ; 2 uses
  switch i32 %i.eh, label %bb.ac [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit
    i32 -2, label %bb.ab
  ]

bb.ab:                                            ; preds = %.loopexit1096
  br label %hwloc_get_nbobjs_by_type.exit

bb.ac:                                            ; preds = %.loopexit1096
  %i.ei = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.eg, i32 noundef %i.eh) #13
  br label %hwloc_get_nbobjs_by_type.exit

hwloc_get_nbobjs_by_type.exit:                    ; preds = %.loopexit1096, %bb.ab, %bb.ac
  %.0.i = phi i32 [ %i.ei, %bb.ac ], [ -1, %bb.ab ], [ 0, %.loopexit1096 ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.el = call i32 @hwloc_bitmap_isincluded(ptr noundef %i.ek, ptr noundef %i.ed) #13
  %.not936 = icmp eq i32 %i.el, 0
  br i1 %.not936, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.em = call i32 @hwloc_get_type_depth(ptr noundef %i.eg, i32 noundef 2) #12 ; 2 uses
  %.not.i = icmp eq i32 %i.em, -1
  br i1 %.not.i, label %.preheader.i, label %hwloc_get_type_or_above_depth.exit

.preheader.i:                                     ; preds = %bb.ad, %.preheader.i
  %.0.i1003 = phi i32 [ %i.eq, %.preheader.i ], [ 0, %bb.ad ] ; 3 uses
  %i.en = call i32 @hwloc_get_depth_type(ptr noundef %i.eg, i32 noundef %.0.i1003) #13
  %i.eo = call i32 @hwloc_compare_types(i32 noundef %i.en, i32 noundef 2) #16
  %i.ep = icmp sgt i32 %i.eo, 0
  %i.eq = add nuw nsw i32 %.0.i1003, 1
  br i1 %i.ep, label %bb.ae, label %.preheader.i

bb.ae:                                            ; preds = %.preheader.i
  %i.er = add nsw i32 %.0.i1003, -1
  br label %hwloc_get_type_or_above_depth.exit

hwloc_get_type_or_above_depth.exit:               ; preds = %bb.ad, %bb.ae
  %.09.i = phi i32 [ %i.er, %bb.ae ], [ %i.em, %bb.ad ] ; 2 uses
  %i.es = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.eg, i32 noundef %.09.i) #13
  br label %bb.ag

bb.af:                                            ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.et = call fastcc ptr @hwloc_get_obj_covering_cpuset(ptr noundef %i.eg, ptr noundef %i.ed) #13 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !150
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !36
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !151 ; 2 uses
  %i.ey = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.ez = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.ey, i32 noundef %i.ex) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %hwloc_get_type_or_above_depth.exit
  %storemerge = phi i32 [ %i.ez, %bb.af ], [ %i.es, %hwloc_get_type_or_above_depth.exit ] ; 3 uses
  %.0855 = phi i32 [ 0, %bb.af ], [ %.09.i, %hwloc_get_type_or_above_depth.exit ] ; 2 uses
  %.0852 = phi i32 [ %i.ex, %bb.af ], [ 0, %hwloc_get_type_or_above_depth.exit ]
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !36
  %i.fa = icmp eq i32 %storemerge, 0
  %i.fb = icmp eq i32 %.0.i, 0
  %or.cond = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef %i.cj) #12
  br label %bb.c

bb.ai:                                            ; preds = %bb.ag
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !36
  %.val1002 = load i32, ptr %i.cj, align 4, !tbaa !36 ; 10 uses
  %i.fd = call fastcc i32 @check_oversubscribing(i32 noundef %i.fc, i32 noundef %storemerge, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1)
  %.not939 = icmp eq i32 %i.fd, 0
  %i.fe = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.ff = call i32 @hwloc_bitmap_isincluded(ptr noundef %i.fe, ptr noundef %i.ed) #13
  %.not940 = icmp eq i32 %i.ff, 0                 ; 2 uses
  br i1 %.not939, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i32, ptr %i.c, align 4, !tbaa !36  ; 2 uses
  br i1 %.not940, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = call fastcc i32 @check_oversubscribing(i32 noundef %i.fg, i32 noundef %.0.i, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1)
  %.not938 = icmp eq i32 %i.fh, 0
  br i1 %.not938, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.fi = load i16, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 308), align 4, !tbaa !153
  %i.fj = zext i16 %i.fi to i32
  %i.fk = srem i32 %i.fj, %.0.i
  store i32 %i.fk, ptr %i.a, align 4, !tbaa !36
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !36
  br label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.fl = load i32, ptr %i.b, align 4, !tbaa !36
  %i.fm = call fastcc i32 @check_oversubscribing(i32 noundef %i.fg, i32 noundef %i.fl, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1) ; 0 uses
  br label %bb.ar

end_hunk_0
begin_hunk_1_@mca_topo_treematch_dist_graph_create:bb.a
  br i1 %i.io, label %.epil.preheader1836, label %.lr.ph1212.new

.lr.ph1212.new:                                   ; preds = %.lr.ph1212
  %unroll_iter1841 = and i64 %wide.trip.count1443, 2147483646
  br label %bb.bh

.preheader1081.loopexit.unr-lcssa:                ; preds = %bb.bh
  %lcmp.mod1839.not = icmp eq i64 %xtraiter1837, 0
  br i1 %lcmp.mod1839.not, label %.preheader1081, label %.epil.preheader1836

.epil.preheader1836:                              ; preds = %.preheader1081.loopexit.unr-lcssa, %.lr.ph1212
  %indvars.iv1440.epil.init = phi i64 [ 0, %.lr.ph1212 ], [ %indvars.iv.next1441.1, %.preheader1081.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1840 = trunc i32 %i.ii to i1
  call void @llvm.assume(i1 %lcmp.mod1840)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv1440.epil.init
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !36
  %i.ir = sitofp i32 %i.iq to double
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv1440.epil.init
  %i.it = load i32, ptr %i.is, align 4, !tbaa !36
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !170
  %i.ix = fadd double %i.iw, %i.ir
  store double %i.ix, ptr %i.iv, align 8, !tbaa !170
  br label %.preheader1081

.preheader1081:                                   ; preds = %.epil.preheader1836, %.preheader1081.loopexit.unr-lcssa, %.preheader1083
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !171 ; 4 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph1214, label %.loopexit1082

.lr.ph1214:                                       ; preds = %.preheader1081
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !172 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !173 ; 3 uses
  %wide.trip.count1448 = zext nneg i32 %i.iz to i64 ; 2 uses
  %xtraiter1844 = and i64 %wide.trip.count1448, 1
  %i.jf = icmp eq i32 %i.iz, 1
  br i1 %i.jf, label %.epil.preheader1843, label %.lr.ph1214.new

.lr.ph1214.new:                                   ; preds = %.lr.ph1214
  %unroll_iter1848 = and i64 %wide.trip.count1448, 2147483646
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph1212.new
  %indvars.iv1440 = phi i64 [ 0, %.lr.ph1212.new ], [ %indvars.iv.next1441.1, %bb.bh ] ; 4 uses
  %niter1842 = phi i64 [ 0, %.lr.ph1212.new ], [ %niter1842.next.1, %bb.bh ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv1440
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !36
  %i.ji = sitofp i32 %i.jh to double
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv1440
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !36
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.jl ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !170
  %i.jo = fadd double %i.jn, %i.ji
  store double %i.jo, ptr %i.jm, align 8, !tbaa !170
  %indvars.iv.next1441 = or disjoint i64 %indvars.iv1440, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.next1441
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !36
  %i.jr = sitofp i32 %i.jq to double
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next1441
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !36
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.ju ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !170
  %i.jx = fadd double %i.jw, %i.jr
  store double %i.jx, ptr %i.jv, align 8, !tbaa !170
  %indvars.iv.next1441.1 = add nuw nsw i64 %indvars.iv1440, 2 ; 2 uses
  %niter1842.next.1 = add i64 %niter1842, 2       ; 2 uses
  %niter1842.ncmp.1 = icmp eq i64 %niter1842.next.1, %unroll_iter1841
  br i1 %niter1842.ncmp.1, label %.preheader1081.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !58

bb.bi:                                            ; preds = %bb.bi, %.lr.ph1214.new
  %indvars.iv1445 = phi i64 [ 0, %.lr.ph1214.new ], [ %indvars.iv.next1446.1, %bb.bi ] ; 4 uses
  %niter1849 = phi i64 [ 0, %.lr.ph1214.new ], [ %niter1849.next.1, %bb.bi ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv1445
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !36
  %i.ka = sitofp i32 %i.jz to double
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv1445
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !36
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.kd ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !170
  %i.kg = fadd double %i.kf, %i.ka
  store double %i.kg, ptr %i.ke, align 8, !tbaa !170
  %indvars.iv.next1446 = or disjoint i64 %indvars.iv1445, 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next1446
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !36
  %i.kj = sitofp i32 %i.ki to double
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.next1446
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !36
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !170
  %i.kp = fadd double %i.ko, %i.kj
  store double %i.kp, ptr %i.kn, align 8, !tbaa !170
  %indvars.iv.next1446.1 = add nuw nsw i64 %indvars.iv1445, 2 ; 2 uses
  %niter1849.next.1 = add i64 %niter1849, 2       ; 2 uses
  %niter1849.ncmp.1 = icmp eq i64 %niter1849.next.1, %unroll_iter1848
  br i1 %niter1849.ncmp.1, label %.loopexit1082.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !59

.loopexit1082.loopexit.unr-lcssa:                 ; preds = %bb.bi
  %lcmp.mod1846.not = icmp eq i64 %xtraiter1844, 0
  br i1 %lcmp.mod1846.not, label %.loopexit1082, label %.epil.preheader1843

.epil.preheader1843:                              ; preds = %.loopexit1082.loopexit.unr-lcssa, %.lr.ph1214
  %indvars.iv1445.epil.init = phi i64 [ 0, %.lr.ph1214 ], [ %indvars.iv.next1446.1, %.loopexit1082.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1847 = trunc i32 %i.iz to i1
  call void @llvm.assume(i1 %lcmp.mod1847)
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv1445.epil.init
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !36
  %i.ks = sitofp i32 %i.kr to double
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv1445.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !36
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.kv ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !170
  %i.ky = fadd double %i.kx, %i.ks
  store double %i.ky, ptr %i.kw, align 8, !tbaa !170
  br label %.loopexit1082

.loopexit1082:                                    ; preds = %.epil.preheader1843, %.loopexit1082.loopexit.unr-lcssa, %.preheader1081, %bb.bg
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !46 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 144
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !174
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 152
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !175
  %i.lf = call i32 %i.lc(ptr noundef %i.id, i32 noundef %.val999.val, ptr noundef nonnull @ompi_mpi_double, ptr noundef %.0863, i32 noundef %.val999.val, ptr noundef nonnull @ompi_mpi_double, i32 noundef 0, ptr noundef %1, ptr noundef %i.le) #12 ; 2 uses
  %.not959 = icmp eq i32 %i.lf, 0
  br i1 %.not959, label %bb.bj, label %.thread1041

bb.bj:                                            ; preds = %.loopexit1082
  %i.lg = load i32, ptr %i.c, align 4, !tbaa !36
  %i.lh = icmp eq i32 %i.lg, %.val1002
  br i1 %i.lh, label %bb.bk, label %bb.dj

bb.bk:                                            ; preds = %bb.bj
  %i.li = load i32, ptr %i.b, align 4, !tbaa !36  ; 5 uses
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = shl nsw i64 %i.lj, 2                    ; 2 uses
  %i.ll = call noalias ptr @malloc(i64 noundef %i.lk) #14 ; 10 uses
  %i.lm = icmp sgt i32 %i.li, 0
  br i1 %i.lm, label %.lr.ph1220, label %._crit_edge1221

.lr.ph1220:                                       ; preds = %bb.bk
  %i.ln = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.lo = icmp sgt i32 %.0845.lcssa, 0
  %wide.trip.count1458 = zext nneg i32 %i.li to i64
  %wide.trip.count1453 = zext nneg i32 %.0845.lcssa to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph1220, %.loopexit1080
  %indvars.iv1455 = phi i64 [ 0, %.lr.ph1220 ], [ %indvars.iv.next1456, %.loopexit1080 ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv1455 ; 2 uses
  store i32 -1, ptr %i.lp, align 4, !tbaa !36
  br i1 %i.lo, label %.lr.ph1217, label %.loopexit1080

.lr.ph1217:                                       ; preds = %bb.bl
  %i.lq = trunc nuw nsw i64 %indvars.iv1455 to i32
  %i.lr = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.ln, i32 noundef %.2854, i32 noundef %i.lq) #13
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 52
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !150
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next1451 = add nuw nsw i64 %indvars.iv1450, 1 ; 2 uses
  %exitcond1454.not = icmp eq i64 %indvars.iv.next1451, %wide.trip.count1453
  br i1 %exitcond1454.not, label %.loopexit1080, label %bb.bn, !llvm.loop !60

bb.bn:                                            ; preds = %.lr.ph1217, %bb.bm
  %indvars.iv1450 = phi i64 [ 0, %.lr.ph1217 ], [ %indvars.iv.next1451, %bb.bm ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.0856, i64 %indvars.iv1450
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !36
  %i.lw = icmp eq i32 %i.lv, %i.lt
  br i1 %i.lw, label %bb.bo, label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv1450
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !36
  store i32 %i.ly, ptr %i.lp, align 4, !tbaa !36
  br label %.loopexit1080

.loopexit1080:                                    ; preds = %bb.bm, %bb.bl, %bb.bo
  %indvars.iv.next1456 = add nuw nsw i64 %indvars.iv1455, 1 ; 2 uses
  %exitcond1459.not = icmp eq i64 %indvars.iv.next1456, %wide.trip.count1458
  br i1 %exitcond1459.not, label %._crit_edge1221, label %bb.bl, !llvm.loop !61

._crit_edge1221:                                  ; preds = %.loopexit1080, %bb.bk
  %i.lz = icmp eq i32 %.val1002, 0
  %i.ma = icmp sgt i32 %.1848, 1                  ; 2 uses
  br i1 %i.lz, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %._crit_edge1221
  br i1 %i.ma, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.mb = zext nneg i32 %.1848 to i64             ; 6 uses
  %i.mc = call noalias ptr @calloc(i64 noundef %i.mb, i64 noundef 4) #15 ; 11 uses
  %i.md = add nsw i32 %.1848, -1
  %i.me = zext nneg i32 %i.md to i64              ; 3 uses
  %i.mf = call noalias ptr @calloc(i64 noundef %i.me, i64 noundef 8) #15 ; 9 uses
  store i32 %i.li, ptr %i.mc, align 4, !tbaa !36
  br label %bb.bs

bb.br:                                            ; preds = %bb.bs
  %indvars.iv.next1461 = add nuw nsw i64 %indvars.iv1460, 1 ; 2 uses
  %exitcond1464.not = icmp eq i64 %indvars.iv.next1461, %i.mb
  br i1 %exitcond1464.not, label %bb.bu, label %bb.bs, !llvm.loop !62

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %indvars.iv1460 = phi i64 [ 1, %bb.bq ], [ %indvars.iv.next1461, %bb.br ] ; 4 uses
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !155
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv1460
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0862, i64 %indvars.iv1460
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !36
  %i.mk = getelementptr [8 x i8], ptr %i.mf, i64 %indvars.iv1460
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = call i32 %i.mg(ptr noundef nonnull %i.mh, i64 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.mj, i32 noundef -112, ptr noundef %1, ptr noundef %i.ml) #12 ; 2 uses
  %.not965 = icmp eq i32 %i.mm, 0
  br i1 %.not965, label %bb.br, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef %i.ll) #12
  call void @free(ptr noundef nonnull %i.mc) #12
  br label %.thread1031

bb.bu:                                            ; preds = %bb.br
  %i.mn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !157
  %i.mo = call i32 %i.mn(i64 noundef %i.me, ptr noundef %i.mf, ptr noundef null) #12 ; 2 uses
  %.not962 = icmp eq i32 %i.mo, 0
  br i1 %.not962, label %.lr.ph1225.preheader, label %bb.bv

.lr.ph1225.preheader:                             ; preds = %bb.bu
  %min.iters.check1707 = icmp ult i32 %.1848, 8
  br i1 %min.iters.check1707, label %.lr.ph1225.preheader1773, label %vector.ph1708

vector.ph1708:                                    ; preds = %.lr.ph1225.preheader
  %n.vec1709 = and i64 %i.mb, 2147483640          ; 3 uses
  br label %vector.body1710

vector.body1710:                                  ; preds = %vector.body1710, %vector.ph1708
  %index1711 = phi i64 [ 0, %vector.ph1708 ], [ %index.next1716, %vector.body1710 ] ; 2 uses
  %vec.phi1712 = phi <4 x i32> [ zeroinitializer, %vector.ph1708 ], [ %i.mr, %vector.body1710 ]
  %vec.phi1713 = phi <4 x i32> [ zeroinitializer, %vector.ph1708 ], [ %i.ms, %vector.body1710 ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %index1711 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load1714 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !36
  %wide.load1715 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !36
  %i.mr = add <4 x i32> %wide.load1714, %vec.phi1712 ; 2 uses
  %i.ms = add <4 x i32> %wide.load1715, %vec.phi1713 ; 2 uses
  %index.next1716 = add nuw i64 %index1711, 8     ; 2 uses
  %i.mt = icmp eq i64 %index.next1716, %n.vec1709
  br i1 %i.mt, label %middle.block1717, label %vector.body1710, !llvm.loop !63

middle.block1717:                                 ; preds = %vector.body1710
  %bin.rdx1718 = add <4 x i32> %i.ms, %i.mr
  %i.mu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1718) ; 2 uses
  %cmp.n1719 = icmp eq i64 %n.vec1709, %i.mb
  br i1 %cmp.n1719, label %._crit_edge1226, label %.lr.ph1225.preheader1773

.lr.ph1225.preheader1773:                         ; preds = %.lr.ph1225.preheader, %middle.block1717
  %indvars.iv1465.ph = phi i64 [ 0, %.lr.ph1225.preheader ], [ %n.vec1709, %middle.block1717 ]
  %.08001224.ph = phi i32 [ 0, %.lr.ph1225.preheader ], [ %i.mu, %middle.block1717 ]
  br label %.lr.ph1225

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef nonnull %i.mc) #12
  br label %.thread1031

.lr.ph1225:                                       ; preds = %.lr.ph1225.preheader1773, %.lr.ph1225
  %indvars.iv1465 = phi i64 [ %indvars.iv.next1466, %.lr.ph1225 ], [ %indvars.iv1465.ph, %.lr.ph1225.preheader1773 ] ; 2 uses
  %.08001224 = phi i32 [ %i.mx, %.lr.ph1225 ], [ %.08001224.ph, %.lr.ph1225.preheader1773 ]
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv1465
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !36
  %i.mx = add nsw i32 %i.mw, %.08001224           ; 2 uses
  %indvars.iv.next1466 = add nuw nsw i64 %indvars.iv1465, 1 ; 2 uses
  %exitcond1469.not = icmp eq i64 %indvars.iv.next1466, %i.mb
  br i1 %exitcond1469.not, label %._crit_edge1226, label %.lr.ph1225, !llvm.loop !64

._crit_edge1226:                                  ; preds = %.lr.ph1225, %middle.block1717
  %.lcssa1658 = phi i32 [ %i.mu, %middle.block1717 ], [ %i.mx, %.lr.ph1225 ] ; 4 uses
  %i.my = sext i32 %.lcssa1658 to i64
  %i.mz = shl nsw i64 %i.my, 2
  %i.na = call noalias ptr @malloc(i64 noundef %i.mz) #14 ; 6 uses
  %i.nb = icmp sgt i32 %.lcssa1658, 0
  br i1 %i.nb, label %.lr.ph1230.preheader, label %.lr.ph1235.preheader

.lr.ph1230.preheader:                             ; preds = %._crit_edge1226
  %i.nc = zext nneg i32 %.lcssa1658 to i64
  %i.nd = shl nuw nsw i64 %i.nc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.na, i8 -1, i64 %i.nd, i1 false), !tbaa !36
  br label %.lr.ph1235.preheader

.lr.ph1235.preheader:                             ; preds = %._crit_edge1226, %.lr.ph1230.preheader
  %i.ne = load i32, ptr %i.mc, align 4, !tbaa !36 ; 2 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = shl nsw i64 %i.nf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.na, ptr align 4 %i.ll, i64 %i.ng, i1 false)
  br label %.lr.ph1235

.lr.ph1235:                                       ; preds = %.lr.ph1235.preheader, %bb.bx
  %indvars.iv1473 = phi i64 [ 1, %.lr.ph1235.preheader ], [ %indvars.iv.next1474, %bb.bx ] ; 4 uses
  %.07961233 = phi i32 [ %i.ne, %.lr.ph1235.preheader ], [ %i.nt, %bb.bx ] ; 2 uses
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !155
  %i.ni = sext i32 %.07961233 to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv1473 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !36
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.0862, i64 %indvars.iv1473
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !36
  %i.np = getelementptr [8 x i8], ptr %i.mf, i64 %indvars.iv1473
  %i.nq = getelementptr i8, ptr %i.np, i64 -8
  %i.nr = call i32 %i.nh(ptr noundef %i.nj, i64 noundef %i.nm, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.no, i32 noundef -113, ptr noundef %1, ptr noundef %i.nq) #12 ; 2 uses
  %.not964 = icmp eq i32 %i.nr, 0
  br i1 %.not964, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1235
  call void @free(ptr noundef %i.ll) #12
  call void @free(ptr noundef nonnull %i.mc) #12
  call void @free(ptr noundef %i.na) #12
  br label %.thread1031

bb.bx:                                            ; preds = %.lr.ph1235
  %i.ns = load i32, ptr %i.nk, align 4, !tbaa !36
  %i.nt = add nsw i32 %i.ns, %.07961233
  %indvars.iv.next1474 = add nuw nsw i64 %indvars.iv1473, 1 ; 2 uses
  %exitcond1477.not = icmp eq i64 %indvars.iv.next1474, %i.mb
  br i1 %exitcond1477.not, label %._crit_edge1236, label %.lr.ph1235, !llvm.loop !65

._crit_edge1236:                                  ; preds = %bb.bx
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !157
  %i.nv = call i32 %i.nu(i64 noundef %i.me, ptr noundef %i.mf, ptr noundef null) #12 ; 2 uses
  %.not963 = icmp eq i32 %i.nv, 0
  br i1 %.not963, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %._crit_edge1236
  call void @free(ptr noundef %i.ll) #12
  call void @free(ptr noundef nonnull %i.mc) #12
  call void @free(ptr noundef %i.na) #12
  br label %.thread1031

bb.bz:                                            ; preds = %._crit_edge1236
  call void @free(ptr noundef nonnull %i.mc) #12
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bp
  %i.nw = call noalias ptr @calloc(i64 noundef %i.lj, i64 noundef 4) #15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nw, ptr align 4 %i.ll, i64 %i.lk, i1 false)
  br label %bb.cg

bb.cb:                                            ; preds = %._crit_edge1221
  br i1 %i.ma, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.nx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !158
  %i.ny = call i32 %i.nx(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, i32 noundef -112, i32 noundef 4, ptr noundef %1) #12 ; 2 uses
  %.not960 = icmp eq i32 %i.ny, 0
  br i1 %.not960, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @free(ptr noundef %i.ll) #12
  br label %.thread1041

bb.ce:                                            ; preds = %bb.cc
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !158
  %i.oa = load i32, ptr %i.b, align 4, !tbaa !36
  %i.ob = sext i32 %i.oa to i64
  %i.oc = call i32 %i.nz(ptr noundef %i.ll, i64 noundef %i.ob, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, i32 noundef -113, i32 noundef 4, ptr noundef %1) #12 ; 2 uses
  %.not961 = icmp eq i32 %i.oc, 0
  br i1 %.not961, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef %i.ll) #12
  br label %.thread1041

bb.cg:                                            ; preds = %bb.bz, %bb.cb, %bb.ce, %bb.ca
  %.2872 = phi ptr [ %i.mf, %bb.bz ], [ null, %bb.ca ], [ null, %bb.ce ], [ null, %bb.cb ] ; 8 uses
  %.1804 = phi ptr [ %i.na, %bb.bz ], [ %i.nw, %bb.ca ], [ null, %bb.ce ], [ null, %bb.cb ] ; 13 uses
  %i.od = phi i32 [ %.lcssa1658, %bb.bz ], [ %i.li, %bb.ca ], [ 0, %bb.ce ], [ 0, %bb.cb ] ; 9 uses
  call void @free(ptr noundef %i.ll) #12
  %i.oe = load i32, ptr %i.c, align 4, !tbaa !36
  %i.of = icmp eq i32 %i.oe, 0                    ; 2 uses
  %i.og = mul nsw i32 %.1848, 101
  %i.oh = sext i32 %i.og to i64
  %i.oi = shl nsw i64 %i.oh, 2
  %.sink1650 = select i1 %i.of, i64 %i.oi, i64 404
  %i.oj = call noalias ptr @malloc(i64 noundef %.sink1650) #14 ; 23 uses
  store i32 %i.hu, ptr %i.oj, align 4, !tbaa !36
  %i.ok = icmp sgt i32 %i.hu, 0
  br i1 %i.ok, label %.lr.ph1239.preheader, label %.lr.ph1242.preheader

.lr.ph1239.preheader:                             ; preds = %bb.cg
  %i.ol = zext nneg i32 %i.hu to i64              ; 2 uses
  %xtraiter1850 = and i64 %i.ol, 3                ; 3 uses
  %i.om = icmp ult i32 %i.hu, 4
  br i1 %i.om, label %.lr.ph1239.epil.preheader, label %.lr.ph1239.preheader.new

.lr.ph1239.preheader.new:                         ; preds = %.lr.ph1239.preheader
  %unroll_iter1856 = and i64 %i.ol, 2147483644
  br label %.lr.ph1239

.preheader1078.unr-lcssa:                         ; preds = %.lr.ph1239
  %lcmp.mod1852.not = icmp eq i64 %xtraiter1850, 0
  br i1 %lcmp.mod1852.not, label %.preheader1078, label %.lr.ph1239.epil.preheader

.lr.ph1239.epil.preheader:                        ; preds = %.preheader1078.unr-lcssa, %.lr.ph1239.preheader
  %indvars.iv1478.epil.init = phi i64 [ 0, %.lr.ph1239.preheader ], [ %indvars.iv.next1479.3, %.preheader1078.unr-lcssa ]
  %lcmp.mod1855 = icmp ne i64 %xtraiter1850, 0
  call void @llvm.assume(i1 %lcmp.mod1855)
  br label %.lr.ph1239.epil

.lr.ph1239.epil:                                  ; preds = %.lr.ph1239.epil, %.lr.ph1239.epil.preheader
  %indvars.iv1478.epil = phi i64 [ %indvars.iv1478.epil.init, %.lr.ph1239.epil.preheader ], [ %indvars.iv.next1479.epil, %.lr.ph1239.epil ] ; 3 uses
  %epil.iter1851 = phi i64 [ 0, %.lr.ph1239.epil.preheader ], [ %epil.iter1851.next, %.lr.ph1239.epil ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %.0868, i64 %indvars.iv1478.epil
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !45
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 104
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !176
  %indvars.iv.next1479.epil = add nuw nsw i64 %indvars.iv1478.epil, 1 ; 3 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next1479.epil
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !36
  %epil.iter1851.next = add i64 %epil.iter1851, 1 ; 2 uses
  %epil.iter1851.cmp.not = icmp eq i64 %epil.iter1851.next, %xtraiter1850
  br i1 %epil.iter1851.cmp.not, label %.preheader1078, label %.lr.ph1239.epil, !llvm.loop !66

.preheader1078:                                   ; preds = %.lr.ph1239.epil, %.preheader1078.unr-lcssa
  %indvars.iv1478.lcssa = phi i64 [ %indvars.iv.next1479.2, %.preheader1078.unr-lcssa ], [ %indvars.iv1478.epil, %.lr.ph1239.epil ]
  %indvars.iv.next1479.lcssa = phi i64 [ %indvars.iv.next1479.3, %.preheader1078.unr-lcssa ], [ %indvars.iv.next1479.epil, %.lr.ph1239.epil ]
  %i.os = trunc nuw nsw i64 %indvars.iv.next1479.lcssa to i32
  %i.ot = icmp samesign ult i64 %indvars.iv1478.lcssa, 100
  br i1 %i.ot, label %.lr.ph1242.preheader, label %._crit_edge1243

.lr.ph1242.preheader:                             ; preds = %bb.cg, %.preheader1078
  %.14.lcssa1634 = phi i32 [ %i.os, %.preheader1078 ], [ 0, %bb.cg ] ; 2 uses
  %i.ou = shl nuw nsw i32 %.14.lcssa1634, 2
  %i.ov = zext nneg i32 %i.ou to i64
  %scevgep1481 = getelementptr i8, ptr %i.oj, i64 %i.ov
  %i.ow = shl nuw nsw i32 %.14.lcssa1634, 2
  %narrow = sub nsw i32 404, %i.ow
  %i.ox = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep1481, i8 0, i64 %i.ox, i1 false), !tbaa !36
  br label %._crit_edge1243

.lr.ph1239:                                       ; preds = %.lr.ph1239, %.lr.ph1239.preheader.new
  %indvars.iv1478 = phi i64 [ 0, %.lr.ph1239.preheader.new ], [ %indvars.iv.next1479.3, %.lr.ph1239 ] ; 5 uses
  %niter1857 = phi i64 [ 0, %.lr.ph1239.preheader.new ], [ %niter1857.next.3, %.lr.ph1239 ]
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.0868, i64 %indvars.iv1478
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 104
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !176
  %indvars.iv.next1479 = or disjoint i64 %indvars.iv1478, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next1479
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !36
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %.0868, i64 %indvars.iv.next1479
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !45
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 104
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !176
  %indvars.iv.next1479.1 = or disjoint i64 %indvars.iv1478, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next1479.1
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !36
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.0868, i64 %indvars.iv.next1479.1
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !45
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 104
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !176
  %indvars.iv.next1479.2 = or disjoint i64 %indvars.iv1478, 3 ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next1479.2
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !36
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.0868, i64 %indvars.iv.next1479.2
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !45
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 104
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !176
  %indvars.iv.next1479.3 = add nuw nsw i64 %indvars.iv1478, 4 ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next1479.3
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !36
  %niter1857.next.3 = add i64 %niter1857, 4       ; 2 uses
  %niter1857.ncmp.3.not = icmp eq i64 %niter1857.next.3, %unroll_iter1856
  br i1 %niter1857.ncmp.3.not, label %.preheader1078.unr-lcssa, label %.lr.ph1239, !llvm.loop !67

._crit_edge1243:                                  ; preds = %.lr.ph1242.preheader, %.preheader1078
  %i.ps = icmp sgt i32 %.1848, 1                  ; 3 uses
  br i1 %i.ps, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %._crit_edge1243
  br i1 %i.of, label %.lr.ph1245.preheader, label %bb.ci

.lr.ph1245.preheader:                             ; preds = %bb.ch
  %wide.trip.count1488 = zext nneg i32 %.1848 to i64
  br label %.lr.ph1245

bb.ci:                                            ; preds = %bb.ch
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !158
  %i.pu = call i32 %i.pt(ptr noundef nonnull %i.oj, i64 noundef 101, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, i32 noundef -114, i32 noundef 4, ptr noundef %1) #12 ; 2 uses
  %.not969 = icmp eq i32 %i.pu, 0
  br i1 %.not969, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @free(ptr noundef nonnull %i.oj) #12
  br label %.thread1031

bb.ck:                                            ; preds = %.lr.ph1245
  %indvars.iv.next1486 = add nuw nsw i64 %indvars.iv1485, 1 ; 2 uses
  %exitcond1489.not = icmp eq i64 %indvars.iv.next1486, %wide.trip.count1488
  br i1 %exitcond1489.not, label %._crit_edge1246, label %.lr.ph1245, !llvm.loop !68

.lr.ph1245:                                       ; preds = %.lr.ph1245.preheader, %bb.ck
  %indvars.iv1485 = phi i64 [ 1, %.lr.ph1245.preheader ], [ %indvars.iv.next1486, %bb.ck ] ; 4 uses
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !155
  %.idx = mul nuw nsw i64 %indvars.iv1485, 404
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0862, i64 %indvars.iv1485
  %i.py = load i32, ptr %i.px, align 4, !tbaa !36
  %i.pz = getelementptr [8 x i8], ptr %.2872, i64 %indvars.iv1485
  %i.qa = getelementptr i8, ptr %i.pz, i64 -8
  %i.qb = call i32 %i.pv(ptr noundef nonnull %i.pw, i64 noundef 101, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.py, i32 noundef -114, ptr noundef %1, ptr noundef %i.qa) #12 ; 2 uses
  %.not968 = icmp eq i32 %i.qb, 0
  br i1 %.not968, label %bb.ck, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph1245
  call void @free(ptr noundef %.1804) #12
  call void @free(ptr noundef nonnull %i.oj) #12
  br label %.thread1031

._crit_edge1246:                                  ; preds = %bb.ck
  %i.qc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !157
  %i.qd = add nsw i32 %.1848, -1
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = call i32 %i.qc(i64 noundef %i.qe, ptr noundef %.2872, ptr noundef null) #12 ; 2 uses
end_hunk_1
begin_hunk_2_@mca_topo_treematch_dist_graph_create:bb.a

bb.fu:                                            ; preds = %bb.ft
  call void @free(ptr noundef nonnull %.1857105010641071) #12
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.not982 = icmp eq ptr %i.ed, null
  br i1 %.not982, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @hwloc_bitmap_free(ptr noundef nonnull %i.ed) #12
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.not983 = icmp eq i32 %.9839105110631072, 0
  br i1 %.not983, label %bb.fy, label %bb.c

bb.fy:                                            ; preds = %bb.fx, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ %i.k, %bb.a ], [ %i.o, %bb.c ], [ 0, %bb.fx ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mca_topo_base_dist_graph_distribute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_comm_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opal_hwloc_base_get_topology() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @opal_pmix_convert_jobid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PMIx_Get(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Value_unload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Value_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ompi_pmix_print_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @hwloc_bitmap_alloc_full() local_unnamed_addr #2

declare i32 @hwloc_get_cpubind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isincluded(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_nbobjs_by_depth(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc ptr @hwloc_get_obj_covering_cpuset(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_iszero(ptr noundef %1) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %hwloc_get_child_covering_cpuset.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %1, ptr noundef %i.d) #13
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %hwloc_get_child_covering_cpuset.exit.thread, label %hwloc_get_child_covering_cpuset.exit.preheader

hwloc_get_child_covering_cpuset.exit.preheader:   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.01.i24 = load ptr, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  %.not112.i25 = icmp eq ptr %.01.i24, null
  br i1 %.not112.i25, label %hwloc_get_child_covering_cpuset.exit.thread, label %.lr.ph.i.preheader

hwloc_get_child_covering_cpuset.exit.loopexit:    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.03.i, i64 120
  %.01.i = load ptr, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %.not112.i = icmp eq ptr %.01.i, null
  br i1 %.not112.i, label %hwloc_get_child_covering_cpuset.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %hwloc_get_child_covering_cpuset.exit.preheader, %hwloc_get_child_covering_cpuset.exit.loopexit
  %.01.i27 = phi ptr [ %.01.i, %hwloc_get_child_covering_cpuset.exit.loopexit ], [ %.01.i24, %hwloc_get_child_covering_cpuset.exit.preheader ]
  %.01126 = phi ptr [ %.03.i, %hwloc_get_child_covering_cpuset.exit.loopexit ], [ %i.b, %hwloc_get_child_covering_cpuset.exit.preheader ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.03.i = phi ptr [ %.0.i, %bb.d ], [ %.01.i27, %.lr.ph.i.preheader ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03.i, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = tail call i32 @hwloc_bitmap_isincluded(ptr noundef readonly %1, ptr noundef nonnull %i.i) #13
  %.not13.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i, label %bb.d, label %hwloc_get_child_covering_cpuset.exit.loopexit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.03.i, i64 88
  %.0.i = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %.not11.i = icmp eq ptr %.0.i, null
  br i1 %.not11.i, label %hwloc_get_child_covering_cpuset.exit.thread, label %.lr.ph.i, !llvm.loop !205

hwloc_get_child_covering_cpuset.exit.thread:      ; preds = %hwloc_get_child_covering_cpuset.exit.loopexit, %bb.d, %hwloc_get_child_covering_cpuset.exit.preheader, %bb.a, %bb.b
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.01126, %bb.d ], [ %i.b, %hwloc_get_child_covering_cpuset.exit.preheader ], [ %.03.i, %hwloc_get_child_covering_cpuset.exit.loopexit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_oversubscribing(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 %.0.val, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq i32 %0, %.0.val
  %i.d = icmp slt i32 %1, %2
  %or.cond = and i1 %i.d, %i.c
  %spec.store.select = zext i1 %or.cond to i32
  store i32 %spec.store.select, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207
  %i.k = call i32 %i.h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_sum, ptr noundef %3, ptr noundef %i.j) #12 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %i.l = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 %i.l, i32 %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_bitmap_singlify(ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_set_cpubind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @tm_build_affinity_mat(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @tm_build_tree_from_topology(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @tm_compute_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @tm_free_solution(ptr noundef) local_unnamed_addr #2

declare hidden void @tm_free_tree(ptr noundef) local_unnamed_addr #2

declare hidden void @tm_free_topology(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_comm_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @ompi_comm_free(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_group_translate_ranks(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ompi_proc_for_name(i64) local_unnamed_addr #2

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @hwloc_compare_types(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_depth_type(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_iszero(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12opal_class_t", !8, i64 0}
!10 = !{!"opal_object_t", !9, i64 0, !5, i64 8}
!11 = !{!"p1 _ZTS19opal_hash_element_t", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS24opal_hash_type_methods_t", !8, i64 0}
!14 = !{!"opal_hash_table_t", !10, i64 0, !11, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64}
!15 = !{!"p1 _ZTS11opal_info_t", !8, i64 0}
!16 = !{!"opal_infosubscriber_t", !10, i64 0, !14, i64 16, !15, i64 88}
!17 = !{!"opal_mutex_t", !10, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"ompi_comm_extended_cid_t", !12, i64 0, !4, i64 8}
!20 = !{!"ompi_comm_extended_cid_block_t", !19, i64 0, !12, i64 16, !4, i64 24, !4, i64 25}
!21 = !{!"p1 int", !8, i64 0}
!22 = !{!"p1 _ZTS12ompi_group_t", !8, i64 0}
!23 = !{!"p1 _ZTS19ompi_communicator_t", !8, i64 0}
!24 = !{!"p1 _ZTS17opal_hash_table_t", !8, i64 0}
!25 = !{!"p1 _ZTS22mca_topo_base_module_t", !8, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 _ZTS20ompi_peruse_handle_t", !26, i64 0}
!28 = !{!"p1 _ZTS17ompi_errhandler_t", !8, i64 0}
!29 = !{!"p1 _ZTS14mca_pml_comm_t", !8, i64 0}
!30 = !{!"p1 _ZTS14mca_mtl_comm_t", !8, i64 0}
!31 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !8, i64 0}
!32 = !{!"p1 _ZTS15ompi_instance_t", !8, i64 0}
!33 = !{!"p1 _ZTS13opal_object_t", !8, i64 0}
!34 = !{!"_Bool", !4, i64 0}
!35 = !{!"ompi_communicator_t", !16, i64 0, !17, i64 96, !18, i64 160, !19, i64 168, !20, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !21, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !22, i64 264, !22, i64 272, !23, i64 280, !24, i64 288, !25, i64 296, !27, i64 304, !28, i64 312, !5, i64 320, !29, i64 328, !30, i64 336, !31, i64 344, !32, i64 352, !33, i64 360, !5, i64 368, !5, i64 372, !34, i64 376, !34, i64 377, !34, i64 378}
!36 = !{!5, !5, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"p1 _ZTS16hwloc_obj_attr_u", !8, i64 0}
!39 = !{!"p1 _ZTS9hwloc_obj", !8, i64 0}
!40 = !{!"p2 _ZTS9hwloc_obj", !26, i64 0}
!41 = !{!"p1 _ZTS14hwloc_bitmap_s", !8, i64 0}
!42 = !{!"p1 _ZTS12hwloc_info_s", !8, i64 0}
!43 = !{!"hwloc_obj", !5, i64 0, !18, i64 8, !5, i64 16, !18, i64 24, !12, i64 32, !38, i64 40, !5, i64 48, !5, i64 52, !39, i64 56, !39, i64 64, !39, i64 72, !5, i64 80, !39, i64 88, !39, i64 96, !5, i64 104, !40, i64 112, !39, i64 120, !39, i64 128, !5, i64 136, !5, i64 140, !39, i64 144, !5, i64 152, !39, i64 160, !5, i64 168, !39, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !42, i64 216, !5, i64 224, !8, i64 232, !12, i64 240}
!44 = !{!43, !41, i64 184}
!45 = !{!39, !39, i64 0}
!46 = !{!35, !31, i64 344}
!47 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !8, i64 0}
!48 = !{!"p1 _ZTS11opal_list_t", !8, i64 0}
!49 = !{!"mca_coll_base_comm_coll_t", !8, i64 0, !47, i64 8, !8, i64 16, !47, i64 24, !8, i64 32, !47, i64 40, !8, i64 48, !47, i64 56, !8, i64 64, !47, i64 72, !8, i64 80, !47, i64 88, !8, i64 96, !47, i64 104, !8, i64 112, !47, i64 120, !8, i64 128, !47, i64 136, !8, i64 144, !47, i64 152, !8, i64 160, !47, i64 168, !8, i64 176, !47, i64 184, !8, i64 192, !47, i64 200, !8, i64 208, !47, i64 216, !8, i64 224, !47, i64 232, !8, i64 240, !47, i64 248, !8, i64 256, !47, i64 264, !8, i64 272, !47, i64 280, !8, i64 288, !47, i64 296, !8, i64 304, !47, i64 312, !8, i64 320, !47, i64 328, !8, i64 336, !47, i64 344, !8, i64 352, !47, i64 360, !8, i64 368, !47, i64 376, !8, i64 384, !47, i64 392, !8, i64 400, !47, i64 408, !8, i64 416, !47, i64 424, !8, i64 432, !47, i64 440, !8, i64 448, !47, i64 456, !8, i64 464, !47, i64 472, !8, i64 480, !47, i64 488, !8, i64 496, !47, i64 504, !8, i64 512, !47, i64 520, !8, i64 528, !47, i64 536, !8, i64 544, !47, i64 552, !8, i64 560, !47, i64 568, !8, i64 576, !47, i64 584, !8, i64 592, !47, i64 600, !8, i64 608, !47, i64 616, !8, i64 624, !47, i64 632, !8, i64 640, !47, i64 648, !8, i64 656, !47, i64 664, !8, i64 672, !47, i64 680, !8, i64 688, !47, i64 696, !8, i64 704, !47, i64 712, !8, i64 720, !47, i64 728, !8, i64 736, !47, i64 744, !8, i64 752, !47, i64 760, !8, i64 768, !47, i64 776, !8, i64 784, !47, i64 792, !8, i64 800, !47, i64 808, !8, i64 816, !47, i64 824, !8, i64 832, !47, i64 840, !8, i64 848, !47, i64 856, !8, i64 864, !47, i64 872, !8, i64 880, !47, i64 888, !8, i64 896, !47, i64 904, !8, i64 912, !47, i64 920, !8, i64 928, !47, i64 936, !8, i64 944, !47, i64 952, !8, i64 960, !47, i64 968, !8, i64 976, !47, i64 984, !8, i64 992, !47, i64 1000, !8, i64 1008, !47, i64 1016, !8, i64 1024, !47, i64 1032, !8, i64 1040, !47, i64 1048, !8, i64 1056, !47, i64 1064, !8, i64 1072, !47, i64 1080, !8, i64 1088, !47, i64 1096, !8, i64 1104, !48, i64 1112}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37, !148, !149}
!52 = distinct !{!52, !37, !149, !148}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !37, !148, !149}
!64 = distinct !{!64, !37, !149, !148}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !177}
!67 = distinct !{!67, !37}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !177}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37, !148, !149}
!72 = distinct !{!72, !37, !149, !148}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !177}
!76 = distinct !{!76, !37}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !177}
!79 = distinct !{!79, !37, !148, !149}
!80 = distinct !{!80, !37, !149, !148}
!81 = distinct !{!81, !37}
!82 = distinct !{!82, !37}
!83 = distinct !{!83, !177}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = distinct !{!86, !37}
!87 = distinct !{!87, !37}
!88 = distinct !{!88, !177}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !177}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !177}
!94 = distinct !{!94, !37}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37, !148, !149}
!101 = distinct !{!101, !37, !149, !148}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !177}
!106 = distinct !{!106, !37, !148, !149}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37, !149, !148}
!109 = distinct !{!109, !37}
!110 = !{!35, !22, i64 264}
!111 = !{!23, !23, i64 0}
!112 = !{!35, !5, i64 224}
!113 = !{!35, !25, i64 296}
!114 = !{!"p1 _ZTS31mca_topo_base_component_2_2_0_t", !8, i64 0}
!115 = !{!"mca_topo_base_module_t", !10, i64 0, !5, i64 16, !34, i64 20, !114, i64 24, !4, i64 32, !4, i64 96}
!116 = !{!115, !34, i64 20}
!117 = !{!"p1 _ZTS14hwloc_topology", !8, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!4, !4, i64 0}
!120 = !{!35, !5, i64 220}
!121 = !{!"p2 _ZTS11ompi_proc_t", !26, i64 0}
!122 = !{!"ompi_group_t", !10, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !121, i64 32, !5, i64 40, !22, i64 48, !4, i64 56, !32, i64 72}
!123 = !{!122, !5, i64 16}
!124 = !{!122, !121, i64 32}
!125 = !{!"p1 _ZTS11ompi_proc_t", !8, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!128 = !{!34, !34, i64 0}
!129 = !{i8 0, i8 2}
!130 = !{}
!131 = !{!"p1 _ZTS16opal_list_item_t", !8, i64 0}
!132 = !{!"opal_list_item_t", !10, i64 0, !131, i64 16, !131, i64 24, !5, i64 32}
!133 = !{!"", !5, i64 0, !5, i64 4}
!134 = !{!"short", !4, i64 0}
!135 = !{!"p1 _ZTS16opal_convertor_t", !8, i64 0}
!136 = !{!"opal_proc_t", !132, i64 0, !133, i64 40, !5, i64 48, !134, i64 52, !135, i64 56}
!137 = !{!"ompi_proc_t", !136, i64 0, !34, i64 64, !4, i64 72, !4, i64 80}
!138 = !{!137, !134, i64 52}
!139 = !{!21, !21, i64 0}
!140 = !{!"p1 _ZTS10pmix_value", !8, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!137, !5, i64 40}
!143 = !{!137, !5, i64 44}
!144 = !{!"pmix_proc", !4, i64 0, !5, i64 256}
!145 = !{!144, !5, i64 256}
!146 = !{!"pmix_value", !134, i64 0, !4, i64 8}
!147 = !{!146, !134, i64 0}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
!150 = !{!43, !5, i64 52}
!151 = !{!43, !5, i64 48}
!152 = !{!"opal_process_info_t", !133, i64 0, !144, i64 8, !34, i64 268, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !5, i64 304, !134, i64 308, !134, i64 310, !134, i64 312, !18, i64 320, !18, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !18, i64 352, !18, i64 360, !18, i64 368, !5, i64 376, !18, i64 384, !5, i64 392, !34, i64 396, !18, i64 400, !34, i64 408}
!153 = !{!152, !134, i64 308}
!154 = !{!"mca_pml_base_module_2_1_0_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !8, i64 184}
!155 = !{!154, !8, i64 64}
!156 = !{!"ompi_request_fns_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!157 = !{!156, !8, i64 48}
!158 = !{!154, !8, i64 96}
!159 = !{!"mca_base_component_2_1_0_t", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !4, i64 84, !5, i64 148, !5, i64 152, !5, i64 156, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !5, i64 192, !4, i64 196}
!160 = !{!"mca_base_component_data_2_0_0_t", !5, i64 0, !4, i64 4}
!161 = !{!"mca_topo_base_component_2_2_0_t", !159, i64 0, !160, i64 224, !8, i64 264, !8, i64 272}
!162 = !{!"mca_topo_treematch_component_2_2_0_t", !161, i64 0, !5, i64 280}
!163 = !{!162, !5, i64 280}
!164 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !10, i64 0, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !34, i64 56}
!165 = !{!164, !34, i64 56}
!166 = !{!164, !5, i64 48}
!167 = !{!164, !21, i64 24}
!168 = !{!164, !21, i64 16}
!169 = !{!"double", !4, i64 0}
end_hunk_2
