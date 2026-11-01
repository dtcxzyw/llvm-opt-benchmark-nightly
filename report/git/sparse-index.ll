Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sparse-index?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@is_sparse_index_allowed
define dso_local range(i32 0, 2) i32 @is_sparse_index_allowed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %1, 1
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @git_env_bool(ptr noundef nonnull @.str.3, i32 noundef 0) #12
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @git_env_bool(ptr noundef nonnull @.str.4, i32 noundef -1) #12 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = tail call i32 @set_sparse_index_config(ptr noundef %i.n, i32 noundef %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  tail call void @prepare_repo_settings(ptr noundef %i.q) #12
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 300
  %i.t = load i32, ptr %i.s, align 4, !tbaa !38
  %.not18.not = icmp eq i32 %i.t, 0
  br i1 %.not18.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.u = tail call i32 @init_sparse_checkout_patterns(ptr noundef %0) #12
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !56
  %.not20 = icmp ne i32 %i.y, 0
  %.21 = zext i1 %.not20 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.j, %bb.i, %bb.a, %bb.b, %bb.h
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %.21, %bb.j ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.1
}

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #2

declare i32 @git_env_bool(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @init_sparse_checkout_patterns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @convert_to_sparse(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %index_has_unmerged_entries.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %index_has_unmerged_entries.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @is_sparse_index_allowed(ptr noundef nonnull %0, i32 noundef %1)
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %index_has_unmerged_entries.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr @give_advice_on_expansion, align 4, !tbaa !59
  %i.g = load i32, ptr %i.d, align 4, !tbaa !58   ; 2 uses
  %.not9.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !60
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f, !llvm.loop !80

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %i.m = and i32 %i.l, 12288
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %index_has_unmerged_entries.exit

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = tail call i32 @cache_tree_fully_valid(ptr noundef %i.o) #12
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  tail call void @cache_tree_free(ptr noundef nonnull %i.n) #12
  %i.q = tail call i32 @cache_tree_update(ptr noundef nonnull %0, i32 noundef 1) #12
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.h, label %index_has_unmerged_entries.exit

bb.h:                                             ; preds = %bb.g, %.loopexit
  tail call void @remove_fsmonitor(ptr noundef nonnull %0) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.5, i32 noundef 241, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %i.s) #12
  %i.t = load i32, ptr %i.d, align 4, !tbaa !58
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.v = tail call fastcc i32 @convert_to_sparse_rec(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.t, ptr noundef nonnull @.str.8, i64 noundef 0, ptr noundef %i.u)
  store i32 %i.v, ptr %i.d, align 4, !tbaa !58
  tail call void @cache_tree_free(ptr noundef nonnull %i.n) #12
  %i.w = tail call i32 @cache_tree_update(ptr noundef nonnull %0, i32 noundef 0) #12 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, -33
  store i8 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  tail call void @ewah_free(ptr noundef %i.ab) #12
  store ptr null, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.ad) #12
  store ptr null, ptr %i.ac, align 8, !tbaa !65
  store i32 1, ptr %i.a, align 4, !tbaa !57
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !53
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.5, i32 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %i.ae) #12
  br label %index_has_unmerged_entries.exit

index_has_unmerged_entries.exit:                  ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.c, %bb.h
  ret i32 0
}

declare i32 @cache_tree_fully_valid(ptr noundef) local_unnamed_addr #2

declare void @cache_tree_free(ptr noundef) local_unnamed_addr #2

declare i32 @cache_tree_update(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @remove_fsmonitor(ptr noundef) local_unnamed_addr #2

declare void @trace2_region_enter_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @convert_to_sparse_rec(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.convert_to_sparse_rec.child_path, i64 24, i1 false)
  %i.a = tail call i32 @path_in_sparse_checkout(ptr noundef %4, ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = icmp slt i32 %2, %3                      ; 2 uses
  %i.c = and i1 %.not, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = sext i32 %2 to i64
  %i.f = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !59
  %i.k = and i32 %i.j, 12288
  %.not65 = icmp eq i32 %i.k, 0
  br i1 %.not65, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %8 = load <2 x i32>, ptr %i.l, align 4, !tbaa !59
  %9 = and <2 x i32> %8, <i32 61440, i32 1073741824>
  %10 = icmp eq <2 x i32> %9, <i32 57344, i32 0>
  %11 = bitcast <2 x i1> %10 to i2
  %.not66 = icmp eq i2 %11, 0
  br i1 %.not66, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.m, label %bb.b, label %._crit_edge.thread, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.a
  br i1 %.not, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c, %._crit_edge
  br i1 %i.b, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.r = tail call ptr @make_cache_entry(ptr noundef %0, i32 noundef 16384, ptr noundef nonnull %i.q, ptr noundef %4, i32 noundef 0, i32 noundef 0) #12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = or i32 %i.t, 1073741824
  store i32 %i.u, ptr %i.s, align 8, !tbaa !59
  %i.v = load ptr, ptr %0, align 8, !tbaa !60
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  store ptr %i.r, ptr %i.x, align 8, !tbaa !63
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph72, %bb.k
  %.15971 = phi i32 [ %2, %.lr.ph72 ], [ %.260, %bb.k ] ; 4 uses
  %.06170 = phi i32 [ %1, %.lr.ph72 ], [ %.162, %bb.k ] ; 4 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.z = sext i32 %.15971 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %5 ; 3 uses
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 47) #13 ; 2 uses
  %.not64 = icmp eq ptr %i.ae, null
  br i1 %.not64, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = call i32 @cache_tree_subtree_pos(ptr noundef %6, ptr noundef nonnull %i.ad, i32 noundef %i.ai) #12 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.e
  %i.al = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.y, %bb.e ]
  %i.am = add nsw i32 %.06170, 1
  %i.an = sext i32 %.06170 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store ptr %i.ab, ptr %i.ao, align 8, !tbaa !63
  %i.ap = add nsw i32 %.15971, 1
  br label %bb.k, !llvm.loop !83

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.n, align 8, !tbaa !67
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !68  ; 2 uses
  %.not9.i = icmp eq ptr %i.aq, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.aq, align 1, !tbaa !69
  br label %strbuf_setlen.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !69
  %.not10.i = icmp eq i8 %i.ar, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.h, %bb.i
  %i.as = ptrtoint ptr %i.ac to i64
  %reass.sub = sub i64 %i.af, %i.as
  %i.at = add i64 %reass.sub, 1
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull %i.ac, i64 noundef %i.at) #12
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !90
  %i.ba = add nsw i32 %i.az, %.15971              ; 2 uses
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !67
  %i.bd = call fastcc i32 @convert_to_sparse_rec(ptr noundef nonnull %0, i32 noundef %.06170, i32 noundef %.15971, i32 noundef %i.ba, ptr noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull %i.ay)
  %i.be = add nsw i32 %i.bd, %.06170
  br label %bb.k

bb.k:                                             ; preds = %strbuf_setlen.exit, %.thread
  %.162 = phi i32 [ %i.am, %.thread ], [ %i.be, %strbuf_setlen.exit ] ; 2 uses
  %.260 = phi i32 [ %i.ap, %.thread ], [ %i.ba, %strbuf_setlen.exit ] ; 2 uses
  %i.bf = icmp slt i32 %.260, %3
  br i1 %i.bf, label %bb.e, label %._crit_edge73

._crit_edge73:                                    ; preds = %bb.k, %.preheader
  %.061.lcssa = phi i32 [ %1, %.preheader ], [ %.162, %bb.k ]
  call void @strbuf_release(ptr noundef nonnull %7) #12
  %i.bg = sub nsw i32 %.061.lcssa, %1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge73, %._crit_edge.thread
  %.056 = phi i32 [ 1, %._crit_edge.thread ], [ %i.bg, %._crit_edge73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %.056
}

declare void @ewah_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @trace2_region_leave_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @expand_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 8 uses
  %3 = alloca %struct.modify_index_context, align 8 ; 5 uses
  %4 = alloca %struct.pathspec, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.convert_to_sparse_rec.child_path, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !57
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %.not71 = icmp eq i32 %i.f, 0
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @cache_tree_free(ptr noundef nonnull %i.g) #12
  %i.h = tail call i32 @cache_tree_update(ptr noundef nonnull %0, i32 noundef 0) #12
  %.not72 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not72, ptr %1, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.069 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %i.i = icmp eq ptr %.069, null                  ; 4 uses
  %i.j = load i32, ptr @give_advice_on_expansion, align 4
  %i.k = icmp ne i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr @give_advice_on_expansion, align 4, !tbaa !59
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !59
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #12
  br label %_.exit

_.exit:                                           ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.g ], [ @.str.9, %bb.f ]
  tail call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 36, ptr noundef %.0.i) #12
  br label %bb.h

bb.h:                                             ; preds = %_.exit, %bb.e
  %i.n = select i1 %i.i, ptr @.str.11, ptr @.str.10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.5, i32 noundef 376, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.n, ptr noundef %i.p) #12
  %i.q = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 256) #12 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.q, ptr noundef nonnull align 8 dereferenceable(256) %0, i64 256, i1 false)
  %i.r = select i1 %i.i, i32 0, i32 2             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store i32 %i.r, ptr %i.s, align 4, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !70
  %i.v = mul i32 %i.u, 3
  %i.w = lshr i32 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !70
end_hunk_0
