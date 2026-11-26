Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_treematch_dist_graph_create?download=true
inline.NumInlined: 16
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@mca_topo_treematch_dist_graph_create:bb.a

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

bb.an:                                            ; preds = %bb.ai
  br i1 %.not940, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i16, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 308), align 4, !tbaa !153
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !36
  %i.fq = srem i32 %i.fo, %i.fp                   ; 2 uses
  store i32 %i.fq, ptr %i.a, align 4, !tbaa !36
  %i.fr = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.fs = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.fr, i32 noundef %.0855, i32 noundef %i.fq) #13 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef nonnull %i.cj) #12
  call void @hwloc_bitmap_free(ptr noundef %i.ed) #12
  br label %bb.c

bb.aq:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 184
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !44
  %i.fw = call i32 @hwloc_bitmap_copy(ptr noundef %i.ed, ptr noundef %i.fv) #12 ; 0 uses
  %i.fx = call i32 @hwloc_bitmap_singlify(ptr noundef %i.ed) #12 ; 0 uses
  %i.fy = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118
  %i.fz = call i32 @hwloc_set_cpubind(ptr noundef %i.fy, ptr noundef %i.ed, i32 noundef 0) #12 ; 0 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.ak
  call void @free(ptr noundef %i.ai) #12
  call void @free(ptr noundef nonnull %i.cj) #12
  call void @hwloc_bitmap_free(ptr noundef %i.ed) #12
  br label %bb.c

bb.as:                                            ; preds = %bb.aq, %bb.an
  %.2854 = phi i32 [ %.0855, %bb.aq ], [ %.0852, %bb.an ] ; 5 uses
  %i.ga = add nsw i32 %.0845.lcssa, -1
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = call noalias ptr @calloc(i64 noundef %i.gb, i64 noundef 8) #15 ; 6 uses
  %i.gd = load i32, ptr %i.c, align 4, !tbaa !36
  %i.ge = icmp eq i32 %i.gd, %.val1002
  br i1 %i.ge, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.gf = add i32 %.2854, 1                       ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = call noalias ptr @calloc(i64 noundef %i.gg, i64 noundef 4) #15 ; 4 uses
  %i.gi = load ptr, ptr @opal_hwloc_topology, align 8, !tbaa !118 ; 4 uses
  %i.gj = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.gi, i32 noundef 0) #13 ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !36
  %.not9421124 = icmp slt i32 %.2854, 1
  br i1 %.not9421124, label %._crit_edge1129.thread, label %.lr.ph1128.preheader

._crit_edge1129.thread:                           ; preds = %bb.at
  %i.gk = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #15
  br label %._crit_edge1136

.lr.ph1128.preheader:                             ; preds = %bb.at
  %wide.trip.count1340 = zext i32 %i.gf to i64
  br label %.lr.ph1128

.lr.ph1128:                                       ; preds = %.lr.ph1128.preheader, %bb.av
  %indvars.iv1337 = phi i64 [ 1, %.lr.ph1128.preheader ], [ %indvars.iv.next1338, %bb.av ] ; 3 uses
  %.08491125 = phi i32 [ 1, %.lr.ph1128.preheader ], [ %.1850, %bb.av ] ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv1337 to i32
  %i.gm = call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.gi, i32 noundef %i.gl) #13 ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv1337 ; 2 uses
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !36
  %.not985 = icmp eq i32 %i.gm, 0
  br i1 %.not985, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph1128
  %i.go = getelementptr i8, ptr %i.gn, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !36
  %.not986 = icmp ne i32 %i.gm, %i.gp
  %i.gq = zext i1 %.not986 to i32
  %spec.select = add nsw i32 %.08491125, %i.gq
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph1128
  %.1850 = phi i32 [ %.08491125, %.lr.ph1128 ], [ %spec.select, %bb.au ] ; 3 uses
  %indvars.iv.next1338 = add nuw nsw i64 %indvars.iv1337, 1 ; 2 uses
  %exitcond1341.not = icmp eq i64 %indvars.iv.next1338, %wide.trip.count1340
  br i1 %exitcond1341.not, label %._crit_edge1129, label %.lr.ph1128, !llvm.loop !55

._crit_edge1129:                                  ; preds = %bb.av
  %i.gr = sext i32 %.1850 to i64
  %i.gs = call noalias ptr @calloc(i64 noundef %i.gr, i64 noundef 8) #15 ; 2 uses
  %wide.trip.count1345 = zext i32 %i.gf to i64
  br label %.lr.ph1135

.lr.ph1135:                                       ; preds = %._crit_edge1129, %bb.ax
  %i.gt = phi i32 [ %i.gj, %._crit_edge1129 ], [ %i.gv, %bb.ax ]
  %indvars.iv1342 = phi i64 [ 1, %._crit_edge1129 ], [ %indvars.iv.next1343, %bb.ax ] ; 3 uses
  %.28081133 = phi i32 [ 0, %._crit_edge1129 ], [ %.3809, %bb.ax ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv1342
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !36 ; 2 uses
  %.not984 = icmp eq i32 %i.gv, %i.gt
  br i1 %.not984, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1135
  %i.gw = trunc i64 %indvars.iv1342 to i32
  %11 = add i32 %i.gw, -1
  %i.gx = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.gi, i32 noundef %11, i32 noundef 0) #13
  %i.gy = add nsw i32 %.28081133, 1
  %i.gz = sext i32 %.28081133 to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gz
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !45
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1135, %bb.aw
  %.3809 = phi i32 [ %i.gy, %bb.aw ], [ %.28081133, %.lr.ph1135 ] ; 2 uses
  %indvars.iv.next1343 = add nuw nsw i64 %indvars.iv1342, 1 ; 2 uses
  %exitcond1346.not = icmp eq i64 %indvars.iv.next1343, %wide.trip.count1345
  br i1 %exitcond1346.not, label %._crit_edge1136.loopexit, label %.lr.ph1135, !llvm.loop !56

._crit_edge1136.loopexit:                         ; preds = %bb.ax
  %i.hb = sext i32 %.3809 to i64
  br label %._crit_edge1136

._crit_edge1136:                                  ; preds = %._crit_edge1129.thread, %._crit_edge1136.loopexit
  %i.hc = phi ptr [ %i.gk, %._crit_edge1129.thread ], [ %i.gs, %._crit_edge1136.loopexit ] ; 4 uses
  %.0849.lcssa1632 = phi i32 [ 1, %._crit_edge1129.thread ], [ %.1850, %._crit_edge1136.loopexit ]
  %.2808.lcssa = phi i64 [ 0, %._crit_edge1129.thread ], [ %i.hb, %._crit_edge1136.loopexit ]
  %i.hd = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.gi, i32 noundef %.2854, i32 noundef 0) #13
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %.2808.lcssa
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !45
  call void @free(ptr noundef nonnull %i.gh) #12
  %i.hf = call noalias ptr @calloc(i64 noundef %i.ch, i64 noundef 4) #15 ; 5 uses
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !36
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !36
  %i.hh = icmp sgt i32 %.0845.lcssa, 1
  br i1 %i.hh, label %.lr.ph1140.preheader, label %._crit_edge1141

.lr.ph1140.preheader:                             ; preds = %._crit_edge1136
  %wide.trip.count1350 = zext nneg i32 %.0845.lcssa to i64
  br label %.lr.ph1140

bb.ay:                                            ; preds = %.lr.ph1140
  %indvars.iv.next1348 = add nuw nsw i64 %indvars.iv1347, 1 ; 2 uses
  %exitcond1351.not = icmp eq i64 %indvars.iv.next1348, %wide.trip.count1350
  br i1 %exitcond1351.not, label %._crit_edge1141, label %.lr.ph1140, !llvm.loop !57

.lr.ph1140:                                       ; preds = %.lr.ph1140.preheader, %bb.ay
  %indvars.iv1347 = phi i64 [ 1, %.lr.ph1140.preheader ], [ %indvars.iv.next1348, %bb.ay ] ; 4 uses
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !155
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv1347
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv1347
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !36
  %i.hm = getelementptr [8 x i8], ptr %i.gc, i64 %indvars.iv1347
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  %i.ho = call i32 %i.hi(ptr noundef nonnull %i.hj, i64 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.hl, i32 noundef -111, ptr noundef %1, ptr noundef %i.hn) #12 ; 2 uses
  %.not945 = icmp eq i32 %i.ho, 0
  br i1 %.not945, label %bb.ay, label %bb.az

bb.az:                                            ; preds = %.lr.ph1140
  call void @free(ptr noundef %i.gc) #12
  br label %.thread1041

._crit_edge1141:                                  ; preds = %bb.ay, %._crit_edge1136
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !157
  %i.hq = call i32 %i.hp(i64 noundef %i.gb, ptr noundef %i.gc, ptr noundef null) #12 ; 2 uses
  %.not944 = icmp eq i32 %i.hq, 0
  br i1 %.not944, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1141
  call void @free(ptr noundef %i.gc) #12
  br label %.thread1041

bb.bb:                                            ; preds = %bb.as
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !158
  %i.hs = call i32 %i.hr(ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %.val1002, i32 noundef -111, i32 noundef 4, ptr noundef %1) #12
  %.not941 = icmp eq i32 %i.hs, 0
  br i1 %.not941, label %bb.bc, label %.sink.split1651

bb.bc:                                            ; preds = %._crit_edge1141, %bb.bb
  %.0868 = phi ptr [ null, %bb.bb ], [ %i.hc, %._crit_edge1141 ] ; 12 uses
  %.0856 = phi ptr [ null, %bb.bb ], [ %i.hf, %._crit_edge1141 ] ; 8 uses
  %i.ht = phi i32 [ 0, %bb.bb ], [ %.0849.lcssa1632, %._crit_edge1141 ] ; 8 uses
  call void @free(ptr noundef %i.gc) #12
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_treematch_component, i64 280), align 8, !tbaa !163
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bd, label %bb.dq

bb.bd:                                            ; preds = %bb.bc
  %i.hw = load i32, ptr %i.c, align 4, !tbaa !36
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hy = mul nuw nsw i32 %.val999.val, %.val999.val
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = call noalias ptr @calloc(i64 noundef %i.hz, i64 noundef 8) #15
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ib = call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 8) #15 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ic = phi ptr [ inttoptr (i64 1 to ptr), %bb.be ], [ %i.ib, %bb.bf ]
  %.0863 = phi ptr [ %i.ia, %bb.be ], [ %i.ib, %bb.bf ] ; 26 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !165, !range !129, !noundef !130
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %.preheader1083, label %.loopexit1082

.preheader1083:                                   ; preds = %bb.bg
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !166 ; 4 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph1212, label %.preheader1081

.lr.ph1212:                                       ; preds = %.preheader1083
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !167 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !168 ; 3 uses
  %wide.trip.count1443 = zext nneg i32 %i.ih to i64 ; 2 uses
  %xtraiter1837 = and i64 %wide.trip.count1443, 1
  %i.in = icmp eq i32 %i.ih, 1
  br i1 %i.in, label %.epil.preheader1836, label %.lr.ph1212.new

.lr.ph1212.new:                                   ; preds = %.lr.ph1212
  %unroll_iter1841 = and i64 %wide.trip.count1443, 2147483646
  br label %bb.bh

.preheader1081.loopexit.unr-lcssa:                ; preds = %bb.bh
  %lcmp.mod1839.not = icmp eq i64 %xtraiter1837, 0
  br i1 %lcmp.mod1839.not, label %.preheader1081, label %.epil.preheader1836

.epil.preheader1836:                              ; preds = %.preheader1081.loopexit.unr-lcssa, %.lr.ph1212
  %indvars.iv1440.epil.init = phi i64 [ 0, %.lr.ph1212 ], [ %indvars.iv.next1441.1, %.preheader1081.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1840 = trunc i32 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod1840)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv1440.epil.init
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !36
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv1440.epil.init
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !36
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.it ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !170
  %i.iw = fadd double %i.iv, %i.iq
  store double %i.iw, ptr %i.iu, align 8, !tbaa !170
  br label %.preheader1081

.preheader1081:                                   ; preds = %.epil.preheader1836, %.preheader1081.loopexit.unr-lcssa, %.preheader1083
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !171 ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph1214, label %.loopexit1082

.lr.ph1214:                                       ; preds = %.preheader1081
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !172 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !173 ; 3 uses
  %wide.trip.count1448 = zext nneg i32 %i.iy to i64 ; 2 uses
  %xtraiter1844 = and i64 %wide.trip.count1448, 1
  %i.je = icmp eq i32 %i.iy, 1
  br i1 %i.je, label %.epil.preheader1843, label %.lr.ph1214.new

.lr.ph1214.new:                                   ; preds = %.lr.ph1214
  %unroll_iter1848 = and i64 %wide.trip.count1448, 2147483646
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph1212.new
  %indvars.iv1440 = phi i64 [ 0, %.lr.ph1212.new ], [ %indvars.iv.next1441.1, %bb.bh ] ; 4 uses
  %niter1842 = phi i64 [ 0, %.lr.ph1212.new ], [ %niter1842.next.1, %bb.bh ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv1440
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !36
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv1440
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !36
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.jk ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !170
  %i.jn = fadd double %i.jm, %i.jh
  store double %i.jn, ptr %i.jl, align 8, !tbaa !170
  %indvars.iv.next1441 = or disjoint i64 %indvars.iv1440, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next1441
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !36
  %i.jq = sitofp i32 %i.jp to double
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.next1441
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !36
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.jt ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !170
  %i.jw = fadd double %i.jv, %i.jq
  store double %i.jw, ptr %i.ju, align 8, !tbaa !170
  %indvars.iv.next1441.1 = add nuw nsw i64 %indvars.iv1440, 2 ; 2 uses
  %niter1842.next.1 = add i64 %niter1842, 2       ; 2 uses
  %niter1842.ncmp.1 = icmp eq i64 %niter1842.next.1, %unroll_iter1841
  br i1 %niter1842.ncmp.1, label %.preheader1081.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !58

bb.bi:                                            ; preds = %bb.bi, %.lr.ph1214.new
  %indvars.iv1445 = phi i64 [ 0, %.lr.ph1214.new ], [ %indvars.iv.next1446.1, %bb.bi ] ; 4 uses
  %niter1849 = phi i64 [ 0, %.lr.ph1214.new ], [ %niter1849.next.1, %bb.bi ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv1445
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !36
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv1445
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !36
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %.0863, i64 %i.kc ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !170
  %i.kf = fadd double %i.ke, %i.jz
  store double %i.kf, ptr %i.kd, align 8, !tbaa !170
  %indvars.iv.next1446 = or disjoint i64 %indvars.iv1445, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next1446
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !36
end_hunk_0
begin_hunk_1_@mca_topo_treematch_dist_graph_create:bb.a
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !36
  %spec.select1302 = call i32 @llvm.smin.i32(i32 %i.qv, i32 %i.qt)
  %i.qw = mul nuw i64 %indvars.iv1490, 404
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 404
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !36
  %spec.select1302.1 = call i32 @llvm.smin.i32(i32 %i.qz, i32 %spec.select1302)
  %i.ra = mul nuw i64 %indvars.iv1490, 404
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 808
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !36
  %spec.select1302.2 = call i32 @llvm.smin.i32(i32 %i.rd, i32 %spec.select1302.1)
  %i.re = mul nuw i64 %indvars.iv1490, 404
  %i.rf = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 1212
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !36
  %spec.select1302.3 = call i32 @llvm.smin.i32(i32 %i.rh, i32 %spec.select1302.2) ; 3 uses
  %indvars.iv.next1491.3 = add nuw nsw i64 %indvars.iv1490, 4 ; 2 uses
  %niter1867.next.3 = add nuw i64 %niter1867, 4   ; 2 uses
  %niter1867.ncmp.3 = icmp eq i64 %niter1867.next.3, %unroll_iter1866
  br i1 %niter1867.ncmp.3, label %.preheader1076.thread.unr-lcssa, label %bb.cr, !llvm.loop !70

bb.cs:                                            ; preds = %.lr.ph1259, %bb.ct
  %indvars.iv1500 = phi i64 [ 0, %.lr.ph1259 ], [ %indvars.iv.next1501, %bb.ct ] ; 2 uses
  %.idx1621 = mul nuw nsw i64 %indvars.iv1500, 404
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.idx1621 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !36 ; 2 uses
  %.not9731251.not = icmp sgt i32 %i.rj, %i.qr
  br i1 %.not9731251.not, label %.lr.ph1254, label %bb.ct

.lr.ph1254:                                       ; preds = %bb.cs
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.qs ; 4 uses
  %.promoted1256 = load i32, ptr %i.rk, align 4, !tbaa !36 ; 2 uses
  %.reass.reass = add i32 %i.rj, %invariant.op
  %wide.trip.count1498 = zext i32 %.reass.reass to i64 ; 2 uses
  %i.rl = add nsw i64 %wide.trip.count1498, -1    ; 3 uses
  %min.iters.check1723 = icmp ult i64 %i.rl, 8
  br i1 %min.iters.check1723, label %scalar.ph1722.preheader, label %vector.ph1724

vector.ph1724:                                    ; preds = %.lr.ph1254
  %n.vec1725 = and i64 %i.rl, -8                  ; 3 uses
  %i.rm = or disjoint i64 %n.vec1725, 1
  %i.rn = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.promoted1256, i64 0
  br label %vector.body1726

vector.body1726:                                  ; preds = %vector.body1726, %vector.ph1724
  %index1727 = phi i64 [ 0, %vector.ph1724 ], [ %index.next1732, %vector.body1726 ] ; 2 uses
  %vec.phi1728 = phi <4 x i32> [ %i.rn, %vector.ph1724 ], [ %i.rr, %vector.body1726 ]
  %vec.phi1729 = phi <4 x i32> [ splat (i32 1), %vector.ph1724 ], [ %i.rs, %vector.body1726 ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %index1727 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %wide.load1730 = load <4 x i32>, ptr %i.rp, align 4, !tbaa !36
  %wide.load1731 = load <4 x i32>, ptr %i.rq, align 4, !tbaa !36
  %i.rr = mul <4 x i32> %vec.phi1728, %wide.load1730 ; 2 uses
  %i.rs = mul <4 x i32> %vec.phi1729, %wide.load1731 ; 2 uses
  %index.next1732 = add nuw i64 %index1727, 8     ; 2 uses
  %i.rt = icmp eq i64 %index.next1732, %n.vec1725
  br i1 %i.rt, label %middle.block1733, label %vector.body1726, !llvm.loop !71

middle.block1733:                                 ; preds = %vector.body1726
  %bin.rdx1734 = mul <4 x i32> %i.rs, %i.rr
  %i.ru = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1734) ; 2 uses
  %cmp.n1735 = icmp eq i64 %i.rl, %n.vec1725
  br i1 %cmp.n1735, label %._crit_edge1255, label %scalar.ph1722.preheader

scalar.ph1722.preheader:                          ; preds = %.lr.ph1254, %middle.block1733
  %indvars.iv1495.ph = phi i64 [ 1, %.lr.ph1254 ], [ %i.rm, %middle.block1733 ]
  %.ph = phi i32 [ %.promoted1256, %.lr.ph1254 ], [ %i.ru, %middle.block1733 ]
  br label %scalar.ph1722

scalar.ph1722:                                    ; preds = %scalar.ph1722.preheader, %scalar.ph1722
  %indvars.iv1495 = phi i64 [ %indvars.iv.next1496, %scalar.ph1722 ], [ %indvars.iv1495.ph, %scalar.ph1722.preheader ] ; 2 uses
  %i.rv = phi i32 [ %i.ry, %scalar.ph1722 ], [ %.ph, %scalar.ph1722.preheader ]
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv1495
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !36
  %i.ry = mul nsw i32 %i.rv, %i.rx                ; 2 uses
  %indvars.iv.next1496 = add nuw nsw i64 %indvars.iv1495, 1 ; 2 uses
  %exitcond1499.not = icmp eq i64 %indvars.iv.next1496, %wide.trip.count1498
  br i1 %exitcond1499.not, label %._crit_edge1255, label %scalar.ph1722, !llvm.loop !72

._crit_edge1255:                                  ; preds = %scalar.ph1722, %middle.block1733
  %.lcssa1653 = phi i32 [ %i.ru, %middle.block1733 ], [ %i.ry, %scalar.ph1722 ]
  store i32 %.lcssa1653, ptr %i.rk, align 4, !tbaa !36
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge1255, %bb.cs
  %indvars.iv.next1501 = add nuw nsw i64 %indvars.iv1500, 1 ; 2 uses
  %exitcond1504.not = icmp eq i64 %indvars.iv.next1501, %wide.trip.count1503
  br i1 %exitcond1504.not, label %._crit_edge1260, label %bb.cs, !llvm.loop !73

._crit_edge1260:                                  ; preds = %bb.ct
  br i1 %i.pr, label %bb.cu, label %._crit_edge1260.thread

bb.cu:                                            ; preds = %._crit_edge1260
  %i.rz = add i32 %i.qr, 1                        ; 5 uses
  store i32 %i.rz, ptr %i.qj, align 8, !tbaa !182
  %i.sa = sext i32 %i.rz to i64                   ; 3 uses
  %i.sb = call noalias ptr @calloc(i64 noundef %i.sa, i64 noundef 4) #15 ; 5 uses
  store ptr %i.sb, ptr %i.qh, align 8, !tbaa !183
  store i32 %.1848, ptr %i.sb, align 4, !tbaa !36
  %i.sc = icmp sgt i32 %i.qr, 0
  br i1 %i.sc, label %.lr.ph1272, label %.loopexit

.lr.ph1272:                                       ; preds = %bb.cu
  %wide.trip.count1517 = zext i32 %i.rz to i64
  %i.sd = add nsw i64 %wide.trip.count1503, -1    ; 2 uses
  %xtraiter1868 = and i64 %i.sd, 3                ; 3 uses
  %i.se = add nsw i32 %.1848, -2
  %i.sf = icmp ult i32 %i.se, 3
  %unroll_iter1873 = and i64 %i.sd, -4
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1868, 0
  %lcmp.mod1872 = icmp ne i64 %xtraiter1868, 0
  br label %.lr.ph1267.preheader

.lr.ph1267.preheader:                             ; preds = %._crit_edge1268, %.lr.ph1272
  %indvars.iv1514 = phi i64 [ 1, %.lr.ph1272 ], [ %indvars.iv.next1515, %._crit_edge1268 ] ; 4 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv1514
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !36 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv1514 ; 5 uses
  br i1 %i.sf, label %.lr.ph1267.epil.preheader, label %.lr.ph1267

.lr.ph1267:                                       ; preds = %.lr.ph1267.preheader, %.lr.ph1267
  %indvars.iv1509 = phi i64 [ %indvars.iv.next1510.3, %.lr.ph1267 ], [ 1, %.lr.ph1267.preheader ] ; 5 uses
  %.07971265 = phi i32 [ %spec.select995.3, %.lr.ph1267 ], [ %i.sh, %.lr.ph1267.preheader ]
  %niter1874 = phi i64 [ %niter1874.next.3, %.lr.ph1267 ], [ 0, %.lr.ph1267.preheader ]
  %.idx1622 = mul nuw nsw i64 %indvars.iv1509, 404
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1622
  %i.si = load i32, ptr %gep, align 4, !tbaa !36
  %spec.select995 = call i32 @llvm.smin.i32(i32 %i.si, i32 %.07971265)
  %i.sj = mul nuw i64 %indvars.iv1509, 404
  %i.sk = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.sj
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.sk, i64 404
  %i.sl = load i32, ptr %gep.1, align 4, !tbaa !36
  %spec.select995.1 = call i32 @llvm.smin.i32(i32 %i.sl, i32 %spec.select995)
  %i.sm = mul nuw i64 %indvars.iv1509, 404
  %i.sn = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.sm
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.sn, i64 808
  %i.so = load i32, ptr %gep.2, align 4, !tbaa !36
  %spec.select995.2 = call i32 @llvm.smin.i32(i32 %i.so, i32 %spec.select995.1)
  %i.sp = mul nuw i64 %indvars.iv1509, 404
  %i.sq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.sp
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.sq, i64 1212
  %i.sr = load i32, ptr %gep.3, align 4, !tbaa !36
  %spec.select995.3 = call i32 @llvm.smin.i32(i32 %i.sr, i32 %spec.select995.2) ; 3 uses
  %indvars.iv.next1510.3 = add nuw nsw i64 %indvars.iv1509, 4 ; 2 uses
  %niter1874.next.3 = add nuw i64 %niter1874, 4   ; 2 uses
  %niter1874.ncmp.3 = icmp eq i64 %niter1874.next.3, %unroll_iter1873
  br i1 %niter1874.ncmp.3, label %._crit_edge1268.unr-lcssa, label %.lr.ph1267, !llvm.loop !74

._crit_edge1268.unr-lcssa:                        ; preds = %.lr.ph1267
  br i1 %lcmp.mod1870.not, label %._crit_edge1268, label %.lr.ph1267.epil.preheader

.lr.ph1267.epil.preheader:                        ; preds = %._crit_edge1268.unr-lcssa, %.lr.ph1267.preheader
  %indvars.iv1509.epil.init = phi i64 [ 1, %.lr.ph1267.preheader ], [ %indvars.iv.next1510.3, %._crit_edge1268.unr-lcssa ]
  %.07971265.epil.init = phi i32 [ %i.sh, %.lr.ph1267.preheader ], [ %spec.select995.3, %._crit_edge1268.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1872)
  br label %.lr.ph1267.epil

.lr.ph1267.epil:                                  ; preds = %.lr.ph1267.epil, %.lr.ph1267.epil.preheader
  %indvars.iv1509.epil = phi i64 [ %indvars.iv1509.epil.init, %.lr.ph1267.epil.preheader ], [ %indvars.iv.next1510.epil, %.lr.ph1267.epil ] ; 2 uses
  %.07971265.epil = phi i32 [ %.07971265.epil.init, %.lr.ph1267.epil.preheader ], [ %spec.select995.epil, %.lr.ph1267.epil ]
  %epil.iter1869 = phi i64 [ 0, %.lr.ph1267.epil.preheader ], [ %epil.iter1869.next, %.lr.ph1267.epil ]
  %.idx1622.epil = mul nuw nsw i64 %indvars.iv1509.epil, 404
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1622.epil
  %i.ss = load i32, ptr %gep.epil, align 4, !tbaa !36
  %spec.select995.epil = call i32 @llvm.smin.i32(i32 %i.ss, i32 %.07971265.epil) ; 2 uses
  %indvars.iv.next1510.epil = add nuw nsw i64 %indvars.iv1509.epil, 1
  %epil.iter1869.next = add i64 %epil.iter1869, 1 ; 2 uses
  %epil.iter1869.cmp.not = icmp eq i64 %epil.iter1869.next, %xtraiter1868
  br i1 %epil.iter1869.cmp.not, label %._crit_edge1268, label %.lr.ph1267.epil, !llvm.loop !75

._crit_edge1268:                                  ; preds = %.lr.ph1267.epil, %._crit_edge1268.unr-lcssa
  %spec.select995.lcssa = phi i32 [ %spec.select995.3, %._crit_edge1268.unr-lcssa ], [ %spec.select995.epil, %.lr.ph1267.epil ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv1514
  store i32 %spec.select995.lcssa, ptr %i.st, align 4, !tbaa !36
  %indvars.iv.next1515 = add nuw nsw i64 %indvars.iv1514, 1 ; 2 uses
  %exitcond1518.not = icmp eq i64 %indvars.iv.next1515, %wide.trip.count1517
  br i1 %exitcond1518.not, label %.loopexit, label %.lr.ph1267.preheader, !llvm.loop !76

._crit_edge1260.thread:                           ; preds = %.preheader1076, %._crit_edge1260
  %i.su = phi i32 [ %i.qr, %._crit_edge1260 ], [ %i.qi, %.preheader1076 ] ; 5 uses
  %i.sv = sext i32 %i.su to i64                   ; 3 uses
  %i.sw = call noalias ptr @calloc(i64 noundef %i.sv, i64 noundef 4) #15 ; 4 uses
  store ptr %i.sw, ptr %i.qh, align 8, !tbaa !183
  %i.sx = icmp sgt i32 %i.su, 0
  br i1 %i.sx, label %.lr.ph1263.preheader, label %.loopexit

.lr.ph1263.preheader:                             ; preds = %._crit_edge1260.thread
  %scevgep1505 = getelementptr i8, ptr %i.oi, i64 4
  %i.sy = zext nneg i32 %i.su to i64
  %i.sz = shl nuw nsw i64 %i.sy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.sw, ptr align 4 %scevgep1505, i64 %i.sz, i1 false), !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge1268, %.lr.ph1263.preheader, %._crit_edge1260.thread, %bb.cu
  %.pre-phi = phi i64 [ %i.sv, %.lr.ph1263.preheader ], [ %i.sa, %bb.cu ], [ %i.sv, %._crit_edge1260.thread ], [ %i.sa, %._crit_edge1268 ] ; 3 uses
  %i.ta = phi ptr [ %i.sw, %.lr.ph1263.preheader ], [ %i.sb, %bb.cu ], [ %i.sw, %._crit_edge1260.thread ], [ %i.sb, %._crit_edge1268 ] ; 5 uses
  %i.tb = phi i32 [ %i.su, %.lr.ph1263.preheader ], [ %i.rz, %bb.cu ], [ %i.su, %._crit_edge1260.thread ], [ %i.rz, %._crit_edge1268 ] ; 3 uses
  call void @free(ptr noundef nonnull %i.oi) #12
  %i.tc = call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #15 ; 7 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store ptr %i.tc, ptr %i.td, align 8, !tbaa !184
  store i64 1, ptr %i.tc, align 8, !tbaa !185
  %i.te = icmp sgt i32 %i.tb, 1
  br i1 %i.te, label %.lr.ph1275, label %._crit_edge1276

.lr.ph1275:                                       ; preds = %.loopexit
  %wide.trip.count1522 = zext nneg i32 %i.tb to i64
  %i.tf = add nsw i64 %wide.trip.count1522, -1    ; 2 uses
  %xtraiter1876 = and i64 %i.tf, 3                ; 3 uses
  %i.tg = add nsw i32 %i.tb, -2
  %i.th = icmp ult i32 %i.tg, 3
  br i1 %i.th, label %.epil.preheader1875, label %.lr.ph1275.new

.lr.ph1275.new:                                   ; preds = %.lr.ph1275
  %unroll_iter1882 = and i64 %i.tf, -4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph1275.new
  %i.ti = phi i64 [ 1, %.lr.ph1275.new ], [ %i.uf, %bb.cv ]
  %indvars.iv1519 = phi i64 [ 1, %.lr.ph1275.new ], [ %indvars.iv.next1520.3, %bb.cv ] ; 6 uses
  %niter1883 = phi i64 [ 0, %.lr.ph1275.new ], [ %niter1883.next.3, %bb.cv ]
  %i.tj = getelementptr [4 x i8], ptr %i.ta, i64 %indvars.iv1519
  %i.tk = getelementptr i8, ptr %i.tj, i64 -4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !36
  %i.tm = sext i32 %i.tl to i64
  %i.tn = mul i64 %i.ti, %i.tm                    ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv1519
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !185
  %indvars.iv.next1520 = add nuw nsw i64 %indvars.iv1519, 1 ; 2 uses
  %i.tp = getelementptr [4 x i8], ptr %i.ta, i64 %indvars.iv.next1520
  %i.tq = getelementptr i8, ptr %i.tp, i64 -4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !36
  %i.ts = sext i32 %i.tr to i64
  %i.tt = mul i64 %i.tn, %i.ts                    ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next1520
  store i64 %i.tt, ptr %i.tu, align 8, !tbaa !185
  %indvars.iv.next1520.1 = add nuw nsw i64 %indvars.iv1519, 2 ; 2 uses
  %i.tv = getelementptr [4 x i8], ptr %i.ta, i64 %indvars.iv.next1520.1
  %i.tw = getelementptr i8, ptr %i.tv, i64 -4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !36
  %i.ty = sext i32 %i.tx to i64
  %i.tz = mul i64 %i.tt, %i.ty                    ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next1520.1
  store i64 %i.tz, ptr %i.ua, align 8, !tbaa !185
  %indvars.iv.next1520.2 = add nuw nsw i64 %indvars.iv1519, 3 ; 2 uses
  %i.ub = getelementptr [4 x i8], ptr %i.ta, i64 %indvars.iv.next1520.2
  %i.uc = getelementptr i8, ptr %i.ub, i64 -4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !36
  %i.ue = sext i32 %i.ud to i64
  %i.uf = mul i64 %i.tz, %i.ue                    ; 3 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next1520.2
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !185
  %indvars.iv.next1520.3 = add nuw nsw i64 %indvars.iv1519, 4 ; 2 uses
  %niter1883.next.3 = add i64 %niter1883, 4       ; 2 uses
  %niter1883.ncmp.3 = icmp eq i64 %niter1883.next.3, %unroll_iter1882
  br i1 %niter1883.ncmp.3, label %._crit_edge1276.loopexit.unr-lcssa, label %bb.cv, !llvm.loop !77

._crit_edge1276.loopexit.unr-lcssa:               ; preds = %bb.cv
  %lcmp.mod1880.not = icmp eq i64 %xtraiter1876, 0
  br i1 %lcmp.mod1880.not, label %._crit_edge1276, label %.epil.preheader1875

.epil.preheader1875:                              ; preds = %._crit_edge1276.loopexit.unr-lcssa, %.lr.ph1275
  %.epil.init1879 = phi i64 [ 1, %.lr.ph1275 ], [ %i.uf, %._crit_edge1276.loopexit.unr-lcssa ]
  %indvars.iv1519.epil.init = phi i64 [ 1, %.lr.ph1275 ], [ %indvars.iv.next1520.3, %._crit_edge1276.loopexit.unr-lcssa ]
  %lcmp.mod1881 = icmp ne i64 %xtraiter1876, 0
  call void @llvm.assume(i1 %lcmp.mod1881)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader1875
  %i.uh = phi i64 [ %.epil.init1879, %.epil.preheader1875 ], [ %i.um, %bb.cw ]
  %indvars.iv1519.epil = phi i64 [ %indvars.iv1519.epil.init, %.epil.preheader1875 ], [ %indvars.iv.next1520.epil, %bb.cw ] ; 3 uses
  %epil.iter1877 = phi i64 [ 0, %.epil.preheader1875 ], [ %epil.iter1877.next, %bb.cw ]
  %i.ui = getelementptr [4 x i8], ptr %i.ta, i64 %indvars.iv1519.epil
  %i.uj = getelementptr i8, ptr %i.ui, i64 -4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !36
  %i.ul = sext i32 %i.uk to i64
  %i.um = mul i64 %i.uh, %i.ul                    ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv1519.epil
  store i64 %i.um, ptr %i.un, align 8, !tbaa !185
  %indvars.iv.next1520.epil = add nuw nsw i64 %indvars.iv1519.epil, 1
  %epil.iter1877.next = add i64 %epil.iter1877, 1 ; 2 uses
  %epil.iter1877.cmp.not = icmp eq i64 %epil.iter1877.next, %xtraiter1876
  br i1 %epil.iter1877.cmp.not, label %._crit_edge1276, label %bb.cw, !llvm.loop !78

._crit_edge1276:                                  ; preds = %._crit_edge1276.loopexit.unr-lcssa, %bb.cw, %.loopexit
  %i.uo = sext i32 %i.oc to i64
  %i.up = shl nsw i64 %i.uo, 2                    ; 2 uses
  %i.uq = call noalias ptr @malloc(i64 noundef %i.up) #14 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  store ptr %i.uq, ptr %i.ur, align 8, !tbaa !186
  %i.us = call noalias ptr @malloc(i64 noundef %i.up) #14 ; 11 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !187
  %i.uu = icmp sgt i32 %i.oc, 0
  br i1 %i.uu, label %.lr.ph1281.preheader, label %._crit_edge1286.thread.critedge

.lr.ph1281.preheader:                             ; preds = %._crit_edge1276
  %i.uv = zext nneg i32 %i.oc to i64
  %i.uw = shl nuw nsw i64 %i.uv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.us, i8 -1, i64 %i.uw, i1 false), !tbaa !36
  %i.ux = zext nneg i32 %i.oc to i64              ; 9 uses
  %i.uy = shl nuw nsw i64 %i.ux, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uq, ptr align 4 %.1804, i64 %i.uy, i1 false), !tbaa !36
  %min.iters.check1739 = icmp ult i32 %i.oc, 8
  br i1 %min.iters.check1739, label %.lr.ph1281.preheader1765, label %vector.ph1740

vector.ph1740:                                    ; preds = %.lr.ph1281.preheader
  %n.vec1741 = and i64 %i.ux, 2147483640          ; 3 uses
  br label %vector.body1742

vector.body1742:                                  ; preds = %pred.store.continue1759, %vector.ph1740
  %index1743 = phi i64 [ 0, %vector.ph1740 ], [ %index.next1760, %pred.store.continue1759 ] ; 4 uses
  %i.uz = trunc i64 %index1743 to i32             ; 8 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1804, i64 %index1743
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.1804, i64 %index1743
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load <4 x i32>, ptr %i.va, align 4, !tbaa !36 ; 5 uses
  %i.ve = load <4 x i32>, ptr %i.vc, align 4, !tbaa !36 ; 5 uses
  %i.vf = icmp ne <4 x i32> %i.vd, splat (i32 -1) ; 4 uses
  %i.vg = icmp ne <4 x i32> %i.ve, splat (i32 -1) ; 4 uses
  %i.vh = extractelement <4 x i1> %i.vf, i64 0
  br i1 %i.vh, label %pred.store.if1744, label %pred.store.continue1745

pred.store.if1744:                                ; preds = %vector.body1742
  %i.vi = extractelement <4 x i32> %i.vd, i64 0
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.vj
  store i32 %i.uz, ptr %i.vk, align 4, !tbaa !36
  br label %pred.store.continue1745

pred.store.continue1745:                          ; preds = %pred.store.if1744, %vector.body1742
  %i.vl = extractelement <4 x i1> %i.vf, i64 1
  br i1 %i.vl, label %pred.store.if1746, label %pred.store.continue1747

pred.store.if1746:                                ; preds = %pred.store.continue1745
  %i.vm = extractelement <4 x i32> %i.vd, i64 1
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.vn
  %i.vp = or disjoint i32 %i.uz, 1
  store i32 %i.vp, ptr %i.vo, align 4, !tbaa !36
  br label %pred.store.continue1747

pred.store.continue1747:                          ; preds = %pred.store.if1746, %pred.store.continue1745
  %i.vq = extractelement <4 x i1> %i.vf, i64 2
  br i1 %i.vq, label %pred.store.if1748, label %pred.store.continue1749

pred.store.if1748:                                ; preds = %pred.store.continue1747
  %i.vr = extractelement <4 x i32> %i.vd, i64 2
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.vs
  %i.vu = or disjoint i32 %i.uz, 2
  store i32 %i.vu, ptr %i.vt, align 4, !tbaa !36
  br label %pred.store.continue1749

pred.store.continue1749:                          ; preds = %pred.store.if1748, %pred.store.continue1747
  %i.vv = extractelement <4 x i1> %i.vf, i64 3
  br i1 %i.vv, label %pred.store.if1750, label %pred.store.continue1751

pred.store.if1750:                                ; preds = %pred.store.continue1749
  %i.vw = extractelement <4 x i32> %i.vd, i64 3
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.vx
  %i.vz = or disjoint i32 %i.uz, 3
  store i32 %i.vz, ptr %i.vy, align 4, !tbaa !36
  br label %pred.store.continue1751

pred.store.continue1751:                          ; preds = %pred.store.if1750, %pred.store.continue1749
  %i.wa = extractelement <4 x i1> %i.vg, i64 0
  br i1 %i.wa, label %pred.store.if1752, label %pred.store.continue1753

pred.store.if1752:                                ; preds = %pred.store.continue1751
  %i.wb = extractelement <4 x i32> %i.ve, i64 0
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.wc
  %i.we = or disjoint i32 %i.uz, 4
  store i32 %i.we, ptr %i.wd, align 4, !tbaa !36
  br label %pred.store.continue1753

pred.store.continue1753:                          ; preds = %pred.store.if1752, %pred.store.continue1751
  %i.wf = extractelement <4 x i1> %i.vg, i64 1
  br i1 %i.wf, label %pred.store.if1754, label %pred.store.continue1755

pred.store.if1754:                                ; preds = %pred.store.continue1753
  %i.wg = extractelement <4 x i32> %i.ve, i64 1
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.wh
  %i.wj = or disjoint i32 %i.uz, 5
  store i32 %i.wj, ptr %i.wi, align 4, !tbaa !36
  br label %pred.store.continue1755

pred.store.continue1755:                          ; preds = %pred.store.if1754, %pred.store.continue1753
  %i.wk = extractelement <4 x i1> %i.vg, i64 2
  br i1 %i.wk, label %pred.store.if1756, label %pred.store.continue1757

pred.store.if1756:                                ; preds = %pred.store.continue1755
  %i.wl = extractelement <4 x i32> %i.ve, i64 2
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.wm
  %i.wo = or disjoint i32 %i.uz, 6
  store i32 %i.wo, ptr %i.wn, align 4, !tbaa !36
  br label %pred.store.continue1757

pred.store.continue1757:                          ; preds = %pred.store.if1756, %pred.store.continue1755
  %i.wp = extractelement <4 x i1> %i.vg, i64 3
  br i1 %i.wp, label %pred.store.if1758, label %pred.store.continue1759

pred.store.if1758:                                ; preds = %pred.store.continue1757
  %i.wq = extractelement <4 x i32> %i.ve, i64 3
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.wr
  %i.wt = or disjoint i32 %i.uz, 7
  store i32 %i.wt, ptr %i.ws, align 4, !tbaa !36
  br label %pred.store.continue1759

pred.store.continue1759:                          ; preds = %pred.store.if1758, %pred.store.continue1757
  %index.next1760 = add nuw i64 %index1743, 8     ; 2 uses
  %i.wu = icmp eq i64 %index.next1760, %n.vec1741
  br i1 %i.wu, label %middle.block1761, label %vector.body1742, !llvm.loop !79

middle.block1761:                                 ; preds = %pred.store.continue1759
  %cmp.n1762 = icmp eq i64 %n.vec1741, %i.ux
  br i1 %cmp.n1762, label %._crit_edge1282, label %.lr.ph1281.preheader1765

.lr.ph1281.preheader1765:                         ; preds = %.lr.ph1281.preheader, %middle.block1761
  %indvars.iv1527.ph = phi i64 [ 0, %.lr.ph1281.preheader ], [ %n.vec1741, %middle.block1761 ]
  br label %.lr.ph1281

.lr.ph1281:                                       ; preds = %.lr.ph1281.preheader1765, %bb.cy
  %indvars.iv1527 = phi i64 [ %indvars.iv.next1528, %bb.cy ], [ %indvars.iv1527.ph, %.lr.ph1281.preheader1765 ] ; 3 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1804, i64 %indvars.iv1527
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !36 ; 2 uses
  %.not972 = icmp eq i32 %i.ww, -1
  br i1 %.not972, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph1281
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.wx
  %i.wz = trunc nuw nsw i64 %indvars.iv1527 to i32
  store i32 %i.wz, ptr %i.wy, align 4, !tbaa !36
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph1281, %bb.cx
  %indvars.iv.next1528 = add nuw nsw i64 %indvars.iv1527, 1 ; 2 uses
  %exitcond1531.not = icmp eq i64 %indvars.iv.next1528, %i.ux
  br i1 %exitcond1531.not, label %._crit_edge1282, label %.lr.ph1281, !llvm.loop !80

._crit_edge1282:                                  ; preds = %bb.cy, %middle.block1761
  %i.xa = call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #15
  %i.xb = getelementptr inbounds nuw i8, ptr %i.qh, i64 64
  store ptr %i.xa, ptr %i.xb, align 8, !tbaa !188
  %i.xc = getelementptr inbounds nuw i8, ptr %i.qh, i64 88
  store i32 %i.oc, ptr %i.xc, align 8, !tbaa !189
  %i.xd = getelementptr inbounds nuw i8, ptr %i.qh, i64 80 ; 4 uses
  store i32 0, ptr %i.xd, align 8, !tbaa !190
  %i.xe = add nsw i64 %i.ux, -1                   ; 2 uses
  %xtraiter1884 = and i64 %i.ux, 1
  %i.xf = icmp eq i64 %i.xe, 0
  br i1 %i.xf, label %.lr.ph1285.epil.preheader, label %._crit_edge1282.new

._crit_edge1282.new:                              ; preds = %._crit_edge1282
  %unroll_iter1891 = and i64 %i.ux, 2147483646
  br label %.lr.ph1285

end_hunk_1
