Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ndmp?download=true
inline.NumInlined: 59
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_ndmp_message:bb.a
    i32 1034, label %.fold.split88.i
    i32 1281, label %.fold.split89.i
    i32 1282, label %.fold.split90.i
    i32 1283, label %.fold.split91.i
    i32 1284, label %.fold.split92.i
    i32 1285, label %.fold.split93.i
    i32 1538, label %.fold.split94.i
    i32 1539, label %.fold.split95.i
    i32 1795, label %.fold.split96.i
    i32 1796, label %.fold.split97.i
    i32 1797, label %.fold.split98.i
  ]

bb.ba:                                            ; preds = %dissect_ndmp_header.exit.i
  switch i32 %i.ej, label %bb.bb [
    i32 2304, label %bb.bc
    i32 2305, label %.fold.split99.i
    i32 2306, label %.fold.split100.i
    i32 2307, label %.fold.split101.i
    i32 2560, label %.fold.split102.i
    i32 2561, label %.fold.split103.i
    i32 2562, label %.fold.split104.i
    i32 2563, label %.fold.split105.i
    i32 2564, label %.fold.split106.i
    i32 2565, label %.fold.split107.i
    i32 2566, label %.fold.split108.i
    i32 2567, label %.fold.split109.i
    i32 2568, label %.fold.split110.i
    i32 2569, label %.fold.split111.i
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ki = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.js, ptr noundef @ei_ndmp_msg) ; 0 uses
  %i.kj = call i32 @tvb_captured_length_remaining(ptr noundef %.2, i32 noundef 24) ; 0 uses
  br label %dissect_ndmp_cmd.exit

.fold.split.i:                                    ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split59.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split60.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split61.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split62.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split63.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split64.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split65.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split66.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split67.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split68.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split69.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split70.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split71.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split72.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split73.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split74.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split75.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split76.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split77.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split78.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split79.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split80.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split81.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split82.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split83.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split84.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split85.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split86.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split87.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split88.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split89.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split90.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split91.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split92.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split93.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split94.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split95.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split96.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split97.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split98.i:                                  ; preds = %dissect_ndmp_header.exit.i
  br label %bb.bc

.fold.split99.i:                                  ; preds = %bb.ba
  br label %bb.bc

.fold.split100.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split101.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split102.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split103.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split104.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split105.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split106.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split107.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split108.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split109.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split110.i:                                 ; preds = %bb.ba
  br label %bb.bc

.fold.split111.i:                                 ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %.fold.split111.i, %.fold.split110.i, %.fold.split109.i, %.fold.split108.i, %.fold.split107.i, %.fold.split106.i, %.fold.split105.i, %.fold.split104.i, %.fold.split103.i, %.fold.split102.i, %.fold.split101.i, %.fold.split100.i, %.fold.split99.i, %.fold.split98.i, %.fold.split97.i, %.fold.split96.i, %.fold.split95.i, %.fold.split94.i, %.fold.split93.i, %.fold.split92.i, %.fold.split91.i, %.fold.split90.i, %.fold.split89.i, %.fold.split88.i, %.fold.split87.i, %.fold.split86.i, %.fold.split85.i, %.fold.split84.i, %.fold.split83.i, %.fold.split82.i, %.fold.split81.i, %.fold.split80.i, %.fold.split79.i, %.fold.split78.i, %.fold.split77.i, %.fold.split76.i, %.fold.split75.i, %.fold.split74.i, %.fold.split73.i, %.fold.split72.i, %.fold.split71.i, %.fold.split70.i, %.fold.split69.i, %.fold.split68.i, %.fold.split67.i, %.fold.split66.i, %.fold.split65.i, %.fold.split64.i, %.fold.split63.i, %.fold.split62.i, %.fold.split61.i, %.fold.split60.i, %.fold.split59.i, %.fold.split.i, %bb.ba, %dissect_ndmp_header.exit.i
  %.lcssa53.i = phi ptr [ @ndmp_commands, %dissect_ndmp_header.exit.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1296), %.fold.split110.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 24), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 48), %.fold.split59.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 72), %.fold.split60.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 96), %.fold.split61.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 120), %.fold.split62.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 144), %.fold.split63.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 168), %.fold.split64.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 192), %.fold.split65.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 216), %.fold.split66.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 240), %.fold.split67.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 264), %.fold.split68.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 288), %.fold.split69.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 312), %.fold.split70.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 336), %.fold.split71.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 360), %.fold.split72.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 384), %.fold.split73.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 408), %.fold.split74.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 432), %.fold.split75.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 456), %.fold.split76.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 480), %.fold.split77.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 504), %.fold.split78.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 528), %.fold.split79.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 552), %.fold.split80.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 576), %.fold.split81.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 600), %.fold.split82.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 624), %.fold.split83.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 648), %.fold.split84.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 672), %.fold.split85.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 696), %.fold.split86.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 720), %.fold.split87.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 744), %.fold.split88.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 768), %.fold.split89.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 792), %.fold.split90.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 816), %.fold.split91.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 840), %.fold.split92.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 864), %.fold.split93.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 888), %.fold.split94.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 912), %.fold.split95.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 936), %.fold.split96.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 960), %.fold.split97.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1008), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 984), %.fold.split98.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1032), %.fold.split99.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1056), %.fold.split100.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1080), %.fold.split101.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1104), %.fold.split102.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1128), %.fold.split103.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1152), %.fold.split104.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1176), %.fold.split105.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1200), %.fold.split106.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1224), %.fold.split107.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1248), %.fold.split108.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1272), %.fold.split109.i ], [ getelementptr inbounds nuw (i8, ptr @ndmp_commands, i64 1320), %.fold.split111.i ] ; 2 uses
  %.lcssa.i = phi i64 [ 0, %dissect_ndmp_header.exit.i ], [ 54, %.fold.split110.i ], [ 1, %.fold.split.i ], [ 2, %.fold.split59.i ], [ 3, %.fold.split60.i ], [ 4, %.fold.split61.i ], [ 5, %.fold.split62.i ], [ 6, %.fold.split63.i ], [ 7, %.fold.split64.i ], [ 8, %.fold.split65.i ], [ 9, %.fold.split66.i ], [ 10, %.fold.split67.i ], [ 11, %.fold.split68.i ], [ 12, %.fold.split69.i ], [ 13, %.fold.split70.i ], [ 14, %.fold.split71.i ], [ 15, %.fold.split72.i ], [ 16, %.fold.split73.i ], [ 17, %.fold.split74.i ], [ 18, %.fold.split75.i ], [ 19, %.fold.split76.i ], [ 20, %.fold.split77.i ], [ 21, %.fold.split78.i ], [ 22, %.fold.split79.i ], [ 23, %.fold.split80.i ], [ 24, %.fold.split81.i ], [ 25, %.fold.split82.i ], [ 26, %.fold.split83.i ], [ 27, %.fold.split84.i ], [ 28, %.fold.split85.i ], [ 29, %.fold.split86.i ], [ 30, %.fold.split87.i ], [ 31, %.fold.split88.i ], [ 32, %.fold.split89.i ], [ 33, %.fold.split90.i ], [ 34, %.fold.split91.i ], [ 35, %.fold.split92.i ], [ 36, %.fold.split93.i ], [ 37, %.fold.split94.i ], [ 38, %.fold.split95.i ], [ 39, %.fold.split96.i ], [ 40, %.fold.split97.i ], [ 42, %bb.ba ], [ 41, %.fold.split98.i ], [ 43, %.fold.split99.i ], [ 44, %.fold.split100.i ], [ 45, %.fold.split101.i ], [ 46, %.fold.split102.i ], [ 47, %.fold.split103.i ], [ 48, %.fold.split104.i ], [ 49, %.fold.split105.i ], [ 50, %.fold.split106.i ], [ 51, %.fold.split107.i ], [ 52, %.fold.split108.i ], [ 53, %.fold.split109.i ], [ 55, %.fold.split111.i ] ; 2 uses
  %i.kk = call i32 @tvb_reported_length_remaining(ptr noundef %.2, i32 noundef 24)
  %i.kl = icmp ne i32 %i.kk, 0
  %i.km = icmp ne ptr %.1173, null
  %or.cond.i217 = and i1 %i.km, %i.kl
  br i1 %or.cond.i217, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kn = load i32, ptr @ett_ndmp, align 4
  %i.ko = getelementptr [16 x i8], ptr @msg_vals, i64 %.lcssa.i
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = call ptr @proto_tree_add_subtree(ptr noundef nonnull %.1173, ptr noundef %.2, i32 noundef 24, i32 noundef -1, i32 noundef %i.kn, ptr noundef null, ptr noundef %i.kq)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i218 = phi ptr [ %i.kr, %bb.bd ], [ null, %bb.bc ] ; 2 uses
  %i.ks = icmp eq i32 %i.ei, 0
  %6 = shl nuw nsw i64 1, %.lcssa.i               ; 2 uses
  br i1 %i.ks, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %7 = and i64 %6, 83123080017009147
  %.not47.not.i = icmp eq i64 %7, 0
  br i1 %.not47.not.i, label %bb.bg, label %dissect_ndmp_cmd.exit

bb.bg:                                            ; preds = %bb.bf
  %8 = getelementptr i8, ptr %.lcssa53.i, i64 8
  %9 = load ptr, ptr %8, align 8
  %i.kt = call i32 %9(ptr noundef %.2, i32 noundef 24, ptr noundef %1, ptr noundef %.0.i218, i32 noundef %i.eg), !inline_history !8 ; 0 uses
  br label %dissect_ndmp_cmd.exit

bb.bh:                                            ; preds = %bb.be
  %10 = and i64 %6, 72079579975516160
  %.not46.not.i = icmp eq i64 %10, 0
  br i1 %.not46.not.i, label %bb.bi, label %dissect_ndmp_cmd.exit

bb.bi:                                            ; preds = %bb.bh
  %11 = getelementptr i8, ptr %.lcssa53.i, i64 16
  %12 = load ptr, ptr %11, align 8
  %i.ku = call i32 %12(ptr noundef %.2, i32 noundef 24, ptr noundef %1, ptr noundef %.0.i218, i32 noundef %i.ek), !inline_history !8 ; 0 uses
  br label %dissect_ndmp_cmd.exit

dissect_ndmp_cmd.exit:                            ; preds = %bb.bb, %bb.bf, %bb.bg, %bb.bh, %bb.bi
  store i8 %i.ag, ptr %i.af, align 8
  %i.kv = load ptr, ptr %i.em, align 8
  call void @col_set_writable(ptr noundef %i.kv, i32 noundef 25, i1 noundef zeroext %i.eo)
  %i.kw = load ptr, ptr %i.em, align 8
  call void @col_set_writable(ptr noundef %i.kw, i32 noundef 35, i1 noundef zeroext %i.eq)
  %i.kx = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %dissect_ndmp_cmd.exit, %check_ndmp_hdr.exit.thread, %bb.v, %bb.t
  %.0 = phi i32 [ %i.dq, %bb.t ], [ %i.du, %bb.v ], [ %i.kx, %dissect_ndmp_cmd.exit ], [ %i.ef, %check_ndmp_hdr.exit.thread ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @col_get_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_error(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @hf_ndmp_error, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %2, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.d, ptr noundef @error_vals, ptr noundef @.str.750)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.f, i32 noundef 25, ptr noundef @.str.749, ptr noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add i32 %1, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ndmp_get_host_info_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @hf_ndmp_error, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %dissect_error.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %2, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.d, ptr noundef @error_vals, ptr noundef @.str.750)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.f, i32 noundef 25, ptr noundef @.str.749, ptr noundef %i.i)
  br label %dissect_error.exit

dissect_error.exit:                               ; preds = %bb.a, %bb.b
  %i.j = add i32 %1, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.k = load i32, ptr @hf_ndmp_hostname, align 4
  %i.l = call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.k, i32 noundef %i.j, ptr noundef null)
  %i.m = load i32, ptr @hf_ndmp_os_type, align 4
  %i.n = call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.m, i32 noundef %i.l, ptr noundef null)
  %i.o = load i32, ptr @hf_ndmp_os_vers, align 4
  %i.p = call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.o, i32 noundef %i.n, ptr noundef null)
  %i.q = load i32, ptr @hf_ndmp_hostid, align 4
  %i.r = call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.q, i32 noundef %i.p, ptr noundef null)
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ndmp_config_get_connection_type_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @hf_ndmp_error, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %dissect_error.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %2, i64 416
  %i.h = load ptr, ptr %i.g, align 8
end_hunk_0
