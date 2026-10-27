Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-snort?download=true
inline.NumInlined: 43
inline.NumDeleted: 17
begin_hunk_0_@snort_dissector:bb.a
  %i.xi = load ptr, ptr %i.xh, align 8            ; 2 uses
  %.not5.i368.i = icmp eq ptr %i.xi, null
  br i1 %.not5.i368.i, label %proto_item_set_generated.exit369.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xj = getelementptr i8, ptr %i.xi, i64 28     ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4
  %i.xl = or i32 %i.xk, 2
  store i32 %i.xl, ptr %i.xj, align 4
  br label %proto_item_set_generated.exit369.i

proto_item_set_generated.exit369.i:               ; preds = %bb.ey, %bb.ex, %proto_item_set_generated.exit366.i
  %i.xm = load i32, ptr %i.f, align 4
  %i.xn = load i32, ptr %i.e, align 4
  %i.xo = load i32, ptr %i.wn, align 8
  %i.xp = load i32, ptr %i.g, align 4
  %i.xq = load i32, ptr %i.xe, align 4
  %i.xr = load i32, ptr %i.h, align 4
  %i.xs = load i32, ptr %i.fs, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ve, ptr noundef @.str.142, i32 noundef %i.xm, i32 noundef %i.xn, i32 noundef %i.xo, i32 noundef %i.xp, i32 noundef %i.xq, i32 noundef %i.xr, i32 noundef %i.xs)
  br label %bb.fa

bb.ez:                                            ; preds = %proto_item_set_generated.exit363.i
  %i.xt = load i32, ptr %i.f, align 4
  %i.xu = load i32, ptr %i.e, align 4
  %i.xv = load i32, ptr %i.wn, align 8
  %i.xw = load i32, ptr %i.g, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ve, ptr noundef @.str.143, i32 noundef %i.xt, i32 noundef %i.xu, i32 noundef %i.xv, i32 noundef %i.xw)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %proto_item_set_generated.exit369.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %snort_show_alert.exit

snort_show_alert.exit:                            ; preds = %bb.ao, %bb.ap, %bb.aq, %.loopexit.i94, %bb.fa
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.xx = load i32, ptr %i.fn, align 8
  %i.xy = zext i32 %i.xx to i64
  %i.xz = icmp samesign ult i64 %indvars.iv.next139, %i.xy
  br i1 %i.xz, label %bb.af, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %snort_show_alert.exit, %get_reassembled_in_frame.exit.thread, %get_user_comment_string.exit.thread, %bb.u
  %i.ya = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.fb

.critedge69:                                      ; preds = %bb.o, %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.fb

bb.fb:                                            ; preds = %.critedge69, %bb.a, %.loopexit
  %.3 = phi i32 [ 0, %.critedge69 ], [ %i.ya, %.loopexit ], [ %i.o, %bb.a ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @snort_start() #1 {
bb.a:
  %i.a = alloca [13 x ptr], align 16              ; 16 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %0 = alloca %struct.stat, align 8               ; 4 uses
  %1 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = load ptr, ptr @pref_snort_binary_filename, align 8
  store ptr %i.c, ptr %i.a, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.145, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr @pref_snort_config_filename, align 8
  store ptr %i.f, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @.str.146, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @.str.147, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @.str.148, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @.str.149, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @.str.150, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @.str.151, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @.str.152, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr @.str.153, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @.str.154, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.p, align 16
  %i.q = load i8, ptr @snort_ignore_checksum_errors, align 1, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.n, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i8, ptr @snort_alert_in_reassembled_frame, align 1, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.v = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.114)
  store i32 %i.v, ptr %i.b, align 4
  %i.w = call ptr @g_array_append_vals(ptr noundef %i.u, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  %i.x = load ptr, ptr @snort_handle, align 8
  call void @set_postdissector_wanted_hfids(ptr noundef %i.x, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load i32, ptr @pref_snort_alerts_source, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr @proto_snort, align 4
  %i.ab = call ptr @find_protocol_by_id(i32 noundef %i.aa)
  %i.ac = call zeroext i1 @proto_is_protocol_enabled(ptr noundef %i.ab)
  br i1 %i.ac, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.ad = call ptr @wmem_epan_scope()
  %i.ae = call ptr @wmem_file_scope()
  %i.af = call ptr @wmem_tree_new_autoreset(ptr noundef %i.ad, ptr noundef %i.ae)
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 48), align 8
  %i.ag = load ptr, ptr @g_snort_config, align 8
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @delete_config(ptr noundef @g_snort_config)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr @pref_snort_config_filename, align 8
  call void @create_config(ptr noundef @g_snort_config, ptr noundef %i.ah)
  %i.ai = load i32, ptr @pref_snort_alerts_source, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  %i.ak = load i8, ptr @current_session, align 8, !range !7
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr @g_snort_config, align 8
  call void @reset_global_rule_stats(ptr noundef %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.an = load ptr, ptr @pref_snort_binary_filename, align 8
  %i.ao = call i32 @stat(ptr noundef %i.an, ptr noundef nonnull %0) #11
  %.not8 = icmp eq i32 %i.ao, 0
  br i1 %.not8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr @pref_snort_binary_filename, align 8
  call void (ptr, ...) @report_failure(ptr noundef @.str.155, ptr noundef %i.ap)
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @pref_snort_config_filename, align 8
  %i.ar = call i32 @stat(ptr noundef %i.aq, ptr noundef nonnull %1) #11
  %.not9 = icmp eq i32 %i.ar, 0
  br i1 %.not9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @pref_snort_config_filename, align 8
  call void (ptr, ...) @report_failure(ptr noundef @.str.156, ptr noundef %i.as)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 64
  %.not10 = icmp eq i32 %i.av, 0
  br i1 %.not10, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr @pref_snort_binary_filename, align 8
  call void (ptr, ...) @report_failure(ptr noundef @.str.157, ptr noundef %i.aw)
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ax = call i32 @g_spawn_async_with_pipes(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_session, i64 4), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_session, i64 8), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_session, i64 12), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_session, i64 16), ptr noundef null)
  %.not11 = icmp eq i32 %i.ax, 0
  br i1 %.not11, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @current_session, align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 1), align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 1, ptr @current_session, align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 1), align 1
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 4), align 4
  %i.az = call i32 @g_child_watch_add(i32 noundef %i.ay, ptr noundef @snort_reaper, ptr noundef @current_session) ; 0 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 12), align 4
  %i.bb = call ptr @g_io_channel_unix_new(i32 noundef %i.ba) ; 6 uses
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 40), align 8
  %i.bc = call i32 @g_io_channel_set_encoding(ptr noundef %i.bb, ptr noundef null, ptr noundef null) ; 0 uses
  call void @g_io_channel_set_buffered(ptr noundef %i.bb, i32 noundef 0)
  %i.bd = call i32 @g_io_channel_set_flags(ptr noundef %i.bb, i32 noundef 2, ptr noundef null) ; 0 uses
  call void @g_io_channel_set_buffer_size(ptr noundef %i.bb, i64 noundef 256000)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 24), align 8
  %i.be = call i32 @g_io_add_watch_full(ptr noundef %i.bb, i32 noundef -100, i32 noundef 25, ptr noundef @snort_fast_output, ptr noundef @current_session, ptr noundef null) ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 1), align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_postdissector(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @register_postseq_cleanup_routine(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @snort_cleanup() #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load i8, ptr @current_session, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 32), align 8 ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.g = call zeroext i1 @wtap_dump_close(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @current_session, i64 32), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_cleanup_routine(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @snort_file_cleanup() #1 {
bb.a:
  %i.a = load ptr, ptr @g_snort_config, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @delete_config(ptr noundef @g_snort_config)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @snort_handle, align 8
  tail call void @set_postdissector_wanted_hfids(ptr noundef %i.b, ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_dump_fdopen(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_pcap_file_type_subtype() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_init(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_all_finfos(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fvalue_get_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @get_rule(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @rule_set_alert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_get_uinteger(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @get_data_source_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @get_data_source_tvb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @format_fractional_part_nsecs(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @rule_set_relevant_vars(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expand_reference(ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
