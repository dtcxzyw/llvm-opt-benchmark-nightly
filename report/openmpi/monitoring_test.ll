Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/monitoring_test?download=true
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.x = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !18
  %i.y = load i32, ptr %i.b, align 4, !tbaa !18
  %i.z = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = add nsw <2 x i32> %i.aa, <i32 1, i32 -1>
  %i.ac = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ae = srem <2 x i32> %i.ab, %i.ad             ; 3 uses
  %.b110 = load i1, ptr @with_mpit, align 4
  br i1 %.b110, label %bb.d, label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(12) @.str) #7
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(14) @.str.2) #7
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %.lr.ph.split
  %with_mpit.sink = phi ptr [ @with_mpit, %.lr.ph.split ], [ @with_rma, %bb.b ]
  %str.1.sink = phi ptr [ @str.1, %.lr.ph.split ], [ @str, %bb.b ]
  store i1 true, ptr %with_mpit.sink, align 4
  %puts141 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !9

bb.d:                                             ; preds = %._crit_edge
  %i.al = call i32 @MPI_T_init_thread(i32 noundef 0, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.al) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @flush_pvar_name, i32 noundef 9, ptr noundef nonnull @flush_pvar_idx) #6 ; 2 uses
  %.not112 = icmp eq i32 %i.an, 0
  br i1 %.not112, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ap = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.an) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = call i32 @MPI_T_pvar_session_create(ptr noundef nonnull %i.g) #6 ; 2 uses
  %.not113 = icmp eq i32 %i.aq, 0
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.as = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.aq) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.au = load i32, ptr @flush_pvar_idx, align 4, !tbaa !18
  %i.av = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.at, i32 noundef %i.au, ptr noundef nonnull %i.i, ptr noundef nonnull @flush_handle, ptr noundef nonnull %i.e) #6 ; 2 uses
  %.not114 = icmp eq i32 %i.av, 0
  br i1 %.not114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ax = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.av) #6 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.az = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.ba = call i32 @MPI_T_pvar_start(ptr noundef %i.ay, ptr noundef %i.az) #6 ; 2 uses
  %.not115 = icmp eq i32 %i.ba, 0
  br i1 %.not115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.bc = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ba) #6 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !18
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %.preheader199

bb.o:                                             ; preds = %bb.n
  store i32 25, ptr %i.c, align 4, !tbaa !18
  %i.bf = extractelement <2 x i32> %i.ae, i64 0
  %i.bg = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.bf, i32 noundef 201, ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  br label %.preheader199

.preheader199:                                    ; preds = %bb.o, %bb.n
  %i.bh = extractelement <2 x i32> %i.ae, i64 1
  %i.bi = extractelement <2 x i32> %i.ae, i64 0
  br label %bb.p

bb.p:                                             ; preds = %.preheader199, %thread-pre-split
  %.089 = phi i32 [ %.2, %thread-pre-split ], [ 201, %.preheader199 ] ; 3 uses
  %i.bj = call i32 @MPI_Recv(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.bh, i32 noundef %.089, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #6 ; 0 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !18
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.c, align 4, !tbaa !18
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !18
  %i.bo = add nsw i32 %.089, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1 = phi i32 [ %i.bo, %bb.q ], [ %.089, %bb.p ] ; 3 uses
  %i.bp = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.bi, i32 noundef %.1, ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !18
  %.not116 = icmp eq i32 %i.bq, 0
  %.pr = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  br i1 %.not116, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = add nsw i32 %.pr, -1                    ; 2 uses
  store i32 %i.br, ptr %i.c, align 4, !tbaa !18
  %i.bs = add nsw i32 %.1, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.r, %bb.s
  %i.bt = phi i32 [ %i.br, %bb.s ], [ %.pr, %bb.r ]
  %.2 = phi i32 [ %i.bs, %bb.s ], [ %.1, %bb.r ]
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %bb.p

bb.t:                                             ; preds = %thread-pre-split
  %.b109 = load i1, ptr @with_mpit, align 4
  br i1 %.b109, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.bw = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.bx = call i32 @MPI_T_pvar_write(ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.j) #6
  %.not117 = icmp eq i32 %i.bx, 0
  br i1 %.not117, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.9, i32 noundef %i.bz, ptr noundef nonnull %i.j, i32 noundef %i.bz) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.cc = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.cd = call i32 @MPI_T_pvar_stop(ptr noundef %i.cb, ptr noundef %i.cc) #6 ; 2 uses
  %.not118 = icmp eq i32 %i.cd, 0
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.cf = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cd) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ch = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.ci = call i32 @MPI_T_pvar_start(ptr noundef %i.cg, ptr noundef %i.ch) #6 ; 2 uses
  %.not119 = icmp eq i32 %i.ci, 0
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ck = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ci) #6 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.cm = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.cn = call i32 @MPI_T_pvar_write(ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef nonnull @nullbuf) #6
  %.not120 = icmp eq i32 %i.cn, 0
  br i1 %.not120, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !18
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.11, i32 noundef %i.cp, ptr noundef nonnull %i.j) #8 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.t
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.cs = srem i32 %i.cr, 2
  %i.ct = call i32 @MPI_Comm_split(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cs, i32 noundef %i.cr, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !18
  %2 = and i32 %i.cu, 1
  %.not121 = icmp eq i32 %2, 0
  br i1 %.not121, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cw = call i32 @MPI_Comm_rank(ptr noundef %i.cv, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cy = call i32 @MPI_Comm_size(ptr noundef %i.cx, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.ae, label %.loopexit146

bb.ae:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.dc = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.de = add nsw <2 x i32> %i.dd, <i32 1, i32 -1>
  %i.df = insertelement <2 x i32> poison, i32 %i.cz, i64 0
  %i.dg = shufflevector <2 x i32> %i.df, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dh = srem <2 x i32> %i.de, %i.dg             ; 3 uses
  %i.di = icmp eq i32 %i.db, 0
  br i1 %i.di, label %bb.af, label %.preheader

bb.af:                                            ; preds = %bb.ae
  store i32 50, ptr %i.c, align 4, !tbaa !18
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dk = extractelement <2 x i32> %i.dh, i64 0
  %i.dl = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.dk, i32 noundef 201, ptr noundef %i.dj) #6 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.af, %bb.ae
  %i.dm = extractelement <2 x i32> %i.dh, i64 1
  %i.dn = extractelement <2 x i32> %i.dh, i64 0
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %thread-pre-split142
  %.3 = phi i32 [ %.5, %thread-pre-split142 ], [ 201, %.preheader ] ; 3 uses
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dp = call i32 @MPI_Recv(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.dm, i32 noundef %.3, ptr noundef %i.do, ptr noundef null) #6 ; 0 uses
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !18
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !18
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.c, align 4, !tbaa !18
  %i.du = add nsw i32 %.3, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.4 = phi i32 [ %i.du, %bb.ah ], [ %.3, %bb.ag ] ; 3 uses
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dw = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.dn, i32 noundef %.4, ptr noundef %i.dv) #6 ; 0 uses
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !18
  %.not122 = icmp eq i32 %i.dx, 0
  %.pr143 = load i32, ptr %i.c, align 4, !tbaa !18 ; 2 uses
  br i1 %.not122, label %thread-pre-split142, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = add nsw i32 %.pr143, -1                 ; 2 uses
  store i32 %i.dy, ptr %i.c, align 4, !tbaa !18
  %i.dz = add nsw i32 %.4, 1
  br label %thread-pre-split142

thread-pre-split142:                              ; preds = %bb.ai, %bb.aj
  %i.ea = phi i32 [ %i.dy, %bb.aj ], [ %.pr143, %bb.ai ]
  %.5 = phi i32 [ %i.dz, %bb.aj ], [ %.4, %bb.ai ]
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %.loopexit146, label %bb.ag

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ed = call i32 @MPI_Comm_rank(ptr noundef %i.ec, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ef = call i32 @MPI_Comm_size(ptr noundef %i.ee, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !18
  %i.eh = sdiv i32 10240, %i.eg                   ; 2 uses
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ej = call i32 @MPI_Alltoall(ptr noundef nonnull %i.k, i32 noundef %i.eh, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.l, i32 noundef %i.eh, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.ei) #6 ; 0 uses
  %i.ek = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.el = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.em = srem i32 %i.el, 2
  %i.en = call i32 @MPI_Comm_split(ptr noundef %i.ek, i32 noundef %i.em, i32 noundef %i.el, ptr noundef nonnull %i.m) #6 ; 0 uses
  %i.eo = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.ep = call i32 @MPI_Barrier(ptr noundef %i.eo) #6 ; 0 uses
  %i.eq = call i32 @MPI_Comm_free(ptr noundef nonnull %i.m) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %.loopexit146

.loopexit146:                                     ; preds = %thread-pre-split142, %bb.ad, %bb.ak
  %.b108 = load i1, ptr @with_mpit, align 4
  br i1 %.b108, label %bb.al, label %bb.at

bb.al:                                            ; preds = %.loopexit146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.12, i64 13, i1 false)
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.es = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.et = call i32 @MPI_T_pvar_write(ptr noundef %i.er, ptr noundef %i.es, ptr noundef nonnull %i.j) #6
  %.not123 = icmp eq i32 %i.et, 0
  br i1 %.not123, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ev = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.9, i32 noundef %i.ev, ptr noundef nonnull %i.j, i32 noundef %i.ev) #8 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ey = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.ez = call i32 @MPI_T_pvar_stop(ptr noundef %i.ex, ptr noundef %i.ey) #6 ; 2 uses
  %.not124 = icmp eq i32 %i.ez, 0
  br i1 %.not124, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.fb = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ez) #6 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fd = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.fe = call i32 @MPI_T_pvar_start(ptr noundef %i.fc, ptr noundef %i.fd) #6 ; 2 uses
  %.not125 = icmp eq i32 %i.fe, 0
  br i1 %.not125, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.fg = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fe) #6 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fi = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.fj = call i32 @MPI_T_pvar_write(ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef nonnull @nullbuf) #6
  %.not126 = icmp eq i32 %i.fj, 0
  br i1 %.not126, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.fl = load i32, ptr %i.f, align 4, !tbaa !18
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.11, i32 noundef %i.fl, ptr noundef nonnull %i.j) #8 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %.loopexit146
  %.b111 = load i1, ptr @with_rma, align 4
  br i1 %.b111, label %bb.bl, label %vector.ph

vector.ph:                                        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.fn = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.fo = call i32 @MPI_Comm_size(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.fp = load i32, ptr %i.a, align 4, !tbaa !18  ; 3 uses
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fr, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fs, align 16, !tbaa !18
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ft, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fu, align 16, !tbaa !18
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.next ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fv, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fw, align 16, !tbaa !18
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index.next ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fx, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fy, align 16, !tbaa !18
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fz = icmp eq i64 %index.next.1, 10240
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %i.ga = add nsw i32 %i.fp, 1
  %i.gb = srem i32 %i.ga, %i.fq                   ; 5 uses
  %i.gc = add i32 %i.fp, -1
  %i.gd = add i32 %i.gc, %i.fq
  %i.ge = srem i32 %i.gd, %i.fq                   ; 6 uses
  %i.gf = call i32 @MPI_Win_create(ptr noundef nonnull %i.p, i64 noundef 40960, i32 noundef 4, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.n) #6 ; 0 uses
  %i.gg = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.gh = call i32 @MPI_Win_fence(i32 noundef 2, ptr noundef %i.gg) #6 ; 0 uses
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !18
  %3 = and i32 %i.gi, 1
  %.not127 = icmp eq i32 %3, 0
  %i.gj = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  br i1 %.not127, label %bb.av, label %bb.au

bb.au:                                            ; preds = %middle.block
  %i.gk = call i32 @MPI_Win_fence(i32 noundef 12, ptr noundef %i.gj) #6 ; 0 uses
  %i.gl = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.gm = call i32 @MPI_Get(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.ge, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.gl) #6 ; 0 uses
  br label %bb.aw

bb.av:                                            ; preds = %middle.block
  %i.gn = call i32 @MPI_Put(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gb, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.gj) #6 ; 0 uses
  %i.go = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.gp = call i32 @MPI_Win_fence(i32 noundef 12, ptr noundef %i.go) #6 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.gr = call i32 @MPI_Win_fence(i32 noundef 16, ptr noundef %i.gq) #6 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  %i.gs = call i32 @MPI_Comm_group(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.q) #6 ; 0 uses
  %i.gt = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.gu = call i32 @MPI_Comm_group(ptr noundef %i.gt, ptr noundef nonnull %i.r) #6 ; 0 uses
  %i.gv = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.gw = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.gx = call i32 @MPI_Group_difference(ptr noundef %i.gv, ptr noundef %i.gw, ptr noundef nonnull %i.s) #6 ; 0 uses
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !18
  %4 = and i32 %i.gy, 1
  %.not128 = icmp eq i32 %4, 0
  %i.gz = load ptr, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.ha = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  br i1 %.not128, label %bb.bg, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.bb
  %indvars.iv158 = phi i64 [ 0, %bb.aw ], [ %indvars.iv.next159, %bb.bb ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv158
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !18 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv158
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18
  %.not135 = icmp eq i32 %i.hc, %i.he
  br i1 %.not135, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hf = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %5 = and i32 %i.hf, 1
  %.not136.a = icmp eq i32 %5, 0                  ; 2 uses
  %or.cond145.v = select i1 %.not136.a, i32 %i.hf, i32 %i.ge ; 2 uses
  %or.cond145.not = icmp eq i32 %i.hc, %or.cond145.v
  br i1 %or.cond145.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hg = select i1 %.not136.a, ptr @.str.15, ptr @.str.14
  %i.hh = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.hg, i32 noundef %i.hh, i32 noundef %i.hc, i32 noundef %or.cond145.v) ; 0 uses
  %i.hj = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #6 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.ba
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, 10240
  br i1 %exitcond161.not, label %bb.ax, label %bb.ay, !llvm.loop !11

bb.bc:                                            ; preds = %bb.ax
  %i.hk = call i32 @MPI_Win_post(ptr noundef %i.gz, i32 noundef 0, ptr noundef %i.ha) #6 ; 0 uses
  %i.hl = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.hm = call i32 @MPI_Win_wait(ptr noundef %i.hl) #6 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bf
  %indvars.iv162 = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next163, %bb.bf ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv162
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !18 ; 2 uses
  %.not134 = icmp eq i32 %i.ge, %i.ho
  br i1 %.not134, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hp = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.hq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.hp, i32 noundef %i.ho, i32 noundef %i.ge) ; 0 uses
  %i.hr = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #6 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, 10240
  br i1 %exitcond165.not, label %.loopexit, label %bb.bd, !llvm.loop !12

bb.bg:                                            ; preds = %bb.ax
  %i.hs = call i32 @MPI_Win_start(ptr noundef %i.gz, i32 noundef 0, ptr noundef %i.ha) #6 ; 0 uses
  %i.ht = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.hu = call i32 @MPI_Put(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gb, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.ht) #6 ; 0 uses
  %i.hv = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.hw = call i32 @MPI_Win_complete(ptr noundef %i.hv) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bf, %bb.bg
  %i.hx = call i32 @MPI_Group_free(ptr noundef nonnull %i.q) #6 ; 0 uses
  %i.hy = call i32 @MPI_Group_free(ptr noundef nonnull %i.r) #6 ; 0 uses
  %i.hz = call i32 @MPI_Group_free(ptr noundef nonnull %i.s) #6 ; 0 uses
  %i.ia = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  %i.ib = load i32, ptr %i.a, align 4, !tbaa !18
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer ; 10 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %.loopexit
  %index196 = phi i64 [ 0, %.loopexit ], [ %index.next197.4, %vector.body195 ] ; 6 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index196 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <4 x i32> %broadcast.splat194, ptr %i.ic, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat194, ptr %i.id, align 16, !tbaa !18
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index196 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store <4 x i32> %broadcast.splat194, ptr %i.if, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat194, ptr %i.ig, align 16, !tbaa !18
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index196 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  store <4 x i32> %broadcast.splat194, ptr %i.ii, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat194, ptr %i.ij, align 16, !tbaa !18
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index196 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  store <4 x i32> %broadcast.splat194, ptr %i.il, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat194, ptr %i.im, align 16, !tbaa !18
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index196 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 128
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 144
  store <4 x i32> %broadcast.splat194, ptr %i.io, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat194, ptr %i.ip, align 16, !tbaa !18
  %index.next197.4 = add nuw nsw i64 %index196, 40 ; 2 uses
  %i.iq = icmp eq i64 %index.next197.4, 10240
  br i1 %i.iq, label %middle.block198, label %vector.body195, !llvm.loop !13

middle.block198:                                  ; preds = %vector.body195
  %i.ir = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.is = call i32 @MPI_Win_lock(i32 noundef 1, i32 noundef %i.gb, i32 noundef 0, ptr noundef %i.ir) #6 ; 0 uses
  %i.it = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.iu = call i32 @MPI_Put(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gb, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.it) #6 ; 0 uses
  %i.iv = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.iw = call i32 @MPI_Win_unlock(i32 noundef %i.gb, ptr noundef %i.iv) #6 ; 0 uses
  %i.ix = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bk
  %i.iy = call i32 @MPI_Win_free(ptr noundef nonnull %i.n) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %bb.bl

bb.bi:                                            ; preds = %middle.block198, %bb.bk
  %indvars.iv170 = phi i64 [ 0, %middle.block198 ], [ %indvars.iv.next171, %bb.bk ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv170
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !18 ; 2 uses
  %.not133 = icmp eq i32 %i.ge, %i.ja
  br i1 %.not133, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = trunc nuw nsw i64 %indvars.iv170 to i32
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.jb, i32 noundef %i.ja, i32 noundef %i.ge) ; 0 uses
  %i.jd = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #6 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, 10240
  br i1 %exitcond173.not, label %bb.bh, label %bb.bi, !llvm.loop !14

bb.bl:                                            ; preds = %bb.bh, %bb.at
  %.b = load i1, ptr @with_mpit, align 4
  br i1 %.b, label %bb.bm, label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.17, i64 13, i1 false)
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.jf = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.jg = call i32 @MPI_T_pvar_write(ptr noundef %i.je, ptr noundef %i.jf, ptr noundef nonnull %i.j) #6
  %.not129 = icmp eq i32 %i.jg, 0
  br i1 %.not129, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ji = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.jj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jh, ptr noundef nonnull @.str.9, i32 noundef %i.ji, ptr noundef nonnull %i.j, i32 noundef %i.ji) #8 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jk = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.jl = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.jm = call i32 @MPI_T_pvar_stop(ptr noundef %i.jk, ptr noundef %i.jl) #6 ; 2 uses
  %.not130 = icmp eq i32 %i.jm, 0
  br i1 %.not130, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.jo = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.jm) #6 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jp = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.jq = call i32 @MPI_T_pvar_handle_free(ptr noundef %i.jp, ptr noundef nonnull @flush_handle) #6 ; 2 uses
  %.not131 = icmp eq i32 %i.jq, 0
  br i1 %.not131, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.js = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.jq) #6 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jt = call i32 @MPI_T_pvar_session_free(ptr noundef nonnull %i.g) #6 ; 2 uses
  %.not132 = icmp eq i32 %i.jt, 0
  br i1 %.not132, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.jv = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.jt) #6 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jw = call i32 @MPI_T_finalize() #6           ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bl
  %i.jx = call i32 @MPI_Comm_free(ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.jy = call i32 @MPI_Finalize() #6             ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1
end_hunk_0
