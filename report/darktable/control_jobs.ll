Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/control_jobs?download=true
inline.NumInlined: 84
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_control_merge_hdr_job_run:bb.a
  %i.dp = call ptr @g_list_prepend(ptr noundef null, ptr noundef %i.do) #17
  call void @dt_collection_update_query(ptr noundef %i.dm, i32 noundef 3, i32 noundef 45, ptr noundef %i.dp) #17
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.dr = trunc i32 %i.dq to i1
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.dt = icmp ne i32 %i.ds, 0
  %or.cond = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.dv = and i32 %i.du, 1048576
  %.not44 = icmp eq i32 %i.dv, 0
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 725, ptr noundef nonnull @__FUNCTION__._control_merge_hdr_job_run) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.dw, i32 noundef 15) #17
  call void @dt_control_queue_redraw_center() #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dy = load ptr, ptr %i.dx, align 16, !tbaa !41
  call void @free(ptr noundef %i.dy) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31
  call void @free(ptr noundef %i.ea) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_gpx_apply(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_gpx_apply_job_run, ptr noundef nonnull @.str.71) #17 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_control_gpx_apply_job_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 8 uses
  %.not.i30.i = icmp eq ptr %i.c, null
  br i1 %.not.i30.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !17
  %.not7.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i, label %_control_image_enumerator_cleanup.exit.i.i, label %_control_gpx_apply_alloc.exit.i

_control_image_enumerator_cleanup.exit.i.i:       ; preds = %bb.c
  tail call void @g_list_free(ptr noundef null) #17
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %bb.d

bb.d:                                             ; preds = %_control_image_enumerator_cleanup.exit.i.i, %bb.b
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.b) #17
  br label %_control_gpx_apply_job_create.exit

_control_gpx_apply_alloc.exit.i:                  ; preds = %bb.c
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @_control_gpx_apply_job_cleanup) #17
  %.not23.i = icmp eq i32 %1, -1
  br i1 %.not23.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_control_gpx_apply_alloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.g = and i32 %i.f, 256
  %.not.i32.i = icmp eq i32 %i.g, 0
  br i1 %.not.i32.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.51, i32 noundef 161, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef nonnull @.str.79) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.i = tail call ptr @dt_database_get(ptr noundef %i.h) #17
  %i.j = call i32 @sqlite3_prepare_v2(ptr noundef %i.i, ptr noundef nonnull @.str.79, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not5.i.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.m = call ptr @dt_database_get(ptr noundef %i.l) #17
  %i.n = call ptr @sqlite3_errmsg(ptr noundef %i.m) #17
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef 161, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef nonnull @.str.79, ptr noundef %i.n) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.q = call i32 @sqlite3_bind_int(ptr noundef %i.p, i32 noundef 1, i32 noundef range(i32 0, -1) %1) #17
  %.not6.i.i = icmp eq i32 %i.q, 0
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.t = call ptr @dt_database_get(ptr noundef %i.s) #17
  %i.u = call ptr @sqlite3_errmsg(ptr noundef %i.t) #17
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 162, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef %i.u) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.x = call i32 @sqlite3_step(ptr noundef %i.w) #17
  %i.y = icmp eq i32 %i.x, 100
  br i1 %i.y, label %.lr.ph.i.i, label %_control_image_enumerator_job_film_init.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.aa = call i32 @sqlite3_column_int(ptr noundef %i.z, i32 noundef 0) #17
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ac = sext i32 %i.aa to i64
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = call ptr @g_list_append(ptr noundef %i.ab, ptr noundef %i.ad) #17
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !15
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ag = call i32 @sqlite3_step(ptr noundef %i.af) #17
  %i.ah = icmp eq i32 %i.ag, 100
  br i1 %i.ah, label %.lr.ph.i.i, label %_control_image_enumerator_job_film_init.exit.i

_control_image_enumerator_job_film_init.exit.i:   ; preds = %.lr.ph.i.i, %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.aj = call i32 @sqlite3_finalize(ptr noundef %i.ai) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %g_strdup_inline.exit29.i

bb.l:                                             ; preds = %_control_gpx_apply_alloc.exit.i
  %.not24.i = icmp eq ptr %3, null
  br i1 %.not24.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call ptr @dt_act_on_get_images(i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !15
  br label %g_strdup_inline.exit29.i

bb.n:                                             ; preds = %bb.l
  store ptr %3, ptr %i.c, align 8, !tbaa !15
  br label %g_strdup_inline.exit29.i

g_strdup_inline.exit29.i:                         ; preds = %bb.n, %bb.m, %_control_image_enumerator_job_film_init.exit.i
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.am = call noalias ptr @g_strdup(ptr noundef %0) #17
  store ptr %i.am, ptr %i.al, align 8, !tbaa !96
  %i.an = call noalias ptr @g_strdup(ptr noundef %2) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !97
  br label %_control_gpx_apply_job_create.exit

_control_gpx_apply_job_create.exit:               ; preds = %bb.a, %bb.d, %g_strdup_inline.exit29.i
  %.1.i = phi ptr [ null, %bb.a ], [ %i.b, %g_strdup_inline.exit29.i ], [ null, %bb.d ]
  %i.ap = call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %.1.i) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_duplicate_images(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_duplicate_images_job_run, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %i.b, i32 noundef 2, i32 noundef 1)
  %i.d = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.c) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_duplicate_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = tail call i32 @g_list_length(ptr noundef %i.b) #17 ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.d, i32 noundef 1024) #17
  %i.e = zext i32 %i.c to i64
  %i.f = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i64 noundef %i.e, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #17 ; 0 uses
  %i.h = load i64, ptr %3, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = sitofp reassoc nsz arcp contract afn i64 %i.j to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, f0x3EB0C6F7A0B5ED8D
  %i.m = add nsw i64 %i.h, -1290608000
  %i.n = sitofp reassoc nsz arcp contract afn i64 %i.m to double
  %i.o = fadd reassoc nsz arcp contract afn double %i.l, %i.n
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, -2.500000e-01
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = uitofp reassoc nsz arcp contract afn i32 %i.c to double
  %i.t = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.043 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.as, %_update_progress.exit ]
  %.02342 = phi ptr [ %i.b, %.lr.ph ], [ %i.bi, %_update_progress.exit ] ; 2 uses
  %.03141 = phi double [ 5.000000e-01, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 6 uses
  %.03240 = phi double [ %i.p, %.lr.ph ], [ %.133, %_update_progress.exit ] ; 3 uses
  %.03539 = phi double [ 0.000000e+00, %.lr.ph ], [ %.136, %_update_progress.exit ] ; 2 uses
  %i.v = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not37 = icmp eq i32 %i.v, 4
  br i1 %.not37, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %.02342, align 8, !tbaa !27
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = tail call i32 @dt_image_duplicate(i32 noundef %i.y) #17 ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_collection_update.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 4294967295
  %.not27 = icmp eq i64 %i.ad, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @dt_history_delete_on_image(i32 noundef %i.z) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call i32 @dt_history_copy_and_paste_on_image(i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @dt_image_cache_set_change_timestamp_from_image(i32 noundef %i.z, i32 noundef %i.y) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.af = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #17 ; 0 uses
  %i.ag = load i64, ptr %2, align 8, !tbaa !100
  %i.ah = add nsw i64 %i.ag, -1290608000
  %i.ai = sitofp reassoc nsz arcp contract afn i64 %i.ah to double
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !101
  %i.ak = sitofp reassoc nsz arcp contract afn i64 %i.aj to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, f0x3EB0C6F7A0B5ED8D
  %i.am = fadd reassoc nsz arcp contract afn double %i.al, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.an = fsub reassoc nsz arcp contract afn double %i.am, %.03240
  %i.ao = fcmp reassoc nsz arcp contract afn ogt double %i.an, %.03141
  br i1 %i.ao, label %bb.h, label %_collection_update.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = fcmp reassoc nsz arcp contract afn olt double %.03141, 3.000000e+00
  %i.aq = fadd reassoc nsz arcp contract afn double %.03141, 1.000000e-01
  %spec.select = select nsz i1 %i.ap, double %i.aq, double %.03141
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  tail call void @dt_collection_update_query(ptr noundef %i.ar, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  tail call void @dt_control_queue_redraw_center() #17
  br label %_collection_update.exit

_collection_update.exit:                          ; preds = %bb.h, %bb.g, %bb.c
  %.133 = phi nsz double [ %.03240, %bb.c ], [ %i.am, %bb.h ], [ %.03240, %bb.g ]
  %.1 = phi nsz double [ %.03141, %bb.c ], [ %spec.select, %bb.h ], [ %.03141, %bb.g ]
  %i.as = fadd reassoc nsz arcp contract afn double %.043, %i.t ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.at = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.au = load i64, ptr %1, align 8, !tbaa !100
  %i.av = add nsw i64 %i.au, -1290608000
  %i.aw = sitofp reassoc nsz arcp contract afn i64 %i.av to double
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !101
  %i.ay = sitofp reassoc nsz arcp contract afn i64 %i.ax to double
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, f0x3EB0C6F7A0B5ED8D
  %i.ba = fadd reassoc nsz arcp contract afn double %i.az, %i.aw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bb = fadd reassoc nsz arcp contract afn double %.03539, 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_update_progress.exit

bb.i:                                             ; preds = %_collection_update.exit
  %i.bd = fcmp reassoc nsz arcp contract afn ogt double %i.as, 1.000000e+00
  %i.be = fcmp reassoc nsz arcp contract afn olt double %i.as, 0.000000e+00
  %i.bf = select reassoc nsz arcp contract afn i1 %i.be, double 0.000000e+00, double %i.as
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bd, double 1.000000e+00, double %i.bf
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bg) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %_collection_update.exit, %bb.i
  %.136 = phi nsz double [ %i.ba, %bb.i ], [ %.03539, %_collection_update.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.02342, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_update_progress.exit, %bb.a
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.bj) #17
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.bl = trunc i32 %i.bk to i1
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.bn = icmp ne i32 %i.bm, 0
  %or.cond = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bp = and i32 %i.bo, 1048576
  %.not26 = icmp eq i32 %i.bp, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 771, ptr noundef nonnull @__FUNCTION__._control_duplicate_images_job_run) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.critedge
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bq, i32 noundef 15) #17
  tail call void @dt_control_queue_redraw_center() #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_flip_images(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_flip_images_job_run, ptr noundef nonnull @.str.2, i32 noundef %0, ptr noundef null, i32 noundef 2, i32 noundef 1)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_flip_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.f, i32 noundef 128) #17
  %i.g = zext i32 %i.e to i64
  %i.h = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i64 noundef %i.g, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.e) #17
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = uitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.j = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.026 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.q, %_update_progress.exit ]
  %.01925 = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_update_progress.exit ] ; 2 uses
  %.02124 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.l = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not22 = icmp eq i32 %i.l, 4
  br i1 %.not22, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.01925, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  tail call void @dt_image_flip(i32 noundef %i.o, i32 noundef %i.c) #17
  %i.p = tail call reassoc nsz arcp contract afn float @dt_image_set_aspect_ratio(i32 noundef %i.o, i32 noundef 0) #17 ; 0 uses
  %i.q = fadd reassoc nsz arcp contract afn double %.026, %i.j ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.r = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !100
  %i.t = add nsw i64 %i.s, -1290608000
  %i.u = sitofp reassoc nsz arcp contract afn i64 %i.t to double
  %i.v = load i64, ptr %i.k, align 8, !tbaa !101
  %i.w = sitofp reassoc nsz arcp contract afn i64 %i.v to double
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, f0x3EB0C6F7A0B5ED8D
  %i.y = fadd reassoc nsz arcp contract afn double %i.x, %i.u ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.z = fadd reassoc nsz arcp contract afn double %.02124, 5.000000e-01
  %i.aa = fcmp reassoc nsz arcp contract afn ogt double %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_update_progress.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = fcmp reassoc nsz arcp contract afn ogt double %i.q, 1.000000e+00
  %i.ac = fcmp reassoc nsz arcp contract afn olt double %i.q, 0.000000e+00
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ac, double 0.000000e+00, double %i.q
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ab, double 1.000000e+00, double %i.ad
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.ae) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.c, %bb.d
  %.1 = phi nsz double [ %i.y, %bb.d ], [ %.02124, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %.01925, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_update_progress.exit, %bb.a
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.ah) #17
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ak = tail call ptr @g_list_copy(ptr noundef %i.aj) #17
  tail call void @dt_collection_update_query(ptr noundef %i.ai, i32 noundef 3, i32 noundef 16, ptr noundef %i.ak) #17
  tail call void @dt_control_queue_redraw_center() #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_monochrome_images(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_monochrome_images_job_run, ptr noundef nonnull @.str.3, i32 noundef %0, ptr noundef null, i32 noundef 2, i32 noundef 1)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_monochrome_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.f, i32 noundef 256) #17
  %i.g = icmp eq i32 %i.c, 0
  %i.h = zext i32 %i.e to i64                     ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i64 noundef %i.h, i32 noundef 5) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i64 noundef %i.h, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.k, i32 noundef %i.e) #17
  %.not27 = icmp eq ptr %i.d, null
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = icmp eq i32 %i.c, 2
  %i.m = zext i1 %i.l to i32
  %i.n = uitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.o = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.030 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.v, %_update_progress.exit ]
  %.02229 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %_update_progress.exit ] ; 2 uses
  %.02528 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.q = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not26 = icmp eq i32 %i.q, 4
  br i1 %.not26, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.02229, align 8, !tbaa !27
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @dt_image_set_monochrome_flag(i32 noundef %i.t, i32 noundef %i.m) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.90, i32 noundef %i.t) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = fadd reassoc nsz arcp contract afn double %.030, %i.o ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.w = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.x = load i64, ptr %1, align 8, !tbaa !100
  %i.y = add nsw i64 %i.x, -1290608000
  %i.z = sitofp reassoc nsz arcp contract afn i64 %i.y to double
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !101
  %i.ab = sitofp reassoc nsz arcp contract afn i64 %i.aa to double
  %i.ac = fmul reassoc nsz arcp contract afn double %i.ab, f0x3EB0C6F7A0B5ED8D
  %i.ad = fadd reassoc nsz arcp contract afn double %i.ac, %i.z ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ae = fadd reassoc nsz arcp contract afn double %.02528, 5.000000e-01
  %i.af = fcmp reassoc nsz arcp contract afn ogt double %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_update_progress.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = fcmp reassoc nsz arcp contract afn ogt double %i.v, 1.000000e+00
  %i.ah = fcmp reassoc nsz arcp contract afn olt double %i.v, 0.000000e+00
  %i.ai = select reassoc nsz arcp contract afn i1 %i.ah, double 0.000000e+00, double %i.v
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ag, double 1.000000e+00, double %i.ai
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.aj) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.i, %bb.j
  %.1 = phi nsz double [ %i.ad, %bb.j ], [ %.02528, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02229, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.e, %_update_progress.exit, %bb.d
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.am) #17
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ap = tail call ptr @g_list_copy(ptr noundef %i.ao) #17
  tail call void @dt_collection_update_query(ptr noundef %i.an, i32 noundef 3, i32 noundef 45, ptr noundef %i.ap) #17
  tail call void @dt_control_queue_redraw_center() #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_control_remove_images() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_remove_images_job_run, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0) ; 4 uses
  %i.b = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.5) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dt_control_job_get_params(ptr noundef %i.a) #17
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_job_dispose(ptr noundef %i.a) #17
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #17
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #17
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = tail call ptr @dcngettext(ptr noundef null, ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.i, i32 noundef 5) #17
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef %i.i, i32 noundef 5) #17
  %i.l = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef %i.k, i32 noundef %i.e) #17
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @dt_control_job_dispose(ptr noundef %i.a) #17
  br label %.thread

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.m = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_remove_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = tail call fastcc ptr @_get_image_list(ptr noundef %i.d) ; 3 uses
  %i.f = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i64 noundef %i.g, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !94
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.j = and i32 %i.i, 256
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.51, i32 noundef 937, ptr noundef nonnull @__FUNCTION__._control_remove_images_job_run, ptr noundef nonnull @.str.93) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.l = tail call ptr @dt_database_get(ptr noundef %i.k) #17
  %i.m = call i32 @sqlite3_prepare_v2(ptr noundef %i.l, ptr noundef nonnull @.str.93, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.p = call ptr @dt_database_get(ptr noundef %i.o) #17
  %i.q = call ptr @sqlite3_errmsg(ptr noundef %i.p) #17
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef 937, ptr noundef nonnull @__FUNCTION__._control_remove_images_job_run, ptr noundef nonnull @.str.93, ptr noundef %i.q) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.t = call i32 @sqlite3_bind_int(ptr noundef %i.s, i32 noundef 1, i32 noundef 2048) #17
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.w = call ptr @dt_database_get(ptr noundef %i.v) #17
  %i.x = call ptr @sqlite3_errmsg(ptr noundef %i.w) #17
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 938, ptr noundef nonnull @__FUNCTION__._control_remove_images_job_run, ptr noundef %i.x) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.aa = call i32 @sqlite3_bind_text(ptr noundef %i.z, i32 noundef 2, ptr noundef %i.e, i32 noundef -1, ptr noundef null) #17
  %.not47 = icmp eq i32 %i.aa, 0
  br i1 %.not47, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.ad = call ptr @dt_database_get(ptr noundef %i.ac) #17
  %i.ae = call ptr @sqlite3_errmsg(ptr noundef %i.ad) #17
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 939, ptr noundef nonnull @__FUNCTION__._control_remove_images_job_run, ptr noundef %i.ae) #20 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ah = call i32 @sqlite3_step(ptr noundef %i.ag) #17
  %i.ai = icmp eq i32 %i.ah, 100
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  br i1 %i.ai, label %bb.j, label %.critedge59

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 @sqlite3_column_int(ptr noundef %i.aj, i32 noundef 0) #17
  %i.al = call i32 @dt_image_safe_remove(i32 noundef %i.ak) #17
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.an = call i32 @sqlite3_finalize(ptr noundef %i.am) #17 ; 0 uses
  call void @g_free(ptr noundef %i.e) #17
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ao) #17
  br label %bb.u

.critedge59:                                      ; preds = %bb.i
  %i.ap = call i32 @sqlite3_finalize(ptr noundef %i.aj) #17 ; 0 uses
  call void @g_free(ptr noundef %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !37
  %.not5060 = icmp eq ptr %i.d, null
  br i1 %.not5060, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge59
  %i.aq = uitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.ar = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.04163 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bk, %_update_progress.exit ]
  %.04462 = phi ptr [ %i.d, %.lr.ph ], [ %i.ca, %_update_progress.exit ] ; 2 uses
  %.061 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.at = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not56 = icmp eq i32 %i.at, 4
  br i1 %.not56, label %.critedge.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %.04462, align 8, !tbaa !27
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = trunc i64 %i.av to i32                  ; 4 uses
  %i.ax = call ptr @dt_overlay_get_used_in_imgs(i32 noundef %i.aw, i32 noundef 1) #17 ; 3 uses
  %.not11.i = icmp eq ptr %i.ax, null
  br i1 %.not11.i, label %_count_images_using_overlay.exit.thread, label %.lr.ph.i

_count_images_using_overlay.exit.thread:          ; preds = %bb.m
  call void @g_list_free(ptr noundef null) #17
  br label %bb.o

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.013.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ax, %bb.m ] ; 2 uses
  %.0912.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.m ]
  %i.ay = load ptr, ptr %.013.i, align 8, !tbaa !27
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = call i32 @dt_image_exists(i32 noundef %i.ba) #17
  %.not10.i = icmp ne i32 %i.bb, 0
  %i.bc = zext i1 %.not10.i to i32
  %spec.select.i = add nuw nsw i32 %.0912.i, %i.bc ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_count_images_using_overlay.exit, label %.lr.ph.i

_count_images_using_overlay.exit:                 ; preds = %.lr.ph.i
  call void @g_list_free(ptr noundef nonnull %i.ax) #17
  %.not57 = icmp eq i32 %spec.select.i, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_count_images_using_overlay.exit
  %i.bf = call ptr @dt_image_get_filename(i32 noundef %i.aw) #17 ; 2 uses
  %i.bg = zext nneg i32 %spec.select.i to i64
  %i.bh = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i64 noundef %i.bg, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bh, ptr noundef %i.bf, i32 noundef %spec.select.i) #17
  call void @g_free(ptr noundef %i.bf) #17
  br label %bb.p

bb.o:                                             ; preds = %_count_images_using_overlay.exit.thread, %_count_images_using_overlay.exit
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not54 = icmp eq ptr %i.bi, null
  %i.bj = select i1 %.not54, ptr @.str.98, ptr @.str.97
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bj, i32 noundef %i.aw) #17
  call void @dt_image_remove(i32 noundef %i.aw) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = fadd reassoc nsz arcp contract afn double %.04163, %i.ar ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bl = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.bm = load i64, ptr %1, align 8, !tbaa !100
  %i.bn = add nsw i64 %i.bm, -1290608000
  %i.bo = sitofp reassoc nsz arcp contract afn i64 %i.bn to double
  %i.bp = load i64, ptr %i.as, align 8, !tbaa !101
  %i.bq = sitofp reassoc nsz arcp contract afn i64 %i.bp to double
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, f0x3EB0C6F7A0B5ED8D
  %i.bs = fadd reassoc nsz arcp contract afn double %i.br, %i.bo ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bt = fadd reassoc nsz arcp contract afn double %.061, 5.000000e-01
  %i.bu = fcmp reassoc nsz arcp contract afn ogt double %i.bs, %i.bt
  br i1 %i.bu, label %bb.q, label %_update_progress.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = fcmp reassoc nsz arcp contract afn ogt double %i.bk, 1.000000e+00
  %i.bw = fcmp reassoc nsz arcp contract afn olt double %i.bk, 0.000000e+00
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bw, double 0.000000e+00, double %i.bk
  %i.by = select reassoc nsz arcp contract afn i1 %i.bv, double 1.000000e+00, double %i.bx
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.by) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.p, %bb.q
  %.1 = phi nsz double [ %i.bs, %bb.q ], [ %.061, %bb.p ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.04462, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28 ; 2 uses
  %.not50 = icmp eq ptr %i.ca, null
  br i1 %.not50, label %.critedge.loopexit, label %bb.l

.critedge.loopexit:                               ; preds = %_update_progress.exit, %bb.l
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.critedge59
  %i.cb = phi ptr [ %.pre, %.critedge.loopexit ], [ null, %.critedge59 ]
  call fastcc void @_set_remove_flag(ptr noundef %i.cb)
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.cd = call i32 @dt_collection_update(ptr noundef %i.cc) #17 ; 0 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.cf = call fastcc ptr @_get_full_pathname(ptr noundef %i.ce) ; 2 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !37
  call void @g_free(ptr noundef %i.cg) #17
  %.not5265 = icmp eq ptr %i.cf, null
  br i1 %.not5265, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %.critedge, %.lr.ph67
  %.04066 = phi ptr [ %i.ci, %.lr.ph67 ], [ %i.cf, %.critedge ] ; 3 uses
  %i.ch = load ptr, ptr %.04066, align 8, !tbaa !27
  call void @dt_image_synch_all_xmp(ptr noundef %i.ch) #17
  %i.ci = call ptr @g_list_delete_link(ptr noundef nonnull %.04066, ptr noundef nonnull %.04066) #17 ; 2 uses
  %.not52 = icmp eq ptr %i.ci, null
  br i1 %.not52, label %._crit_edge, label %.lr.ph67

._crit_edge:                                      ; preds = %.lr.ph67, %.critedge
  call void (...) @dt_film_remove_empty() #17
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.cl = call ptr @g_list_copy(ptr noundef %i.ck) #17
  call void @dt_collection_update_query(ptr noundef %i.cj, i32 noundef 3, i32 noundef 45, ptr noundef %i.cl) #17
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.cn = trunc i32 %i.cm to i1
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.cp = icmp ne i32 %i.co, 0
  %or.cond = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %or.cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.cr = and i32 %i.cq, 1048576
  %.not53 = icmp eq i32 %i.cr, 0
  br i1 %.not53, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 1006, ptr noundef nonnull @__FUNCTION__._control_remove_images_job_run) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %._crit_edge
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.cs, i32 noundef 15) #17
  call void @dt_control_queue_redraw_center() #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #1

declare ptr @dt_control_job_get_params(ptr noundef) local_unnamed_addr #1

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #1

declare void @dt_control_job_dispose(ptr noundef) local_unnamed_addr #1

declare i32 @dt_gui_show_yes_no_dialog(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @dt_control_delete_images() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_delete_images_job_run, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null, i32 noundef 1, i32 noundef 0) ; 4 uses
  %i.b = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.12) #17
  %i.c = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.13) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dt_control_job_get_params(ptr noundef %i.a) #17
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call i32 @g_list_length(ptr noundef %i.e) #17 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_job_dispose(ptr noundef %i.a) #17
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #17
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #17
  %i.j = sext i32 %i.f to i64                     ; 3 uses
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.j, i32 noundef 5) #17
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i64 noundef %i.j, i32 noundef 5) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i64 noundef %i.j, i32 noundef 5) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.o = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef %i.n, i32 noundef %i.f) #17
  %.not13 = icmp eq i32 %i.o, 0
  br i1 %.not13, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @dt_control_job_dispose(ptr noundef %i.a) #17
  br label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.a
  %i.p = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_delete_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca [25 x i8], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca [4096 x i8], align 16             ; 7 uses
  %i.e = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = tail call fastcc ptr @_get_image_list(ptr noundef %i.f) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  %i.h = tail call i32 @g_list_length(ptr noundef %i.f) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !38
  %i.i = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.12) #17
  %.not = icmp eq i32 %i.i, 0
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i64 noundef %i.j, i32 noundef 5) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i64 noundef %i.j, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.m, i32 noundef %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.o = tail call i32 @dt_collection_update(ptr noundef %i.n) #17 ; 0 uses
  %i.p = tail call fastcc ptr @_get_full_pathname(ptr noundef %i.g) ; 2 uses
  tail call void @free(ptr noundef %i.g) #17
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.r = and i32 %i.q, 256
  %.not71 = icmp eq i32 %i.r, 0
  br i1 %.not71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.51, i32 noundef 1266, ptr noundef nonnull @__FUNCTION__._control_delete_images_job_run, ptr noundef nonnull @.str.107) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.t = tail call ptr @dt_database_get(ptr noundef %i.s) #17
  %i.u = call i32 @sqlite3_prepare_v2(ptr noundef %i.t, ptr noundef nonnull @.str.107, i32 noundef -1, ptr noundef nonnull %i.c, ptr noundef null) #17
  %.not72 = icmp eq i32 %i.u, 0
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.x = call ptr @dt_database_get(ptr noundef %i.w) #17
  %i.y = call ptr @sqlite3_errmsg(ptr noundef %i.x) #17
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef 1266, ptr noundef nonnull @__FUNCTION__._control_delete_images_job_run, ptr noundef nonnull @.str.107, ptr noundef %i.y) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = uitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.ab = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_update_progress.exit, %bb.h
  %.080 = phi nsz double [ 0.000000e+00, %bb.h ], [ %.1, %_update_progress.exit ] ; 2 uses
  %.064 = phi nsz double [ 0.000000e+00, %bb.h ], [ %i.bz, %_update_progress.exit ]
  %.060 = phi ptr [ %i.f, %bb.h ], [ %i.by, %_update_progress.exit ] ; 3 uses
  %.not73 = icmp eq ptr %.060, null
  br i1 %.not73, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %.060, align 8, !tbaa !27
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = trunc i64 %i.ae to i32                  ; 10 uses
  %i.ag = call ptr @dt_overlay_get_used_in_imgs(i32 noundef %i.af, i32 noundef 1) #17 ; 3 uses
  %.not11.i = icmp eq ptr %i.ag, null
  br i1 %.not11.i, label %_count_images_using_overlay.exit.thread, label %.lr.ph.i

_count_images_using_overlay.exit.thread:          ; preds = %bb.j
  call void @g_list_free(ptr noundef null) #17
  br label %bb.l

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.013.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ag, %bb.j ] ; 2 uses
  %.0912.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ah = load ptr, ptr %.013.i, align 8, !tbaa !27
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call i32 @dt_image_exists(i32 noundef %i.aj) #17
  %.not10.i = icmp ne i32 %i.ak, 0
  %i.al = zext i1 %.not10.i to i32
  %spec.select.i = add nuw nsw i32 %.0912.i, %i.al ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_count_images_using_overlay.exit, label %.lr.ph.i

_count_images_using_overlay.exit:                 ; preds = %.lr.ph.i
  call void @g_list_free(ptr noundef nonnull %i.ag) #17
  %.not82 = icmp eq i32 %spec.select.i, 0
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_count_images_using_overlay.exit
  %i.ao = call ptr @dt_image_get_filename(i32 noundef %i.af) #17 ; 2 uses
  %i.ap = zext nneg i32 %spec.select.i to i64
  %i.aq = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i64 noundef %i.ap, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.aq, ptr noundef %i.ao, i32 noundef %spec.select.i) #17
  call void @g_free(ptr noundef %i.ao) #17
  br label %bb.v

bb.l:                                             ; preds = %_count_images_using_overlay.exit.thread, %_count_images_using_overlay.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  call void @dt_image_full_path(i32 noundef %i.af, ptr noundef nonnull %i.d, i64 noundef 4096, ptr noundef null) #17
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.as = call i32 @sqlite3_bind_int(ptr noundef %i.ar, i32 noundef 1, i32 noundef %i.af) #17
  %.not74 = icmp eq i32 %i.as, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.av = call ptr @dt_database_get(ptr noundef %i.au) #17
  %i.aw = call ptr @sqlite3_errmsg(ptr noundef %i.av) #17
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 1290, ptr noundef nonnull @__FUNCTION__._control_delete_images_job_run, ptr noundef %i.aw) #20 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.az = call i32 @sqlite3_step(ptr noundef %i.ay) #17
  %i.ba = icmp eq i32 %i.az, 100
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  br i1 %i.ba, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @sqlite3_column_int(ptr noundef %i.bb, i32 noundef 0) #17
  %i.bd = icmp eq i32 %i.bc, 1
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.bf = call i32 @sqlite3_reset(ptr noundef %i.be) #17 ; 0 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.bh = call i32 @sqlite3_clear_bindings(ptr noundef %i.bg) #17 ; 0 uses
  br i1 %i.bd, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bi = call i32 @dt_image_local_copy_reset(i32 noundef %i.af) #17
  %.not75 = icmp eq i32 %i.bi, 0
  br i1 %.not75, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bj = call fastcc i32 @delete_file_from_disk(ptr noundef nonnull %i.d, ptr noundef %i.b) ; 3 uses
  %or.cond = icmp samesign ult i32 %i.bj, 3
  br i1 %or.cond, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bk = icmp eq i32 %i.bj, 1
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 25, ptr noundef nonnull @.str.98, i32 noundef %i.af) #17 ; 0 uses
  call fastcc void @_set_remove_flag(ptr noundef nonnull %i.a)
  call void @dt_image_remove(i32 noundef %i.af) #17
  br i1 %i.bk, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bm = call ptr @dt_image_find_duplicates(ptr noundef nonnull %i.d) #17 ; 3 uses
  %.not7683 = icmp eq ptr %i.bm, null
  br i1 %.not7683, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.084 = phi ptr [ %i.bq, %bb.t ], [ %i.bm, %bb.s ] ; 2 uses
  %i.bn = load ptr, ptr %.084, align 8, !tbaa !27
  %i.bo = call fastcc i32 @delete_file_from_disk(ptr noundef %i.bn, ptr noundef %i.b) ; 2 uses
  %.not77 = icmp eq i32 %i.bo, 1
  br i1 %.not77, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.084, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %.not76 = icmp eq ptr %i.bq, null
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %.lr.ph, %bb.s
  %.162 = phi i32 [ 1, %bb.s ], [ %i.bo, %.lr.ph ], [ 1, %bb.t ]
  call void @g_list_free_full(ptr noundef %i.bm, ptr noundef nonnull @g_free) #17
  br label %bb.v

.critedge:                                        ; preds = %bb.n
  %i.br = call i32 @sqlite3_reset(ptr noundef %i.bb) #17 ; 0 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.bt = call i32 @sqlite3_clear_bindings(ptr noundef %i.bs) #17 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.o
  call void @dt_image_path_append_version(i32 noundef %i.af, ptr noundef nonnull %i.d, i64 noundef 4096) #17
  %i.bu = call i64 @g_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.110, i64 noundef 4096) #17 ; 0 uses
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 25, ptr noundef nonnull @.str.98, i32 noundef %i.af) #17 ; 0 uses
  call fastcc void @_set_remove_flag(ptr noundef nonnull %i.a)
  call void @dt_image_remove(i32 noundef %i.af) #17
  %i.bw = call fastcc i32 @delete_file_from_disk(ptr noundef nonnull %i.d, ptr noundef %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.q, %._crit_edge, %bb.r, %bb.u, %bb.k
  %.2 = phi i32 [ 0, %bb.k ], [ 0, %bb.p ], [ %.162, %._crit_edge ], [ 2, %bb.r ], [ %i.bj, %bb.q ], [ %i.bw, %bb.u ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = fadd reassoc nsz arcp contract afn double %.064, %i.ab ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ca = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.cb = load i64, ptr %1, align 8, !tbaa !100
  %i.cc = add nsw i64 %i.cb, -1290608000
  %i.cd = sitofp reassoc nsz arcp contract afn i64 %i.cc to double
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !101
  %i.cf = sitofp reassoc nsz arcp contract afn i64 %i.ce to double
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, f0x3EB0C6F7A0B5ED8D
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cg, %i.cd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ci = fadd reassoc nsz arcp contract afn double %.080, 5.000000e-01
  %i.cj = fcmp reassoc nsz arcp contract afn ogt double %i.ch, %i.ci
  br i1 %i.cj, label %bb.w, label %_update_progress.exit

bb.w:                                             ; preds = %bb.v
  %i.ck = fcmp reassoc nsz arcp contract afn ogt double %i.bz, 1.000000e+00
  %i.cl = fcmp reassoc nsz arcp contract afn olt double %i.bz, 0.000000e+00
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, double 0.000000e+00, double %i.bz
  %i.cn = select reassoc nsz arcp contract afn i1 %i.ck, double 1.000000e+00, double %i.cm
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.cn) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.v, %bb.w
  %.1 = phi nsz double [ %i.ch, %bb.w ], [ %.080, %bb.v ]
  %i.co = icmp eq i32 %.2, 4
  br i1 %i.co, label %bb.x, label %bb.i

bb.x:                                             ; preds = %_update_progress.exit, %bb.i
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.cq = call i32 @sqlite3_finalize(ptr noundef %i.cp) #17 ; 0 uses
  %.not7887 = icmp eq ptr %i.p, null
  br i1 %.not7887, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.x, %.lr.ph90
  %.06388 = phi ptr [ %i.cs, %.lr.ph90 ], [ %i.p, %bb.x ] ; 3 uses
  %i.cr = load ptr, ptr %.06388, align 8, !tbaa !27
  call void @dt_image_synch_all_xmp(ptr noundef %i.cr) #17
  %i.cs = call ptr @g_list_delete_link(ptr noundef nonnull %.06388, ptr noundef nonnull %.06388) #17 ; 2 uses
  %.not78 = icmp eq ptr %i.cs, null
  br i1 %.not78, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %.lr.ph90, %bb.x
  call void @g_list_free(ptr noundef null) #17
  call void (...) @dt_film_remove_empty() #17
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.cv = call ptr @g_list_copy(ptr noundef %i.cu) #17
  call void @dt_collection_update_query(ptr noundef %i.ct, i32 noundef 3, i32 noundef 45, ptr noundef %i.cv) #17
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.cx = trunc i32 %i.cw to i1
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.cz = icmp ne i32 %i.cy, 0
  %or.cond3 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond3, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge91
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.db = and i32 %i.da, 1048576
  %.not79 = icmp eq i32 %i.db, 0
  br i1 %.not79, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 1379, ptr noundef nonnull @__FUNCTION__._control_delete_images_job_run) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %._crit_edge91
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.dc, i32 noundef 15) #17
  call void @dt_control_queue_redraw_center() #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_delete_duplicate(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_delete_images_job_run, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.20) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_control_generic_image_job_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 5 uses
  %.not21.i = icmp eq ptr %i.b, null
  br i1 %.not21.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.a) #17
  br label %_control_generic_image_job_create.exit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #17
  tail call void @dt_control_job_add_progress(ptr noundef nonnull %i.a, ptr noundef %i.c, i32 noundef 0) #17
  %i.d = sext i32 %0 to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call ptr @g_list_append(ptr noundef null, ptr noundef %i.e) #17
  store ptr %i.f, ptr %i.b, align 8, !tbaa !15
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @_control_image_enumerator_cleanup) #17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !17
  br label %_control_generic_image_job_create.exit

_control_generic_image_job_create.exit:           ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi ptr [ null, %bb.a ], [ %i.a, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.i = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.13) #17
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_control_generic_image_job_create.exit
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @dt_control_job_dispose(ptr noundef %.1.i) #17
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #17
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #17
  %i.m = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef %i.l) #17
  %.not4 = icmp eq i32 %i.m, 0
  br i1 %.not4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @dt_control_job_dispose(ptr noundef %.1.i) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_control_generic_image_job_create.exit
  %i.n = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %.1.i) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_move_images() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !102
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call ptr @dt_ui_main_window(ptr noundef %i.b) #17
  %i.d = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_move_images_job_run, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0) ; 5 uses
  %i.e = tail call ptr @dt_control_job_get_params(ptr noundef %i.d) #17
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i32 @g_list_length(ptr noundef %i.f) #17 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_job_dispose(ptr noundef %i.d) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #17
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #17
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #17
  %i.l = tail call ptr @gtk_file_chooser_native_new(ptr noundef %i.i, ptr noundef %i.c, i32 noundef 2, ptr noundef %i.j, ptr noundef %i.k) #17 ; 6 uses
  %i.m = tail call i32 @dt_conf_get_folder_to_file_chooser(ptr noundef nonnull @.str.27, ptr noundef %i.l) #17 ; 0 uses
  %i.n = tail call i32 @gtk_native_dialog_run(ptr noundef %i.l) #17
  %i.o = icmp eq i32 %i.n, -3
  br i1 %i.o, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  tail call void @g_object_unref(ptr noundef %i.l) #17
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @gtk_file_chooser_get_filename(ptr noundef %i.l) #17 ; 6 uses
  tail call void @dt_conf_set_folder_from_file_chooser(ptr noundef nonnull @.str.27, ptr noundef %i.l) #17
  tail call void @g_object_unref(ptr noundef %i.l) #17
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @g_file_test(ptr noundef nonnull %i.p, i32 noundef 4) #17
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @dt_control_job_get_params(ptr noundef %i.d) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.s, align 8, !tbaa !17
  %i.t = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.28) #17
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %i.g to i64                     ; 2 uses
  %i.v = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i64 noundef %i.u, i32 noundef 5) #17
  %i.w = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i64 noundef %i.u, i32 noundef 5) #17
  %i.x = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.v, ptr noundef nonnull @.str.8, ptr noundef %i.w, i32 noundef %i.g, ptr noundef nonnull %i.p) #17
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.d) #17 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.g, %bb.d, %bb.e
  %.027 = phi ptr [ null, %.thread ], [ %i.p, %bb.g ], [ null, %bb.d ], [ %i.p, %bb.e ]
  tail call void @g_free(ptr noundef %.027) #17
  tail call void @dt_control_job_dispose(ptr noundef %i.d) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  ret void
}

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_control_move_images_job_run(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.122, i32 noundef 5) #17
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.123, i32 noundef 5) #17
  %i.c = tail call fastcc i32 @_generic_dt_control_fileop_images_job_run(ptr noundef %0, ptr noundef nonnull @dt_image_move, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0)
  ret i32 %i.c
}

declare ptr @gtk_file_chooser_native_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_conf_get_folder_to_file_chooser(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gtk_native_dialog_run(ptr noundef) local_unnamed_addr #1

declare ptr @gtk_file_chooser_get_filename(ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_folder_from_file_chooser(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_object_unref(ptr noundef) local_unnamed_addr #1

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @dt_control_copy_images() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !102
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call ptr @dt_ui_main_window(ptr noundef %i.b) #17
  %i.d = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_copy_images_job_run, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0) ; 5 uses
  %i.e = tail call ptr @dt_control_job_get_params(ptr noundef %i.d) #17
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i32 @g_list_length(ptr noundef %i.f) #17 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_job_dispose(ptr noundef %i.d) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #17
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #17
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #17
  %i.l = tail call ptr @gtk_file_chooser_native_new(ptr noundef %i.i, ptr noundef %i.c, i32 noundef 2, ptr noundef %i.j, ptr noundef %i.k) #17 ; 6 uses
  %i.m = tail call i32 @dt_conf_get_folder_to_file_chooser(ptr noundef nonnull @.str.34, ptr noundef %i.l) #17 ; 0 uses
  %i.n = tail call i32 @gtk_native_dialog_run(ptr noundef %i.l) #17
  %i.o = icmp eq i32 %i.n, -3
  br i1 %i.o, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  tail call void @g_object_unref(ptr noundef %i.l) #17
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @gtk_file_chooser_get_filename(ptr noundef %i.l) #17 ; 6 uses
  tail call void @dt_conf_set_folder_from_file_chooser(ptr noundef nonnull @.str.34, ptr noundef %i.l) #17
  tail call void @g_object_unref(ptr noundef %i.l) #17
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @g_file_test(ptr noundef nonnull %i.p, i32 noundef 4) #17
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @dt_control_job_get_params(ptr noundef %i.d) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.s, align 8, !tbaa !17
  %i.t = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.35) #17
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %i.g to i64                     ; 2 uses
  %i.v = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.u, i32 noundef 5) #17
  %i.w = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %i.u, i32 noundef 5) #17
  %i.x = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.v, ptr noundef nonnull @.str.8, ptr noundef %i.w, i32 noundef %i.g, ptr noundef nonnull %i.p) #17
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.d) #17 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.g, %bb.d, %bb.e
  %.027 = phi ptr [ null, %.thread ], [ %i.p, %bb.g ], [ null, %bb.d ], [ %i.p, %bb.e ]
  tail call void @g_free(ptr noundef %.027) #17
  tail call void @dt_control_job_dispose(ptr noundef %i.d) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_control_copy_images_job_run(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.126, i32 noundef 5) #17
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.127, i32 noundef 5) #17
  %i.c = tail call fastcc i32 @_generic_dt_control_fileop_images_job_run(ptr noundef %0, ptr noundef nonnull @dt_image_copy, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 1)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @dt_control_set_local_copy_images() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_local_copy_images_job_run, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef null, i32 noundef 2, i32 noundef 0)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_local_copy_images_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [512 x i8], align 16              ; 6 uses
  %i.c = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i64 noundef %i.i, i32 noundef 5) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i64 noundef %i.i, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512, ptr noundef %.sink, i32 noundef %i.e) #17 ; 0 uses
  call void (ptr, ...) @dt_control_log(ptr noundef nonnull @.str.58, ptr noundef nonnull %i.b) #17
  call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef nonnull %i.b) #17
  %i.m = call i32 @dt_tag_new(ptr noundef nonnull @.str.132, ptr noundef nonnull %i.a) #17 ; 0 uses
  %.not40 = icmp eq ptr %i.d, null
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = uitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.o = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_update_progress.exit.us
  %.044.us = phi i32 [ %.1.us, %_update_progress.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %.02843.us = phi double [ %i.y, %_update_progress.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %.02942.us = phi ptr [ %i.ao, %_update_progress.exit.us ], [ %i.d, %.lr.ph ] ; 2 uses
  %.03741.us = phi double [ %.138.us, %_update_progress.exit.us ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.q = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not39.us = icmp eq i32 %i.q, 4
  br i1 %.not39.us, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.r = load ptr, ptr %.02942.us, align 8, !tbaa !27
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = call i32 @dt_image_local_copy_set(i32 noundef %i.t) #17
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 4, !tbaa !38
  %i.x = call i32 @dt_tag_attach(i32 noundef %i.w, i32 noundef %i.t, i32 noundef 0, i32 noundef 0) #17
  %.not35.us = icmp eq i32 %i.x, 0
  %spec.select.us = select i1 %.not35.us, i32 %.044.us, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.us = phi i32 [ %spec.select.us, %bb.f ], [ %.044.us, %bb.e ] ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn double %.02843.us, %i.o ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.z = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.aa = load i64, ptr %1, align 8, !tbaa !100
  %i.ab = add nsw i64 %i.aa, -1290608000
  %i.ac = sitofp reassoc nsz arcp contract afn i64 %i.ab to double
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !101
  %i.ae = sitofp reassoc nsz arcp contract afn i64 %i.ad to double
  %i.af = fmul reassoc nsz arcp contract afn double %i.ae, f0x3EB0C6F7A0B5ED8D
  %i.ag = fadd reassoc nsz arcp contract afn double %i.af, %i.ac ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ah = fadd reassoc nsz arcp contract afn double %.03741.us, 5.000000e-01
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %_update_progress.exit.us

bb.h:                                             ; preds = %bb.g
  %i.aj = fcmp reassoc nsz arcp contract afn ogt double %i.y, 1.000000e+00
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.y, 0.000000e+00
  %i.al = select reassoc nsz arcp contract afn i1 %i.ak, double 0.000000e+00, double %i.y
  %i.am = select reassoc nsz arcp contract afn i1 %i.aj, double 1.000000e+00, double %i.al
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.am) #17
  br label %_update_progress.exit.us

_update_progress.exit.us:                         ; preds = %bb.h, %bb.g
  %.138.us = phi nsz double [ %i.ag, %bb.h ], [ %.03741.us, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %.02942.us, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %.not.us = icmp eq ptr %i.ao, null
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_update_progress.exit
  %.044 = phi i32 [ %.1, %_update_progress.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.02843 = phi double [ %i.ax, %_update_progress.exit ], [ 0.000000e+00, %.lr.ph ]
  %.02942 = phi ptr [ %i.bn, %_update_progress.exit ], [ %i.d, %.lr.ph ] ; 2 uses
  %.03741 = phi double [ %.138, %_update_progress.exit ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ap = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not39 = icmp eq i32 %i.ap, 4
  br i1 %.not39, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.aq = load ptr, ptr %.02942, align 8, !tbaa !27
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = call i32 @dt_image_local_copy_reset(i32 noundef %i.as) #17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.a, align 4, !tbaa !38
  %i.aw = call i32 @dt_tag_detach(i32 noundef %i.av, i32 noundef %i.as, i32 noundef 0, i32 noundef 0) #17
  %.not34 = icmp eq i32 %i.aw, 0
  %spec.select36 = select i1 %.not34, i32 %.044, i32 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %.044, %bb.i ], [ %spec.select36, %bb.j ] ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn double %.02843, %i.o ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ay = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.az = load i64, ptr %1, align 8, !tbaa !100
  %i.ba = add nsw i64 %i.az, -1290608000
  %i.bb = sitofp reassoc nsz arcp contract afn i64 %i.ba to double
  %i.bc = load i64, ptr %i.p, align 8, !tbaa !101
  %i.bd = sitofp reassoc nsz arcp contract afn i64 %i.bc to double
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, f0x3EB0C6F7A0B5ED8D
  %i.bf = fadd reassoc nsz arcp contract afn double %i.be, %i.bb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bg = fadd reassoc nsz arcp contract afn double %.03741, 5.000000e-01
  %i.bh = fcmp reassoc nsz arcp contract afn ogt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.l, label %_update_progress.exit

bb.l:                                             ; preds = %bb.k
  %i.bi = fcmp reassoc nsz arcp contract afn ogt double %i.ax, 1.000000e+00
  %i.bj = fcmp reassoc nsz arcp contract afn olt double %i.ax, 0.000000e+00
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, double 0.000000e+00, double %i.ax
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bi, double 1.000000e+00, double %i.bk
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bl) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.k, %bb.l
  %.138 = phi nsz double [ %i.bf, %bb.l ], [ %.03741, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.02942, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.critedge:                                        ; preds = %.lr.ph.split, %_update_progress.exit, %.lr.ph.split.us, %_update_progress.exit.us, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %.1.us, %_update_progress.exit.us ], [ %.044.us, %.lr.ph.split.us ], [ %.1, %_update_progress.exit ], [ %.044, %.lr.ph.split ]
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.bq = call ptr @g_list_copy(ptr noundef %i.bp) #17
  call void @dt_collection_update_query(ptr noundef %i.bo, i32 noundef 3, i32 noundef 29, ptr noundef %i.bq) #17
  %.not31 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not31, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.bs = trunc i32 %i.br to i1
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.bu = icmp ne i32 %i.bt, 0
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bw = and i32 %i.bv, 1048576
  %.not32 = icmp eq i32 %i.bw, 0
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 1540, ptr noundef nonnull @__FUNCTION__._control_local_copy_images_job_run) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bx, i32 noundef 9) #17
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.bz = trunc i32 %i.by to i1
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.cb = icmp ne i32 %i.ca, 0
  %or.cond3 = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.cd = and i32 %i.cc, 1048576
  %.not33 = icmp eq i32 %i.cd, 0
  br i1 %.not33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 1541, ptr noundef nonnull @__FUNCTION__._control_local_copy_images_job_run) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ce, i32 noundef 15) #17
  call void @dt_control_queue_redraw_center() #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_reset_local_copy_images() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_local_copy_images_job_run, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_refresh_exif() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_refresh_exif_run, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_refresh_exif_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 4 uses
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
  %i.c = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = tail call ptr @g_list_copy(ptr noundef %i.d) #17
  %i.f = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i64 noundef %i.g, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f) #17
  %.not41 = icmp eq ptr %i.d, null
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = uitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.j = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.044 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ae, %_update_progress.exit ]
  %.03143 = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_update_progress.exit ] ; 2 uses
  %.03942 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.l = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not40 = icmp eq i32 %i.l, 4
  br i1 %.not40, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.03143, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i32                    ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @dt_image_full_path(i32 noundef %i.o, ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.a) #17
  %i.q = call ptr @dt_image_cache_get(i32 noundef %i.o, i8 noundef signext 119) #17 ; 4 uses
  %.not37 = icmp eq ptr %i.q, null
  br i1 %.not37, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1872 ; 2 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !213
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 16, !tbaa !213
  %i.u = call i32 @dt_exif_read(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b) #17 ; 0 uses
  call void @dt_image_cache_write_release_info(ptr noundef nonnull %i.q, i32 noundef 0, ptr noundef nonnull @.str.136) #17
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.w = trunc i32 %i.v to i1
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3432), align 8
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.aa = and i32 %i.z, 1048576
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.51, i32 noundef 1572, ptr noundef nonnull @__FUNCTION__._control_refresh_exif_run) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ab, i32 noundef 29) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.138, i32 noundef %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.139, i32 noundef %i.o) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.03143, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.ae = fadd reassoc nsz arcp contract afn double %.044, %i.j ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.af = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.ag = load i64, ptr %1, align 8, !tbaa !100
  %i.ah = add nsw i64 %i.ag, -1290608000
  %i.ai = sitofp reassoc nsz arcp contract afn i64 %i.ah to double
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !101
  %i.ak = sitofp reassoc nsz arcp contract afn i64 %i.aj to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, f0x3EB0C6F7A0B5ED8D
  %i.am = fadd reassoc nsz arcp contract afn double %i.al, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.an = fadd reassoc nsz arcp contract afn double %.03942, 5.000000e-01
  %i.ao = fcmp reassoc nsz arcp contract afn ogt double %i.am, %i.an
  br i1 %i.ao, label %bb.m, label %_update_progress.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ae, 1.000000e+00
  %i.aq = fcmp reassoc nsz arcp contract afn olt double %i.ae, 0.000000e+00
  %i.ar = select reassoc nsz arcp contract afn i1 %i.aq, double 0.000000e+00, double %i.ae
  %i.as = select reassoc nsz arcp contract afn i1 %i.ap, double 1.000000e+00, double %i.ar
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.as) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.l, %bb.m
  %.1 = phi nsz double [ %i.am, %bb.m ], [ %.03942, %bb.l ]
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_update_progress.exit, %bb.a
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.av = call ptr @g_list_copy(ptr noundef %i.au) #17
  call void @dt_collection_update_query(ptr noundef %i.at, i32 noundef 3, i32 noundef 45, ptr noundef %i.av) #17
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond3 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bb = and i32 %i.ba, 1048576
  %.not35 = icmp eq i32 %i.bb, 0
  br i1 %.not35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 1590, ptr noundef nonnull @__FUNCTION__._control_refresh_exif_run) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.critedge
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bc, i32 noundef 9) #17
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.be = trunc i32 %i.bd to i1
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3364), align 4
  %i.bg = icmp ne i32 %i.bf, 0
  %or.cond5 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond5, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bi = and i32 %i.bh, 1048576
  %.not36 = icmp eq i32 %i.bi, 0
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.51, i32 noundef 1591, ptr noundef nonnull @__FUNCTION__._control_refresh_exif_run) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bj, i32 noundef 12, ptr noundef %i.e) #17
  call void @dt_control_queue_redraw_center() #17
  call void @dt_start_backthumbs_crawler() #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_paste_history(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_list_free(ptr noundef %0) #17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #21 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.e, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call fastcc void @_add_history_job_data(ptr noundef nonnull @.str.42, ptr noundef nonnull @_control_paste_history_job_run, ptr noundef %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @g_list_free(ptr noundef %0) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

declare void @g_list_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_add_history_job_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1552
  %i.f = load i32, ptr %i.e, align 16, !tbaa !158
  %i.g = sext i32 %i.f to i64
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @g_list_find(ptr noundef nonnull %i.a, ptr noundef %i.h) #17 ; 3 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #21 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = tail call ptr @g_list_copy(ptr noundef %i.k) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  %i.o = tail call ptr @g_list_copy(ptr noundef %i.n) #17
  store ptr %i.o, ptr %i.m, align 8, !tbaa !159
  tail call void @g_list_free(ptr noundef %i.l) #17
  store ptr %i.i, ptr %i.j, align 8, !tbaa !140
  %i.p = load ptr, ptr %2, align 8, !tbaa !140
  %i.q = tail call ptr @g_list_remove_link(ptr noundef %i.p, ptr noundef nonnull %i.i) #17
  store ptr %i.q, ptr %2, align 8, !tbaa !140
  %i.r = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull %1, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.j, i32 noundef 3, i32 noundef 0)
  %i.s = tail call i32 @dt_control_add_job(i32 noundef 1000, ptr noundef %i.r) #17 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !140
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.u = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull %1, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 3, i32 noundef 0)
  %i.v = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.u) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_paste_history_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 3 uses
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !160
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = zext i32 %i.e to i64
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i64 noundef %i.j, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.k, i32 noundef %i.e) #17
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.l, i32 noundef 128) #17
  %.not3849 = icmp eq ptr %i.d, null
  br i1 %.not3849, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = uitofp reassoc nsz arcp contract afn i32 %i.e to double
  %i.n = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.053 = phi ptr [ null, %.lr.ph ], [ %.2, %_update_progress.exit ] ; 5 uses
  %.03252 = phi double [ 0.000000e+00, %.lr.ph ], [ %.133, %_update_progress.exit ] ; 2 uses
  %.03451 = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_update_progress.exit ] ; 2 uses
  %.04350 = phi double [ 0.000000e+00, %.lr.ph ], [ %.144, %_update_progress.exit ] ; 3 uses
  %i.p = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not47 = icmp eq i32 %i.p, 4
  br i1 %.not47, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.03451, align 8, !tbaa !27
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_update_progress.exit

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @dt_control_job_is_synchronous(ptr noundef %0) #17
  %i.v = icmp eq i32 %i.u, 0
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8 ; 2 uses
  %i.x = icmp ne ptr %i.w, null
  %or.cond.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.i, label %_safe_history_job_on_imgid.exit, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit:                  ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1552
  %i.z = load i32, ptr %i.y, align 16, !tbaa !158
  %.not48 = icmp eq i32 %i.z, %i.s
  br i1 %.not48, label %bb.g, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit.thread:           ; preds = %bb.e, %_safe_history_job_on_imgid.exit
  %i.aa = tail call i32 @dt_history_paste(i32 noundef %i.s, i32 noundef %i.i, i32 noundef 0) #17
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_safe_history_job_on_imgid.exit.thread
  %i.ab = and i64 %i.r, 2147483647
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call ptr @g_list_prepend(ptr noundef %.053, ptr noundef %i.ac) #17
  br label %bb.h

bb.g:                                             ; preds = %_safe_history_job_on_imgid.exit
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.143, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ae) #17
  br label %bb.h

bb.h:                                             ; preds = %_safe_history_job_on_imgid.exit.thread, %bb.f, %bb.g
  %.1 = phi ptr [ %i.ad, %bb.f ], [ %.053, %_safe_history_job_on_imgid.exit.thread ], [ %.053, %bb.g ] ; 2 uses
  %i.af = fadd reassoc nsz arcp contract afn double %.03252, %i.n ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ag = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !100
  %i.ai = add nsw i64 %i.ah, -1290608000
  %i.aj = sitofp reassoc nsz arcp contract afn i64 %i.ai to double
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !101
  %i.al = sitofp reassoc nsz arcp contract afn i64 %i.ak to double
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, f0x3EB0C6F7A0B5ED8D
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.aj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ao = fadd reassoc nsz arcp contract afn double %.04350, 5.000000e-01
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_update_progress.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.af, 1.000000e+00
  %i.ar = fcmp reassoc nsz arcp contract afn olt double %i.af, 0.000000e+00
  %i.as = select reassoc nsz arcp contract afn i1 %i.ar, double 0.000000e+00, double %i.af
  %i.at = select reassoc nsz arcp contract afn i1 %i.aq, double 1.000000e+00, double %i.as
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.at) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.i, %bb.h, %bb.d
  %.144 = phi nsz double [ %.04350, %bb.d ], [ %i.an, %bb.i ], [ %.04350, %bb.h ]
  %.133 = phi nsz double [ %.03252, %bb.d ], [ %i.af, %bb.i ], [ %i.af, %bb.h ]
  %.2 = phi ptr [ %.053, %bb.d ], [ %.1, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03451, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.c, %_update_progress.exit, %bb.b
  %.0.lcssa = phi ptr [ null, %bb.b ], [ %.2, %_update_progress.exit ], [ %.053, %bb.c ] ; 3 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.aw) #17
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !140
  tail call void @dt_collection_update_query(ptr noundef %i.ax, i32 noundef 3, i32 noundef 45, ptr noundef %i.ay) #17
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void @g_free(ptr noundef %i.az) #17
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.ba = tail call i32 @dt_view_get_current() #17
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !141
  tail call void @dt_dev_pixelpipe_rebuild(ptr noundef %i.bc) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %.not40 = icmp eq ptr %.0.lcssa, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @dt_image_synch_xmps(ptr noundef nonnull %.0.lcssa) #17
  tail call void @g_list_free(ptr noundef nonnull %.0.lcssa) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @dt_start_backthumbs_crawler() #17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_paste_parts_history(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !118 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_list_free(ptr noundef %0) #17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = tail call i32 @dt_gui_hist_dialog_new(ptr noundef nonnull %i.e, i32 noundef %i.c, i32 noundef 0) #17
  switch i32 %i.f, label %bb.f [
    i32 -5, label %bb.d
    i32 -10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.g = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #21 ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.g, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !161
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214
  %i.m = icmp eq i32 %i.l, 1
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !160
  tail call fastcc void @_add_history_job_data(ptr noundef nonnull @.str.42, ptr noundef nonnull @_control_paste_history_job_run, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @g_list_free(ptr noundef %0) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare i32 @dt_gui_hist_dialog_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_control_compress_history(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %.split5

.split5:                                          ; preds = %bb.b
  tail call fastcc void @_add_history_job(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @_control_compress_history_job_run)
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @dt_history_compress(i32 noundef %i.e) #17 ; 0 uses
  tail call void @g_list_free(ptr noundef nonnull %0) #17
  br label %.split

.split:                                           ; preds = %bb.a, %.split5, %bb.c
  ret void
}

declare i32 @dt_history_compress(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_add_history_job(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1552
  %i.e = load i32, ptr %i.d, align 16, !tbaa !158
  %i.f = sext i32 %i.e to i64
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @g_list_find(ptr noundef nonnull %0, ptr noundef %i.g) #17 ; 3 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @g_list_remove_link(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #17 ; 2 uses
  %i.j = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull %2, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.h, i32 noundef 3, i32 noundef 0)
  %i.k = tail call i32 @dt_control_add_job(i32 noundef 1000, ptr noundef %i.j) #17 ; 0 uses
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %bb.e, label %.thread21

.thread21:                                        ; preds = %bb.b, %bb.c, %bb.d
  %.024 = phi ptr [ %i.i, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ]
  %i.l = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull %2, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %.024, i32 noundef 3, i32 noundef 0)
  %i.m = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.l) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread21, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_compress_history_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = tail call i32 @g_list_length(ptr noundef %i.c) #17 ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef %i.e, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.d) #17
  %.not38 = icmp eq ptr %i.c, null
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = uitofp reassoc nsz arcp contract afn i32 %i.d to double
  %i.h = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.042 = phi i32 [ 0, %.lr.ph ], [ %.2, %_update_progress.exit ] ; 4 uses
  %.02441 = phi double [ 0.000000e+00, %.lr.ph ], [ %.125, %_update_progress.exit ] ; 2 uses
  %.02640 = phi ptr [ %i.c, %.lr.ph ], [ %i.an, %_update_progress.exit ] ; 2 uses
  %.03239 = phi double [ 0.000000e+00, %.lr.ph ], [ %.133, %_update_progress.exit ] ; 3 uses
  %i.j = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not36 = icmp eq i32 %i.j, 4
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.02640, align 8, !tbaa !27
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %_update_progress.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @dt_control_job_is_synchronous(ptr noundef %0) #17
  %i.p = icmp eq i32 %i.o, 0
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8 ; 2 uses
  %i.r = icmp ne ptr %i.q, null
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %_safe_history_job_on_imgid.exit, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit:                  ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1552
  %i.t = load i32, ptr %i.s, align 16, !tbaa !158
  %.not37 = icmp eq i32 %i.t, %i.m
  br i1 %.not37, label %bb.e, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit.thread:           ; preds = %bb.d, %_safe_history_job_on_imgid.exit
  %i.u = tail call i32 @dt_history_compress(i32 noundef %i.m) #17
  %.not31 = icmp eq i32 %i.u, 0
  %i.v = zext i1 %.not31 to i32
  %spec.select = add nsw i32 %.042, %i.v
  br label %bb.f

bb.e:                                             ; preds = %_safe_history_job_on_imgid.exit
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.146, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.w) #17
  br label %bb.f

bb.f:                                             ; preds = %_safe_history_job_on_imgid.exit.thread, %bb.e
  %.1 = phi i32 [ %spec.select, %_safe_history_job_on_imgid.exit.thread ], [ %.042, %bb.e ] ; 2 uses
  %i.x = fadd reassoc nsz arcp contract afn double %.02441, %i.h ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !100
  %i.aa = add nsw i64 %i.z, -1290608000
  %i.ab = sitofp reassoc nsz arcp contract afn i64 %i.aa to double
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !101
  %i.ad = sitofp reassoc nsz arcp contract afn i64 %i.ac to double
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, f0x3EB0C6F7A0B5ED8D
  %i.af = fadd reassoc nsz arcp contract afn double %i.ae, %i.ab ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ag = fadd reassoc nsz arcp contract afn double %.03239, 5.000000e-01
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_update_progress.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.x, 1.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn olt double %i.x, 0.000000e+00
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, double 0.000000e+00, double %i.x
  %i.al = select reassoc nsz arcp contract afn i1 %i.ai, double 1.000000e+00, double %i.ak
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.al) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.g, %bb.f, %bb.c
  %.133 = phi nsz double [ %.03239, %bb.c ], [ %i.af, %bb.g ], [ %.03239, %bb.f ]
  %.125 = phi nsz double [ %.02441, %bb.c ], [ %i.x, %bb.g ], [ %i.x, %bb.f ]
  %.2 = phi i32 [ %.042, %bb.c ], [ %.1, %bb.g ], [ %.1, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02640, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_update_progress.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %_update_progress.exit ], [ %.042, %bb.b ] ; 3 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void @dt_collection_update_query(ptr noundef %i.ao, i32 noundef 3, i32 noundef 45, ptr noundef %i.ap) #17
  store ptr null, ptr %i.b, align 8, !tbaa !17
  tail call void @dt_control_queue_redraw_center() #17
  tail call void @dt_start_backthumbs_crawler() #17
  %.not29 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.aq = sext i32 %.0.lcssa to i64
  %i.ar = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, i64 noundef %i.aq, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ar, i32 noundef %.0.lcssa) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_discard_history(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %.split5

.split5:                                          ; preds = %bb.b
  tail call fastcc void @_add_history_job(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @_control_discard_history_job_run)
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @dt_history_delete(i32 noundef %i.e, i32 noundef 1) #17 ; 0 uses
  tail call void @g_list_free(ptr noundef nonnull %0) #17
  br label %.split

.split:                                           ; preds = %bb.a, %.split5, %bb.c
  ret void
}

declare i32 @dt_history_delete(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_discard_history_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = tail call i32 @g_list_length(ptr noundef %i.c) #17 ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i64 noundef %i.e, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.d) #17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.g, i32 noundef 128) #17
  %.not31 = icmp eq ptr %i.c, null
  br i1 %.not31, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = uitofp reassoc nsz arcp contract afn i32 %i.d to double
  %i.i = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.034 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %.02133 = phi ptr [ %i.c, %.lr.ph ], [ %i.an, %_update_progress.exit ] ; 2 uses
  %.02632 = phi double [ 0.000000e+00, %.lr.ph ], [ %.127, %_update_progress.exit ] ; 3 uses
  %i.k = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not29 = icmp eq i32 %i.k, 4
  br i1 %.not29, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.02133, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %_update_progress.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @dt_control_job_is_synchronous(ptr noundef %0) #17
  %i.q = icmp eq i32 %i.p, 0
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8 ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %_safe_history_job_on_imgid.exit, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1552
  %i.u = load i32, ptr %i.t, align 16, !tbaa !158
  %.not30 = icmp eq i32 %i.u, %i.n
  br i1 %.not30, label %bb.e, label %_safe_history_job_on_imgid.exit.thread

_safe_history_job_on_imgid.exit.thread:           ; preds = %bb.d, %_safe_history_job_on_imgid.exit
  %i.v = tail call i32 @dt_history_delete(i32 noundef %i.n, i32 noundef 1) #17 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_safe_history_job_on_imgid.exit
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.w) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_safe_history_job_on_imgid.exit.thread
  %i.x = fadd reassoc nsz arcp contract afn double %.034, %i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !100
  %i.aa = add nsw i64 %i.z, -1290608000
  %i.ab = sitofp reassoc nsz arcp contract afn i64 %i.aa to double
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !101
  %i.ad = sitofp reassoc nsz arcp contract afn i64 %i.ac to double
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, f0x3EB0C6F7A0B5ED8D
  %i.af = fadd reassoc nsz arcp contract afn double %i.ae, %i.ab ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ag = fadd reassoc nsz arcp contract afn double %.02632, 5.000000e-01
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_update_progress.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.x, 1.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn olt double %i.x, 0.000000e+00
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, double 0.000000e+00, double %i.x
  %i.al = select reassoc nsz arcp contract afn i1 %i.ai, double 1.000000e+00, double %i.ak
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.al) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.g, %bb.f, %bb.c
  %.127 = phi nsz double [ %.02632, %bb.c ], [ %i.af, %bb.g ], [ %.02632, %bb.f ]
  %.1 = phi nsz double [ %.034, %bb.c ], [ %i.x, %bb.g ], [ %i.x, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %.02133, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %_update_progress.exit, %bb.b, %bb.a
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.at = and i32 %i.as, 1048576
  %.not24 = icmp eq i32 %i.at, 0
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 1751, ptr noundef nonnull @__FUNCTION__._control_discard_history_job_run) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.critedge
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.au, i32 noundef 9) #17
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.av) #17
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void @dt_collection_update_query(ptr noundef %i.aw, i32 noundef 3, i32 noundef 45, ptr noundef %i.ax) #17
  store ptr null, ptr %i.b, align 8, !tbaa !17
  tail call void @dt_control_queue_redraw_center() #17
  tail call void @dt_start_backthumbs_crawler() #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_apply_styles(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = icmp ne ptr %0, null                     ; 2 uses
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.c) #17
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.d) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.e) #17
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #21 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.48) #17
  store ptr %0, ptr %i.f, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %2, ptr %i.i, align 8, !tbaa !161
  %i.j = icmp eq i32 %i.g, 1
  %i.k = zext i1 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !160
  tail call fastcc void @_add_history_job_data(ptr noundef nonnull @.str.49, ptr noundef nonnull @_control_apply_styles_job_run, ptr noundef %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.f, %bb.b
  ret void
}

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_apply_styles_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !161  ; 2 uses
  %i.i = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, i64 noundef %i.j, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.k, i32 noundef %i.i) #17
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_start_group(ptr noundef %i.l, i32 noundef 128) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !160  ; 2 uses
  %.not6778 = icmp eq ptr %i.d, null
  br i1 %.not6778, label %.critedge, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.b
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = icmp ne ptr %i.f, null                   ; 2 uses
  %or.cond = select i1 %i.o, i1 %i.p, i1 false    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = icmp eq i32 %i.h, 0
  %or.cond3.not = select i1 %i.o, i1 %i.r, i1 false
  %i.s = uitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.t = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph83, %_update_progress.exit
  %.06081 = phi ptr [ %i.d, %.lr.ph83 ], [ %i.bi, %_update_progress.exit ] ; 2 uses
  %.06180 = phi double [ 0.000000e+00, %.lr.ph83 ], [ %.1, %_update_progress.exit ] ; 2 uses
  %.07379 = phi double [ 0.000000e+00, %.lr.ph83 ], [ %.174, %_update_progress.exit ] ; 3 uses
  %i.v = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not75 = icmp eq i32 %i.v, 4
  br i1 %.not75, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %_update_progress.exit, %bb.b
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_end_group(ptr noundef %i.w) #17
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.y = trunc i32 %i.x to i1
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond7 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond7, label %bb.o, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %.06081, align 8, !tbaa !27
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = trunc i64 %i.ac to i32                  ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_update_progress.exit

bb.e:                                             ; preds = %bb.d
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !28
  %.not70 = icmp eq ptr %i.af, null
  br i1 %.not70, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call ptr @dt_history_snapshot_item_init() #17 ; 4 uses
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @dt_history_snapshot_undo_create(i32 noundef %i.ad, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai) #17
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_disable_next(ptr noundef %i.aj) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.059 = phi ptr [ null, %bb.f ], [ %i.ag, %bb.g ], [ null, %bb.e ] ; 4 uses
  br i1 %or.cond3.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @dt_history_delete_on_image_ext(i32 noundef %i.ad, i32 noundef 0, i32 noundef 1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  br i1 %or.cond, label %bb.k, label %bb.m

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.077 = phi ptr [ %i.am, %.lr.ph ], [ %i.f, %bb.j ] ; 2 uses
  %i.ak = load ptr, ptr %.077, align 8, !tbaa !27
  tail call void @dt_styles_apply_to_image(ptr noundef %i.ak, i32 noundef %i.h, i32 noundef %i.n, i32 noundef %i.ad) #17
  %i.al = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not71 = icmp eq ptr %i.am, null
  br i1 %.not71, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !28
  %.not72 = icmp eq ptr %i.an, null
  br i1 %.not72, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %.059, align 4, !tbaa !216
  %i.ap = getelementptr inbounds nuw i8, ptr %.059, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %.059, i64 16
  tail call void @dt_history_snapshot_undo_create(i32 noundef %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #17
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !98
  tail call void @dt_undo_record(ptr noundef %i.ar, ptr noundef null, i32 noundef 128, ptr noundef nonnull %.059, ptr noundef nonnull @dt_history_snapshot_undo_pop, ptr noundef nonnull @dt_history_snapshot_undo_lt_history_data_free) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge
  %i.as = fadd reassoc nsz arcp contract afn double %.06180, %i.t ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.at = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.au = load i64, ptr %1, align 8, !tbaa !100
  %i.av = add nsw i64 %i.au, -1290608000
  %i.aw = sitofp reassoc nsz arcp contract afn i64 %i.av to double
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !101
  %i.ay = sitofp reassoc nsz arcp contract afn i64 %i.ax to double
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, f0x3EB0C6F7A0B5ED8D
  %i.ba = fadd reassoc nsz arcp contract afn double %i.az, %i.aw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bb = fadd reassoc nsz arcp contract afn double %.07379, 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.n, label %_update_progress.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = fcmp reassoc nsz arcp contract afn ogt double %i.as, 1.000000e+00
  %i.be = fcmp reassoc nsz arcp contract afn olt double %i.as, 0.000000e+00
  %i.bf = select reassoc nsz arcp contract afn i1 %i.be, double 0.000000e+00, double %i.as
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bd, double 1.000000e+00, double %i.bf
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bg) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.n, %bb.m, %bb.d
  %.174 = phi nsz double [ %.07379, %bb.d ], [ %i.ba, %bb.n ], [ %.07379, %bb.m ]
  %.1 = phi nsz double [ %.06180, %bb.d ], [ %i.as, %bb.n ], [ %i.as, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.06081, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28 ; 2 uses
  %.not67 = icmp eq ptr %i.bi, null
  br i1 %.not67, label %.critedge, label %bb.c

bb.o:                                             ; preds = %.critedge
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bk = and i32 %i.bj, 1048576
  %.not69 = icmp eq i32 %i.bk, 0
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 1819, ptr noundef nonnull @__FUNCTION__._control_apply_styles_job_run) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %.critedge
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bl, i32 noundef 9) #17
  tail call void @g_list_free(ptr noundef %i.d) #17
  tail call void @g_list_free_full(ptr noundef %i.f, ptr noundef nonnull @g_free) #17
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void @g_free(ptr noundef %i.bm) #17
  store ptr null, ptr %i.b, align 8, !tbaa !17
  tail call void @dt_control_queue_redraw_center() #17
  tail call void @dt_start_backthumbs_crawler() #17
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dt_control_export(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_export_job_run, ptr noundef nonnull @.str.50) #17 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 5 uses
  %.not.i85 = icmp eq ptr %i.b, null
  br i1 %.not.i85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !17
  %.not7.i = icmp eq ptr %i.c, null
  br i1 %.not7.i, label %_control_image_enumerator_cleanup.exit.i, label %_control_export_alloc.exit

_control_image_enumerator_cleanup.exit.i:         ; preds = %bb.c
  tail call void @g_list_free(ptr noundef null) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_control_image_enumerator_cleanup.exit.i
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.a) #17
  br label %bb.l

_control_export_alloc.exit:                       ; preds = %bb.c
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @_control_export_cleanup) #17
  store ptr %0, ptr %i.b, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 17 uses
  store i32 %1, ptr %i.e, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %i.f, align 4, !tbaa !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %3, ptr %i.g, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %4, ptr %i.h, align 4, !tbaa !165
  %i.i = tail call ptr @dt_imageio_get_storage_by_index(i32 noundef %4) #17 ; 7 uses
  %.not76 = icmp eq ptr %i.i, null
  br i1 %.not76, label %bb.e, label %bb.f, !prof !166

bb.e:                                             ; preds = %_control_export_alloc.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 2580, ptr noundef nonnull @__func__.dt_control_export, ptr noundef nonnull @.str.52) #22
  unreachable

bb.f:                                             ; preds = %_control_export_alloc.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219
  %i.l = tail call ptr %i.k(ptr noundef nonnull %i.i) #17 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #17
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = tail call ptr %i.p(ptr noundef nonnull %i.i) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n, ptr noundef %i.q) #17
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.a) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.l, ptr %i.r, align 8, !tbaa !173
  %i.s = tail call ptr @dt_imageio_get_format_by_index(i32 noundef %3) #17 ; 4 uses
  %.not78 = icmp eq ptr %i.s, null
  br i1 %.not78, label %bb.i, label %bb.j, !prof !166

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 2593, ptr noundef nonnull @__func__.dt_control_export, ptr noundef nonnull @.str.54) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !220
  %i.v = tail call ptr %i.u(ptr noundef nonnull %i.s) #17 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %g_strdup_inline.exit84

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #17
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.aa = tail call ptr %i.z() #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.x, ptr noundef %i.aa) #17
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.a) #17
  br label %bb.l

g_strdup_inline.exit84:                           ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %5, ptr %i.ac, align 8, !tbaa !176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %10, ptr %i.ad, align 8, !tbaa !177
  %i.ae = or i32 %1, %7
  %i.af = or i32 %i.ae, %2
  %or.cond3.not = icmp eq i32 %i.af, 0
  %i.ag = select i1 %or.cond3.not, i32 0, i32 %6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !178
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %8, ptr %i.ai, align 4, !tbaa !179
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %9, ptr %i.aj, align 8, !tbaa !180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.al = tail call i64 @g_strlcpy(ptr noundef nonnull %i.ak, ptr noundef %11, i64 noundef 128) #17 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 %12, ptr %i.am, align 8, !tbaa !181
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  store i32 %13, ptr %i.an, align 4, !tbaa !182
  %i.ao = tail call noalias ptr @g_strdup(ptr noundef %14) #17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i32 %15, ptr %i.aq, align 8, !tbaa !184
  %i.ar = tail call noalias ptr @g_strdup(ptr noundef %16) #17
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !185
  %i.at = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #17
  tail call void @dt_control_job_add_progress(ptr noundef nonnull %i.a, ptr noundef %i.at, i32 noundef 1) #17
  %i.au = tail call i32 @dt_control_add_job(i32 noundef 3, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !222
  tail call void %i.aw(ptr noundef nonnull %i.i) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k, %g_strdup_inline.exit84, %bb.g, %bb.a
  ret void
}

declare ptr @dt_control_job_create(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_export_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca [27 x i8], align 16               ; 3 uses
  %2 = alloca %struct.dt_export_metadata_t, align 8 ; 4 uses
  %i.j = alloca [4096 x i8], align 16             ; 6 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  tail call void @dt_stop_backthumbs_crawler(i32 noundef 0) #17
end_hunk_0
begin_hunk_1_@_control_export_job_run:bb.a
  %i.bm = icmp eq i32 %i.bl, 0
  %or.cond3 = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bl)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bo = call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bl)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0110 = phi i32 [ %i.bn, %bb.l ], [ %i.bo, %bb.m ]
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.bq = call i32 @g_list_length(ptr noundef %i.bp) #17 ; 7 uses
  %.not133 = icmp eq i32 %i.bq, 0
  br i1 %.not133, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = zext i32 %i.bq to i64
  %i.bs = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155, i64 noundef %i.br, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bs, i32 noundef %i.bq) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.156, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bt) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = insertelement <2 x i32> poison, i32 %.0111, i64 0
  %i.bv = insertelement <2 x i32> %i.bu, i32 %.0110, i64 1 ; 3 uses
  %i.bw = icmp ne <2 x i32> %i.bv, zeroinitializer
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !225 ; 2 uses
  %i.by = load <2 x i32>, ptr %i.n, align 8, !tbaa !38 ; 3 uses
  %i.bz = icmp ne <2 x i32> %i.by, zeroinitializer
  %i.ca = select <2 x i1> %i.bz, <2 x i1> %i.bw, <2 x i1> zeroinitializer
  %i.cb = call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.bv, <2 x i32> %i.by)
  %i.cc = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bv, <2 x i32> %i.by)
  %i.cd = select <2 x i1> %i.ca, <2 x i32> %i.cc, <2 x i32> %i.cb
  store <2 x i32> %i.cd, ptr %i.bx, align 4, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.cg = call i64 @g_strlcpy(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, i64 noundef 128) #17 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !181
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !225
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !233
  store i32 0, ptr %i.g, align 4, !tbaa !38
  store i32 0, ptr %i.h, align 4, !tbaa !38
  %i.cl = call i32 @dt_tag_new(ptr noundef nonnull @.str.157, ptr noundef nonnull %i.g) #17 ; 0 uses
  %i.cm = call i32 @dt_tag_new(ptr noundef nonnull @.str.158, ptr noundef nonnull %i.h) #17 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.i, ptr noundef nonnull align 16 dereferenceable(27) @__const._control_export_job_run.iptc_envelope_characterset, i64 27, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !185
  %i.cp = call ptr @g_strstr_len(ptr noundef %i.co, i64 noundef -1, ptr noundef nonnull %i.i) #17
  %.not134 = icmp eq ptr %i.cp, null
  br i1 %.not134, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.cn, ptr noundef nonnull @.str.159, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.160) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 0, ptr %2, align 8, !tbaa !235
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !185
  %i.cr = call ptr @dt_util_str_to_glist(ptr noundef nonnull @.str.161, ptr noundef %i.cq) #17 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !236
  %.not135 = icmp eq ptr %i.cr, null
  br i1 %.not135, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !27
  %i.cu = call i64 @strtol(ptr noundef captures(none) %i.ct, ptr noundef null, i32 noundef 16) #17
  %i.cv = trunc i64 %i.cu to i32
  store i32 %i.cv, ptr %2, align 8, !tbaa !235
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !27
  %i.cx = call ptr @g_list_remove(ptr noundef nonnull %i.cr, ptr noundef %i.cw) #17 ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !236
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cy = phi ptr [ %i.cx, %bb.t ], [ null, %bb.s ]
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %.not136150 = icmp eq ptr %i.cz, null
  br i1 %.not136150, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.dk = uitofp reassoc nsz arcp contract afn i32 %i.bq to double
  %i.dl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.0154 = phi ptr [ %i.cz, %.lr.ph ], [ %i.ds, %_update_progress.exit ] ; 2 uses
  %.0109153 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ev, %_update_progress.exit ]
  %.0112152 = phi i32 [ 0, %.lr.ph ], [ %.4, %_update_progress.exit ] ; 5 uses
  %.0148151 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.dn = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not149 = icmp eq i32 %i.dn, 4
  br i1 %.not149, label %.critedge.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %.0154, align 8, !tbaa !27
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = trunc i64 %i.dp to i32                  ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0154, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !28 ; 3 uses
  %i.dt = call i32 @g_list_length(ptr noundef %i.ds) #17
  %i.du = sub i32 %i.bq, %i.dt                    ; 2 uses
  %i.dv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.162, i32 noundef 5) #17
  %i.dw = load ptr, ptr %i.da, align 8, !tbaa !172
  %i.dx = call ptr %i.dw(ptr noundef nonnull %i.t) #17
  call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.dv, i32 noundef %i.du, i32 noundef %i.bq, ptr noundef %i.dx) #17
  %i.dy = call ptr @dt_image_cache_get(i32 noundef %i.dq, i8 noundef signext 114) #17 ; 5 uses
  %.not139 = icmp eq ptr %i.dy, null
  br i1 %.not139, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  store i32 1, ptr %i.k, align 4, !tbaa !38
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1440
  %i.ea = load i32, ptr %i.dz, align 16, !tbaa !186
  call void @dt_image_full_path(i32 noundef %i.ea, ptr noundef nonnull %i.j, i64 noundef 4096, ptr noundef nonnull %i.k) #17
  %i.eb = call i32 @g_file_test(ptr noundef nonnull %i.j, i32 noundef 1) #17
  %.not140 = icmp eq i32 %i.eb, 0
  br i1 %.not140, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ec = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.163, i32 noundef 5) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 1124
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ec, ptr noundef nonnull %i.ed) #17
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.163, ptr noundef nonnull %i.j) #17
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.dy) #17
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.dy) #17
  %i.ee = load ptr, ptr %i.db, align 8, !tbaa !237
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !225
  %i.eh = load i32, ptr %i.dc, align 8, !tbaa !176
  %i.ei = load i32, ptr %i.dd, align 4, !tbaa !178
  %i.ej = load i32, ptr %i.de, align 4, !tbaa !179
  %i.ek = load double, ptr %i.df, align 8, !tbaa !180
  %i.el = load i32, ptr %i.dg, align 8, !tbaa !177
  %i.em = load i32, ptr %i.dh, align 4, !tbaa !182
  %i.en = load ptr, ptr %i.di, align 8, !tbaa !183
  %i.eo = load i32, ptr %i.dj, align 8, !tbaa !184
  %i.ep = call i32 %i.ee(ptr noundef nonnull %i.t, ptr noundef %i.v, i32 noundef %i.dq, ptr noundef %i.ef, ptr noundef %i.eg, i32 noundef %i.du, i32 noundef %i.bq, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.ej, double noundef %i.ek, i32 noundef %i.el, i32 noundef %i.em, ptr noundef %i.en, i32 noundef %i.eo, ptr noundef nonnull %2) #17
  %.not141 = icmp eq i32 %i.ep, 0
  br i1 %.not141, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @dt_control_job_cancel(ptr noundef %0) #17
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.eq = load i32, ptr %i.g, align 4, !tbaa !38
  %i.er = call i32 @dt_tag_detach(i32 noundef %i.eq, i32 noundef %i.dq, i32 noundef 0, i32 noundef 0) #17
  %.not142 = icmp eq i32 %i.er, 0
  %i.es = load i32, ptr %i.h, align 4, !tbaa !38
  %i.et = call i32 @dt_tag_attach(i32 noundef %i.es, i32 noundef %i.dq, i32 noundef 0, i32 noundef 0) #17
  %.not143 = icmp eq i32 %i.et, 0
  %i.eu = select i1 %.not143, i1 %.not142, i1 false
  %.2 = select i1 %i.eu, i32 %.0112152, i32 1
  call void @dt_image_cache_set_export_timestamp(i32 noundef %i.dq) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %.3 = phi i32 [ %.0112152, %bb.aa ], [ %.2, %bb.ab ], [ %.0112152, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.4 = phi i32 [ %.3, %bb.ac ], [ %.0112152, %bb.w ] ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn double %.0109153, %i.dl ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ew = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.ex = load i64, ptr %1, align 8, !tbaa !100
  %i.ey = add nsw i64 %i.ex, -1290608000
  %i.ez = sitofp reassoc nsz arcp contract afn i64 %i.ey to double
  %i.fa = load i64, ptr %i.dm, align 8, !tbaa !101
  %i.fb = sitofp reassoc nsz arcp contract afn i64 %i.fa to double
  %i.fc = fmul reassoc nsz arcp contract afn double %i.fb, f0x3EB0C6F7A0B5ED8D
  %i.fd = fadd reassoc nsz arcp contract afn double %i.fc, %i.ez ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.fe = fadd reassoc nsz arcp contract afn double %.0148151, 5.000000e-01
  %i.ff = fcmp reassoc nsz arcp contract afn ogt double %i.fd, %i.fe
  br i1 %i.ff, label %bb.ae, label %_update_progress.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fg = fcmp reassoc nsz arcp contract afn ogt double %i.ev, 1.000000e+00
  %i.fh = fcmp reassoc nsz arcp contract afn olt double %i.ev, 0.000000e+00
  %i.fi = select reassoc nsz arcp contract afn i1 %i.fh, double 0.000000e+00, double %i.ev
  %i.fj = select reassoc nsz arcp contract afn i1 %i.fg, double 1.000000e+00, double %i.fi
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.fj) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.ad, %bb.ae
  %.1 = phi nsz double [ %i.fd, %bb.ae ], [ %.0148151, %bb.ad ]
  %.not136 = icmp eq ptr %i.ds, null
  br i1 %.not136, label %.critedge.loopexit, label %bb.v

.critedge.loopexit:                               ; preds = %_update_progress.exit, %bb.v
  %.0112.lcssa.ph = phi i32 [ %.0112152, %bb.v ], [ %.4, %_update_progress.exit ]
  %.pre = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.u
  %i.fk = phi ptr [ %i.cy, %bb.u ], [ %.pre, %.critedge.loopexit ]
  %.0112.lcssa = phi i32 [ 0, %bb.u ], [ %.0112.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  call void @g_list_free_full(ptr noundef %i.fk, ptr noundef nonnull @g_free) #17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !238 ; 2 uses
  %.not138 = icmp eq ptr %i.fm, null
  br i1 %.not138, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void %i.fm(ptr noundef nonnull %i.t, ptr noundef %i.v) #17
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge, %bb.af, %bb.f
  %.5 = phi i32 [ 0, %bb.f ], [ %.0112.lcssa, %bb.af ], [ %.0112.lcssa, %.critedge ]
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !224 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !239
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !225
  call void %i.fp(ptr noundef %i.fn, ptr noundef %i.fq) #17
  call void (...) @dt_ui_notify_user() #17
  %.not144 = icmp eq i32 %.5, 0
  br i1 %.not144, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.fs = trunc i32 %i.fr to i1
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.fu = icmp ne i32 %i.ft, 0
  %or.cond9 = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %or.cond9, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fw = and i32 %i.fv, 1048576
  %.not145 = icmp eq i32 %i.fw, 0
  br i1 %.not145, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 1985, ptr noundef nonnull @__func__._control_export_job_run) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.fx, i32 noundef 9) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  call void @dt_start_backthumbs_crawler() #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

declare void @dt_control_job_set_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_control_export_cleanup(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !165
  %i.e = tail call ptr @dt_imageio_get_storage_by_index(i32 noundef %i.d) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240
  tail call void %i.i(ptr noundef %i.e, ptr noundef %i.g) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  tail call void @g_free(ptr noundef %i.k) #17
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185
  tail call void @g_free(ptr noundef %i.m) #17
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.n) #17
  %i.o = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @g_list_free(ptr noundef %i.o) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_control_image_enumerator_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %_control_image_enumerator_cleanup.exit

_control_image_enumerator_cleanup.exit:           ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

declare ptr @dt_imageio_get_storage_by_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_imageio_get_format_by_index(i32 noundef) local_unnamed_addr #1

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_control_job_add_progress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_control_datetime(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_datetime_job_run, ptr noundef nonnull @.str.164) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_control_datetime_job_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !17
  %.not7.i.i = icmp eq ptr %i.c, null
  br i1 %.not7.i.i, label %_control_image_enumerator_cleanup.exit.i.i, label %_control_datetime_alloc.exit.i

_control_image_enumerator_cleanup.exit.i.i:       ; preds = %bb.c
  tail call void @g_list_free(ptr noundef null) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %_control_image_enumerator_cleanup.exit.i.i, %bb.b
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.a) #17
  br label %_control_datetime_job_create.exit

_control_datetime_alloc.exit.i:                   ; preds = %bb.c
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #17
  tail call void @dt_control_job_add_progress(ptr noundef nonnull %i.a, ptr noundef %i.e, i32 noundef 0) #17
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @_control_datetime_job_cleanup) #17
  %.not25.i = icmp eq ptr %2, null
  br i1 %.not25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_control_datetime_alloc.exit.i
  %i.f = tail call ptr @dt_act_on_get_images(i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_control_datetime_alloc.exit.i
  %storemerge.i = phi ptr [ %i.f, %bb.e ], [ %2, %_control_datetime_alloc.exit.i ]
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !15
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  store i64 %0, ptr %i.g, align 8, !tbaa !188
  %.not26.i = icmp eq ptr %1, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %.not26.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.h, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.g, ptr %i.d, align 8, !tbaa !17
  br label %_control_datetime_job_create.exit

_control_datetime_job_create.exit:                ; preds = %bb.a, %bb.d, %bb.i
  %.1.i = phi ptr [ null, %bb.a ], [ %i.a, %bb.i ], [ null, %bb.d ]
  %i.i = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %.1.i) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_write_sidecar_files() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @_control_generic_images_job_create(ptr noundef nonnull @_control_write_sidecar_files_job_run, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef null, i32 noundef 2, i32 noundef 0)
  %i.b = tail call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %i.a) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_write_sidecar_files_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = tail call i32 @g_list_length(ptr noundef %i.d) #17 ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, i64 noundef %i.f, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.g, i64 noundef %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.i = and i32 %i.h, 256
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.51, i32 noundef 371, ptr noundef nonnull @__FUNCTION__._control_write_sidecar_files_job_run, ptr noundef nonnull @.str.177) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.k = tail call ptr @dt_database_get(ptr noundef %i.j) #17
  %i.l = call i32 @sqlite3_prepare_v2(ptr noundef %i.k, ptr noundef nonnull @.str.177, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.o = call ptr @dt_database_get(ptr noundef %i.n) #17
  %i.p = call ptr @sqlite3_errmsg(ptr noundef %i.o) #17
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef 371, ptr noundef nonnull @__FUNCTION__._control_write_sidecar_files_job_run, ptr noundef nonnull @.str.177, ptr noundef %i.p) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.033 = load ptr, ptr %i.c, align 8, !tbaa !189 ; 2 uses
  %.not2634 = icmp eq ptr %.033, null
  br i1 %.not2634, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.r = uitofp i32 %i.e to double
  %i.s = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.r
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.037 = phi ptr [ %.033, %.lr.ph ], [ %.0, %_update_progress.exit ] ; 2 uses
  %.02336 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_update_progress.exit ]
  %.03135 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.t = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not32 = icmp eq i32 %i.t, 4
  br i1 %.not32, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f, %_update_progress.exit, %bb.e
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.v = call i32 @sqlite3_finalize(ptr noundef %i.u) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %.037, align 8, !tbaa !27
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = call ptr @dt_image_cache_get(i32 noundef %i.y, i8 noundef signext 114) #17 ; 3 uses
  %.not28 = icmp eq ptr %i.z, null
  br i1 %.not28, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1440 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !186
  call void @dt_image_full_path(i32 noundef %i.ab, ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef null) #17
  %i.ac = load i32, ptr %i.aa, align 16, !tbaa !186
  call void @dt_image_path_append_version(i32 noundef %i.ac, ptr noundef nonnull %i.b, i64 noundef 4096) #17
  %i.ad = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.110, i64 noundef 4096) #17 ; 0 uses
  %i.ae = call i32 @dt_exif_xmp_write(i32 noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 0) #17
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ag = call i32 @sqlite3_bind_int(ptr noundef %i.af, i32 noundef 1, i32 noundef %i.y) #17
  %.not30 = icmp eq i32 %i.ag, 0
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !90
  %i.aj = call ptr @dt_database_get(ptr noundef %i.ai) #17
  %i.ak = call ptr @sqlite3_errmsg(ptr noundef %i.aj) #17
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 391, ptr noundef nonnull @__FUNCTION__._control_write_sidecar_files_job_run, ptr noundef %i.ak) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.an = call i32 @sqlite3_step(ptr noundef %i.am) #17 ; 0 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ap = call i32 @sqlite3_reset(ptr noundef %i.ao) #17 ; 0 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.ar = call i32 @sqlite3_clear_bindings(ptr noundef %i.aq) #17 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.z) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.as = add i64 %.02336, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.at = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.au = load <2 x i64>, ptr %1, align 16, !tbaa !190
  %i.av = add nsw <2 x i64> %i.au, <i64 -1290608000, i64 0>
  %i.aw = sitofp reassoc nsz arcp contract afn <2 x i64> %i.av to <2 x double> ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, f0x3EB0C6F7A0B5ED8D
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = fadd reassoc nsz arcp contract afn double %i.ay, %i.az ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bb = fadd reassoc nsz arcp contract afn double %.03135, 5.000000e-01
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.n, label %_update_progress.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = uitofp reassoc nsz arcp contract afn i64 %i.as to double
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, %i.s ; 3 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt double %i.be, 1.000000e+00
  %2 = fcmp reassoc nsz arcp contract afn olt double %i.be, 0.000000e+00
  %3 = select reassoc nsz arcp contract afn i1 %2, double 0.000000e+00, double %i.be
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bf, double 1.000000e+00, double %3
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bg) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.m, %bb.n
  %.1 = phi nsz double [ %i.ba, %bb.n ], [ %.03135, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %.0 = load ptr, ptr %i.bh, align 8, !tbaa !189  ; 2 uses
  %.not26 = icmp eq ptr %.0, null
  br i1 %.not26, label %.critedge, label %bb.f
}

; Function Attrs: nounwind uwtable
define void @dt_control_import(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %.not = icmp eq ptr %i.c, null
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = and i1 %i.d, %.not                       ; 2 uses
  %i.f = zext i1 %i.e to i32
  store i32 %i.f, ptr %i.a, align 4, !tbaa !38
  %i.g = select i1 %i.e, ptr %i.a, ptr null
  %i.h = tail call ptr (ptr, ptr, ...) @dt_control_job_create(ptr noundef nonnull @_control_import_job_run, ptr noundef nonnull @.str.178) #17 ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_control_import_job_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #18 ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !17
  %.not7.i.i = icmp eq ptr %i.j, null
  br i1 %.not7.i.i, label %bb.d, label %_control_import_alloc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_control_import_job_cleanup(ptr noundef nonnull %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @dt_control_job_dispose(ptr noundef nonnull %i.h) #17
  br label %_control_import_job_create.exit

_control_import_alloc.exit.i:                     ; preds = %bb.c
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.178, i32 noundef 5) #17
  tail call void @dt_control_job_add_progress(ptr noundef nonnull %i.h, ptr noundef %i.l, i32 noundef 1) #17
  tail call void @dt_control_job_set_params(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull @_control_import_job_cleanup) #17
  %i.m = tail call ptr @g_list_sort(ptr noundef nonnull %0, ptr noundef nonnull @_sort_filename) #17
  store ptr %i.m, ptr %i.i, align 8, !tbaa !15
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !17   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !193
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_control_import_alloc.exit.i
  store ptr null, ptr %i.n, align 8, !tbaa !194
  br label %_control_import_job_create.exit

bb.g:                                             ; preds = %_control_import_alloc.exit.i
  %i.p = call ptr (...) @dt_import_session_new() #17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !194
  %i.q = call ptr @dt_conf_get_string(ptr noundef nonnull @.str.179) #17 ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !194
  call void @dt_import_session_set_name(ptr noundef %i.r, ptr noundef %i.q) #17
  %.not27.i = icmp eq ptr %1, null
  br i1 %.not27.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %1, align 1, !tbaa !40
  %.not28.i = icmp eq i8 %i.s, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !194
  call void @dt_import_session_set_time(ptr noundef %i.t, ptr noundef nonnull %1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @g_free(ptr noundef %i.q) #17
  br label %_control_import_job_create.exit

_control_import_job_create.exit:                  ; preds = %bb.a, %bb.e, %bb.f, %bb.j
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.h, %bb.j ], [ %i.h, %bb.f ]
  %i.u = call i32 @dt_control_add_job(i32 noundef 0, ptr noundef %.1.i) #17 ; 0 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !38
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_control_import_job_create.exit, %.lr.ph
  call void @g_usleep(i64 noundef 100) #17
  %i.w = load i32, ptr %i.a, align 4, !tbaa !38
  %.not4 = icmp eq i32 %i.w, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_control_import_job_create.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @g_usleep(i64 noundef) local_unnamed_addr #1

declare void @dt_gui_cursor_set_busy(...) local_unnamed_addr #1

declare ptr @dt_act_on_get_images(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_control_image_enumerator_cleanup(ptr noundef captures(none) initializes((16, 24)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @g_list_free(ptr noundef %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @g_main_context_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @dt_control_job_set_progress_message(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_control_merge_hdr_mime(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret ptr @.str.67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_control_merge_hdr_bpp(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_control_merge_hdr_process(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, i32 %6, i32 noundef %7, i32 %8, i32 %9, ptr nofree readnone captures(none) %10, i32 %11) #0 {
bb.a:
  %12 = alloca %struct.dt_image_t, align 16       ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 54 uses
  %i.c = tail call ptr @dt_image_cache_get(i32 noundef %7, i8 noundef signext 114) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1888) %12, ptr noundef nonnull align 16 dereferenceable(1888) %i.c, i64 1888, i1 false), !tbaa.struct !250
  tail call void @dt_image_cache_read_release(ptr noundef nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.preheader246, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %.thread

.preheader246:                                    ; preds = %bb.a
  store i32 %7, ptr %i.b, align 16, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 1496
  %i.g = load i32, ptr %i.f, align 8, !tbaa !251
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 1404
  %i.i = load i32, ptr %i.h, align 4, !tbaa !252  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 1408
  %i.k = load i32, ptr %i.j, align 16, !tbaa !253 ; 7 uses
  %i.l = tail call i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !42
  %i.n = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = add <4 x i32> %i.o, <i32 600, i32 601, i32 602, i32 603>
  %i.q = srem <4 x i32> %i.p, splat (i32 6)
  %i.r = trunc nsw <4 x i32> %i.q to <4 x i8>     ; 4 uses
  %i.s = extractelement <4 x i8> %i.r, i64 3      ; 6 uses
  %i.t = extractelement <4 x i8> %i.r, i64 2      ; 6 uses
  %i.u = extractelement <4 x i8> %i.r, i64 1      ; 6 uses
  %i.v = extractelement <4 x i8> %i.r, i64 0      ; 6 uses
  %i.w = add i32 %i.i, 605
  %i.x = srem i32 %i.w, 6
  %i.y = sext i32 %i.x to i64                     ; 6 uses
end_hunk_1
begin_hunk_2_@_control_merge_hdr_process:bb.a
  %wide.load353 = load <8 x float>, ptr %i.jq, align 4, !tbaa !32, !alias.scope !263, !noalias !262
  %i.jv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load353, %broadcast.splat350
  store <8 x float> %i.jv, ptr %i.jq, align 4, !tbaa !32, !alias.scope !263, !noalias !262
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.thread229.us.preheader354

.thread229.us.preheader354:                       ; preds = %.thread229.us.preheader, %middle.block
  %indvars.iv281.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.thread229.us.preheader ] ; 4 uses
  br i1 %lcmp.mod.not, label %.thread229.us.prol.loopexit, label %.thread229.us.prol

.thread229.us.prol:                               ; preds = %.thread229.us.preheader354
  %i.jx = add nuw nsw i64 %indvars.iv281.ph, %i.jk ; 4 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !32
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.jx ; 4 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !32
  %i.kc = fcmp reassoc nsz arcp contract afn ugt float %i.kb, 0.000000e+00
  br i1 %i.kc, label %.thread229.us.prol.loopexit.unr-lcssa, label %bb.g

bb.g:                                             ; preds = %.thread229.us.prol
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.jx
  store float 0.000000e+00, ptr %i.kd, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !32
  br label %.thread229.us.prol.loopexit.unr-lcssa

.thread229.us.prol.loopexit.unr-lcssa:            ; preds = %bb.g, %.thread229.us.prol
  %.reass.prol = fmul reassoc nsz arcp contract afn float %i.jz, %factor.op.fmul
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.jx ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !32
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %.reass.prol
  store float %i.kg, ptr %i.ke, align 4, !tbaa !32
  %i.kh = load float, ptr %i.ka, align 4, !tbaa !32
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.ix
  store float %i.ki, ptr %i.ka, align 4, !tbaa !32
  %indvars.iv.next282.prol = or disjoint i64 %indvars.iv281.ph, 1
  br label %.thread229.us.prol.loopexit

.thread229.us.prol.loopexit:                      ; preds = %.thread229.us.prol.loopexit.unr-lcssa, %.thread229.us.preheader354
  %indvars.iv281.unr = phi i64 [ %indvars.iv281.ph, %.thread229.us.preheader354 ], [ %indvars.iv.next282.prol, %.thread229.us.prol.loopexit.unr-lcssa ]
  %i.kj = icmp eq i64 %indvars.iv281.ph, %i.jj
  br i1 %i.kj, label %._crit_edge, label %.thread229.us.preheader354.new

.thread229.us.preheader354.new:                   ; preds = %.thread229.us.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.jk
  br label %.thread229.us

.lr.ph.split.preheader:                           ; preds = %.preheader239
  %i.kk = and i64 %indvars.iv300, 2147483646      ; 3 uses
  %i.kl = mul nuw nsw i64 %i.kk, %i.jg            ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl
  %i.km = or disjoint i64 %i.kk, 1
  %i.kn = mul nuw nsw i64 %i.km, %i.jg            ; 3 uses
  %invariant.gep312 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn
  %i.ko = add nuw nsw i64 %i.kk, 2
  %i.kp = mul nuw nsw i64 %i.ko, %i.jg            ; 3 uses
  %invariant.gep314 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp
  %invariant.gep316 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl
  %invariant.gep318 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn
  %invariant.gep320 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp
  %invariant.gep322 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl
  %invariant.gep324 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn
  %invariant.gep326 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp
  br label %.lr.ph.split

.thread229.us:                                    ; preds = %bb.j, %.thread229.us.preheader354.new
  %indvars.iv281 = phi i64 [ %indvars.iv281.unr, %.thread229.us.preheader354.new ], [ %indvars.iv.next282.1, %bb.j ] ; 3 uses
  %i.kq = add nuw nsw i64 %indvars.iv281, %i.jk   ; 4 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !32
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.kq ; 4 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !32
  %i.kv = fcmp reassoc nsz arcp contract afn ugt float %i.ku, 0.000000e+00
  br i1 %i.kv, label %.thread229.us.1, label %bb.h

bb.h:                                             ; preds = %.thread229.us
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.kq
  store float 0.000000e+00, ptr %i.kw, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.kt, align 4, !tbaa !32
  br label %.thread229.us.1

.thread229.us.1:                                  ; preds = %bb.h, %.thread229.us
  %.reass = fmul reassoc nsz arcp contract afn float %i.ks, %factor.op.fmul
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.kq ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !32
  %i.kz = fadd reassoc nsz arcp contract afn float %i.ky, %.reass
  store float %i.kz, ptr %i.kx, align 4, !tbaa !32
  %i.la = load float, ptr %i.kt, align 4, !tbaa !32
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.ix
  store float %i.lb, ptr %i.kt, align 4, !tbaa !32
  %.reass356 = add nuw nsw i64 %indvars.iv281, %invariant.op ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass356
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !32
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.reass356 ; 4 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !32
  %i.lg = fcmp reassoc nsz arcp contract afn ugt float %i.lf, 0.000000e+00
  br i1 %i.lg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread229.us.1
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.reass356
  store float 0.000000e+00, ptr %i.lh, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.le, align 4, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread229.us.1
  %.reass.1 = fmul reassoc nsz arcp contract afn float %i.ld, %factor.op.fmul
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.reass356 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !32
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %.reass.1
  store float %i.lk, ptr %i.li, align 4, !tbaa !32
  %i.ll = load float, ptr %i.le, align 4, !tbaa !32
  %i.lm = fadd reassoc nsz arcp contract afn float %i.ll, %i.ix
  store float %i.lm, ptr %i.le, align 4, !tbaa !32
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next282.1, %i.jg
  br i1 %exitcond284.not.1, label %._crit_edge, label %.thread229.us, !llvm.loop !246

._crit_edge:                                      ; preds = %.thread229.us.prol.loopexit, %bb.j, %bb.u, %middle.block
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count303
  br i1 %exitcond304.not, label %.loopexit, label %.preheader239

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.u
  %indvars.iv295 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next296, %bb.u ] ; 4 uses
  %i.ln = add nuw nsw i64 %indvars.iv295, %i.jk   ; 6 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !32 ; 2 uses
  %i.lq = trunc nuw nsw i64 %indvars.iv295 to i32
  %i.lr = and i32 %i.lq, 2147483646
  %i.ls = icmp slt i32 %i.lr, %i.jd
  br i1 %i.ls, label %.preheader.preheader, label %.thread229

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.lt = and i64 %indvars.iv295, 2147483646      ; 5 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.lt
  %i.lu = load float, ptr %gep, align 4, !tbaa !32 ; 4 uses
  %i.lv = fcmp reassoc nsz arcp contract afn olt float %i.lu, 0.000000e+00
  %.1200. = select reassoc nsz arcp contract afn i1 %i.lv, float 0.000000e+00, float %i.lu ; 2 uses
  %i.lw = fcmp reassoc nsz arcp contract afn ogt float %i.lu, f0x7F7FFFFF
  %i.lx = select reassoc nsz arcp contract afn i1 %i.lw, float f0x7F7FFFFF, float %i.lu ; 2 uses
  %gep313 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep312, i64 %i.lt
  %i.ly = load float, ptr %gep313, align 4, !tbaa !32 ; 4 uses
  %i.lz = fcmp reassoc nsz arcp contract afn ogt float %.1200., %i.ly
  %.1200..1 = select reassoc nsz arcp contract afn i1 %i.lz, float %.1200., float %i.ly ; 2 uses
  %i.ma = fcmp reassoc nsz arcp contract afn olt float %i.lx, %i.ly
  %i.mb = select reassoc nsz arcp contract afn i1 %i.ma, float %i.lx, float %i.ly ; 2 uses
  %gep315 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep314, i64 %i.lt
  %i.mc = load float, ptr %gep315, align 4, !tbaa !32 ; 4 uses
  %i.md = fcmp reassoc nsz arcp contract afn ogt float %.1200..1, %i.mc
  %.1200..2 = select reassoc nsz arcp contract afn i1 %i.md, float %.1200..1, float %i.mc ; 2 uses
  %i.me = fcmp reassoc nsz arcp contract afn olt float %i.mb, %i.mc
  %i.mf = select reassoc nsz arcp contract afn i1 %i.me, float %i.mb, float %i.mc ; 2 uses
  %i.mg = or disjoint i64 %i.lt, 1                ; 3 uses
  %gep317 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep316, i64 %i.mg
  %i.mh = load float, ptr %gep317, align 4, !tbaa !32 ; 4 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ogt float %.1200..2, %i.mh
  %.1200..1293 = select reassoc nsz arcp contract afn i1 %i.mi, float %.1200..2, float %i.mh ; 2 uses
  %i.mj = fcmp reassoc nsz arcp contract afn olt float %i.mf, %i.mh
  %i.mk = select reassoc nsz arcp contract afn i1 %i.mj, float %i.mf, float %i.mh ; 2 uses
  %gep319 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep318, i64 %i.mg
  %i.ml = load float, ptr %gep319, align 4, !tbaa !32 ; 4 uses
  %i.mm = fcmp reassoc nsz arcp contract afn ogt float %.1200..1293, %i.ml
  %.1200..1.1 = select reassoc nsz arcp contract afn i1 %i.mm, float %.1200..1293, float %i.ml ; 2 uses
  %i.mn = fcmp reassoc nsz arcp contract afn olt float %i.mk, %i.ml
  %i.mo = select reassoc nsz arcp contract afn i1 %i.mn, float %i.mk, float %i.ml ; 2 uses
  %gep321 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep320, i64 %i.mg
  %i.mp = load float, ptr %gep321, align 4, !tbaa !32 ; 4 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ogt float %.1200..1.1, %i.mp
  %.1200..2.1 = select reassoc nsz arcp contract afn i1 %i.mq, float %.1200..1.1, float %i.mp ; 2 uses
  %i.mr = fcmp reassoc nsz arcp contract afn olt float %i.mo, %i.mp
  %i.ms = select reassoc nsz arcp contract afn i1 %i.mr, float %i.mo, float %i.mp ; 2 uses
  %i.mt = add nuw nsw i64 %i.lt, 2                ; 3 uses
  %gep323 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep322, i64 %i.mt
  %i.mu = load float, ptr %gep323, align 4, !tbaa !32 ; 4 uses
  %i.mv = fcmp reassoc nsz arcp contract afn ogt float %.1200..2.1, %i.mu
  %.1200..2294 = select reassoc nsz arcp contract afn i1 %i.mv, float %.1200..2.1, float %i.mu ; 2 uses
  %i.mw = fcmp reassoc nsz arcp contract afn olt float %i.ms, %i.mu
  %i.mx = select reassoc nsz arcp contract afn i1 %i.mw, float %i.ms, float %i.mu ; 2 uses
  %gep325 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep324, i64 %i.mt
  %i.my = load float, ptr %gep325, align 4, !tbaa !32 ; 4 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ogt float %.1200..2294, %i.my
  %.1200..1.2 = select reassoc nsz arcp contract afn i1 %i.mz, float %.1200..2294, float %i.my ; 2 uses
  %i.na = fcmp reassoc nsz arcp contract afn olt float %i.mx, %i.my
  %i.nb = select reassoc nsz arcp contract afn i1 %i.na, float %i.mx, float %i.my ; 2 uses
  %gep327 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep326, i64 %i.mt
  %i.nc = load float, ptr %gep327, align 4, !tbaa !32 ; 4 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ogt float %.1200..1.2, %i.nc
  %.1200..2.2 = select reassoc nsz arcp contract afn i1 %i.nd, float %.1200..1.2, float %i.nc
  %i.ne = fcmp reassoc nsz arcp contract afn olt float %i.nb, %i.nc
  %i.nf = select reassoc nsz arcp contract afn i1 %i.ne, float %i.nb, float %i.nc ; 3 uses
  %i.ng = load float, ptr %i.jf, align 16, !tbaa !266
  %i.nh = fadd reassoc nsz arcp contract afn float %.1200..2.2, f0x3D3B80BC ; 4 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.nh, 0.000000e+00
  %i.nj = fcmp reassoc nsz arcp contract afn olt float %i.nh, 1.000000e+00
  %i.nk = select reassoc nsz arcp contract afn i1 %i.nj, float %i.nh, float 1.000000e+00
  %i.nl = select reassoc nsz arcp contract afn i1 %i.ni, float %i.nk, float 0.000000e+00 ; 2 uses
  %i.nm = fcmp reassoc nsz arcp contract afn olt float %i.nl, 5.000000e-01
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nl, 2.000000e+00 ; 2 uses
  br i1 %i.nm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.preheader
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, -1.000000e+00 ; 2 uses
  %i.np = fmul reassoc nsz arcp contract afn float %i.no, %i.no
  %i.nq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.np
  br label %bb.m

bb.l:                                             ; preds = %.preheader.preheader
  %i.nr = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.nn ; 3 uses
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nr, %i.nr
  %i.nt = fmul reassoc nsz arcp contract afn float %i.nr, 2.000000e+00
  %i.nu = fsub reassoc nsz arcp contract afn float 3.000000e+00, %i.nt
  %i.nv = fmul reassoc nsz arcp contract afn float %i.ns, %i.nu
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi nsz float [ %i.nq, %bb.k ], [ %i.nv, %bb.l ]
  %i.nw = fadd reassoc nsz arcp contract afn float %.0.i, %i.ng
  %i.nx = fmul reassoc nsz arcp contract afn float %i.nw, %i.ix
  %i.ny = fcmp reassoc nsz arcp contract afn ult float %i.nh, 1.000000e+00
  br i1 %i.ny, label %.thread229, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ln ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !32 ; 3 uses
  %i.ob = fcmp reassoc nsz arcp contract afn ugt float %i.oa, 0.000000e+00
  br i1 %i.ob, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.oc = fcmp reassoc nsz arcp contract afn oeq float %i.oa, 0.000000e+00
  %i.od = fneg reassoc nsz arcp contract afn float %i.oa
  %i.oe = fcmp reassoc nsz arcp contract afn olt float %i.nf, %i.od
  %or.cond226 = select i1 %i.oc, i1 true, i1 %i.oe
  br i1 %or.cond226, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.of = fadd reassoc nsz arcp contract afn float %i.nf, f0x3D3B80BC
  %i.og = fcmp reassoc nsz arcp contract afn ult float %i.of, 1.000000e+00
  br i1 %i.og, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.oh = fmul reassoc nsz arcp contract afn float %i.lp, %i.iv
  %i.oi = load float, ptr %i.iy, align 4, !tbaa !33
  %i.oj = fdiv reassoc nsz arcp contract afn float %i.oh, %i.oi
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sink = phi float [ %i.oj, %bb.q ], [ 1.000000e+00, %bb.p ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ln
  store float %.sink, ptr %i.ok, align 4, !tbaa !32
  %i.ol = fneg reassoc nsz arcp contract afn float %i.nf
  store float %i.ol, ptr %i.nz, align 4, !tbaa !32
  br label %bb.u

.thread229:                                       ; preds = %.lr.ph.split, %bb.m
  %.0202233 = phi float [ %i.nx, %bb.m ], [ %i.ix, %.lr.ph.split ] ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ln ; 4 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !32
  %i.oo = fcmp reassoc nsz arcp contract afn ugt float %i.on, 0.000000e+00
  br i1 %i.oo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread229
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ln
  store float 0.000000e+00, ptr %i.op, align 4, !tbaa !32
  store float 0.000000e+00, ptr %i.om, align 4, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread229
  %i.oq = fmul reassoc nsz arcp contract afn float %i.lp, %i.iv
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %.0202233
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ln ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !32
  %i.ou = fadd reassoc nsz arcp contract afn float %i.ot, %i.or
  store float %i.ou, ptr %i.os, align 4, !tbaa !32
  %i.ov = load float, ptr %i.om, align 4, !tbaa !32
  %i.ow = fadd reassoc nsz arcp contract afn float %i.ov, %.0202233
  store float %i.ow, ptr %i.om, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.r, %bb.t
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %i.jg
  br i1 %exitcond299.not, label %._crit_edge, label %.lr.ph.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %.loopexit242, %.thread
  %.str.70.sink = phi ptr [ @.str.69, %bb.b ], [ @.str.68, %.loopexit242 ], [ @.str.68, %.thread ], [ @.str.70, %bb.e ], [ @.str.70, %bb.d ], [ @.str.70, %bb.c ]
  %i.ox = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.70.sink, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ox) #17
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i32 1, ptr %i.oy, align 16, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.sink.split, %bb.f, %.preheader239.lr.ph
  %.0212 = phi i32 [ 0, %.preheader239.lr.ph ], [ 0, %bb.f ], [ 1, %.loopexit.sink.split ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  ret i32 %.0212
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_control_merge_hdr_levels(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret i32 260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @dt_imageio_export_with_flags(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_control_job_set_progress(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_exif_read_blob(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @dt_imageio_dng_write_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_path_get_dirname(ptr noundef) local_unnamed_addr #1

declare i32 @dt_film_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_image_import(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_collection_update_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare ptr @dt_image_cache_get(i32 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @dt_image_cache_read_release(ptr noundef) local_unnamed_addr #1

declare i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_control_gpx_apply_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %2 = alloca %struct.dt_image_geoloc_t, align 8  ; 4 uses
  %i.b = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dt_gpx_new(ptr noundef %i.f) #17 ; 4 uses
  %.not73 = icmp eq ptr %i.i, null
  br i1 %.not73, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #17
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.j) #17
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @g_time_zone_new_utc() #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @g_time_zone_new(ptr noundef nonnull %i.h) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %.not74 = icmp eq ptr %i.n, null
  br i1 %.not74, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @g_list_length(ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i64 noundef %i.p, i32 noundef 5) #17
  %i.r = call i32 (ptr, i64, ptr, ...) @g_snprintf(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef %i.q, i32 noundef %i.o) #17 ; 0 uses
  call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef nonnull %i.a) #17
  %i.s = call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 24) #17 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_update_progress.exit, %bb.h
  %.083 = phi nsz double [ 0.000000e+00, %bb.h ], [ %.184, %_update_progress.exit ] ; 5 uses
  %.057 = phi i32 [ 0, %bb.h ], [ %.562, %_update_progress.exit ] ; 6 uses
  %.056 = phi ptr [ %i.c, %bb.h ], [ %i.at, %_update_progress.exit ] ; 2 uses
  %.055 = phi ptr [ null, %bb.h ], [ %.5, %_update_progress.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.t = load ptr, ptr %.056, align 8, !tbaa !27
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = call ptr @dt_image_cache_get(i32 noundef %i.v, i8 noundef signext 114) #17 ; 3 uses
  %.not76 = icmp eq ptr %i.w, null
  br i1 %.not76, label %_update_progress.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call ptr @dt_datetime_img_to_gdatetime(ptr noundef nonnull %i.w, ptr noundef nonnull %i.n) #17 ; 3 uses
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.w) #17
  %.not77 = icmp eq ptr %i.x, null
  br i1 %.not77, label %_update_progress.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3520), align 8, !tbaa !195
  %i.z = call ptr @g_date_time_to_timezone(ptr noundef nonnull %i.x, ptr noundef %i.y) #17 ; 3 uses
  call void @g_date_time_unref(ptr noundef nonnull %i.x) #17
  %.not78 = icmp eq ptr %i.z, null
  br i1 %.not78, label %_update_progress.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @dt_gpx_get_location(ptr noundef nonnull %i.i, ptr noundef nonnull %i.z, ptr noundef nonnull %2) #17
  %.not79 = icmp eq i32 %i.aa, 0
  br i1 %.not79, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call ptr @dt_grouping_get_group_images(i32 noundef %i.v) #17 ; 3 uses
  %.not8088 = icmp eq ptr %i.ab, null
  br i1 %.not8088, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %.158.lcssa = phi i32 [ %.057, %bb.m ], [ %i.af, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.055, %bb.m ], [ %i.ad, %.lr.ph ]
  call void @g_list_free(ptr noundef %i.ab) #17
  br label %bb.n

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.091 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ab, %bb.m ] ; 2 uses
  %.190 = phi ptr [ %i.ad, %.lr.ph ], [ %.055, %bb.m ]
  %.15889 = phi i32 [ %i.af, %.lr.ph ], [ %.057, %bb.m ]
  %i.ac = load ptr, ptr %.091, align 8, !tbaa !27
  %i.ad = call ptr @g_list_prepend(ptr noundef %.190, ptr noundef %i.ac) #17 ; 2 uses
  %i.ae = call ptr @g_array_append_vals(ptr noundef %i.s, ptr noundef nonnull %2, i32 noundef 1) #17 ; 0 uses
  %i.af = add i32 %.15889, 1                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.091, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 2 uses
  %.not80 = icmp eq ptr %i.ah, null
  br i1 %.not80, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %.259 = phi i32 [ %.158.lcssa, %._crit_edge ], [ %.057, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.055, %bb.l ] ; 2 uses
  call void @g_date_time_unref(ptr noundef nonnull %i.z) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ai = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.aj = load <2 x i64>, ptr %1, align 16, !tbaa !190
  %i.ak = add nsw <2 x i64> %i.aj, <i64 -1290608000, i64 0>
  %i.al = sitofp reassoc nsz arcp contract afn <2 x i64> %i.ak to <2 x double> ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, f0x3EB0C6F7A0B5ED8D
  %i.ao = extractelement <2 x double> %i.al, i64 0
  %i.ap = fadd reassoc nsz arcp contract afn double %i.an, %i.ao ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.aq = fadd reassoc nsz arcp contract afn double %.083, 5.000000e-01
  %i.ar = fcmp reassoc nsz arcp contract afn ogt double %i.ap, %i.aq
  br i1 %i.ar, label %bb.o, label %_update_progress.exit

bb.o:                                             ; preds = %bb.n
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef 0.000000e+00) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.o, %bb.n, %bb.j, %bb.k, %bb.i
  %.184 = phi nsz double [ %.083, %bb.i ], [ %.083, %bb.j ], [ %.083, %bb.k ], [ %i.ap, %bb.o ], [ %.083, %bb.n ]
  %.562 = phi i32 [ %.057, %bb.i ], [ %.057, %bb.j ], [ %.057, %bb.k ], [ %.259, %bb.o ], [ %.259, %bb.n ] ; 3 uses
  %.5 = phi ptr [ %.055, %bb.i ], [ %.055, %bb.j ], [ %.055, %bb.k ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.as = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %.not81 = icmp eq ptr %i.at, null
  br i1 %.not81, label %bb.p, label %bb.i

bb.p:                                             ; preds = %_update_progress.exit
  %i.au = call ptr @g_list_reverse(ptr noundef %.5) #17 ; 2 uses
  call void @dt_image_set_images_locations(ptr noundef %i.au, ptr noundef %i.s, i32 noundef 1) #17
  %i.av = zext i32 %.562 to i64
  %i.aw = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i64 noundef %i.av, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.aw, i32 noundef %.562) #17
  call void @g_time_zone_unref(ptr noundef nonnull %i.n) #17
  call void @dt_gpx_destroy(ptr noundef nonnull %i.i) #17
  call void @g_array_unref(ptr noundef %i.s) #17
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.ay = trunc i32 %i.ax to i1
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bc = and i32 %i.bb, 1048576
  %.not82 = icmp eq i32 %i.bc, 0
  br i1 %.not82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.51, i32 noundef 1464, ptr noundef nonnull @__FUNCTION__._control_gpx_apply_job_run) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bd, i32 noundef 10, ptr noundef %i.au, i32 noundef 0) #17
  br label %.thread

bb.t:                                             ; preds = %bb.g
  tail call void @dt_gpx_destroy(ptr noundef nonnull %i.i) #17
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.t, %bb.s
  %.054 = phi i32 [ 0, %bb.s ], [ 1, %bb.t ], [ 1, %bb.c ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @_control_gpx_apply_job_cleanup(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  tail call void @g_free(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  tail call void @g_free(ptr noundef %i.e) #17
  tail call void @free(ptr noundef %i.b) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @g_list_free(ptr noundef %i.f) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_control_image_enumerator_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %_control_image_enumerator_cleanup.exit

_control_image_enumerator_cleanup.exit:           ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

declare ptr @dt_gpx_new(ptr noundef) local_unnamed_addr #1

declare ptr @g_time_zone_new_utc() local_unnamed_addr #1

declare ptr @g_time_zone_new(ptr noundef) local_unnamed_addr #1

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @g_array_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_datetime_img_to_gdatetime(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_date_time_to_timezone(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_date_time_unref(ptr noundef) local_unnamed_addr #1

declare i32 @dt_gpx_get_location(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_grouping_get_group_images(i32 noundef) local_unnamed_addr #1

declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #1

declare void @dt_image_set_images_locations(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_time_zone_unref(ptr noundef) local_unnamed_addr #1

declare void @dt_gpx_destroy(ptr noundef) local_unnamed_addr #1

declare void @g_array_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #1

declare void @dt_undo_start_group(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_image_duplicate(i32 noundef) local_unnamed_addr #1

declare void @dt_history_delete_on_image(i32 noundef) local_unnamed_addr #1

declare i32 @dt_history_copy_and_paste_on_image(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_image_cache_set_change_timestamp_from_image(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_undo_end_group(ptr noundef) local_unnamed_addr #1

declare i32 @dt_control_job_get_state(ptr noundef) local_unnamed_addr #1

declare void @dt_image_flip(i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_image_set_aspect_ratio(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @g_list_copy(ptr noundef) local_unnamed_addr #1

declare void @dt_image_set_monochrome_flag(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_get_image_list(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = tail call i32 @g_list_length(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 8) #18 ; 3 uses
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.8, i32 noundef %i.h) #17 ; 0 uses
  %i.j = call i64 @g_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) #17 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %.not.peel = icmp eq ptr %i.l, null
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %.01114 = phi ptr [ %i.s, %.peel.next ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.m = load ptr, ptr %.01114, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %i.o) #17 ; 0 uses
  %i.q = call i64 @g_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) #17 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01114, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
end_hunk_2
begin_hunk_3_@g_io_error_quark
declare i32 @g_io_error_quark() local_unnamed_addr #1

declare ptr @g_file_query_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_file_info_get_attribute_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_error_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gdk_threads_add_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_delete_dialog_main_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !102
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = tail call ptr @dt_ui_main_window(ptr noundef %i.d) #17
  %i.f = load i32, ptr %0, align 8, !tbaa !199
  %.not = icmp eq i32 %i.f, 0
  %.str.113..str.112 = select i1 %.not, ptr @.str.113, ptr @.str.112
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.113..str.112, i32 noundef 5) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !201  ; 2 uses
  %.not30 = icmp eq ptr %i.k, null                ; 2 uses
  %i.l = select i1 %.not30, ptr @.str.8, ptr @.str.114
  %spec.select = select i1 %.not30, ptr @.str.8, ptr %i.k
  %i.m = tail call ptr (ptr, i32, i32, i32, ptr, ...) @gtk_message_dialog_new(ptr noundef %i.e, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %spec.select) #17 ; 9 uses
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #17
  %i.o = tail call ptr @gtk_check_button_new_with_mnemonic(ptr noundef %i.n) #17 ; 3 uses
  %i.p = tail call ptr @gtk_message_dialog_get_message_area(ptr noundef %i.m) #17 ; 2 uses
  tail call void @gtk_widget_set_halign(ptr noundef %i.p, i32 noundef 3) #17
  tail call void @gtk_container_add(ptr noundef %i.p, ptr noundef %i.o) #17
  tail call void @gtk_widget_show(ptr noundef %i.o) #17
  %i.q = load i32, ptr %0, align 8, !tbaa !199
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #17
  %i.s = tail call ptr @gtk_dialog_add_button(ptr noundef %i.m, ptr noundef %i.r, i32 noundef 1) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.117, i32 noundef 5) #17
  %i.u = tail call ptr @gtk_dialog_add_button(ptr noundef %i.m, ptr noundef %i.t, i32 noundef 2) #17 ; 0 uses
  %i.v = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.118, i32 noundef 5) #17
  %i.w = tail call ptr @gtk_dialog_add_button(ptr noundef %i.m, ptr noundef %i.v, i32 noundef 4) #17 ; 0 uses
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #17
  %i.y = tail call ptr @gtk_dialog_add_button(ptr noundef %i.m, ptr noundef %i.x, i32 noundef 8) #17 ; 0 uses
  tail call void @gtk_dialog_set_default_response(ptr noundef %i.m, i32 noundef 8) #17
  %i.z = load i32, ptr %0, align 8, !tbaa !199
  %.not32 = icmp eq i32 %i.z, 0
  %.str.121..str.120 = select i1 %.not32, ptr @.str.121, ptr @.str.120
  %i.aa = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.121..str.120, i32 noundef 5) #17
  tail call void @gtk_window_set_title(ptr noundef %i.m, ptr noundef %i.aa) #17
  %i.ab = tail call i32 @gtk_dialog_run(ptr noundef %i.m) #17 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !202
  %i.ad = load i32, ptr %0, align 8, !tbaa !199
  %.not33 = icmp eq i32 %i.ad, 0
  br i1 %.not33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = or i32 %i.ab, 16
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !202
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.o) #17
  %.not34 = icmp eq i32 %i.af, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.ac, align 8, !tbaa !202
  %i.ah = or i32 %i.ag, 32
  store i32 %i.ah, ptr %i.ac, align 8, !tbaa !202
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @gtk_widget_destroy(ptr noundef %i.m) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.ai) #17 ; 0 uses
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #17 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_message_dialog_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @gtk_check_button_new_with_mnemonic(ptr noundef) local_unnamed_addr #1

declare ptr @gtk_message_dialog_get_message_area(ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #1

declare ptr @gtk_dialog_add_button(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_dialog_set_default_response(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_window_set_title(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gtk_dialog_run(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_generic_dt_control_fileop_images_job_run(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.dt_film_t, align 8          ; 4 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = tail call i32 @g_list_length(ptr noundef %i.c) #17 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = tail call ptr @dcngettext(ptr noundef null, ptr noundef %2, ptr noundef %3, i64 noundef %i.g, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.i = call i32 @dt_film_new(ptr noundef nonnull %6, ptr noundef %i.f) #17 ; 2 uses
  call void @g_free(ptr noundef %i.f) #17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.124, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.k) #17
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 @dt_collection_get_collected_count() #17 ; 2 uses
  %i.m = call ptr @dt_collection_checksum(i32 noundef 0) #17 ; 2 uses
  %.not52 = icmp eq ptr %i.c, null
  br i1 %.not52, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = uitofp reassoc nsz arcp contract afn i32 %i.d to double
  %i.o = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.057 = phi i32 [ 1, %.lr.ph ], [ %i.v, %_update_progress.exit ] ; 2 uses
  %.04156 = phi i32 [ %i.l, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %.04255 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.y, %_update_progress.exit ]
  %.04354 = phi ptr [ %i.c, %.lr.ph ], [ %i.x, %_update_progress.exit ] ; 2 uses
  %.04953 = phi double [ 0.000000e+00, %.lr.ph ], [ %.150, %_update_progress.exit ] ; 2 uses
  %i.q = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not51 = icmp eq i32 %i.q, 4
  br i1 %.not51, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %.04354, align 8, !tbaa !27
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = trunc i64 %i.s to i32
  %i.u = call i32 %1(i32 noundef %i.t, i32 noundef %i.i) #17, !callees !271
  %.not48 = icmp ne i32 %i.u, -1                  ; 2 uses
  %i.v = select i1 %.not48, i32 %.057, i32 0      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04354, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn double %.04255, %i.o ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.z = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #17 ; 0 uses
  %i.aa = load i64, ptr %5, align 8, !tbaa !100
  %i.ab = add nsw i64 %i.aa, -1290608000
  %i.ac = sitofp reassoc nsz arcp contract afn i64 %i.ab to double
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !101
  %i.ae = sitofp reassoc nsz arcp contract afn i64 %i.ad to double
  %i.af = fmul reassoc nsz arcp contract afn double %i.ae, f0x3EB0C6F7A0B5ED8D
  %i.ag = fadd reassoc nsz arcp contract afn double %i.af, %i.ac ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ah = fadd reassoc nsz arcp contract afn double %.04953, 5.000000e-01
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_update_progress.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = fcmp reassoc nsz arcp contract afn ogt double %i.y, 1.000000e+00
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.y, 0.000000e+00
  %i.al = select reassoc nsz arcp contract afn i1 %i.ak, double 0.000000e+00, double %i.y
  %i.am = select reassoc nsz arcp contract afn i1 %i.aj, double 1.000000e+00, double %i.al
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.am) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %bb.e, %bb.f
  %.150 = phi nsz double [ %i.ag, %bb.f ], [ %.04953, %bb.e ]
  %i.an = sext i1 %.not48 to i32
  %.1 = add nsw i32 %.04156, %i.an                ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.critedge.loopexit, label %bb.d

.critedge.loopexit:                               ; preds = %_update_progress.exit, %bb.d
  %.041.lcssa.ph = phi i32 [ %.04156, %bb.d ], [ %.1, %_update_progress.exit ]
  %.0.lcssa.ph = phi i32 [ %.057, %bb.d ], [ %i.v, %_update_progress.exit ]
  %i.ao = icmp eq i32 %.0.lcssa.ph, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.c
  %.041.lcssa = phi i32 [ %i.l, %bb.c ], [ %.041.lcssa.ph, %.critedge.loopexit ]
  %.0.lcssa = phi i1 [ false, %bb.c ], [ %i.ao, %.critedge.loopexit ]
  %i.ap = call ptr @dt_collection_checksum(i32 noundef 0) #17 ; 2 uses
  %i.aq = call i32 @g_strcmp0(ptr noundef %i.m, ptr noundef %i.ap) #17
  %i.ar = icmp ne i32 %i.aq, 0
  call void @g_free(ptr noundef %i.m) #17
  call void @g_free(ptr noundef %i.ap) #17
  %or.cond = select i1 %.0.lcssa, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.as = icmp eq i32 %.041.lcssa, 0
  %i.at = icmp ne i32 %4, 0
  %or.cond3 = or i1 %i.at, %i.as
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.125, ptr noundef nonnull %i.au) #17 ; 0 uses
  call void @dt_collection_deserialize(ptr noundef nonnull %i.a, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.critedge
  call void (...) @dt_film_remove_empty() #17
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond5 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bb = and i32 %i.ba, 1048576
  %.not47 = icmp eq i32 %i.bb, 0
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 252, ptr noundef nonnull @__FUNCTION__._generic_dt_control_fileop_images_job_run) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bc, i32 noundef 15) #17
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.bf = call ptr @g_list_copy(ptr noundef %i.be) #17
  call void @dt_collection_update_query(ptr noundef %i.bd, i32 noundef 3, i32 noundef 45, ptr noundef %i.bf) #17
  call void @dt_control_queue_redraw_center() #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.044 = phi i32 [ 0, %bb.l ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.044
}

declare i32 @dt_image_move(i32 noundef, i32 noundef) #1

declare i32 @dt_collection_get_collected_count() local_unnamed_addr #1

declare ptr @dt_collection_checksum(i32 noundef) local_unnamed_addr #1

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_collection_deserialize(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_image_copy(i32 noundef, i32 noundef) #1

declare i32 @dt_tag_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_image_local_copy_set(i32 noundef) local_unnamed_addr #1

declare i32 @dt_tag_attach(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_tag_detach(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_stop_backthumbs_crawler(i32 noundef) local_unnamed_addr #1

declare i32 @dt_exif_read(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_image_cache_write_release_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_start_backthumbs_crawler() local_unnamed_addr #1

declare ptr @g_list_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_history_paste(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_view_get_current() local_unnamed_addr #1

declare void @dt_dev_pixelpipe_rebuild(ptr noundef) local_unnamed_addr #1

declare void @dt_image_synch_xmps(ptr noundef) local_unnamed_addr #1

declare i32 @dt_control_job_is_synchronous(ptr noundef) local_unnamed_addr #1

declare ptr @dt_history_snapshot_item_init() local_unnamed_addr #1

declare void @dt_history_snapshot_undo_create(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_undo_disable_next(ptr noundef) local_unnamed_addr #1

declare void @dt_history_delete_on_image_ext(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_styles_apply_to_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_undo_record(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_history_snapshot_undo_pop(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @dt_history_snapshot_undo_lt_history_data_free(ptr noundef) #1

declare ptr @g_strstr_len(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_util_str_to_glist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_control_job_cancel(ptr noundef) local_unnamed_addr #1

declare void @dt_image_cache_set_export_timestamp(i32 noundef) local_unnamed_addr #1

declare void @dt_ui_notify_user(...) local_unnamed_addr #1

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_control_datetime_job_run(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [24 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 16               ; 7 uses
  %i.d = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.i, align 8, !tbaa !40
  %.not53 = icmp eq i8 %i.k, 0
  br i1 %.not53, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @g_list_length(ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.168, i64 noundef %i.m, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.n, i32 noundef %i.l) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.o = tail call ptr @g_list_copy(ptr noundef nonnull %i.e) #17
  store ptr %i.o, ptr %i.a, align 8, !tbaa !189
  call void @dt_grouping_add_grouped_images(ptr noundef nonnull %i.a) #17
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.q = call i32 @g_list_length(ptr noundef %i.p) #17
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !189
  call void @dt_image_set_datetime(ptr noundef %i.r, ptr noundef nonnull %i.i, i32 noundef 1) #17
  br label %bb.q
end_hunk_3
begin_hunk_4_@_control_datetime_job_run:bb.a

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.51, i32 noundef 2726, ptr noundef nonnull @__FUNCTION__._control_datetime_job_run) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bi, i32 noundef 0) #17
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.bk = trunc i32 %i.bj to i1
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3364), align 4
  %i.bm = icmp ne i32 %i.bl, 0
  %or.cond3 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bo = and i32 %i.bn, 1048576
  %.not57 = icmp eq i32 %i.bo, 0
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.51, i32 noundef 2727, ptr noundef nonnull @__FUNCTION__._control_datetime_job_run) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !189
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bp, i32 noundef 12, ptr noundef %i.bq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.c, %bb.w
  %.049 = phi i32 [ 0, %bb.w ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define internal void @_control_datetime_job_cleanup(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @g_list_free(ptr noundef %i.c) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_control_image_enumerator_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %_control_image_enumerator_cleanup.exit

_control_image_enumerator_cleanup.exit:           ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

declare void @dt_image_get_datetime(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_image_set_datetimes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_grouping_add_grouped_images(ptr noundef) local_unnamed_addr #1

declare void @dt_image_set_datetime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_datetime_exif_to_gdatetime(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_date_time_add(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @g_date_time_format(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_exif_xmp_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_control_import_job_run(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.dt_film_t, align 8          ; 3 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %struct.dt_image_basic_exif_t, align 1 ; 9 uses
  %6 = alloca %struct.stat, align 8               ; 8 uses
  %7 = alloca [2 x %struct.timeval], align 16     ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [20 x i8], align 16               ; 4 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.f = tail call ptr @dt_control_job_get_params(ptr noundef %0) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194
  %.not = icmp eq ptr %i.i, null
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !15  ; 4 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @dt_lua_lock_internal(ptr noundef nonnull @__FUNCTION__._apply_lua_filter, ptr noundef nonnull @.str.51, i32 noundef 2954, i32 noundef 0) #17
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3136), align 8, !tbaa !272 ; 10 uses
  tail call void @lua_createtable(ptr noundef %i.j, i32 noundef 0, i32 noundef 0) #17
  %.not29.i = icmp eq ptr %.pre, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.k = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.027.lcssa.i = phi i32 [ 1, %bb.b ], [ %i.k, %._crit_edge.loopexit.i ] ; 2 uses
  tail call void @lua_pushvalue(ptr noundef %i.j, i32 noundef -1) #17
  tail call void @dt_lua_event_trigger(ptr noundef %i.j, ptr noundef nonnull @.str.190, i32 noundef 1) #17
  tail call void @g_list_free_full(ptr noundef %.pre, ptr noundef nonnull @g_free) #17
  %i.l = icmp samesign ugt i32 %.027.lcssa.i, 1
  br i1 %i.l, label %.lr.ph35.preheader.i, label %_apply_lua_filter.exit

.lr.ph35.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i = zext i32 %.027.lcssa.i to i64
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.b ] ; 2 uses
  %.02631.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.02631.i, align 8, !tbaa !27
  %i.n = tail call ptr @lua_pushstring(ptr noundef %i.j, ptr noundef %i.m) #17 ; 0 uses
  tail call void @lua_seti(ptr noundef %i.j, i32 noundef -2, i64 noundef %indvars.iv.i) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02631.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %bb.d, %.lr.ph35.preheader.i
  %indvars.iv39.i = phi i64 [ 1, %.lr.ph35.preheader.i ], [ %indvars.iv.next40.i, %bb.d ] ; 2 uses
  %.033.i = phi ptr [ null, %.lr.ph35.preheader.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.q = tail call i32 @lua_geti(ptr noundef %i.j, i32 noundef -1, i64 noundef %indvars.iv39.i) #17 ; 0 uses
  %i.r = tail call i32 @lua_isstring(ptr noundef %i.j, i32 noundef -1) #17
  %.not28.i = icmp eq i32 %i.r, 0
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph35.i
  %i.s = tail call ptr @luaL_checklstring(ptr noundef %i.j, i32 noundef -1, ptr noundef null) #17
  %i.t = tail call noalias ptr @strdup(ptr noundef %i.s) #17
  %i.u = tail call ptr @g_list_prepend(ptr noundef %.033.i, ptr noundef %i.t) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph35.i
  %.1.i = phi ptr [ %i.u, %bb.c ], [ %.033.i, %.lr.ph35.i ] ; 2 uses
  tail call void @lua_settop(ptr noundef %i.j, i32 noundef -2) #17
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_apply_lua_filter.exit, label %.lr.ph35.i

_apply_lua_filter.exit:                           ; preds = %bb.d, %._crit_edge.i
  %.0.lcssa.i = phi ptr [ null, %._crit_edge.i ], [ %.1.i, %bb.d ]
  tail call void @lua_settop(ptr noundef %i.j, i32 noundef -2) #17
  tail call void @dt_lua_unlock_internal(ptr noundef nonnull @__FUNCTION__._apply_lua_filter, i32 noundef 2986) #17
  %i.v = tail call ptr @g_list_sort(ptr noundef %.0.lcssa.i, ptr noundef nonnull @_sort_filename) #17 ; 3 uses
  store ptr %i.v, ptr %i.f, align 8, !tbaa !15
  %.not66 = icmp eq ptr %i.v, null
  br i1 %.not66, label %bb.at, label %bb.e

bb.e:                                             ; preds = %_apply_lua_filter.exit, %bb.a
  %i.w = phi ptr [ %i.v, %_apply_lua_filter.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.x = tail call i32 @g_list_length(ptr noundef %i.w) #17 ; 4 uses
  %i.y = zext i32 %i.x to i64
  %i.z = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i64 noundef %i.y, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.z, i32 noundef %i.x) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aa = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #17 ; 0 uses
  %i.ab = load i64, ptr %8, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not67150 = icmp eq ptr %i.w, null
  br i1 %.not67150, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = uitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.ao = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not149177 = icmp eq i32 %i.aq, 4
  br i1 %.not149177, label %.critedge, label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph
  %i.ar = sitofp reassoc nsz arcp contract afn i64 %i.ad to double
  %i.as = fmul reassoc nsz arcp contract afn double %i.ar, f0x3EB0C6F7A0B5ED8D
  %i.at = add nsw i64 %i.ab, -1290608000
  %i.au = sitofp reassoc nsz arcp contract afn i64 %i.at to double
  %i.av = fadd reassoc nsz arcp contract afn double %i.as, %i.au
  %i.aw = fadd reassoc nsz arcp contract afn double %i.av, -2.500000e-01 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.ai
  %i.ax = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not149 = icmp eq i32 %i.ax, 4
  br i1 %.not149, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.ai, %bb.f, %.lr.ph, %bb.e
  %.0100.lcssa = phi ptr [ null, %bb.e ], [ null, %.lr.ph ], [ %.1101122, %bb.f ], [ %.1101122, %bb.ai ]
  %.0.lcssa = phi ptr [ null, %bb.e ], [ null, %.lr.ph ], [ %.188130, %bb.f ], [ %.188130, %bb.ai ]
  %.062.lcssa = phi i32 [ 0, %bb.e ], [ 0, %.lr.ph ], [ %i.ew, %bb.f ], [ %i.ew, %bb.ai ] ; 2 uses
  %.059.lcssa = phi i32 [ -1, %bb.e ], [ -1, %.lr.ph ], [ %.160132, %bb.f ], [ %.160132, %bb.ai ]
  call void @g_free(ptr noundef %.0.lcssa) #17
  %i.ay = zext i32 %.062.lcssa to i64
  %i.az = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, i64 noundef %i.ay, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.az, i32 noundef %.062.lcssa) #17
  call void @dt_control_queue_redraw_center() #17
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.bb = trunc i32 %i.ba to i1
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond5 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond5, label %bb.aj, label %bb.al

bb.g:                                             ; preds = %.lr.ph188, %bb.f
  %.0100151187 = phi ptr [ null, %.lr.ph188 ], [ %.1101122, %bb.f ] ; 7 uses
  %.095152186 = phi double [ %i.aw, %.lr.ph188 ], [ %.196124, %bb.f ] ; 8 uses
  %.092153185 = phi double [ 5.000000e-01, %.lr.ph188 ], [ %.193126, %bb.f ] ; 14 uses
  %.089154184 = phi ptr [ null, %.lr.ph188 ], [ %.190128, %bb.f ] ; 3 uses
  %.0155183 = phi ptr [ null, %.lr.ph188 ], [ %.188130, %bb.f ] ; 4 uses
  %.062156182 = phi i32 [ 0, %.lr.ph188 ], [ %i.ew, %bb.f ] ; 4 uses
  %.061157181 = phi double [ 0.000000e+00, %.lr.ph188 ], [ %i.ex, %bb.f ]
  %.057159180 = phi i32 [ -1, %.lr.ph188 ], [ %.158134, %bb.f ] ; 4 uses
  %.056160179 = phi double [ %i.aw, %.lr.ph188 ], [ %.1, %bb.f ] ; 2 uses
  %.055161178 = phi ptr [ %i.w, %.lr.ph188 ], [ %i.fl, %bb.f ] ; 2 uses
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !194 ; 7 uses
  %.not73 = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %.055161178, align 8, !tbaa !27 ; 13 uses
  br i1 %.not73, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.bg = call i32 @g_file_get_contents(ptr noundef %i.bf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #17
  %.not.i75 = icmp eq i32 %i.bg, 0
  br i1 %.not.i75, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.bi = and i32 %i.bh, 2
  %.not56.i = icmp eq i32 %i.bi, 0
  br i1 %.not56.i, label %_control_import_image_copy.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.191, ptr noundef %i.bf) #17
  br label %_control_import_image_copy.exit.thread

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bj = call i32 @stat(ptr noundef %i.bf, ptr noundef nonnull %6) #17
  %i.bk = call i32 @dt_has_same_path_basename(ptr noundef %i.bf, ptr noundef %.089154184) #17
  %.not57.i = icmp eq i32 %i.bk, 0
  br i1 %.not57.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = call ptr @dt_copy_filename_extension(ptr noundef %.0155183, ptr noundef %i.bf) #17
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bm = call noalias ptr @g_path_get_basename(ptr noundef %i.bf) #17 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !190
  call void @dt_exif_get_basic_data(ptr noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull %5) #17
  %i.bp = load i8, ptr %5, align 1, !tbaa !40
  %i.bq = icmp ne i8 %i.bp, 0
  %i.br = icmp ne i32 %i.bj, 0
  %or.cond.i = or i1 %i.br, %i.bq
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = call i32 @dt_datetime_unix_to_exif(ptr noundef nonnull %5, i64 noundef 24, ptr noundef nonnull %i.ae) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @dt_import_session_set_exif_basic_info(ptr noundef nonnull %i.be, ptr noundef nonnull %5) #17
  call void @dt_import_session_set_filename(ptr noundef nonnull %i.be, ptr noundef %i.bm) #17
  %i.bt = call ptr @dt_import_session_path(ptr noundef nonnull %i.be, i32 noundef 0) #17
  %i.bu = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.192) #17
  %i.bv = call ptr @dt_import_session_filename(ptr noundef nonnull %i.be, i32 noundef %i.bu) #17
  %i.bw = call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef null) #17
  call void @g_free(ptr noundef %i.bm) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.054.i = phi ptr [ %i.bl, %bb.l ], [ %i.bw, %bb.o ] ; 9 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.by = load i64, ptr %i.b, align 8, !tbaa !190
  %i.bz = call i32 @g_file_set_contents(ptr noundef %.054.i, ptr noundef %i.bx, i64 noundef %i.by, ptr noundef null) #17
  %.not58.i = icmp eq i32 %i.bz, 0                ; 2 uses
  br i1 %.not58.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.cb = and i32 %i.ca, 2
  %.not59.i = icmp eq i32 %i.cb, 0
  br i1 %.not59.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.193, ptr noundef %.054.i) #17
  br label %bb.aa

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cc = load i64, ptr %i.af, align 8, !tbaa !275
  store i64 %i.cc, ptr %7, align 16, !tbaa !100
  %i.cd = load i64, ptr %i.ae, align 8, !tbaa !276
  store i64 %i.cd, ptr %i.ag, align 16, !tbaa !100
  %i.ce = load i64, ptr %i.ah, align 8, !tbaa !277
  %i.cf = sitofp reassoc nsz arcp contract afn i64 %i.ce to double
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, 1.000000e-03
  %i.ch = fptosi double %i.cg to i64
  store i64 %i.ch, ptr %i.ai, align 8, !tbaa !101
  %i.ci = load i64, ptr %i.aj, align 8, !tbaa !278
  %i.cj = sitofp reassoc nsz arcp contract afn i64 %i.ci to double
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, 1.000000e-03
  %i.cl = fptosi double %i.ck to i64
  store i64 %i.cl, ptr %i.ak, align 8, !tbaa !101
  %i.cm = call i32 @utimes(ptr noundef %.054.i, ptr noundef nonnull %7) #17 ; 0 uses
  %i.cn = call i32 @dt_import_session_film_id(ptr noundef nonnull %i.be) #17
  %i.co = call i32 @dt_image_import(i32 noundef %i.cn, ptr noundef %.054.i, i32 noundef 0, i32 noundef 0) #17 ; 5 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.194, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.cq, ptr noundef %.054.i) #17
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8, !tbaa !197
  %i.cr = call ptr @g_file_new_for_path(ptr noundef %i.bf) #17 ; 2 uses
  %i.cs = call ptr @g_file_query_info(ptr noundef %i.cr, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c) #17 ; 3 uses
  %i.ct = call ptr @g_file_info_get_name(ptr noundef %i.cs) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cu = call i64 @g_file_info_get_attribute_uint64(ptr noundef %i.cs, ptr noundef nonnull @.str.196) #17
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.cv = call i32 @dt_datetime_unix_to_exif(ptr noundef nonnull %i.e, i64 noundef 20, ptr noundef nonnull %i.d) #17 ; 0 uses
  %i.cw = call noalias ptr (ptr, ...) @g_strconcat(ptr noundef %i.ct, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.e, ptr noundef null) #17 ; 2 uses
  call void @dt_metadata_set(i32 noundef %i.co, ptr noundef nonnull @.str.198, ptr noundef %i.cw, i32 noundef 0) #17
  %i.cx = call noalias ptr @g_path_get_basename(ptr noundef %.054.i) #17 ; 2 uses
  %i.cy = call i32 @g_strcmp0(ptr noundef %i.cx, ptr noundef %i.ct) #17
  %.not60.i = icmp eq i32 %i.cy, 0
  br i1 %.not60.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @dt_metadata_set(i32 noundef %i.co, ptr noundef nonnull @.str.199, ptr noundef %i.ct, i32 noundef 0) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @g_free(ptr noundef %i.cx) #17
  call void @g_free(ptr noundef %i.cw) #17
  call void @g_object_unref(ptr noundef %i.cs) #17
  call void @g_object_unref(ptr noundef %i.cr) #17
  %i.cz = zext nneg i32 %i.co to i64
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = call ptr @g_list_prepend(ptr noundef %.0100151187, ptr noundef nonnull %i.da) #17
  %i.dc = and i32 %i.co, 3
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  call void @dt_collection_update_query(ptr noundef %i.de, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  call void @dt_control_queue_redraw_center() #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.2102 = phi ptr [ %i.db, %bb.y ], [ %.0100151187, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.r, %bb.q
  %.3103 = phi ptr [ %.0100151187, %bb.q ], [ %.0100151187, %bb.r ], [ %.2102, %bb.z ] ; 3 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @g_free(ptr noundef %i.df) #17
  call void @g_free(ptr noundef %.0155183) #17
  br i1 %.not58.i, label %_control_import_image_copy.exit.thread111, label %_control_import_image_copy.exit

_control_import_image_copy.exit.thread111:        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_collection_update.exit.thread

_control_import_image_copy.exit.thread:           ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_collection_update.exit.thread

_control_import_image_copy.exit:                  ; preds = %bb.aa
  %i.dg = call i32 @dt_import_session_film_id(ptr noundef nonnull %i.be) #17 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dh = icmp ne i32 %i.dg, -1
  %i.di = icmp eq i32 %.057159180, -1
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond, label %bb.ab, label %_collection_update.exit

bb.ab:                                            ; preds = %_control_import_image_copy.exit
  %i.dj = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.182) #17 ; 2 uses
  %or.cond3 = icmp ugt i32 %i.dj, 1
  %spec.store.select = select i1 %or.cond3, i32 0, i32 %i.dj
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.dl = call ptr @dt_import_session_path(ptr noundef %i.dk, i32 noundef 0) #17
  call void @dt_conf_set_int(ptr noundef nonnull @.str.183, i32 noundef 1) #17
  call void @dt_conf_set_int(ptr noundef nonnull @.str.182, i32 noundef %spec.store.select) #17
  call void @dt_conf_set_string(ptr noundef nonnull @.str.184, ptr noundef %i.dl) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dm = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #17 ; 0 uses
  %i.dn = load i64, ptr %4, align 8, !tbaa !100
  %i.do = add nsw i64 %i.dn, -1290608000
  %i.dp = sitofp reassoc nsz arcp contract afn i64 %i.do to double
  %i.dq = load i64, ptr %i.al, align 8, !tbaa !101
  %i.dr = sitofp reassoc nsz arcp contract afn i64 %i.dq to double
  %i.ds = fmul reassoc nsz arcp contract afn double %i.dr, f0x3EB0C6F7A0B5ED8D
  %i.dt = fadd reassoc nsz arcp contract afn double %i.ds, %i.dp ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.du = fsub reassoc nsz arcp contract afn double %i.dt, %.095152186
  %i.dv = fcmp reassoc nsz arcp contract afn ogt double %i.du, %.092153185
  br i1 %i.dv, label %bb.ac, label %_collection_update.exit.thread137

bb.ac:                                            ; preds = %bb.ab
  %i.dw = fcmp reassoc nsz arcp contract afn olt double %.092153185, 3.000000e+00
  %i.dx = fadd reassoc nsz arcp contract afn double %.092153185, 1.000000e-01
  %spec.select = select nsz i1 %i.dw, double %i.dx, double %.092153185
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  call void @dt_collection_update_query(ptr noundef %i.dy, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  call void @dt_control_queue_redraw_center() #17
  br label %_collection_update.exit.thread137

bb.ad:                                            ; preds = %bb.g
  call void @dt_conf_set_int(ptr noundef nonnull @.str.200, i32 noundef -1) #17
  %i.dz = call ptr @dt_util_path_get_dirname(ptr noundef %i.bf) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ea = call i32 @dt_film_new(ptr noundef nonnull %3, ptr noundef %i.dz) #17 ; 2 uses
  %i.eb = call i32 @dt_image_import(i32 noundef %i.ea, ptr noundef %i.bf, i32 noundef 0, i32 noundef 0) #17 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.194, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ed, ptr noundef %i.bf) #17
  br label %_control_import_image_insitu.exit

bb.af:                                            ; preds = %bb.ad
  %i.ee = zext nneg i32 %i.eb to i64
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = call ptr @g_list_prepend(ptr noundef %.0100151187, ptr noundef nonnull %i.ef) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.eh = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #17 ; 0 uses
  %i.ei = load i64, ptr %2, align 8, !tbaa !100
  %i.ej = add nsw i64 %i.ei, -1290608000
  %i.ek = sitofp reassoc nsz arcp contract afn i64 %i.ej to double
  %i.el = load i64, ptr %i.am, align 8, !tbaa !101
  %i.em = sitofp reassoc nsz arcp contract afn i64 %i.el to double
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, f0x3EB0C6F7A0B5ED8D
  %i.eo = fadd reassoc nsz arcp contract afn double %i.en, %i.ek ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ep = fsub reassoc nsz arcp contract afn double %i.eo, %.095152186
  %i.eq = fcmp reassoc nsz arcp contract afn ogt double %i.ep, %.092153185
  br i1 %i.eq, label %bb.ag, label %_collection_update.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.er = fcmp reassoc nsz arcp contract afn olt double %.092153185, 3.000000e+00
  %i.es = fadd reassoc nsz arcp contract afn double %.092153185, 1.000000e-01
  %spec.select147 = select nsz i1 %i.er, double %i.es, double %.092153185
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !86
  call void @dt_collection_update_query(ptr noundef %i.et, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  call void @dt_control_queue_redraw_center() #17
  br label %_collection_update.exit.i

_collection_update.exit.i:                        ; preds = %bb.ag, %bb.af
  %.398 = phi nsz double [ %i.eo, %bb.ag ], [ %.095152186, %bb.af ]
  %.4 = phi nsz double [ %spec.select147, %bb.ag ], [ %.092153185, %bb.af ]
  call void @dt_conf_set_int(ptr noundef nonnull @.str.200, i32 noundef %i.eb) #17
  br label %_control_import_image_insitu.exit

_control_import_image_insitu.exit:                ; preds = %bb.ae, %_collection_update.exit.i
  %.5105 = phi ptr [ %i.eg, %_collection_update.exit.i ], [ %.0100151187, %bb.ae ]
  %.499 = phi nsz double [ %.398, %_collection_update.exit.i ], [ %.095152186, %bb.ae ]
  %.6 = phi nsz double [ %.4, %_collection_update.exit.i ], [ %.092153185, %bb.ae ]
  call void @g_free(ptr noundef %i.dz) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_collection_update.exit

_collection_update.exit.thread137:                ; preds = %bb.ab, %bb.ac
  %.196.ph = phi double [ %.095152186, %bb.ab ], [ %i.dt, %bb.ac ]
  %.193.ph = phi double [ %.092153185, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.eu = add i32 %.062156182, 1
  br label %_collection_update.exit.thread

_collection_update.exit:                          ; preds = %_control_import_image_copy.exit, %_control_import_image_insitu.exit
  %.1101 = phi ptr [ %.5105, %_control_import_image_insitu.exit ], [ %.3103, %_control_import_image_copy.exit ]
  %.196 = phi nsz double [ %.499, %_control_import_image_insitu.exit ], [ %.095152186, %_control_import_image_copy.exit ]
  %.193 = phi nsz double [ %.6, %_control_import_image_insitu.exit ], [ %.092153185, %_control_import_image_copy.exit ]
  %.190 = phi ptr [ %.089154184, %_control_import_image_insitu.exit ], [ %i.bf, %_control_import_image_copy.exit ]
  %.188 = phi ptr [ %.0155183, %_control_import_image_insitu.exit ], [ %.054.i, %_control_import_image_copy.exit ]
  %.160 = phi i32 [ %i.ea, %_control_import_image_insitu.exit ], [ %i.dg, %_control_import_image_copy.exit ]
  %.160.fr = freeze i32 %.160                     ; 2 uses
  %.not74 = icmp ne i32 %.160.fr, -1
  %i.ev = zext i1 %.not74 to i32
  %spec.select148 = add i32 %.062156182, %i.ev
  br label %_collection_update.exit.thread

_collection_update.exit.thread:                   ; preds = %_collection_update.exit, %_control_import_image_copy.exit.thread, %_control_import_image_copy.exit.thread111, %_collection_update.exit.thread137
  %.158134 = phi i32 [ %i.dg, %_collection_update.exit.thread137 ], [ %.057159180, %_collection_update.exit ], [ %.057159180, %_control_import_image_copy.exit.thread ], [ %.057159180, %_control_import_image_copy.exit.thread111 ]
  %.160132 = phi i32 [ %i.dg, %_collection_update.exit.thread137 ], [ %.160.fr, %_collection_update.exit ], [ -1, %_control_import_image_copy.exit.thread ], [ -1, %_control_import_image_copy.exit.thread111 ] ; 2 uses
  %.188130 = phi ptr [ %.054.i, %_collection_update.exit.thread137 ], [ %.188, %_collection_update.exit ], [ %.0155183, %_control_import_image_copy.exit.thread ], [ %.054.i, %_control_import_image_copy.exit.thread111 ] ; 3 uses
  %.190128 = phi ptr [ %i.bf, %_collection_update.exit.thread137 ], [ %.190, %_collection_update.exit ], [ %.089154184, %_control_import_image_copy.exit.thread ], [ %i.bf, %_control_import_image_copy.exit.thread111 ]
  %.193126 = phi double [ %.193.ph, %_collection_update.exit.thread137 ], [ %.193, %_collection_update.exit ], [ %.092153185, %_control_import_image_copy.exit.thread ], [ %.092153185, %_control_import_image_copy.exit.thread111 ]
  %.196124 = phi double [ %.196.ph, %_collection_update.exit.thread137 ], [ %.196, %_collection_update.exit ], [ %.095152186, %_control_import_image_copy.exit.thread ], [ %.095152186, %_control_import_image_copy.exit.thread111 ]
  %.1101122 = phi ptr [ %.3103, %_collection_update.exit.thread137 ], [ %.1101, %_collection_update.exit ], [ %.0100151187, %_control_import_image_copy.exit.thread ], [ %.3103, %_control_import_image_copy.exit.thread111 ] ; 3 uses
  %i.ew = phi i32 [ %i.eu, %_collection_update.exit.thread137 ], [ %spec.select148, %_collection_update.exit ], [ %.062156182, %_control_import_image_copy.exit.thread ], [ %.062156182, %_control_import_image_copy.exit.thread111 ] ; 5 uses
  %i.ex = fadd reassoc nsz arcp contract afn double %.061157181, %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ey = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.ez = load i64, ptr %1, align 8, !tbaa !100
  %i.fa = add nsw i64 %i.ez, -1290608000
  %i.fb = sitofp reassoc nsz arcp contract afn i64 %i.fa to double
  %i.fc = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.fd = sitofp reassoc nsz arcp contract afn i64 %i.fc to double
  %i.fe = fmul reassoc nsz arcp contract afn double %i.fd, f0x3EB0C6F7A0B5ED8D
  %i.ff = fadd reassoc nsz arcp contract afn double %i.fe, %i.fb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.fg = fsub reassoc nsz arcp contract afn double %i.ff, %.056160179
  %i.fh = fcmp reassoc nsz arcp contract afn ogt double %i.fg, 5.000000e-01
  br i1 %i.fh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_collection_update.exit.thread
  %i.fi = zext i32 %i.ew to i64
  %i.fj = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, i64 noundef %i.fi, i32 noundef 5) #17
  call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.fj, i32 noundef %i.ew, i32 noundef %i.x) #17
  call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.ex) #17
  call void @g_usleep(i64 noundef 100) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_collection_update.exit.thread
  %.1 = phi nsz double [ %i.ff, %bb.ah ], [ %.056160179, %_collection_update.exit.thread ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.055161178, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !28 ; 2 uses
  %.not67 = icmp eq ptr %i.fl, null
  br i1 %.not67, label %.critedge, label %bb.f

bb.aj:                                            ; preds = %.critedge
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fn = and i32 %i.fm, 1048576
  %.not69 = icmp eq i32 %i.fn, 0
  br i1 %.not69, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.51, i32 noundef 3071, ptr noundef nonnull @__FUNCTION__._control_import_job_run) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %.critedge
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.fo, i32 noundef 9) #17
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.fq = trunc i32 %i.fp to i1
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.fs = icmp ne i32 %i.fr, 0
  %or.cond7 = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond7, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fu = and i32 %i.ft, 1048576
  %.not70 = icmp eq i32 %i.fu, 0
  br i1 %.not70, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.51, i32 noundef 3072, ptr noundef nonnull @__FUNCTION__._control_import_job_run) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.al
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.fv, i32 noundef 10, ptr noundef %.0100.lcssa, i32 noundef 0) #17
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !87
  %i.fx = trunc i32 %i.fw to i1
  %i.fy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3380), align 4
  %i.fz = icmp ne i32 %i.fy, 0
  %or.cond9 = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %or.cond9, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.gb = and i32 %i.ga, 1048576
  %.not71 = icmp eq i32 %i.gb, 0
  br i1 %.not71, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.51, i32 noundef 3073, ptr noundef nonnull @__FUNCTION__._control_import_job_run) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !89
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.gc, i32 noundef 16, i32 noundef %.059.lcssa) #17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !193 ; 2 uses
  %.not72 = icmp eq ptr %i.ge, null
  br i1 %.not72, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ge, align 4, !tbaa !38
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %_apply_lua_filter.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_control_import_job_cleanup(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_import_session_destroy(ptr noundef nonnull %i.c) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #17
  %.013 = load ptr, ptr %0, align 8, !tbaa !189   ; 2 uses
  %.not1214 = icmp eq ptr %.013, null
  br i1 %.not1214, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.c ]
  tail call void @g_list_free(ptr noundef %i.d) #17
  store ptr null, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_control_image_enumerator_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void @g_main_context_invoke(ptr noundef null, ptr noundef nonnull @_cursor_clear_busy, ptr noundef null) #17
  br label %_control_image_enumerator_cleanup.exit

_control_image_enumerator_cleanup.exit:           ; preds = %._crit_edge, %bb.d
  tail call void @free(ptr noundef nonnull %0) #17
  ret void

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.015 = phi ptr [ %.0, %.lr.ph ], [ %.013, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %.015, align 8, !tbaa !27
  tail call void @g_free(ptr noundef %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !189   ; 2 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %._crit_edge.loopexit, label %.lr.ph
}

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @_sort_filename(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @g_strcmp0(ptr noundef %0, ptr noundef %1) #17
  ret i32 %i.a
}

declare ptr @dt_import_session_new(...) local_unnamed_addr #1

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #1

declare void @dt_import_session_set_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_import_session_set_time(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_import_session_path(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_lua_lock_internal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_seti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_lua_event_trigger(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_geti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #14

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_lua_unlock_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @dt_has_same_path_basename(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_copy_filename_extension(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_path_get_basename(ptr noundef) local_unnamed_addr #1

declare void @dt_exif_get_basic_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_datetime_unix_to_exif(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_4
