Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/fetch_config?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@find_map_conf_file:bb.a
  %i.b = tail call i32 @xstrcmp(ptr noundef %i.a, ptr noundef %1) #13
  %.not = icmp eq i32 %i.b, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_config_response(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 625, ptr noundef nonnull @__func__.new_config_response) #13 ; 8 uses
  %spec.store.select = select i1 %0, ptr @slurmd_config_files, ptr @client_config_files ; 2 uses
  %i.b = tail call ptr @list_create(ptr noundef nonnull @destroy_config_file) #13
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %spec.store.select, align 16 ; 2 uses
  %.not45 = icmp eq ptr %i.c, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  br i1 %0, label %.preheader44, label %bb.o

.preheader44:                                     ; preds = %._crit_edge
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1000), align 8 ; 2 uses
  %.not52 = icmp eq i32 %i.d, 0
  br i1 %.not52, label %.preheader, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.preheader44
  %.pre61 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 992), align 8
  br label %.lr.ph48

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ]
  %i.e = phi ptr [ %i.l, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i1 noundef zeroext false)
  %i.f = load ptr, ptr @conf_includes_list, align 8 ; 2 uses
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @list_find_first_ro(ptr noundef nonnull %i.f, ptr noundef nonnull @find_map_conf_file, ptr noundef nonnull %i.e) #13 ; 2 uses
  %.not42 = icmp eq ptr %i.g, null
  br i1 %.not42, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.i, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @list_for_each_ro(ptr noundef nonnull %i.i, ptr noundef nonnull @_foreach_include_file, ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.store.select, i64 %indvars.iv.next
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %bb.g, %.preheader44
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 376), align 8 ; 2 uses
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %._crit_edge51, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %.preheader
  %.pre64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 368), align 8
  br label %.lr.ph50

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.g
  %i.n = phi i32 [ %i.d, %.lr.ph48.preheader ], [ %i.s, %bb.g ]
  %i.o = phi ptr [ %.pre61, %.lr.ph48.preheader ], [ %i.t, %bb.g ] ; 2 uses
  %indvars.iv55 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next56, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv55
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %.not40 = icmp eq i8 %i.r, 47
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph48
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.q, i1 noundef zeroext true)
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 992), align 8
  %.pre62 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1000), align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph48, %bb.f
  %i.s = phi i32 [ %i.n, %.lr.ph48 ], [ %.pre62, %bb.f ] ; 2 uses
  %i.t = phi ptr [ %i.o, %.lr.ph48 ], [ %.pre, %bb.f ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.u = zext i32 %i.s to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next56, %i.u
  br i1 %i.v, label %.lr.ph48, label %.preheader, !llvm.loop !22

._crit_edge51:                                    ; preds = %bb.i, %.preheader
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1528), align 8 ; 3 uses
  %.not35 = icmp eq ptr %i.w, null
  br i1 %.not35, label %bb.l, label %bb.j

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %bb.i
  %i.x = phi i32 [ %i.m, %.lr.ph50.preheader ], [ %i.ac, %bb.i ]
  %i.y = phi ptr [ %.pre64, %.lr.ph50.preheader ], [ %i.ad, %bb.i ] ; 2 uses
  %indvars.iv58 = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next59, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv58
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %.not39 = icmp eq i8 %i.ab, 47
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph50
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, i1 noundef zeroext true)
  %.pre63 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 368), align 8
  %.pre65 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 376), align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph50, %bb.h
  %i.ac = phi i32 [ %i.x, %.lr.ph50 ], [ %.pre65, %bb.h ] ; 2 uses
  %i.ad = phi ptr [ %i.y, %.lr.ph50 ], [ %.pre63, %bb.h ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ae = zext i32 %i.ac to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next59, %i.ae
  br i1 %i.af, label %.lr.ph50, label %._crit_edge51, !llvm.loop !23

bb.j:                                             ; preds = %._crit_edge51
  %i.ag = load i8, ptr %i.w, align 1
  %.not36 = icmp eq i8 %i.ag, 47
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.w, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge51
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1504), align 8 ; 3 uses
  %.not37 = icmp eq ptr %i.ah, null
  br i1 %.not37, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i8, ptr %i.ah, align 1
  %.not38 = icmp eq i8 %i.ai, 47
  br i1 %.not38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah, i1 noundef zeroext true)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %._crit_edge
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @destroy_config_file(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i32 @close(i32 noundef %i.e) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #13
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_load_conf2list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = tail call ptr @get_extra_conf_path(ptr noundef %1) #13 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = tail call ptr @create_mmap_buf(ptr noundef %i.c) #13 ; 4 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %.not = icmp eq ptr %i.d, null                  ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #16
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 22
  br i1 %.not18, label %bb.c, label %3

3:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %3, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %3 ], [ true, %bb.b ] ; 2 uses
  %i.g = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 567, ptr noundef nonnull @__func__._load_conf2list) #13 ; 5 uses
  %i.h = zext i1 %.0 to i8
  store i8 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.b, ptr %i.i, align 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = call ptr @xstrndup(ptr noundef %i.k, i64 noundef %i.n) #13
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = call ptr @xstrdup(ptr noundef %1) #13
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8
  call void @list_append(ptr noundef %i.s, ptr noundef nonnull %i.g) #13
  %i.t = call i32 @get_log_level() #13
  %i.u = icmp sgt i32 %i.t, 6
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = select i1 %.0, ptr @.str.55, ptr @.str.56
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__._load_conf2list, ptr noundef %1, ptr noundef nonnull %i.v) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free_buf(ptr noundef nonnull %i.d) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare ptr @list_find_first_ro(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @list_for_each_ro(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_include_file(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  tail call fastcc void @_load_conf2list(ptr noundef %1, ptr noundef %0, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @grab_include_directives() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %0 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ]
  %i.b = phi ptr [ @.str.47, %bb.a ], [ %i.j, %bb.g ] ; 2 uses
  %i.c = load ptr, ptr @conf_includes_list, align 8 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = call ptr @list_find_first_ro(ptr noundef nonnull %i.c, ptr noundef nonnull @find_map_conf_file, ptr noundef %i.b) #13
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = call ptr @get_extra_conf_path(ptr noundef %i.b) #13 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call i32 @stat(ptr noundef %i.e, ptr noundef nonnull %0) #13
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i32 @s_p_parse_file(ptr noundef null, ptr noundef null, ptr noundef %i.g, i32 noundef 4, ptr noundef null) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @slurmd_config_files, i64 %indvars.iv.next
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !24
}

declare i32 @s_p_parse_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @host_has_addr_family(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @init_buf(i32 noundef) local_unnamed_addr #3

declare i32 @unpack_config_response_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_buf(ptr noundef) local_unnamed_addr #3

declare void @slurm_conf_unlock() local_unnamed_addr #3

declare i32 @conn_g_init() local_unnamed_addr #3

declare i32 @conn_g_load_ca_cert(ptr noundef) local_unnamed_addr #3

declare ptr @list_peek(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_init_minimal_conf_server_config(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  %i.c = call i32 @list_for_each(ptr noundef %0, ptr noundef nonnull @_print_controllers, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30) #13
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 136), align 8 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.32) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call i32 @dump_to_memfd(ptr noundef nonnull @.str.33, ptr noundef %i.e, ptr noundef nonnull %i.b)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @slurm_conf_reinit(ptr noundef %i.g) #13 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @slurm_init(ptr noundef %i.g) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = call i32 @close(i32 noundef %i.f) #13    ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

declare void @pack_config_response_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_print_controllers(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2
  %i.d = zext i16 %i.c to i32
  tail call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %1, ptr noundef nonnull @.str.35, i32 noundef %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.e) #13
end_hunk_0
