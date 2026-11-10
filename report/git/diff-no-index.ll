Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff-no-index?download=true
inline.NumInlined: 36
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@append_basename
define internal fastcc void @append_basename(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #14 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %.not14 = icmp eq i64 %.promoted, 0
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %.promoted, %.lr.ph ], [ %i.k, %bb.c ] ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %i.j = icmp eq i8 %i.i, 47
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.f, -1                         ; 3 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !36
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !102

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = load i64, ptr %0, align 8, !tbaa !37     ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  %.neg.i = add i64 %.lcssa, 1                    ; 2 uses
  %.not.i = icmp eq i64 %i.l, %.neg.i
  %or.cond = or i1 %.not.i.i, %.not.i
  br i1 %or.cond, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %.critedge
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %.critedge, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %.critedge ]
  %i.m = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %.lcssa, %.critedge ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  store i64 %.pre-phi.i, ptr %i.c, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 47, ptr %i.p, align 1, !tbaa !35
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.r = load i64, ptr %i.c, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !35
  %.not12 = icmp eq ptr %i.a, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = select i1 %.not12, ptr %2, ptr %i.t      ; 2 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #14
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.u, i64 noundef %i.v) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @noindex_filespec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 5 uses
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @.str.10, ptr %1
  %i.c = tail call ptr @alloc_filespec(ptr noundef nonnull %spec.store.select) #12 ; 9 uses
  %i.d = tail call ptr @null_oid(ptr noundef %0) #12
  %i.e = trunc i32 %2 to i16
  tail call void @fill_filespec(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 0, i16 noundef zeroext %i.e) #12
  switch i32 %3, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_directory_contents.pathbuf, i64 24, i1 false)
  %i.f = call i64 @strbuf_read(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 0) #12
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %populate_from_stdin.exit

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.12) #13
  unreachable

populate_from_stdin.exit:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 82 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, -5
  store i16 %i.j, ptr %i.h, align 2
  %i.k = call ptr @strbuf_detach(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !107
  %i.m = load i64, ptr %i.b, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !108
  %i.o = load i16, ptr %i.h, align 2
  %i.p = or i16 %i.o, 34
  store i16 %i.p, ptr %i.h, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_directory_contents.pathbuf, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.s = tail call i32 (ptr, i32, ...) @xopen(ptr noundef %i.r, i32 noundef 0) #12 ; 2 uses
  %i.t = call i64 @strbuf_read(ptr noundef nonnull %4, i32 noundef %i.s, i64 noundef 0) #12
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %populate_from_pipe.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !109
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.13, ptr noundef %i.v) #13
  unreachable

populate_from_pipe.exit:                          ; preds = %bb.d
  %i.w = call i32 @close(i32 noundef %i.s) #12    ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 82 ; 4 uses
  %i.y = load i16, ptr %i.x, align 2
  %i.z = and i16 %i.y, -5
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef nonnull %i.a) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !108
  %i.ae = load i16, ptr %i.x, align 2
  %i.af = or i16 %i.ae, 34
  store i16 %i.af, ptr %i.x, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %populate_from_pipe.exit, %populate_from_stdin.exit
  ret ptr %i.c
}

declare ptr @diff_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_directory_contents(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = tail call noalias ptr @opendir(ptr noundef nonnull %0) ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.c) #12 ; 3 uses
  %.not2734 = icmp eq ptr %i.d, null
  br i1 %.not2734, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = shl i64 %i.b, 32
  %.pre36 = ashr exact i64 %.pre, 32
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not28 = icmp eq ptr %2, null
  %i.e = shl i64 %i.b, 32
  %i.f = ashr exact i64 %i.e, 32                  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br i1 %.not28, label %.backedge.us, label %.lr.ph.split

.backedge.us:                                     ; preds = %.lr.ph, %.backedge.us
  %i.j = phi ptr [ %i.m, %.backedge.us ], [ %i.d, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 19
  %i.l = tail call ptr @string_list_insert(ptr noundef nonnull %1, ptr noundef nonnull %i.k) #12 ; 0 uses
  %i.m = tail call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not27.us = icmp eq ptr %i.m, null
  br i1 %.not27.us, label %._crit_edge, label %.backedge.us

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.14, ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.r

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.o = phi ptr [ %i.av, %.backedge ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.p = load i64, ptr %3, align 8, !tbaa !37
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.p, i64 1)
  %i.q = icmp ugt i64 %i.f, %spec.select.i
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.15, i32 noundef 167, ptr noundef nonnull @.str.16) #13
  unreachable

bb.d:                                             ; preds = %.lr.ph.split
  store i64 %i.f, ptr %i.a, align 8, !tbaa !36
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not9.i = icmp eq ptr %i.r, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f
  store i8 0, ptr %i.s, align 1, !tbaa !35
  br label %strbuf_setlen.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !35
  %.not10.i = icmp eq i8 %i.t, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #13
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 19 ; 3 uses
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #14
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %i.u, i64 noundef %i.v) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !111   ; 2 uses
  %i.y = icmp ne i8 %i.x, 0
  %i.z = load i32, ptr @false_but_the_compiler_does_not_know_it_, align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %i.ab, label %bb.k, label %bb.h

bb.h:                                             ; preds = %strbuf_setlen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_directory_contents.pathbuf, i64 24, i1 false)
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef %i.ac) #12
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !36  ; 4 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %strbuf_complete.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %.not6.i = icmp eq i8 %i.ah, 47
  br i1 %.not6.i, label %strbuf_complete.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %4, align 8, !tbaa !37    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  %.neg.i.i = add i64 %i.ad, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, %.neg.i.i
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %bb.j
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #12
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %bb.j
  %i.aj = phi ptr [ %.pre.i, %strbuf_avail.exit.thread.i.i ], [ %i.ae, %bb.j ]
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %bb.j ]
  %i.ak = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.ad, %bb.j ]
  store i64 %.pre-phi.i.i, ptr %i.h, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 47, ptr %i.al, align 1, !tbaa !35
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.an = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ao, align 1, !tbaa !35
  br label %strbuf_complete.exit

strbuf_complete.exit:                             ; preds = %bb.h, %bb.i, %strbuf_addch.exit.i
  %i.ap = call zeroext i8 @get_dtype(ptr noundef nonnull %i.o, ptr noundef nonnull %4, i32 noundef 0) #12
  call void @strbuf_release(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.k

bb.k:                                             ; preds = %strbuf_setlen.exit, %strbuf_complete.exit
  %.0.in.in = phi i8 [ %i.ap, %strbuf_complete.exit ], [ %i.x, %strbuf_setlen.exit ]
  %.0.in = icmp eq i8 %.0.in.in, 4
  %.0 = zext i1 %.0.in to i32
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !36
  %i.as = trunc i64 %i.ar to i32
  %i.at = call i32 @match_leading_pathspec(ptr noundef null, ptr noundef nonnull %2, ptr noundef %i.aq, i32 noundef %i.as, i32 noundef 0, ptr noundef null, i32 noundef %.0) #12
  %.not29 = icmp eq i32 %i.at, 0
  br i1 %.not29, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call ptr @string_list_insert(ptr noundef nonnull %1, ptr noundef nonnull %i.u) #12 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k
  %i.av = call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not27 = icmp eq ptr %i.av, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre36, %.preheader.._crit_edge_crit_edge ], [ %i.f, %.backedge.us ], [ %i.f, %.backedge ] ; 3 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !37
  %spec.select.i30 = call i64 @llvm.usub.sat.i64(i64 %i.aw, i64 1)
  %i.ax = icmp ugt i64 %.pre-phi, %spec.select.i30
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.15, i32 noundef 167, ptr noundef nonnull @.str.16) #13
  unreachable

bb.n:                                             ; preds = %._crit_edge
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 2 uses
  %.not9.i31 = icmp eq ptr %i.az, @strbuf_slopbuf
  br i1 %.not9.i31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.pre-phi
  store i8 0, ptr %i.ba, align 1, !tbaa !35
  br label %strbuf_setlen.exit33

bb.p:                                             ; preds = %bb.n
  %i.bb = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !35
  %.not10.i32 = icmp eq i8 %i.bb, 0
  br i1 %.not10.i32, label %strbuf_setlen.exit33, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #13
  unreachable

strbuf_setlen.exit33:                             ; preds = %bb.o, %bb.p
  %i.bc = call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %strbuf_setlen.exit33, %bb.b
  %.024 = phi i32 [ 0, %strbuf_setlen.exit33 ], [ -1, %bb.b ]
  ret i32 %.024
}

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @alloc_filespec(ptr noundef) local_unnamed_addr #3

declare void @fill_filespec(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare ptr @null_oid(ptr noundef) local_unnamed_addr #3

declare i64 @strbuf_read(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #5

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xopen(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #9

declare ptr @readdir_skip_dot_and_dotdot(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @get_dtype(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @match_leading_pathspec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"p1 _ZTS10repository", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"strbuf", !13, i64 0, !13, i64 8, !15, i64 16}
!17 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!18 = !{!"string_list", !17, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !12, i64 32}
!19 = !{!"any p2 pointer", !12, i64 0}
!20 = !{!"p2 omnipotent char", !19, i64 0}
!21 = !{!"p1 _ZTS13pathspec_item", !12, i64 0}
!22 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !21, i64 16}
!23 = !{!"p2 _ZTS17re_pattern_buffer", !19, i64 0}
!24 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!25 = !{!"p1 _ZTS6oidset", !12, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!27 = !{!"p1 _ZTS20emitted_diff_symbols", !12, i64 0}
!28 = !{!"p1 _ZTS6strmap", !12, i64 0}
!29 = !{!"diff_options", !15, i64 0, !15, i64 8, !9, i64 16, !9, i64 20, !15, i64 24, !9, i64 32, !23, i64 40, !13, i64 48, !13, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !24, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !15, i64 328, !9, i64 336, !15, i64 344, !9, i64 352, !9, i64 356, !20, i64 360, !13, i64 368, !13, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !15, i64 400, !9, i64 408, !9, i64 412, !25, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !12, i64 440, !26, i64 448, !9, i64 456, !8, i64 460, !22, i64 464, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !9, i64 552, !27, i64 560, !9, i64 568, !9, i64 572, !14, i64 576, !28, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!30 = !{!9, !9, i64 0}
!31 = !{!"timespec", !13, i64 0, !13, i64 8}
!32 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !31, i64 72, !31, i64 88, !31, i64 104, !8, i64 120}
!33 = !{!32, !9, i64 24}
!34 = !{!16, !15, i64 16}
!35 = !{!8, !8, i64 0}
!36 = !{!16, !13, i64 8}
!37 = !{!16, !13, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"short", !8, i64 0}
!40 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!41 = !{!"p1 _ZTS16prio_queue_entry", !12, i64 0}
!42 = !{!"prio_queue", !12, i64 0, !13, i64 8, !12, i64 16, !13, i64 24, !13, i64 32, !41, i64 40}
!43 = !{!"p1 _ZTS18object_array_entry", !12, i64 0}
!44 = !{!"object_array", !9, i64 0, !9, i64 4, !43, i64 8}
!45 = !{!"p1 _ZTS17rev_cmdline_entry", !12, i64 0}
!46 = !{!"rev_cmdline_info", !9, i64 0, !9, i64 4, !45, i64 8}
!47 = !{!"p1 _ZTS27list_objects_filter_options", !12, i64 0}
!48 = !{!"list_objects_filter_options", !16, i64 0, !9, i64 24, !9, i64 28, !9, i64 28, !15, i64 32, !13, i64 40, !13, i64 48, !9, i64 56, !13, i64 64, !13, i64 72, !47, i64 80}
!49 = !{!"strvec", !20, i64 0, !13, i64 8, !13, i64 16}
!50 = !{!"ref_exclusions", !18, i64 0, !49, i64 40, !8, i64 64}
!51 = !{!"date_mode", !9, i64 0, !9, i64 4, !15, i64 8}
!52 = !{!"p1 _ZTS8log_info", !12, i64 0}
!53 = !{!"ident_split", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!54 = !{!"p1 _ZTS11string_list", !12, i64 0}
!55 = !{!"p1 _ZTS8grep_pat", !12, i64 0}
!56 = !{!"p2 _ZTS8grep_pat", !19, i64 0}
!57 = !{!"p1 _ZTS9grep_expr", !12, i64 0}
!58 = !{!"grep_opt", !55, i64 0, !56, i64 8, !55, i64 16, !56, i64 24, !57, i64 32, !14, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !8, i64 152, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !12, i64 856, !12, i64 864, !12, i64 872}
!59 = !{!"p1 _ZTS9git_graph", !12, i64 0}
!60 = !{!"p1 _ZTS16reflog_walk_info", !12, i64 0}
!61 = !{!"p1 _ZTS16decoration_entry", !12, i64 0}
!62 = !{!"decoration", !15, i64 0, !9, i64 8, !9, i64 12, !61, i64 16}
!63 = !{!"display_notes_opt", !9, i64 0, !18, i64 8}
!64 = !{!"p1 _ZTS9object_id", !12, i64 0}
!65 = !{!"p1 _ZTS13saved_parents", !12, i64 0}
!66 = !{!"p1 _ZTS16revision_sources", !12, i64 0}
!67 = !{!"p1 _ZTS14topo_walk_info", !12, i64 0}
!68 = !{!"p2 _ZTS12bloom_keyvec", !19, i64 0}
!69 = !{!"p1 _ZTS21bloom_filter_settings", !12, i64 0}
!70 = !{!"p1 _ZTS10tmp_objdir", !12, i64 0}
!71 = !{!"p1 int", !12, i64 0}
!72 = !{!"kh_oid_set", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !71, i64 16, !64, i64 24, !71, i64 32}
!73 = !{!"oidset", !72, i64 0}
!74 = !{!"rev_info", !40, i64 0, !42, i64 8, !44, i64 56, !14, i64 72, !44, i64 80, !46, i64 96, !48, i64 112, !50, i64 200, !15, i64 272, !15, i64 280, !15, i64 288, !22, i64 296, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 340, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !51, i64 352, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380, !52, i64 384, !9, i64 392, !9, i64 396, !15, i64 400, !15, i64 408, !9, i64 416, !15, i64 424, !15, i64 432, !53, i64 440, !54, i64 504, !9, i64 512, !15, i64 520, !15, i64 528, !9, i64 536, !9, i64 540, !9, i64 544, !54, i64 552, !58, i64 560, !59, i64 1440, !9, i64 1448, !9, i64 1452, !9, i64 1456, !9, i64 1460, !9, i64 1460, !13, i64 1464, !13, i64 1472, !13, i64 1480, !9, i64 1488, !9, i64 1492, !12, i64 1496, !12, i64 1504, !12, i64 1512, !29, i64 1520, !29, i64 2128, !60, i64 2736, !62, i64 2744, !62, i64 2768, !62, i64 2792, !63, i64 2816, !64, i64 2864, !64, i64 2872, !15, i64 2880, !15, i64 2888, !15, i64 2896, !49, i64 2904, !9, i64 2928, !15, i64 2936, !9, i64 2944, !9, i64 2948, !9, i64 2952, !62, i64 2960, !65, i64 2984, !40, i64 2992, !40, i64 3000, !15, i64 3008, !66, i64 3016, !67, i64 3024, !68, i64 3032, !9, i64 3040, !69, i64 3048, !9, i64 3056, !70, i64 3064, !73, i64 3072}
!75 = !{!74, !15, i64 272}
!76 = !{!"option", !9, i64 0, !9, i64 4, !15, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !15, i64 40, !9, i64 48, !12, i64 56, !13, i64 64, !12, i64 72, !13, i64 80, !12, i64 88}
!77 = !{!76, !9, i64 0}
!78 = !{!76, !9, i64 4}
!79 = !{!76, !15, i64 8}
!80 = !{!76, !12, i64 16}
!81 = !{!76, !13, i64 24}
!82 = !{!76, !15, i64 32}
!83 = !{!76, !15, i64 40}
!84 = !{!76, !9, i64 48}
!85 = !{!76, !12, i64 56}
!86 = !{!76, !13, i64 64}
!87 = !{!15, !15, i64 0}
!88 = !{!22, !9, i64 0}
!89 = !{!74, !9, i64 1792}
!90 = !{!74, !9, i64 1800}
!91 = !{!74, !9, i64 1664}
!92 = !{!74, !9, i64 1684}
!93 = !{!74, !15, i64 1848}
!94 = !{!74, !9, i64 1456}
!95 = !{!74, !9, i64 1672}
!96 = distinct !{!96, !38}
!97 = !{!18, !13, i64 8}
!98 = !{!18, !17, i64 0}
!99 = !{!"string_list_item", !15, i64 0, !12, i64 8}
!100 = !{!99, !15, i64 0}
!101 = !{!29, !9, i64 156}
!102 = distinct !{!102, !38}
!103 = !{!13, !13, i64 0}
!104 = !{!"object_id", !8, i64 0, !9, i64 32}
!105 = !{!"p1 _ZTS15userdiff_driver", !12, i64 0}
!106 = !{!"diff_filespec", !104, i64 0, !15, i64 40, !12, i64 48, !12, i64 56, !13, i64 64, !9, i64 72, !9, i64 76, !39, i64 80, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !105, i64 88}
!107 = !{!106, !12, i64 48}
!108 = !{!106, !13, i64 64}
!109 = !{!106, !15, i64 40}
!110 = !{!"dirent", !13, i64 0, !13, i64 8, !39, i64 16, !8, i64 18, !8, i64 19}
!111 = !{!110, !8, i64 18}
end_hunk_0
