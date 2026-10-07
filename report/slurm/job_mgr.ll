Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_mgr?download=true
inline.NumInlined: 249
inline.NumDeleted: 67
begin_hunk_0_@_job_fail_account:bb.a
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = icmp samesign ugt i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.e, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @get_log_level() #24
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.300, ptr noundef %1, ptr noundef nonnull %0) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 27, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, -262145
  store i64 %i.p, ptr %i.n, align 8
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 0, ptr %i.r, align 8
  %i.s = load ptr, ptr @acct_db_conn, align 8
  %i.t = tail call i32 @jobacct_storage_g_job_start(ptr noundef %i.s, ptr noundef nonnull %0) #24 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not37 = icmp eq ptr %i.v, null
  br i1 %.not37, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 16
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @acct_db_conn, align 8
  %i.ag = tail call i32 @jobacct_storage_g_job_start(ptr noundef %i.af, ptr noundef nonnull %0) #24 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.w, align 8
  store ptr null, ptr %i.y, align 8
  store ptr null, ptr %i.aa, align 8
  tail call void @acct_policy_remove_job_submit(ptr noundef nonnull %0, i1 noundef zeroext %2) #24
  store ptr %i.x, ptr %i.w, align 8
  store ptr %i.z, ptr %i.y, align 8
  store ptr %i.ab, ptr %i.aa, align 8
  store ptr null, ptr %i.u, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.b
  %.034 = phi i32 [ 0, %bb.b ], [ %.0, %bb.k ], [ %.0, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.ah, align 8
  ret i32 %.034
}

declare i32 @jobacct_storage_g_job_suspend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @assoc_mgr_set_job_tres_alloc_str(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @jobacct_storage_g_job_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_get_qos_info(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %8 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.d = tail call ptr @xstrchr(ptr noundef %0, i32 noundef 44) #24
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @xstrdup(ptr noundef %0) #24 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call ptr @strtok_r(ptr noundef %i.e, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not3558.i = icmp eq ptr %i.f, null
  br i1 %.not3558.i, label %.loopexit.thread.i, label %.lr.ph.i

.loopexit.thread.i:                               ; preds = %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #24
  br label %bb.n

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 264
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.03060.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.l, %bb.j ]
  %.03159.i = phi ptr [ null, %.lr.ph.i ], [ %.132.i, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %7, i8 0, i64 344, i1 false)
  store ptr %.03060.i, ptr %i.g, align 8
  %i.h = call fastcc ptr @_determine_and_validate_qos(ptr noundef readonly %4, ptr noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull %i.c, i1 noundef zeroext true, i32 noundef 2) ; 3 uses
  %i.i = load i32, ptr %i.c, align 4
  %.not36.i = icmp eq i32 %i.i, 0
  br i1 %.not36.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %.not37.i = icmp eq ptr %i.h, null
  br i1 %.not37.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2066, ptr %i.c, align 4
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %.not38.i = icmp eq ptr %.03159.i, null
  br i1 %.not38.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = call ptr @list_create(ptr noundef null) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.132.i = phi ptr [ %.03159.i, %bb.f ], [ %i.j, %bb.g ] ; 4 uses
  %i.k = call ptr @list_find_first_ro(ptr noundef %.132.i, ptr noundef nonnull @slurm_find_ptr_in_list, ptr noundef nonnull %i.h) #24
  %.not39.i = icmp eq ptr %i.k, null
  br i1 %.not39.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @list_append(ptr noundef %.132.i, ptr noundef nonnull %i.h) #24
  br label %bb.j

.thread.i:                                        ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.l = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.a) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not35.i = icmp eq ptr %i.l, null
  br i1 %.not35.i, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.j, %.thread.i
  %.03156.i = phi ptr [ %.03159.i, %.thread.i ], [ %.132.i, %bb.j ] ; 6 uses
  call void @slurm_xfree(ptr noundef nonnull %i.b) #24
  %.not40.i = icmp eq ptr %.03156.i, null
  br i1 %.not40.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.m = call i32 @list_count(ptr noundef nonnull %.03156.i) #24
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.thread68.i, label %bb.l

.thread68.i:                                      ; preds = %bb.k
  %i.o = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.301, ptr noundef nonnull @__func__._get_qos_ptr_list, ptr noundef %0) #24 ; 0 uses
  store i32 2066, ptr %i.c, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %.pre.i = load i32, ptr %i.c, align 4
  %i.p = icmp eq i32 %.pre.i, 0
  br i1 %i.p, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread68.i
  call void @list_destroy(ptr noundef nonnull %.03156.i) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit.i, %bb.m, %.loopexit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %8, i8 0, i64 344, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr %0, ptr %i.r, align 8
  %i.s = call fastcc ptr @_determine_and_validate_qos(ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, ptr noundef %8, ptr noundef %i.c, i1 noundef zeroext true, i32 noundef 2)
  store ptr %i.s, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  call void @list_sort(ptr noundef nonnull %.03156.i, ptr noundef nonnull @priority_sort_qos_desc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr %.03156.i, ptr %2, align 8
  %i.t = call ptr @list_peek(ptr noundef nonnull %.03156.i) #24
  store ptr %i.t, ptr %3, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.u = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i32 %i.u
}

declare i32 @assoc_mgr_set_tres_cnt_array(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @job_set_alloc_tres(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const._update_job.locks, i64 28, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  tail call void @slurm_xfree(ptr noundef nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 10 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @slurm_xfree(ptr noundef nonnull %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 33023
  %or.cond = icmp eq i32 %i.f, 0
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @assoc_mgr_lock(ptr noundef nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = call ptr @slurm_xcalloc(i64 noundef %i.h, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.97, i32 noundef 9721, ptr noundef nonnull @__func__.job_set_alloc_tres) #24 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 8388608
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.am, null
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  switch i16 %i.ao, label %job_get_sockets_per_node.exit [
    i16 0, label %bb.f
    i16 -2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.d
  br label %job_get_sockets_per_node.exit

job_get_sockets_per_node.exit:                    ; preds = %bb.e, %bb.f
  %.0.i = phi i16 [ 1, %bb.f ], [ %i.ao, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 300
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = call i64 @job_get_tres_mem(ptr noundef %i.s, i64 noundef %i.w, i32 noundef %i.z, i32 noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ag, i1 noundef zeroext %i.ak, i16 noundef zeroext %.0.i, i32 noundef %i.aq)
  %i.as = load ptr, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 -2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.b, align 8
  call void @license_set_job_tres_cnt(ptr noundef %i.ax, ptr noundef %i.ay, i1 noundef zeroext true) #24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.b, align 8
  call void @gres_stepmgr_set_job_tres_cnt(ptr noundef %i.ba, i32 noundef %i.n, ptr noundef %i.bb, i1 noundef zeroext true) #24
  %i.bc = load ptr, ptr %i.b, align 8
  call void @bb_g_job_set_tres_cnt(ptr noundef nonnull %0, ptr noundef %i.bc, i1 noundef zeroext true) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = call double @calc_job_billable_tres(ptr noundef nonnull %0, i64 noundef %i.be, i1 noundef zeroext true)
  %i.bg = fptoui double %i.bf to i64
  %i.bh = load ptr, ptr %i.b, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 %i.bg, ptr %i.bi, align 8
  call void @assoc_mgr_set_job_tres_alloc_str(ptr noundef nonnull %0, i1 noundef zeroext true) #24
  br i1 %1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %job_get_sockets_per_node.exit
  call void @assoc_mgr_unlock(ptr noundef nonnull %2) #24
  br label %bb.h

bb.h:                                             ; preds = %job_get_sockets_per_node.exit, %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @job_set_req_tres(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const._update_job.locks, i64 28, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 11 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.c) #24
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @assoc_mgr_lock(ptr noundef nonnull %2) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @g_tres_count, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = call ptr @slurm_xcalloc(i64 noundef %i.e, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.97, i32 noundef 9635, ptr noundef nonnull @__func__.job_set_req_tres) #24 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 300
  %i.p = load i32, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.045 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %.043 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %.1 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %.0 = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not53 = icmp eq i32 %i.r, 0
  %spec.select56 = select i1 %.not53, i32 %.045, i32 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %.not54 = icmp eq i32 %i.t, 0
  %.144 = select i1 %.not54, i32 %.043, i32 %i.t  ; 3 uses
  %i.u = zext i32 %.144 to i64
end_hunk_0
