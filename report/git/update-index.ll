Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/update-index?download=true
inline.NumInlined: 96
inline.NumDeleted: 32
begin_hunk_0_@add_cacheinfo:bb.a

create_ce_mode.exit:                              ; preds = %bb.c, %bb.d, %bb.e, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.f ], [ 40960, %bb.c ], [ 16384, %bb.d ], [ 57344, %bb.e ], [ 57344, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i32 %.0.i, ptr %i.w, align 4, !tbaa !12
  %i.x = load i32, ptr @assume_unchanged, align 4, !tbaa !12
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %create_ce_mode.exit
  %i.y = or disjoint i32 %i.o, 32768
  store i32 %i.y, ptr %i.p, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %create_ce_mode.exit
  %i.z = load i32, ptr @allow_add, align 4, !tbaa !12
  %.not23 = icmp ne i32 %i.z, 0
  %i.aa = zext i1 %.not23 to i32
  %i.ab = load i32, ptr @allow_replace, align 4, !tbaa !12
  %.not24 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not24, i32 0, i32 2
  %i.ad = or disjoint i32 %i.ac, %i.aa
  %i.ae = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = tail call i32 @add_index_entry(ptr noundef %i.ag, ptr noundef nonnull %i.i, i32 noundef %i.ad) #16
  %.not25 = icmp eq i32 %i.ah, 0
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.97, ptr noundef nonnull %2) #16 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @report(ptr noundef nonnull @.str.98, ptr noundef nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.b
  %.0 = phi i32 [ -1, %bb.i ], [ 0, %bb.j ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @get_oid_hex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @parse_oid_hex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @verify_path(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @make_empty_cache_entry(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @add_index_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @remove_file_from_index(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_unresolve(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %unresolve_one.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %unresolve_one.exit ] ; 2 uses
  %.01112 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.i, %unresolve_one.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.e = tail call ptr @prefix_path(ptr noundef %i.d, ptr noundef %2, i32 noundef %3, ptr noundef %i.c) #16 ; 3 uses
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %unresolve_one.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call ptr @string_list_lookup(ptr noundef nonnull %i.j, ptr noundef %i.e) #16 ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %unresolve_one.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = tail call i32 @unmerge_index_entry(ptr noundef %i.n, ptr noundef %i.e, ptr noundef %i.p, i32 noundef 0) #16
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.r) #16
  store ptr null, ptr %i.o, align 8, !tbaa !122
  %i.s = or i32 %i.q, %.01112
  br label %unresolve_one.exit

unresolve_one.exit:                               ; preds = %.lr.ph, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.c ], [ %.01112, %.lr.ph ], [ %.01112, %bb.b ] ; 2 uses
  tail call void @free(ptr noundef %i.e) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %unresolve_one.exit, %bb.a
  %.011.lcssa = phi i32 [ 0, %bb.a ], [ %.0.i, %unresolve_one.exit ]
  ret i32 %.011.lcssa
}

declare ptr @string_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @unmerge_index_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @parse_pathspec(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @refs_read_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #4

declare void @discard_cache_entry(ptr noundef) local_unnamed_addr #4

declare void @ensure_full_index(ptr noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare void @clear_pathspec(ptr noundef) local_unnamed_addr #4

declare i32 @match_pathspec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @get_tree_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @resolve_undo_clear_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mark_ce_flags(ptr noundef %0, i32 noundef range(i32 32768, 1073741825) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.b = trunc i64 %i.a to i32
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call i32 @index_name_pos(ptr noundef %i.e, ptr noundef nonnull %0, i32 noundef %i.b) #16 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = zext nneg i32 %i.f to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = tail call i32 @fsm_settings__get_mode(ptr noundef %i.p) #16
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %mark_fsmonitor_invalid.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !12
  %i.u = and i32 %i.t, -2097153
  store i32 %i.u, ptr %i.s, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 108 ; 2 uses
  tail call void @untracked_cache_invalidate_path(ptr noundef nonnull %i.j, ptr noundef nonnull %i.v, i32 noundef 1) #16
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_fsmonitor, i64 8), align 8, !tbaa !125
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_fsmonitor, i64 12), align 4
  %.not5.i = trunc i8 %i.x to i1
  %.not.i = select i1 %.not.i.i, i1 %.not5.i, i1 false
  br i1 %.not.i, label %mark_fsmonitor_invalid.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str.113, i32 noundef 67, ptr noundef nonnull @trace_fsmonitor, ptr noundef nonnull @.str.114, ptr noundef nonnull %i.v) #16
  br label %mark_fsmonitor_invalid.exit

mark_fsmonitor_invalid.exit:                      ; preds = %bb.b, %bb.c, %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mark_fsmonitor_invalid.exit
  %i.y = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 432
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.l
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !12
  %i.ag = or i32 %i.af, %1                        ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %mark_fsmonitor_invalid.exit
  %i.ah = xor i32 %1, -1
  %i.ai = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 432
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.l
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !12
  %i.aq = and i32 %i.ap, %i.ah                    ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ]
  %i.as = phi ptr [ %i.an, %bb.f ], [ %i.ad, %bb.e ]
  %i.at = phi ptr [ %i.ak, %bb.f ], [ %i.aa, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.av = or i32 %i.ar, 134217728
  store i32 %i.av, ptr %i.au, align 8, !tbaa !12
  tail call void @cache_tree_invalidate_path(ptr noundef nonnull %i.at, ptr noundef nonnull %0) #16
  %i.aw = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 432
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !71
  %i.bb = or i32 %i.ba, 2
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @process_path(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 6 uses
  %i.c = tail call i32 @has_symlink_leading_path(ptr noundef nonnull %0, i32 noundef %i.b) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.115, ptr noundef nonnull %0) #16 ; 0 uses
  br label %process_lstat_error.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call i32 @index_name_pos(ptr noundef %i.g, ptr noundef nonnull %0, i32 noundef %i.b) #16 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.n = zext nneg i32 %i.h to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !12
  %i.s = and i32 %i.r, 1073741824
  %.not28 = icmp eq i32 %i.s, 0
  br i1 %.not28, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr @ignore_skip_worktree_entries, align 4, !tbaa !12
  %i.u = icmp eq i32 %i.t, 0
  %i.v = load i32, ptr @allow_remove, align 4
  %i.w = icmp ne i32 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.g, label %process_lstat_error.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @remove_file_from_index(ptr noundef nonnull %i.l, ptr noundef nonnull %0) #16
  %.not30 = icmp eq i32 %i.x, 0
  br i1 %.not30, label %process_lstat_error.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.116, ptr noundef nonnull %0) #16 ; 0 uses
  br label %process_lstat_error.exit

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %i.z = phi ptr [ null, %bb.d ], [ %i.p, %bb.e ], [ null, %bb.c ]
  switch i32 %2, label %bb.k [
    i32 0, label %bb.l
    i32 20, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %.thread, %.thread
  %i.aa = load i32, ptr @allow_remove, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ae = tail call i32 @remove_file_from_index(ptr noundef %i.ad, ptr noundef nonnull %0) #16
  %.not3.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not3.i.i, label %process_lstat_error.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.str.116.sink.i.i = phi ptr [ @.str.118, %bb.i ], [ @.str.116, %bb.j ]
  %i.af = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.116.sink.i.i, ptr noundef nonnull %0) #16 ; 0 uses
  br label %process_lstat_error.exit

bb.k:                                             ; preds = %.thread
  %i.ag = tail call ptr @strerror(i32 noundef range(i32 1, 0) %2) #16
  %i.ah = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.117, ptr noundef nonnull %0, ptr noundef %i.ag) #16 ; 0 uses
  br label %process_lstat_error.exit

bb.l:                                             ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !86
  %i.ak = and i32 %i.aj, 61440
  %i.al = icmp eq i32 %i.ak, 16384
  br i1 %i.al, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.am = load ptr, ptr @the_repository, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = tail call i32 @index_name_pos(ptr noundef %i.ao, ptr noundef nonnull %0, i32 noundef %i.b) #16 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr @the_repository, align 8, !tbaa !20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 432
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = and i32 %i.az, 61440
  %i.bb = icmp eq i32 %i.ba, 57344
  br i1 %i.bb, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @repo_resolve_gitlink_ref(ptr noundef nonnull %i.ar, ptr noundef nonnull %0, ptr noundef nonnull @.str.106, ptr noundef nonnull %3) #16
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %process_directory.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = call fastcc i32 @add_one_path(ptr noundef nonnull %i.ax, ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef nonnull %1)
  br label %process_directory.exit

bb.q:                                             ; preds = %bb.n
  %i.bf = load i32, ptr @allow_remove, align 4, !tbaa !12
  %.not.i.i31 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i31, label %.sink.split.i.i33, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call i32 @remove_file_from_index(ptr noundef nonnull %i.at, ptr noundef nonnull %0) #16
  %.not3.i.i32 = icmp eq i32 %i.bg, 0
  br i1 %.not3.i.i32, label %process_directory.exit, label %.sink.split.i.i33

.sink.split.i.i33:                                ; preds = %bb.r, %bb.q
  %.str.116.sink.i.i34 = phi ptr [ @.str.118, %bb.q ], [ @.str.116, %bb.r ]
  %i.bh = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.116.sink.i.i34, ptr noundef nonnull %0) #16 ; 0 uses
  br label %process_directory.exit

bb.s:                                             ; preds = %bb.m
  %i.bi = xor i32 %i.ap, -1                       ; 3 uses
  %i.bj = load ptr, ptr @the_repository, align 8, !tbaa !20 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 432
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !82 ; 2 uses
  %sext = shl i64 %i.a, 32
  %i.bo = ashr exact i64 %sext, 32                ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bi)
  %wide.trip.count.i = zext i32 %umax.i to i64
  %exitcond.not.i40.not = icmp ugt i32 %i.bn, %i.bi
  br i1 %exitcond.not.i40.not, label %.lr.ph, label %.thread.i

.lr.ph:                                           ; preds = %bb.s
  %i.bp = zext nneg i32 %i.bi to i64
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !68
  br label %bb.u

bb.t:                                             ; preds = %bb.w
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.u, !llvm.loop !126

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv.i41 = phi i64 [ %i.bp, %.lr.ph ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i41
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 108 ; 2 uses
  %i.bu = tail call i32 @strncmp(ptr noundef nonnull %i.bt, ptr noundef nonnull %0, i64 noundef %i.bo) #17
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
end_hunk_0
