Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/channel?download=true
inline.NumInlined: 17
inline.NumDeleted: 13
begin_hunk_0_@migration_has_main_and_multifd_channels:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @multifd_recv_all_channels_created() #8
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.0
}

declare ptr @migration_incoming_get_current() local_unnamed_addr #2

declare zeroext i1 @migrate_multifd() local_unnamed_addr #2

declare zeroext i1 @multifd_recv_all_channels_created() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @migration_has_all_channels() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @migration_incoming_get_current() #8
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %migration_has_main_and_multifd_channels.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @migrate_multifd() #8
  br i1 %i.c, label %bb.c, label %migration_has_main_and_multifd_channels.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @multifd_recv_all_channels_created() #8
  br i1 %i.d, label %migration_has_main_and_multifd_channels.exit, label %migration_has_main_and_multifd_channels.exit.thread

migration_has_main_and_multifd_channels.exit:     ; preds = %bb.c, %bb.b
  %i.e = tail call ptr @migration_incoming_get_current() #8
  %i.f = tail call zeroext i1 @migrate_postcopy_preempt() #8
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %migration_has_main_and_multifd_channels.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %migration_has_main_and_multifd_channels.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %migration_has_main_and_multifd_channels.exit
  br label %migration_has_main_and_multifd_channels.exit.thread

migration_has_main_and_multifd_channels.exit.thread: ; preds = %bb.c, %bb.a, %bb.e, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.1
}

declare zeroext i1 @migrate_postcopy_preempt() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @migration_channel_process_incoming(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = tail call ptr @migration_incoming_get_current() #8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8
  %i.d = tail call ptr @object_get_typename(ptr noundef %0) #8
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_migration_set_incoming_channel.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_MIGRATION_SET_INCOMING_CHANNEL_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %trace_migration_set_incoming_channel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %trace_migration_set_incoming_channel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef %i.d) #8
  br label %trace_migration_set_incoming_channel.exit

trace_migration_set_incoming_channel.exit:        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = tail call zeroext i1 @migrate_channel_requires_tls_upgrade(ptr noundef %0) #8
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_migration_set_incoming_channel.exit
  call void @migration_tls_channel_process_incoming(ptr noundef %0, ptr noundef nonnull %i.b) #8
  br label %bb.x

bb.f:                                             ; preds = %trace_migration_set_incoming_channel.exit
  tail call void @migration_ioc_register_yank(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.j = tail call ptr @migration_incoming_get_current() #8
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call zeroext i1 @migrate_multifd() #8
  br i1 %i.l, label %bb.h, label %migration_has_main_and_multifd_channels.exit.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call zeroext i1 @multifd_recv_all_channels_created() #8
  br i1 %i.m, label %migration_has_main_and_multifd_channels.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.n = tail call zeroext i1 @qio_channel_has_feature(ptr noundef %0, i32 noundef 4) #8
  br i1 %i.n, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.o = call i32 @migration_channel_read_peek(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef nonnull %i.b)
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.k, label %migration_channel_identify.exit

bb.k:                                             ; preds = %bb.j
  %i.p = load i32, ptr %i.a, align 4
  %i.q = call noundef i32 @llvm.bswap.i32(i32 %i.p) ; 3 uses
  store i32 %i.q, ptr %i.a, align 4
  switch i32 %i.q, label %bb.n [
    i32 1363498573, label %bb.v
    i32 287454020, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.r = call zeroext i1 @migrate_multifd() #8
  br i1 %i.r, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__.migration_channel_identify) #9
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.s = load ptr, ptr %i.c, align 8
  %.not13.i = icmp eq ptr %i.s, null
  br i1 %.not13.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 7
  br i1 %i.v, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @__func__.migration_channel_identify, ptr noundef nonnull @.str.17, i32 noundef %i.q) #8
  br label %migration_channel_identify.exit

bb.q:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.c, align 8
  %.not.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i14, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = tail call zeroext i1 @migrate_multifd() #8
  br i1 %i.x, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pr.i = load ptr, ptr %i.c, align 8
  %.not11.i = icmp eq ptr %.pr.i, null
  br i1 %.not11.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @__func__.migration_channel_identify, ptr noundef nonnull @.str.18) #8
  br label %migration_channel_identify.exit

migration_has_main_and_multifd_channels.exit.i:   ; preds = %bb.h, %bb.g
  %i.y = tail call zeroext i1 @migrate_postcopy_preempt() #8
  br i1 %i.y, label %bb.v, label %bb.u

bb.u:                                             ; preds = %migration_has_main_and_multifd_channels.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__.migration_channel_identify) #9
  unreachable

migration_channel_identify.exit:                  ; preds = %bb.j, %bb.p, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.x

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.k, %bb.l, %bb.o, %migration_has_main_and_multifd_channels.exit.i, %bb.q
  %.0.i.ph = phi i8 [ 1, %bb.q ], [ 3, %migration_has_main_and_multifd_channels.exit.i ], [ 1, %bb.o ], [ 2, %bb.l ], [ 1, %bb.k ], [ 2, %bb.r ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.z = call zeroext i1 @migration_incoming_setup(ptr noundef %0, i8 noundef zeroext %.0.i.ph, ptr noundef nonnull %i.b) #8
  br i1 %i.z, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @migration_start_incoming() #8
  br label %bb.x

bb.x:                                             ; preds = %migration_channel_identify.exit, %bb.e, %bb.w, %bb.v
  %i.aa = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not13 = icmp eq ptr %i.aa, null
  br i1 %.not13, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @error_report_err(ptr noundef nonnull %i.aa) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 456 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  call void @migrate_set_state(ptr noundef nonnull %i.ab, i32 noundef %i.ac, i32 noundef 12) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 980
  %i.ae = load i8, ptr %i.ad, align 4, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @exit(i32 noundef 1) #10
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @migrate_channel_requires_tls_upgrade(ptr noundef) local_unnamed_addr #2

declare void @migration_tls_channel_process_incoming(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @migration_ioc_register_yank(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @migration_incoming_setup(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @migration_start_incoming() local_unnamed_addr #2

declare void @error_report_err(ptr noundef) local_unnamed_addr #2

declare void @migrate_set_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare void @migration_tls_channel_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @migration_connect_error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @migration_outgoing_setup(ptr noundef) local_unnamed_addr #2

declare void @migration_start_outgoing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @migration_channel_read_peek(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.iovec, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = call i64 @qio_channel_readv_full(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %3) #8 ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = icmp ne i64 %i.b, -2
  %or.cond13 = and i1 %i.c, %i.d
  br i1 %or.cond13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.e = phi i64 [ %i.h, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 293, ptr noundef nonnull @__func__.migration_channel_read_peek, ptr noundef nonnull @.str.3) #8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.e, %2
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @qio_channel_wait_cond(ptr noundef %0, i32 noundef 1) #8
  %i.h = call i64 @qio_channel_readv_full(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %3) #8 ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = icmp ne i64 %i.h, -2
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.0
}

declare i64 @qio_channel_readv_full(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qio_channel_wait_cond(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @migrate_uri_parse(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(72) ptr @g_malloc0(i64 noundef 72) #11 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %g_strdup_inline.exit75

g_strdup_inline.exit75:                           ; preds = %bb.a
  store i32 1, ptr %i.b, align 8
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11
  store ptr %i.e, ptr %i.c, align 8
  %i.f = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #11 ; 2 uses
  store i64 29400045130965551, ptr %i.f, align 1
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11
  store ptr %i.j, ptr %i.i, align 8
  %i.k = tail call noalias dereferenceable_or_null(3) ptr @g_malloc(i64 noundef 3) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 noundef 3, i1 noundef false) #8
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.p) #8
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  br label %glib_autoptr_cleanup_MigrationAddress.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %.not61 = icmp eq i32 %i.t, 0
  br i1 %.not61, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.v = tail call i32 @inet_parse(ptr noundef nonnull %i.c, ptr noundef nonnull %i.u, ptr noundef %2) #8
  %.not69 = icmp eq i32 %i.v, 0
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @qapi_free_InetSocketAddress(ptr noundef nonnull %i.c) #8
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.b, align 8
  br label %glib_autoptr_cleanup_MigrationAddress.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.w = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %.not62 = icmp eq i32 %i.w, 0
  br i1 %.not62, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %.not63 = icmp eq i32 %i.x, 0
  br i1 %.not63, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %.not64 = icmp eq i32 %i.y, 0
  br i1 %.not64, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %.not65 = icmp eq i32 %i.z, 0
  br i1 %.not65, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  store i32 0, ptr %i.b, align 8
  %i.aa = tail call ptr @socket_parse(ptr noundef %0, ptr noundef %2) #8 ; 4 uses
  %.not68.not = icmp eq ptr %i.aa, null
  br i1 %.not68.not, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.aa, align 8
  store i32 %i.ab, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false)
  tail call void @g_free(ptr noundef nonnull %i.aa) #8
  br label %glib_autoptr_cleanup_MigrationAddress.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.ae = tail call i32 @strstart(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %.not66 = icmp eq i32 %i.ae, 0
  br i1 %.not66, label %.critedge, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.l
  store i32 3, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.af) #8 ; 2 uses
  store ptr %i.ag, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = tail call i32 @file_parse_offset(ptr noundef %i.ag, ptr noundef nonnull %i.ah, ptr noundef %2) #8
  %.not67 = icmp eq i32 %i.ai, 0
  br i1 %.not67, label %glib_autoptr_cleanup_MigrationAddress.exit.thread, label %.critedge.thread

glib_autoptr_cleanup_MigrationAddress.exit.thread: ; preds = %bb.k, %bb.e, %g_strdup_inline.exit, %g_strdup_inline.exit75
  store i32 0, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.aj, align 8
  store ptr %i.a, ptr %1, align 8
  br label %glib_autoptr_cleanup_MigrationChannel.exit

.critedge:                                        ; preds = %bb.l
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @__func__.migrate_uri_parse, ptr noundef nonnull @.str.13, ptr noundef %0) #8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %glib_autoptr_cleanup_MigrationAddress.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %bb.j, %g_strdup_inline.exit, %.critedge
  tail call void @qapi_free_MigrationAddress(ptr noundef nonnull %i.b) #8
  br label %glib_autoptr_cleanup_MigrationAddress.exit

glib_autoptr_cleanup_MigrationAddress.exit:       ; preds = %.critedge, %.critedge.thread
  %.not.i.i77 = icmp eq ptr %i.a, null
  br i1 %.not.i.i77, label %glib_autoptr_cleanup_MigrationChannel.exit, label %bb.m

bb.m:                                             ; preds = %glib_autoptr_cleanup_MigrationAddress.exit
  tail call void @qapi_free_MigrationChannel(ptr noundef nonnull %i.a) #8
  br label %glib_autoptr_cleanup_MigrationChannel.exit

glib_autoptr_cleanup_MigrationChannel.exit:       ; preds = %glib_autoptr_cleanup_MigrationAddress.exit.thread, %glib_autoptr_cleanup_MigrationAddress.exit, %bb.m
  %.196105 = phi i1 [ true, %glib_autoptr_cleanup_MigrationAddress.exit.thread ], [ false, %glib_autoptr_cleanup_MigrationAddress.exit ], [ false, %bb.m ]
  ret i1 %.196105
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare i32 @strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inet_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @qapi_free_InetSocketAddress(ptr noundef) local_unnamed_addr #2

declare ptr @socket_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare i32 @file_parse_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @migration_channel_parse_input(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not13 = icmp eq ptr %1, null                  ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = xor i1 %i.c, %.not13
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 415, ptr noundef nonnull @__func__.migration_channel_parse_input, ptr noundef nonnull @.str.14) #8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  br i1 %.not13, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %1, align 8
  %.not28.i = icmp eq ptr %i.e, null
  br i1 %.not28.i, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 316, ptr noundef nonnull @__func__.migrate_channels_parse, ptr noundef nonnull @.str.21) #8
  br label %bb.s

bb.g:                                             ; preds = %.preheader, %bb.i
  %.sroa.0.0.i = phi ptr [ %spec.select.i, %bb.i ], [ null, %.preheader ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %spec.select40.i, %bb.i ], [ null, %.preheader ] ; 2 uses
  %.02535.i = phi ptr [ %i.j, %bb.i ], [ %1, %.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02535.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.sroa.idx.i = icmp eq i32 %i.h, 1              ; 3 uses
  %.sroa.speculated.i = select i1 %.sroa.idx.i, ptr %.sroa.5.0.i, ptr %.sroa.0.0.i
  %.not34.i = icmp eq ptr %.sroa.speculated.i, null
  br i1 %.not34.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationChannelType_lookup, i32 noundef %i.h) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @__func__.migrate_channels_parse, ptr noundef nonnull @.str.22, ptr noundef %i.i) #8
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %spec.select.i = select i1 %.sroa.idx.i, ptr %.sroa.0.0.i, ptr %i.g ; 3 uses
  %spec.select40.i = select i1 %.sroa.idx.i, ptr %i.g, ptr %.sroa.5.0.i ; 3 uses
  %i.j = load ptr, ptr %.02535.i, align 8         ; 2 uses
  %.not29.i = icmp eq ptr %i.j, null
  br i1 %.not29.i, label %bb.j, label %bb.g, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %spec.select40.i, ptr %i.a, align 8
  %.not30.i = icmp eq ptr %spec.select40.i, null
  br i1 %.not30.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = tail call ptr @qapi_clone_visitor_new() #8 ; 2 uses
  %i.l = call zeroext i1 @visit_type_MigrationChannel(ptr noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #8 ; 0 uses
  call void @visit_free(ptr noundef %i.k) #8
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.m = phi ptr [ %.pre.i, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr %i.m, ptr %3, align 8
  %i.n = call i32 @migrate_mode() #8
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.p = load ptr, ptr %3, align 8
  %.not31.i = icmp eq ptr %i.p, null
  br i1 %.not31.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 337, ptr noundef nonnull @__func__.migrate_channels_parse, ptr noundef nonnull @.str.23) #8
  br label %bb.s

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %spec.select.i, ptr %i.b, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i) ]
  %i.q = call ptr @qapi_clone_visitor_new() #8    ; 2 uses
  %i.r = call zeroext i1 @visit_type_MigrationChannel(ptr noundef %i.q, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull @error_abort) #8 ; 0 uses
  call void @visit_free(ptr noundef %i.q) #8
  %.pre37.i = load ptr, ptr %i.b, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  store ptr %.pre37.i, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre37.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.not33.i = icmp eq ptr %i.t, null
  br i1 %.not33.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 346, ptr noundef nonnull @__func__.migrate_channels_parse, ptr noundef nonnull @.str.24) #8
  br label %bb.s

bb.r:                                             ; preds = %bb.c
  %i.u = tail call zeroext i1 @migrate_uri_parse(ptr noundef %0, ptr noundef %2, ptr noundef %4)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.h, %bb.f, %bb.r, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.u, %bb.r ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.q ], [ false, %bb.o ], [ true, %bb.p ]
  ret i1 %.0
}

declare void @object_unref(ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @qio_channel_has_feature(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

declare void @qapi_free_MigrationChannel(ptr noundef) local_unnamed_addr #2

declare void @qapi_free_MigrationAddress(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @qapi_clone_visitor_new() local_unnamed_addr #2

declare zeroext i1 @visit_type_MigrationChannel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @visit_free(ptr noundef) local_unnamed_addr #2

declare i32 @migrate_mode() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
