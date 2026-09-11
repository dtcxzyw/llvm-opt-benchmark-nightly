Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/revision?download=true
inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@compute_indegrees_to_depth:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 156 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %test_flag_and_insert.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.02132.i, i64 8
  %.021.i = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %.not24.i = icmp eq ptr %.021.i, null
  br i1 %.not24.i, label %indegree_walk_step.exit, label %bb.s, !llvm.loop !482

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %.02132.i = phi ptr [ %.02130.i, %.lr.ph.i ], [ %.021.i, %bb.r ] ; 2 uses
  %i.bg = load ptr, ptr %.02132.i, align 8, !tbaa !61 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 72
  %.val.i = load i32, ptr %i.bh, align 8, !tbaa !38 ; 2 uses
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !231 ; 2 uses
  %i.bj = udiv i32 %.val.i, %i.bi                 ; 7 uses
  %i.bk = urem i32 %.val.i, %i.bi
  %i.bl = load i32, ptr %i.bc, align 8, !tbaa !214
  %.not.i.i27.i = icmp ugt i32 %i.bl, %i.bj
  br i1 %.not.i.i27.i, label %._crit_edge4.i.i.i, label %st_mult.exit.i.i.i

._crit_edge4.i.i.i:                               ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !215
  br label %bb.t

st_mult.exit.i.i.i:                               ; preds = %bb.s
  %i.bm = add i32 %i.bj, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !215
  %i.bp = shl nuw nsw i64 %i.bn, 3
  %i.bq = tail call ptr @xrealloc(ptr noundef %i.bo, i64 noundef %i.bp) #24 ; 4 uses
  store ptr %i.bq, ptr %i.bd, align 8, !tbaa !215
  %i.br = load i32, ptr %i.bc, align 8, !tbaa !214 ; 9 uses
  %.not332.i.i.i = icmp ugt i32 %i.br, %i.bj
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i28.i.preheader

.lr.ph.i.i28.i.preheader:                         ; preds = %st_mult.exit.i.i.i
  %i.bs = add i32 %i.br, 1
  %i.bt = add i32 %i.bj, 1
  %i.bu = tail call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.bt)
  %i.bv = sub i32 %i.bu, %i.br                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.bv, 18
  br i1 %min.iters.check, label %.lr.ph.i.i28.i.preheader16, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i28.i.preheader
  %i.bw = add i32 %i.br, 1
  %i.bx = add i32 %i.bj, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.bx)
  %i.by = add i32 %umax, -1
  %i.bz = icmp ult i32 %i.by, %i.br
  br i1 %i.bz, label %.lr.ph.i.i28.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bv, -4                      ; 3 uses
  %i.ca = add i32 %i.br, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = add i32 %i.br, %index
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !216
  store <2 x ptr> splat (ptr null), ptr %i.ce, align 8, !tbaa !216
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cf = icmp eq i32 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !483

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i28.i.preheader16

.lr.ph.i.i28.i.preheader16:                       ; preds = %vector.scevcheck, %.lr.ph.i.i28.i.preheader, %middle.block
  %.0303.i.i.i.ph = phi i32 [ %i.br, %vector.scevcheck ], [ %i.br, %.lr.ph.i.i28.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i28.i

.lr.ph.i.i28.i:                                   ; preds = %.lr.ph.i.i28.i.preheader16, %.lr.ph.i.i28.i
  %.0303.i.i.i = phi i32 [ %i.ci, %.lr.ph.i.i28.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i28.i.preheader16 ] ; 2 uses
  %i.cg = zext i32 %.0303.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cg
  store ptr null, ptr %i.ch, align 8, !tbaa !216
  %i.ci = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.ci, %i.bj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i28.i, !llvm.loop !484

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i28.i, %middle.block, %st_mult.exit.i.i.i
  store i32 %i.bm, ptr %i.bc, align 8, !tbaa !214
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge4.i.i.i
  %i.cj = phi ptr [ %.pre.i.i.i, %._crit_edge4.i.i.i ], [ %i.bq, %._crit_edge.i.i.i ]
  %i.ck = zext i32 %i.bj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !216 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not34.i.i.i, label %bb.u, label %indegree_slab_at.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cn = load i32, ptr %i.bb, align 8, !tbaa !231
  %i.co = zext i32 %i.cn to i64
  %i.cp = load i32, ptr %i.be, align 4, !tbaa !230
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = tail call ptr @xcalloc(i64 noundef %i.co, i64 noundef %i.cr) #24 ; 2 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !215
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ck
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !216
  br label %indegree_slab_at.exit.i

indegree_slab_at.exit.i:                          ; preds = %bb.u, %bb.t
  %i.cv = phi ptr [ %i.cm, %bb.t ], [ %i.cs, %bb.u ]
  %i.cw = load i32, ptr %i.be, align 4, !tbaa !230
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.cy = tail call i32 @repo_parse_commit_gently(ptr noundef %i.cx, ptr noundef nonnull %i.bg, i32 noundef 1) #24
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %indegree_walk_step.exit, label %bb.v

bb.v:                                             ; preds = %indegree_slab_at.exit.i
  %i.da = mul i32 %i.bk, %i.cw
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !52 ; 2 uses
  %.not25.i = icmp eq i32 %i.dd, 0
  %i.de = add nsw i32 %i.dd, 1
  %storemerge.i = select i1 %.not25.i, i32 2, i32 %i.de
  store i32 %storemerge.i, ptr %i.dc, align 4, !tbaa !52
  %i.df = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.dg = and i64 %i.df, 72057594037927936
  %.not.i29.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i29.i, label %bb.w, label %test_flag_and_insert.exit.i

bb.w:                                             ; preds = %bb.v
  %i.dh = or disjoint i64 %i.df, 72057594037927936
  store i64 %i.dh, ptr %i.bg, align 8
  tail call void @prio_queue_put(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bg) #24
  br label %test_flag_and_insert.exit.i

test_flag_and_insert.exit.i:                      ; preds = %bb.w, %bb.v
  %i.di = load i64, ptr %i.h, align 4
  %i.dj = and i64 %i.di, 549755813888
  %.not26.i = icmp eq i64 %i.dj, 0
  br i1 %.not26.i, label %bb.r, label %indegree_walk_step.exit

indegree_walk_step.exit:                          ; preds = %bb.r, %indegree_slab_at.exit.i, %test_flag_and_insert.exit.i, %bb.c, %bb.d, %explore_to_depth.exit.i
  %i.dk = tail call ptr @prio_queue_peek(ptr noundef nonnull %i.c) #24 ; 2 uses
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !485

.critedge:                                        ; preds = %bb.b, %indegree_walk_step.exit, %bb.a
  ret void
}

declare void @prio_queue_reverse(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @trace2_topo_walk_statistics_atexit() #4 {
bb.a:
  %0 = alloca %struct.json_writer, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) @__const.trace2_topo_walk_statistics_atexit.jw, i64 56, i1 false)
  call void @jw_object_begin(ptr noundef nonnull %0, i32 noundef 0) #24
  %i.a = load i32, ptr @count_explore_walked, align 4, !tbaa !52
  %i.b = zext i32 %i.a to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.236, i64 noundef %i.b) #24
  %i.c = load i32, ptr @count_indegree_walked, align 4, !tbaa !52
  %i.d = zext i32 %i.c to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.237, i64 noundef %i.d) #24
  %i.e = load i32, ptr @count_topo_walked, align 4, !tbaa !52
  %i.f = zext i32 %i.e to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.238, i64 noundef %i.f) #24
  call void @jw_end(ptr noundef nonnull %0) #24
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !42
  call void @trace2_data_json_fl(ptr noundef nonnull @.str.15, i32 noundef 3721, ptr noundef nonnull @.str.239, ptr noundef %i.g, ptr noundef nonnull @.str.229, ptr noundef nonnull %0) #24
  call void @jw_release(ptr noundef nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

declare ptr @reduce_heads(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @compact_treesame(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.241, i32 noundef %2) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @rev_same_tree_as_empty(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8
  %i.e = and i64 %i.d, -17179869185
  %masksel = select i1 %.not37, i64 0, i64 17179869184
  %storemerge = or disjoint i64 %i.e, %masksel
  store i64 %storemerge, ptr %1, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2792 ; 2 uses
  %i.g = tail call ptr @lookup_decoration(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #24 ; 4 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52   ; 3 uses
  %.not39 = icmp ult i32 %2, %i.h
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.241, i32 noundef %2) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = xor i32 %2, -1
  %i.n = add i32 %i.h, %i.m
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  %i.p = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.p, ptr %i.g, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196
  %.not40 = icmp eq ptr %i.t, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.242) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.i, align 4, !tbaa !114
  %.not41 = icmp eq i8 %i.u, 0
  br i1 %.not41, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.w = load i64, ptr %i.v, align 4
  %i.x = and i64 %i.w, 4
  %.not42 = icmp eq i64 %i.x, 0
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %1, align 8
  %i.z = or i64 %i.y, 17179869184
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aa = load i64, ptr %1, align 8
  %i.ab = and i64 %i.aa, -17179869185
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge43 = phi i64 [ %i.ab, %bb.n ], [ %i.z, %bb.m ]
  store i64 %storemerge43, ptr %1, align 8
  %i.ac = tail call ptr @add_decoration(ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef null) #24
  tail call void @free(ptr noundef %i.ac) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @get_reflog_timestamp(ptr noundef) local_unnamed_addr #5

declare void @get_reflog_message(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @repo_logmsg_reencode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @apply_mailmap_to_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @format_display_notes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @grep_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @repo_unuse_commit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @commit_list_copy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @get_revision_1(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %rev_info_commit_list_to_queue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %.not4.i = icmp eq ptr %i.d, null
  br i1 %.not4.i, label %bb.c, label %rev_info_commit_list_to_queue.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.f = load i64, ptr %i.e, align 4              ; 2 uses
  %i.g = and i64 %i.f, 524288
  %.not5.i = icmp eq i64 %i.g, 0
  br i1 %.not5.i, label %bb.d, label %rev_info_commit_list_to_queue.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.f, 16
  %.not6.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i, label %get_walk_mode.exit, label %rev_info_commit_list_to_queue.exit

get_walk_mode.exit:                               ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !204
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %rev_info_commit_list_to_queue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_walk_mode.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.k = tail call ptr @pop_commit(ptr noundef nonnull %0) #24
  tail call void @prio_queue_put(ptr noundef nonnull %i.j, ptr noundef %i.k) #24
  %i.l = load ptr, ptr %0, align 8, !tbaa !204
  %.not.i44 = icmp eq ptr %i.l, null
  br i1 %.not.i44, label %rev_info_commit_list_to_queue.exit, label %bb.e, !llvm.loop !4

rev_info_commit_list_to_queue.exit:               ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.c, %get_walk_mode.exit
  %.0.i65 = phi i32 [ 2, %bb.c ], [ 4, %get_walk_mode.exit ], [ 3, %bb.d ], [ 1, %bb.b ], [ 0, %bb.a ], [ 4, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 3024       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %rev_info_commit_list_to_queue.exit
  switch i32 %.0.i65, label %default.unreachable92 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.s = tail call ptr @next_reflog_entry(ptr noundef %i.r) #24
  br label %next_topo_commit.exit

bb.h:                                             ; preds = %bb.f
  %.val43 = load ptr, ptr %i.n, align 8, !tbaa !207 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val43, i64 104
  %i.u = tail call ptr @prio_queue_get(ptr noundef nonnull %i.t) #24 ; 3 uses
  %.not.i45 = icmp eq ptr %i.u, null
  br i1 %.not.i45, label %next_topo_commit.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.val43, i64 152 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 72
  %.val.i = load i32, ptr %i.w, align 8, !tbaa !38 ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !231  ; 2 uses
  %i.y = udiv i32 %.val.i, %i.x                   ; 7 uses
  %i.z = urem i32 %.val.i, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.val43, i64 160 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !214
  %.not.i.i.i = icmp ugt i32 %i.ab, %i.y
  br i1 %.not.i.i.i, label %._crit_edge4.i.i.i, label %st_mult.exit.i.i.i

._crit_edge4.i.i.i:                               ; preds = %bb.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val43, i64 168
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !215
  br label %bb.j

st_mult.exit.i.i.i:                               ; preds = %bb.i
  %i.ac = add i32 %i.y, 1                         ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val43, i64 168 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !215
  %i.ag = shl nuw nsw i64 %i.ad, 3
  %i.ah = tail call ptr @xrealloc(ptr noundef %i.af, i64 noundef %i.ag) #24 ; 4 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !215
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !214 ; 9 uses
  %.not332.i.i.i = icmp ugt i32 %i.ai, %i.y
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %st_mult.exit.i.i.i
end_hunk_0
