Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-lbmr?download=true
inline.NumInlined: 82
inline.NumDeleted: 69
begin_hunk_0_@lbmr_dissect_umq_qmgmt:bb.a
bb.i:                                             ; preds = %bb.h, %.loopexit
  %.2 = phi i32 [ %i.db, %bb.h ], [ %.1129, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_lbmr() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call i32 @proto_register_protocol(ptr noundef @.str.687, ptr noundef @.str.688, ptr noundef @.str.689) ; 2 uses
  store i32 %i.b, ptr @proto_lbmr, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef @proto_register_lbmr.hf, i32 noundef 440)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_lbmr.ett, i32 noundef 106)
  %i.c = load i32, ptr @proto_lbmr, align 4
  %i.d = tail call ptr @expert_register_protocol(i32 noundef %i.c)
  tail call void @expert_register_field_array(ptr noundef %i.d, ptr noundef @proto_register_lbmr.ei, i32 noundef 3)
  %i.e = load i32, ptr @proto_lbmr, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef @.str.689, ptr noundef @dissect_lbmr, i32 noundef %i.e)
  store ptr %i.f, ptr @lbmr_dissector_handle, align 8
  %i.g = load i32, ptr @proto_lbmr, align 4
  %i.h = tail call ptr @prefs_register_protocol_subtree(ptr noundef @.str.690, i32 noundef %i.g, ptr noundef @proto_reg_handoff_lbmr) ; 10 uses
  tail call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef @.str.691, ptr noundef @.str.692, ptr noundef @.str.693, i32 noundef 10, ptr noundef @global_lbmr_mc_incoming_udp_port)
  %i.i = call zeroext i1 @ws_inet_pton4(ptr noundef @.str.694, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.j) #12, !srcloc !11
  store i32 %i.k, ptr @lbmr_mc_incoming_address_host, align 4
  call void @prefs_register_string_preference(ptr noundef %i.h, ptr noundef @.str.695, ptr noundef @.str.696, ptr noundef @.str.697, ptr noundef @global_lbmr_mc_incoming_address)
  call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef @.str.698, ptr noundef @.str.699, ptr noundef @.str.700, i32 noundef 10, ptr noundef @global_lbmr_mc_outgoing_udp_port)
  %i.l = call zeroext i1 @ws_inet_pton4(ptr noundef @.str.694, ptr noundef nonnull %i.a) ; 0 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.m) #12, !srcloc !12
  store i32 %i.n, ptr @lbmr_mc_outgoing_address_host, align 4
  call void @prefs_register_string_preference(ptr noundef %i.h, ptr noundef @.str.701, ptr noundef @.str.702, ptr noundef @.str.703, ptr noundef @global_lbmr_mc_outgoing_address)
  call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef @.str.704, ptr noundef @.str.705, ptr noundef @.str.706, i32 noundef 10, ptr noundef @global_lbmr_uc_port_low)
  call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef @.str.707, ptr noundef @.str.708, ptr noundef @.str.709, i32 noundef 10, ptr noundef @global_lbmr_uc_port_high)
  call void @prefs_register_uint_preference(ptr noundef %i.h, ptr noundef @.str.710, ptr noundef @.str.711, ptr noundef @.str.712, i32 noundef 10, ptr noundef @global_lbmr_uc_dest_port)
  %i.o = call zeroext i1 @ws_inet_pton4(ptr noundef @.str.713, ptr noundef nonnull %i.a) ; 0 uses
  %i.p = load i32, ptr %i.a, align 4
  %i.q = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.p) #12, !srcloc !13
  store i32 %i.q, ptr @lbmr_uc_address_host, align 4
  call void @prefs_register_string_preference(ptr noundef %i.h, ptr noundef @.str.714, ptr noundef @.str.715, ptr noundef @.str.716, ptr noundef @global_lbmr_uc_address)
  call void @prefs_register_bool_preference(ptr noundef %i.h, ptr noundef @.str.717, ptr noundef @.str.718, ptr noundef @.str.719, ptr noundef @global_lbmr_use_tag)
  %i.r = call ptr @uat_new(ptr noundef @.str.720, i64 noundef 72, ptr noundef @.str.721, i1 noundef zeroext true, ptr noundef @lbmr_tag_entry, ptr noundef @lbmr_tag_count, i32 noundef 1, ptr noundef null, ptr noundef @lbmr_tag_copy_cb, ptr noundef @lbmr_tag_update_cb, ptr noundef @lbmr_tag_free_cb, ptr noundef null, ptr noundef null, ptr noundef @lbmr_tag_array)
  call void @prefs_register_uat_preference(ptr noundef %i.h, ptr noundef @.str.722, ptr noundef @.str.723, ptr noundef @.str.724, ptr noundef %i.r)
  %i.s = call i32 @register_tap(ptr noundef @.str.725)
  store i32 %i.s, ptr @lbmr_topic_advertisement_tap_handle, align 4
  %i.t = call i32 @register_tap(ptr noundef @.str.726)
  store i32 %i.t, ptr @lbmr_topic_query_tap_handle, align 4
  %i.u = call i32 @register_tap(ptr noundef @.str.727)
  store i32 %i.u, ptr @lbmr_pattern_query_tap_handle, align 4
  %i.v = call i32 @register_tap(ptr noundef @.str.728)
  store i32 %i.v, ptr @lbmr_queue_advertisement_tap_handle, align 4
  %i.w = call i32 @register_tap(ptr noundef @.str.729)
  store i32 %i.w, ptr @lbmr_queue_query_tap_handle, align 4
  %i.x = call ptr @stats_tree_register(ptr noundef @.str.725, ptr noundef @.str.730, ptr noundef @.str.875, i32 noundef 0, ptr noundef @lbmr_topic_ads_topic_stats_tree_packet, ptr noundef @lbmr_topic_ads_topic_stats_tree_init, ptr noundef null) ; 0 uses
  %i.y = call ptr @stats_tree_register(ptr noundef @.str.725, ptr noundef @.str.731, ptr noundef @.str.877, i32 noundef 0, ptr noundef @lbmr_topic_ads_source_stats_tree_packet, ptr noundef @lbmr_topic_ads_source_stats_tree_init, ptr noundef null) ; 0 uses
  %i.z = call ptr @stats_tree_register(ptr noundef @.str.725, ptr noundef @.str.732, ptr noundef @.str.878, i32 noundef 0, ptr noundef @lbmr_topic_ads_transport_stats_tree_packet, ptr noundef @lbmr_topic_ads_transport_stats_tree_init, ptr noundef null) ; 0 uses
  %i.aa = call ptr @stats_tree_register(ptr noundef @.str.726, ptr noundef @.str.733, ptr noundef @.str.880, i32 noundef 0, ptr noundef @lbmr_topic_queries_topic_stats_tree_packet, ptr noundef @lbmr_topic_queries_topic_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ab = call ptr @stats_tree_register(ptr noundef @.str.726, ptr noundef @.str.734, ptr noundef @.str.881, i32 noundef 0, ptr noundef @lbmr_topic_queries_receiver_stats_tree_packet, ptr noundef @lbmr_topic_queries_receiver_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ac = call ptr @stats_tree_register(ptr noundef @.str.727, ptr noundef @.str.735, ptr noundef @.str.882, i32 noundef 0, ptr noundef @lbmr_topic_queries_pattern_stats_tree_packet, ptr noundef @lbmr_topic_queries_pattern_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ad = call ptr @stats_tree_register(ptr noundef @.str.727, ptr noundef @.str.736, ptr noundef @.str.885, i32 noundef 0, ptr noundef @lbmr_topic_queries_pattern_receiver_stats_tree_packet, ptr noundef @lbmr_topic_queries_pattern_receiver_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ae = call ptr @stats_tree_register(ptr noundef @.str.728, ptr noundef @.str.737, ptr noundef @.str.886, i32 noundef 0, ptr noundef @lbmr_queue_ads_queue_stats_tree_packet, ptr noundef @lbmr_queue_ads_queue_stats_tree_init, ptr noundef null) ; 0 uses
  %i.af = call ptr @stats_tree_register(ptr noundef @.str.728, ptr noundef @.str.738, ptr noundef @.str.888, i32 noundef 0, ptr noundef @lbmr_queue_ads_source_stats_tree_packet, ptr noundef @lbmr_queue_ads_source_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ag = call ptr @stats_tree_register(ptr noundef @.str.729, ptr noundef @.str.739, ptr noundef @.str.889, i32 noundef 0, ptr noundef @lbmr_queue_queries_queue_stats_tree_packet, ptr noundef @lbmr_queue_queries_queue_stats_tree_init, ptr noundef null) ; 0 uses
  %i.ah = call ptr @stats_tree_register(ptr noundef @.str.729, ptr noundef @.str.740, ptr noundef @.str.890, i32 noundef 0, ptr noundef @lbmr_queue_queries_receiver_stats_tree_packet, ptr noundef @lbmr_queue_queries_receiver_stats_tree_init, ptr noundef null) ; 0 uses
  call void @lbm_topic_init()
  %i.ai = call ptr @wmem_epan_scope()
  %i.aj = call ptr @wmem_file_scope()
  %i.ak = call ptr @wmem_tree_new_autoreset(ptr noundef %i.ai, ptr noundef %i.aj)
  store ptr %i.ak, ptr @lbtsmx_transport_table, align 8
  %i.al = call ptr @wmem_epan_scope()
  %i.am = call ptr @wmem_file_scope()
  %i.an = call ptr @wmem_tree_new_autoreset(ptr noundef %i.al, ptr noundef %i.am)
  store ptr %i.an, ptr @lbtipc_transport_table, align 8
  %i.ao = call ptr @wmem_epan_scope()
  %i.ap = call ptr @wmem_file_scope()
  %i.aq = call ptr @wmem_tree_new_autoreset(ptr noundef %i.ao, ptr noundef %i.ap)
  store ptr %i.aq, ptr @lbtrdma_transport_table, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_lbmr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %4 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %i.d = alloca [3 x i32], align 4                ; 6 uses
  %5 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %6 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %i.f = alloca [3 x i32], align 4                ; 6 uses
  %7 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %i.g = alloca [3 x i32], align 4                ; 6 uses
  %8 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %i.h = alloca [3 x i32], align 4                ; 6 uses
  %9 = alloca [2 x %struct._wmem_tree_key_t], align 16 ; 7 uses
  %10 = alloca %struct._address, align 8          ; 8 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 12 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i16, align 2                      ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 8          ; 10 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @col_set_str(ptr noundef %i.q, i32 noundef 35, ptr noundef @.str.688)
  %i.r = load i8, ptr @lbmr_use_tag, align 1, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.preheader.i, label %lbmr_tag_find.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.t = load i32, ptr @lbmr_tag_count, align 4   ; 2 uses
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %lbmr_tag_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load ptr, ptr @lbmr_tag_entry, align 8
  %wide.trip.count.i = zext i32 %i.t to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lbmr_tag_find.exit.thread, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.v = getelementptr [72 x i8], ptr %i.u, i64 %indvars.iv.i ; 2 uses
  %i.w = tail call fastcc i32 @lbmr_match_packet(ptr noundef readonly %1, ptr noundef %i.v)
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.b, label %lbmr_tag_find.exit

lbmr_tag_find.exit.thread:                        ; preds = %bb.b, %bb.a, %.preheader.i
  %i.x = load ptr, ptr %i.p, align 8
  tail call void @col_clear(ptr noundef %i.x, i32 noundef 25)
  br label %bb.e

lbmr_tag_find.exit:                               ; preds = %bb.c
  %i.y = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.p, align 8
  tail call void @col_clear(ptr noundef %i.z, i32 noundef 25)
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %lbmr_tag_find.exit
  %i.aa = load ptr, ptr %i.p, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.807, ptr noundef nonnull %i.y)
  br label %bb.e

bb.e:                                             ; preds = %lbmr_tag_find.exit.thread, %bb.d, %lbmr_tag_find.exit
  %.not381 = phi i1 [ true, %lbmr_tag_find.exit.thread ], [ false, %bb.d ], [ true, %lbmr_tag_find.exit ] ; 6 uses
  %.0324380 = phi ptr [ null, %lbmr_tag_find.exit.thread ], [ %i.y, %bb.d ], [ null, %lbmr_tag_find.exit ] ; 7 uses
  %i.ab = load ptr, ptr %i.p, align 8
  tail call void @col_set_fence(ptr noundef %i.ab, i32 noundef 25)
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.ad = lshr i8 %i.ac, 4                        ; 6 uses
  %i.ae = and i8 %i.ac, 7                         ; 8 uses
  %i.af = tail call i32 @tvb_reported_length(ptr noundef %0) ; 7 uses
  %i.ag = and i8 %i.ac, 8
  %i.ah = icmp ne i8 %i.ag, 0                     ; 2 uses
  %i.ai = icmp ugt i32 %i.af, 4
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef %i.af)
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ak = add i32 %i.af, -4
  %i.al = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ak)
  %i.am = add i32 %i.af, -3
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.am)
  %i.ao = icmp eq i8 %i.al, -128
  %i.ap = icmp eq i8 %i.an, 4
  %or.cond6 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond6, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = add i32 %i.af, -2
  %i.ar = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aq)
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp ugt i32 %i.af, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = sub nuw i32 %i.af, %i.as
  %i.av = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.au)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f, %bb.e
  %.2315 = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %0, %bb.g ], [ %i.av, %bb.i ], [ %0, %bb.h ] ; 227 uses
  %i.aw = zext nneg i8 %i.ae to i32               ; 11 uses
  %i.ax = icmp eq i8 %i.ae, 7
  %i.ay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 7 uses
  br i1 %i.ax, label %bb.k, label %bb.am

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = zext i8 %i.ay to i32                    ; 2 uses
  %i.bc = tail call ptr @val_to_str(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef @lbmr_ext_packet_type, ptr noundef @.str.808) ; 3 uses
  %i.bd = load ptr, ptr %i.p, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.bd, i32 noundef 25, ptr noundef @.str.809, ptr noundef @.str.810, ptr noundef %i.bc)
  %i.be = load i32, ptr @proto_lbmr, align 4      ; 2 uses
  %i.bf = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.bg = load ptr, ptr %i.az, align 8
  %i.bh = tail call ptr @val_to_str(ptr noundef %i.bg, i32 noundef 7, ptr noundef @lbmr_packet_type, ptr noundef @.str.808) ; 2 uses
  br i1 %.not381, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bi = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.812, i32 noundef %i.bf, i32 noundef 7, ptr noundef %i.bh, ptr noundef %i.bc)
  %i.bj = load i32, ptr @ett_lbmr, align 4
  %i.bk = tail call ptr @proto_item_add_subtree(ptr noundef %i.bi, i32 noundef %i.bj)
  br label %proto_item_set_generated.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.811, ptr noundef nonnull %.0324380, i32 noundef %i.bf, i32 noundef 7, ptr noundef %i.bh, ptr noundef %i.bc)
  %i.bm = load i32, ptr @ett_lbmr, align 4
  %i.bn = tail call ptr @proto_item_add_subtree(ptr noundef %i.bl, i32 noundef %i.bm) ; 4 uses
  %i.bo = load i32, ptr @hf_lbmr_tag, align 4
  %i.bp = tail call ptr @proto_tree_add_string(ptr noundef %i.bn, i32 noundef %i.bo, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.0324380) ; 2 uses
  %.not.i336 = icmp eq ptr %i.bp, null
  br i1 %.not.i336, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.br, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %i.br, i64 28     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = or i32 %i.bt, 2
  store i32 %i.bu, ptr %i.bs, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.bv = phi ptr [ %i.bk, %.thread ], [ %i.bn, %bb.l ], [ %i.bn, %bb.m ], [ %i.bn, %bb.n ] ; 38 uses
  %i.bw = load i32, ptr @hf_lbmr_hdr, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.bw, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.by = load i32, ptr @ett_lbmr_hdr, align 4
  %i.bz = tail call ptr @proto_item_add_subtree(ptr noundef %i.bx, i32 noundef %i.by) ; 4 uses
  %i.ca = load i32, ptr @hf_lbmr_hdr_ver, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.ca, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_lbmr_hdr_opt, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ce = load i32, ptr @hf_lbmr_hdr_type, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.ce, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cg = load i32, ptr @hf_lbmr_hdr_ext_type, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.cg, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  switch i8 %i.ay, label %bb.al [
    i8 1, label %bb.o
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.u
    i8 5, label %bb.v
    i8 6, label %bb.ad
    i8 7, label %bb.ae
  ]

bb.o:                                             ; preds = %proto_item_set_generated.exit
  %i.ci = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef 4)
  %i.cj = zext i16 %i.ci to i32                   ; 7 uses
  %i.ck = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef 6)
  %i.cl = add nsw i32 %i.cj, -28
  %i.cm = load i32, ptr @hf_lbmr_pser_dep_type, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cm, ptr noundef %.2315, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_lbmr_pser_len, align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.co, ptr noundef %.2315, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_lbmr_pser_flags, align 4
  %i.cr = load i32, ptr @ett_lbmr_pser_flags, align 4
  %i.cs = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bv, ptr noundef %.2315, i32 noundef 6, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef @dissect_lbmr_pser.flags, i32 noundef 0) ; 0 uses
  %i.ct = load i32, ptr @hf_lbmr_pser_source_ip, align 4
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.ct, ptr noundef %.2315, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cv = load i32, ptr @hf_lbmr_pser_store_ip, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cv, ptr noundef %.2315, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cx = load i32, ptr @hf_lbmr_pser_transport_idx, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cx, ptr noundef %.2315, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cz = load i32, ptr @hf_lbmr_pser_topic_idx, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cz, ptr noundef %.2315, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.db = load i32, ptr @hf_lbmr_pser_source_port, align 4
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.db, ptr noundef %.2315, i32 noundef 24, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dd = load i32, ptr @hf_lbmr_pser_store_port, align 4
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.dd, ptr noundef %.2315, i32 noundef 26, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.df = load i32, ptr @hf_lbmr_pser_topic, align 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.df, ptr noundef %.2315, i32 noundef 28, i32 noundef %i.cl, i32 noundef 0) ; 0 uses
  %.not.i337 = icmp sgt i16 %i.ck, -1
  br i1 %.not.i337, label %dissect_lbmr_pser.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = add nuw nsw i32 %i.cj, 2                ; 2 uses
  %i.di = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef %i.dh) ; 2 uses
  %i.dj = load i32, ptr @hf_lbmr_pser_opts, align 4
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.dj, ptr noundef %.2315, i32 noundef %i.cj, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.dl = load i32, ptr @ett_lbmr_pser_opts, align 4
  %i.dm = tail call ptr @proto_item_add_subtree(ptr noundef %i.dk, i32 noundef %i.dl) ; 2 uses
  %i.dn = load i32, ptr @hf_lbmr_pser_optlen, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef %.2315, i32 noundef %i.cj, i32 noundef 4, i32 noundef 0)
  %i.dp = load i32, ptr @ett_lbmr_pser_opt_len, align 4
  %i.dq = tail call ptr @proto_item_add_subtree(ptr noundef %i.do, i32 noundef %i.dp) ; 2 uses
  %i.dr = load i32, ptr @hf_lbmr_pser_optlen_type, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dr, ptr noundef %.2315, i32 noundef %i.cj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dt = load i32, ptr @hf_lbmr_pser_optlen_optlen, align 4
  %i.du = tail call ptr @proto_tree_add_item(ptr noundef %i.dq, i32 noundef %i.dt, ptr noundef %.2315, i32 noundef %i.dh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dv = zext i16 %i.di to i32
  tail call void @proto_item_set_len(ptr noundef %i.dk, i32 noundef %i.dv)
  %i.dw = add nuw nsw i32 %i.cj, 4                ; 2 uses
  %i.dx = add i16 %i.di, -4
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.0103.ph.i = phi i32 [ %i.ed, %.split.i ], [ %i.dw, %bb.p ] ; 2 uses
  %.0100.ph.i = phi i32 [ %i.ee, %.split.i ], [ %i.dw, %bb.p ]
  %.098.ph.i = phi i16 [ %i.eg, %.split.i ], [ %i.dx, %bb.p ] ; 2 uses
  %.not111120.i = icmp eq i16 %.098.ph.i, 0
  br i1 %.not111120.i, label %dissect_lbmr_pser.exit, label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.outer.i, %bb.q
  %.098123.i = phi i16 [ %i.ev, %bb.q ], [ %.098.ph.i, %.outer.i ] ; 2 uses
  %.0100122.i = phi i32 [ %i.eu, %bb.q ], [ %.0100.ph.i, %.outer.i ] ; 7 uses
  %.0103121.i = phi i32 [ %i.et, %bb.q ], [ %.0103.ph.i, %.outer.i ] ; 3 uses
  %i.dy = add i32 %.0100122.i, 1                  ; 2 uses
  %i.dz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %i.dy) ; 2 uses
  %i.ea = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %.0100122.i) ; 3 uses
  %switch.i = icmp ult i8 %i.dz, 2
  br i1 %switch.i, label %bb.q, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i338
  %i.eb = zext i8 %i.dz to i32
  %i.ec = zext i8 %i.ea to i32                    ; 2 uses
  %i.ed = add i32 %.0103121.i, %i.ec
  %i.ee = add i32 %.0100122.i, %i.ec
  %i.ef = zext i8 %i.ea to i16
  %i.eg = sub i16 %.098123.i, %i.ef
  %i.eh = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef @ei_lbmr_analysis_invalid_value, ptr noundef @.str.829, i32 noundef %i.eb) ; 0 uses
  %.not114.i = icmp eq i8 %i.ea, 0
  br i1 %.not114.i, label %dissect_lbmr_pser.exit, label %.outer.i, !llvm.loop !14

bb.q:                                             ; preds = %.lr.ph.i338
  %i.ei = load i32, ptr @hf_lbmr_pser_opt_ctxinst, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.ei, ptr noundef %.2315, i32 noundef %.0100122.i, i32 noundef 10, i32 noundef 0)
  %i.ek = load i32, ptr @ett_lbmr_pser_opt_ctxinst, align 4
  %i.el = tail call ptr @proto_item_add_subtree(ptr noundef %i.ej, i32 noundef %i.ek) ; 3 uses
  %i.em = load i32, ptr @hf_lbmr_pser_opt_ctxinst_len, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %i.el, i32 noundef %i.em, ptr noundef %.2315, i32 noundef %.0100122.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eo = load i32, ptr @hf_lbmr_pser_opt_ctxinst_type, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.el, i32 noundef %i.eo, ptr noundef %.2315, i32 noundef %i.dy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eq = load i32, ptr @hf_lbmr_pser_opt_ctxinst_ctxinst, align 4
  %i.er = add i32 %.0100122.i, 2
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %i.el, i32 noundef %i.eq, ptr noundef %.2315, i32 noundef %i.er, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.et = add i32 %.0103121.i, 10                 ; 2 uses
  %i.eu = add i32 %.0100122.i, 10
  %i.ev = add i16 %.098123.i, -10                 ; 2 uses
  %.not111.i = icmp eq i16 %i.ev, 0
  br i1 %.not111.i, label %dissect_lbmr_pser.exit, label %.lr.ph.i338, !llvm.loop !14

bb.r:                                             ; preds = %proto_item_set_generated.exit
  %i.ew = tail call i32 @lbmr_dissect_umq_qmgmt(ptr noundef %.2315, i32 noundef 0, ptr noundef %1, ptr noundef %i.bv)
  br label %dissect_lbmr_pser.exit

bb.s:                                             ; preds = %proto_item_set_generated.exit
  %i.ex = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef 4)
  %i.ey = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef 2) ; 2 uses
  %i.ez = load i32, ptr @hf_lbmr_ctxinfo_len, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.ez, ptr noundef %.2315, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fb = load i32, ptr @hf_lbmr_ctxinfo_hop_count, align 4
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.fb, ptr noundef %.2315, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fd = load i32, ptr @hf_lbmr_ctxinfo_flags, align 4
  %i.fe = load i32, ptr @ett_lbmr_ctxinfo_flags, align 4
  %i.ff = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bv, ptr noundef %.2315, i32 noundef 4, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef @dissect_lbmr_ctxinfo.flags, i32 noundef 0) ; 0 uses
  %i.fg = load i32, ptr @hf_lbmr_ctxinfo_port, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.fg, ptr noundef %.2315, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fi = load i32, ptr @hf_lbmr_ctxinfo_ip, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.fi, ptr noundef %.2315, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fk = load i32, ptr @hf_lbmr_ctxinfo_instance, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.fk, ptr noundef %.2315, i32 noundef 12, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.fm = and i16 %i.ex, 1
  %.not.i339 = icmp eq i16 %i.fm, 0
  br i1 %.not.i339, label %._crit_edge.i, label %bb.t

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = zext i8 %i.ey to i32
  br label %dissect_lbmr_pser.exit

bb.t:                                             ; preds = %bb.s
  %i.fn = load i32, ptr @hf_lbmr_ctxinfo_name, align 4
  %i.fo = zext i8 %i.ey to i32                    ; 2 uses
  %i.fp = add nsw i32 %i.fo, -20
  %i.fq = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.fn, ptr noundef %.2315, i32 noundef 20, i32 noundef %i.fp, i32 noundef 0) ; 0 uses
  br label %dissect_lbmr_pser.exit

end_hunk_0
begin_hunk_1_@dissect_lbmr:bb.a
  br label %dissect_lbmr_pser.exit

bb.ae:                                            ; preds = %proto_item_set_generated.exit
  %i.jp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef 4) ; 2 uses
  %i.jq = load i32, ptr @hf_lbmr_rctxinfo_len, align 4
  %i.jr = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.jq, ptr noundef %.2315, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.js = load i32, ptr @hf_lbmr_rctxinfo_num_recs, align 4
  %i.jt = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.js, ptr noundef %.2315, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ju = load i32, ptr @hf_lbmr_rctxinfo_reserved, align 4
  %i.jv = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.ju, ptr noundef %.2315, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not24.i = icmp eq i16 %i.jp, 0
  br i1 %.not24.i, label %dissect_lbmr_pser.exit, label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %bb.ae, %dissect_lbmr_rctxinfo_rec.exit.i
  %.027.i = phi i32 [ %i.ok, %dissect_lbmr_rctxinfo_rec.exit.i ], [ 8, %bb.ae ]
  %.02226.i = phi i32 [ %i.oj, %dissect_lbmr_rctxinfo_rec.exit.i ], [ 8, %bb.ae ] ; 6 uses
  %.02325.i = phi i16 [ %i.ol, %dissect_lbmr_rctxinfo_rec.exit.i ], [ %i.jp, %bb.ae ]
  %i.jw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef %.02226.i) ; 2 uses
  %i.jx = load i32, ptr @hf_lbmr_rctxinfo_rec, align 4
  %i.jy = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.jx, ptr noundef %.2315, i32 noundef %.02226.i, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.jz = load i32, ptr @ett_lbmr_rctxinfo_rec, align 4
  %i.ka = tail call ptr @proto_item_add_subtree(ptr noundef %i.jy, i32 noundef %i.jz) ; 7 uses
  %i.kb = load i32, ptr @hf_lbmr_rctxinfo_rec_len, align 4
  %i.kc = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.kb, ptr noundef %.2315, i32 noundef %.02226.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kd = add i32 %.02226.i, 2
  %i.ke = load i32, ptr @hf_lbmr_rctxinfo_rec_flags, align 4
  %i.kf = load i32, ptr @ett_lbmr_rctxinfo_rec_flags, align 4
  %i.kg = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ka, ptr noundef %.2315, i32 noundef %i.kd, i32 noundef %i.ke, i32 noundef %i.kf, ptr noundef @dissect_lbmr_rctxinfo_rec.flags, i32 noundef 0) ; 0 uses
  %i.kh = icmp ugt i16 %i.jw, 4
  br i1 %i.kh, label %.lr.ph.preheader.i.i, label %dissect_lbmr_rctxinfo_rec.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i343
  %i.ki = zext i16 %i.jw to i32
  %i.kj = add nsw i32 %i.ki, -4
  %i.kk = add i32 %.02226.i, 4
  br label %.lr.ph.i.i346

.lr.ph.i.i346:                                    ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %.051.i.i = phi i32 [ %i.of, %bb.ak ], [ 4, %.lr.ph.preheader.i.i ]
  %.04750.i.i = phi i32 [ %i.oh, %bb.ak ], [ %i.kk, %.lr.ph.preheader.i.i ] ; 31 uses
  %.04849.i.i = phi i32 [ %i.og, %bb.ak ], [ %i.kj, %.lr.ph.preheader.i.i ]
  %i.kl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %.04750.i.i)
  switch i8 %i.kl, label %bb.aj [
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.af:                                            ; preds = %.lr.ph.i.i346
  %i.km = load i32, ptr @hf_lbmr_rctxinfo_rec_address, align 4
  %i.kn = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.km, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 16, i32 noundef 0)
  %i.ko = load i32, ptr @ett_lbmr_rctxinfo_rec_address, align 4
  %i.kp = tail call ptr @proto_item_add_subtree(ptr noundef %i.kn, i32 noundef %i.ko) ; 7 uses
  %i.kq = load i32, ptr @hf_lbmr_rctxinfo_rec_address_type, align 4
  %i.kr = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.kq, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ks = load i32, ptr @hf_lbmr_rctxinfo_rec_address_len, align 4
  %i.kt = add i32 %.04750.i.i, 1
  %i.ku = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.ks, ptr noundef %.2315, i32 noundef %i.kt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kv = load i32, ptr @hf_lbmr_rctxinfo_rec_address_flags, align 4
  %i.kw = add i32 %.04750.i.i, 2
  %i.kx = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.kv, ptr noundef %.2315, i32 noundef %i.kw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ky = load i32, ptr @hf_lbmr_rctxinfo_rec_address_domain_id, align 4
  %i.kz = add i32 %.04750.i.i, 4
  %i.la = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.ky, ptr noundef %.2315, i32 noundef %i.kz, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.lb = load i32, ptr @hf_lbmr_rctxinfo_rec_address_ip, align 4
  %i.lc = add i32 %.04750.i.i, 8
  %i.ld = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.lb, ptr noundef %.2315, i32 noundef %i.lc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.le = load i32, ptr @hf_lbmr_rctxinfo_rec_address_port, align 4
  %i.lf = add i32 %.04750.i.i, 12
  %i.lg = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.le, ptr noundef %.2315, i32 noundef %i.lf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.lh = load i32, ptr @hf_lbmr_rctxinfo_rec_address_res, align 4
  %i.li = add i32 %.04750.i.i, 14
  %i.lj = tail call ptr @proto_tree_add_item(ptr noundef %i.kp, i32 noundef %i.lh, ptr noundef %.2315, i32 noundef %i.li, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ak

bb.ag:                                            ; preds = %.lr.ph.i.i346
  %i.lk = add i32 %.04750.i.i, 1                  ; 2 uses
  %i.ll = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %i.lk)
  %i.lm = load i32, ptr @hf_lbmr_rctxinfo_rec_instance, align 4
  %i.ln = zext i8 %i.ll to i32
  %i.lo = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.lm, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef %i.ln, i32 noundef 0)
  %i.lp = load i32, ptr @ett_lbmr_rctxinfo_rec_instance, align 4
  %i.lq = tail call ptr @proto_item_add_subtree(ptr noundef %i.lo, i32 noundef %i.lp) ; 4 uses
  %i.lr = load i32, ptr @hf_lbmr_rctxinfo_rec_instance_type, align 4
  %i.ls = tail call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lr, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lt = load i32, ptr @hf_lbmr_rctxinfo_rec_instance_len, align 4
  %i.lu = tail call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lt, ptr noundef %.2315, i32 noundef %i.lk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lv = load i32, ptr @hf_lbmr_rctxinfo_rec_instance_flags, align 4
  %i.lw = add i32 %.04750.i.i, 2
  %i.lx = tail call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lv, ptr noundef %.2315, i32 noundef %i.lw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ly = load i32, ptr @hf_lbmr_rctxinfo_rec_instance_instance, align 4
  %i.lz = add i32 %.04750.i.i, 4
  %i.ma = tail call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.ly, ptr noundef %.2315, i32 noundef %i.lz, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %.lr.ph.i.i346
  %i.mb = add i32 %.04750.i.i, 1                  ; 2 uses
  %i.mc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %i.mb)
  %i.md = load i32, ptr @hf_lbmr_rctxinfo_rec_odomain, align 4
  %i.me = zext i8 %i.mc to i32
  %i.mf = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.md, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef %i.me, i32 noundef 0)
  %i.mg = load i32, ptr @ett_lbmr_rctxinfo_rec_odomain, align 4
  %i.mh = tail call ptr @proto_item_add_subtree(ptr noundef %i.mf, i32 noundef %i.mg) ; 4 uses
  %i.mi = load i32, ptr @hf_lbmr_rctxinfo_rec_odomain_type, align 4
  %i.mj = tail call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mi, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mk = load i32, ptr @hf_lbmr_rctxinfo_rec_odomain_len, align 4
  %i.ml = tail call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mk, ptr noundef %.2315, i32 noundef %i.mb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mm = load i32, ptr @hf_lbmr_rctxinfo_rec_odomain_flags, align 4
  %i.mn = add i32 %.04750.i.i, 2
  %i.mo = tail call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mm, ptr noundef %.2315, i32 noundef %i.mn, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mp = load i32, ptr @hf_lbmr_rctxinfo_rec_odomain_domain_id, align 4
  %i.mq = add i32 %.04750.i.i, 4
  %i.mr = tail call ptr @proto_tree_add_item(ptr noundef %i.mh, i32 noundef %i.mp, ptr noundef %.2315, i32 noundef %i.mq, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i.i346
  %i.ms = add i32 %.04750.i.i, 1                  ; 2 uses
  %i.mt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %i.ms)
  %i.mu = load i32, ptr @hf_lbmr_rctxinfo_rec_name, align 4
  %i.mv = zext i8 %i.mt to i32                    ; 3 uses
  %i.mw = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.mu, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef %i.mv, i32 noundef 0)
  %i.mx = load i32, ptr @ett_lbmr_rctxinfo_rec_name, align 4
  %i.my = tail call ptr @proto_item_add_subtree(ptr noundef %i.mw, i32 noundef %i.mx) ; 4 uses
  %i.mz = load i32, ptr @hf_lbmr_rctxinfo_rec_name_type, align 4
  %i.na = tail call ptr @proto_tree_add_item(ptr noundef %i.my, i32 noundef %i.mz, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nb = load i32, ptr @hf_lbmr_rctxinfo_rec_name_len, align 4
  %i.nc = tail call ptr @proto_tree_add_item(ptr noundef %i.my, i32 noundef %i.nb, ptr noundef %.2315, i32 noundef %i.ms, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nd = load i32, ptr @hf_lbmr_rctxinfo_rec_name_flags, align 4
  %i.ne = add i32 %.04750.i.i, 2
  %i.nf = tail call ptr @proto_tree_add_item(ptr noundef %i.my, i32 noundef %i.nd, ptr noundef %.2315, i32 noundef %i.ne, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ng = add nsw i32 %i.mv, -4
  %i.nh = load i32, ptr @hf_lbmr_rctxinfo_rec_name_name, align 4
  %i.ni = add i32 %.04750.i.i, 4
  %i.nj = tail call ptr @proto_tree_add_item(ptr noundef %i.my, i32 noundef %i.nh, ptr noundef %.2315, i32 noundef %i.ni, i32 noundef %i.ng, i32 noundef 0) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i346
  %i.nk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %.04750.i.i)
  %i.nl = add i32 %.04750.i.i, 1                  ; 2 uses
  %i.nm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.2315, i32 noundef %i.nl)
  %i.nn = load i32, ptr @hf_lbmr_rctxinfo_rec_unknown, align 4
  %i.no = zext i8 %i.nm to i32                    ; 3 uses
  %i.np = tail call ptr @proto_tree_add_item(ptr noundef %i.ka, i32 noundef %i.nn, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef %i.no, i32 noundef 0) ; 2 uses
  %i.nq = load i32, ptr @ett_lbmr_rctxinfo_rec_unknown, align 4
  %i.nr = tail call ptr @proto_item_add_subtree(ptr noundef %i.np, i32 noundef %i.nq) ; 4 uses
  %i.ns = load i32, ptr @hf_lbmr_rctxinfo_rec_unknown_type, align 4
  %i.nt = tail call ptr @proto_tree_add_item(ptr noundef %i.nr, i32 noundef %i.ns, ptr noundef %.2315, i32 noundef %.04750.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nu = load i32, ptr @hf_lbmr_rctxinfo_rec_unknown_len, align 4
  %i.nv = tail call ptr @proto_tree_add_item(ptr noundef %i.nr, i32 noundef %i.nu, ptr noundef %.2315, i32 noundef %i.nl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nw = load i32, ptr @hf_lbmr_rctxinfo_rec_unknown_flags, align 4
  %i.nx = add i32 %.04750.i.i, 2
  %i.ny = tail call ptr @proto_tree_add_item(ptr noundef %i.nr, i32 noundef %i.nw, ptr noundef %.2315, i32 noundef %i.nx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.nz = add nsw i32 %i.no, -4
  %i.oa = load i32, ptr @hf_lbmr_rctxinfo_rec_unknown_data, align 4
  %i.ob = add i32 %.04750.i.i, 4
  %i.oc = tail call ptr @proto_tree_add_item(ptr noundef %i.nr, i32 noundef %i.oa, ptr noundef %.2315, i32 noundef %i.ob, i32 noundef %i.nz, i32 noundef 0) ; 0 uses
  %i.od = zext i8 %i.nk to i32
  %i.oe = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.np, ptr noundef @ei_lbmr_analysis_invalid_value, ptr noundef @.str.831, i32 noundef %i.od) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.046.i.i = phi i32 [ %i.no, %bb.aj ], [ 16, %bb.af ], [ 12, %bb.ag ], [ 8, %bb.ah ], [ %i.mv, %bb.ai ] ; 3 uses
  %i.of = add i32 %.046.i.i, %.051.i.i            ; 2 uses
  %i.og = sub nsw i32 %.04849.i.i, %.046.i.i      ; 2 uses
  %i.oh = add i32 %.046.i.i, %.04750.i.i
  %i.oi = icmp sgt i32 %i.og, 0
  br i1 %i.oi, label %.lr.ph.i.i346, label %dissect_lbmr_rctxinfo_rec.exit.i, !llvm.loop !17

dissect_lbmr_rctxinfo_rec.exit.i:                 ; preds = %bb.ak, %.lr.ph.i343
  %.0.lcssa.i.i = phi i32 [ 4, %.lr.ph.i343 ], [ %i.of, %bb.ak ] ; 3 uses
  tail call void @proto_item_set_len(ptr noundef %i.jy, i32 noundef %.0.lcssa.i.i)
  %i.oj = add i32 %.0.lcssa.i.i, %.02226.i
  %i.ok = add i32 %.0.lcssa.i.i, %.027.i          ; 2 uses
  %i.ol = add i16 %.02325.i, -1                   ; 2 uses
  %.not.i344 = icmp eq i16 %i.ol, 0
  br i1 %.not.i344, label %dissect_lbmr_pser.exit, label %.lr.ph.i343, !llvm.loop !18

bb.al:                                            ; preds = %proto_item_set_generated.exit
  %i.om = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ch, ptr noundef @ei_lbmr_analysis_invalid_value, ptr noundef @.str.813, i32 noundef %i.bb) ; 0 uses
  br label %dissect_lbmr_pser.exit

dissect_lbmr_pser.exit:                           ; preds = %dissect_lbmr_rctxinfo_rec.exit.i, %.split.i, %.outer.i, %bb.q, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %dissect_lbmr_tnwg_interest.exit.loopexit.i, %bb.w, %bb.t, %._crit_edge.i, %bb.o, %bb.al, %dissect_lbmr_remote_domain_route.exit, %bb.u, %bb.r
  %.0316 = phi i32 [ 2, %bb.al ], [ %i.hm, %dissect_lbmr_tnwg_interest.exit.loopexit.i ], [ %i.ew, %bb.r ], [ 8, %bb.ae ], [ 4, %bb.u ], [ %i.fo, %bb.t ], [ %.024.lcssa.i, %dissect_lbmr_remote_domain_route.exit ], [ %i.cj, %bb.o ], [ %i.et, %bb.q ], [ %.0103121.i, %.split.i ], [ %.pre.i, %._crit_edge.i ], [ 8, %bb.ac ], [ 10, %bb.aa ], [ 20, %bb.y ], [ %i.ii, %bb.z ], [ %i.iv, %bb.ab ], [ 12, %bb.w ], [ %.0103.ph.i, %.outer.i ], [ %i.ok, %dissect_lbmr_rctxinfo_rec.exit.i ]
  %.0311 = phi i32 [ 0, %bb.al ], [ 0, %dissect_lbmr_tnwg_interest.exit.loopexit.i ], [ 2, %bb.r ], [ 0, %bb.ae ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %dissect_lbmr_remote_domain_route.exit ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %.split.i ], [ 0, %._crit_edge.i ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.w ], [ 0, %.outer.i ], [ 0, %dissect_lbmr_rctxinfo_rec.exit.i ]
  %i.on = add i32 %.0311, %.0316
  br label %dissect_lbmr_tmb.exit

bb.am:                                            ; preds = %bb.j
  %i.oo = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 4 uses
  %i.op = zext i8 %i.ay to i32                    ; 6 uses
  %i.oq = icmp eq i8 %i.ay, 0                     ; 3 uses
  %i.or = zext i16 %i.oo to i32                   ; 6 uses
  %i.os = icmp eq i16 %i.oo, 0                    ; 3 uses
  %or.cond9 = select i1 %i.oq, i1 %i.os, i1 false ; 2 uses
  %i.ot = icmp eq i8 %i.ae, 0
  %or.cond11 = and i1 %i.ot, %or.cond9            ; 2 uses
  br i1 %or.cond11, label %.thread404, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not542 = icmp eq i8 %i.ae, 4
  %cond = icmp eq i8 %i.ae, 6
  br i1 %cond, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %11 = and i8 %i.ac, 6
  %or.cond14 = icmp eq i8 %11, 2
  %or.cond334 = select i1 %or.cond9, i1 %or.cond14, i1 false
  br i1 %or.cond334, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %12 = icmp eq i8 %i.ae, 2
  %13 = load ptr, ptr %i.p, align 8
  %.str.816..str.817 = select i1 %12, ptr @.str.816, ptr @.str.817
  tail call void @col_append_sep_str(ptr noundef %13, i32 noundef 25, ptr noundef @.str.809, ptr noundef %.str.816..str.817)
  br i1 %.not381, label %.thread514, label %.thread513

bb.aq:                                            ; preds = %bb.ao
  %i.ou = load ptr, ptr %i.p, align 8             ; 2 uses
  br i1 %.not542, label %.thread510, label %.thread512

bb.ar:                                            ; preds = %bb.an
  %i.ov = load ptr, ptr %i.p, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ov, i32 noundef 25, ptr noundef @.str.809, ptr noundef @.str.814, i32 noundef %i.op, i32 noundef %i.or)
  %i.ow = load i32, ptr @proto_lbmr, align 4      ; 2 uses
  %i.ox = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.oy = getelementptr i8, ptr %1, i64 416
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = tail call ptr @val_to_str(ptr noundef %i.oz, i32 noundef 6, ptr noundef @lbmr_packet_type, ptr noundef @.str.808) ; 2 uses
  br i1 %.not381, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pb = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.ow, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.820, ptr noundef nonnull %.0324380, i32 noundef %i.ox, i32 noundef 6, ptr noundef %i.pa, i32 noundef %i.op, i32 noundef %i.or)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.pc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.ow, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.821, i32 noundef %i.ox, i32 noundef 6, ptr noundef %i.pa, i32 noundef %i.op, i32 noundef %i.or)
  br label %.thread420

.thread512:                                       ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ou, i32 noundef 25, ptr noundef @.str.809, ptr noundef @.str.819, i32 noundef %i.op, i32 noundef %i.or)
  br i1 %.not381, label %.thread514, label %.thread513

.thread510:                                       ; preds = %bb.aq
  tail call void @col_append_sep_str(ptr noundef %i.ou, i32 noundef 25, ptr noundef @.str.809, ptr noundef @.str.818)
  %i.pd = load i32, ptr @proto_lbmr, align 4      ; 2 uses
  %i.pe = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.pf = getelementptr i8, ptr %1, i64 416
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = tail call ptr @val_to_str(ptr noundef %i.pg, i32 noundef %i.aw, ptr noundef @lbmr_packet_type, ptr noundef @.str.808) ; 2 uses
  br i1 %.not381, label %.thread515, label %.thread511

.thread404:                                       ; preds = %bb.am
  %i.pi = load ptr, ptr %i.p, align 8
  tail call void @col_append_sep_str(ptr noundef %i.pi, i32 noundef 25, ptr noundef @.str.809, ptr noundef @.str.815)
  %i.pj = load i32, ptr @proto_lbmr, align 4      ; 2 uses
  %i.pk = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.pl = getelementptr i8, ptr %1, i64 416
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = tail call ptr @val_to_str(ptr noundef %i.pm, i32 noundef %i.aw, ptr noundef @lbmr_packet_type, ptr noundef @.str.808) ; 2 uses
  br i1 %.not381, label %.thread415, label %.thread411

.thread411:                                       ; preds = %.thread404
  %i.po = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.pj, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.822, ptr noundef nonnull %.0324380, i32 noundef %i.pk, i32 noundef %i.aw, ptr noundef %i.pn)
  br label %bb.au

.thread511:                                       ; preds = %.thread510
  %i.pp = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.pd, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.823, ptr noundef nonnull %.0324380, i32 noundef %i.pe, i32 noundef %i.aw, ptr noundef %i.ph)
  br label %bb.au

.thread513:                                       ; preds = %bb.ap, %.thread512
  %14 = load i32, ptr @proto_lbmr, align 4
  %15 = zext nneg i8 %i.ad to i32
  %16 = getelementptr i8, ptr %1, i64 416
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @val_to_str(ptr noundef %17, i32 noundef %i.aw, ptr noundef @lbmr_packet_type, ptr noundef @.str.808)
  %i.pq = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %14, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.824, ptr noundef nonnull %.0324380, i32 noundef %15, i32 noundef %i.aw, ptr noundef %18, i32 noundef %i.op, i32 noundef %i.or)
  br label %bb.au

.thread415:                                       ; preds = %.thread404
  %i.pr = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.pj, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.825, i32 noundef %i.pk, i32 noundef %i.aw, ptr noundef %i.pn)
  br label %.thread420

.thread515:                                       ; preds = %.thread510
  %i.ps = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.pd, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.826, i32 noundef %i.pe, i32 noundef %i.aw, ptr noundef %i.ph)
  br label %.thread420

.thread514:                                       ; preds = %bb.ap, %.thread512
  %19 = load i32, ptr @proto_lbmr, align 4
  %20 = zext nneg i8 %i.ad to i32
  %21 = getelementptr i8, ptr %1, i64 416
  %22 = load ptr, ptr %21, align 8
  %23 = tail call ptr @val_to_str(ptr noundef %22, i32 noundef %i.aw, ptr noundef @lbmr_packet_type, ptr noundef @.str.808)
  %i.pt = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %19, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.827, i32 noundef %20, i32 noundef %i.aw, ptr noundef %23, i32 noundef %i.op, i32 noundef %i.or)
  br label %.thread420

.thread420:                                       ; preds = %.thread515, %.thread514, %.thread415, %bb.at
  %cond390401.ph = phi i1 [ false, %.thread514 ], [ false, %.thread515 ], [ false, %.thread415 ], [ true, %bb.at ]
  %.1.ph = phi ptr [ %i.pt, %.thread514 ], [ %i.ps, %.thread515 ], [ %i.pr, %.thread415 ], [ %i.pc, %bb.at ]
  %i.pu = load i32, ptr @ett_lbmr, align 4
  %i.pv = tail call ptr @proto_item_add_subtree(ptr noundef %.1.ph, i32 noundef %i.pu)
  br label %proto_item_set_generated.exit349

bb.au:                                            ; preds = %bb.as, %.thread411, %.thread513, %.thread511
  %cond390401 = phi i1 [ true, %bb.as ], [ false, %.thread513 ], [ false, %.thread411 ], [ false, %.thread511 ] ; 3 uses
  %.1 = phi ptr [ %i.pb, %bb.as ], [ %i.pq, %.thread513 ], [ %i.po, %.thread411 ], [ %i.pp, %.thread511 ]
  %i.pw = load i32, ptr @ett_lbmr, align 4
  %i.px = tail call ptr @proto_item_add_subtree(ptr noundef %.1, i32 noundef %i.pw) ; 4 uses
  %i.py = load i32, ptr @hf_lbmr_tag, align 4
  %i.pz = tail call ptr @proto_tree_add_string(ptr noundef %i.px, i32 noundef %i.py, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.0324380) ; 2 uses
  %.not.i347 = icmp eq ptr %i.pz, null
  br i1 %.not.i347, label %proto_item_set_generated.exit349, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qa = getelementptr i8, ptr %i.pz, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8            ; 2 uses
  %.not5.i348 = icmp eq ptr %i.qb, null
  br i1 %.not5.i348, label %proto_item_set_generated.exit349, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qc = getelementptr i8, ptr %i.qb, i64 28     ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = or i32 %i.qd, 2
  store i32 %i.qe, ptr %i.qc, align 4
  br label %proto_item_set_generated.exit349

proto_item_set_generated.exit349:                 ; preds = %bb.aw, %bb.av, %bb.au, %.thread420
  %i.qf = phi ptr [ %i.pv, %.thread420 ], [ %i.px, %bb.au ], [ %i.px, %bb.av ], [ %i.px, %bb.aw ] ; 15 uses
  %cond390401423 = phi i1 [ %cond390401.ph, %.thread420 ], [ %cond390401, %bb.au ], [ %cond390401, %bb.av ], [ %cond390401, %bb.aw ] ; 2 uses
  %i.qg = load i32, ptr @hf_lbmr_hdr, align 4
  %i.qh = tail call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.qg, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.qi = load i32, ptr @ett_lbmr_hdr, align 4
  %i.qj = tail call ptr @proto_item_add_subtree(ptr noundef %i.qh, i32 noundef %i.qi) ; 5 uses
  %i.qk = load i32, ptr @hf_lbmr_hdr_ver, align 4
  %i.ql = tail call ptr @proto_tree_add_item(ptr noundef %i.qj, i32 noundef %i.qk, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.qm = load i32, ptr @hf_lbmr_hdr_opt, align 4
  %i.qn = tail call ptr @proto_tree_add_item(ptr noundef %i.qj, i32 noundef %i.qm, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.qo = load i32, ptr @hf_lbmr_hdr_type, align 4
  %i.qp = tail call ptr @proto_tree_add_item(ptr noundef %i.qj, i32 noundef %i.qo, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %hf_lbmr_hdr_qqrs.val = load i32, ptr @hf_lbmr_hdr_qqrs, align 4
  %hf_lbmr_hdr_tqrs.val = load i32, ptr @hf_lbmr_hdr_tqrs, align 4
  %i.qq = select i1 %cond390401423, i32 %hf_lbmr_hdr_qqrs.val, i32 %hf_lbmr_hdr_tqrs.val
  %i.qr = tail call ptr @proto_tree_add_item(ptr noundef %i.qj, i32 noundef %i.qq, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %hf_lbmr_hdr_qirs.val = load i32, ptr @hf_lbmr_hdr_qirs, align 4
  %hf_lbmr_hdr_tirs.val = load i32, ptr @hf_lbmr_hdr_tirs, align 4
  %i.qs = select i1 %cond390401423, i32 %hf_lbmr_hdr_qirs.val, i32 %hf_lbmr_hdr_tirs.val
  %i.qt = tail call ptr @proto_tree_add_item(ptr noundef %i.qj, i32 noundef %i.qs, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qu = getelementptr i8, ptr %1, i64 416       ; 20 uses
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = tail call noalias dereferenceable_or_null(56) ptr @wmem_alloc0(ptr noundef %i.qv, i64 noundef 56) #13 ; 14 uses
  switch i8 %i.ae, label %bb.cy [
    i8 6, label %bb.ax
    i8 0, label %bb.bl
    i8 1, label %bb.bl
    i8 4, label %bb.cx
    i8 2, label %dissect_lbmr_tmb.exit
    i8 3, label %dissect_lbmr_tmb.exit
  ]

bb.ax:                                            ; preds = %proto_item_set_generated.exit349
  store i32 1, ptr %i.qw, align 8
  br i1 %i.oq, label %bb.az, label %.lr.ph.i350

.lr.ph.i350:                                      ; preds = %bb.ax
  %i.qx = load i32, ptr @hf_lbmr_qqr, align 4
  %i.qy = tail call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.qx, ptr noundef %.2315, i32 noundef 4, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.qz = load i32, ptr @ett_lbmr_qqrs, align 4
  %i.ra = tail call ptr @proto_item_add_subtree(ptr noundef %i.qy, i32 noundef %i.qz)
  %i.rb = getelementptr i8, ptr %i.qw, i64 8      ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qw, i64 16     ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i350
  %.022.i = phi i32 [ 0, %.lr.ph.i350 ], [ %i.rr, %bb.ay ]
  %.01721.i = phi i32 [ 4, %.lr.ph.i350 ], [ %i.rs, %bb.ay ] ; 3 uses
  %.01820.i = phi i8 [ %i.ay, %.lr.ph.i350 ], [ %i.rd, %bb.ay ]
  %i.rd = add i8 %.01820.i, -1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  store i32 0, ptr %i.n, align 4
  %i.re = load ptr, ptr %i.qu, align 8
  %i.rf = call ptr @tvb_get_stringz_enc(ptr noundef %i.re, ptr noundef %.2315, i32 noundef %.01721.i, ptr noundef nonnull %i.n, i32 noundef 0)
  %i.rg = load i32, ptr %i.n, align 4             ; 2 uses
  %i.rh = load ptr, ptr %i.qu, align 8            ; 2 uses
  %i.ri = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.rh, i64 noundef 16) #13 ; 3 uses
  %i.rj = call noalias ptr @wmem_strdup(ptr noundef %i.rh, ptr noundef %i.rf)
  store ptr %i.rj, ptr %i.ri, align 8
  %i.rk = load ptr, ptr %i.rc, align 8
  %i.rl = getelementptr i8, ptr %i.ri, i64 8
  store ptr %i.rk, ptr %i.rl, align 8
  store ptr %i.ri, ptr %i.rc, align 8
  %i.rm = load i32, ptr %i.rb, align 8
  %i.rn = add i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rb, align 8
  %i.ro = load i32, ptr @hf_lbmr_qqr_name, align 4
  %i.rp = load i32, ptr %i.n, align 4
  %i.rq = call ptr @proto_tree_add_item(ptr noundef %i.ra, i32 noundef %i.ro, ptr noundef %.2315, i32 noundef %.01721.i, i32 noundef %i.rp, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  %i.rr = add i32 %i.rg, %.022.i                  ; 3 uses
  %i.rs = add i32 %i.rg, %.01721.i
  %.not.i351 = icmp eq i8 %i.rd, 0
  br i1 %.not.i351, label %dissect_lbmr_qqrs.exit, label %bb.ay, !llvm.loop !19

dissect_lbmr_qqrs.exit:                           ; preds = %bb.ay
  call void @proto_item_set_len(ptr noundef %i.qy, i32 noundef %i.rr)
  %i.rt = add i32 %i.rr, 4
  br label %bb.az

bb.az:                                            ; preds = %dissect_lbmr_qqrs.exit, %bb.ax
  %.1312 = phi i32 [ %i.rt, %dissect_lbmr_qqrs.exit ], [ 4, %bb.ax ] ; 4 uses
  br i1 %i.os, label %bb.bk, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bb.az
  %i.ru = load i32, ptr @hf_lbmr_qirs, align 4
  %i.rv = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.ru, ptr noundef %.2315, i32 noundef %.1312, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.rw = load i32, ptr @ett_lbmr_qirs, align 4
  %i.rx = call ptr @proto_item_add_subtree(ptr noundef %i.rv, i32 noundef %i.rw) ; 2 uses
  %i.ry = getelementptr i8, ptr %i.qw, i64 32     ; 2 uses
  %i.rz = getelementptr i8, ptr %i.qw, i64 24     ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %dissect_lbmr_qir_entry.exit.i, %.lr.ph.i354
  %.024.i = phi i32 [ 0, %.lr.ph.i354 ], [ %i.wf, %dissect_lbmr_qir_entry.exit.i ]
  %.01723.i = phi i32 [ %.1312, %.lr.ph.i354 ], [ %i.wg, %dissect_lbmr_qir_entry.exit.i ] ; 5 uses
  %.01822.i = phi i16 [ %i.oo, %.lr.ph.i354 ], [ %i.sa, %dissect_lbmr_qir_entry.exit.i ]
  %i.sa = add i16 %.01822.i, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 0, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store i32 0, ptr %i.m, align 4
  %i.sb = load ptr, ptr %i.qu, align 8
  %i.sc = call ptr @tvb_get_stringz_enc(ptr noundef %i.sb, ptr noundef %.2315, i32 noundef %.01723.i, ptr noundef nonnull %i.l, i32 noundef 0) ; 2 uses
  %i.sd = load i32, ptr %i.l, align 4             ; 2 uses
  %i.se = add i32 %i.sd, %.01723.i                ; 3 uses
  %i.sf = load ptr, ptr %i.qu, align 8
  %i.sg = call ptr @tvb_get_stringz_enc(ptr noundef %i.sf, ptr noundef %.2315, i32 noundef %i.se, ptr noundef nonnull %i.m, i32 noundef 0) ; 2 uses
  %i.sh = load i32, ptr %i.m, align 4             ; 2 uses
  %i.si = add i32 %i.sh, %i.se                    ; 7 uses
  %i.sj = add i32 %i.sh, %i.sd                    ; 2 uses
  %i.sk = call i32 @tvb_get_ntohl(ptr noundef %.2315, i32 noundef %i.si)
  %i.sl = add i32 %i.si, 12                       ; 3 uses
  %i.sm = call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef %i.sl) ; 2 uses
  %i.sn = and i16 %i.sm, 32767                    ; 3 uses
  %i.so = add i32 %i.si, 14                       ; 2 uses
  %i.sp = call zeroext i16 @tvb_get_ntohs(ptr noundef %.2315, i32 noundef %i.so) ; 3 uses
  %i.sq = load i32, ptr @hf_lbmr_qir, align 4
  %i.sr = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.rx, i32 noundef %i.sq, ptr noundef %.2315, i32 noundef %.01723.i, i32 noundef %i.sj, ptr noundef @.str.832, ptr noundef %i.sc, ptr noundef %i.sg, i32 noundef %i.sk) ; 2 uses
  %i.ss = load i32, ptr @ett_lbmr_qir, align 4
  %i.st = call ptr @proto_item_add_subtree(ptr noundef %i.sr, i32 noundef %i.ss) ; 10 uses
  %i.su = load i32, ptr @hf_lbmr_qir_queue_name, align 4
  %i.sv = load i32, ptr %i.l, align 4
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.su, ptr noundef %.2315, i32 noundef %.01723.i, i32 noundef %i.sv, i32 noundef 0) ; 0 uses
  %i.sx = load i32, ptr @hf_lbmr_qir_topic_name, align 4
  %i.sy = load i32, ptr %i.m, align 4
  %i.sz = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.sx, ptr noundef %.2315, i32 noundef %i.se, i32 noundef %i.sy, i32 noundef 0) ; 0 uses
  %i.ta = load i32, ptr @hf_lbmr_qir_queue_id, align 4
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.ta, ptr noundef %.2315, i32 noundef %i.si, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.tc = load i32, ptr @hf_lbmr_qir_queue_ver, align 4
  %i.td = add i32 %i.si, 4
  %i.te = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.tc, ptr noundef %.2315, i32 noundef %i.td, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.tf = load i32, ptr @hf_lbmr_qir_queue_prev_ver, align 4
  %i.tg = add i32 %i.si, 8
  %i.th = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.tf, ptr noundef %.2315, i32 noundef %i.tg, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ti = load i32, ptr @hf_lbmr_qir_option_flag, align 4
  %i.tj = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.ti, ptr noundef %.2315, i32 noundef %i.sl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tk = load i32, ptr @hf_lbmr_qir_grp_blks, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.tk, ptr noundef %.2315, i32 noundef %i.sl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tm = load i32, ptr @hf_lbmr_qir_queue_blks, align 4
  %i.tn = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.tm, ptr noundef %.2315, i32 noundef %i.so, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.to = add i32 %i.si, 16                       ; 3 uses
  %i.tp = add i32 %i.sj, 16                       ; 2 uses
  %.not.i.i355 = icmp sgt i16 %i.sm, -1
  br i1 %.not.i.i355, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.tq = call fastcc i32 @dissect_lbmr_tir_options(ptr noundef %.2315, i32 noundef %i.to, ptr noundef %1, ptr noundef %i.rx) ; 2 uses
  %i.tr = add i32 %i.tq, %i.to
  %i.ts = add i32 %i.tq, %i.tp
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0110.i.i = phi i32 [ %i.ts, %bb.bb ], [ %i.tp, %bb.ba ] ; 2 uses
  %.0109.i.i = phi i32 [ %i.tr, %bb.bb ], [ %i.to, %bb.ba ] ; 3 uses
  %.not114.i.i = icmp eq i16 %i.sn, 0
  br i1 %.not114.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tt = load i32, ptr @hf_lbmr_qir_grps, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %i.st, i32 noundef %i.tt, ptr noundef %.2315, i32 noundef %.0109.i.i, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tv = load i32, ptr @ett_lbmr_qir_grp, align 4
  %i.tw = call ptr @proto_item_add_subtree(ptr noundef %i.tu, i32 noundef %i.tv)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.0106121.i.i = phi i16 [ %i.sn, %bb.bd ], [ %i.tx, %bb.be ]
end_hunk_1
