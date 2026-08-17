inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@set_usage_information:bb.a

bb.aa:                                            ; preds = %bb.y
  %i.bm = load ptr, ptr @qos_month_table, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.bn = load ptr, ptr @wckey_month_table, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.bo = load ptr, ptr @cluster_month_table, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.bp = call ptr @slurmdbd_msg_type_2_str(i32 noundef %1, i32 noundef 1) #11
  %i.bq = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef %i.bp) #11 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.x, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0 = phi ptr [ %i.g, %bb.w ], [ %i.ax, %bb.s ], [ %i.ay, %bb.t ], [ %i.az, %bb.u ], [ %i.ba, %bb.v ], [ %i.g, %bb.ad ], [ %i.bl, %bb.z ], [ %i.bm, %bb.aa ], [ %i.bn, %bb.ab ], [ %i.bo, %bb.ac ], [ %i.g, %bb.x ]
  %i.br = load i64, ptr %i.a, align 8
  store i64 %i.br, ptr %2, align 8
  %i.bs = load i64, ptr %i.b, align 8
  store i64 %i.bs, ptr %3, align 8
  store ptr %.0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %.018 = phi i32 [ 0, %bb.ae ], [ -1, %bb.o ], [ -1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.018
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @slurm_mktime(ptr noundef) local_unnamed_addr #1

declare ptr @slurmdbd_msg_type_2_str(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_user_min_admin_level(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.b = icmp ne i32 %1, %i.a
  %i.c = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %_is_user_min_admin_level.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @assoc_mgr_get_admin_level(ptr noundef %0, i32 noundef %1) #11
  %i.e = icmp uge i32 %i.d, %2
  br label %_is_user_min_admin_level.exit

_is_user_min_admin_level.exit:                    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_user_min_admin_level_locked(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1232), align 8
  %i.b = icmp ne i32 %1, %i.a
  %i.c = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %_is_user_min_admin_level.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @assoc_mgr_get_admin_level_locked(ptr noundef %0, i32 noundef %1) #11
  %i.e = icmp uge i32 %i.d, %2
  br label %_is_user_min_admin_level.exit

_is_user_min_admin_level.exit:                    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_user_any_coord(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @assoc_mgr_fill_in_user(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false) #11
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str, ptr noundef %i.c, i32 noundef %i.e) #11 ; 0 uses
  br label %_is_user_any_coord_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.h, null
  br i1 %.not8.i, label %_is_user_any_coord_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @slurm_list_count(ptr noundef nonnull %i.h) #11
  %i.j = icmp ne i32 %i.i, 0
  br label %_is_user_any_coord_internal.exit

_is_user_any_coord_internal.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_user_any_coord_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @assoc_mgr_fill_in_user(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i1 noundef zeroext true) #11
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str, ptr noundef %i.c, i32 noundef %i.e) #11 ; 0 uses
  br label %_is_user_any_coord_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.h, null
  br i1 %.not8.i, label %_is_user_any_coord_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @slurm_list_count(ptr noundef nonnull %i.h) #11
  %i.j = icmp ne i32 %i.i, 0
  br label %_is_user_any_coord_internal.exit

_is_user_any_coord_internal.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @acct_get_db_name() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  switch i8 %i.e, label %bb.d [
    i8 0, label %.thread
    i8 46, label %bb.b
    i8 47, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader, %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.g = tail call i32 @slurm_get_log_level() #11
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.acct_get_db_name, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.14) #11
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader, !llvm.loop !8

bb.e:                                             ; preds = %bb.b, %bb.c
  %.pr = load i8, ptr %i.f, align 1
  %.not17 = icmp eq i8 %.pr, 0
  br i1 %.not17, label %.thread, label %bb.f

.thread:                                          ; preds = %.preheader, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %.thread
  %.str.14.sink = phi ptr [ @.str.14, %bb.a ], [ %i.c, %.thread ], [ @.str.14, %bb.e ]
  %i.i = tail call ptr @slurm_xstrdup(ptr noundef nonnull %.str.14.sink) #11
  ret ptr %i.i
}

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -9223372036854775808, 9223372036854775807) i64 @archive_setup_end_time(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.tm, align 8                 ; 12 uses
  store i64 %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = icmp eq i32 %1, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16) #11 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %sext = shl i32 %1, 16
  %i.d = ashr exact i32 %sext, 16                 ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.17, i32 noundef %i.d) #11 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #11
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.a, align 8
  %i.i = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.18, i64 noundef %i.h) #11 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.j, align 4
  %i.k = and i32 %1, 65536
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %4 = load i32, ptr %3, align 8
  %5 = sub nsw i32 %4, %i.d
  store i32 %5, ptr %3, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.l = and i32 %1, 131072
  %.not17.a = icmp eq i32 %i.l, 0
  br i1 %.not17.a, label %9, label %bb.j

bb.j:                                             ; preds = %bb.i
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %7 = load i32, ptr %i.m, align 4
  %8 = sub nsw i32 %7, %i.d
  store i32 %8, ptr %i.m, align 4
  br label %bb.m

9:                                                ; preds = %bb.i
  %10 = and i32 %1, 262144
  %.not18 = icmp eq i32 %10, 0
  br i1 %.not18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %9
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %14 = load i32, ptr %13, align 8
  %15 = sub nsw i32 %14, %i.d
  store i32 %15, ptr %13, align 8
  br label %bb.m

bb.l:                                             ; preds = %9
  %16 = tail call ptr @__errno_location() #12
  store i32 22, ptr %16, align 4
  %17 = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.19) #11 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.h
  %i.n = call i64 @slurm_mktime(ptr noundef nonnull %2) #11
  %i.o = add nsw i64 %i.n, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.o, %bb.m ], [ 0, %bb.l ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @archive_run_script(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca ptr, align 8                      ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  store ptr %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = call i32 @stat(ptr noundef %i.d, ptr noundef nonnull %3) #11
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.20, ptr noundef %i.h) #11 ; 0 uses
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 32768
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #12
  store i32 13, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.21, ptr noundef %i.n) #11 ; 0 uses
  br label %bb.ar

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = tail call i32 @access(ptr noundef %i.p, i32 noundef 1) #11
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__errno_location() #12
  store i32 13, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.22, ptr noundef %i.t) #11 ; 0 uses
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.v = tail call ptr @slurm_env_array_create() #11
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %1) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not88 = icmp eq i32 %i.y, -2
  br i1 %.not88, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.y) ; 2 uses
  %.not89 = icmp eq i64 %i.z, 0
  br i1 %.not89, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.25) #11 ; 0 uses
  br label %bb.ar

bb.j:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.x, align 8             ; 2 uses
  %.not90 = icmp eq i32 %i.ab, -2
  %i.ac = lshr i32 %i.ab, 19
  %.lobit = and i32 %i.ac, 1
  %i.ad = select i1 %.not90, i32 0, i32 %.lobit
  %i.ae = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %i.ad) #11 ; 0 uses
  %i.af = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i64 noundef %i.z) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not91 = icmp eq i32 %i.ah, -2
  br i1 %.not91, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.ah) ; 2 uses
  %.not92 = icmp eq i64 %i.ai, 0
  br i1 %.not92, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30) #11 ; 0 uses
  br label %bb.ar

bb.n:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not93 = icmp eq i32 %i.ak, -2
  %i.al = lshr i32 %i.ak, 19
  %.lobit94 = and i32 %i.al, 1
  %i.am = select i1 %.not93, i32 0, i32 %.lobit94
  %i.an = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, i32 noundef %i.am) #11 ; 0 uses
  %i.ao = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i64 noundef %i.ai) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %.not95 = icmp eq i32 %i.aq, -2
  br i1 %.not95, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.ag, align 4
  %i.as = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.ar) ; 2 uses
  %.not96 = icmp eq i64 %i.as, 0
  br i1 %.not96, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.30) #11 ; 0 uses
  br label %bb.ar

bb.r:                                             ; preds = %bb.p
  %i.au = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not97 = icmp eq i32 %i.au, -2
  %i.av = lshr i32 %i.au, 19
  %.lobit98 = and i32 %i.av, 1
  %i.aw = select i1 %.not97, i32 0, i32 %.lobit98
  %i.ax = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef %i.aw) #11 ; 0 uses
  %i.ay = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i64 noundef %i.as) #11 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %.not99 = icmp eq i32 %i.ba, -2
  br i1 %.not99, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.ba) ; 2 uses
  %.not100 = icmp eq i64 %i.bb, 0
  br i1 %.not100, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.35) #11 ; 0 uses
  br label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.bd = load i32, ptr %i.az, align 4            ; 2 uses
  %.not101 = icmp eq i32 %i.bd, -2
  %i.be = lshr i32 %i.bd, 19
  %.lobit102 = and i32 %i.be, 1
  %i.bf = select i1 %.not101, i32 0, i32 %.lobit102
  %i.bg = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef %i.bf) #11 ; 0 uses
  %i.bh = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, i64 noundef %i.bb) #11 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %.not103 = icmp eq i32 %i.bj, -2
  br i1 %.not103, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.bj) ; 2 uses
  %.not104 = icmp eq i64 %i.bk, 0
  br i1 %.not104, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.38) #11 ; 0 uses
  br label %bb.ar

bb.z:                                             ; preds = %bb.x
  %i.bm = load i32, ptr %i.bi, align 8            ; 2 uses
  %.not105 = icmp eq i32 %i.bm, -2
  %i.bn = lshr i32 %i.bm, 19
  %.lobit106 = and i32 %i.bn, 1
  %i.bo = select i1 %.not105, i32 0, i32 %.lobit106
  %i.bp = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.27, i32 noundef %i.bo) #11 ; 0 uses
  %i.bq = call i32 (ptr, ptr, ptr, ...) @slurm_env_array_append_fmt(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, i64 noundef %i.bk) #11 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %.not107 = icmp eq i32 %i.bs, -2
  br i1 %.not107, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = call i64 @archive_setup_end_time(i64 noundef %2, i32 noundef %i.bs) ; 2 uses
  %.not108 = icmp eq i64 %i.bt, 0
  br i1 %.not108, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bu = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.41) #11 ; 0 uses
  br label %bb.ar
end_hunk_0
