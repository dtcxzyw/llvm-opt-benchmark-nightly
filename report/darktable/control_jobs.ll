inline.NumInlined: 84
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_control_merge_hdr_job_run:bb.a
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = call ptr @g_list_prepend(ptr noundef null, ptr noundef %i.dl) #17
  call void @dt_collection_update_query(ptr noundef %i.dj, i32 noundef 3, i32 noundef 45, ptr noundef %i.dm) #17
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !97
  %i.do = trunc i32 %i.dn to i1
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.dq = icmp ne i32 %i.dp, 0
  %or.cond = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.ds = and i32 %i.dr, 1048576
  %.not44 = icmp eq i32 %i.ds, 0
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 725, ptr noundef nonnull @__FUNCTION__._control_merge_hdr_job_run) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !99
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.dt, i32 noundef 15) #17
  call void @dt_control_queue_redraw_center() #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !51
  call void @free(ptr noundef %i.dv) #17
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  call void @free(ptr noundef %i.dx) #17
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
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.g = and i32 %i.f, 256
  %.not.i32.i = icmp eq i32 %i.g, 0
  br i1 %.not.i32.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.51, i32 noundef 161, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef nonnull @.str.79) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !100
  %i.i = tail call ptr @dt_database_get(ptr noundef %i.h) #17
  %i.j = call i32 @sqlite3_prepare_v2(ptr noundef %i.i, ptr noundef nonnull @.str.79, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not5.i.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !101
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !100
  %i.m = call ptr @dt_database_get(ptr noundef %i.l) #17
  %i.n = call ptr @sqlite3_errmsg(ptr noundef %i.m) #17
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.51, i32 noundef 161, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef nonnull @.str.79, ptr noundef %i.n) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.q = call i32 @sqlite3_bind_int(ptr noundef %i.p, i32 noundef 1, i32 noundef range(i32 0, -1) %1) #17
  %.not6.i.i = icmp eq i32 %i.q, 0
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !101
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !100
  %i.t = call ptr @dt_database_get(ptr noundef %i.s) #17
  %i.u = call ptr @sqlite3_errmsg(ptr noundef %i.t) #17
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.51, i32 noundef 162, ptr noundef nonnull @__FUNCTION__._control_image_enumerator_job_film_init, ptr noundef %i.u) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.x = call i32 @sqlite3_step(ptr noundef %i.w) #17
  %i.y = icmp eq i32 %i.x, 100
  br i1 %i.y, label %.lr.ph.i.i, label %_control_image_enumerator_job_film_init.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.aa = call i32 @sqlite3_column_int(ptr noundef %i.z, i32 noundef 0) #17
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ac = sext i32 %i.aa to i64
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = call ptr @g_list_append(ptr noundef %i.ab, ptr noundef %i.ad) #17
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !15
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ag = call i32 @sqlite3_step(ptr noundef %i.af) #17
  %i.ah = icmp eq i32 %i.ag, 100
  br i1 %i.ah, label %.lr.ph.i.i, label %_control_image_enumerator_job_film_init.exit.i

_control_image_enumerator_job_film_init.exit.i:   ; preds = %.lr.ph.i.i, %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !103
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
  store ptr %i.am, ptr %i.al, align 8, !tbaa !105
  %i.an = call noalias ptr @g_strdup(ptr noundef %2) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
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
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !108
  tail call void @dt_undo_start_group(ptr noundef %i.d, i32 noundef 1024) #17
  %i.e = zext i32 %i.c to i64
  %i.f = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i64 noundef %i.e, i32 noundef 5) #17
  tail call void (ptr, ptr, ...) @dt_control_job_set_progress_message(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #17 ; 0 uses
  %i.h = load i64, ptr %3, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %4 = sitofp reassoc nsz arcp contract afn i64 %i.j to double
  %5 = fmul reassoc nnan nsz arcp contract afn double %4, f0x3EB0C6F7A0B5ED8D
  %6 = add nsw i64 %i.h, -1290608000
  %i.k = sitofp reassoc nsz arcp contract afn i64 %6 to double
  %7 = fadd reassoc nsz arcp contract afn double %5, %i.k
  %i.l = fadd reassoc nsz arcp contract afn double %7, -2.500000e-01
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = uitofp reassoc nsz arcp contract afn i32 %i.c to double
  %i.p = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_update_progress.exit
  %.043 = phi ptr [ %i.b, %.lr.ph ], [ %i.be, %_update_progress.exit ] ; 2 uses
  %.02342 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ao, %_update_progress.exit ]
  %.03141 = phi double [ 5.000000e-01, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 6 uses
  %.03240 = phi double [ %i.l, %.lr.ph ], [ %.133, %_update_progress.exit ] ; 3 uses
  %.03539 = phi double [ 0.000000e+00, %.lr.ph ], [ %.136, %_update_progress.exit ] ; 2 uses
  %i.r = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not37 = icmp eq i32 %i.r, 4
  br i1 %.not37, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %.043, align 8, !tbaa !26
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = tail call i32 @dt_image_duplicate(i32 noundef %i.u) #17 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %_collection_update.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 4294967295
  %.not27 = icmp eq i64 %i.z, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @dt_history_delete_on_image(i32 noundef %i.v) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call i32 @dt_history_copy_and_paste_on_image(i32 noundef %i.u, i32 noundef %i.v, i32 noundef 0, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @dt_image_cache_set_change_timestamp_from_image(i32 noundef %i.v, i32 noundef %i.u) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ab = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #17 ; 0 uses
  %i.ac = load i64, ptr %2, align 8, !tbaa !109
  %i.ad = add nsw i64 %i.ac, -1290608000
  %i.ae = sitofp reassoc nsz arcp contract afn i64 %i.ad to double
  %i.af = load i64, ptr %i.n, align 8, !tbaa !111
  %i.ag = sitofp reassoc nsz arcp contract afn i64 %i.af to double
  %i.ah = fmul reassoc nnan nsz arcp contract afn double %i.ag, f0x3EB0C6F7A0B5ED8D
  %i.ai = fadd reassoc nsz arcp contract afn double %i.ah, %i.ae ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.aj = fsub reassoc nsz arcp contract afn double %i.ai, %.03240
  %i.ak = fcmp reassoc nsz arcp contract afn ogt double %i.aj, %.03141
  br i1 %i.ak, label %bb.h, label %_collection_update.exit

bb.h:                                             ; preds = %bb.g
  %i.al = fcmp reassoc nsz arcp contract afn olt double %.03141, 3.000000e+00
  %i.am = fadd reassoc nsz arcp contract afn double %.03141, 1.000000e-01
  %.2 = select nsz i1 %i.al, double %i.am, double %.03141
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !53
  tail call void @dt_collection_update_query(ptr noundef %i.an, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  tail call void @dt_control_queue_redraw_center() #17
  br label %_collection_update.exit

_collection_update.exit:                          ; preds = %bb.h, %bb.g, %bb.c
  %.133 = phi nsz double [ %.03240, %bb.c ], [ %i.ai, %bb.h ], [ %.03240, %bb.g ]
  %.1 = phi nsz double [ %.03141, %bb.c ], [ %.2, %bb.h ], [ %.03141, %bb.g ]
  %i.ao = fadd reassoc nsz arcp contract afn double %.02342, %i.p ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ap = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.aq = load i64, ptr %1, align 8, !tbaa !109
  %i.ar = add nsw i64 %i.aq, -1290608000
  %i.as = sitofp reassoc nsz arcp contract afn i64 %i.ar to double
  %i.at = load i64, ptr %i.q, align 8, !tbaa !111
  %i.au = sitofp reassoc nsz arcp contract afn i64 %i.at to double
  %i.av = fmul reassoc nnan nsz arcp contract afn double %i.au, f0x3EB0C6F7A0B5ED8D
  %i.aw = fadd reassoc nsz arcp contract afn double %i.av, %i.as ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ax = fadd reassoc nsz arcp contract afn double %.03539, 5.000000e-01
  %i.ay = fcmp reassoc nsz arcp contract afn ogt double %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %_update_progress.exit

bb.i:                                             ; preds = %_collection_update.exit
  %i.az = fcmp reassoc nsz arcp contract afn ogt double %i.ao, 1.000000e+00
  %i.ba = fcmp reassoc nsz arcp contract afn olt double %i.ao, 0.000000e+00
  %i.bb = select reassoc nsz arcp contract afn i1 %i.ba, double 0.000000e+00, double %i.ao
  %i.bc = select reassoc nsz arcp contract afn i1 %i.az, double 1.000000e+00, double %i.bb
  tail call void @dt_control_job_set_progress(ptr noundef %0, double noundef %i.bc) #17
  br label %_update_progress.exit

_update_progress.exit:                            ; preds = %_collection_update.exit, %bb.i
  %.136 = phi nsz double [ %i.aw, %bb.i ], [ %.03539, %_collection_update.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_update_progress.exit, %bb.a
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !108
  tail call void @dt_undo_end_group(ptr noundef %i.bf) #17
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !97
  %i.bh = trunc i32 %i.bg to i1
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3376), align 8
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.bl = and i32 %i.bk, 1048576
  %.not26 = icmp eq i32 %i.bl, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.51, i32 noundef 771, ptr noundef nonnull @__FUNCTION__._control_duplicate_images_job_run) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.critedge
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !99
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bm, i32 noundef 15) #17
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
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !108
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
  %.026 = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_update_progress.exit ] ; 2 uses
  %.01925 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.q, %_update_progress.exit ]
  %.02124 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_update_progress.exit ] ; 2 uses
  %i.l = tail call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not22 = icmp eq i32 %i.l, 4
  br i1 %.not22, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.026, align 8, !tbaa !26
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  tail call void @dt_image_flip(i32 noundef %i.o, i32 noundef %i.c) #17
  %i.p = tail call reassoc nsz arcp contract afn float @dt_image_set_aspect_ratio(i32 noundef %i.o, i32 noundef 0) #17 ; 0 uses
  %i.q = fadd reassoc nsz arcp contract afn double %.01925, %i.j ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.r = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #17 ; 0 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !109
  %i.t = add nsw i64 %i.s, -1290608000
  %i.u = sitofp reassoc nsz arcp contract afn i64 %i.t to double
  %i.v = load i64, ptr %i.k, align 8, !tbaa !111
  %i.w = sitofp reassoc nsz arcp contract afn i64 %i.v to double
  %i.x = fmul reassoc nnan nsz arcp contract afn double %i.w, f0x3EB0C6F7A0B5ED8D
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
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %.critedge, label %bb.b

end_hunk_0
begin_hunk_1_@_control_datetime_job_run:bb.a
  br i1 %.not56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.51, i32 noundef 2726, ptr noundef nonnull @__FUNCTION__._control_datetime_job_run) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !99
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bi, i32 noundef 0) #17
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !97
  %i.bk = trunc i32 %i.bj to i1
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3364), align 4
  %i.bm = icmp ne i32 %i.bl, 0
  %or.cond3 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.bo = and i32 %i.bn, 1048576
  %.not57 = icmp eq i32 %i.bo, 0
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.51, i32 noundef 2727, ptr noundef nonnull @__FUNCTION__._control_datetime_job_run) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !99
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !227
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bp, i32 noundef 12, ptr noundef %i.bq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.c, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
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
  %i.m = load ptr, ptr %.02631.i, align 8, !tbaa !26
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
  %i.ab = load i64, ptr %8, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not67147 = icmp eq ptr %i.w, null
  br i1 %.not67147, label %.critedge, label %.lr.ph

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
  %.not146174 = icmp eq i32 %i.aq, 4
  br i1 %.not146174, label %.critedge, label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph
  %9 = sitofp reassoc nsz arcp contract afn i64 %i.ad to double
  %10 = fmul reassoc nnan nsz arcp contract afn double %9, f0x3EB0C6F7A0B5ED8D
  %11 = add nsw i64 %i.ab, -1290608000
  %i.ar = sitofp reassoc nsz arcp contract afn i64 %11 to double
  %12 = fadd reassoc nsz arcp contract afn double %10, %i.ar
  %i.as = fadd reassoc nsz arcp contract afn double %12, -2.500000e-01 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.ai
  %i.at = call i32 @dt_control_job_get_state(ptr noundef %0) #17
  %.not146 = icmp eq i32 %i.at, 4
  br i1 %.not146, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.ai, %bb.f, %.lr.ph, %bb.e
  %.099.lcssa = phi ptr [ null, %bb.e ], [ null, %.lr.ph ], [ %.1100121, %bb.f ], [ %.1100121, %bb.ai ]
  %.0.lcssa = phi ptr [ null, %bb.e ], [ null, %.lr.ph ], [ %.1129, %bb.f ], [ %.1129, %bb.ai ]
  %.061.lcssa = phi i32 [ -1, %bb.e ], [ -1, %.lr.ph ], [ %.162131, %bb.f ], [ %.162131, %bb.ai ]
  %.055.lcssa = phi i32 [ 0, %bb.e ], [ 0, %.lr.ph ], [ %i.es, %bb.f ], [ %i.es, %bb.ai ] ; 2 uses
  call void @g_free(ptr noundef %.0.lcssa) #17
  %i.au = zext i32 %.055.lcssa to i64
  %i.av = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, i64 noundef %i.au, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.av, i32 noundef %.055.lcssa) #17
  call void @dt_control_queue_redraw_center() #17
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !97
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond5 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.aj, label %bb.al

bb.g:                                             ; preds = %.lr.ph185, %bb.f
  %.099148184 = phi ptr [ null, %.lr.ph185 ], [ %.1100121, %bb.f ] ; 7 uses
  %.094149183 = phi double [ %i.as, %.lr.ph185 ], [ %.195123, %bb.f ] ; 8 uses
  %.091150182 = phi double [ 5.000000e-01, %.lr.ph185 ], [ %.192125, %bb.f ] ; 14 uses
  %.088151181 = phi ptr [ null, %.lr.ph185 ], [ %.189127, %bb.f ] ; 3 uses
  %.0152180 = phi ptr [ null, %.lr.ph185 ], [ %.1129, %bb.f ] ; 4 uses
  %.063153179 = phi double [ 0.000000e+00, %.lr.ph185 ], [ %i.et, %bb.f ]
  %.059155178 = phi i32 [ -1, %.lr.ph185 ], [ %.160133, %bb.f ] ; 4 uses
  %.057156177 = phi double [ %i.as, %.lr.ph185 ], [ %.158, %bb.f ] ; 2 uses
  %.056157176 = phi ptr [ %i.w, %.lr.ph185 ], [ %i.fh, %bb.f ] ; 2 uses
  %.055158175 = phi i32 [ 0, %.lr.ph185 ], [ %i.es, %bb.f ] ; 4 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !232 ; 7 uses
  %.not73 = icmp eq ptr %i.ba, null
  %i.bb = load ptr, ptr %.056157176, align 8, !tbaa !26 ; 13 uses
  br i1 %.not73, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.bc = call i32 @g_file_get_contents(ptr noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #17
  %.not.i75 = icmp eq i32 %i.bc, 0
  br i1 %.not.i75, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.be = and i32 %i.bd, 2
  %.not56.i = icmp eq i32 %i.be, 0
  br i1 %.not56.i, label %_control_import_image_copy.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.191, ptr noundef %i.bb) #17
  br label %_control_import_image_copy.exit.thread

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bf = call i32 @stat(ptr noundef %i.bb, ptr noundef nonnull %6) #17
  %i.bg = call i32 @dt_has_same_path_basename(ptr noundef %i.bb, ptr noundef %.088151181) #17
  %.not57.i = icmp eq i32 %i.bg, 0
  br i1 %.not57.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = call ptr @dt_copy_filename_extension(ptr noundef %.0152180, ptr noundef %i.bb) #17
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bi = call noalias ptr @g_path_get_basename(ptr noundef %i.bb) #17 ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !228
  call void @dt_exif_get_basic_data(ptr noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull %5) #17
  %i.bl = load i8, ptr %5, align 1, !tbaa !50
  %i.bm = icmp ne i8 %i.bl, 0
  %i.bn = icmp ne i32 %i.bf, 0
  %or.cond.i = or i1 %i.bn, %i.bm
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = call i32 @dt_datetime_unix_to_exif(ptr noundef nonnull %5, i64 noundef 24, ptr noundef nonnull %i.ae) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @dt_import_session_set_exif_basic_info(ptr noundef nonnull %i.ba, ptr noundef nonnull %5) #17
  call void @dt_import_session_set_filename(ptr noundef nonnull %i.ba, ptr noundef %i.bi) #17
  %i.bp = call ptr @dt_import_session_path(ptr noundef nonnull %i.ba, i32 noundef 0) #17
  %i.bq = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.192) #17
  %i.br = call ptr @dt_import_session_filename(ptr noundef nonnull %i.ba, i32 noundef %i.bq) #17
  %i.bs = call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.bp, ptr noundef %i.br, ptr noundef null) #17
  call void @g_free(ptr noundef %i.bi) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.054.i = phi ptr [ %i.bh, %bb.l ], [ %i.bs, %bb.o ] ; 9 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !228
  %i.bv = call i32 @g_file_set_contents(ptr noundef %.054.i, ptr noundef %i.bt, i64 noundef %i.bu, ptr noundef null) #17
  %.not58.i = icmp eq i32 %i.bv, 0                ; 2 uses
  br i1 %.not58.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !98
  %i.bx = and i32 %i.bw, 2
  %.not59.i = icmp eq i32 %i.bx, 0
  br i1 %.not59.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.193, ptr noundef %.054.i) #17
  br label %bb.aa

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.by = load i64, ptr %i.af, align 8, !tbaa !273
  store i64 %i.by, ptr %7, align 16, !tbaa !109
  %i.bz = load i64, ptr %i.ae, align 8, !tbaa !276
  store i64 %i.bz, ptr %i.ag, align 16, !tbaa !109
  %i.ca = load i64, ptr %i.ah, align 8, !tbaa !277
  %i.cb = sitofp reassoc nsz arcp contract afn i64 %i.ca to double
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.cb, 1.000000e-03
  %i.cd = fptosi double %i.cc to i64
  store i64 %i.cd, ptr %i.ai, align 8, !tbaa !111
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !278
  %i.cf = sitofp reassoc nsz arcp contract afn i64 %i.ce to double
  %i.cg = fmul reassoc nnan nsz arcp contract afn double %i.cf, 1.000000e-03
  %i.ch = fptosi double %i.cg to i64
  store i64 %i.ch, ptr %i.ak, align 8, !tbaa !111
  %i.ci = call i32 @utimes(ptr noundef %.054.i, ptr noundef nonnull %7) #17 ; 0 uses
  %i.cj = call i32 @dt_import_session_film_id(ptr noundef nonnull %i.ba) #17
  %i.ck = call i32 @dt_image_import(i32 noundef %i.cj, ptr noundef %.054.i, i32 noundef 0, i32 noundef 0) #17 ; 5 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.194, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.cm, ptr noundef %.054.i) #17
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8, !tbaa !262
  %i.cn = call ptr @g_file_new_for_path(ptr noundef %i.bb) #17 ; 2 uses
  %i.co = call ptr @g_file_query_info(ptr noundef %i.cn, ptr noundef nonnull @.str.195, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c) #17 ; 3 uses
  %i.cp = call ptr @g_file_info_get_name(ptr noundef %i.co) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cq = call i64 @g_file_info_get_attribute_uint64(ptr noundef %i.co, ptr noundef nonnull @.str.196) #17
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.cr = call i32 @dt_datetime_unix_to_exif(ptr noundef nonnull %i.e, i64 noundef 20, ptr noundef nonnull %i.d) #17 ; 0 uses
  %i.cs = call noalias ptr (ptr, ...) @g_strconcat(ptr noundef %i.cp, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.e, ptr noundef null) #17 ; 2 uses
  call void @dt_metadata_set(i32 noundef %i.ck, ptr noundef nonnull @.str.198, ptr noundef %i.cs, i32 noundef 0) #17
  %i.ct = call noalias ptr @g_path_get_basename(ptr noundef %.054.i) #17 ; 2 uses
  %i.cu = call i32 @g_strcmp0(ptr noundef %i.ct, ptr noundef %i.cp) #17
  %.not60.i = icmp eq i32 %i.cu, 0
  br i1 %.not60.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @dt_metadata_set(i32 noundef %i.ck, ptr noundef nonnull @.str.199, ptr noundef %i.cp, i32 noundef 0) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @g_free(ptr noundef %i.ct) #17
  call void @g_free(ptr noundef %i.cs) #17
  call void @g_object_unref(ptr noundef %i.co) #17
  call void @g_object_unref(ptr noundef %i.cn) #17
  %i.cv = zext nneg i32 %i.ck to i64
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = call ptr @g_list_prepend(ptr noundef %.099148184, ptr noundef nonnull %i.cw) #17
  %i.cy = and i32 %i.ck, 3
  %i.cz = icmp eq i32 %i.cy, 3
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !53
  call void @dt_collection_update_query(ptr noundef %i.da, i32 noundef 3, i32 noundef 45, ptr noundef null) #17
  call void @dt_control_queue_redraw_center() #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.2101 = phi ptr [ %i.cx, %bb.y ], [ %.099148184, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.r, %bb.q
  %.3102 = phi ptr [ %.099148184, %bb.q ], [ %.099148184, %bb.r ], [ %.2101, %bb.z ] ; 3 uses
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !45
  call void @g_free(ptr noundef %i.db) #17
  call void @g_free(ptr noundef %.0152180) #17
  br i1 %.not58.i, label %_control_import_image_copy.exit.thread110, label %_control_import_image_copy.exit

end_hunk_1
