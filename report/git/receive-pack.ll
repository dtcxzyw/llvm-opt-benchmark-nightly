Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/receive-pack?download=true
inline.NumInlined: 113
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@run_receive_hook:bb.a

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @prepare_auto_maintenance(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @start_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_to_sideband(i32 noundef %0, i32 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %3 = alloca %struct.pollfd, align 4             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr @keepalive_in_sec, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @use_keepalive, align 4, !tbaa !12
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i32, ptr @use_keepalive, align 4, !tbaa !12
  %i.d = icmp eq i32 %.pr, 2
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %spec.select = phi i1 [ %i.d, %thread-pre-split ], [ false, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = ptrtoint ptr %i.a to i64
  br label %select.unfold.outer

select.unfold.outer:                              ; preds = %select.unfold.outer.backedge, %bb.c
  %.120.ph = phi i1 [ %spec.select, %bb.c ], [ true, %select.unfold.outer.backedge ] ; 2 uses
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.outer, %.thread29
  br i1 %.120.ph, label %bb.d, label %bb.g

bb.d:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 %0, ptr %3, align 4, !tbaa !198
  store i16 1, ptr %i.e, align 4, !tbaa !199
  %i.g = load i32, ptr @keepalive_in_sec, align 4, !tbaa !12
  %i.h = mul nsw i32 %i.g, 1000
  %i.i = call i32 @poll(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %i.h) #20 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  call void @write_or_die(i32 noundef 1, ptr noundef nonnull @copy_to_sideband.buf, i64 noundef 5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %select.unfold.outer.backedge

select.unfold.outer.backedge:                     ; preds = %.split, %.thread, %bb.j
  br label %select.unfold.outer

.thread:                                          ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #23
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %.not37 = icmp eq i32 %i.m, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.not37, label %select.unfold.outer.backedge, label %.thread32

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %select.unfold
  %i.n = call i64 @xread(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 128) #20 ; 4 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.thread32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr @use_keepalive, align 4, !tbaa !12
  %i.q = icmp ne i32 %i.p, 1
  %or.cond = or i1 %.120.ph, %i.q
  br i1 %or.cond, label %.thread29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef %i.n) #22 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.f                       ; 2 uses
  %.b26 = load i1, ptr @use_sideband, align 4
  %i.u = select i1 %.b26, i32 65520, i32 0
  call void @send_sideband(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef %i.t, i32 noundef %i.u) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.neg = xor i64 %i.t, -1
  %i.w = add i64 %i.n, %.neg
  %.b25 = load i1, ptr @use_sideband, align 4
  %i.x = select i1 %.b25, i32 65520, i32 0
  call void @send_sideband(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.v, i64 noundef %i.w, i32 noundef %i.x) #20
  br label %select.unfold.outer.backedge

.thread29:                                        ; preds = %bb.i, %bb.h
  %.b = load i1, ptr @use_sideband, align 4
  %i.y = select i1 %.b, i32 65520, i32 0
  call void @send_sideband(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef %i.n, i32 noundef %i.y) #20
  br label %select.unfold

.thread32:                                        ; preds = %.thread, %bb.g
  %i.z = call i32 @close(i32 noundef %0) #20      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
}

declare i32 @finish_command(ptr noundef) local_unnamed_addr #3

declare i32 @update_server_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @clear_shallow_info(ptr noundef) local_unnamed_addr #3

declare void @packet_flush(i32 noundef) local_unnamed_addr #3

declare void @oid_array_clear(ptr noundef) local_unnamed_addr #3

declare void @strvec_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @parse_hide_refs_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @git_config_bool(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_config_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_config_pathname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @config_error_nonbool(ptr noundef) local_unnamed_addr #3

declare i32 @is_valid_msg_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 5) i32 @parse_deny_action(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.43) #22
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.44) #22
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.45) #22
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.46) #22
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.e = tail call i32 @git_config_bool(ptr noundef %0, ptr noundef %1) #20
  %.not12 = icmp eq i32 %i.e, 0
  %. = select i1 %.not12, i32 1, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %., %bb.f ], [ 4, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare i32 @git_config_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @git_config_ulong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @git_config_int64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @proc_receive_ref_append(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #20 ; 11 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #22 ; 4 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.l, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  %i.e = icmp ult ptr %0, %i.c
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.f = sub i64 %i.d, %i.a
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.g = load i8, ptr %0, align 1, !tbaa !58
  switch i8 %i.g, label %.lr.ph.prol.loopexit.unr-lcssa [
    i8 97, label %.sink.split.prol
    i8 100, label %bb.d
    i8 109, label %bb.c
    i8 33, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.prol
  br label %.sink.split.prol

bb.c:                                             ; preds = %.lr.ph.prol
  br label %.sink.split.prol

bb.d:                                             ; preds = %.lr.ph.prol
  br label %.sink.split.prol

.sink.split.prol:                                 ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.prol
  %.sink54.prol = phi i8 [ 2, %bb.d ], [ 8, %bb.b ], [ 4, %bb.c ], [ 1, %.lr.ph.prol ]
  %i.h = load i8, ptr %i.b, align 8
  %i.i = or i8 %i.h, %.sink54.prol
  store i8 %i.i, ptr %i.b, align 8
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %.sink.split.prol, %.lr.ph.prol
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03038.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.k = add i64 %i.d, -1
  %i.l = icmp eq i64 %i.k, %i.a
  br i1 %i.l, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.k
  %.03038 = phi ptr [ %i.t, %bb.k ], [ %.03038.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.m = load i8, ptr %.03038, align 1, !tbaa !58
  switch i8 %i.m, label %.lr.ph.1 [
    i8 97, label %.sink.split
    i8 100, label %bb.e
    i8 109, label %bb.f
    i8 33, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.f, %bb.g, %bb.e
  %.sink54 = phi i8 [ 2, %bb.e ], [ 8, %bb.g ], [ 4, %bb.f ], [ 1, %.lr.ph ]
  %i.n = load i8, ptr %i.b, align 8
  %i.o = or i8 %i.n, %.sink54
  store i8 %i.o, ptr %i.b, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.sink.split, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.03038, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !58
  switch i8 %i.q, label %bb.k [
    i8 97, label %.sink.split.1
    i8 100, label %bb.j
    i8 109, label %bb.i
    i8 33, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.1
  br label %.sink.split.1

bb.i:                                             ; preds = %.lr.ph.1
  br label %.sink.split.1

bb.j:                                             ; preds = %.lr.ph.1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.1
  %.sink54.1 = phi i8 [ 2, %bb.j ], [ 8, %bb.h ], [ 4, %bb.i ], [ 1, %.lr.ph.1 ]
  %i.r = load i8, ptr %i.b, align 8
  %i.s = or i8 %i.r, %.sink54.1
  store i8 %i.s, ptr %i.b, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.1, %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %.03038, i64 2 ; 2 uses
  %exitcond.not.1 = icmp eq ptr %i.t, %i.c
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !200

._crit_edge.loopexit:                             ; preds = %bb.k, %.lr.ph.prol.loopexit
  %1 = sub i64 %i.d, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader37
  %.030.lcssa = phi ptr [ %0, %.preheader37 ], [ %scevgep, %._crit_edge.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.030.lcssa, i64 1
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.v = load i8, ptr %i.b, align 8
  %i.w = or i8 %i.v, 7
  store i8 %i.w, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.1 = phi ptr [ %i.u, %._crit_edge ], [ %0, %bb.l ] ; 3 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1) #22 ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %.not3439 = icmp eq i64 %i.y, 0
  br i1 %.not3439, label %.critedge, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %bb.m
  %sext = shl i64 %i.x, 32
  %i.z = ashr exact i64 %sext, 32
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.z, %.lr.ph42.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.1, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !58
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.lr.ph42
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not34 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not34, label %.critedge, label %.lr.ph42, !llvm.loop !201

.critedge:                                        ; preds = %.lr.ph42, %bb.n, %bb.m
  %.029.lcssa = phi i64 [ 0, %bb.m ], [ 0, %bb.n ], [ %indvars.iv, %.lr.ph42 ]
  %i.ae = tail call ptr @xmemdupz(ptr noundef nonnull %.1, i64 noundef %.029.lcssa) #20
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !91
  %i.ag = load ptr, ptr @proc_receive_ref, align 8, !tbaa !89 ; 2 uses
  %.not35 = icmp eq ptr %i.ag, null
  br i1 %.not35, label %bb.o, label %.preheader

bb.o:                                             ; preds = %.critedge
  store ptr %i.b, ptr @proc_receive_ref, align 8, !tbaa !89
  br label %bb.q

.preheader:                                       ; preds = %.critedge, %.preheader
  %.0 = phi ptr [ %i.ai, %.preheader ], [ %i.ag, %.critedge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %.not36 = icmp eq ptr %i.ai, null
  br i1 %.not36, label %bb.p, label %.preheader, !llvm.loop !202

bb.p:                                             ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.b, ptr %i.aj, align 8, !tbaa !92
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare ptr @hash_to_hex(ptr noundef) local_unnamed_addr #3

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @git_hash_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @git_hash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @get_namespaced_exclude_patterns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hidden_refs_to_excludes(ptr noundef) local_unnamed_addr #3

declare ptr @get_git_namespace() local_unnamed_addr #3

declare i32 @refs_for_each_ref_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @show_ref_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204
  %i.b = tail call ptr @strip_namespace(ptr noundef %i.a) #20 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204
  %i.d = tail call i32 @ref_is_hidden(ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull @hidden_refs) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %i.b, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.g = tail call i32 @oidset_insert(ptr noundef %1, ptr noundef %i.f) #20
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @.str.50, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205
  tail call fastcc void @show_ref(ptr noundef nonnull %.0, ptr noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  ret i32 0
}

declare void @odb_for_each_alternate_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @show_one_alternate_ref(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @oidset_insert(ptr noundef %1, ptr noundef %0) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @show_ref(ptr noundef nonnull @.str.50, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @oidset_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @show_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 13 uses
  %.b = load i1, ptr @sent_capabilities, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @oid_to_hex(ptr noundef %1) #20
  tail call void (i32, ptr, ...) @packet_write_fmt(i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %i.a, ptr noundef %0) #20
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.report.buf, i64 24, i1 false)
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.52, i64 noundef 62) #20
  %i.b = load i32, ptr @advertise_atomic_push, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.53, i64 noundef 7) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load i32, ptr @prefer_ofs_delta, align 4, !tbaa !12
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.54, i64 noundef 10) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr @push_cert_nonce, align 8, !tbaa !16 ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.d) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load i32, ptr @advertise_push_options, align 4, !tbaa !12
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
