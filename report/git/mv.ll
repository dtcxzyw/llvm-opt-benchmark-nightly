Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/mv?download=true
inline.NumInlined: 41
inline.NumDeleted: 12
begin_hunk_0_@cmd_mv:bb.a
  %.not279 = icmp eq i64 %i.tp, 0
  br i1 %.not279, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %remove_empty_src_dirs.exit
  call void @advise_on_moving_dirty_path(ptr noundef nonnull %17) #13
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %remove_empty_src_dirs.exit
  br i1 %.0232.lcssa, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tq = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 432
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !43
  call void @stage_updated_gitmodules(ptr noundef %i.ts) #13
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.tt = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 432
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !43
  %i.tw = call i32 @write_locked_index(ptr noundef %i.tv, ptr noundef nonnull %15, i32 noundef 3) #13
  %.not281 = icmp eq i32 %i.tw, 0
  br i1 %.not281, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tx = call fastcc ptr @_(ptr noundef nonnull @.str.32)
  call void (ptr, ...) @die(ptr noundef %i.tx) #14
  unreachable

bb.fo:                                            ; preds = %bb.fm, %bb.dx
  %.0253 = phi i32 [ 1, %bb.dx ], [ 0, %bb.fm ]
  call void @strvec_clear(ptr noundef nonnull %11) #13
  call void @free(ptr noundef %.0.i) #13
  call void @string_list_clear(ptr noundef nonnull %14, i32 noundef 0) #13
  call void @string_list_clear(ptr noundef nonnull %17, i32 noundef 0) #13
  call void @string_list_clear(ptr noundef nonnull %16, i32 noundef 0) #13
  call void @strvec_clear(ptr noundef nonnull %7) #13
  call void @strvec_clear(ptr noundef nonnull %8) #13
  call void @strvec_clear(ptr noundef nonnull %9) #13
  call void @strvec_clear(ptr noundef nonnull %10) #13
  call void @hashmap_clear_(ptr noundef nonnull %18, i64 noundef 0) #13
  call void @strbuf_release(ptr noundef nonnull %19) #13
  call void @free(ptr noundef %.4240) #13
  call void @free(ptr noundef %.4259) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.0253
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal i32 @pathmap_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = tail call i32 @git_fspathcmp(ptr noundef %i.b, ptr noundef %i.d) #13
  ret i32 %i.e
}

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #3

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @repo_hold_locked_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !20
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.26, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @internal_prefix_pathspec(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 2147483647) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.b = trunc i64 %i.a to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.d = icmp samesign ult i32 %4, 2
  %i.e = and i32 %4, 1
  %.not30 = icmp eq i32 %i.e, 0                   ; 2 uses
  %wide.trip.count68 = zext nneg i32 %3 to i64    ; 3 uses
  br i1 %i.d, label %.split.split.us, label %.split.us

.split.us:                                        ; preds = %bb.c
  br i1 %.not30, label %.critedge.us.us, label %.critedge.us

.critedge.us.us:                                  ; preds = %.split.us, %.critedge.us.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.critedge.us.us ], [ 0, %.split.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv60
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #15
  %i.i = tail call ptr @xmemdupz(ptr noundef nonnull %i.g, i64 noundef %i.h) #13 ; 2 uses
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.k = tail call ptr @prefix_path(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.c, ptr noundef %i.i) #13 ; 2 uses
  %i.l = tail call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef %i.k) #13 ; 0 uses
  tail call void @free(ptr noundef %i.k) #13
  tail call void @free(ptr noundef %i.i) #13
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count68
  br i1 %exitcond64.not, label %.split39.us, label %.critedge.us.us, !llvm.loop !101

.critedge.us:                                     ; preds = %.split.us, %.critedge.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us ], [ 0, %.split.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #15
  %i.p = tail call ptr @xmemdupz(ptr noundef nonnull %i.n, i64 noundef %i.o) #13 ; 2 uses
  %i.q = tail call ptr @__xpg_basename(ptr noundef %i.p) #13
  %i.r = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.s = tail call ptr @prefix_path(ptr noundef %i.r, ptr noundef %1, i32 noundef %i.c, ptr noundef %i.q) #13 ; 2 uses
  %i.t = tail call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef %i.s) #13 ; 0 uses
  tail call void @free(ptr noundef %i.s) #13
  tail call void @free(ptr noundef %i.p) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count68
  br i1 %exitcond.not, label %.split39.us, label %.critedge.us, !llvm.loop !101

.split.split.us:                                  ; preds = %bb.c, %bb.f
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #15 ; 2 uses
  %.not53 = icmp eq i64 %i.w, 0
  br i1 %.not53, label %.critedge.us43, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.split.us, %bb.d
  %.033.us = phi i64 [ %i.aa, %bb.d ], [ %i.w, %.split.split.us ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %.033.us
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %.not31.us42 = icmp eq i8 %i.z, 47
  br i1 %.not31.us42, label %bb.d, label %.critedge.us43

bb.d:                                             ; preds = %.lr.ph.us
  %i.aa = add i64 %.033.us, -1                    ; 2 uses
  %.not54 = icmp eq i64 %i.aa, 0
  br i1 %.not54, label %.critedge.us43, label %.lr.ph.us, !llvm.loop !102

.critedge.us43:                                   ; preds = %bb.d, %.lr.ph.us, %.split.split.us
  %.0.lcssa.us44 = phi i64 [ 0, %.split.split.us ], [ %.033.us, %.lr.ph.us ], [ 0, %bb.d ]
  %i.ab = tail call ptr @xmemdupz(ptr noundef nonnull %i.v, i64 noundef %.0.lcssa.us44) #13 ; 3 uses
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.us43
  %i.ac = tail call ptr @__xpg_basename(ptr noundef %i.ab) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.us43
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.ab, %.critedge.us43 ]
  %i.ae = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.af = tail call ptr @prefix_path(ptr noundef %i.ae, ptr noundef %1, i32 noundef %i.c, ptr noundef %i.ad) #13 ; 2 uses
  %i.ag = tail call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef %i.af) #13 ; 0 uses
  tail call void @free(ptr noundef %i.af) #13
  tail call void @free(ptr noundef %i.ab) #13
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.split39.us, label %.split.split.us, !llvm.loop !101

.split39.us:                                      ; preds = %.critedge.us, %.critedge.us.us, %bb.f
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @is_directory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @path_in_sparse_checkout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @empty_dir_has_sparse_contents(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 6 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %.not15.i = icmp eq i8 %i.d, 47
  br i1 %.not15.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 1, 0) %i.a, i64 2) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %st_add.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.35, i64 noundef range(i64 1, 0) %i.a, i64 noundef 2) #14
  unreachable

st_add.exit.i:                                    ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call ptr @xmalloc(i64 noundef %i.g) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a ; 2 uses
  store i8 47, ptr %i.i, align 1, !tbaa !20
  %i.j = getelementptr i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !20
  br label %add_slash.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call ptr @xstrdup(ptr noundef nonnull %0) #13
  br label %add_slash.exit

add_slash.exit:                                   ; preds = %st_add.exit.i, %bb.e
  %.0.i = phi ptr [ %i.h, %st_add.exit.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #15 ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call i32 @index_name_pos(ptr noundef %i.p, ptr noundef nonnull %.0.i, i32 noundef %i.m) #13 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %add_slash.exit
  %i.s = xor i32 %i.q, -1                         ; 2 uses
  %i.t = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 432
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %.not = icmp ugt i32 %i.x, %i.s
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 108
  %sext = shl i64 %i.l, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ac, i64 noundef %i.ad) #15
  %.not15 = icmp eq i32 %i.ae, 0
  br i1 %.not15, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !12
  %i.ah = lshr i32 %i.ag, 30
  %.lobit = and i32 %i.ah, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %add_slash.exit, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %add_slash.exit ], [ %.lobit, %bb.h ]
  tail call void @free(ptr noundef nonnull %.0.i) #13
  ret i32 %.0
}

declare void @strvec_pushv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @path_in_cone_mode_sparse_checkout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @index_name_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @index_range_of_same_dir(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 6 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %.not15.i = icmp eq i8 %i.d, 47
  br i1 %.not15.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 1, 0) %i.a, i64 2) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %st_add.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.35, i64 noundef range(i64 1, 0) %i.a, i64 noundef 2) #14
  unreachable

st_add.exit.i:                                    ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call ptr @xmalloc(i64 noundef %i.g) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a ; 2 uses
  store i8 47, ptr %i.i, align 1, !tbaa !20
  %i.j = getelementptr i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !20
  br label %add_slash.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call ptr @xstrdup(ptr noundef nonnull %0) #13
  br label %add_slash.exit

add_slash.exit:                                   ; preds = %st_add.exit.i, %bb.e
  %.0.i = phi ptr [ %i.h, %st_add.exit.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.l = add nsw i32 %1, 1                        ; 3 uses
  %i.m = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = tail call i32 @index_name_pos(ptr noundef %i.o, ptr noundef %.0.i, i32 noundef %i.l) #13 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %add_slash.exit
  %i.r = tail call fastcc ptr @_(ptr noundef nonnull @.str.39)
  tail call void (ptr, ...) @die(ptr noundef %i.r, i32 noundef %i.l, ptr noundef %.0.i) #14
  unreachable

bb.g:                                             ; preds = %add_slash.exit
  %i.s = xor i32 %i.p, -1                         ; 5 uses
  %i.t = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 432
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63   ; 3 uses
  %i.y = icmp ugt i32 %i.x, %i.s
  br i1 %i.y, label %.lr.ph, label %._crit_edge
end_hunk_0
