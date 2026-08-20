inline.NumInlined: 332
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@find_first_merges:bb.a
  %.not54 = icmp eq i64 %indvars.iv104, %indvars.iv
  br i1 %.not54, label %.thread68, label %bb.g

bb.g:                                             ; preds = %.lr.ph92
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !317
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !318
  %i.ag = call i32 @repo_in_merge_bases(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef %i.ab) #22
  %.fr = freeze i32 %i.ag                         ; 3 uses
  %i.ah = icmp slt i32 %.fr, 0
  br i1 %i.ah, label %.thread84, label %bb.h

.thread84:                                        ; preds = %bb.g
  call void @object_array_clear(ptr noundef nonnull %5) #22
  call void @release_revisions(ptr noundef nonnull %6) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not55 = icmp eq i32 %.fr, 0
  br i1 %.not55, label %..thread68_crit_edge, label %.thread79

..thread68_crit_edge:                             ; preds = %bb.h
  %.pre = load i32, ptr %5, align 8, !tbaa !314
  br label %.thread68

.thread68:                                        ; preds = %..thread68_crit_edge, %.lr.ph92
  %i.ai = phi i32 [ %.pre, %..thread68_crit_edge ], [ %i.ac, %.lr.ph92 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph92, label %._crit_edge93.thread, !llvm.loop !324

._crit_edge93.thread:                             ; preds = %.thread68, %bb.f
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !317
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !318
  call void @add_object_array(ptr noundef %i.an, ptr noundef null, ptr noundef nonnull %4) #22
  br label %.thread79

.thread79:                                        ; preds = %bb.h, %._crit_edge93.thread
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.ao = load i32, ptr %5, align 8, !tbaa !314   ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next105, %i.ap
  br i1 %i.aq, label %bb.f, label %._crit_edge99, !llvm.loop !325

._crit_edge99:                                    ; preds = %.thread79, %._crit_edge
  call void @object_array_clear(ptr noundef nonnull %5) #22
  call void @release_revisions(ptr noundef nonnull %6) #22
  %i.ar = load i32, ptr %4, align 8, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %.thread84, %.thread, %._crit_edge99
  %.9 = phi i32 [ %i.t, %.thread ], [ %.fr, %.thread84 ], [ %i.ar, %._crit_edge99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal fastcc void @format_commit(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pretty_print_context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, i8 0, i64 176, i1 false)
  %i.a = load i32, ptr @default_abbrev, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.a, ptr %i.b, align 4, !tbaa !326
  tail call void @strbuf_addchars(ptr noundef nonnull %0, i32 noundef 32, i64 noundef 4) #22
  %i.c = tail call ptr @merge_remote_util(ptr noundef %2) #22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %0, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.d) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @repo_format_commit_message(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.190, ptr noundef nonnull %0, ptr noundef nonnull %3) #22
  %i.e = load i64, ptr %0, align 8, !tbaa !333    ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !248  ; 2 uses
  %.neg.i = add i64 %i.g, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.e, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.c
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #22
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !248 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.h = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.g, %strbuf_avail.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i, ptr %i.k, align 8, !tbaa !248
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 10, ptr %i.l, align 1, !tbaa !166
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.n = load i64, ptr %i.k, align 8, !tbaa !248
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %strbuf_addch.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

declare void @object_array_clear(ptr noundef) local_unnamed_addr #4

declare ptr @repo_find_unique_abbrev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @repo_clear(ptr noundef) local_unnamed_addr #4

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @repo_init_revisions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @setup_revisions(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @prepare_revision_walk(ptr noundef) local_unnamed_addr #4

declare ptr @get_revision(ptr noundef) local_unnamed_addr #4

declare void @release_revisions(ptr noundef) local_unnamed_addr #4

declare void @add_object_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @reset_revision_walk() local_unnamed_addr #4

declare ptr @merge_remote_util(ptr noundef) local_unnamed_addr #4

declare void @repo_format_commit_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -254, 256) i32 @sort_dirs_next_to_their_children(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !166     ; 2 uses
  %.not25 = icmp eq i8 %i.a, 0
  br i1 %.not25, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %.027 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %.01426 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  %i.c = load i8, ptr %.027, align 1, !tbaa !166
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01426, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !166   ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !334

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.f, %bb.b ], [ %.027, %.lr.ph ]
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 1, %.lr.ph ]
  %narrow = phi i8 [ 47, %bb.a ], [ 47, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %spec.select = zext i8 %narrow to i32
  %i.i = load i8, ptr %.0.lcssa, align 1, !tbaa !166 ; 2 uses
  %.not22 = icmp eq i8 %i.i, 0
  %narrow24 = select i1 %.not22, i8 47, i8 %i.i   ; 2 uses
  %i.j = zext i8 %narrow24 to i32
  %i.k = icmp eq i8 %narrow, %narrow24
  %i.l = sub nsw i32 %spec.select, %i.j
  %.015 = select i1 %i.k, i32 %i.h, i32 %i.l
  ret i32 %.015
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @write_tree(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.merge_ort_internal.merge_base_abbrev, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !335  ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %.not = icmp ult i64 %i.g, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str, i32 noundef 3840, ptr noundef nonnull @__PRETTY_FUNCTION__.write_tree) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = sub i32 %i.h, %3                         ; 4 uses
  %.not39 = icmp ne i64 %i.g, 0
  %i.j = icmp ugt i32 %i.i, 1
  %or.cond = and i1 %.not39, %i.j
  br i1 %or.cond, label %bb.d, label %sane_qsort.exit

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %2, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.e
  tail call void @qsort(ptr noundef %i.m, i64 noundef range(i64 0, 4294967296) %i.k, i64 noundef 16, ptr noundef nonnull @tree_entry_order) #22
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %bb.d, %bb.c
  %i.n = add i64 %i.d, 8
  %.not47 = icmp eq i32 %3, %i.h
  br i1 %.not47, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %sane_qsort.exit
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 0) #22
  br label %._crit_edge46

.lr.ph:                                           ; preds = %sane_qsort.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !33
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.042 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.e ]
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %6 = add i32 %3, %5
  %7 = zext i32 %6 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %7
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #24
  %i.s = add i64 %i.n, %.042
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph45.preheader, label %bb.e, !llvm.loop !336

.lr.ph45.preheader:                               ; preds = %bb.e
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %i.t) #22
  %wide.trip.count53 = zext i32 %i.i to i64
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next51, %.lr.ph45 ] ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !33
  %8 = trunc nuw nsw i64 %indvars.iv50 to i32
  %9 = add i32 %3, %8
  %10 = zext i32 %9 to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.z = load i16, ptr %i.y, align 4, !tbaa !82
  %i.aa = zext i16 %i.z to i32
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !50
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.228, i32 noundef %i.aa, ptr noundef %i.ab, i32 noundef 0) #22
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef %i.x, i64 noundef %i.d) #22
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !337

._crit_edge46:                                    ; preds = %.lr.ph45, %._crit_edge.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !248
  %i.ai = call i32 @odb_write_object_ext(ptr noundef %i.ad, ptr noundef %i.af, i64 noundef %i.ah, i32 noundef 2, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #22
  %.not40 = icmp ne i32 %i.ai, 0
  %spec.select = sext i1 %.not40 to i32
  call void @strbuf_release(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %spec.select
}

declare i32 @repo_has_promisor_remote(ptr noundef) local_unnamed_addr #4

declare i32 @odb_read_object_info_extended(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @promisor_remote_get_direct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @oid_array_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unique_path(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.merge_ort_internal.merge_base_abbrev, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.220, ptr noundef %1) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !248  ; 2 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef %i.e) #22
  %i.f = load i64, ptr %i.c, align 8, !tbaa !248  ; 3 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i, label %add_flattened_path.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.n, %bb.d ]
  %.09.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.09.i ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !166
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 95, ptr %i.k, align 1, !tbaa !166
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !248
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.i, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.o = add nuw i64 %.09.i, 1                    ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %add_flattened_path.exit, !llvm.loop !338

add_flattened_path.exit:                          ; preds = %bb.d, %bb.a
  %i.q = phi i64 [ %i.f, %bb.a ], [ %i.n, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.t = call i32 @strmap_contains(ptr noundef %i.b, ptr noundef %i.s) #22
  %.not10 = icmp eq i32 %i.t, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %add_flattened_path.exit, %strbuf_setlen.exit
  %.011 = phi i32 [ %i.z, %strbuf_setlen.exit ], [ 0, %add_flattened_path.exit ] ; 2 uses
  %i.u = load i64, ptr %3, align 8, !tbaa !333
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 1)
  %i.v = icmp ugt i64 %i.q, %spec.select.i
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.222, i32 noundef 167, ptr noundef nonnull @.str.223) #23
  unreachable

bb.f:                                             ; preds = %.lr.ph
  store i64 %i.q, ptr %i.c, align 8, !tbaa !248
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %.not9.i = icmp eq ptr %i.w, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.x, align 1, !tbaa !166
  br label %strbuf_setlen.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !166
  %.not10.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.222, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #23
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.g, %bb.h
  %i.z = add nuw nsw i32 %.011, 1
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.221, i32 noundef %.011) #22
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.ab = call i32 @strmap_contains(ptr noundef %i.b, ptr noundef %i.aa) #22
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !339

._crit_edge:                                      ; preds = %strbuf_setlen.exit, %add_flattened_path.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !248
  %i.af = add i64 %i.ae, 1
  %i.ag = call ptr @mem_pool_alloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #22 ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !248
  %i.aj = add i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  call void @strbuf_release(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.ag
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_oid_strbuf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.f = call ptr @odb_read_object(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !58
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.225, i32 noundef 5) #22
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @.str.225, %bb.b ]
  %i.i = call ptr @oid_to_hex(ptr noundef %1) #22
  call void (ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ...) @path_msg(ptr noundef nonnull %0, i32 noundef 26, i32 noundef 0, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %.0.i, ptr noundef %i.i)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.a, align 4, !tbaa !58
  %.not13 = icmp eq i32 %i.j, 3
  br i1 %.not13, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.f) #22
  %i.k = load i32, ptr @git_gettext_enabled, align 4, !tbaa !58
  %.not4.i14 = icmp eq i32 %i.k, 0
  br i1 %.not4.i14, label %_.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.226, i32 noundef 5) #22
  br label %_.exit16

_.exit16:                                         ; preds = %bb.e, %bb.f
  %.0.i15 = phi ptr [ %i.l, %bb.f ], [ @.str.226, %bb.e ]
  %i.m = call ptr @oid_to_hex(ptr noundef %1) #22
  call void (ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ...) @path_msg(ptr noundef nonnull %0, i32 noundef 27, i32 noundef 0, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %.0.i15, ptr noundef %i.m)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !260  ; 2 uses
  %i.o = add i64 %i.n, 1
  call void @strbuf_attach(ptr noundef nonnull %2, ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef %i.o) #22
end_hunk_0
