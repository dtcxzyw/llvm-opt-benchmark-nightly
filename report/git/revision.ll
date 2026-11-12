Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/revision?download=true
inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@compute_indegrees_to_depth:bb.a

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
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
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
  %i.aj = add i32 %i.ai, 1
  %i.ak = add i32 %i.y, 1
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.ak)
  %i.am = sub i32 %i.al, %i.ai                    ; 3 uses
  %min.iters.check100 = icmp ult i32 %i.am, 18
  br i1 %min.iters.check100, label %.lr.ph.i.i.i.preheader110, label %vector.scevcheck97

vector.scevcheck97:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.an = add i32 %i.ai, 1
  %i.ao = add i32 %i.y, 1
  %umax98 = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %i.ao)
  %i.ap = add i32 %umax98, -1
  %i.aq = icmp ult i32 %i.ap, %i.ai
  br i1 %i.aq, label %.lr.ph.i.i.i.preheader110, label %vector.ph101

vector.ph101:                                     ; preds = %vector.scevcheck97
  %n.vec102 = and i32 %i.am, -4                   ; 3 uses
  %i.ar = add i32 %i.ai, %n.vec102
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i32 [ 0, %vector.ph101 ], [ %index.next105, %vector.body103 ] ; 2 uses
  %i.as = add i32 %i.ai, %index104
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !216
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !216
  %index.next105 = add nuw i32 %index104, 4       ; 2 uses
  %i.aw = icmp eq i32 %index.next105, %n.vec102
  br i1 %i.aw, label %middle.block106, label %vector.body103, !llvm.loop !486

middle.block106:                                  ; preds = %vector.body103
  %cmp.n107 = icmp eq i32 %i.am, %n.vec102
  br i1 %cmp.n107, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader110

.lr.ph.i.i.i.preheader110:                        ; preds = %vector.scevcheck97, %.lr.ph.i.i.i.preheader, %middle.block106
  %.0303.i.i.i.ph = phi i32 [ %i.ai, %vector.scevcheck97 ], [ %i.ai, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block106 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader110, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader110 ] ; 2 uses
  %i.ax = zext i32 %.0303.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ax
  store ptr null, ptr %i.ay, align 8, !tbaa !216
  %i.az = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.az, %i.y
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !487

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block106, %st_mult.exit.i.i.i
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !214
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge4.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i, %._crit_edge4.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ]
  %i.bb = zext i32 %i.y to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !216 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not34.i.i.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.val43, i64 168
  %i.bf = load i32, ptr %i.v, align 8, !tbaa !231
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.val43, i64 156
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !230
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call ptr @xcalloc(i64 noundef %i.bg, i64 noundef %i.bk) #24 ; 2 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !215
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bb
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j
  %i.bo = phi ptr [ %i.bd, %bb.j ], [ %i.bl, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val43, i64 156
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !230
  %i.br = mul i32 %i.bq, %i.z
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bs
  store i32 0, ptr %i.bt, align 4, !tbaa !52
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.bu = tail call ptr @pop_commit(ptr noundef %0) #24
  br label %next_topo_commit.exit

bb.m:                                             ; preds = %bb.f
  %i.bv = tail call ptr @prio_queue_get(ptr noundef nonnull %i.m) #24
  br label %next_topo_commit.exit

default.unreachable92:                            ; preds = %bb.f
  unreachable

next_topo_commit.exit:                            ; preds = %bb.m, %bb.l, %bb.g
  %.035 = phi ptr [ %i.bv, %bb.m ], [ %i.s, %bb.g ], [ %i.bu, %bb.l ] ; 6 uses
  %.not37 = icmp eq ptr %.035, null
  br i1 %.not37, label %next_topo_commit.exit.thread, label %bb.n

bb.n:                                             ; preds = %next_topo_commit.exit
  switch i32 %.0.i65, label %bb.p [
    i32 0, label %bb.o
    i32 2, label %expand_topo_walk.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.bw = load i64, ptr %.035, align 8
  %i.bx = and i64 %i.bw, -588410519553
  store i64 %i.bx, ptr %.035, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %.0357173 = phi ptr [ %i.u, %.thread ], [ %.035, %bb.o ], [ %.035, %bb.n ] ; 14 uses
  %i.by = load i64, ptr %i.o, align 8, !tbaa !179 ; 2 uses
  %.not39 = icmp eq i64 %i.by, -1
  br i1 %.not39, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %.not.i46 = icmp eq ptr %.val, null
  br i1 %.not.i46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call i64 @get_reflog_timestamp(ptr noundef nonnull %.val) #24
  %.pre = load i64, ptr %i.o, align 8, !tbaa !179
  br label %comparison_date.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.0357173, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !229
  br label %comparison_date.exit

comparison_date.exit:                             ; preds = %bb.r, %bb.s
  %i.cc = phi i64 [ %.pre, %bb.r ], [ %i.by, %bb.s ]
  %i.cd = phi i64 [ %i.bz, %bb.r ], [ %i.cb, %bb.s ]
  %i.ce = icmp ult i64 %i.cd, %i.cc
  br i1 %i.ce, label %.backedge, label %bb.t

bb.t:                                             ; preds = %comparison_date.exit, %bb.p
  switch i32 %.0.i65, label %expand_topo_walk.exit [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 4, label %bb.ai
  ]
end_hunk_0
begin_hunk_1_@get_revision_1:bb.a
.lr.ph.i.i.i52.preheader:                         ; preds = %st_mult.exit.i.i.i50
  %i.do = add i32 %i.dn, 1
  %i.dp = add i32 %i.df, 1
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.do, i32 %i.dp)
  %i.dr = sub i32 %i.dq, %i.dn                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.dr, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.i52.preheader109, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i52.preheader
  %i.ds = add i32 %i.dn, 1
  %i.dt = add i32 %i.df, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
  %i.du = add i32 %umax, -1
  %i.dv = icmp ult i32 %i.du, %i.dn
  br i1 %i.dv, label %.lr.ph.i.i.i52.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.dr, -4                      ; 3 uses
  %i.dw = add i32 %i.dn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = add i32 %i.dn, %index
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !216
  store <2 x ptr> splat (ptr null), ptr %i.ea, align 8, !tbaa !216
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.eb = icmp eq i32 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.dr, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i55, label %.lr.ph.i.i.i52.preheader109

.lr.ph.i.i.i52.preheader109:                      ; preds = %vector.scevcheck, %.lr.ph.i.i.i52.preheader, %middle.block
  %.0303.i.i.i53.ph = phi i32 [ %i.dn, %vector.scevcheck ], [ %i.dn, %.lr.ph.i.i.i52.preheader ], [ %i.dw, %middle.block ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader109, %.lr.ph.i.i.i52
  %.0303.i.i.i53 = phi i32 [ %i.ee, %.lr.ph.i.i.i52 ], [ %.0303.i.i.i53.ph, %.lr.ph.i.i.i52.preheader109 ] ; 2 uses
  %i.ec = zext i32 %.0303.i.i.i53 to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ec
  store ptr null, ptr %i.ed, align 8, !tbaa !216
  %i.ee = add i32 %.0303.i.i.i53, 1               ; 2 uses
  %.not33.i.i.i54 = icmp ugt i32 %i.ee, %i.df
  br i1 %.not33.i.i.i54, label %._crit_edge.i.i.i55, label %.lr.ph.i.i.i52, !llvm.loop !489

._crit_edge.i.i.i55:                              ; preds = %.lr.ph.i.i.i52, %middle.block, %st_mult.exit.i.i.i50
  store i32 %i.di, ptr %i.cq, align 8, !tbaa !214
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i55, %._crit_edge4.i.i.i58
  %i.ef = phi ptr [ %.pre.i.i.i59, %._crit_edge4.i.i.i58 ], [ %i.dm, %._crit_edge.i.i.i55 ]
  %i.eg = zext i32 %i.df to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !216 ; 2 uses
  %.not34.i.i.i56 = icmp eq ptr %i.ei, null
  br i1 %.not34.i.i.i56, label %bb.af, label %indegree_slab_at.exit.i57

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i32, ptr %i.cp, align 8, !tbaa !231
  %i.ek = zext i32 %i.ej to i64
  %i.el = load i32, ptr %i.cs, align 4, !tbaa !230
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = tail call ptr @xcalloc(i64 noundef %i.ek, i64 noundef %i.en) #24 ; 2 uses
  %i.ep = load ptr, ptr %i.cr, align 8, !tbaa !215
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eg
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !216
  br label %indegree_slab_at.exit.i57

indegree_slab_at.exit.i57:                        ; preds = %bb.af, %bb.ae
  %i.er = phi ptr [ %i.ei, %bb.ae ], [ %i.eo, %bb.af ]
  %i.es = load i32, ptr %i.cs, align 4, !tbaa !230
  %i.et = mul i32 %i.es, %i.dg
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !52
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !52
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %indegree_slab_at.exit.i57
  tail call void @prio_queue_put(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %indegree_slab_at.exit.i57
  %i.ez = load i64, ptr %i.p, align 4
  %i.fa = and i64 %i.ez, 549755813888
  %.not30.i = icmp eq i64 %i.fa, 0
  br i1 %.not30.i, label %select.unfold.i, label %expand_topo_walk.exit

select.unfold.i:                                  ; preds = %bb.ah, %bb.aa, %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %.02634.i, i64 8
  %.026.i = load ptr, ptr %i.fb, align 8, !tbaa !58 ; 2 uses
  %.not28.i = icmp eq ptr %.026.i, null
  br i1 %.not28.i, label %expand_topo_walk.exit, label %bb.z, !llvm.loop !490

bb.ai:                                            ; preds = %bb.t
  %i.fc = tail call fastcc i32 @process_parents(ptr noundef nonnull %0, ptr noundef nonnull %.0357173, ptr noundef nonnull %i.m)
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.aj, label %expand_topo_walk.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load i64, ptr %i.p, align 4
  %i.ff = and i64 %i.fe, 2
  %.not40 = icmp eq i64 %i.ff, 0
  br i1 %.not40, label %bb.ak, label %expand_topo_walk.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %.0357173, i64 8
  %i.fh = tail call ptr @oid_to_hex(ptr noundef nonnull %i.fg) #24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.246, ptr noundef %i.fh) #26
  unreachable

expand_topo_walk.exit:                            ; preds = %select.unfold.i, %bb.ah, %bb.y, %bb.n, %bb.ai, %bb.aj, %bb.u, %bb.t
  %.0357174 = phi ptr [ %.035, %bb.n ], [ %.0357173, %bb.ai ], [ %.0357173, %bb.aj ], [ %.0357173, %bb.t ], [ %.0357173, %bb.u ], [ %.0357173, %bb.y ], [ %.0357173, %bb.ah ], [ %.0357173, %select.unfold.i ] ; 8 uses
  %i.fi = tail call i32 @simplify_commit(ptr noundef %0, ptr noundef nonnull %.0357174)
  switch i32 %i.fi, label %bb.am [
    i32 0, label %.backedge
    i32 2, label %bb.al
  ]

.backedge:                                        ; preds = %expand_topo_walk.exit, %comparison_date.exit
  br label %bb.f

bb.al:                                            ; preds = %expand_topo_walk.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.0357174, i64 8
  %i.fk = tail call ptr @oid_to_hex(ptr noundef nonnull %i.fj) #24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.247, ptr noundef %i.fk) #26
  unreachable

bb.am:                                            ; preds = %expand_topo_walk.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8            ; 4 uses
  %i.fn = and i32 %i.fm, 262144
  %.not41 = icmp eq i32 %i.fn, 0
  br i1 %.not41, label %next_topo_commit.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = and i32 %i.fm, 524288
  %.not.i61 = icmp eq i32 %i.fo, 0
  br i1 %.not.i61, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = and i32 %i.fm, -1572865
  %i.fq = or disjoint i32 %i.fp, 1048576
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %.022.i = load ptr, ptr %i.fr, align 8, !tbaa !58 ; 2 uses
  %.not1923.i = icmp eq ptr %.022.i, null
  br i1 %.not1923.i, label %._crit_edge.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.0357174, i64 8 ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.as
  %i.ft = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %.0.i63 = load ptr, ptr %i.ft, align 8, !tbaa !58 ; 2 uses
  %.not19.i = icmp eq ptr %.0.i63, null
  br i1 %.not19.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !491

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i62
  %.024.i = phi ptr [ %.022.i, %.lr.ph.i62 ], [ %.0.i63, %bb.aq ] ; 2 uses
  %i.fu = load ptr, ptr %.024.i, align 8, !tbaa !61 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %._crit_edge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fx = load i128, ptr %i.fw, align 1
  %i.fy = load i128, ptr %i.fs, align 1
  %i.fz = xor i128 %i.fx, %i.fy
  %i.ga = getelementptr i8, ptr %i.fw, i64 16
  %i.gb = getelementptr i8, ptr %i.fs, i64 16
  %i.gc = load i128, ptr %i.ga, align 1
  %i.gd = load i128, ptr %i.gb, align 1
  %i.ge = xor i128 %i.gc, %i.gd
  %i.gf = or i128 %i.fz, %i.ge
  %i.gg = icmp ne i128 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %.not.i.not.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %bb.aq

._crit_edge.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.gi = phi i32 [ 0, %bb.ap ], [ 0, %bb.aq ], [ 1048576, %bb.as ], [ 1048576, %bb.ar ]
  %i.gj = and i32 %i.fm, -1572865
  %i.gk = or disjoint i32 %i.gi, %i.gj
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %bb.ao
  %storemerge.i = phi i32 [ %i.gk, %._crit_edge.i ], [ %i.fq, %bb.ao ] ; 2 uses
  store i32 %storemerge.i, ptr %i.fl, align 8
  %1 = getelementptr i8, ptr %0, i64 336
  %2 = load i32, ptr %1, align 8
  %3 = and i32 %2, 1
  %.not20.i = icmp eq i32 %3, 0
  %i.gl = and i32 %storemerge.i, 1048576
  %.not21.i = icmp eq i32 %i.gl, 0
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %.not21.i
  br i1 %or.cond.i, label %track_linear.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = load i64, ptr %.0357174, align 8
  %i.gn = or i64 %i.gm, 288230376151711744
  store i64 %i.gn, ptr %.0357174, align 8
  br label %track_linear.exit

track_linear.exit:                                ; preds = %bb.at, %bb.au
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !246
  tail call void @commit_list_free(ptr noundef %i.gp) #24
  %i.gq = getelementptr inbounds nuw i8, ptr %.0357174, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !234
  %i.gs = tail call ptr @commit_list_copy(ptr noundef %i.gr) #24
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !246
  br label %next_topo_commit.exit.thread

next_topo_commit.exit.thread:                     ; preds = %bb.h, %next_topo_commit.exit, %track_linear.exit, %bb.am
  %.1.ph = phi ptr [ %.0357174, %track_linear.exit ], [ %.0357174, %bb.am ], [ null, %next_topo_commit.exit ], [ null, %bb.h ]
  ret ptr %.1.ph
}

declare void @free_commit_buffer(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @add_object_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @next_reflog_entry(ptr noundef) local_unnamed_addr #5

declare void @object_array_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @entry_unshown(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !222
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 34359738368
  %.not = icmp eq i64 %i.c, 0
  %i.d = zext i1 %.not to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = distinct !{!7, !31}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"any p2 pointer", !20, i64 0}
!22 = !{!"any p3 pointer", !21, i64 0}
!23 = !{!"p3 omnipotent char", !22, i64 0}
!24 = !{!"revision_sources", !17, i64 0, !17, i64 4, !17, i64 8, !23, i64 16}
!25 = !{!24, !17, i64 4}
!26 = !{!24, !17, i64 0}
!27 = !{!24, !17, i64 8}
!28 = !{!24, !23, i64 16}
!29 = !{!"p2 omnipotent char", !21, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"object_id", !16, i64 0, !17, i64 32}
!33 = !{!"object", !17, i64 0, !17, i64 0, !17, i64 4, !32, i64 8}
!34 = !{!"long", !16, i64 0}
!35 = !{!"p1 _ZTS11commit_list", !20, i64 0}
!36 = !{!"p1 _ZTS4tree", !20, i64 0}
!37 = !{!"commit", !33, i64 0, !34, i64 48, !35, i64 56, !36, i64 64, !17, i64 72}
!38 = !{!37, !17, i64 72}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"p1 _ZTS10repository", !20, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"tree", !33, i64 0, !20, i64 48, !34, i64 56}
!44 = !{!43, !20, i64 48}
!45 = !{!43, !34, i64 56}
!46 = !{!"p1 omnipotent char", !20, i64 0}
!47 = !{!"name_entry", !32, i64 0, !46, i64 40, !17, i64 48, !17, i64 52}
!48 = !{!47, !17, i64 52}
!49 = !{!"p1 int", !20, i64 0}
!50 = !{!"p1 _ZTS9object_id", !20, i64 0}
!51 = !{!"kh_oid_set", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !49, i64 16, !50, i64 24, !49, i64 32}
!52 = !{!17, !17, i64 0}
!53 = !{!"p1 _ZTS13hashmap_entry", !20, i64 0}
!54 = !{!"hashmap_entry", !53, i64 0, !17, i64 8}
!55 = !{!"oidset", !51, i64 0}
!56 = !{!"path_and_oids_entry", !54, i64 0, !46, i64 16, !55, i64 24}
!57 = !{!56, !46, i64 16}
!58 = !{!35, !35, i64 0}
!59 = !{!"p1 _ZTS6commit", !20, i64 0}
!60 = !{!"commit_list", !59, i64 0, !35, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!"p1 _ZTS16prio_queue_entry", !20, i64 0}
!63 = !{!"prio_queue", !20, i64 0, !34, i64 8, !20, i64 16, !34, i64 24, !34, i64 32, !62, i64 40}
!64 = !{!"p1 _ZTS18object_array_entry", !20, i64 0}
!65 = !{!"object_array", !17, i64 0, !17, i64 4, !64, i64 8}
!66 = !{!"p1 _ZTS17rev_cmdline_entry", !20, i64 0}
!67 = !{!"rev_cmdline_info", !17, i64 0, !17, i64 4, !66, i64 8}
!68 = !{!"strbuf", !34, i64 0, !34, i64 8, !46, i64 16}
!69 = !{!"p1 _ZTS27list_objects_filter_options", !20, i64 0}
!70 = !{!"list_objects_filter_options", !68, i64 0, !17, i64 24, !17, i64 28, !17, i64 28, !46, i64 32, !34, i64 40, !34, i64 48, !17, i64 56, !34, i64 64, !34, i64 72, !69, i64 80}
!71 = !{!"p1 _ZTS16string_list_item", !20, i64 0}
!72 = !{!"string_list", !71, i64 0, !34, i64 8, !34, i64 16, !17, i64 24, !20, i64 32}
!73 = !{!"strvec", !29, i64 0, !34, i64 8, !34, i64 16}
!74 = !{!"ref_exclusions", !72, i64 0, !73, i64 40, !16, i64 64}
!75 = !{!"p1 _ZTS13pathspec_item", !20, i64 0}
!76 = !{!"pathspec", !17, i64 0, !17, i64 4, !17, i64 4, !17, i64 4, !17, i64 8, !17, i64 12, !75, i64 16}
!77 = !{!"date_mode", !17, i64 0, !17, i64 4, !46, i64 8}
!78 = !{!"p1 _ZTS8log_info", !20, i64 0}
!79 = !{!"ident_split", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56}
!80 = !{!"p1 _ZTS11string_list", !20, i64 0}
!81 = !{!"p1 _ZTS8grep_pat", !20, i64 0}
!82 = !{!"p2 _ZTS8grep_pat", !21, i64 0}
!83 = !{!"p1 _ZTS9grep_expr", !20, i64 0}
!84 = !{!"grep_opt", !81, i64 0, !82, i64 8, !81, i64 16, !82, i64 24, !83, i64 32, !41, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !17, i64 136, !17, i64 140, !17, i64 144, !17, i64 148, !16, i64 152, !17, i64 828, !17, i64 832, !17, i64 836, !17, i64 840, !17, i64 844, !17, i64 848, !17, i64 852, !20, i64 856, !20, i64 864, !20, i64 872}
!85 = !{!"p1 _ZTS9git_graph", !20, i64 0}
!86 = !{!"p2 _ZTS17re_pattern_buffer", !21, i64 0}
!87 = !{!"diff_flags", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !17, i64 136, !17, i64 140}
!88 = !{!"p1 _ZTS6oidset", !20, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!90 = !{!"p1 _ZTS20emitted_diff_symbols", !20, i64 0}
!91 = !{!"p1 _ZTS6strmap", !20, i64 0}
!92 = !{!"diff_options", !46, i64 0, !46, i64 8, !17, i64 16, !17, i64 20, !46, i64 24, !17, i64 32, !86, i64 40, !34, i64 48, !34, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !87, i64 96, !17, i64 240, !17, i64 244, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !17, i64 284, !17, i64 288, !17, i64 292, !17, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !17, i64 312, !17, i64 316, !17, i64 320, !17, i64 324, !46, i64 328, !17, i64 336, !46, i64 344, !17, i64 352, !17, i64 356, !29, i64 360, !34, i64 368, !34, i64 376, !17, i64 384, !17, i64 388, !17, i64 392, !17, i64 396, !46, i64 400, !17, i64 408, !17, i64 412, !88, i64 416, !17, i64 424, !17, i64 428, !17, i64 432, !20, i64 440, !89, i64 448, !17, i64 456, !16, i64 460, !76, i64 464, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !20, i64 536, !20, i64 544, !17, i64 552, !90, i64 560, !17, i64 568, !17, i64 572, !41, i64 576, !91, i64 584, !17, i64 592, !17, i64 596, !17, i64 600}
!93 = !{!"p1 _ZTS16reflog_walk_info", !20, i64 0}
!94 = !{!"p1 _ZTS16decoration_entry", !20, i64 0}
!95 = !{!"decoration", !46, i64 0, !17, i64 8, !17, i64 12, !94, i64 16}
!96 = !{!"display_notes_opt", !17, i64 0, !72, i64 8}
!97 = !{!"p1 _ZTS13saved_parents", !20, i64 0}
!98 = !{!"p1 _ZTS16revision_sources", !20, i64 0}
!99 = !{!"p1 _ZTS14topo_walk_info", !20, i64 0}
!100 = !{!"p2 _ZTS12bloom_keyvec", !21, i64 0}
!101 = !{!"p1 _ZTS21bloom_filter_settings", !20, i64 0}
!102 = !{!"p1 _ZTS10tmp_objdir", !20, i64 0}
!103 = !{!"rev_info", !35, i64 0, !63, i64 8, !65, i64 56, !41, i64 72, !65, i64 80, !67, i64 96, !70, i64 112, !74, i64 200, !46, i64 272, !46, i64 280, !46, i64 288, !76, i64 296, !17, i64 320, !17, i64 324, !17, i64 328, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 340, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 346, !17, i64 346, !17, i64 346, !17, i64 346, !17, i64 346, !77, i64 352, !17, i64 368, !17, i64 372, !17, i64 376, !17, i64 380, !78, i64 384, !17, i64 392, !17, i64 396, !46, i64 400, !46, i64 408, !17, i64 416, !46, i64 424, !46, i64 432, !79, i64 440, !80, i64 504, !17, i64 512, !46, i64 520, !46, i64 528, !17, i64 536, !17, i64 540, !17, i64 544, !80, i64 552, !84, i64 560, !85, i64 1440, !17, i64 1448, !17, i64 1452, !17, i64 1456, !17, i64 1460, !17, i64 1460, !34, i64 1464, !34, i64 1472, !34, i64 1480, !17, i64 1488, !17, i64 1492, !20, i64 1496, !20, i64 1504, !20, i64 1512, !92, i64 1520, !92, i64 2128, !93, i64 2736, !95, i64 2744, !95, i64 2768, !95, i64 2792, !96, i64 2816, !50, i64 2864, !50, i64 2872, !46, i64 2880, !46, i64 2888, !46, i64 2896, !73, i64 2904, !17, i64 2928, !46, i64 2936, !17, i64 2944, !17, i64 2948, !17, i64 2952, !95, i64 2960, !97, i64 2984, !35, i64 2992, !35, i64 3000, !46, i64 3008, !98, i64 3016, !99, i64 3024, !100, i64 3032, !17, i64 3040, !101, i64 3048, !17, i64 3056, !102, i64 3064, !55, i64 3072}
!104 = !{!103, !41, i64 72}
!105 = !{!74, !71, i64 0}
!106 = !{!74, !34, i64 8}
!107 = !{!"string_list_item", !46, i64 0, !20, i64 8}
!108 = !{!107, !46, i64 0}
!109 = !{!74, !16, i64 64}
!110 = !{!"p1 _ZTS14ref_exclusions", !20, i64 0}
!111 = !{!"exclude_hidden_refs_cb", !110, i64 0, !46, i64 8}
end_hunk_1
