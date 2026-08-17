inline.NumInlined: 49
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cmd_rev_list:bb.a
  %i.qx = call i32 @putc(i32 noundef %i.qv, ptr noundef %i.qw), !inline_history !118 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %5) #12
  br label %print_missing_object.exit

print_missing_object.exit:                        ; preds = %bb.dh, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.qy = call ptr @hashmap_iter_next(ptr noundef nonnull %11) #12 ; 2 uses
  %.not142 = icmp eq ptr %i.qy, null
  br i1 %.not142, label %._crit_edge368, label %bb.dd, !llvm.loop !121

._crit_edge368:                                   ; preds = %print_missing_object.exit, %bb.dc
  call void @oidmap_clear_with_free(ptr noundef nonnull @missing_objects, ptr noundef nonnull @missing_objects_map_entry_free) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.dq

bb.dq:                                            ; preds = %bb.db, %._crit_edge368
  %i.qz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not4.i.i, label %stop_progress.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ra = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #12
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %bb.dq, %bb.dr
  %.0.i.i = phi ptr [ %i.ra, %bb.dr ], [ @.str.65, %bb.dq ]
  call void @stop_progress_msg(ptr noundef nonnull @progress, ptr noundef %.0.i.i) #12
  %i.rb = load i64, ptr %i.bl, align 4            ; 4 uses
  %i.rc = and i64 %i.rb, 16777216
  %.not143 = icmp eq i64 %i.rc, 0
  br i1 %.not143, label %bb.dz, label %bb.ds

bb.ds:                                            ; preds = %stop_progress.exit
  %i.rd = and i64 %i.rb, 34359738368
  %.not145 = icmp eq i64 %i.rd, 0
  %i.re = and i64 %i.rb, 34393292800
  %or.cond174.not = icmp eq i64 %i.re, 34393292800
  br i1 %or.cond174.not, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 2944
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !122
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 2948
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !123
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 2952
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !124
  %i.rl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.rg, i32 noundef %i.ri, i32 noundef %i.rk) ; 0 uses
  br label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.rm = and i64 %i.rb, 33554432
  %.not144 = icmp eq i64 %i.rm, 0
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 2944
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !122 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %8, i64 2948
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !123 ; 2 uses
  br i1 %.not144, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ro, i32 noundef %i.rq) ; 0 uses
  br label %bb.dz

bb.dw:                                            ; preds = %bb.du
  %i.rs = add nsw i32 %i.rq, %i.ro                ; 2 uses
  br i1 %.not145, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rt = getelementptr inbounds nuw i8, ptr %8, i64 2952
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !124
  %i.rv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.rs, i32 noundef %i.ru) ; 0 uses
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.rw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.rs) ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dt, %bb.dx, %bb.dy, %bb.dv, %stop_progress.exit
  %.b103 = load i1, ptr @show_disk_usage, align 4
  br i1 %.b103, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.rx = load i64, ptr @total_disk_usage, align 8, !tbaa !125 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.print_disk_usage.sb, i64 24, i1 false)
  %.b.i213 = load i1, ptr @human_readable, align 4
  br i1 %.b.i213, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @strbuf_humanise_bytes(ptr noundef nonnull %4, i64 noundef %i.rx) #12
  br label %print_disk_usage.exit

bb.ec:                                            ; preds = %bb.ea
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.66, i64 noundef %i.rx) #12
  br label %print_disk_usage.exit

print_disk_usage.exit:                            ; preds = %bb.eb, %bb.ec
  %i.ry = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !89
  %i.sa = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.rz) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ed

bb.ed:                                            ; preds = %bb.cn, %try_bitmap_traversal.exit, %try_bitmap_disk_usage.exit, %try_bitmap_count.exit, %bb.al, %bb.dz, %print_disk_usage.exit
  %.284 = phi i32 [ 0, %bb.al ], [ 0, %print_disk_usage.exit ], [ 0, %bb.dz ], [ %.0.i198, %bb.cn ], [ 0, %try_bitmap_traversal.exit ], [ 0, %try_bitmap_disk_usage.exit ], [ 0, %try_bitmap_count.exit ]
  call void @release_revisions(ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret i32 %.284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @show_usage_if_asked(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @repo_init_revisions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @setup_revisions(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @test_bitmap_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !70
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.24, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @usage(ptr noundef) local_unnamed_addr #5

declare i32 @reflog_walk_empty(ptr noundef) local_unnamed_addr #2

declare ptr @start_delayed_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @prepare_revision_walk(ptr noundef) local_unnamed_addr #2

declare void @mark_edges_uninteresting(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @show_edge(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call ptr @oid_to_hex(ptr noundef nonnull %i.a) #12
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef %i.b) ; 0 uses
  ret void
}

declare void @find_bisection(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @oidset_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @oidmap_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @oidset_clear(ptr noundef) local_unnamed_addr #2

declare void @traverse_commit_list_filtered(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @show_commit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.object_info, align 8        ; 5 uses
  %3 = alloca %struct.strbuf, align 8             ; 8 uses
  %4 = alloca %struct.pretty_print_context, align 8 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !73     ; 16 uses
  %i.c = load ptr, ptr @progress, align 8, !tbaa !86
  %i.d = load i32, ptr @progress_counter, align 4, !tbaa !15
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr @progress_counter, align 4, !tbaa !15
  %i.f = zext i32 %i.e to i64
  tail call void @display_progress(ptr noundef %i.c, i64 noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 332 ; 4 uses
  %i.h = load i64, ptr %i.g, align 4
  %i.i = and i64 %i.h, 8796093022208
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3072
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call i32 @oidset_contains(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #12
  %.not73 = icmp eq i32 %i.l, 0
  br i1 %.not73, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @finish_object__ma(ptr noundef nonnull %0, ptr noundef null)
  br label %bb.as

bb.d:                                             ; preds = %bb.b, %bb.a
  %.b72 = load i1, ptr @show_disk_usage, align 4
  br i1 %.b72, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !126
  %i.n = load ptr, ptr @the_repository, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = call i32 @odb_read_object_info_extended(ptr noundef %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %2, i32 noundef 0) #12
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %get_object_disk_usage.exit

bb.f:                                             ; preds = %bb.e
  %i.t = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  %i.u = call ptr @oid_to_hex(ptr noundef nonnull %i.q) #12
  call void (ptr, ...) @die(ptr noundef %i.t, ptr noundef %i.u) #14
  unreachable

get_object_disk_usage.exit:                       ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.w = load i64, ptr @total_disk_usage, align 8, !tbaa !125
  %i.x = add nsw i64 %i.w, %i.v
  store i64 %i.x, ptr @total_disk_usage, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %get_object_disk_usage.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !77
  %i.aa = and i32 %i.z, 2
  %.not74 = icmp eq i32 %i.aa, 0
  br i1 %.not74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !149
  call void @commit_list_free(ptr noundef %i.ac) #12
  store ptr null, ptr %i.ab, align 8, !tbaa !149
  %i.ad = load ptr, ptr @the_repository, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !153
  call void @free_commit_buffer(ptr noundef %i.af, ptr noundef %0) #12
  br label %bb.as

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1440 ; 7 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  call void @graph_show_commit(ptr noundef %i.ah) #12
  %i.ai = load i64, ptr %i.g, align 4
  %i.aj = and i64 %i.ai, 16777216
  %.not75 = icmp eq i64 %i.aj, 0
  br i1 %.not75, label %bb.k, label %5

5:                                                ; preds = %bb.i
  %6 = load i64, ptr %0, align 8
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32                    ; 2 uses
  %9 = and i32 %8, 512
  %.not95 = icmp eq i32 %9, 0
  br i1 %.not95, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 2952 ; 2 uses
  %12 = load i32, ptr %11, align 8, !tbaa !124
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !124
  br label %bb.j

14:                                               ; preds = %5
  %15 = and i32 %8, 256
  %.not96 = icmp eq i32 %15, 0
  br i1 %.not96, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  %18 = load i32, ptr %17, align 8, !tbaa !122
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !122
  br label %bb.j

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 2948 ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !123
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !123
  br label %bb.j

bb.j:                                             ; preds = %16, %20, %10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149
  call void @commit_list_free(ptr noundef %i.al) #12
  store ptr null, ptr %i.ak, align 8, !tbaa !149
  %i.am = load ptr, ptr @the_repository, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !153
  call void @free_commit_buffer(ptr noundef %i.ao, ptr noundef nonnull %0) #12
  br label %bb.as

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !78
  %.not76 = icmp eq i32 %i.aq, 0
  br i1 %.not76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !154
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i64 noundef %i.as) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82 ; 2 uses
  %.not77 = icmp eq ptr %i.av, null
  br i1 %.not77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !117
  %i.ax = call i32 @fputs(ptr noundef nonnull %i.av, ptr noundef %i.aw) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = and i32 %i.az, 65536
  %.not78 = icmp eq i32 %i.ba, 0
  br i1 %.not78, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.bc = icmp ne ptr %i.bb, null
  %.b = load i1, ptr @line_term, align 1
  %or.cond.not = select i1 %i.bc, i1 true, i1 %.b
  br i1 %or.cond.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = call ptr @get_revision_mark(ptr noundef nonnull %i.b, ptr noundef %0) #12
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !117
  %i.bf = call i32 @fputs(ptr noundef %i.bd, ptr noundef %i.be) ; 0 uses
  %.pre = load i32, ptr %i.ay, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = phi i32 [ %.pre, %bb.q ], [ %i.az, %bb.p ]
  %i.bh = and i32 %i.bg, 128
  %.not80 = icmp eq i32 %i.bh, 0
  br i1 %.not80, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !16 ; 2 uses
  %.not81 = icmp eq i32 %i.bj, 0
  br i1 %.not81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr @the_repository, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = call ptr @repo_find_unique_abbrev(ptr noundef %i.bk, ptr noundef nonnull %i.bl, i32 noundef %i.bj) #12
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = call ptr @oid_to_hex(ptr noundef nonnull %i.bn) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.bo, %bb.u ], [ %i.bm, %bb.t ]
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !117
  %i.bq = call i32 @fputs(ptr noundef %.sink, ptr noundef %i.bp) ; 0 uses
  %.b70 = load i1, ptr @line_term, align 1
  br i1 %.b70, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.br = load i64, ptr %0, align 8
  %i.bs = and i64 %i.br, 137438953472
  %.not83 = icmp eq i64 %i.bs, 0
  br i1 %.not83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.b71 = load i1, ptr @info_term, align 1
  %i.bt = select i1 %.b71, i32 0, i32 32
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.bt) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %bb.o
  %i.bv = load i64, ptr %i.g, align 4
  %i.bw = and i64 %i.bv, 1073741824
  %.not84 = icmp eq i64 %i.bw, 0
  br i1 %.not84, label %.loopexit97, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.06598 = load ptr, ptr %i.bx, align 8, !tbaa !90 ; 2 uses
  %.not8599 = icmp eq ptr %.06598, null
  br i1 %.not8599, label %.loopexit97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.065100 = phi ptr [ %.065, %.lr.ph ], [ %.06598, %bb.z ] ; 2 uses
  %i.by = load ptr, ptr %.065100, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = call ptr @oid_to_hex(ptr noundef nonnull %i.bz) #12
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.065100, i64 8
  %.065 = load ptr, ptr %i.cc, align 8, !tbaa !90 ; 2 uses
  %.not85 = icmp eq ptr %.065, null
  br i1 %.not85, label %.loopexit97, label %.lr.ph, !llvm.loop !155

.loopexit97:                                      ; preds = %.lr.ph, %bb.z, %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 2744 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !156
  %.not86 = icmp eq ptr %i.ce, null
  br i1 %.not86, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit97
  %i.cf = call ptr @lookup_decoration(ptr noundef nonnull %i.cd, ptr noundef %0) #12 ; 2 uses
  %.not87101 = icmp eq ptr %i.cf, null
  br i1 %.not87101, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.aa, %.lr.ph103
  %.0102 = phi ptr [ %i.cl, %.lr.ph103 ], [ %i.cf, %bb.aa ] ; 2 uses
  %i.cg = load ptr, ptr %.0102, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = call ptr @oid_to_hex(ptr noundef nonnull %i.ch) #12
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %i.ci) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0102, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !157 ; 2 uses
  %.not87 = icmp eq ptr %i.cl, null
  br i1 %.not87, label %.loopexit, label %.lr.ph103, !llvm.loop !158

.loopexit:                                        ; preds = %.lr.ph103, %bb.aa, %.loopexit97
  call void @show_decorations(ptr noundef nonnull %i.b, ptr noundef %0) #12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 380 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !68
  %i.co = icmp eq i32 %i.cn, 5
  br i1 %i.co, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.cp = load i32, ptr %i.ay, align 8
  %i.cq = and i32 %i.cp, 65536
  %.not88 = icmp eq i32 %i.cq, 0
  br i1 %.not88, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.b69 = load i1, ptr @line_term, align 1
  %i.cr = select i1 %.b69, i32 0, i32 10
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.ac
  %.sink108 = phi i32 [ %i.cr, %bb.ac ], [ 32, %.loopexit ]
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !117
  %i.ct = call i32 @putc(i32 noundef %.sink108, ptr noundef %i.cs) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab
  %i.cu = load i64, ptr %i.g, align 4
  %i.cv = and i64 %i.cu, 1125899906842624
  %.not89 = icmp eq i64 %i.cv, 0
  br i1 %.not89, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.print_disk_usage.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cw, i8 0, i64 168, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !159
  %i.da = load i32, ptr %i.ay, align 8
  %i.db = lshr i32 %i.da, 12
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dd = trunc i32 %i.db to i8
  %i.de = and i8 %i.dd, 1
  store i8 %i.de, ptr %i.dc, align 8
  %i.df = load <2 x i32>, ptr %i.cx, align 8, !tbaa !15
  %i.dg = shufflevector <2 x i32> %i.df, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dg, ptr %4, align 8, !tbaa !15
  %i.dh = call ptr @get_log_output_encoding() #12
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !160
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 1768
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !164
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !165
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.b, ptr %i.dm, align 8, !tbaa !166
  call void @pretty_print_commit(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #12
end_hunk_0
