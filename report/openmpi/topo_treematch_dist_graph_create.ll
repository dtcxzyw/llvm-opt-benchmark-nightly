Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_treematch_dist_graph_create?download=true
inline.NumInlined: 16
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@mca_topo_treematch_dist_graph_create:bb.a
bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %9, align 8, !tbaa !111    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 224 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !112
  %i.t = or i32 %i.s, 1024
  store i32 %i.t, ptr %i.r, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr %0, ptr %i.u, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = zext i1 %i.l to i8
  store i8 %i.w, ptr %i.v, align 4, !tbaa !116
  br label %bb.fy

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 4, !tbaa !36
  store i32 0, ptr %i.b, align 4, !tbaa !36
  store i32 -1, ptr %i.d, align 4, !tbaa !36
  %i.x = tail call i32 @opal_hwloc_base_get_topology() #12
  %.not935 = icmp eq i32 %i.x, 0
  br i1 %.not935, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.z = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.y, i32 noundef 0, i32 noundef 0) #13 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !119 ; 18 uses
  %i.ac = getelementptr i8, ptr %1, i64 220
  %.val = load i32, ptr %i.ac, align 4, !tbaa !120
  store i32 %.val, ptr %i.c, align 4, !tbaa !36
  %i.ad = getelementptr i8, ptr %1, i64 264       ; 2 uses
  %.val999 = load ptr, ptr %i.ad, align 8, !tbaa !110
  %i.ae = getelementptr i8, ptr %.val999, i64 16
  %.val999.val = load i32, ptr %i.ae, align 8, !tbaa !123 ; 17 uses
  %i.af = sext i32 %.val999.val to i64            ; 4 uses
  %i.ag = shl nsw i64 %i.af, 2                    ; 4 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #14 ; 11 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #14 ; 12 uses
  %i.aj = icmp sgt i32 %.val999.val, 0            ; 2 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 256
  %wide.trip.count = zext nneg i32 %.val999.val to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 6 uses
  %.08451108 = phi i32 [ 0, %.lr.ph ], [ %.1846, %bb.u ] ; 3 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !124
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !126 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %ompi_group_peer_lookup.exit, !prof !127

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.aq, 1
  %i.at = and i64 %i.as, 32767
  %i.au = and i64 %i.aq, -65536
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %i.at, %i.au
  %i.av = call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i) #12 ; 5 uses
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = cmpxchg volatile ptr %i.ax, i64 %i.aq, i64 %i.ay acquire monotonic, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %bb.j, label %ompi_group_peer_lookup.exit

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
  %indvars.iv1326 = phi i64 [ 0, %.lr.ph1117.preheader ], [ %indvars.iv.next1327.pre-phi, %.loopexit1097 ] ; 4 uses
  %indvars.iv1319 = phi i64 [ 1, %.lr.ph1117.preheader ], [ %indvars.iv.next1320, %.loopexit1097 ] ; 4 uses
  %.08471114 = phi i32 [ 0, %.lr.ph1117.preheader ], [ %.1848, %.loopexit1097 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1326 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !36
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %.lr.ph1117..loopexit1097_crit_edge, label %bb.v

.lr.ph1117..loopexit1097_crit_edge:               ; preds = %.lr.ph1117
  %.pre = add nuw nsw i64 %indvars.iv1326, 1
  br label %.loopexit1097

bb.v:                                             ; preds = %.lr.ph1117
  %i.cn = add nsw i32 %.08471114, 1               ; 3 uses
  %i.co = add nuw nsw i64 %indvars.iv1326, 1      ; 4 uses
  %i.cp = icmp slt i64 %i.co, %i.af
  br i1 %i.cp, label %.lr.ph1113.preheader, label %.loopexit1097

.lr.ph1113.preheader:                             ; preds = %bb.v
  %11 = xor i64 %indvars.iv1326, -1
  %12 = add i64 %11, %wide.trip.count1330         ; 3 uses
  %min.iters.check = icmp ult i64 %12, 8
  br i1 %min.iters.check, label %.lr.ph1113.preheader1788, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1113.preheader
  %n.vec = and i64 %12, -8                        ; 3 uses
  %i.cq = add i64 %indvars.iv1319, %n.vec
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1319
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !36
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !36 ; 2 uses
  %wide.load1666 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !36 ; 2 uses
  %i.cv = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %i.cw = icmp eq <4 x i32> %broadcast.splat, %wide.load1666
  %i.cx = select <4 x i1> %i.cv, <4 x i32> splat (i32 -1), <4 x i32> %wide.load
  %i.cy = select <4 x i1> %i.cw, <4 x i32> splat (i32 -1), <4 x i32> %wide.load1666
  store <4 x i32> %i.cx, ptr %i.ct, align 4, !tbaa !36
  store <4 x i32> %i.cy, ptr %i.cu, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %.loopexit1097, label %.lr.ph1113.preheader1788

.lr.ph1113.preheader1788:                         ; preds = %.lr.ph1113.preheader, %middle.block
  %indvars.iv1321.ph = phi i64 [ %indvars.iv1319, %.lr.ph1113.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph1113

.lr.ph1113:                                       ; preds = %.lr.ph1113.preheader1788, %.lr.ph1113
  %indvars.iv1321 = phi i64 [ %indvars.iv.next1322, %.lr.ph1113 ], [ %indvars.iv1321.ph, %.lr.ph1113.preheader1788 ] ; 2 uses
  %i.da = load i32, ptr %i.ck, align 4, !tbaa !36
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1321 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !36 ; 2 uses
  %i.dd = icmp eq i32 %i.da, %i.dc
  %spec.store.select = select i1 %i.dd, i32 -1, i32 %i.dc
  store i32 %spec.store.select, ptr %i.db, align 4, !tbaa !36
  %indvars.iv.next1322 = add nuw nsw i64 %indvars.iv1321, 1 ; 2 uses
  %exitcond1325.not = icmp eq i64 %indvars.iv.next1322, %wide.trip.count1330
  br i1 %exitcond1325.not, label %.loopexit1097, label %.lr.ph1113, !llvm.loop !52

.loopexit1097:                                    ; preds = %.lr.ph1113, %middle.block, %.lr.ph1117..loopexit1097_crit_edge, %bb.v
  %indvars.iv.next1327.pre-phi = phi i64 [ %.pre, %.lr.ph1117..loopexit1097_crit_edge ], [ %i.co, %bb.v ], [ %i.co, %middle.block ], [ %i.co, %.lr.ph1113 ] ; 2 uses
  %.1848 = phi i32 [ %.08471114, %.lr.ph1117..loopexit1097_crit_edge ], [ %i.cn, %bb.v ], [ %i.cn, %middle.block ], [ %i.cn, %.lr.ph1113 ] ; 20 uses
  %indvars.iv.next1320 = add nuw nsw i64 %indvars.iv1319, 1
  %exitcond1331.not = icmp eq i64 %indvars.iv.next1327.pre-phi, %wide.trip.count1330
  br i1 %exitcond1331.not, label %._crit_edge1118, label %.lr.ph1117, !llvm.loop !53

._crit_edge1118:                                  ; preds = %.loopexit1097
  %i.de = icmp eq i32 %.1848, 0
  br i1 %i.de, label %._crit_edge1118.thread, label %bb.w

._crit_edge1118.thread:                           ; preds = %._crit_edge, %._crit_edge1118
  call void @free(ptr noundef %i.ah) #12
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef %i.cj) #12
  br label %bb.c

bb.w:                                             ; preds = %._crit_edge1118
  %i.df = load i32, ptr %i.c, align 4, !tbaa !36
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph1123.preheader, label %.loopexit1096

.lr.ph1123.preheader:                             ; preds = %bb.w
  %i.dh = sext i32 %.1848 to i64
  %i.di = call noalias ptr @calloc(i64 noundef %i.dh, i64 noundef 4) #15 ; 6 uses
  %xtraiter = and i64 %wide.trip.count1330, 1
  %i.dj = icmp eq i32 %.val999.val, 1
  br i1 %i.dj, label %.lr.ph1123.epil.preheader, label %.lr.ph1123.preheader.new

.lr.ph1123.preheader.new:                         ; preds = %.lr.ph1123.preheader
  %unroll_iter = and i64 %wide.trip.count1330, 2147483646
  br label %.lr.ph1123

.lr.ph1123:                                       ; preds = %bb.z, %.lr.ph1123.preheader.new
  %indvars.iv1332 = phi i64 [ 0, %.lr.ph1123.preheader.new ], [ %indvars.iv.next1333.1, %bb.z ] ; 4 uses
  %.08061121 = phi i32 [ 0, %.lr.ph1123.preheader.new ], [ %.1807.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1123.preheader.new ], [ %niter.next.1, %bb.z ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1332
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !36
  %.not987 = icmp eq i32 %i.dl, -1
  br i1 %.not987, label %.lr.ph1123.1, label %bb.x

bb.x:                                             ; preds = %.lr.ph1123
  %i.dm = add nsw i32 %.08061121, 1
  %i.dn = sext i32 %.08061121 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv1332 to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !36
  br label %.lr.ph1123.1

.lr.ph1123.1:                                     ; preds = %.lr.ph1123, %bb.x
  %.1807 = phi i32 [ %i.dm, %bb.x ], [ %.08061121, %.lr.ph1123 ] ; 3 uses
  %indvars.iv.next1333 = or disjoint i64 %indvars.iv1332, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next1333
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !36
  %.not987.1 = icmp eq i32 %i.dr, -1
  br i1 %.not987.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph1123.1
  %i.ds = add nsw i32 %.1807, 1
  %i.dt = sext i32 %.1807 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dt
  %i.dv = trunc nuw nsw i64 %indvars.iv.next1333 to i32
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph1123.1
  %.1807.1 = phi i32 [ %i.ds, %bb.y ], [ %.1807, %.lr.ph1123.1 ] ; 2 uses
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
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1332.epil.init
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36
  %.not987.epil = icmp eq i32 %i.dx, -1
  br i1 %.not987.epil, label %.loopexit1096, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1123.epil.preheader
  %i.dy = sext i32 %.08061121.epil.init to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dy
  %i.ea = trunc nuw nsw i64 %indvars.iv1332.epil.init to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !36
  br label %.loopexit1096

.loopexit1096:                                    ; preds = %.loopexit1096.loopexit.unr-lcssa, %bb.aa, %.lr.ph1123.epil.preheader, %bb.w
  %.0862 = phi ptr [ null, %bb.w ], [ %i.di, %.lr.ph1123.epil.preheader ], [ %i.di, %bb.aa ], [ %i.di, %.loopexit1096.loopexit.unr-lcssa ] ; 5 uses
  call void @free(ptr noundef nonnull %i.ah) #12
  %i.eb = call noalias ptr @hwloc_bitmap_alloc_full() #12 ; 11 uses
  %i.ec = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.ed = call i32 @hwloc_get_cpubind(ptr noundef %i.ec, ptr noundef %i.eb, i32 noundef 0) #12 ; 0 uses
  %i.ee = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118 ; 6 uses
  %i.ef = call i32 @hwloc_get_type_depth(ptr noundef %i.ee, i32 noundef 3) #12 ; 2 uses
  switch i32 %i.ef, label %bb.ac [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit
    i32 -2, label %bb.ab
  ]

bb.ab:                                            ; preds = %.loopexit1096
  br label %hwloc_get_nbobjs_by_type.exit

bb.ac:                                            ; preds = %.loopexit1096
  %i.eg = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.ee, i32 noundef %i.ef) #13
  br label %hwloc_get_nbobjs_by_type.exit

hwloc_get_nbobjs_by_type.exit:                    ; preds = %.loopexit1096, %bb.ab, %bb.ac
  %.0.i = phi i32 [ %i.eg, %bb.ac ], [ -1, %bb.ab ], [ 0, %.loopexit1096 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.ej = call i32 @hwloc_bitmap_isincluded(ptr noundef %i.ei, ptr noundef %i.eb) #13
  %.not936 = icmp eq i32 %i.ej, 0
  br i1 %.not936, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.ek = call i32 @hwloc_get_type_depth(ptr noundef %i.ee, i32 noundef 2) #12 ; 2 uses
  %.not.i = icmp eq i32 %i.ek, -1
  br i1 %.not.i, label %.preheader.i, label %hwloc_get_type_or_above_depth.exit

.preheader.i:                                     ; preds = %bb.ad, %.preheader.i
  %.0.i1003 = phi i32 [ %i.eo, %.preheader.i ], [ 0, %bb.ad ] ; 3 uses
  %i.el = call i32 @hwloc_get_depth_type(ptr noundef %i.ee, i32 noundef %.0.i1003) #13
  %i.em = call i32 @hwloc_compare_types(i32 noundef %i.el, i32 noundef 2) #16
  %i.en = icmp sgt i32 %i.em, 0
  %i.eo = add nuw nsw i32 %.0.i1003, 1
  br i1 %i.en, label %bb.ae, label %.preheader.i

bb.ae:                                            ; preds = %.preheader.i
  %i.ep = add nsw i32 %.0.i1003, -1
  br label %hwloc_get_type_or_above_depth.exit

hwloc_get_type_or_above_depth.exit:               ; preds = %bb.ad, %bb.ae
  %.09.i = phi i32 [ %i.ep, %bb.ae ], [ %i.ek, %bb.ad ] ; 2 uses
  %i.eq = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.ee, i32 noundef %.09.i) #13
  br label %bb.ag

bb.af:                                            ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.er = call fastcc ptr @hwloc_get_obj_covering_cpuset(ptr noundef %i.ee, ptr noundef %i.eb) #13 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 52
  %i.et = load i32, ptr %i.es, align 4, !tbaa !150
  store i32 %i.et, ptr %i.a, align 4, !tbaa !36
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !151 ; 2 uses
  %i.ew = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.ex = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.ew, i32 noundef %i.ev) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %hwloc_get_type_or_above_depth.exit
  %storemerge = phi i32 [ %i.ex, %bb.af ], [ %i.eq, %hwloc_get_type_or_above_depth.exit ] ; 3 uses
  %.0855 = phi i32 [ 0, %bb.af ], [ %.09.i, %hwloc_get_type_or_above_depth.exit ] ; 2 uses
  %.0852 = phi i32 [ %i.ev, %bb.af ], [ 0, %hwloc_get_type_or_above_depth.exit ]
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !36
  %i.ey = icmp eq i32 %storemerge, 0
  %i.ez = icmp eq i32 %.0.i, 0
  %or.cond = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef %i.cj) #12
  br label %bb.c

bb.ai:                                            ; preds = %bb.ag
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !36
  %.val1002 = load i32, ptr %i.cj, align 4, !tbaa !36 ; 10 uses
  %i.fb = call fastcc i32 @check_oversubscribing(i32 noundef %i.fa, i32 noundef %storemerge, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1)
  %.not939 = icmp eq i32 %i.fb, 0
  %i.fc = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.fd = call i32 @hwloc_bitmap_isincluded(ptr noundef %i.fc, ptr noundef %i.eb) #13
  %.not940 = icmp eq i32 %i.fd, 0                 ; 2 uses
  br i1 %.not939, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !36  ; 2 uses
  br i1 %.not940, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = call fastcc i32 @check_oversubscribing(i32 noundef %i.fe, i32 noundef %.0.i, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1)
  %.not938 = icmp eq i32 %i.ff, 0
  br i1 %.not938, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i16, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 308), align 4, !tbaa !153
  %i.fh = zext i16 %i.fg to i32
  %i.fi = srem i32 %i.fh, %.0.i
  store i32 %i.fi, ptr %i.a, align 4, !tbaa !36
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !36
  br label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.fj = load i32, ptr %i.b, align 4, !tbaa !36
  %i.fk = call fastcc i32 @check_oversubscribing(i32 noundef %i.fe, i32 noundef %i.fj, i32 noundef %.0845.lcssa, i32 %.val1002, ptr noundef %1) ; 0 uses
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  br i1 %.not940, label %bb.as, label %bb.ao

end_hunk_0
