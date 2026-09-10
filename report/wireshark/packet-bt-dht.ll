Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bt-dht?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@proto_tree_add_expert_remaining
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_bencoded_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bencoded_string_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %.not.not2.i = icmp eq i8 %i.d, 58
  br i1 %.not.not2.i, label %.critedge25.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.e = add i32 %i.b, -1                         ; 2 uses
  %.not23.i28 = icmp eq i32 %i.e, 0
  br i1 %.not23.i28, label %bencoded_string_length.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.f = add i32 %i.g, -1                         ; 2 uses
  %.not23.i = icmp eq i32 %i.f, 0
  br i1 %.not23.i, label %bencoded_string_length.exit.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.g = phi i32 [ %i.f, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ]
  %.0183.i29 = phi i32 [ %i.h, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ]
  %i.h = add i32 %.0183.i29, 1                    ; 3 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %.not.not.i = icmp eq i8 %i.i, 58
  br i1 %.not.not.i, label %.critedge25.i, label %.lr.ph.i, !llvm.loop !0

.critedge25.i:                                    ; preds = %.lr.ph, %bb.b
  %.018.lcssa.i = phi i32 [ %3, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.j = sub i32 %.018.lcssa.i, %3
  %i.k = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %3, i32 noundef %i.j, i32 noundef 67108864, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.k, label %bb.c, label %bencoded_string_length.exit.thread

bb.c:                                             ; preds = %.critedge25.i
  %i.l = add i32 %.018.lcssa.i, 1                 ; 5 uses
  %i.m = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.n = load i32, ptr %i.a, align 4              ; 4 uses
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %bencoded_string_length.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 416
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @tvb_bytes_to_str(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = call ptr @tvb_get_string_enc(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.n, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.sink = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ @.str.59, %bb.d ] ; 3 uses
  store ptr %.sink, ptr %4, align 8
  %i.u = load i32, ptr @hf_bencoded_string, align 4
  %i.v = load i32, ptr %i.a, align 4
  %i.w = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.v, ptr noundef %.sink, ptr noundef nonnull @.str.80, ptr noundef %6, ptr noundef %.sink) ; 0 uses
  %i.x = load i32, ptr %i.a, align 4
  %i.y = add i32 %i.x, %i.l
  br label %bencoded_string_length.exit.thread

bencoded_string_length.exit.thread:               ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.critedge25.i, %bb.a, %bb.h, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.y, %bb.h ], [ 0, %bb.a ], [ 0, %.critedge25.i ], [ 0, %.lr.ph.i.preheader ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_bencoded_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3)
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_bencoded_list, align 4
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef %4)
  %i.f = load i32, ptr @ett_bencoded_list, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 6 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %.not = icmp eq i8 %i.h, 108
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %3, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.c
  %.052 = phi i32 [ %i.i, %bb.c ], [ %.153, %bb.i ] ; 10 uses
  %i.j = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.052)
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.052)
  switch i8 %i.k, label %bb.h [
    i8 101, label %bb.k
    i8 105, label %bb.e
    i8 108, label %bb.f
    i8 100, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc i32 @dissect_bencoded_int(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %.052, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.94)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  tail call void @increment_dissection_depth(ptr noundef %1)
  %i.m = tail call fastcc i32 @dissect_bencoded_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %.052, ptr noundef nonnull @.str.95)
  tail call void @decrement_dissection_depth(ptr noundef %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @increment_dissection_depth(ptr noundef %1)
  %i.n = tail call fastcc i32 @dissect_bencoded_dict(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %.052, ptr noundef nonnull @.str.96)
  tail call void @decrement_dissection_depth(ptr noundef %1)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.o = call fastcc i32 @dissect_bencoded_string(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %.052, ptr noundef nonnull %i.a, i1 noundef zeroext false, ptr noundef nonnull @.str)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.153 = phi i32 [ %i.o, %bb.h ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ] ; 3 uses
  %.not56 = icmp ugt i32 %.153, %.052
  br i1 %.not56, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_int_string, ptr noundef %0, i32 noundef %.153) ; 0 uses
  br label %bb.m, !llvm.loop !11

bb.k:                                             ; preds = %bb.d, %.critedge
  %i.q = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.052)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i32, ptr @hf_bencoded_list_terminator, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.s, ptr noundef %0, i32 noundef %.052, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.052, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.a, %bb.l
  %.2 = phi i32 [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.u, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_bencoded_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.b = icmp ult i32 %i.a, 3
  br i1 %i.b, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %.not = icmp eq i8 %i.c, 105
  br i1 %.not, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %3, 1                            ; 6 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d)
  %.not3741 = icmp eq i8 %i.e, 101
  br i1 %.not3741, label %.critedge.a, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = add i32 %i.a, -2                         ; 2 uses
  %.not3845 = icmp eq i32 %i.f, 0
  br i1 %.not3845, label %.critedge.thread, label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph47
  %i.g = add i32 %i.h, -1                         ; 2 uses
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %.critedge.thread, label %.lr.ph47, !llvm.loop !12

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.h = phi i32 [ %i.g, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0334246 = phi i32 [ %i.i, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.i = add i32 %.0334246, 1                     ; 3 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.i)
  %.not37 = icmp eq i8 %i.j, 101
  br i1 %.not37, label %.critedge.a, label %.lr.ph, !llvm.loop !12

.critedge.a:                                      ; preds = %.lr.ph47, %bb.c
  %.033.lcssa = phi i32 [ %i.d, %bb.c ], [ %i.i, %.lr.ph47 ] ; 3 uses
  %i.k = load i32, ptr @hf_bencoded_list_terminator, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %.033.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = getelementptr i8, ptr %1, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sub i32 %.033.lcssa, %i.d                ; 2 uses
  %i.p = tail call ptr @tvb_get_string_enc(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.o, i32 noundef 0) ; 3 uses
  store ptr %i.p, ptr %4, align 8
  %i.q = load i32, ptr @hf_bencoded_int, align 4
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.o, ptr noundef %i.p, ptr noundef nonnull @.str.80, ptr noundef %5, ptr noundef %i.p) ; 0 uses
  %i.s = add i32 %.033.lcssa, 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph.preheader, %bb.b, %bb.a, %.critedge.a
  %.032 = phi i32 [ %i.s, %.critedge.a ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  ret i32 %.032
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_bt_dht_nodes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bencoded_string_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %.not.not2.i = icmp eq i8 %i.d, 58
  br i1 %.not.not2.i, label %.critedge25.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.e = add i32 %i.b, -1                         ; 2 uses
  %.not23.i56 = icmp eq i32 %i.e, 0
  br i1 %.not23.i56, label %bencoded_string_length.exit.thread, label %.lr.ph58

.lr.ph.i:                                         ; preds = %.lr.ph58
  %i.f = add i32 %i.g, -1                         ; 2 uses
  %.not23.i = icmp eq i32 %i.f, 0
  br i1 %.not23.i, label %bencoded_string_length.exit.thread, label %.lr.ph58, !llvm.loop !0

.lr.ph58:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.g = phi i32 [ %i.f, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ]
  %.0183.i57 = phi i32 [ %i.h, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ]
  %i.h = add i32 %.0183.i57, 1                    ; 3 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %.not.not.i = icmp eq i8 %i.i, 58
  br i1 %.not.not.i, label %.critedge25.i, label %.lr.ph.i, !llvm.loop !0

.critedge25.i:                                    ; preds = %.lr.ph58, %bb.b
  %.018.lcssa.i = phi i32 [ %3, %bb.b ], [ %i.h, %.lr.ph58 ] ; 2 uses
  %i.j = sub i32 %.018.lcssa.i, %3
  %i.k = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %3, i32 noundef %i.j, i32 noundef 67108864, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.k, label %bb.c, label %bencoded_string_length.exit.thread

bb.c:                                             ; preds = %.critedge25.i
  %i.l = add i32 %.018.lcssa.i, 1                 ; 4 uses
  %i.m = load i32, ptr @hf_bt_dht_nodes, align 4
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.n, i32 noundef 0) ; 2 uses
  %i.p = load i32, ptr @ett_bt_dht_nodes, align 4
  %i.q = call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 2 uses
  %spec.store.select = select i1 %5, i32 38, i32 26
  %.pr = load i32, ptr %i.a, align 4              ; 2 uses
  %.not22 = icmp ult i32 %.pr, %spec.store.select
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 416        ; 4 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.s, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.123.us = phi i32 [ %i.an, %.lr.ph.split.us ], [ %i.l, %.lr.ph ] ; 6 uses
  %i.s = add i32 %.024.us, 1                      ; 3 uses
  %i.t = load i32, ptr @hf_bt_dht_node, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef %.123.us, i32 noundef 38, i32 noundef 0) ; 5 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.86, i32 noundef %i.s)
  %i.v = load i32, ptr @ett_bt_dht_peers, align 4
  %i.w = call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 3 uses
  %i.x = load i32, ptr @hf_bt_dht_id, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef %.123.us, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.z = load ptr, ptr %i.r, align 8
  %i.aa = call ptr @tvb_bytes_to_str(ptr noundef %i.z, ptr noundef %0, i32 noundef %.123.us, i32 noundef 20)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.97, ptr noundef %i.aa)
  %i.ab = load i32, ptr @hf_ip6, align 4
  %i.ac = add i32 %.123.us, 20                    ; 2 uses
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.ac, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = call ptr @tvb_address_to_str(ptr noundef %i.ae, ptr noundef %0, i32 noundef 3, i32 noundef %i.ac)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.98, ptr noundef %i.af)
  %i.ag = load i32, ptr @hf_port, align 4
  %i.ah = add i32 %.123.us, 36                    ; 2 uses
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ah)
  %i.ak = zext i16 %i.aj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.88, i32 noundef %i.ak)
  %i.al = load i32, ptr %i.a, align 4
  %i.am = add i32 %i.al, -38                      ; 3 uses
  store i32 %i.am, ptr %i.a, align 4
  %i.an = add i32 %.123.us, 38                    ; 2 uses
  %.not.us = icmp ult i32 %i.am, 38
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.ao, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.123 = phi i32 [ %i.bj, %.lr.ph.split ], [ %i.l, %.lr.ph ] ; 6 uses
  %i.ao = add i32 %.024, 1                        ; 3 uses
  %i.ap = load i32, ptr @hf_bt_dht_node, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ap, ptr noundef %0, i32 noundef %.123, i32 noundef 26, i32 noundef 0) ; 5 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef nonnull @.str.86, i32 noundef %i.ao)
  %i.ar = load i32, ptr @ett_bt_dht_peers, align 4
  %i.as = call ptr @proto_item_add_subtree(ptr noundef %i.aq, i32 noundef %i.ar) ; 3 uses
  %i.at = load i32, ptr @hf_bt_dht_id, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.at, ptr noundef %0, i32 noundef %.123, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = call ptr @tvb_bytes_to_str(ptr noundef %i.av, ptr noundef %0, i32 noundef %.123, i32 noundef 20)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef nonnull @.str.97, ptr noundef %i.aw)
  %i.ax = load i32, ptr @hf_ip, align 4
  %i.ay = add i32 %.123, 20                       ; 2 uses
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.ay, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ba = load ptr, ptr %i.r, align 8
  %i.bb = call ptr @tvb_address_to_str(ptr noundef %i.ba, ptr noundef %0, i32 noundef 2, i32 noundef %i.ay)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef nonnull @.str.99, ptr noundef %i.bb)
  %i.bc = load i32, ptr @hf_port, align 4
  %i.bd = add i32 %.123, 24                       ; 2 uses
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bf = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bd)
  %i.bg = zext i16 %i.bf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef nonnull @.str.88, i32 noundef %i.bg)
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = add i32 %i.bh, -26                      ; 3 uses
  store i32 %i.bi, ptr %i.a, align 4
  %i.bj = add i32 %.123, 26                       ; 2 uses
  %.not = icmp ult i32 %i.bi, 26
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.c
  %.lcssa = phi i32 [ %.pr, %bb.c ], [ %i.am, %.lr.ph.split.us ], [ %i.bi, %.lr.ph.split ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.l, %bb.c ], [ %i.an, %.lr.ph.split.us ], [ %i.bj, %.lr.ph.split ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.s, %.lr.ph.split.us ], [ %i.ao, %.lr.ph.split ] ; 3 uses
  %.not52 = icmp eq i32 %.lcssa, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bk = load i32, ptr @hf_truncated_data, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.1.lcssa, i32 noundef %.lcssa, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4
  %i.bn = add i32 %i.bm, %.1.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.bn, %bb.d ]
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.o, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.62, i32 noundef %.0.lcssa)
  %i.bo = getelementptr i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bp, i32 noundef 25, ptr noundef nonnull @.str.101, i32 noundef %.0.lcssa)
  %i.bq = getelementptr i8, ptr %1, i64 416
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.br, ptr noundef nonnull @.str.102, i32 noundef %.0.lcssa)
  store ptr %i.bs, ptr %4, align 8
  br label %bencoded_string_length.exit.thread

bencoded_string_length.exit.thread:               ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.critedge25.i, %bb.a, %bb.e
  %.050 = phi i32 [ %.2, %bb.e ], [ 0, %bb.a ], [ 0, %.critedge25.i ], [ 0, %.lr.ph.i.preheader ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.050
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_version(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr %4, align 4
  %i.c = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.b) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bencoded_string_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4                ; 5 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e)
  %.not.not2.i = icmp eq i8 %i.f, 58
  br i1 %.not.not2.i, label %.critedge25.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %.not23.i43 = icmp eq i32 %i.g, 0
  br i1 %.not23.i43, label %bencoded_string_length.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.h = add i32 %i.i, -1                         ; 2 uses
  %.not23.i = icmp eq i32 %i.h, 0
  br i1 %.not23.i, label %bencoded_string_length.exit.thread, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ]
  %.0183.i44 = phi i32 [ %i.j, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ]
  %i.j = add i32 %.0183.i44, 1                    ; 3 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j)
  %.not.not.i = icmp eq i8 %i.k, 58
  br i1 %.not.not.i, label %.critedge25.i, label %.lr.ph.i, !llvm.loop !0

.critedge25.i:                                    ; preds = %.lr.ph, %bb.b
  %.018.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.l = sub i32 %.018.lcssa.i, %i.e
  %i.m = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.l, i32 noundef 67108864, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.m, label %bb.c, label %bencoded_string_length.exit.thread

bb.c:                                             ; preds = %.critedge25.i
  %i.n = add i32 %.018.lcssa.i, 1                 ; 11 uses
end_hunk_0
