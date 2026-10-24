Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/submodule?download=true
inline.NumInlined: 118
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@bad_to_remove_submodule:bb.a
  %i.h = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull %.str.69..str.57) #18 ; 0 uses
  %i.i = and i32 %1, 4
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.70) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @prepare_other_repo_env(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.28) #18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 9
  store i8 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  store i32 -1, ptr %i.o, align 4, !tbaa !126
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %0, ptr %i.p, align 8, !tbaa !125
  %i.q = call i32 @start_command(ptr noundef nonnull %2) #18
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %1, 1
  %.not21 = icmp eq i32 %i.r, 0
  br i1 %.not21, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call fastcc ptr @_(ptr noundef nonnull @.str.71)
  call void (ptr, ...) @die(ptr noundef %i.s, ptr noundef %0) #20
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.t = load i32, ptr %i.o, align 4, !tbaa !126
  %i.u = call i64 @strbuf_read(ptr noundef nonnull %3, i32 noundef %i.t, i64 noundef 1024) #18
  %i.v = icmp sgt i64 %i.u, 2
  %spec.select = zext i1 %i.v to i32
  %i.w = load i32, ptr %i.o, align 4, !tbaa !126
  %i.x = call i32 @close(i32 noundef %i.w) #18    ; 0 uses
  %i.y = call i32 @finish_command(ptr noundef nonnull %2) #18
  %.not19 = icmp eq i32 %i.y, 0
  br i1 %.not19, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = and i32 %1, 1
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = call fastcc ptr @_(ptr noundef nonnull @.str.72)
  call void (ptr, ...) @die(ptr noundef %i.aa, ptr noundef %0) #20
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.k
  %.1 = phi i32 [ %spec.select, %bb.k ], [ -1, %bb.i ], [ -1, %bb.l ]
  call void @strbuf_release(ptr noundef nonnull %3) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.n
  %.013 = phi i32 [ 0, %bb.c ], [ %.1, %bb.n ], [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.013
}

declare i32 @is_empty_dir(ptr noundef) local_unnamed_addr #2

declare i64 @strbuf_read(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @submodule_unset_core_worktree(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !129
  %i.b = tail call i32 @validate_submodule_path(ptr noundef %i.a)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 2064, i32 noundef 128) #18
  tail call void @exit(i32 noundef %i.d) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  call void @submodule_name_to_gitdir(ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef %i.g)
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.73, i64 noundef 7) #18
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = call i32 @repo_config_set_in_file_gently(ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef null) #18
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !34
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.m, %bb.e ], [ @.str.75, %bb.d ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !129
  call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %i.n) #18
  br label %bb.f

bb.f:                                             ; preds = %_.exit, %bb.c
  call void @strbuf_release(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @submodule_name_to_gitdir(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ptr, ptr, ...) @repo_git_path_append(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %2) #18 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.107, ptr noundef %2) #18 ; 2 uses
  %i.f = call i32 @repo_config_get_string_tmp(ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef nonnull %i.a) #18
  call void @free(ptr noundef %i.e) #18
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc ptr @_(ptr noundef nonnull @.str.108)
  call void (ptr, ...) @die(ptr noundef %i.g, ptr noundef %2, ptr noundef %2, ptr noundef %2, ptr noundef %2) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #19
  call void @strbuf_add(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = call i32 @validate_submodule_git_dir(ptr noundef %i.k, ptr noundef %2)
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call fastcc ptr @_(ptr noundef nonnull @.str.109)
  call void (ptr, ...) @advise(ptr noundef %i.m) #18
  %i.n = call fastcc ptr @_(ptr noundef nonnull @.str.110)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !62
  call void (ptr, ...) @die(ptr noundef %i.n, ptr noundef %i.o) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  ret void
}

declare i32 @repo_config_set_in_file_gently(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @submodule_move_head(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.child_process, align 8      ; 10 uses
  %6 = alloca %struct.child_process, align 8      ; 9 uses
  %7 = alloca %struct.child_process, align 8      ; 16 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %struct.strbuf, align 8             ; 6 uses
  %9 = alloca %struct.strbuf, align 8             ; 6 uses
  %10 = alloca %struct.strbuf, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(136) @__const.absorb_git_dir_into_superproject_recurse.cp, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = tail call ptr @null_oid(ptr noundef %i.d) #18
  %i.f = tail call i32 @is_tree_submodule_active(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %0)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %4, 2
  %.not58 = icmp eq i32 %i.g, 0                   ; 4 uses
  %.not59 = icmp eq ptr %2, null                  ; 5 uses
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = select i1 %.not58, ptr null, ptr %i.a
  %i.h = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.14, ptr noundef %0) #18 ; 2 uses
  %i.i = call ptr @resolve_gitdir_gently(ptr noundef %i.h, ptr noundef %.) #18
  %.not.i.not = icmp eq ptr %i.i, null
  call void @free(ptr noundef %i.h) #18
  br i1 %.not.i.not, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !35 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = call ptr @null_oid(ptr noundef %i.l) #18
  %i.n = call ptr @submodule_from_path(ptr noundef %i.j, ptr noundef %i.m, ptr noundef %0) #18 ; 8 uses
  %.not61 = icmp eq ptr %i.n, null
  br i1 %.not61, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.21, i32 noundef 2154, ptr noundef nonnull @.str.76, ptr noundef %0) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not58.not = xor i1 %.not58, true
  %brmerge = or i1 %.not59, %.not58.not
  br i1 %brmerge, label %11, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.absorb_git_dir_into_superproject_recurse.cp, i64 136, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.p = call i32 @validate_submodule_path(ptr noundef %i.o)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 2081, i32 noundef 128) #18
  call void @exit(i32 noundef %i.r) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @prepare_other_repo_env(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.28) #18
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = or i8 %i.u, 8
  store i8 %i.v, ptr %i.t, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.43, ptr noundef null) #18
  %i.w = load i8, ptr %i.t, align 8
  %i.x = or i8 %i.w, 3
  store i8 %i.x, ptr %i.t, align 8
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.y, ptr %i.z, align 8, !tbaa !125
  %i.aa = call i32 @start_command(ptr noundef nonnull %6) #18
  %.not.i71 = icmp eq i32 %i.aa, 0
  br i1 %.not.i71, label %submodule_has_dirty_index.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = call fastcc ptr @_(ptr noundef nonnull @.str.157)
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !129
  call void (ptr, ...) @die(ptr noundef %i.ab, ptr noundef %i.ac) #20
  unreachable

submodule_has_dirty_index.exit:                   ; preds = %bb.i
  %i.ad = call i32 @finish_command(ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not62 = icmp eq i32 %i.ad, 0
  br i1 %.not62, label %bb.m, label %bb.k

bb.k:                                             ; preds = %submodule_has_dirty_index.exit
  %i.ae = load i32, ptr @git_gettext_enabled, align 4, !tbaa !34
  %.not4.i = icmp eq i32 %i.ae, 0
  br i1 %.not4.i, label %_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.af, %bb.l ], [ @.str.77, %bb.k ]
  %i.ag = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %0) #18 ; 0 uses
  br label %bb.an

11:                                               ; preds = %bb.f
  %12 = and i32 %4, 1
  %.not63 = icmp eq i32 %12, 0
  br i1 %.not63, label %bb.n, label %bb.z

bb.m:                                             ; preds = %submodule_has_dirty_index.exit
  %i.ah = and i32 %4, 1
  %.not63.a = icmp eq i32 %i.ah, 0
  br i1 %.not63.a, label %bb.o, label %bb.z

bb.n:                                             ; preds = %11
  br i1 %.not59, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ai = call i32 @submodule_uses_gitfile(ptr noundef %0)
  %.not64 = icmp eq i32 %i.ai, 0
  br i1 %.not64, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @absorb_git_dir_into_superproject(ptr noundef %0, ptr noundef %1)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.aj = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.14, ptr noundef %0) #18 ; 2 uses
  %i.ak = call ptr @read_gitfile_gently(ptr noundef %i.aj, ptr noundef null) #18
  %i.al = call ptr @xstrdup(ptr noundef %i.ak) #18 ; 3 uses
  call void @free(ptr noundef %i.aj) #18
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ao = call i32 @validate_submodule_git_dir(ptr noundef %i.al, ptr noundef %i.an)
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = call fastcc ptr @_(ptr noundef nonnull @.str.78)
  call void (ptr, ...) @die(ptr noundef %i.aq, ptr noundef %i.al) #20
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.al) #18
  br label %bb.x

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.ar = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  call void @submodule_name_to_gitdir(ptr noundef nonnull %8, ptr noundef %i.ar, ptr noundef %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !62
  call void @connect_work_tree_and_git_dir(ptr noundef %0, ptr noundef %i.av, i32 noundef 0) #18
  call void @strbuf_release(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(136) @__const.absorb_git_dir_into_superproject_recurse.cp, i64 136, i1 false)
  %i.aw = call i32 @validate_submodule_path(ptr noundef %0)
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 2102, i32 noundef 128) #18
  call void @exit(i32 noundef %i.ay) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @prepare_other_repo_env(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.28) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = or i8 %i.bb, 9
  store i8 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %0, ptr %i.bd, align 8, !tbaa !125
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef null) #18
  %.not.i72 = icmp eq ptr %1, null
  %i.be = select i1 %.not.i72, ptr @.str.83, ptr %1
  %i.bf = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.be, ptr noundef %0) #18 ; 0 uses
  %i.bg = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 448
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  %i.bj = call ptr @empty_tree_oid_hex(ptr noundef %i.bi) #18
  %i.bk = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef %i.bj) #18 ; 0 uses
  %i.bl = call i32 @run_command(ptr noundef nonnull %5) #18
  %.not5.i = icmp eq i32 %i.bl, 0
  br i1 %.not5.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call fastcc ptr @_(ptr noundef nonnull @.str.158)
  call void (ptr, ...) @die(ptr noundef %i.bm) #20
  unreachable

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.z

bb.x:                                             ; preds = %bb.p, %bb.s
  %brmerge70 = or i1 %.not59, %.not58
  br i1 %brmerge70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.bn = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  call void @submodule_name_to_gitdir(ptr noundef nonnull %9, ptr noundef %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  call void @connect_work_tree_and_git_dir(ptr noundef %0, ptr noundef %i.br, i32 noundef 1) #18
  call void @strbuf_release(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.m, %bb.x, %bb.y, %11
  %.not6377 = phi i1 [ false, %bb.m ], [ true, %bb.x ], [ true, %bb.y ], [ false, %11 ], [ true, %.thread ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @prepare_other_repo_env(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.28) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = or i8 %i.bu, 9
  store i8 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  store ptr %0, ptr %i.bw, align 8, !tbaa !125
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %7, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef null) #18
  %.not65 = icmp eq ptr %1, null
  %i.bx = select i1 %.not65, ptr @.str.83, ptr %1
  %i.by = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %7, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.bx, ptr noundef %0) #18 ; 0 uses
  %.str.85..str.84 = select i1 %.not6377, ptr @.str.85, ptr @.str.84
  %i.bz = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef nonnull %.str.85..str.84) #18 ; 0 uses
  br i1 %.not58, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ca = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef nonnull @.str.87) #18 ; 0 uses
  br i1 %.not59, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 448
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = call ptr @empty_tree_oid_hex(ptr noundef %i.cd) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.str.86.sink = phi ptr [ @.str.86, %bb.z ], [ %i.ce, %bb.ab ], [ %2, %bb.aa ]
  %i.cf = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef %.str.86.sink) #18 ; 0 uses
  %.not66 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not66, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 448
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57
  %i.cj = call ptr @empty_tree_oid_hex(ptr noundef %i.ci) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ck = phi ptr [ %i.cj, %bb.ad ], [ %3, %bb.ac ]
  %i.cl = call ptr @strvec_push(ptr noundef nonnull %7, ptr noundef %i.ck) #18 ; 0 uses
  %i.cm = call i32 @run_command(ptr noundef nonnull %7) #18
  %.not67 = icmp eq i32 %i.cm, 0
  br i1 %.not67, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !34
  %.not4.i73 = icmp eq i32 %i.cn, 0
  br i1 %.not4.i73, label %_.exit75, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #18
  br label %_.exit75

_.exit75:                                         ; preds = %bb.af, %bb.ag
  %.0.i74 = phi ptr [ %i.co, %bb.ag ], [ @.str.88, %bb.af ]
  %i.cp = call i32 (ptr, ...) @error(ptr noundef %.0.i74, ptr noundef %0) #18 ; 0 uses
  br label %bb.an

bb.ah:                                            ; preds = %bb.ae
  br i1 %.not6377, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not66, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @child_process_init(ptr noundef nonnull %7) #18
  %i.cq = load i8, ptr %i.bt, align 8
  %i.cr = or i8 %i.cq, 9
  store i8 %i.cr, ptr %i.bt, align 8
  store ptr %0, ptr %i.bw, align 8, !tbaa !125
  call void @prepare_other_repo_env(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.28) #18
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %7, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.90, ptr noundef nonnull %3, ptr noundef null) #18
  %i.cs = call i32 @run_command(ptr noundef nonnull %7) #18
  %.not69 = icmp ne i32 %i.cs, 0
  %spec.select = sext i1 %.not69 to i32
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, ptr noundef %0) #18
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = call i32 @unlink_or_warn(ptr noundef %i.cu) #18 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %10) #18
  %i.cw = call i32 @is_empty_dir(ptr noundef %0) #18
  %.not68 = icmp eq i32 %i.cw, 0
  br i1 %.not68, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = call i32 @rmdir_or_warn(ptr noundef %0) #18 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @submodule_unset_core_worktree(ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %_.exit75, %bb.am, %bb.ah, %bb.c, %bb.a, %_.exit
  %.054 = phi i32 [ 0, %bb.c ], [ -1, %_.exit ], [ 0, %bb.a ], [ -1, %_.exit75 ], [ 0, %bb.ah ], [ 0, %bb.am ], [ %spec.select, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i32 %.054
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @absorb_git_dir_into_superproject(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 9 uses
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  %5 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.b = tail call i32 @validate_submodule_path(ptr noundef %0)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 2564, i32 noundef 128) #18
  tail call void @exit(i32 noundef %i.d) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, ptr noundef %0) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = call ptr @resolve_gitdir_gently(ptr noundef %i.f, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.h = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  switch i32 %i.h, label %bb.e [
    i32 9, label %.thread
    i32 7, label %bb.f
  ]

.thread:                                          ; preds = %bb.d
  call void @strbuf_release(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.z

bb.e:                                             ; preds = %bb.d
  call void @read_gitfile_error_die(i32 noundef %i.h, ptr noundef %0, ptr noundef null) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = load ptr, ptr @the_repository, align 8, !tbaa !35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = call ptr @null_oid(ptr noundef %i.k) #18
  %i.m = call ptr @submodule_from_path(ptr noundef %i.i, ptr noundef %i.l, ptr noundef %0) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = call fastcc ptr @_(ptr noundef nonnull @.str.93)
  call void (ptr, ...) @die(ptr noundef %i.n, ptr noundef %0) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  call void @submodule_name_to_gitdir(ptr noundef nonnull %5, ptr noundef %i.o, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  call void @connect_work_tree_and_git_dir(ptr noundef %0, ptr noundef %i.s, i32 noundef 0) #18
  call void @strbuf_release(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.t = call ptr @real_pathdup(ptr noundef nonnull %i.g, i32 noundef 1) #18 ; 2 uses
  %i.u = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.v = call ptr @repo_get_common_dir(ptr noundef %i.u) #18
  %i.w = call ptr @real_pathdup(ptr noundef %i.v, i32 noundef 1) #18 ; 2 uses
  %i.x = call zeroext i1 @starts_with(ptr noundef %i.t, ptr noundef %i.w) #18
  br i1 %i.x, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.relocate_single_git_dir_into_superproject.new_gitdir, i64 24, i1 false)
  %i.y = call i32 @validate_submodule_path(ptr noundef %0)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = call i32 @common_exit(ptr noundef nonnull @.str.21, i32 noundef 2495, i32 noundef 128) #18
  call void @exit(i32 noundef %i.aa) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = call i32 @submodule_uses_worktrees(ptr noundef %0) #18
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = call fastcc ptr @_(ptr noundef nonnull @.str.166)
  call void (ptr, ...) @die(ptr noundef %i.ac, ptr noundef %0) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.14, ptr noundef %0) #18 ; 3 uses
  %i.ae = call ptr @read_gitfile_gently(ptr noundef %i.ad, ptr noundef null) #18
  %.not21.i = icmp eq ptr %i.ae, null
  br i1 %.not21.i, label %bb.o, label %relocate_single_git_dir_into_superproject.exit

bb.o:                                             ; preds = %bb.n
  %i.af = call ptr @real_pathdup(ptr noundef %i.ad, i32 noundef 1) #18 ; 3 uses
  %i.ag = load ptr, ptr @the_repository, align 8, !tbaa !35 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 448
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.aj = call ptr @null_oid(ptr noundef %i.ai) #18
  %i.ak = call ptr @submodule_from_path(ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef %0) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.ak, null
  br i1 %.not22.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = call fastcc ptr @_(ptr noundef nonnull @.str.93)
  call void (ptr, ...) @die(ptr noundef %i.al, ptr noundef %0) #20
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  call void @submodule_name_to_gitdir(ptr noundef nonnull %3, ptr noundef %i.am, ptr noundef %i.ao)
  %i.ap = load ptr, ptr @the_repository, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = call i32 @safe_create_leading_directories_const(ptr noundef %i.ap, ptr noundef %i.ar) #18
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = call fastcc ptr @_(ptr noundef nonnull @.str.167)
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !62
  call void (ptr, ...) @die(ptr noundef %i.au, ptr noundef %i.av) #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.ax = call ptr @real_pathdup(ptr noundef %i.aw, i32 noundef 1) #18 ; 3 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.az = load i32, ptr @git_gettext_enabled, align 4, !tbaa !34
  %.not4.i.i = icmp eq i32 %i.az, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.168, i32 noundef 5) #18
  br label %_.exit.i

end_hunk_0
