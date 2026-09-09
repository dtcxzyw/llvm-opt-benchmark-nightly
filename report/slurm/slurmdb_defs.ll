Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmdb_defs?download=true
inline.NumInlined: 65
inline.NumDeleted: 17
begin_hunk_0_@str_2_qos_flags:bb.a

bb.g:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 13
  br i1 %exitcond.not.i, label %bb.i, label %.preheader.i, !llvm.loop !30

.preheader.i:                                     ; preds = %bb.f, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @slurmdb_qos_flags_map, i64 %indvars.iv.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0930) #19
  %i.p = call i32 @xstrncasecmp(ptr noundef nonnull %.0930, ptr noundef %i.n, i64 noundef %i.o) #18
  %.not19.i = icmp eq i32 %i.p, 0
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.preheader.i
  %i.q = load i32, ptr %i.l, align 8
  %i.r = or i32 %i.q, %.029
  br label %_str_2_qos_flags.exit

bb.i:                                             ; preds = %bb.g
  %i.s = call i32 @get_log_level() #18
  %i.t = icmp sgt i32 %i.s, 4
  br i1 %i.t, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__._str_2_qos_flags, ptr noundef nonnull %.0930) #18
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.f, %bb.e, %bb.i, %bb.j
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  br label %bb.n

_str_2_qos_flags.exit:                            ; preds = %bb.h, %.lr.ph
  %.3 = phi i32 [ %.029, %.lr.ph ], [ %i.r, %bb.h ] ; 5 uses
  %i.u = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not14 = icmp eq ptr %i.u, null
  br i1 %.not14, label %.critedge, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %_str_2_qos_flags.exit
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  %.not22 = icmp eq i32 %.3, 0
  br i1 %.not22, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge
  switch i32 %1, label %bb.n [
    i32 43, label %bb.l
    i32 45, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.v = or i32 %.3, 536870912
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = or i32 %.3, 1073741824
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread36, %bb.m, %bb.l, %bb.k, %.critedge.thread, %.critedge, %bb.c, %bb.b
  %.010 = phi i32 [ 268435456, %bb.b ], [ -805306369, %bb.c ], [ %.3, %bb.k ], [ %i.v, %bb.l ], [ %i.w, %bb.m ], [ 268435456, %.critedge.thread ], [ 268435456, %.critedge ], [ 268435456, %.critedge.thread36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slurmdb_res_flags_str(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  %i.b = and i32 %0, 268435456
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xstrdup(ptr noundef nonnull @.str.12) #18
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %0, 536870912
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = and i32 %0, 1073741824
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.37) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = zext i32 %0 to i64                       ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not8 = icmp eq i64 %i.g, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.38) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = and i64 %i.f, 2
  %.not9 = icmp eq i64 %i.h, 0
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.39) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #19
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  store i8 0, ptr %i.l, align 1
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 1073741828) i32 @str_2_res_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40) #18 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %0, ptr noundef null, i32 noundef 10) #18, !inline_history !2
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 4294967295
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull %0) #18 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call ptr @strtok_r(ptr noundef %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not1820 = icmp eq ptr %i.h, null
  br i1 %.not1820, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  br label %bb.i

.lr.ph:                                           ; preds = %bb.d, %_str_2_res_flags.exit
  %.022 = phi ptr [ %i.l, %_str_2_res_flags.exit ], [ %i.h, %bb.d ] ; 2 uses
  %.01421 = phi i32 [ %i.k, %_str_2_res_flags.exit ], [ 0, %bb.d ]
  %i.i = call ptr @xstrcasestr(ptr noundef nonnull %.022, ptr noundef nonnull @.str.234) #18
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %_str_2_res_flags.exit

bb.e:                                             ; preds = %.lr.ph
  %i.j = call ptr @xstrcasestr(ptr noundef nonnull %.022, ptr noundef nonnull @.str.235) #18
  %.not2.i = icmp eq ptr %i.j, null
  %..i = select i1 %.not2.i, i32 0, i32 2
  br label %_str_2_res_flags.exit

_str_2_res_flags.exit:                            ; preds = %.lr.ph, %bb.e
  %.0.i = phi i32 [ 1, %.lr.ph ], [ %..i, %bb.e ]
  %i.k = or i32 %.0.i, %.01421                    ; 5 uses
  %i.l = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %_str_2_res_flags.exit
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  switch i32 %1, label %bb.i [
    i32 43, label %bb.g
    i32 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = or disjoint i32 %i.k, 536870912
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = or disjoint i32 %i.k, 1073741824
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.h, %bb.g, %._crit_edge, %bb.f, %bb.c, %bb.b
  %.015 = phi i32 [ 268435456, %bb.b ], [ 268435456, %bb.c ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.k, %bb.f ], [ 268435456, %._crit_edge ], [ 268435456, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @slurmdb_res_type_str(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %switch.selectcmp = icmp eq i32 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.42, ptr @.str.43
  %switch.selectcmp1 = icmp eq i32 %0, 0
  %switch.select2 = select i1 %switch.selectcmp1, ptr @.str.41, ptr %switch.select
  ret ptr %switch.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @slurmdb_admin_level_str(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.slurmdb_admin_level_str, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @str_2_slurmdb_admin_level(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @xstrncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef 1) #18
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @xstrncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, i64 noundef 1) #18
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @xstrncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, i64 noundef 1) #18
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @xstrncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, i64 noundef 1) #18
  %.not9 = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not9, i32 3, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slurmdb_ping(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 176, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2271, ptr noundef nonnull @__func__.slurmdb_ping) #18 ; 9 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.c = tail call ptr @xstrdup(ptr noundef %i.b) #18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 17, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 -1, ptr %i.f, align 4
  %i.g = tail call ptr @xstrdup(ptr noundef %0) #18
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.g, ptr %i.h, align 8
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 64), align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i16 %i.i, ptr %i.j, align 8
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.l = zext i16 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 1000
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i16 11520, ptr %i.o, align 8
  %i.p = tail call ptr @__errno_location() #21    ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = tail call i32 @slurm_persist_conn_open(ptr noundef %i.a) #18 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.p, align 4              ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  %spec.select = select i1 %.not, i32 -1, i32 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.q, %bb.a ], [ %spec.select, %bb.b ]
  tail call void @slurm_persist_conn_destroy(ptr noundef nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @slurm_persist_conn_open(ptr noundef) local_unnamed_addr #1

declare void @slurm_persist_conn_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @slurmdb_ping_all() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 40), align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 24), align 8
  %.not21 = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not21, i64 2, i64 3
  %i.c = tail call ptr @slurm_xcalloc(i64 noundef %spec.select, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2322, ptr noundef nonnull @__func__.slurmdb_ping_all) #18 ; 14 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 40), align 8
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %i.e, align 8
  %i.f = tail call { i64, i64 } @timespec_now() #18 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  store i64 %i.g, ptr %2, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = tail call i32 @slurmdb_ping(ptr noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.j, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = zext i1 %.not.i to i8
  store i8 %i.m, ptr %i.l, align 8
  %i.n = tail call { i64, i64 } @timespec_now() #18 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  store i64 %i.o, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.q = call i64 @timer_get_duration(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.s = load i8, ptr %i.l, align 8, !range !14, !noundef !15
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 24), align 8 ; 2 uses
  %.not22 = icmp eq ptr %i.u, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 1, ptr %i.w, align 8
  %i.x = call { i64, i64 } @timespec_now() #18    ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  store i64 %i.y, ptr %0, align 8
  %.sroa.42.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.42.0..sroa_idx.i23, align 8
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = call i32 @slurmdb_ping(ptr noundef %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.ab, ptr %i.ac, align 4
  %.not.i24 = icmp eq i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = zext i1 %.not.i24 to i8
  store i8 %i.ae, ptr %i.ad, align 8
  %i.af = call { i64, i64 } @timespec_now() #18   ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  store i64 %i.ag, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i25, align 8
  %i.ai = call i64 @timer_get_duration(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
end_hunk_0
