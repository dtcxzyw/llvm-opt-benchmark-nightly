Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/fed_mgr?download=true
inline.NumInlined: 162
inline.NumDeleted: 65
begin_hunk_0_@add_fed_job_info:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__errno_location() #16
  store i32 %i.o, ptr %i.p, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.add_fed_job_info) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @fed_job_list, align 8     ; 2 uses
  %.not8 = icmp eq ptr %i.q, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @list_append(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @slurm_xfree(ptr noundef nonnull %i.a) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = call i32 @pthread_mutex_unlock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not9 = icmp eq i32 %i.r, 0
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @__errno_location() #16
  store i32 %i.r, ptr %i.s, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.add_fed_job_info) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @fed_mgr_remove_fed_job_info(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #16
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fed_mgr_remove_fed_job_info) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @fed_job_list, align 8     ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @list_delete_all(ptr noundef nonnull %i.d, ptr noundef nonnull @_delete_fed_job_info_by_id, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = call i32 @pthread_mutex_unlock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #16
  store i32 %i.f, ptr %i.g, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fed_mgr_remove_fed_job_info) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_delete_fed_job_info_by_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, %i.a
  %. = zext i1 %i.d to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fed_mgr_get_cluster_by_id(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %0, ptr %i.a, align 4
  %i.b = load ptr, ptr @fed_mgr_fed_rec, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call ptr @list_find_first(ptr noundef %i.d, ptr noundef nonnull @_find_sibling_by_id, ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.e
}

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_sibling_by_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, %i.a
  %. = zext i1 %i.d to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fed_mgr_get_cluster_by_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @fed_mgr_fed_rec, align 8  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @list_find_first(ptr noundef %i.c, ptr noundef nonnull @slurmdb_find_cluster_in_list, ptr noundef %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @slurmdb_find_cluster_in_list(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_parse_resp_ctld_mult(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.slurm_msg, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._parse_resp_ctld_mult) #15 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @list_count(ptr noundef nonnull %i.c) #15
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @bit_alloc(i64 noundef %i.f) #15 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call ptr @list_iterator_create(ptr noundef %i.h) #15 ; 2 uses
  %i.j = tail call ptr @list_next(ptr noundef %i.i) #15 ; 2 uses
  %.not1620 = icmp eq ptr %i.j, null
  br i1 %.not1620, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 226 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %.backedge ]
  %2 = phi ptr [ %i.j, %.lr.ph ], [ %i.r, %.backedge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @slurm_msg_t_init(ptr noundef nonnull %1) #15
  %i.m = call i32 @unpack16(ptr noundef nonnull %i.k, ptr noundef nonnull %2) #15
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @unpack_msg(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load i16, ptr %i.k, align 2
  %i.p = call ptr @rpc_num2string(i16 noundef zeroext %i.o) #15
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._parse_resp_ctld_mult, ptr noundef %i.p) #15 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.k
  %i.r = call ptr @list_next(ptr noundef %i.i) #15 ; 2 uses
  %.not16 = icmp eq ptr %i.r, null
  br i1 %.not16, label %.loopexit, label %bb.d, !llvm.loop !13

bb.g:                                             ; preds = %bb.e
  %i.s = load i16, ptr %i.k, align 2              ; 2 uses
  %.not19 = icmp eq i16 %i.s, 8001
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @rpc_num2string(i16 noundef zeroext %i.s) #15
  %i.u = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._parse_resp_ctld_mult, ptr noundef %i.t) #15 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @bit_set(ptr noundef %i.g, i64 noundef %indvars.iv.next) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.y = load i16, ptr %i.k, align 2
  %i.z = zext i16 %i.y to i32
  %i.aa = load ptr, ptr %i.l, align 8
  call void @slurm_free_msg_data(i32 noundef %i.z, ptr noundef %i.aa) #15
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %bb.c, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %.013
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #2

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @list_next(ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_t_init(ptr noundef) local_unnamed_addr #2

declare i32 @unpack16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @unpack_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @slurm_free_msg_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @fed_mgr_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.slurmdb_federation_cond_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @init_mutex) #15 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #16
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.b = load i1, ptr @inited, align 1
  br i1 %.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @init_mutex) #15 ; 2 uses
  %.not91 = icmp eq i32 %i.e, 0
  br i1 %.not91, label %bb.co, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @__errno_location() #16
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @slurm_with_slurmdbd() #15
  br i1 %i.g, label %bb.g, label %bb.cf

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not69 = icmp eq i32 %i.h, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call ptr @__errno_location() #16
  store i32 %i.h, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = load ptr, ptr @fed_job_list, align 8
  %.not70 = icmp eq ptr %i.j, null
  br i1 %.not70, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.k = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #15
  store ptr %i.k, ptr @fed_job_list, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @fed_job_list_mutex) #15 ; 2 uses
  %.not71 = icmp eq i32 %i.l, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = tail call ptr @__errno_location() #16
  store i32 %i.l, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = load ptr, ptr @fed_job_update_list, align 8
  %.not72 = icmp eq ptr %i.n, null
  br i1 %.not72, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.o = tail call ptr @list_create(ptr noundef nonnull @_destroy_fed_job_update_info) #15
  store ptr %i.o, ptr @fed_job_update_list, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.p = load ptr, ptr @remote_dep_recv_list, align 8
  %.not73 = icmp eq ptr %i.p, null
  br i1 %.not73, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.q = tail call ptr @list_create(ptr noundef nonnull @_destroy_dep_msg) #15
  store ptr %i.q, ptr @remote_dep_recv_list, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.r = load ptr, ptr @origin_dep_update_list, align 8
  %.not74 = icmp eq ptr %i.r, null
  br i1 %.not74, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.s = tail call ptr @list_create(ptr noundef nonnull @_destroy_dep_update_msg) #15
  store ptr %i.s, ptr @origin_dep_update_list, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @dep_job_list_mutex) #15 ; 2 uses
  %.not75 = icmp eq i32 %i.t, 0
  br i1 %.not75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.u = tail call ptr @__errno_location() #16
  store i32 %i.t, ptr %i.u, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.v = load ptr, ptr @remote_dep_job_list, align 8
  %.not76 = icmp eq ptr %i.v, null
  br i1 %.not76, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.w = tail call ptr @list_create(ptr noundef nonnull @_destroy_dep_job) #15
  store ptr %i.w, ptr @remote_dep_job_list, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @dep_job_list_mutex) #15 ; 2 uses
  %.not77 = icmp eq i32 %i.x, 0
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.y = tail call ptr @__errno_location() #16
  store i32 %i.x, ptr %i.y, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.fed_mgr_init) #17
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.z = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_mutex) #15 ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aa = tail call ptr @__errno_location() #16
  store i32 %i.z, ptr %i.aa, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._spawn_threads) #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ab = tail call i32 @threadpool_create(ptr noundef nonnull @_agent_thread, ptr noundef nonnull @.str.80, ptr noundef null, i1 noundef zeroext false, ptr noundef nonnull @.str.81, ptr noundef nonnull @agent_thread_id, ptr noundef nonnull @__func__._spawn_threads) #15 ; 2 uses
  %.not39.i = icmp eq i32 %i.ab, 0
  br i1 %.not39.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ac = tail call ptr @slurm_strerror(i32 noundef %i.ab) #15
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__._spawn_threads, ptr noundef %i.ac) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_mutex) #15 ; 2 uses
  %.not40.i = icmp eq i32 %i.ad, 0
  br i1 %.not40.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ae = tail call ptr @__errno_location() #16
  store i32 %i.ad, ptr %i.ae, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._spawn_threads) #17
  unreachable
end_hunk_0
