Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/check_monitoring?download=true
inline.NumInlined: 123
inline.NumDeleted: 95
begin_hunk_0_@main:bb.a
bb.ah:                                            ; preds = %o2a_count_init.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.fh = load i32, ptr @o2a_size_pvar_idx, align 4, !tbaa !9
  %i.fi = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.er, i32 noundef %i.fh, ptr noundef nonnull %i.k, ptr noundef nonnull @o2a_size_handle, ptr noundef nonnull %i.l) #11 ; 2 uses
  %.not10.i4.i54.i = icmp eq i32 %i.fi, 0
  br i1 %.not10.i4.i54.i, label %bb.ai, label %o2a_size_start.exit.sink.split.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load ptr, ptr @o2a_size_handle, align 8, !tbaa !19
  %i.fk = call i32 @MPI_T_pvar_start(ptr noundef %i.er, ptr noundef %i.fj) #11 ; 2 uses
  %.not.i.i8.i58.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i8.i58.i, label %o2a_size_start.exit.i.i.i, label %o2a_size_start.exit.sink.split.i.i.i

o2a_size_start.exit.sink.split.i.i.i:             ; preds = %bb.ai, %bb.ah
  %.str.15.sink.i5.i55.i = phi ptr [ @.str.14, %bb.ah ], [ @.str.15, %bb.ai ]
  %.sink.i6.i56.i = phi i32 [ %i.fi, %bb.ah ], [ %i.fk, %bb.ai ]
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull %.str.15.sink.i5.i55.i, ptr noundef nonnull @o2a_size_pvar_name) #14 ; 0 uses
  %i.fn = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %.sink.i6.i56.i) #11 ; 0 uses
  br label %o2a_size_start.exit.i.i.i

o2a_size_start.exit.i.i.i:                        ; preds = %o2a_size_start.exit.sink.split.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %pvar_o2a_init.exit.i

pvar_o2a_init.exit.i:                             ; preds = %o2a_size_start.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  %i.fo = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr @ompi_mpi_comm_world, ptr %i.i, align 8, !tbaa !17
  %i.fp = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @a2o_count_pvar_name, i32 noundef 6, ptr noundef nonnull @a2o_count_pvar_idx) #11 ; 2 uses
  %.not.i.i63.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i63.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %pvar_o2a_init.exit.i
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.13, ptr noundef nonnull @a2o_count_pvar_name) #14 ; 0 uses
  %i.fs = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fp) #11 ; 0 uses
  br label %a2o_count_init.exit.i.i

bb.ak:                                            ; preds = %pvar_o2a_init.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  %i.ft = load i32, ptr @a2o_count_pvar_idx, align 4, !tbaa !9
  %i.fu = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.fo, i32 noundef %i.ft, ptr noundef nonnull %i.i, ptr noundef nonnull @a2o_count_handle, ptr noundef nonnull %i.j) #11 ; 2 uses
  %.not10.i.i71.i = icmp eq i32 %i.fu, 0
  br i1 %.not10.i.i71.i, label %bb.al, label %a2o_count_start.exit.sink.split.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fv = load ptr, ptr @a2o_count_handle, align 8, !tbaa !19
  %i.fw = call i32 @MPI_T_pvar_start(ptr noundef %i.fo, ptr noundef %i.fv) #11 ; 2 uses
  %.not.i.i.i74.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i74.i, label %a2o_count_start.exit.i.i.i, label %a2o_count_start.exit.sink.split.i.i.i

a2o_count_start.exit.sink.split.i.i.i:            ; preds = %bb.al, %bb.ak
  %.str.15.sink.i.i72.i = phi ptr [ @.str.14, %bb.ak ], [ @.str.15, %bb.al ]
  %.sink.i.i73.i = phi i32 [ %i.fu, %bb.ak ], [ %i.fw, %bb.al ]
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull %.str.15.sink.i.i72.i, ptr noundef nonnull @a2o_count_pvar_name) #14 ; 0 uses
  %i.fz = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %.sink.i.i73.i) #11 ; 0 uses
  br label %a2o_count_start.exit.i.i.i

a2o_count_start.exit.i.i.i:                       ; preds = %a2o_count_start.exit.sink.split.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %a2o_count_init.exit.i.i

a2o_count_init.exit.i.i:                          ; preds = %a2o_count_start.exit.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr @ompi_mpi_comm_world, ptr %i.g, align 8, !tbaa !17
  %i.ga = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @a2o_size_pvar_name, i32 noundef 7, ptr noundef nonnull @a2o_size_pvar_idx) #11 ; 2 uses
  %.not.i2.i64.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i2.i64.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %a2o_count_init.exit.i.i
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.13, ptr noundef nonnull @a2o_size_pvar_name) #14 ; 0 uses
  %i.gd = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ga) #11 ; 0 uses
  br label %pvar_a2o_init.exit.i

bb.an:                                            ; preds = %a2o_count_init.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.ge = load i32, ptr @a2o_size_pvar_idx, align 4, !tbaa !9
  %i.gf = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.fo, i32 noundef %i.ge, ptr noundef nonnull %i.g, ptr noundef nonnull @a2o_size_handle, ptr noundef nonnull %i.h) #11 ; 2 uses
  %.not10.i4.i66.i = icmp eq i32 %i.gf, 0
  br i1 %.not10.i4.i66.i, label %bb.ao, label %a2o_size_start.exit.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gg = load ptr, ptr @a2o_size_handle, align 8, !tbaa !19
  %i.gh = call i32 @MPI_T_pvar_start(ptr noundef %i.fo, ptr noundef %i.gg) #11 ; 2 uses
  %.not.i.i8.i70.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i8.i70.i, label %a2o_size_start.exit.i.i.i, label %a2o_size_start.exit.sink.split.i.i.i

a2o_size_start.exit.sink.split.i.i.i:             ; preds = %bb.ao, %bb.an
  %.str.15.sink.i5.i67.i = phi ptr [ @.str.14, %bb.an ], [ @.str.15, %bb.ao ]
  %.sink.i6.i68.i = phi i32 [ %i.gf, %bb.an ], [ %i.gh, %bb.ao ]
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull %.str.15.sink.i5.i67.i, ptr noundef nonnull @a2o_size_pvar_name) #14 ; 0 uses
  %i.gk = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %.sink.i6.i68.i) #11 ; 0 uses
  br label %a2o_size_start.exit.i.i.i

a2o_size_start.exit.i.i.i:                        ; preds = %a2o_size_start.exit.sink.split.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %pvar_a2o_init.exit.i

pvar_a2o_init.exit.i:                             ; preds = %a2o_size_start.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.gl = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr @ompi_mpi_comm_world, ptr %i.e, align 8, !tbaa !17
  %i.gm = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @a2a_count_pvar_name, i32 noundef 6, ptr noundef nonnull @a2a_count_pvar_idx) #11 ; 2 uses
  %.not.i.i75.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i75.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %pvar_a2o_init.exit.i
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.go = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str.13, ptr noundef nonnull @a2a_count_pvar_name) #14 ; 0 uses
  %i.gp = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.gm) #11 ; 0 uses
  br label %a2a_count_init.exit.i.i

bb.aq:                                            ; preds = %pvar_a2o_init.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.gq = load i32, ptr @a2a_count_pvar_idx, align 4, !tbaa !9
  %i.gr = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.gl, i32 noundef %i.gq, ptr noundef nonnull %i.e, ptr noundef nonnull @a2a_count_handle, ptr noundef nonnull %i.f) #11 ; 2 uses
  %.not10.i.i83.i = icmp eq i32 %i.gr, 0
  br i1 %.not10.i.i83.i, label %bb.ar, label %a2a_count_start.exit.sink.split.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load ptr, ptr @a2a_count_handle, align 8, !tbaa !19
  %i.gt = call i32 @MPI_T_pvar_start(ptr noundef %i.gl, ptr noundef %i.gs) #11 ; 2 uses
  %.not.i.i.i86.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i86.i, label %a2a_count_start.exit.i.i.i, label %a2a_count_start.exit.sink.split.i.i.i

a2a_count_start.exit.sink.split.i.i.i:            ; preds = %bb.ar, %bb.aq
  %.str.15.sink.i.i84.i = phi ptr [ @.str.14, %bb.aq ], [ @.str.15, %bb.ar ]
  %.sink.i.i85.i = phi i32 [ %i.gr, %bb.aq ], [ %i.gt, %bb.ar ]
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull %.str.15.sink.i.i84.i, ptr noundef nonnull @a2a_count_pvar_name) #14 ; 0 uses
  %i.gw = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %.sink.i.i85.i) #11 ; 0 uses
  br label %a2a_count_start.exit.i.i.i

a2a_count_start.exit.i.i.i:                       ; preds = %a2a_count_start.exit.sink.split.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %a2a_count_init.exit.i.i

a2a_count_init.exit.i.i:                          ; preds = %a2a_count_start.exit.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr @ompi_mpi_comm_world, ptr %i.c, align 8, !tbaa !17
  %i.gx = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @a2a_size_pvar_name, i32 noundef 7, ptr noundef nonnull @a2a_size_pvar_idx) #11 ; 2 uses
  %.not.i2.i76.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i2.i76.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %a2a_count_init.exit.i.i
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gy, ptr noundef nonnull @.str.13, ptr noundef nonnull @a2a_size_pvar_name) #14 ; 0 uses
  %i.ha = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.gx) #11 ; 0 uses
  br label %pvar_all_init.exit

bb.at:                                            ; preds = %a2a_count_init.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.hb = load i32, ptr @a2a_size_pvar_idx, align 4, !tbaa !9
  %i.hc = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.gl, i32 noundef %i.hb, ptr noundef nonnull %i.c, ptr noundef nonnull @a2a_size_handle, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not10.i4.i78.i = icmp eq i32 %i.hc, 0
  br i1 %.not10.i4.i78.i, label %bb.au, label %a2a_size_start.exit.sink.split.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.hd = load ptr, ptr @a2a_size_handle, align 8, !tbaa !19
  %i.he = call i32 @MPI_T_pvar_start(ptr noundef %i.gl, ptr noundef %i.hd) #11 ; 2 uses
  %.not.i.i8.i82.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i8.i82.i, label %a2a_size_start.exit.i.i.i, label %a2a_size_start.exit.sink.split.i.i.i

a2a_size_start.exit.sink.split.i.i.i:             ; preds = %bb.au, %bb.at
  %.str.15.sink.i5.i79.i = phi ptr [ @.str.14, %bb.at ], [ @.str.15, %bb.au ]
  %.sink.i6.i80.i = phi i32 [ %i.hc, %bb.at ], [ %i.he, %bb.au ]
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull %.str.15.sink.i5.i79.i, ptr noundef nonnull @a2a_size_pvar_name) #14 ; 0 uses
  %i.hh = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %.sink.i6.i80.i) #11 ; 0 uses
  br label %a2a_size_start.exit.i.i.i

a2a_size_start.exit.i.i.i:                        ; preds = %a2a_size_start.exit.sink.split.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %pvar_all_init.exit

pvar_all_init.exit:                               ; preds = %bb.as, %a2a_size_start.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #11
  %i.hi = load i32, ptr %i.af, align 4, !tbaa !9  ; 5 uses
  %i.hj = mul nsw i32 %i.hi, 26
  %i.hk = sext i32 %i.hj to i64
  %i.hl = call noalias ptr @malloc(i64 noundef %i.hk) #13 ; 10 uses
  %i.hm = mul nsw i32 %i.hi, 13
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.hl, i64 %i.hn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #11
  %i.hp = icmp sgt i32 %i.hi, 0
  br i1 %i.hp, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %pvar_all_init.exit, %bb.bl
  %i.hq = phi i32 [ %i.kx, %bb.bl ], [ %i.hi, %pvar_all_init.exit ]
  %.0160 = phi i32 [ %i.ky, %bb.bl ], [ 0, %pvar_all_init.exit ] ; 11 uses
  %i.hr = mul nsw i32 %i.hq, 13
  %3 = sext i32 %i.hr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 0, i64 %3, i1 false)
  %i.hs = call i32 @MPI_Allgather(ptr noundef nonnull %i.ai, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef %i.hl, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.ht = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph161, %bb.aw
  %i.hv = phi i32 [ %i.id, %bb.aw ], [ %i.ht, %.lr.ph161 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aw ], [ 0, %.lr.ph161 ] ; 3 uses
  %i.hw = mul nuw nsw i64 %indvars.iv, 13
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hw ; 2 uses
  %i.hy = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.hx, i64 noundef 13) #15
  %.not89 = icmp eq i32 %i.hy, 0
  br i1 %.not89, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ia = trunc nuw nsw i64 %indvars.iv to i32
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.hx, i32 noundef %i.ia) #14 ; 0 uses
  %i.ic = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  %.pre = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %i.id = phi i32 [ %i.hv, %.lr.ph ], [ %.pre, %bb.av ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.aw, %.lr.ph161
  %i.ig = call i32 @MPI_Scatter(ptr noundef %i.hl, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef nonnull %i.aj, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, i32 noundef %.0160, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.ih = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 13) #15
  %.not83 = icmp eq i32 %i.ih, 0
  br i1 %.not83, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge
  %i.ii = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ij = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ii, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.aj, i32 noundef %.0160) #14 ; 0 uses
  %i.ik = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge
  %i.il = call i32 @MPI_Allreduce(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_sum, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.im = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.in = load i32, ptr %i.af, align 4, !tbaa !9  ; 3 uses
  %i.io = add nsw i32 %i.in, -1
  %i.ip = mul nsw i32 %i.io, %i.in
  %i.iq = sdiv i32 %i.ip, 2                       ; 2 uses
  %.not84 = icmp eq i32 %i.im, %i.iq
  br i1 %.not84, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ir = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.3, i32 noundef %i.im, i32 noundef %i.iq) #14 ; 0 uses
  %i.it = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  %.pre208 = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.iu = phi i32 [ %.pre208, %bb.az ], [ %i.in, %bb.ay ]
  %i.iv = mul nsw i32 %i.iu, 13
  %i.iw = sext i32 %i.iv to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 0, i64 %i.iw, i1 false)
  %i.ix = call i32 @MPI_Alltoall(ptr noundef %i.hl, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef nonnull %i.ho, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.iy = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %bb.ba, %bb.bc
  %i.ja = phi i32 [ %i.ji, %bb.bc ], [ %i.iy, %bb.ba ]
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %bb.bc ], [ 0, %bb.ba ] ; 3 uses
  %i.jb = mul nuw nsw i64 %indvars.iv202, 13
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.jb ; 2 uses
  %i.jd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.jc, i64 noundef 13) #15
  %.not88 = icmp eq i32 %i.jd, 0
  br i1 %.not88, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph156
  %i.je = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.jf = trunc nuw nsw i64 %indvars.iv202 to i32
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.je, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.jc, i32 noundef %i.jf) #14 ; 0 uses
  %i.jh = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  %.pre209 = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph156, %bb.bb
  %i.ji = phi i32 [ %i.ja, %.lr.ph156 ], [ %.pre209, %bb.bb ] ; 2 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next203, %i.jj
  br i1 %i.jk, label %.lr.ph156, label %._crit_edge157, !llvm.loop !23

._crit_edge157:                                   ; preds = %bb.bc, %bb.ba
  %i.jl = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.jm = icmp eq i32 %.0160, %i.jl
  br i1 %i.jm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge157
  %i.jn = call i32 @MPI_Bcast(ptr noundef nonnull %i.ai, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, i32 noundef %.0160, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge157
  %i.jo = call i32 @MPI_Bcast(ptr noundef nonnull %i.aj, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, i32 noundef %.0160, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.jp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 13) #15
  %.not85 = icmp eq i32 %i.jp, 0
  br i1 %.not85, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.jr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jq, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.aj, i32 noundef %.0160) #14 ; 0 uses
  %i.js = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.jt = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.ju = load i32, ptr %i.af, align 4, !tbaa !9
  %i.jv = mul nsw i32 %i.ju, 13
  %i.jw = sext i32 %i.jv to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hl, i8 0, i64 %i.jw, i1 false)
  %i.jx = call i32 @MPI_Gather(ptr noundef nonnull %i.ai, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, ptr noundef nonnull %i.hl, i32 noundef 13, ptr noundef nonnull @ompi_mpi_char, i32 noundef %.0160, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.jy = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.jz = icmp eq i32 %.0160, %i.jy
  %i.ka = load i32, ptr %i.af, align 4            ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  %or.cond = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %bb.bg, %bb.bi
  %i.kc = phi i32 [ %i.kk, %bb.bi ], [ %i.ka, %bb.bg ]
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %bb.bi ], [ 0, %bb.bg ] ; 3 uses
  %i.kd = mul nuw nsw i64 %indvars.iv205, 13
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.kd ; 2 uses
  %i.kf = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.ke, i64 noundef 13) #15
  %.not87 = icmp eq i32 %i.kf, 0
  br i1 %.not87, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph159
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kh = trunc nuw nsw i64 %indvars.iv205 to i32
  %i.ki = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ke, i32 noundef %i.kh) #14 ; 0 uses
  %i.kj = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  %.pre210 = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph159, %bb.bh
  %i.kk = phi i32 [ %i.kc, %.lr.ph159 ], [ %.pre210, %bb.bh ] ; 2 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next206, %i.kl
  br i1 %i.km, label %.lr.ph159, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %bb.bi, %bb.bg
  %i.kn = call i32 @MPI_Reduce(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_sum, i32 noundef %.0160, ptr noundef nonnull @ompi_mpi_comm_world) #11 ; 0 uses
  %i.ko = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.kp = icmp eq i32 %.0160, %i.ko
  %.pre212 = load i32, ptr %i.af, align 4, !tbaa !9 ; 4 uses
  br i1 %i.kp, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.loopexit
  %i.kq = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.kr = add nsw i32 %.pre212, -1
  %i.ks = mul nsw i32 %i.kr, %.pre212
  %i.kt = sdiv i32 %i.ks, 2                       ; 2 uses
  %.not86 = icmp eq i32 %i.kq, %i.kt
  br i1 %.not86, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ku = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ku, ptr noundef nonnull @.str.7, i32 noundef %i.kq, i32 noundef %i.kt) #14 ; 0 uses
  %i.kw = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #11 ; 0 uses
  %.pre211 = load i32, ptr %i.af, align 4, !tbaa !9
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bk, %bb.bj
  %i.kx = phi i32 [ %.pre212, %.loopexit ], [ %.pre211, %bb.bk ], [ %.pre212, %bb.bj ] ; 3 uses
  %i.ky = add nuw nsw i32 %.0160, 1               ; 2 uses
  %i.kz = icmp slt i32 %i.ky, %i.kx
  br i1 %i.kz, label %.lr.ph161, label %._crit_edge162, !llvm.loop !25

._crit_edge162:                                   ; preds = %bb.bl, %pvar_all_init.exit
  %.lcssa152 = phi i32 [ %i.hi, %pvar_all_init.exit ], [ %i.kx, %bb.bl ] ; 8 uses
  call void @free(ptr noundef %i.hl) #11
  %i.la = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 26 uses
  %i.lb = load i32, ptr %i.ag, align 4, !tbaa !9  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.lc = shl nsw i32 %.lcssa152, 1
  %i.ld = sext i32 %i.lc to i64
  %i.le = shl nsw i64 %i.ld, 3
  %i.lf = call noalias ptr @malloc(i64 noundef %i.le) #13 ; 6 uses
  %i.lg = sext i32 %.lcssa152 to i64              ; 3 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lg ; 3 uses
  %i.li = load ptr, ptr @coll_count_handle, align 8, !tbaa !19
  %i.lj = call i32 @MPI_T_pvar_stop(ptr noundef %i.la, ptr noundef %i.li) #11 ; 2 uses
  %.not.i.i.i.i90 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i.i.i90, label %coll_count_stop.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge162
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_0
