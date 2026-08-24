Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_monitoring?download=true
inline.NumInlined: 41
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mca_common_monitoring_get_coll_count:bb.a
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !70
  %.val.val.fr = freeze i32 %.val.val             ; 3 uses
  %i.c = icmp ne ptr %2, @ompi_mpi_comm_world
  %i.d = load ptr, ptr @pml_count, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr @coll_count, align 8, !tbaa !38 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %.val.val.fr, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load volatile i64, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.j, ptr %i.k, align 8, !tbaa !73
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.m, ptr %i.n, align 8, !tbaa !73
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.p, ptr %i.q, align 8, !tbaa !73
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.s, ptr %i.t, align 8, !tbaa !73
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !87

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.v, ptr %i.w, align 8, !tbaa !73
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !88

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_get_coll_size(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !70
  %.val.val.fr = freeze i32 %.val.val             ; 3 uses
  %i.c = icmp ne ptr %2, @ompi_mpi_comm_world
  %i.d = load ptr, ptr @pml_data, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr @coll_data, align 8, !tbaa !38 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %.val.val.fr, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load volatile i64, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.j, ptr %i.k, align 8, !tbaa !73
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.m, ptr %i.n, align 8, !tbaa !73
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.p, ptr %i.q, align 8, !tbaa !73
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.s, ptr %i.t, align 8, !tbaa !73
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !89

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.v, ptr %i.w, align 8, !tbaa !73
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !90

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.011
}

declare i32 @mca_common_monitoring_coll_get_o2a_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_messages_notify(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_o2a_size(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2o_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2o_size(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2a_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2a_size(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_monitoring_add_procs(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 220), align 4, !tbaa !91
  store i32 %i.c, ptr @rank_world, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @nprocs_world, align 4, !tbaa !8 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %ompi_mpi_comm_world.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 264), align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %ompi_mpi_comm_world.val, i64 16
  %ompi_mpi_comm_world.val.val = load i32, ptr %i.e, align 8, !tbaa !70 ; 2 uses
  store i32 %ompi_mpi_comm_world.val.val, ptr @nprocs_world, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %ompi_mpi_comm_world.val.val, %bb.d ], [ %i.d, %bb.c ]
  %i.g = load ptr, ptr @pml_data, align 8, !tbaa !38
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = mul nsw i32 %i.f, 76
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #23 ; 2 uses
  store ptr %i.k, ptr @pml_data, align 8, !tbaa !38
  %2 = load i32, ptr @nprocs_world, align 4, !tbaa !8
  %i.l = sext i32 %2 to i64                       ; 10 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  store ptr %i.m, ptr @pml_count, align 8, !tbaa !38
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.n, ptr @filtered_pml_data, align 8, !tbaa !38
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.l ; 2 uses
  store ptr %i.o, ptr @filtered_pml_count, align 8, !tbaa !38
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store ptr %i.p, ptr @osc_data_s, align 8, !tbaa !38
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  store ptr %i.q, ptr @osc_count_s, align 8, !tbaa !38
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.l ; 2 uses
  store ptr %i.r, ptr @osc_data_r, align 8, !tbaa !38
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.l ; 2 uses
  store ptr %i.s, ptr @osc_count_r, align 8, !tbaa !38
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.l ; 2 uses
  store ptr %i.t, ptr @coll_data, align 8, !tbaa !38
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.u, ptr @coll_count, align 8, !tbaa !38
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.l
  store ptr %i.v, ptr @size_histogram, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.g, %.loopexit
  %.02935 = phi i64 [ %i.bc, %.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02935
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph36
  %i.aa = lshr i64 %i.y, 1
  %i.ab = and i64 %i.aa, 32767
  %i.ac = and i64 %i.y, 4294901760
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.ab, %i.ac
  %.sroa.013.0.extract.trunc = trunc nuw i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.7.0.extract.shift = lshr i64 %i.y, 32
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.013.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %i.ae = zext i32 %.sroa.7.0.copyload to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.013.0 = phi i32 [ %.sroa.013.0.extract.trunc, %bb.h ], [ %.sroa.013.0.copyload, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.extract.shift, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = load ptr, ptr @ompi_proc_local_proc, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !94
  %.not30 = icmp eq i32 %.sroa.013.0, %i.ah
  %i.ai = load i32, ptr @nprocs_world, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %.not30, i1 %i.aj, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0, 32
  %.sroa.013.0.insert.ext = zext i32 %.sroa.013.0 to i64
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.013.0.insert.ext ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 272), align 8, !tbaa !100
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %.val = load ptr, ptr %i.al, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = lshr i64 %i.ao, 1
  %i.ar = and i64 %i.aq, 32767
  %i.as = and i64 %i.ao, -65536
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.ar, %i.as
  br label %ompi_group_get_proc_name.exit

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8
  br label %ompi_group_get_proc_name.exit

ompi_group_get_proc_name.exit:                    ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.l ], [ %.sroa.0.0.copyload.i, %bb.m ]
  %i.au = load ptr, ptr @opal_compare_proc, align 8, !tbaa !29
  %i.av = tail call i32 %i.au(i64 %.sroa.013.0.insert.insert, i64 %.sroa.0.0.i) #20
  %.not31 = icmp eq i32 %i.av, 0
  br i1 %.not31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ompi_group_get_proc_name.exit
  %i.aw = load ptr, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !33
  %i.ax = inttoptr i64 %indvars.iv to ptr
  %i.ay = tail call i32 @opal_hash_table_set_value_uint64(ptr noundef %i.aw, i64 noundef %.sroa.013.0.insert.insert, ptr noundef %i.ax) #20
  %.not32 = icmp eq i32 %i.ay, 0
  br i1 %.not32, label %.loopexit, label %._crit_edge

bb.o:                                             ; preds = %ompi_group_get_proc_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr @nprocs_world, align 4, !tbaa !8
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.k, label %.loopexit, !llvm.loop !102

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.j
  %i.bc = add nuw i64 %.02935, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph36, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.n, %.loopexit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %.loopexit ], [ -2, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @opal_hash_table_set_value_uint64(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_pml(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.e = mul nsw i32 %0, 66
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  %3 = atomicrmw volatile add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = uitofp i64 %1 to double
  %i.i = tail call double @log10(double noundef %i.h) #20
  %i.j = load double, ptr @log10_2, align 8, !tbaa !9
  %i.k = fdiv double %i.i, %i.j
  %i.l = fptosi double %i.k to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.l, i32 64)
  %i.m = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.n = mul nsw i32 %0, 66
  %i.o = add nsw i32 %spec.store.select, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %4 = atomicrmw volatile add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load i32, ptr @mca_common_monitoring_current_state, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %5 = phi i32 [ %.pre, %bb.d ], [ %i.a, %bb.c ]
  %i.s = icmp sgt i32 %2, -1
  %i.t = icmp slt i32 %5, 2
  %or.cond = select i1 %i.s, i1 true, i1 %i.t     ; 2 uses
  %6 = sext i32 %0 to i64                         ; 2 uses
  %pml_data.val = load ptr, ptr @pml_data, align 8
  %filtered_pml_data.val = load ptr, ptr @filtered_pml_data, align 8
  %i.u = select i1 %or.cond, ptr %pml_data.val, ptr %filtered_pml_data.val
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %6
  %i.w = atomicrmw volatile add ptr %i.v, i64 %1 monotonic, align 8 ; 0 uses
  %pml_count.val = load ptr, ptr @pml_count, align 8
  %filtered_pml_count.val = load ptr, ptr @filtered_pml_count, align 8
  %i.x = select i1 %or.cond, ptr %pml_count.val, ptr %filtered_pml_count.val
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %6
  %i.z = atomicrmw volatile add ptr %i.y, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_osc(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0                        ; 2 uses
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %osc_data_s.val = load ptr, ptr @osc_data_s, align 8
  %osc_data_r.val = load ptr, ptr @osc_data_r, align 8
  %i.e = select i1 %i.c, ptr %osc_data_s.val, ptr %osc_data_r.val
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.d
  %i.g = atomicrmw volatile add ptr %i.f, i64 %1 monotonic, align 8 ; 0 uses
  %osc_count_s.val = load ptr, ptr @osc_count_s, align 8
  %osc_count_r.val = load ptr, ptr @osc_count_r, align 8
  %i.h = select i1 %i.c, ptr %osc_count_s.val, ptr %osc_count_r.val
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.d
  %i.j = atomicrmw volatile add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_coll(i32 noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @coll_data, align 8, !tbaa !38
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = atomicrmw volatile add ptr %i.e, i64 %1 monotonic, align 8 ; 0 uses
  %i.g = load ptr, ptr @coll_count, align 8, !tbaa !38
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.i = atomicrmw volatile add ptr %i.h, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @opal_init_gethostname() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @mca_common_monitoring_coll_reset() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mca_common_monitoring_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.44, i64 17, i64 1, ptr %0) ; 0 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit73.thread

.loopexit73.thread:                               ; preds = %bb.a
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.51, i64 6, i64 1, ptr %0) ; 0 uses
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.54, i64 14, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge87

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %.pre113 = load ptr, ptr @pml_count, align 8, !tbaa !38
  br label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit74
  %i.e = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph79.preheader, label %.loopexit73

.lr.ph79.preheader:                               ; preds = %._crit_edge
  %wide.trip.count101 = zext nneg i32 %2 to i64
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit74
  %i.g = phi ptr [ %.pre113, %.lr.ph.preheader ], [ %i.aa, %.loopexit74 ] ; 2 uses
  %indvars.iv89 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next90, %.loopexit74 ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv89 ; 2 uses
  %i.i = load volatile i64, ptr %i.h, align 8, !tbaa !73
  %.not70 = icmp eq i64 %i.i, 0
  br i1 %.not70, label %.loopexit74, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @pml_data, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv89
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !73
  %i.m = load volatile i64, ptr %i.h, align 8, !tbaa !73
  %i.n = trunc nuw nsw i64 %indvars.iv89 to i32
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %1, i32 noundef %i.n, i64 noundef %i.l, i64 noundef %i.m) #20 ; 0 uses
  %i.p = mul nuw nsw i64 %indvars.iv89, 66        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %i.t = load volatile i64, ptr %i.s, align 8, !tbaa !73
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.t, ptr noundef nonnull @.str.47) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65
  br i1 %exitcond.not, label %.loopexit74.loopexit.peel.begin, label %bb.c, !llvm.loop !104

.loopexit74.loopexit.peel.begin:                  ; preds = %bb.c
  %i.v = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 520
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !73
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.y, ptr noundef nonnull @.str.48) #20 ; 0 uses
  %.pre = load ptr, ptr @pml_count, align 8, !tbaa !38
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit.peel.begin, %.lr.ph
  %i.aa = phi ptr [ %.pre, %.loopexit74.loopexit.peel.begin ], [ %i.g, %.lr.ph ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.loopexit
  %indvars.iv98 = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next99, %.loopexit ] ; 7 uses
  %i.ab = load ptr, ptr @filtered_pml_count, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv98 ; 2 uses
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !73
  %.not68 = icmp eq i64 %i.ad, 0
  br i1 %.not68, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph79
  %i.ae = load ptr, ptr @filtered_pml_data, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv98
  %i.ag = load volatile i64, ptr %i.af, align 8, !tbaa !73
  %i.ah = load volatile i64, ptr %i.ac, align 8, !tbaa !73
  %i.ai = load ptr, ptr @pml_count, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv98
  %i.ak = load volatile i64, ptr %i.aj, align 8, !tbaa !73
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, ptr @.str.50, ptr @.str.48
  %i.an = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %1, i32 noundef %i.an, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull %i.am) #20 ; 0 uses
  %i.ap = load ptr, ptr @pml_count, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv98
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !73
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.at = mul nuw nsw i64 %indvars.iv98, 66       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv93 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next94, %bb.e ] ; 2 uses
  %i.au = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv93
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  %i.ax = load volatile i64, ptr %i.aw, align 8, !tbaa !73
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.ax, ptr noundef nonnull @.str.47) #20 ; 0 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 65
  br i1 %exitcond96.not, label %.loopexit.loopexit.peel.begin, label %bb.e, !llvm.loop !107

.loopexit.loopexit.peel.begin:                    ; preds = %bb.e
  %i.az = load ptr, ptr @size_histogram, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 520
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !73
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.bc, ptr noundef nonnull @.str.48) #20 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.peel.begin, %.lr.ph79, %bb.d
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit73, label %.lr.ph79, !llvm.loop !108

.loopexit73:                                      ; preds = %.loopexit, %._crit_edge
  %i.be = tail call i64 @fwrite(ptr nonnull @.str.51, i64 6, i64 1, ptr %0) ; 0 uses
  %wide.trip.count106 = zext nneg i32 %2 to i64
  br label %.lr.ph82

._crit_edge83:                                    ; preds = %bb.i
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.54, i64 14, i64 1, ptr %0) ; 0 uses
end_hunk_0
