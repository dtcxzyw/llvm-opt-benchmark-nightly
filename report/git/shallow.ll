Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/shallow?download=true
inline.NumInlined: 66
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_shallow_commits_1:bb.a
  %i.s = load i64, ptr %i.h, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !57
  %i.u = load i32, ptr %i.b, align 4, !tbaa !74
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !74
  %i.w = add nuw i64 %.013, 1                     ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !78
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %strbuf_addch.exit, %.preheader.._crit_edge_crit_edge, %bb.b
  %.011 = phi i32 [ %i.j, %bb.b ], [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.v, %strbuf_addch.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setup_temporary_shallow(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.prune_shallow.sb, i64 24, i1 false)
  %i.a = call fastcc i32 @write_shallow_commits_1(ptr noundef nonnull %1, i32 noundef 0, ptr noundef readonly %0, i32 noundef 0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.c = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.b, ptr noundef nonnull @.str.7) #14 ; 2 uses
  %i.d = call ptr @xmks_tempfile_m(ptr noundef %i.c, i32 noundef 384) #14 ; 4 uses
  call void @free(ptr noundef %i.c) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load volatile i32, ptr %i.e, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %i.k = call i64 @write_in_full(i32 noundef %i.f, ptr noundef %i.h, i64 noundef %i.j) #14
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @close_tempfile_gently(ptr noundef nonnull %i.d) #14
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = call ptr @get_tempfile_path(ptr noundef nonnull %i.d) #14
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.8, ptr noundef %i.o) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @strbuf_release(ptr noundef nonnull %1) #14
  %i.p = call ptr @get_tempfile_path(ptr noundef nonnull %i.d) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.p, %bb.e ], [ @.str.9, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @repo_git_path(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @close_tempfile_gently(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #1

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #4

declare void @strbuf_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @setup_alternate_shallow(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.prune_shallow.sb, i64 24, i1 false)
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.b = tail call ptr @git_path_shallow(ptr noundef %i.a) #14
  %i.c = tail call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef %0, ptr noundef %i.b, i32 noundef 1, i64 noundef 0, i32 noundef 438) #14
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.16) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = tail call ptr @git_path_shallow(ptr noundef nonnull %i.d) #14
  %i.m = tail call i32 @stat_validity_check(ptr noundef %i.k, ptr noundef %i.l) #14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.d, label %check_shallow_file_for_update.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.17) #13
  unreachable

check_shallow_file_for_update.exit:               ; preds = %bb.c
  %i.n = call fastcc i32 @write_shallow_commits_1(ptr noundef nonnull %3, i32 noundef 0, ptr noundef readonly %2, i32 noundef 0)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %check_shallow_file_for_update.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82
  %i.s = call i64 @write_in_full(i32 noundef %i.c, ptr noundef %i.p, i64 noundef %i.r) #14
  %i.t = icmp slt i64 %i.s, 0
  %.val6 = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = call fastcc ptr @get_lock_file_path(ptr %.val6)
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.8, ptr noundef %i.u) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = call ptr @get_tempfile_path(ptr noundef %.val6) #14
  br label %bb.h

bb.h:                                             ; preds = %check_shallow_file_for_update.exit, %bb.g
  %storemerge = phi ptr [ %i.v, %bb.g ], [ @.str.9, %check_shallow_file_for_update.exit ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !87
  call void @strbuf_release(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_lock_file_path(ptr %.0.val) unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @get_tempfile_path(ptr noundef %.0.val) #14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @advertise_shallow_grafts(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !50
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.c = tail call i32 @is_repository_shallow(ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @for_each_commit_graft(ptr noundef nonnull @advertise_shallow_grafts_cb, ptr noundef nonnull %i.a) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @for_each_commit_graft(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @advertise_shallow_grafts_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !50
  %i.e = tail call ptr @oid_to_hex(ptr noundef nonnull %0) #14
  tail call void (i32, ptr, ...) @packet_write_fmt(i32 noundef %i.d, ptr noundef nonnull @.str.18, ptr noundef %i.e) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @prune_shallow(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.write_shallow_data, align 8 ; 8 uses
  %2 = alloca %struct.write_shallow_data, align 8 ; 8 uses
  %3 = alloca %struct.shallow_lock, align 8       ; 7 uses
  %4 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.prune_shallow.sb, i64 24, i1 false)
  %5 = shl i32 %0, 1
  %6 = and i32 %5, 4                              ; 2 uses
  %spec.select = or disjoint i32 %6, 1
  %i.a = and i32 %0, 1
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i32 %6, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %4, ptr %2, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.b, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.f, align 4
  %i.g = call i32 @for_each_commit_graft(ptr noundef nonnull @write_one_shallow, ptr noundef nonnull %2) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.i = tail call ptr @git_path_shallow(ptr noundef %i.h) #14
  %i.j = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef 1, i64 noundef 0, i32 noundef 438) #14
  %i.k = load ptr, ptr @the_repository, align 8, !tbaa !56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.16) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = call ptr @git_path_shallow(ptr noundef nonnull %i.k) #14
  %i.t = call i32 @stat_validity_check(ptr noundef %i.r, ptr noundef %i.s) #14
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %check_shallow_file_for_update.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @die(ptr noundef nonnull @.str.17) #13
  unreachable

check_shallow_file_for_update.exit:               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %4, ptr %1, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %spec.select, ptr %i.w, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.x, align 4
  %i.y = call i32 @for_each_commit_graft(ptr noundef nonnull @write_one_shallow, ptr noundef nonnull %1) #14 ; 0 uses
  %i.z = load i32, ptr %i.v, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.not8 = icmp eq i32 %i.z, 0
  br i1 %.not8, label %bb.j, label %bb.g

bb.g:                                             ; preds = %check_shallow_file_for_update.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !82
  %i.ae = call i64 @write_in_full(i32 noundef %i.j, ptr noundef %i.ab, i64 noundef %i.ad) #14
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %3, align 8, !tbaa !86
  %i.ag = call fastcc ptr @get_lock_file_path(ptr %.val)
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.8, ptr noundef %i.ag) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @the_repository, align 8, !tbaa !56 ; 2 uses
  %i.ai = call i32 @commit_lock_file(ptr noundef nonnull %3) #14 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store i32 -1, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  call void @stat_validity_clear(ptr noundef %i.an) #14
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !38
  call void @parsed_object_pool_reset_commit_grafts(ptr noundef %i.ao) #14
  %i.ap = call i32 @is_repository_shallow(ptr noundef %i.ah) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %check_shallow_file_for_update.exit
  %i.aq = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.ar = call ptr @git_path_shallow(ptr noundef %i.aq) #14
  %i.as = call i32 @unlink(ptr noundef %i.ar) #14 ; 0 uses
  %i.at = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.au = call i32 @rollback_lock_file(ptr noundef nonnull %3) #14 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store i32 -1, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !58
  call void @stat_validity_clear(ptr noundef %i.az) #14
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !38
  call void @parsed_object_pool_reset_commit_grafts(ptr noundef %i.ba) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.b
  call void @strbuf_release(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @prepare_shallow_info(ptr noundef initializes((0, 104)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_shallow, i64 8), align 8, !tbaa !89
  %.not.i = icmp eq i32 %i.a, 0
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_shallow, i64 12), align 4
  %.not31 = trunc i8 %i.b to i1
  %.not = select i1 %.not.i, i1 %.not31, i1 false
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ...) @trace_printf_key_fl(ptr noundef nonnull @.str, i32 noundef 525, ptr noundef nonnull @trace_shallow, ptr noundef nonnull @.str.11) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @commit_stack_init(ptr noundef nonnull %i.c) #14
  store ptr %1, ptr %0, align 8, !tbaa !95
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %mul.ov.i = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %mul.ov.i, label %bb.e, label %st_mult.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 8, i64 noundef %i.e) #13
  unreachable

st_mult.exit:                                     ; preds = %bb.d
  %i.f = shl nuw i64 %i.e, 3
  %i.g = tail call ptr @xmalloc(i64 noundef %i.f) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !96
  %i.i = load i64, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %mul.ov.i29 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %mul.ov.i29, label %bb.f, label %st_mult.exit30

bb.f:                                             ; preds = %st_mult.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 8, i64 noundef %i.i) #13
  unreachable

st_mult.exit30:                                   ; preds = %st_mult.exit
  %i.j = shl nuw i64 %i.i, 3
  %i.k = tail call ptr @xmalloc(i64 noundef %i.j) #14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !97
  %i.m = load i64, ptr %i.d, align 8, !tbaa !78
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %st_mult.exit30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.l ] ; 5 uses
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98
  %i.s = load ptr, ptr %1, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.s, i64 %.032
  %i.u = tail call i32 @odb_has_object(ptr noundef %i.r, ptr noundef %i.t, i32 noundef 3) #14
  %.not26 = icmp eq i32 %i.u, 0
  br i1 %.not26, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @the_repository, align 8, !tbaa !56
  %i.w = load ptr, ptr %1, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw [36 x i8], ptr %i.w, i64 %.032
  %i.y = tail call ptr @lookup_commit_graft(ptr noundef %i.v, ptr noundef %i.x) #14 ; 2 uses
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50
end_hunk_0
