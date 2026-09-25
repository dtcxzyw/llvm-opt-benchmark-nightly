Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sinfo?download=true
inline.NumInlined: 15
inline.NumDeleted: 13
begin_hunk_0_@main:bb.a
  br i1 %.01115.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %.pre.i = load ptr, ptr @working_cluster_rec, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = phi ptr [ %i.ag, %bb.k ], [ %.pre.i, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 280
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %i.al) ; 0 uses
  %.pre17.i = load ptr, ptr @working_cluster_rec, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.an = phi ptr [ %i.ag, %.lr.ph.i ], [ %.pre17.i, %bb.m ]
  %.2.i = phi i1 [ %.01115.i, %.lr.ph.i ], [ false, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call fastcc i32 @_get_info(i1 noundef zeroext true, ptr noundef null, ptr noundef %i.ap, i32 noundef %0, ptr noundef nonnull %1)
  %.fr = freeze i32 %i.aq
  %.not13.i = icmp eq i32 %.fr, 0
  %spec.select.i = select i1 %.not13.i, i32 %.016.i, i32 1 ; 2 uses
  %i.ar = tail call ptr @list_next(ptr noundef %i.ae) #12 ; 3 uses
  store ptr %i.ar, ptr @working_cluster_rec, align 8
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_multi_cluster.exit, label %.lr.ph.i, !llvm.loop !12

_multi_cluster.exit:                              ; preds = %bb.n
  tail call void @list_iterator_destroy(ptr noundef %i.ae) #12
  %.not16 = icmp eq i32 %spec.select.i, 0
  br i1 %.not16, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_multi_cluster.exit.thread, %_multi_cluster.exit
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_multi_cluster.exit, %bb.g
  %.1 = phi i32 [ %spec.select, %bb.g ], [ %.0, %bb.o ], [ 1, %_multi_cluster.exit ] ; 2 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 112), align 8
  %.not17 = icmp eq i32 %i.as, 0
  br i1 %.not17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 112), align 8
  %i.au = tail call i32 @sleep(i32 noundef %i.at) #12 ; 0 uses
  br label %bb.c, !llvm.loop !13

bb.r:                                             ; preds = %bb.p
  tail call fastcc void @_free_params()
  tail call void @exit(i32 noundef %.1) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @slurm_init(ptr noundef) local_unnamed_addr #2

declare i32 @log_init(ptr noundef, ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xbasename(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @list_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_free_sinfo_format(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @parse_command_line(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @log_alter(ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @print_date() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_get_info(i1 noundef zeroext %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.openapi_resp_single_t, align 8 ; 8 uses
  %6 = alloca %struct.data_parser_dump_cli_ctxt_t, align 8 ; 8 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 41), align 1, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_load_resv.old_resv_ptr, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %0, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i64, ptr %i.d, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.e = phi i64 [ %.pre.i, %._crit_edge.i ], [ 0, %bb.d ]
  %i.f = tail call i32 @slurm_load_reservations(i64 noundef %i.e, ptr noundef nonnull @_load_resv.new_resv_ptr) #12
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @_load_resv.old_resv_ptr, align 8
  tail call void @slurm_free_reservation_info_msg(ptr noundef %i.h) #12
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #14
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1900
  br i1 %i.k, label %bb.h, label %_load_resv.exit

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @_load_resv.old_resv_ptr, align 8 ; 2 uses
  store ptr %i.l, ptr @_load_resv.new_resv_ptr, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.m = tail call i32 @slurm_load_reservations(i64 noundef 0, ptr noundef nonnull @_load_resv.new_resv_ptr) #12
  %.not8.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i, label %thread-pre-split, label %_load_resv.exit

_load_resv.exit:                                  ; preds = %bb.g, %bb.i
  tail call void @slurm_perror(ptr noundef nonnull @.str.7) #12
  br label %_reservation_report.exit

thread-pre-split:                                 ; preds = %bb.i, %bb.f
  %.pr = load ptr, ptr @_load_resv.new_resv_ptr, align 8
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %bb.h
  %i.n = phi ptr [ %.pr, %thread-pre-split ], [ %i.l, %bb.h ] ; 4 uses
  store ptr %i.n, ptr @_load_resv.old_resv_ptr, align 8
  %.not.i54 = icmp eq ptr %i.n, null
  br i1 %.not.i54, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @slurm_perror(ptr noundef nonnull @.str.8) #12
  br label %_reservation_report.exit

bb.l:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @print_sinfo_reservation(ptr noundef nonnull %i.n) #12
  br label %_reservation_report.exit

bb.n:                                             ; preds = %bb.l
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_reservation_report.exit

bb.o:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = tail call ptr @list_create(ptr noundef nonnull @_node_list_delete) #12 ; 2 uses
  %i.r = tail call ptr @list_create(ptr noundef nonnull @_part_list_delete) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @list_count(ptr noundef %i.t) #12
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.w, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 491, ptr noundef nonnull @__func__._query_fed_servers) #12 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = tail call ptr @list_create(ptr noundef nonnull @_sinfo_list_delete) #12 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8
  %i.aa = tail call ptr @list_iterator_create(ptr noundef %i.z) #12 ; 6 uses
  %i.ab = tail call ptr @list_next(ptr noundef %i.aa) #12 ; 2 uses
  %.not3335.i = icmp eq ptr %i.ab, null
  br i1 %.not3335.i, label %.outer._crit_edge.thread.i, label %.lr.ph.i

.outer._crit_edge.thread.i:                       ; preds = %bb.p
  tail call void @list_iterator_destroy(ptr noundef %i.aa) #12
  br label %_query_fed_servers.exit

.lr.ph.i:                                         ; preds = %bb.p, %.outer.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.outer.i ], [ 0, %bb.p ] ; 4 uses
  %i.ac = phi ptr [ %i.ar, %.outer.i ], [ %i.ab, %bb.p ]
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %i.ad = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.aj, %bb.s ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load i8, ptr %i.af, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aj = tail call ptr @list_next(ptr noundef %i.aa) #12 ; 2 uses
  %.not.i55 = icmp eq ptr %i.aj, null
  br i1 %.not.i55, label %.outer._crit_edge.i, label %bb.q, !llvm.loop !14

bb.t:                                             ; preds = %bb.r
  %i.ak = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 498, ptr noundef nonnull @__func__._query_fed_servers) #12 ; 5 uses
  store ptr %i.ad, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.q, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.r, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.y, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ap = tail call i32 @threadpool_create(ptr noundef nonnull @_load_job_prio_thread, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ak, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.ao, ptr noundef nonnull @__func__._query_fed_servers) #12 ; 2 uses
  %.not30.i = icmp eq i32 %i.ap, 0
  br i1 %.not30.i, label %.outer.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call ptr @slurm_strerror(i32 noundef %i.ap) #12
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._query_fed_servers, ptr noundef %i.aq) #13
  unreachable

.outer.i:                                         ; preds = %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = tail call ptr @list_next(ptr noundef %i.aa) #12 ; 2 uses
  %.not33.i = icmp eq ptr %i.ar, null
  br i1 %.not33.i, label %.outer._crit_edge.thread61.i, label %.lr.ph.i, !llvm.loop !14

.outer._crit_edge.thread61.i:                     ; preds = %.outer.i
  tail call void @list_iterator_destroy(ptr noundef %i.aa) #12
  br label %.lr.ph40.preheader.i

.outer._crit_edge.i:                              ; preds = %bb.s
  tail call void @list_iterator_destroy(ptr noundef %i.aa) #12
  %.not42.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not42.i, label %_query_fed_servers.exit, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %.outer._crit_edge.i, %.outer._crit_edge.thread61.i
  %.024.ph.lcssa3264.in.i = phi i64 [ %indvars.iv.next.i, %.outer._crit_edge.thread61.i ], [ %indvars.iv.i, %.outer._crit_edge.i ]
  %wide.trip.count.i = and i64 %.024.ph.lcssa3264.in.i, 4294967295
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.x, %.lr.ph40.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph40.preheader.i ], [ %indvars.iv.next51.i, %bb.x ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv50.i ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = tail call i32 @threadpool_join(i64 noundef %i.at, ptr noundef nonnull @__func__._query_fed_servers) #12 ; 2 uses
  %.not29.i = icmp eq i32 %i.au, 0
  br i1 %.not29.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph40.i
  %i.av = tail call ptr @__errno_location() #14
  store i32 %i.au, ptr %i.av, align 4
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph40.i
  store i64 0, ptr %i.as, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_query_fed_servers.exit, label %.lr.ph40.i, !llvm.loop !15

_query_fed_servers.exit:                          ; preds = %bb.x, %.outer._crit_edge.thread.i, %.outer._crit_edge.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_query_server.exit

bb.y:                                             ; preds = %bb.o
  %i.aw = load i8, ptr @params, align 8, !range !8, !noundef !9
  %i.ax = trunc nuw i8 %i.aw to i1
  %spec.select.i = select i1 %i.ax, i16 9, i16 8
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 32), align 8, !range !8, !noundef !9
  %i.az = shl nuw i8 %i.ay, 7
  %i.ba = zext i8 %i.az to i16
  %.1.i = or disjoint i16 %spec.select.i, %i.ba   ; 3 uses
  %i.bb = load ptr, ptr @_query_server.old_part_ptr, align 8 ; 3 uses
  %.not.i56 = icmp eq ptr %i.bb, null
  br i1 %.not.i56, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %0, label %bb.aa, label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %bb.z
  %.pre.i58 = load i64, ptr %i.bb, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.bb, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i57
  %i.bc = phi i64 [ %.pre.i58, %._crit_edge.i57 ], [ 0, %bb.aa ]
  %i.bd = tail call i32 @slurm_load_partitions(i64 noundef %i.bc, ptr noundef nonnull @_query_server.new_part_ptr, i16 noundef zeroext %.1.i) #12
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bf = load ptr, ptr @_query_server.old_part_ptr, align 8
  tail call void @slurm_free_partition_info_msg(ptr noundef %i.bf) #12
  br label %.critedge.i

bb.ad:                                            ; preds = %bb.ab
  %i.bg = tail call ptr @__errno_location() #14
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 1900
  br i1 %i.bi, label %bb.ae, label %.critedge32.i

bb.ae:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr @_query_server.old_part_ptr, align 8
  store ptr %i.bj, ptr @_query_server.new_part_ptr, align 8
  br label %.critedge.i

bb.af:                                            ; preds = %bb.y
  %i.bk = tail call i32 @slurm_load_partitions(i64 noundef 0, ptr noundef nonnull @_query_server.new_part_ptr, i16 noundef zeroext %.1.i) #12
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.critedge.i, label %.critedge32.i

.critedge32.i:                                    ; preds = %bb.af, %bb.ad
  tail call void @slurm_perror(ptr noundef nonnull @.str.12) #12
  br label %_reservation_report.exit

.critedge.i:                                      ; preds = %bb.af, %bb.ae, %bb.ac
  %i.bm = load ptr, ptr @_query_server.new_part_ptr, align 8
  store ptr %i.bm, ptr @_query_server.old_part_ptr, align 8
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @params, i64 48), align 8
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = lshr i16 %i.bo, 13
  %i.bq = and i16 %i.bp, 2
  %spec.select33.i = or disjoint i16 %i.bq, %.1.i ; 4 uses
  %i.br = load ptr, ptr @_query_server.old_node_ptr, align 8 ; 3 uses
  %.not29.i59 = icmp eq ptr %i.br, null
  br i1 %.not29.i59, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  br i1 %0, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 0, ptr %i.br, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bs = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 39), align 1, !range !8, !noundef !9
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 80), align 8
  %i.bv = tail call i32 @slurm_load_node_single(ptr noundef nonnull @_query_server.new_node_ptr, ptr noundef %i.bu, i16 noundef zeroext %spec.select33.i) #12
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.bw = load i64, ptr %i.br, align 8
  %i.bx = tail call i32 @slurm_load_node(i64 noundef %i.bw, ptr noundef nonnull @_query_server.new_node_ptr, i16 noundef zeroext %spec.select33.i) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.120.i = phi i32 [ %i.bv, %bb.aj ], [ %i.bx, %bb.ak ]
  %i.by = icmp eq i32 %.120.i, 0
  br i1 %i.by, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bz = load ptr, ptr @_query_server.old_node_ptr, align 8
  tail call void @slurm_free_node_info_msg(ptr noundef %i.bz) #12
  br label %.thread.i60

bb.an:                                            ; preds = %bb.al
  %i.ca = tail call ptr @__errno_location() #14
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, 1900
  br i1 %i.cc, label %bb.ao, label %.thread36.i

bb.ao:                                            ; preds = %bb.an
  %i.cd = load ptr, ptr @_query_server.old_node_ptr, align 8
  store ptr %i.cd, ptr @_query_server.new_node_ptr, align 8
  br label %.thread.i60

bb.ap:                                            ; preds = %.critedge.i
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 39), align 1, !range !8, !noundef !9
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 80), align 8
  %i.ch = tail call i32 @slurm_load_node_single(ptr noundef nonnull @_query_server.new_node_ptr, ptr noundef %i.cg, i16 noundef zeroext %spec.select33.i) #12
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ci = tail call i32 @slurm_load_node(i64 noundef 0, ptr noundef nonnull @_query_server.new_node_ptr, i16 noundef zeroext %spec.select33.i) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.221.i = phi i32 [ %i.ch, %bb.aq ], [ %i.ci, %bb.ar ]
  %.not30.i61 = icmp eq i32 %.221.i, 0
  br i1 %.not30.i61, label %.thread.i60, label %.thread36.i

.thread36.i:                                      ; preds = %bb.as, %bb.an
  tail call void @slurm_perror(ptr noundef nonnull @.str.13) #12
  br label %_reservation_report.exit

.thread.i60:                                      ; preds = %bb.as, %bb.ao, %bb.am
  %i.cj = load ptr, ptr @_query_server.new_node_ptr, align 8
  store ptr %i.cj, ptr @_query_server.old_node_ptr, align 8
  %i.ck = tail call ptr @list_create(ptr noundef nonnull @_sinfo_list_delete) #12 ; 2 uses
  %i.cl = load ptr, ptr @_query_server.new_part_ptr, align 8
  %i.cm = load ptr, ptr @_query_server.new_node_ptr, align 8
  tail call fastcc void @_build_sinfo_data(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cm)
  br label %_query_server.exit

_query_server.exit:                               ; preds = %.thread.i60, %_query_fed_servers.exit
  %.035 = phi ptr [ %i.q, %_query_fed_servers.exit ], [ null, %.thread.i60 ] ; 2 uses
  %.034 = phi ptr [ %i.r, %_query_fed_servers.exit ], [ null, %.thread.i60 ] ; 2 uses
  %.033 = phi ptr [ %i.y, %_query_fed_servers.exit ], [ %i.ck, %.thread.i60 ] ; 6 uses
  %.not43 = icmp eq ptr %.033, null
  br i1 %.not43, label %_reservation_report.exit, label %bb.at

bb.at:                                            ; preds = %_query_server.exit
  %.not44 = icmp eq ptr %2, null
  br i1 %.not44, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cn = call i32 @list_for_each(ptr noundef nonnull %.033, ptr noundef nonnull @_set_cluster_name, ptr noundef nonnull %2) #12 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @sort_sinfo_list(ptr noundef nonnull %.033) #12
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 64), align 8 ; 2 uses
  %.not45 = icmp eq ptr %i.co, null
  br i1 %.not45, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.033, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 463606195, ptr %6, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.cq, align 4
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8
  store ptr %i.cu, ptr %i.ct, align 8
  %i.cv = call ptr @data_parser_cli_meta(i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.co) #12 ; 2 uses
  store ptr %i.cv, ptr %5, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cx = call ptr @list_create(ptr noundef nonnull @free_openapi_resp_error) #12 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8
  store ptr %i.cx, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cz = call ptr @list_create(ptr noundef nonnull @free_openapi_resp_warning) #12 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8
  store ptr %i.cz, ptr %i.cs, align 8
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 64), align 8
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8
  %i.dc = call i32 @data_parser_dump_cli_stdout(i32 noundef 261, ptr noundef nonnull %5, i32 noundef 32, ptr noundef null, ptr noundef %i.da, ptr noundef %i.db, ptr noundef nonnull %6, ptr noundef %i.cv) #12
  %i.dd = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.dd, null
  br i1 %.not49, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
end_hunk_0
