Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_sm_reduce?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mca_coll_sm_reduce_intra:bb.a
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !87 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.an, null
  br i1 %.not6.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.an, %bb.h ]
  %.07.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.am, %bb.h ]
  call void %i.ao(ptr noundef nonnull %9) #7, !inline_history !22
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i, !llvm.loop !23

opal_obj_run_constructors.exit.i:                 ; preds = %.lr.ph.i.i, %bb.h
  %i.ar = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !20
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !84
  %.not229.i = icmp eq i32 %i.ar, %i.as
  br i1 %.not229.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %opal_obj_run_constructors.exit.i
  call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %opal_obj_run_constructors.exit.i
  store ptr @opal_convertor_t_class, ptr %10, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store volatile i32 1, ptr %i.at, align 8, !tbaa !86
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !87 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88 ; 2 uses
  %.not6.i247.i = icmp eq ptr %i.av, null
  br i1 %.not6.i247.i, label %opal_obj_run_constructors.exit251.i, label %.lr.ph.i248.i

.lr.ph.i248.i:                                    ; preds = %bb.j, %.lr.ph.i248.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i248.i ], [ %i.av, %bb.j ]
  %.07.i249.i = phi ptr [ %i.ax, %.lr.ph.i248.i ], [ %i.au, %bb.j ]
  call void %i.aw(ptr noundef nonnull %10) #7, !inline_history !22
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i249.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88 ; 2 uses
  %.not.i250.i = icmp eq ptr %i.ay, null
  br i1 %.not.i250.i, label %opal_obj_run_constructors.exit251.i, label %.lr.ph.i248.i, !llvm.loop !23

opal_obj_run_constructors.exit251.i:              ; preds = %.lr.ph.i248.i, %bb.j
  %i.az = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = icmp ugt i64 %.val.i, %i.x
  %or.cond.i.i = or i1 %i.bb, %i.ba
  br i1 %or.cond.i.i, label %opal_datatype_span.exit.i, label %bb.k, !prof !89

bb.k:                                             ; preds = %opal_obj_run_constructors.exit251.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !90 ; 2 uses
  %i.be = load i64, ptr %i.u, align 8, !tbaa !19
  %i.bf = load i64, ptr %i.t, align 8, !tbaa !18
  %i.bg = sub nsw i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !91
  %i.bj = sub i64 %i.bi, %i.bd
  %i.bk = add i64 %i.y, -1
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = add i64 %i.bj, %i.bl
  br label %opal_datatype_span.exit.i

opal_datatype_span.exit.i:                        ; preds = %bb.k, %opal_obj_run_constructors.exit251.i
  %.06.i = phi i64 [ %i.bd, %bb.k ], [ 0, %opal_obj_run_constructors.exit251.i ]
  %.0.i.i = phi i64 [ %i.bm, %bb.k ], [ 0, %opal_obj_run_constructors.exit251.i ]
  %i.bn = call noalias ptr @malloc(i64 noundef %.0.i.i) #8 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread14.i, label %bb.l

bb.l:                                             ; preds = %opal_datatype_span.exit.i
  %i.bp = sub i64 0, %.06.i
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr @ompi_mpi_local_convertor, align 8, !tbaa !93 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = load <2 x i32>, ptr %i.bs, align 8, !tbaa !20
  store <2 x i32> %i.bu, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !100
  %i.by = call i32 @opal_convertor_prepare_for_recv(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %i.y, ptr noundef nonnull %i.bq) #7 ; 2 uses
  %.not230.i = icmp eq i32 %i.by, 0
  br i1 %.not230.i, label %bb.m, label %.thread14.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bz = add nsw i32 %.val26.val, -1             ; 2 uses
  %.not231.i = icmp eq i32 %i.bz, %5
  br i1 %.not231.i, label %ompi_datatype_copy_content_same_ddt.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr @ompi_mpi_local_convertor, align 8, !tbaa !93 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cd = load <2 x i32>, ptr %i.cb, align 8, !tbaa !20
  store <2 x i32> %i.cd, ptr %i.cc, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !100
  %i.ch = call i32 @opal_convertor_prepare_for_recv(ptr noundef nonnull %10, ptr noundef nonnull %3, i64 noundef %i.ab, ptr noundef %1) #7 ; 2 uses
  %.not232.i = icmp eq i32 %i.ch, 0
  br i1 %.not232.i, label %bb.o, label %.thread14.sink.split.i

bb.o:                                             ; preds = %bb.n, %ompi_datatype_is_contiguous_memory_layout.exit._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %ompi_datatype_is_contiguous_memory_layout.exit._crit_edge.i ], [ %i.bz, %bb.n ] ; 5 uses
  %.0208.i = phi ptr [ null, %ompi_datatype_is_contiguous_memory_layout.exit._crit_edge.i ], [ %i.bq, %bb.n ] ; 4 uses
  %.0207.i = phi ptr [ null, %ompi_datatype_is_contiguous_memory_layout.exit._crit_edge.i ], [ %i.bn, %bb.n ] ; 6 uses
  %i.ci = icmp ne ptr %0, inttoptr (i64 1 to ptr)
  %.not233.i = icmp eq i32 %.pre-phi.i, %5        ; 5 uses
  %or.cond.i = select i1 %i.ci, i1 true, i1 %.not233.i
  br i1 %or.cond.i, label %ompi_datatype_copy_content_same_ddt.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = icmp eq i32 %2, 0                       ; 2 uses
  %or.cond.i252.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i252.i, label %opal_datatype_span.exit254.i, label %bb.q, !prof !89

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !90 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !tbaa !19
  %i.cp = load i64, ptr %i.t, align 8, !tbaa !18
  %i.cq = sub nsw i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !91
  %i.ct = sub i64 %i.cs, %i.cn
  %i.cu = add nsw i64 %i.ab, -1
  %i.cv = mul i64 %i.cq, %i.cu
  %i.cw = add i64 %i.ct, %i.cv
  br label %opal_datatype_span.exit254.i

opal_datatype_span.exit254.i:                     ; preds = %bb.q, %bb.p
  %.1.i = phi i64 [ %i.cn, %bb.q ], [ 0, %bb.p ]
  %.0.i253.i = phi i64 [ %i.cw, %bb.q ], [ 0, %bb.p ]
  %i.cx = call noalias ptr @malloc(i64 noundef %.0.i253.i) #8 ; 5 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %opal_datatype_span.exit254.i
  %.not241.i = icmp eq ptr %.0207.i, null
  br i1 %.not241.i, label %.thread14.i, label %.thread14.sink.split.i

bb.s:                                             ; preds = %opal_datatype_span.exit254.i
  %i.cz = sub i64 0, %.1.i
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz ; 4 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !18
  %.val23.i.i = load i64, ptr %i.u, align 8, !tbaa !19
  %i.db = sub nsw i64 %.val23.i.i, %.val.i.i
  br i1 %i.cl, label %ompi_datatype_copy_content_same_ddt.exit.i, label %.lr.ph.i255.i

.lr.ph.i255.i:                                    ; preds = %bb.s, %bb.t
  %.01728.i.i = phi ptr [ %i.df, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.01827.i.i = phi ptr [ %i.de, %bb.t ], [ %i.da, %bb.s ] ; 2 uses
  %.01926.i.i = phi i64 [ %i.dg, %bb.t ], [ %i.ab, %bb.s ] ; 2 uses
  %spec.select24.i.i = call i64 @llvm.umin.i64(i64 %.01926.i.i, i64 2147483647) ; 3 uses
  %spec.select.i.i = trunc nuw nsw i64 %spec.select24.i.i to i32
  %i.dc = call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i.i, ptr noundef %.01827.i.i, ptr noundef %.01728.i.i) #7
  %.not22.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not22.i.i, label %bb.t, label %ompi_datatype_copy_content_same_ddt.exit.i

bb.t:                                             ; preds = %.lr.ph.i255.i
  %i.dd = mul nsw i64 %spec.select24.i.i, %i.db   ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.01827.i.i, i64 %i.dd
  %i.df = getelementptr inbounds i8, ptr %.01728.i.i, i64 %i.dd
  %i.dg = sub nuw i64 %.01926.i.i, %spec.select24.i.i ; 2 uses
  %.not.i256.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i256.i, label %ompi_datatype_copy_content_same_ddt.exit.i, label %.lr.ph.i255.i, !llvm.loop !24

ompi_datatype_copy_content_same_ddt.exit.i:       ; preds = %bb.t, %.lr.ph.i255.i, %bb.m, %bb.s, %bb.o
  %.not233.i89 = phi i1 [ %.not233.i, %bb.o ], [ %.not233.i, %bb.s ], [ true, %bb.m ], [ %.not233.i, %.lr.ph.i255.i ], [ %.not233.i, %bb.t ]
  %.0207.i88 = phi ptr [ %.0207.i, %bb.o ], [ %.0207.i, %bb.s ], [ %i.bn, %bb.m ], [ %.0207.i, %.lr.ph.i255.i ], [ %.0207.i, %bb.t ] ; 2 uses
  %.0208.i87 = phi ptr [ %.0208.i, %bb.o ], [ %.0208.i, %bb.s ], [ %i.bq, %bb.m ], [ %.0208.i, %.lr.ph.i255.i ], [ %.0208.i, %bb.t ] ; 4 uses
  %.pre-phi.i86 = phi i32 [ %.pre-phi.i, %bb.o ], [ %.pre-phi.i, %bb.s ], [ %5, %bb.m ], [ %.pre-phi.i, %.lr.ph.i255.i ], [ %.pre-phi.i, %bb.t ] ; 2 uses
  %.0205.i = phi ptr [ null, %bb.o ], [ %i.cx, %bb.s ], [ null, %bb.m ], [ %i.cx, %.lr.ph.i255.i ], [ %i.cx, %bb.t ] ; 2 uses
  %.0189.i = phi ptr [ %0, %bb.o ], [ %i.da, %bb.s ], [ %0, %bb.m ], [ %i.da, %.lr.ph.i255.i ], [ %i.da, %bb.t ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val27, i64 64 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.dj = mul i64 %i.y, %i.v                      ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val27, i64 48 ; 2 uses
  %i.dl = sext i32 %.val26.val to i64
  %i.dm = icmp eq ptr %.0207.i88, null            ; 3 uses
  %.not236.i = icmp ne ptr %.0189.i, inttoptr (i64 1 to ptr)
  %.not25.i259.i = icmp eq i32 %2, 0
  %i.dn = add i32 %.val26.val, -2
  %i.do = icmp sgt i32 %.val26.val, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 3 uses
  %i.ds = trunc i64 %i.y to i32
  %i.dt = zext i32 %i.dn to i64
  %i.du = zext i32 %5 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.ar, %ompi_datatype_copy_content_same_ddt.exit.i
  %.0209.i = phi i64 [ 0, %ompi_datatype_copy_content_same_ddt.exit.i ], [ %i.hx, %bb.ar ]
  %.0202.i = phi i64 [ %i.ab, %ompi_datatype_copy_content_same_ddt.exit.i ], [ %i.hw, %bb.ar ]
  %.0200.i = phi i64 [ 0, %ompi_datatype_copy_content_same_ddt.exit.i ], [ %indvars.iv.next70.i, %bb.ar ] ; 2 uses
  %.0197.i = phi i1 [ true, %ompi_datatype_copy_content_same_ddt.exit.i ], [ %.2199.i, %bb.ar ]
  %i.dv = load i32, ptr %i.dh, align 8, !tbaa !106
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !107
  %i.dx = urem i32 %i.dv, %i.dw                   ; 3 uses
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !108
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !38
  %i.ea = mul nsw i32 %i.dz, %i.dx
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb ; 6 uses
  %i.ed = load volatile i32, ptr %i.ec, align 4, !tbaa !110
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.loopexit28.i, label %.preheader27.i

bb.v:                                             ; preds = %.preheader27.i
  %i.ef = add nuw nsw i32 %.019342.i, 1           ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.ef, 100000
  br i1 %exitcond61.not.i, label %bb.w, label %.preheader27.i.backedge

.preheader27.i.backedge:                          ; preds = %bb.v, %bb.w
  %.019342.i.be = phi i32 [ %i.ef, %bb.v ], [ 0, %bb.w ]
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.u, %.preheader27.i.backedge
  %.019342.i = phi i32 [ %.019342.i.be, %.preheader27.i.backedge ], [ 0, %bb.u ]
  %i.eg = load volatile i32, ptr %i.ec, align 4, !tbaa !110
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %.loopexit28.i, label %bb.v

bb.w:                                             ; preds = %bb.v
  %i.ei = call i32 @opal_progress() #7            ; 0 uses
  %i.ej = load volatile i32, ptr %i.ec, align 4, !tbaa !110
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.loopexit28.i, label %.preheader27.i.backedge

.loopexit28.i:                                    ; preds = %bb.w, %.preheader27.i, %bb.u
  store volatile i32 %.val26.val, ptr %i.ec, align 4, !tbaa !110
  %i.el = load i32, ptr %i.dh, align 8, !tbaa !106 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store volatile i32 %i.el, ptr %i.em, align 4, !tbaa !111
  %i.en = add i32 %i.el, 1
  store i32 %i.en, ptr %i.dh, align 8, !tbaa !106
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 308), align 4, !tbaa !112 ; 2 uses
  %i.ep = mul i32 %i.eo, %i.dx
  %i.eq = add nuw nsw i32 %i.dx, 1
  %i.er = mul nsw i32 %i.eo, %i.eq
  %12 = mul i64 %.0200.i, %i.dj
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  %14 = sext i32 %i.ep to i64
  %15 = sext i32 %i.er to i64
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %.loopexit28.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %._crit_edge.i ], [ %.0200.i, %.loopexit28.i ] ; 2 uses
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %._crit_edge.i ], [ %14, %.loopexit28.i ] ; 3 uses
  %.1210.i = phi i64 [ %i.hx, %._crit_edge.i ], [ %.0209.i, %.loopexit28.i ]
  %.0206.i = phi ptr [ %i.hy, %._crit_edge.i ], [ %13, %.loopexit28.i ] ; 4 uses
  %.1203.i = phi i64 [ %i.hw, %._crit_edge.i ], [ %.0202.i, %.loopexit28.i ] ; 2 uses
  %.1198.i = phi i1 [ %.2199.i, %._crit_edge.i ], [ %.0197.i, %.loopexit28.i ] ; 3 uses
  br i1 %.not233.i89, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %or.cond20.not.i = select i1 %.1198.i, i1 %.not236.i, i1 false
  br i1 %or.cond20.not.i, label %bb.z, label %ompi_datatype_copy_content_same_ddt.exit269.i

bb.z:                                             ; preds = %bb.y
  %.val.i257.i = load i64, ptr %i.t, align 8, !tbaa !18
  %.val23.i258.i = load i64, ptr %i.u, align 8, !tbaa !19
  %i.es = sub nsw i64 %.val23.i258.i, %.val.i257.i
  br i1 %.not25.i259.i, label %ompi_datatype_copy_content_same_ddt.exit269.i, label %.lr.ph.i260.i

.lr.ph.i260.i:                                    ; preds = %bb.z, %bb.aa
  %.01728.i261.i = phi ptr [ %i.ew, %bb.aa ], [ %.0189.i, %bb.z ] ; 2 uses
  %.01827.i262.i = phi ptr [ %i.ev, %bb.aa ], [ %.0206.i, %bb.z ] ; 2 uses
  %.01926.i263.i = phi i64 [ %i.ex, %bb.aa ], [ %i.ab, %bb.z ] ; 2 uses
  %spec.select24.i264.i = call i64 @llvm.umin.i64(i64 %.01926.i263.i, i64 2147483647) ; 3 uses
  %spec.select.i265.i = trunc nuw nsw i64 %spec.select24.i264.i to i32
  %i.et = call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i265.i, ptr noundef %.01827.i262.i, ptr noundef %.01728.i261.i) #7
  %.not22.i266.i = icmp eq i32 %i.et, 0
  br i1 %.not22.i266.i, label %bb.aa, label %ompi_datatype_copy_content_same_ddt.exit269.i

bb.aa:                                            ; preds = %.lr.ph.i260.i
  %i.eu = mul nsw i64 %spec.select24.i264.i, %i.es ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.01827.i262.i, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.01728.i261.i, i64 %i.eu
  %i.ex = sub nuw i64 %.01926.i263.i, %spec.select24.i264.i ; 2 uses
  %.not.i268.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i268.i, label %ompi_datatype_copy_content_same_ddt.exit269.i, label %.lr.ph.i260.i, !llvm.loop !24

bb.ab:                                            ; preds = %bb.x
  %i.ey = load ptr, ptr %i.dk, align 8, !tbaa !113
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %indvars.iv67.i ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !115
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !38
  %i.fc = mul nsw i32 %i.fb, %5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.dl
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 5 uses
  %i.fh = load volatile i64, ptr %i.fg, align 8, !tbaa !78
  %.not23444.i = icmp eq i64 %i.fh, 0
  br i1 %.not23444.i, label %.preheader24.i, label %.loopexit25.i

bb.ac:                                            ; preds = %.preheader24.i
  %i.fi = add nuw nsw i32 %.019243.i, 1           ; 2 uses
  %exitcond62.not.i = icmp eq i32 %i.fi, 100000
  br i1 %exitcond62.not.i, label %bb.ad, label %.preheader24.i.backedge

.preheader24.i.backedge:                          ; preds = %bb.ac, %bb.ad
  %.019243.i.be = phi i32 [ %i.fi, %bb.ac ], [ 0, %bb.ad ]
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %bb.ab, %.preheader24.i.backedge
  %.019243.i = phi i32 [ %.019243.i.be, %.preheader24.i.backedge ], [ 0, %bb.ab ]
  %i.fj = load volatile i64, ptr %i.fg, align 8, !tbaa !78
  %.not235.i = icmp eq i64 %i.fj, 0
  br i1 %.not235.i, label %bb.ac, label %.loopexit25.i

bb.ad:                                            ; preds = %bb.ac
  %i.fk = call i32 @opal_progress() #7            ; 0 uses
  %i.fl = load volatile i64, ptr %i.fg, align 8, !tbaa !78
  %.not234.i = icmp eq i64 %i.fl, 0
  br i1 %.not234.i, label %.preheader24.i.backedge, label %.loopexit25.i

.loopexit25.i:                                    ; preds = %bb.ad, %.preheader24.i, %bb.ab
  %i.fm = load volatile i64, ptr %i.fg, align 8, !tbaa !78
  store i64 %i.fm, ptr %i.a, align 8, !tbaa !78
  store volatile i64 0, ptr %i.fg, align 8, !tbaa !78
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit25.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !116
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !79
  %i.fq = mul nsw i32 %i.fp, %.pre-phi.i86
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0206.i, ptr align 1 %i.fs, i64 %i.ft, i1 false)
  br label %ompi_datatype_copy_content_same_ddt.exit269.i

bb.af:                                            ; preds = %.loopexit25.i
  store i64 %i.z, ptr %i.a, align 8, !tbaa !78
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !116
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !79
  %i.fx = mul nsw i32 %i.fw, %.pre-phi.i86
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  store ptr %i.fz, ptr %8, align 8, !tbaa !117
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !81
  %i.ga = call i32 @opal_convertor_unpack(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull @mca_coll_sm_one, ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %ompi_datatype_copy_content_same_ddt.exit269.i

ompi_datatype_copy_content_same_ddt.exit269.i:    ; preds = %bb.aa, %.lr.ph.i260.i, %bb.af, %bb.ae, %bb.z, %bb.y
  %.2199.i = phi i1 [ %.1198.i, %bb.af ], [ false, %bb.z ], [ false, %bb.y ], [ %.1198.i, %bb.ae ], [ false, %.lr.ph.i260.i ], [ false, %bb.aa ] ; 2 uses
  br i1 %i.do, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %ompi_datatype_copy_content_same_ddt.exit269.i
  %i.gb = trunc i64 %.1203.i to i32
  %i.gc = call i32 @llvm.smin.i32(i32 %i.gb, i32 %i.ds)
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul i64 %indvars.iv69.i, %i.dj
  %i.gf = getelementptr inbounds nuw i8, ptr %.0189.i, i64 %i.ge
  br label %bb.ag

bb.ag:                                            ; preds = %opal_convertor_set_position.exit.i, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %i.dt, %.lr.ph.i ], [ %indvars.iv.next65.i, %opal_convertor_set_position.exit.i ] ; 6 uses
  %i.gg = icmp eq i64 %indvars.iv64.i, %i.du
  br i1 %i.gg, label %opal_convertor_set_position.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gh = load ptr, ptr %i.dk, align 8, !tbaa !113
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %indvars.iv67.i ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !115
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !38
  %i.gl = mul nsw i32 %i.gk, %5
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv64.i ; 5 uses
  %i.gp = load volatile i64, ptr %i.go, align 8, !tbaa !78
  %.not23946.i = icmp eq i64 %i.gp, 0
  br i1 %.not23946.i, label %.preheader.i, label %.loopexit.i

bb.ai:                                            ; preds = %.preheader.i
  %i.gq = add nuw nsw i32 %.019145.i, 1           ; 2 uses
  %exitcond63.not.i = icmp eq i32 %i.gq, 100000
  br i1 %exitcond63.not.i, label %bb.aj, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.ai, %bb.aj
  %.019145.i.be = phi i32 [ %i.gq, %bb.ai ], [ 0, %bb.aj ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ah, %.preheader.i.backedge
  %.019145.i = phi i32 [ %.019145.i.be, %.preheader.i.backedge ], [ 0, %bb.ah ]
  %i.gr = load volatile i64, ptr %i.go, align 8, !tbaa !78
  %.not240.i = icmp eq i64 %i.gr, 0
  br i1 %.not240.i, label %bb.ai, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai
  %i.gs = call i32 @opal_progress() #7            ; 0 uses
  %i.gt = load volatile i64, ptr %i.go, align 8, !tbaa !78
  %.not239.i = icmp eq i64 %i.gt, 0
  br i1 %.not239.i, label %.preheader.i.backedge, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.aj, %.preheader.i, %bb.ah
  %i.gu = load volatile i64, ptr %i.go, align 8, !tbaa !78
  store i64 %i.gu, ptr %i.a, align 8, !tbaa !78
  store volatile i64 0, ptr %i.go, align 8, !tbaa !78
  br i1 %i.dm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !116
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !79
  %i.gy = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.gz = mul nsw i32 %i.gx, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gw, i64 %i.ha
  br label %opal_convertor_set_position.exit.i

bb.al:                                            ; preds = %.loopexit.i
  store i64 %i.z, ptr %i.a, align 8, !tbaa !78
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !116
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !79
  %i.hf = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.hg = mul nsw i32 %i.he, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %i.hd, i64 %i.hh
  store ptr %i.hi, ptr %8, align 8, !tbaa !117
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !81
  %i.hj = call i32 @opal_convertor_unpack(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull @mca_coll_sm_one, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.hk = load i64, ptr %i.dp, align 8, !tbaa !118 ; 3 uses
  %i.hl = load i64, ptr %i.b, align 8, !tbaa !78  ; 3 uses
  %.not.i270.i = icmp ugt i64 %i.hk, %i.hl
  br i1 %.not.i270.i, label %bb.an, label %bb.am, !prof !119

bb.am:                                            ; preds = %bb.al
  %i.hm = load i32, ptr %i.dq, align 4, !tbaa !120
  %i.hn = or i32 %i.hm, 134217728
  store i32 %i.hn, ptr %i.dq, align 4, !tbaa !120
  store i64 %i.hk, ptr %i.dr, align 8, !tbaa !121
  store i64 %i.hk, ptr %i.b, align 8, !tbaa !78
  br label %opal_convertor_set_position.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ho = load i64, ptr %i.dr, align 8, !tbaa !121
  %i.hp = icmp eq i64 %i.hl, %i.ho
  br i1 %i.hp, label %opal_convertor_set_position.exit.i, label %bb.ao, !prof !119

bb.ao:                                            ; preds = %bb.an
  %i.hq = load i32, ptr %i.dq, align 4, !tbaa !120 ; 3 uses
  %i.hr = and i32 %i.hq, -134217729
  store i32 %i.hr, ptr %i.dq, align 4, !tbaa !120
  %i.hs = and i32 %i.hq, 32
  %.not17.i.i = icmp eq i32 %i.hs, 0
  %i.ht = and i32 %i.hq, 786432
  %.not18.i.i = icmp eq i32 %i.ht, 0
  %or.cond.i272.i = or i1 %.not17.i.i, %.not18.i.i
  br i1 %or.cond.i272.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.hl, ptr %i.dr, align 8, !tbaa !121
  br label %opal_convertor_set_position.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.hu = call i32 @opal_convertor_set_position_nocheck(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %opal_convertor_set_position.exit.i

opal_convertor_set_position.exit.i:               ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.ag
  %.sink.i = phi ptr [ %i.hb, %bb.ak ], [ %i.gf, %bb.ag ], [ %.0208.i87, %bb.am ], [ %.0208.i87, %bb.an ], [ %.0208.i87, %bb.ap ], [ %.0208.i87, %bb.aq ]
  call fastcc void @ompi_op_reduce(ptr noundef readonly %4, ptr noundef %.sink.i, ptr noundef %.0206.i, i64 noundef %i.gd, ptr noundef %3)
  %indvars.iv.next65.i = add nsw i64 %indvars.iv64.i, -1
  %i.hv = icmp sgt i64 %indvars.iv64.i, 0
  br i1 %i.hv, label %bb.ag, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %opal_convertor_set_position.exit.i, %ompi_datatype_copy_content_same_ddt.exit269.i
  %i.hw = sub i64 %.1203.i, %i.y                  ; 2 uses
  %i.hx = add i64 %.1210.i, %i.z                  ; 3 uses
  %indvars.iv.next68.i = add nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %indvars.iv.next70.i = add nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0206.i, i64 %i.dj
  %i.hz = icmp ult i64 %i.hx, %i.ac               ; 2 uses
  %i.ia = icmp slt i64 %indvars.iv.next68.i, %15
  %i.ib = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %i.ib, label %bb.x, label %bb.ar, !llvm.loop !26

bb.ar:                                            ; preds = %._crit_edge.i
  %i.ic = atomicrmw volatile add ptr %i.ec, i32 -1 monotonic, align 4 ; 0 uses
  br i1 %i.hz, label %bb.u, label %bb.as, !llvm.loop !27

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = load ptr, ptr %9, align 8, !tbaa !85
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !122 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !88 ; 2 uses
  %.not6.i273.i = icmp eq ptr %i.ig, null
  br i1 %.not6.i273.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i274.i

.lr.ph.i274.i:                                    ; preds = %bb.at, %.lr.ph.i274.i
  %i.ih = phi ptr [ %i.ij, %.lr.ph.i274.i ], [ %i.ig, %bb.at ]
  %.07.i275.i = phi ptr [ %i.ii, %.lr.ph.i274.i ], [ %i.if, %bb.at ]
  call void %i.ih(ptr noundef nonnull %9) #7, !inline_history !28
  %i.ii = getelementptr inbounds nuw i8, ptr %.07.i275.i, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !88 ; 2 uses
  %.not.i276.i = icmp eq ptr %i.ij, null
  br i1 %.not.i276.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i274.i, !llvm.loop !29

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i274.i, %bb.at
  %i.ik = load ptr, ptr %10, align 8, !tbaa !85
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !122 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !88 ; 2 uses
  %.not6.i277.i = icmp eq ptr %i.in, null
  br i1 %.not6.i277.i, label %opal_obj_run_destructors.exit281.i, label %.lr.ph.i278.i

.lr.ph.i278.i:                                    ; preds = %opal_obj_run_destructors.exit.i, %.lr.ph.i278.i
  %i.io = phi ptr [ %i.iq, %.lr.ph.i278.i ], [ %i.in, %opal_obj_run_destructors.exit.i ]
  %.07.i279.i = phi ptr [ %i.ip, %.lr.ph.i278.i ], [ %i.im, %opal_obj_run_destructors.exit.i ]
  call void %i.io(ptr noundef nonnull %10) #7, !inline_history !28
  %i.ip = getelementptr inbounds nuw i8, ptr %.07.i279.i, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !88 ; 2 uses
  %.not.i280.i = icmp eq ptr %i.iq, null
  br i1 %.not.i280.i, label %opal_obj_run_destructors.exit281.i, label %.lr.ph.i278.i, !llvm.loop !29

opal_obj_run_destructors.exit281.i:               ; preds = %.lr.ph.i278.i, %opal_obj_run_destructors.exit.i
  call void @free(ptr noundef nonnull %.0207.i88) #7
  br label %bb.au

bb.au:                                            ; preds = %opal_obj_run_destructors.exit281.i, %bb.as
  %.not238.i = icmp eq ptr %.0205.i, null
  br i1 %.not238.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %.0205.i) #7
  br label %bb.aw

.thread14.sink.split.i:                           ; preds = %bb.r, %bb.n, %bb.l
  %.sink112.i = phi ptr [ %i.bn, %bb.l ], [ %i.bn, %bb.n ], [ %.0207.i, %bb.r ]
  %.0.ph.ph.i = phi i32 [ %i.by, %bb.l ], [ %i.ch, %bb.n ], [ -2, %bb.r ]
  call void @free(ptr noundef nonnull %.sink112.i) #7
  br label %.thread14.i

.thread14.i:                                      ; preds = %.thread14.sink.split.i, %bb.r, %opal_datatype_span.exit.i
  %.0.ph.i = phi i32 [ -2, %opal_datatype_span.exit.i ], [ -2, %bb.r ], [ %.0.ph.ph.i, %.thread14.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %reduce_inorder.exit

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %reduce_inorder.exit

bb.ax:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.ir = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !20
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !84
  %.not.i = icmp eq i32 %i.ir, %i.is
  br i1 %.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr @opal_convertor_t_class, ptr %11, align 8, !tbaa !85
  %i.it = getelementptr inbounds nuw i8, ptr %11, i64 8
  store volatile i32 1, ptr %i.it, align 8, !tbaa !86
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !87 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !88 ; 2 uses
  %.not6.i282.i = icmp eq ptr %i.iv, null
  br i1 %.not6.i282.i, label %opal_obj_run_constructors.exit286.i, label %.lr.ph.i283.i

.lr.ph.i283.i:                                    ; preds = %bb.az, %.lr.ph.i283.i
  %i.iw = phi ptr [ %i.iy, %.lr.ph.i283.i ], [ %i.iv, %bb.az ]
  %.07.i284.i = phi ptr [ %i.ix, %.lr.ph.i283.i ], [ %i.iu, %bb.az ]
  call void %i.iw(ptr noundef nonnull %11) #7, !inline_history !22
  %i.ix = getelementptr inbounds nuw i8, ptr %.07.i284.i, i64 8 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !88 ; 2 uses
  %.not.i285.i = icmp eq ptr %i.iy, null
  br i1 %.not.i285.i, label %opal_obj_run_constructors.exit286.i, label %.lr.ph.i283.i, !llvm.loop !23

opal_obj_run_constructors.exit286.i:              ; preds = %.lr.ph.i283.i, %bb.az
  %i.iz = load ptr, ptr @ompi_mpi_local_convertor, align 8, !tbaa !93 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jc = load <2 x i32>, ptr %i.ja, align 8, !tbaa !20
  store <2 x i32> %i.jc, ptr %i.jb, align 8, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !100
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 96
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !100
  %i.jg = call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %11, ptr noundef nonnull %3, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, ptr noundef %0) #7 ; 2 uses
  %.not226.i = icmp eq i32 %i.jg, 0
  br i1 %.not226.i, label %.preheader33.i, label %.critedge.i

.preheader33.i:                                   ; preds = %opal_obj_run_constructors.exit286.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.val27, i64 64 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.jj = getelementptr inbounds nuw i8, ptr %.val27, i64 48
  %i.jk = sext i32 %.val25 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bj, %.preheader33.i
  %.2211.i = phi i64 [ %i.le, %bb.bj ], [ 0, %.preheader33.i ]
  %i.jl = load i32, ptr %i.jh, align 8, !tbaa !106 ; 4 uses
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !107
  %i.jn = urem i32 %i.jl, %i.jm                   ; 3 uses
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !108
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !38
  %i.jq = mul nsw i32 %i.jp, %i.jn
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jo, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 7 uses
  %i.ju = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.jv = icmp eq i32 %i.jl, %i.ju
  br i1 %i.jv, label %.loopexit31.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.ba, %bb.bh
  %i.jw = phi i32 [ %i.kj, %bb.bh ], [ %i.jl, %bb.ba ] ; 10 uses
  br label %bb.bg

bb.bb:                                            ; preds = %bb.bg
  %i.jx = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %.loopexit31.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jz = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.ka = icmp eq i32 %i.jw, %i.jz
  br i1 %i.ka, label %.loopexit31.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kb = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.kc = icmp eq i32 %i.jw, %i.kb
  br i1 %i.kc, label %.loopexit31.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kd = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.ke = icmp eq i32 %i.jw, %i.kd
  br i1 %i.ke, label %.loopexit31.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kf = add nuw nsw i32 %.019041.i, 5           ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.kf, 100000
  br i1 %exitcond.not.i.4, label %bb.bh, label %bb.bg, !llvm.loop !30

bb.bg:                                            ; preds = %bb.bf, %.preheader30.i
  %.019041.i = phi i32 [ 0, %.preheader30.i ], [ %i.kf, %bb.bf ]
  %i.kg = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.kh = icmp eq i32 %i.jw, %i.kg
  br i1 %i.kh, label %.loopexit31.i, label %bb.bb

bb.bh:                                            ; preds = %bb.bf
  %i.ki = call i32 @opal_progress() #7            ; 0 uses
  %i.kj = load i32, ptr %i.jh, align 8, !tbaa !106 ; 3 uses
  %i.kk = load volatile i32, ptr %i.jt, align 4, !tbaa !111
  %i.kl = icmp eq i32 %i.kj, %i.kk
  br i1 %i.kl, label %.loopexit31.i, label %.preheader30.i

.loopexit31.i:                                    ; preds = %bb.bh, %bb.bg, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.ba
  %i.km = phi i32 [ %i.jw, %bb.bg ], [ %i.jl, %bb.ba ], [ %i.jw, %bb.be ], [ %i.jw, %bb.bd ], [ %i.jw, %bb.bc ], [ %i.jw, %bb.bb ], [ %i.kj, %bb.bh ]
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.jh, align 8, !tbaa !106
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 308), align 4, !tbaa !112 ; 2 uses
  %i.kp = mul i32 %i.ko, %i.jn
  %i.kq = add nuw nsw i32 %i.jn, 1
  %i.kr = mul nsw i32 %i.ko, %i.kq
  %i.ks = sext i32 %i.kp to i64
  %i.kt = sext i32 %i.kr to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.loopexit31.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bi ], [ %i.ks, %.loopexit31.i ] ; 2 uses
  %.3212.i = phi i64 [ %i.le, %bb.bi ], [ %.2211.i, %.loopexit31.i ]
  %i.ku = load ptr, ptr %i.jj, align 8, !tbaa !113
  %i.kv = getelementptr inbounds [16 x i8], ptr %i.ku, i64 %indvars.iv.i ; 2 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !78
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !116
end_hunk_0
