Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gpu?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@_gpu_create_plugin_context:bb.a
  br i1 %i.d, label %.sink.split.i, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.a, 2
  %.not5.i = icmp eq i32 %i.e, 0
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @get_log_level() #10
  %i.g = icmp sgt i32 %i.f, 2
  br i1 %i.g, label %.sink.split.i, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.a, 8
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @get_log_level() #10
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %.sink.split.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = and i32 %i.a, 16
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.h, label %_get_gpu_type.exit

bb.h:                                             ; preds = %bb.g
  %i.l = and i32 %i.a, 32
  %.not8.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i, label %bb.i, label %_get_gpu_type.exit

.sink.split.i:                                    ; preds = %bb.f, %bb.d, %bb.b
  %.str.9.sink.i = phi ptr [ @.str.8, %bb.b ], [ @.str.9, %bb.d ], [ @.str.10, %bb.f ]
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull %.str.9.sink.i) #10
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.h, %bb.f, %bb.d, %bb.b
  br label %_get_gpu_type.exit

_get_gpu_type.exit:                               ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ @.str.13, %bb.i ], [ @.str.11, %bb.g ], [ @.str.12, %bb.h ] ; 3 uses
  %i.m = tail call ptr @plugin_context_create(ptr noundef nonnull @.str.6, ptr noundef nonnull %.0.i, ptr noundef nonnull @ops, ptr noundef nonnull @syms, i64 noundef 56) #10 ; 2 uses
  store ptr %i.m, ptr @g_context, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_get_gpu_type.exit
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %.0.i) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_get_gpu_type.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gpu_plugin_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_context, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @g_context_lock) #10 ; 2 uses
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #11
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.gpu_plugin_fini) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @g_context, align 8        ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_gpu_clear_plugin_locked.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @plugin_context_destroy(ptr noundef nonnull %i.d) #10
  store ptr null, ptr @g_context, align 8
  br label %_gpu_clear_plugin_locked.exit

_gpu_clear_plugin_locked.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.e, %bb.e ], [ 0, %bb.d ]
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @g_context_lock) #10 ; 2 uses
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_gpu_clear_plugin_locked.exit
  %i.g = tail call ptr @__errno_location() #11
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.gpu_plugin_fini) #12
  unreachable

bb.g:                                             ; preds = %_gpu_clear_plugin_locked.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.i, %_gpu_clear_plugin_locked.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_get_tres_pos(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.slurmdb_tres_rec_t, align 8 ; 7 uses
  %.b = load i1, ptr @gpu_get_tres_pos.inited, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr @.str.3, ptr %i.b, align 8
  %i.c = call i32 @assoc_mgr_find_tres_pos(ptr noundef nonnull %2, i1 noundef zeroext false) #10
  store i32 %i.c, ptr @gpu_get_tres_pos.loc_gpuutil_pos, align 4
  store ptr @.str.4, ptr %i.b, align 8
  %i.d = call i32 @assoc_mgr_find_tres_pos(ptr noundef nonnull %2, i1 noundef zeroext false) #10
  store i32 %i.d, ptr @gpu_get_tres_pos.loc_gpumem_pos, align 4
  store i1 true, ptr @gpu_get_tres_pos.inited, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @gpu_get_tres_pos.loc_gpumem_pos, align 4
  store i32 %i.e, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr @gpu_get_tres_pos.loc_gpuutil_pos, align 4
  store i32 %i.f, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @assoc_mgr_find_tres_pos(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @gpu_g_get_system_gpu_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.gres_slurmd_conf, align 8   ; 13 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = tail call ptr @get_extra_conf_path(ptr noundef nonnull @.str.21) #10 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = call i32 @stat(ptr noundef %i.d, ptr noundef nonnull %2) #10
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %gpu_get_fake_system_list.exit.thread

gpu_get_fake_system_list.exit.thread:             ; preds = %bb.a
  call void @slurm_xfree(ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @get_log_level() #10
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef %i.d) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call ptr @list_create(ptr noundef nonnull @destroy_gres_slurmd_conf) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.j = tail call noalias ptr @fopen(ptr noundef %i.d, ptr noundef nonnull @.str.23) ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.l = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.j)
  %.not38.i.i = icmp eq ptr %i.l, null
  br i1 %.not38.i.i, label %._crit_edge41.i.i, label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %.preheader.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef %i.d) #10 ; 0 uses
  br label %gpu_get_fake_system_list.exit

bb.f:                                             ; preds = %bb.ab, %.lr.ph40.i.i
  %.03039.i.i = phi i32 [ 0, %.lr.ph40.i.i ], [ %i.u, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) @__const._add_fake_gpus_from_file.gres_slurmd_conf, i64 88, i1 false)
  %i.u = add nuw nsw i32 %.03039.i.i, 1           ; 3 uses
  %i.v = call i64 @strcspn(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.25) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 0, ptr %i.w, align 1
  %i.x = load i8, ptr %i.a, align 16
  switch i8 %i.x, label %bb.g [
    i8 35, label %bb.ab
    i8 0, label %bb.ab
  ], !llvm.loop !13

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 @get_log_level() #10
  %i.z = icmp sgt i32 %i.y, 4
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = call ptr @strtok_r(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not3135.i.i = icmp eq ptr %i.aa, null
  br i1 %.not3135.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.backedge.i.i
  %.037.i.i = phi i32 [ %.0.be.i.i, %.backedge.i.i ], [ 0, %bb.i ] ; 3 uses
  %.02936.i.i = phi ptr [ %i.ad, %.backedge.i.i ], [ %i.aa, %bb.i ] ; 10 uses
  %i.ab = call i32 @xstrcmp(ptr noundef nonnull %.02936.i.i, ptr noundef nonnull @.str.28) #10
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.backedge.i.i, label %bb.j

.backedge.i.i:                                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %.lr.ph.i.i
  %i.ad = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.0.be.i.i = add nuw nsw i32 %.037.i.i, 1
  %.not31.i.i = icmp eq ptr %i.ad, null
  br i1 %.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !14

bb.j:                                             ; preds = %.lr.ph.i.i
  switch i32 %.037.i.i, label %bb.t [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = call ptr @xstrdup(ptr noundef nonnull %.02936.i.i) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %.backedge.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = call i64 @strtol(ptr noundef nonnull captures(none) %.02936.i.i, ptr noundef null, i32 noundef 10) #10, !inline_history !15
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.q, align 8
  br label %.backedge.i.i

bb.m:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %.02936.i.i, align 1
  %i.ai = icmp eq i8 %i.ah, 126
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 24), align 8
  %i.ak = call ptr %i.aj(ptr noundef nonnull %.02936.i.i) #10, !inline_history !16
  store ptr %i.ak, ptr %i.p, align 8
  br label %.backedge.i.i

bb.o:                                             ; preds = %bb.m
  %i.al = call ptr @xstrdup(ptr noundef nonnull %.02936.i.i) #10
  store ptr %i.al, ptr %i.p, align 8
  br label %.backedge.i.i

bb.p:                                             ; preds = %bb.j
  %i.am = call ptr @xstrdup(ptr noundef nonnull %.02936.i.i) #10
  store ptr %i.am, ptr %i.o, align 8
  br label %.backedge.i.i

bb.q:                                             ; preds = %bb.j
  %i.an = call ptr @xstrdup(ptr noundef nonnull %.02936.i.i) #10
  store ptr %i.an, ptr %i.n, align 8
  br label %.backedge.i.i

bb.r:                                             ; preds = %bb.j
  %i.ao = call ptr @xstrdup(ptr noundef nonnull %.02936.i.i) #10
  store ptr %i.ao, ptr %i.m, align 8
  br label %.backedge.i.i

bb.s:                                             ; preds = %bb.j
  %i.ap = call i32 @gres_flags_parse(ptr noundef nonnull %.02936.i.i, ptr noundef null, ptr noundef null) #10
  store i32 %i.ap, ptr %1, align 8
  br label %.backedge.i.i

bb.t:                                             ; preds = %bb.j
  %i.aq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.29) #10 ; 0 uses
  br label %.backedge.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i
  %i.ar = add nsw i32 %.037.i.i, -7
  %i.as = icmp ult i32 %i.ar, -3
  br i1 %i.as, label %._crit_edge.thread.i.i, label %bb.u

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.i
  %i.at = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.30, i32 noundef %i.u) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %i.au = load i32, ptr %1, align 8
  %i.av = and i32 %i.au, 2272
  %.not32.i.i = icmp eq i32 %i.av, 0
  br i1 %.not32.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.31, i32 noundef %i.u) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = load i32, ptr %i.q, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = call ptr @bit_alloc(i64 noundef %i.ax) #10 ; 2 uses
  store ptr %i.ay, ptr %i.s, align 8
  %i.az = load ptr, ptr %i.p, align 8
  %i.ba = call i32 @bit_unfmt(ptr noundef %i.ay, ptr noundef %i.az) #10
  %.not33.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not33.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = load ptr, ptr %i.p, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.32, ptr noundef %i.bb) #12
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @add_gres_to_list(ptr noundef %i.i, ptr noundef nonnull %1) #10
  %i.bc = load ptr, ptr %i.s, align 8
  %.not34.i.i = icmp eq ptr %i.bc, null
  br i1 %.not34.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @slurm_bit_free(ptr noundef nonnull %i.s) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.s, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.p) #10
  call void @slurm_xfree(ptr noundef nonnull %i.n) #10
  call void @slurm_xfree(ptr noundef nonnull %i.r) #10
  call void @slurm_xfree(ptr noundef nonnull %i.o) #10
  call void @slurm_xfree(ptr noundef nonnull %i.m) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.bd = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.j)
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %._crit_edge41.i.i, label %bb.f

._crit_edge41.i.i:                                ; preds = %bb.ab, %.preheader.i.i
  %i.be = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  br label %gpu_get_fake_system_list.exit

gpu_get_fake_system_list.exit:                    ; preds = %bb.e, %._crit_edge41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @slurm_xfree(ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %gpu_get_fake_system_list.exit.thread, %gpu_get_fake_system_list.exit
  %.not8 = icmp eq ptr %0, null
  br i1 %.not8, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bi = load ptr, ptr @ops, align 8
  %i.bj = call ptr %i.bi(ptr noundef %0) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %gpu_get_fake_system_list.exit, %bb.ae
  %.0 = phi ptr [ %i.i, %gpu_get_fake_system_list.exit ], [ %i.bj, %bb.ae ], [ null, %bb.ad ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_g_step_hardware_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 8), align 8
  tail call void %i.a(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_g_step_hardware_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 16), align 8
  tail call void %i.a() #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gpu_g_test_cpu_conv(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 24), align 8
  %i.b = tail call ptr %i.a(ptr noundef %0) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gpu_g_energy_read(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 32), align 8
  %i.b = tail call i32 %i.a(i32 noundef %0, ptr noundef %1) #10
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @gpu_g_get_device_count(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 40), align 8
  tail call void %i.a(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gpu_g_usage_read(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 48), align 8
  %i.b = tail call i32 %i.a(i32 noundef %0, ptr noundef %1) #10
  ret i32 %i.b
}

declare void @gres_autodetect_flags_set_gpu(i32 noundef) local_unnamed_addr #5

declare i32 @list_count(ptr noundef) local_unnamed_addr #5

declare i32 @get_log_level() local_unnamed_addr #5

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @list_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @plugin_context_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @error(ptr noundef, ...) local_unnamed_addr #5

declare i32 @plugin_context_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @get_extra_conf_path(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @list_create(ptr noundef) local_unnamed_addr #5

declare void @destroy_gres_slurmd_conf(ptr noundef) #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

declare i32 @gres_flags_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @warning(ptr noundef, ...) local_unnamed_addr #5

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #5

declare i32 @bit_unfmt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #4

declare void @add_gres_to_list(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #5
end_hunk_0
