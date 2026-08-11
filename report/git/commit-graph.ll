inline.NumInlined: 313
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@graph_report:bb.a
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !302
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #26 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !302
  %fputc = call i32 @fputc(i32 10, ptr %i.c)      ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare ptr @start_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @disable_commit_graph(ptr nofree noundef writeonly captures(none) initializes((532, 536)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i32 1, ptr %i.a, align 4, !tbaa !126
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

declare i32 @bsearch_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @insert_parent_or_die(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118
  %i.e = add i32 %i.d, %i.b
  %.not = icmp ult i32 %1, %i.e
  br i1 %.not, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i32 noundef %1) #23
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.019.i = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019.i, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !118  ; 3 uses
  %i.h = icmp ult i32 %1, %i.g
  br i1 %i.h, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.critedge16.i, label %.lr.ph.i, !llvm.loop !273

.critedge16.i:                                    ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 850, ptr noundef nonnull @.str.49) #23
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !98
  %i.m = add i32 %i.l, %i.g
  %.not15.i = icmp ult i32 %1, %i.m
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.n = tail call fastcc ptr @_(ptr noundef nonnull @.str.50)
  tail call void (ptr, ...) @die(ptr noundef %i.n) #23
  unreachable

bb.e:                                             ; preds = %.critedge.i
  %i.o = sub i32 %1, %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !76   ; 10 uses
  %i.v = zext i32 %i.o to i64                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %st_mult.exit.i.thread, label %bb.f

st_mult.exit.i.thread:                            ; preds = %bb.e
  %i.w = mul nuw nsw i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr readonly align 1 %i.x, i64 %i.u, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %mul.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  br i1 %mul.ov.i.i, label %bb.g, label %st_mult.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.59, i64 noundef %i.u, i64 noundef %i.v) #23
  unreachable

st_mult.exit.i:                                   ; preds = %bb.f
  %i.y = mul i64 %i.u, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr readonly align 1 %i.z, i64 %i.u, i1 false)
  %i.aa = icmp ult i64 %i.u, 32
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %st_mult.exit.i.thread, %st_mult.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  %i.ac = sub nuw nsw i64 32, %i.u
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %st_mult.exit.i
  %.not.i.i.i = icmp eq ptr %i.s, @hash_algos
  br i1 %.not.i.i.i, label %load_oid_from_graph.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.1.i.i.i = icmp eq ptr %i.s, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %load_oid_from_graph.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.2.i.i.i = icmp eq ptr %i.s, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %load_oid_from_graph.exit

load_oid_from_graph.exit:                         ; preds = %bb.i, %bb.j, %bb.k
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.k ], [ 0, %bb.i ], [ 1, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.2.i.i.i, ptr %i.ad, align 4, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = call ptr @lookup_commit(ptr noundef %i.ai, ptr noundef nonnull %3) #22 ; 3 uses
  %.not12 = icmp eq ptr %i.aj, null
  br i1 %.not12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %load_oid_from_graph.exit
  %i.ak = call fastcc ptr @_(ptr noundef nonnull @.str.47)
  %i.al = call ptr @oid_to_hex(ptr noundef nonnull %3) #22
  call void (ptr, ...) @die(ptr noundef %i.ak, ptr noundef %i.al) #23
  unreachable

bb.m:                                             ; preds = %load_oid_from_graph.exit
  %i.am = getelementptr i8, ptr %i.aj, i64 72
  %.val = load i32, ptr %i.am, align 8, !tbaa !40
  %i.an = call fastcc ptr @commit_graph_data_at(i32 %.val)
  store i32 %1, ptr %i.an, align 8, !tbaa !52
  %i.ao = call ptr @commit_list_insert(ptr noundef nonnull %i.aj, ptr noundef %2) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.ap
}

declare void @commit_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @commit_graph_data_at(i32 %.72.val) unnamed_addr #0 {
bb.a:
  %i.a = udiv i32 %.72.val, 32766                 ; 8 uses
  %i.b = urem i32 %.72.val, 32766                 ; 2 uses
  %i.c = load i32, ptr @commit_graph_data_slab.2, align 8, !tbaa !46
  %.not.i.i = icmp ugt i32 %i.c, %i.a
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pre.i.i = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !49
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %.not35.i.i = icmp eq ptr %i.f, null
  br i1 %.not35.i.i, label %.thread8.i.i, label %commit_graph_data_slab_peek.exit

commit_graph_data_slab_peek.exit:                 ; preds = %bb.b
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.j = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !49
  %i.k = shl nuw nsw i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call ptr @xrealloc(ptr noundef %i.j, i64 noundef %i.l) #22 ; 5 uses
  store ptr %i.m, ptr @commit_graph_data_slab.3, align 8, !tbaa !49
  %i.n = load i32, ptr @commit_graph_data_slab.2, align 8, !tbaa !46 ; 5 uses
  %.not342.i.i = icmp ugt i32 %i.n, %i.a
  br i1 %.not342.i.i, label %.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %0 = sub nuw i32 %i.a, %i.n                     ; 2 uses
  %1 = add nuw nsw i32 %0, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %0, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %1, 524284                     ; 3 uses
  %i.o = add i32 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add i32 %i.n, %index
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.r, align 8, !tbaa !50
  store <2 x ptr> splat (ptr null), ptr %i.s, align 8, !tbaa !50
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.t = icmp eq i32 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %.thread.i.i, label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %.0303.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %i.u = zext i32 %.0303.i.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u
  store ptr null, ptr %i.v, align 8, !tbaa !50
  %i.w = add i32 %.0303.i.i, 1                    ; 2 uses
  %.not34.i.i = icmp ugt i32 %i.w, %i.a
  br i1 %.not34.i.i, label %.thread.i.i, label %.lr.ph.i.i, !llvm.loop !305

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %bb.c
  store i32 %i.i, ptr @commit_graph_data_slab.2, align 8, !tbaa !46
  %i.x = zext nneg i32 %i.a to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50   ; 2 uses
  %.not357.i.i = icmp eq ptr %i.z, null
  br i1 %.not357.i.i, label %.thread8.i.i, label %commit_graph_data_slab_at.exit

.thread8.i.i:                                     ; preds = %.thread.i.i, %bb.b
  %i.aa = phi i64 [ %i.d, %bb.b ], [ %i.x, %.thread.i.i ]
  %i.ab = tail call ptr @xcalloc(i64 noundef 32766, i64 noundef 16) #22 ; 2 uses
  %i.ac = load ptr, ptr @commit_graph_data_slab.3, align 8, !tbaa !49 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !50
  br label %commit_graph_data_slab_at.exit

commit_graph_data_slab_at.exit:                   ; preds = %.thread.i.i, %.thread8.i.i
  %i.ae = phi ptr [ %i.ac, %.thread8.i.i ], [ %i.m, %.thread.i.i ]
  %i.af = phi ptr [ %i.ab, %.thread8.i.i ], [ %i.z, %.thread.i.i ]
  %i.ag = zext nneg i32 %i.b to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = zext nneg i32 %i.a to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %commit_graph_data_slab_at.exit
  %indvars.iv = phi i64 [ 0, %commit_graph_data_slab_at.exit ], [ %indvars.iv.next.5, %bb.d ] ; 7 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  store i32 -1, ptr %i.al, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 -1, ptr %i.an, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 -1, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i32 -1, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i32 -1, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store i32 -1, ptr %i.av, align 8, !tbaa !52
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 32766
  br i1 %exitcond.not.5, label %.loopexit, label %bb.d, !llvm.loop !306

.loopexit:                                        ; preds = %bb.d, %commit_graph_data_slab_peek.exit
  %.0 = phi ptr [ %i.h, %commit_graph_data_slab_peek.exit ], [ %i.ah, %bb.d ]
  ret ptr %.0
}

declare ptr @commit_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_config_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @pop_commit(ptr noundef) local_unnamed_addr #2

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @reference_get_peeled_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @oidset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @stop_progress_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @replace_refs_enabled(ptr noundef) local_unnamed_addr #2

declare void @prepare_replace_object(ptr noundef) local_unnamed_addr #2

declare void @prepare_commit_graft(ptr noundef) local_unnamed_addr #2

declare i32 @is_repository_shallow(ptr noundef) local_unnamed_addr #2

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @add_packed_git(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @open_pack_index(ptr noundef) local_unnamed_addr #2

declare void @close_pack(ptr noundef) local_unnamed_addr #2

declare i32 @for_each_object_in_pack(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_packed_commits(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.object_info, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call i64 @nth_packed_object_offset(ptr noundef %1, i32 noundef %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %4, align 8, !tbaa !216
  %i.d = call i32 @packed_object_info(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %4) #22
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc ptr @_(ptr noundef nonnull @.str.68)
  %i.g = call ptr @oid_to_hex(ptr noundef %0) #22
  call void (ptr, ...) @die(ptr noundef %i.f, ptr noundef %i.g) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @add_packed_commits_oi(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare i64 @nth_packed_object_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @packed_object_info(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_packed_commits_oi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !205
  %i.f = sext i32 %i.e to i64
  tail call void @display_progress(ptr noundef nonnull %i.b, i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !216
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %.not9 = icmp eq i32 %i.h, 1
  br i1 %.not9, label %bb.d, label %set_commit_pos.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @oid_array_append(ptr noundef nonnull %i.i, ptr noundef %0) #22
  %i.j = load ptr, ptr %2, align 8, !tbaa !184
  %i.k = tail call ptr @lookup_commit(ptr noundef %i.j, ptr noundef %0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %set_commit_pos.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @set_commit_pos.max_pos, align 4, !tbaa !38 ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @set_commit_pos.max_pos, align 4, !tbaa !38
  %i.n = getelementptr i8, ptr %i.k, i64 72
  %.val.i = load i32, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %i.o = udiv i32 %.val.i, 131064                 ; 6 uses
  %i.p = urem i32 %.val.i, 131064
  %i.q = load i32, ptr @commit_pos.2, align 8, !tbaa !307
  %.not.i.i.i = icmp ugt i32 %i.q, %i.o
  %.pre.i.i.i = load ptr, ptr @commit_pos.3, align 8, !tbaa !309 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %bb.e
  %i.r = add nuw nsw i32 %i.o, 1                  ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.t) #22 ; 4 uses
  store ptr %i.u, ptr @commit_pos.3, align 8, !tbaa !309
  %i.v = load i32, ptr @commit_pos.2, align 8, !tbaa !307 ; 5 uses
  %.not332.i.i.i = icmp ugt i32 %i.v, %i.o
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %st_mult.exit.i.i.i
  %3 = sub nuw i32 %i.o, %i.v                     ; 2 uses
  %4 = add nuw nsw i32 %3, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %3, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %4, 131068                     ; 3 uses
  %i.w = add i32 %i.v, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add i32 %i.v, %index
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ab = icmp eq i32 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader14

.lr.ph.i.i.i.preheader14:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.0303.i.i.i.ph = phi i32 [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader14, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 2 uses
  %i.ac = zext i32 %.0303.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  store ptr null, ptr %i.ad, align 8, !tbaa !150
  %i.ae = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.ae, %i.o
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !311

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %st_mult.exit.i.i.i
  store i32 %i.r, ptr @commit_pos.2, align 8, !tbaa !307
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.e
  %i.af = phi ptr [ %i.u, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.e ]
  %i.ag = zext nneg i32 %i.o to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not34.i.i.i, label %bb.g, label %commit_pos_at.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #22 ; 2 uses
  %i.ak = load ptr, ptr @commit_pos.3, align 8, !tbaa !309
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !150
  br label %commit_pos_at.exit.i

commit_pos_at.exit.i:                             ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  %i.an = zext nneg i32 %i.p to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.l, ptr %i.ao, align 4, !tbaa !38
  br label %set_commit_pos.exit

set_commit_pos.exit:                              ; preds = %commit_pos_at.exit.i, %bb.d, %bb.c
  ret i32 0
}

declare i32 @packfile_store_for_each_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unparse_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_parse_commit_internal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @oid_array_sort(ptr noundef) local_unnamed_addr #2

declare i32 @commit_list_count(ptr noundef) local_unnamed_addr #2

declare void @commit_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef i64 @st_add(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.81, i64 noundef %0, i64 noundef %1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c
}

declare void @commit_stack_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lookup_commit_reference_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @commit_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %i.b = load ptr, ptr %1, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(32) %i.c, ptr noundef nonnull readonly dereferenceable(32) %i.d, i64 noundef 32) #25
  ret i32 %i.e
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal range(i64 0, 4294967296) i64 @get_topo_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.e = udiv i32 %.val, %i.d                     ; 7 uses
  %i.f = urem i32 %.val, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !148
  %.not.i.i = icmp ugt i32 %i.h, %i.e
  br i1 %.not.i.i, label %._crit_edge4.i.i, label %st_mult.exit.i.i

._crit_edge4.i.i:                                 ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149
  br label %bb.b

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = shl nuw nsw i64 %i.j, 3
  %i.n = tail call ptr @xrealloc(ptr noundef %i.l, i64 noundef %i.m) #22 ; 4 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !149
  %i.o = load i32, ptr %i.g, align 8, !tbaa !148  ; 9 uses
  %.not332.i.i = icmp ugt i32 %i.o, %i.e
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %i.p = add i32 %i.o, 1
  %i.q = add i32 %i.e, 1
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.q)
  %i.s = sub i32 %i.r, %i.o                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader5, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.t = add i32 %i.o, 1
  %i.u = add i32 %i.e, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.u)
  %i.v = add i32 %umax, -1
  %i.w = icmp ult i32 %i.v, %i.o
  br i1 %i.w, label %.lr.ph.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.s, -4                       ; 3 uses
  %i.x = add i32 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i32 %i.o, %index
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ac = icmp eq i32 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader5

.lr.ph.i.i.preheader5:                            ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader5, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.0303.i.i.ph, %.lr.ph.i.i.preheader5 ] ; 2 uses
  %i.ad = zext i32 %.0303.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  store ptr null, ptr %i.ae, align 8, !tbaa !150
  %i.af = add i32 %.0303.i.i, 1                   ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.af, %i.e
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !313

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %st_mult.exit.i.i
  store i32 %i.i, ptr %i.g, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %._crit_edge4.i.i
  %i.ag = phi ptr [ %.pre.i.i, %._crit_edge4.i.i ], [ %i.n, %._crit_edge.i.i ]
  %i.ah = zext i32 %i.e to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.aj, null
  br i1 %.not34.i.i, label %bb.c, label %topo_level_slab_at.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i32, ptr %i.b, align 8, !tbaa !145
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !155
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call ptr @xcalloc(i64 noundef %i.am, i64 noundef %i.aq) #22 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ah
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !150
  br label %topo_level_slab_at.exit

topo_level_slab_at.exit:                          ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.aj, %bb.b ], [ %i.ar, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !155
  %i.ax = mul i32 %i.aw, %i.f
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !38
  %i.bb = zext i32 %i.ba to i64
  ret i64 %i.bb
}

; Function Attrs: nounwind uwtable
define internal void @set_topo_level(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.e = udiv i32 %.val, %i.d                     ; 7 uses
  %i.f = urem i32 %.val, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !148
  %.not.i.i = icmp ugt i32 %i.h, %i.e
  br i1 %.not.i.i, label %._crit_edge4.i.i, label %st_mult.exit.i.i

._crit_edge4.i.i:                                 ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149
  br label %bb.b

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = shl nuw nsw i64 %i.j, 3
  %i.n = tail call ptr @xrealloc(ptr noundef %i.l, i64 noundef %i.m) #22 ; 4 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !149
  %i.o = load i32, ptr %i.g, align 8, !tbaa !148  ; 9 uses
  %.not332.i.i = icmp ugt i32 %i.o, %i.e
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %i.p = add i32 %i.o, 1
  %i.q = add i32 %i.e, 1
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %i.q)
  %i.s = sub i32 %i.r, %i.o                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader5, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.t = add i32 %i.o, 1
  %i.u = add i32 %i.e, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.u)
  %i.v = add i32 %umax, -1
  %i.w = icmp ult i32 %i.v, %i.o
  br i1 %i.w, label %.lr.ph.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.s, -4                       ; 3 uses
  %i.x = add i32 %i.o, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i32 %i.o, %index
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ac = icmp eq i32 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader5

.lr.ph.i.i.preheader5:                            ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader5, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.0303.i.i.ph, %.lr.ph.i.i.preheader5 ] ; 2 uses
  %i.ad = zext i32 %.0303.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  store ptr null, ptr %i.ae, align 8, !tbaa !150
  %i.af = add i32 %.0303.i.i, 1                   ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.af, %i.e
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !315

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %st_mult.exit.i.i
  store i32 %i.i, ptr %i.g, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %._crit_edge4.i.i
  %i.ag = phi ptr [ %.pre.i.i, %._crit_edge4.i.i ], [ %i.n, %._crit_edge.i.i ]
  %i.ah = zext i32 %i.e to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.aj, null
  br i1 %.not34.i.i, label %bb.c, label %topo_level_slab_at.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i32, ptr %i.b, align 8, !tbaa !145
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !155
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call ptr @xcalloc(i64 noundef %i.am, i64 noundef %i.aq) #22 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ah
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !150
  br label %topo_level_slab_at.exit

topo_level_slab_at.exit:                          ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.aj, %bb.b ], [ %i.ar, %bb.c ]
  %i.av = trunc i64 %1 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !155
  %i.ay = mul i32 %i.ax, %i.f
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  store i32 %i.av, ptr %i.ba, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_generation_v2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.a, align 8, !tbaa !40
  %i.b = tail call fastcc ptr @commit_graph_data_at(i32 %.val)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @commit_pos_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %i.b = load ptr, ptr %1, align 8, !tbaa !170
  %i.c = getelementptr i8, ptr %i.a, i64 72
  %.val4 = load i32, ptr %i.c, align 8, !tbaa !40 ; 2 uses
  %i.d = udiv i32 %.val4, 131064                  ; 6 uses
  %i.e = urem i32 %.val4, 131064
  %i.f = load i32, ptr @commit_pos.2, align 8, !tbaa !307 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.f, %i.d
  %.pre.i.i = load ptr, ptr @commit_pos.3, align 8, !tbaa !309 ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %st_mult.exit.i.i

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.d, 1                  ; 3 uses
  %i.h = shl nuw nsw i32 %i.g, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.i) #22 ; 4 uses
  store ptr %i.j, ptr @commit_pos.3, align 8, !tbaa !309
  %i.k = load i32, ptr @commit_pos.2, align 8, !tbaa !307 ; 5 uses
  %.not332.i.i = icmp ugt i32 %i.k, %i.d
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %2 = sub nuw i32 %i.d, %i.k                     ; 2 uses
  %3 = add nuw nsw i32 %2, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %2, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %3, 131068                     ; 3 uses
  %i.l = add i32 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = add i32 %i.k, %index
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.o, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.p, align 8, !tbaa !150
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.q = icmp eq i32 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader39

.lr.ph.i.i.preheader39:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.0303.i.i.ph = phi i32 [ %i.k, %.lr.ph.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader39, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ %.0303.i.i.ph, %.lr.ph.i.i.preheader39 ] ; 2 uses
  %i.r = zext i32 %.0303.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  store ptr null, ptr %i.s, align 8, !tbaa !150
  %i.t = add i32 %.0303.i.i, 1                    ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.t, %i.d
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !317

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %st_mult.exit.i.i
  store i32 %i.g, ptr @commit_pos.2, align 8, !tbaa !307
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %bb.a
  %i.u = phi i32 [ %i.g, %._crit_edge.i.i ], [ %i.f, %bb.a ]
  %i.v = phi ptr [ %i.j, %._crit_edge.i.i ], [ %.pre.i.i, %bb.a ] ; 2 uses
  %i.w = zext nneg i32 %i.d to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 2 uses
  %.not34.i.i = icmp eq ptr %i.y, null
  br i1 %.not34.i.i, label %bb.c, label %commit_pos_at.exit

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #22 ; 2 uses
  %i.aa = load ptr, ptr @commit_pos.3, align 8, !tbaa !309 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !150
  %.pre16 = load i32, ptr @commit_pos.2, align 8, !tbaa !307
  br label %commit_pos_at.exit

commit_pos_at.exit:                               ; preds = %bb.b, %bb.c
  %.pre.i.i6 = phi ptr [ %i.v, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ac = phi i32 [ %i.u, %bb.b ], [ %.pre16, %bb.c ]
  %i.ad = phi ptr [ %i.y, %bb.b ], [ %i.z, %bb.c ]
  %i.ae = getelementptr i8, ptr %i.b, i64 72
  %.val = load i32, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.af = udiv i32 %.val, 131064                  ; 6 uses
  %i.ag = urem i32 %.val, 131064
  %.not.i.i5 = icmp ugt i32 %i.ac, %i.af
  br i1 %.not.i.i5, label %bb.d, label %st_mult.exit.i.i7

st_mult.exit.i.i7:                                ; preds = %commit_pos_at.exit
  %i.ah = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ai = shl nuw nsw i32 %i.ah, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = tail call ptr @xrealloc(ptr noundef nonnull %.pre.i.i6, i64 noundef %i.aj) #22 ; 4 uses
  store ptr %i.ak, ptr @commit_pos.3, align 8, !tbaa !309
  %i.al = load i32, ptr @commit_pos.2, align 8, !tbaa !307 ; 5 uses
  %.not332.i.i8 = icmp ugt i32 %i.al, %i.af
  br i1 %.not332.i.i8, label %._crit_edge.i.i12, label %.lr.ph.i.i9.preheader

.lr.ph.i.i9.preheader:                            ; preds = %st_mult.exit.i.i7
  %4 = sub nuw i32 %i.af, %i.al                   ; 2 uses
  %5 = add nuw nsw i32 %4, 1                      ; 2 uses
  %min.iters.check29 = icmp samesign ult i32 %4, 3
  br i1 %min.iters.check29, label %.lr.ph.i.i9.preheader38, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph.i.i9.preheader
  %n.vec31 = and i32 %5, 131068                   ; 3 uses
  %i.am = add i32 %i.al, %n.vec31
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i32 [ 0, %vector.ph30 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %i.an = add i32 %i.al, %index33
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !150
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !150
  %index.next34 = add nuw i32 %index33, 4         ; 2 uses
  %i.ar = icmp eq i32 %index.next34, %n.vec31
  br i1 %i.ar, label %middle.block35, label %vector.body32, !llvm.loop !318

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i32 %5, %n.vec31
  br i1 %cmp.n36, label %._crit_edge.i.i12, label %.lr.ph.i.i9.preheader38

.lr.ph.i.i9.preheader38:                          ; preds = %.lr.ph.i.i9.preheader, %middle.block35
  %.0303.i.i10.ph = phi i32 [ %i.al, %.lr.ph.i.i9.preheader ], [ %i.am, %middle.block35 ]
  br label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i.i9.preheader38, %.lr.ph.i.i9
  %.0303.i.i10 = phi i32 [ %i.au, %.lr.ph.i.i9 ], [ %.0303.i.i10.ph, %.lr.ph.i.i9.preheader38 ] ; 2 uses
  %i.as = zext i32 %.0303.i.i10 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  store ptr null, ptr %i.at, align 8, !tbaa !150
  %i.au = add i32 %.0303.i.i10, 1                 ; 2 uses
  %.not33.i.i11 = icmp ugt i32 %i.au, %i.af
  br i1 %.not33.i.i11, label %._crit_edge.i.i12, label %.lr.ph.i.i9, !llvm.loop !319

._crit_edge.i.i12:                                ; preds = %.lr.ph.i.i9, %middle.block35, %st_mult.exit.i.i7
  store i32 %i.ah, ptr @commit_pos.2, align 8, !tbaa !307
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i12, %commit_pos_at.exit
  %i.av = phi ptr [ %i.ak, %._crit_edge.i.i12 ], [ %.pre.i.i6, %commit_pos_at.exit ]
  %i.aw = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !150 ; 2 uses
  %.not34.i.i13 = icmp eq ptr %i.ay, null
  br i1 %.not34.i.i13, label %bb.e, label %commit_pos_at.exit14

bb.e:                                             ; preds = %bb.d
  %i.az = tail call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #22 ; 2 uses
  %i.ba = load ptr, ptr @commit_pos.3, align 8, !tbaa !309
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !150
  br label %commit_pos_at.exit14

commit_pos_at.exit14:                             ; preds = %bb.d, %bb.e
  %i.bc = phi ptr [ %i.ay, %bb.d ], [ %i.az, %bb.e ]
  %i.bd = zext nneg i32 %i.e to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bd
  %i.bf = zext nneg i32 %i.ag to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = trunc i64 %i.bk to i32
  ret i32 %i.bl
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @commit_gen_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !170    ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 72
  %.val16 = load i32, ptr %i.c, align 8, !tbaa !40
  %i.d = tail call fastcc ptr @commit_graph_data_at(i32 %.val16)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 72
  %.val = load i32, ptr %i.g, align 8, !tbaa !40
  %i.h = tail call fastcc ptr @commit_graph_data_at(i32 %.val)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.f, %i.j
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !141  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !141  ; 2 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.n, %i.p
  %. = zext i1 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

declare ptr @get_or_compute_bloom_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @trace2_is_enabled() local_unnamed_addr #2

declare void @trace2_data_intmax_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @safe_create_leading_directories(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @adjust_shared_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #2

declare ptr @hashfd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_tempfile_fd(ptr noundef) local_unnamed_addr #2

declare void @add_chunk(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @write_graph_chunk_fanout(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.024 = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.01323 = phi i32 [ 0, %bb.a ], [ %.114.lcssa, %._crit_edge ] ; 2 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.g = sext i32 %.01323 to i64                  ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !235
  %i.i = icmp ugt i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.g, %.preheader ] ; 2 uses
  %.117 = phi ptr [ %i.q, %bb.b ], [ %.024, %.preheader ] ; 3 uses
  %i.j = load ptr, ptr %.117, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !84
  %i.m = zext i8 %i.l to i32
  %.not = icmp eq i32 %.01522, %i.m
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.o = load i64, ptr %i.f, align 8, !tbaa !320
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.f, align 8, !tbaa !320
  call void @display_progress(ptr noundef %i.n, i64 noundef %i.p) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !235
  %i.s = icmp ugt i64 %i.r, %indvars.iv.next
  br i1 %i.s, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !321

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.b
  %.114.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv, %.lr.ph ]
  %.1.lcssa.ph = phi ptr [ %i.q, %bb.b ], [ %.117, %.lr.ph ]
  %.114.lcssa.ph = trunc i64 %.114.lcssa.ph.in to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.114.lcssa = phi i32 [ %.01323, %.preheader ], [ %.114.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.024, %.preheader ], [ %.1.lcssa.ph, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = call i32 @llvm.bswap.i32(i32 %.114.lcssa)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !38
  call void @hashwrite(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = add nuw nsw i32 %.01522, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, 256
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !322

bb.c:                                             ; preds = %._crit_edge
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @write_graph_chunk_oids(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !235
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
