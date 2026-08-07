inline.NumInlined: 40
inline.NumDeleted: 7
begin_hunk_0_@dt_control_progress_destroy:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #6 ; 0 uses
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !94
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #6 ; 0 uses
  %.pre.i = load double, ptr %i.x, align 8, !tbaa !87
  br label %dt_control_progress_get_progress.exit.i

dt_control_progress_get_progress.exit.i:          ; preds = %bb.f, %.lr.ph.i
  %i.af = phi double [ %.pre.i, %bb.f ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.0.i.i = phi nsz double [ %i.ad, %bb.f ], [ -1.000000e+00, %.lr.ph.i ] ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt double %i.af, %.0.i.i
  %..i = select reassoc nsz arcp contract afn i1 %i.ag, double %i.af, double %.0.i.i ; 2 uses
  store double %..i, ptr %i.x, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.0.i = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %.not21.i = icmp eq ptr %i.aj, null
  br i1 %.not21.i, label %_global_progress_end.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.ak = tail call ptr @g_variant_type_checked_(ptr noundef nonnull @.str) #6
  call void @g_variant_builder_init(ptr noundef nonnull %1, ptr noundef %i.ak) #6
  %i.al = load i64, ptr %i.u, align 8, !tbaa !86
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @g_variant_new_boolean(i32 noundef 0) #6
  call void (ptr, ptr, ...) @g_variant_builder_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %i.an) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = load double, ptr %i.x, align 8, !tbaa !87
  %i.ap = call ptr @g_variant_new_double(double noundef %i.ao) #6
  call void (ptr, ptr, ...) @g_variant_builder_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef %i.ap) #6
  %i.aq = call ptr (ptr, ...) @g_variant_new(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #6
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 200), align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = call i32 @g_dbus_connection_emit_signal(ptr noundef %i.at, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %i.aq, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %.not22.i = icmp eq ptr %i.av, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef %i.ax) #6
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @g_error_free(ptr noundef %i.ay) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 200), align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58
  call void @g_object_unref(ptr noundef %i.bb) #6
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 200), align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_global_progress_end.exit

_global_progress_end.exit:                        ; preds = %bb.l, %bb.g, %._crit_edge.i, %bb.d
  %i.be = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #6 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.bf) #6 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  call void @g_free(ptr noundef %i.bi) #6
  call void @free(ptr noundef %0) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_global_progress_end.exit
  ret void
}

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @dt_control_progress_make_cancellable(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !66 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.g, align 8, !tbaa !97
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #6 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3912
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3936
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90
  tail call void %i.n(ptr noundef nonnull %i.l, ptr noundef %i.p, ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_progress_attach_job(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %dt_control_progress_make_cancellable.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !66 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %dt_control_progress_make_cancellable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_control_progress_cancel_callback, ptr %i.f, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.g, align 8, !tbaa !97
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3872 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #6 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3912
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3936
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90
  tail call void %i.n(ptr noundef nonnull %i.l, ptr noundef %i.p, ptr noundef nonnull %0) #6, !inline_history !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #6 ; 0 uses
  br label %dt_control_progress_make_cancellable.exit

dt_control_progress_make_cancellable.exit:        ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_control_progress_cancel_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @dt_control_job_cancel(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_progress_cancel(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.e = icmp eq ptr %i.d, null
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #6 ; 0 uses
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.h = icmp eq ptr %i.g, @_control_progress_cancel_callback
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  tail call void @dt_control_job_cancel(ptr noundef %i.j) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  tail call void %i.l(ptr noundef nonnull %0, ptr noundef %i.n) #6
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_progress_set_progress(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct._GVariantBuilder, align 8   ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !66 ; 5 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #6 ; 0 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt double %1, 1.000000e+00
  %i.h = fcmp reassoc nsz arcp contract afn olt double %1, 0.000000e+00
  %i.i = select reassoc nsz arcp contract afn i1 %i.h, double 0.000000e+00, double %1
  %i.j = select reassoc nsz arcp contract afn i1 %i.g, double 1.000000e+00, double %i.i
  store double %i.j, ptr %0, align 8, !tbaa !94
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #6 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3872 ; 2 uses
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.l) #6 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3912
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3944
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  tail call void %i.q(ptr noundef nonnull %i.o, ptr noundef %i.s, double noundef %1) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %_global_progress_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 3864 ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !87 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt double %i.w, %1
  %..i = select reassoc nsz arcp contract afn i1 %i.x, double %i.w, double %1
  store double %..i, ptr %i.v, align 8, !tbaa !87
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 200), align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_global_progress_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %.not10.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i, label %_global_progress_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ab = tail call ptr @g_variant_type_checked_(ptr noundef nonnull @.str) #6
  call void @g_variant_builder_init(ptr noundef nonnull %2, ptr noundef %i.ab) #6
  %i.ac = load double, ptr %i.v, align 8, !tbaa !87
  %i.ad = call ptr @g_variant_new_double(double noundef %i.ac) #6
  call void (ptr, ptr, ...) @g_variant_builder_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef %i.ad) #6
  %i.ae = call ptr (ptr, ...) @g_variant_new(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #6
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 200), align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = call i32 @g_dbus_connection_emit_signal(ptr noundef %i.ah, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %i.ae, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %.not11.i = icmp eq ptr %i.aj, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef %i.al) #6
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @g_error_free(ptr noundef %i.am) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_global_progress_set.exit

_global_progress_set.exit:                        ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.l) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_global_progress_set.exit
  ret void
}

; Function Attrs: nounwind uwtable
define double @dt_control_progress_get_progress(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = load double, ptr %0, align 8, !tbaa !94
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi nsz double [ %i.c, %bb.b ], [ -1.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define ptr @dt_control_progress_get_message(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str.10, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @dt_control_progress_set_message(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !66 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %g_strdup_inline.exit, label %bb.d

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  tail call void @g_free(ptr noundef %i.g) #6
  %i.h = tail call noalias ptr @g_strdup(ptr noundef %1) #6
  store ptr %i.h, ptr %i.f, align 8, !tbaa !67
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #6 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3912
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3952
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  tail call void %i.o(ptr noundef nonnull %i.m, ptr noundef %i.q, ptr noundef %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %g_strdup_inline.exit
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_control_progress_set_gui_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.c, align 8, !tbaa !90
end_hunk_0
