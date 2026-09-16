Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-isis-lsp?download=true
inline.NumInlined: 31
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_isis_lsp:bb.a
  %i.en = load i32, ptr @ett_isis_lsp_clv_unknown, align 4
  %i.eo = load i32, ptr @hf_isis_lsp_clv_type, align 4
  %i.ep = load i32, ptr @hf_isis_lsp_clv_length, align 4
  call void @isis_dissect_clvs(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %i.el, ptr noundef %3, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %4, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull @ei_isis_lsp_clv_unknown)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.v, %bb.l, %bb.j, %bb.h, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_print_system_id(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @osi_check_and_get_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @isis_dissect_clvs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_area_address_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_lsp_area_address, align 4
  tail call void @isis_dissect_area_address_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_lsp_short_clv, i32 noundef %i.a, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_l1_is_neighbors_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  tail call fastcc void @dissect_lsp_eis_neighbors_clv_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5, i32 noundef %i.c, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_l1_es_neighbors_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  tail call fastcc void @dissect_lsp_eis_neighbors_clv_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5, i32 noundef %i.c, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_instance_identifier_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @hf_isis_lsp_instance_identifier, align 4
  %i.b = load i32, ptr @hf_isis_lsp_supported_itid, align 4
  tail call void @isis_dissect_instance_identifier_clv(ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_isis_lsp_short_clv, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_ori_buffersize_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.833, i32 noundef %5, i32 noundef %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_isis_lsp_originating_lsp_buffer_size, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_ext_is_reachability_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.033 = phi i32 [ %5, %.lr.ph ], [ %i.x, %bb.e ]
  %.03032 = phi i32 [ %3, %.lr.ph ], [ %i.w, %bb.e ] ; 7 uses
  %i.d = load i32, ptr @ett_isis_lsp_part_of_clv_ext_is_reachability, align 4
  %i.e = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.03032, i32 noundef -1, i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.344) ; 4 uses
  %i.f = load i32, ptr @hf_isis_lsp_ext_is_reachability_is_neighbor_id, align 4
  %i.g = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %.03032, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call ptr @tvb_print_system_id(ptr noundef %i.i, ptr noundef %0, i32 noundef %.03032, i32 noundef 7)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.832, ptr noundef %i.j)
  %i.k = load i32, ptr @hf_isis_lsp_ext_is_reachability_metric, align 4
  %i.l = add i32 %.03032, 7
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_isis_lsp_ext_is_reachability_subclvs_len, align 4
  %i.o = add i32 %.03032, 10                      ; 2 uses
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0)
  %i.q = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.o) ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp eq i8 %i.q, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef nonnull @.str.834)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add i32 %.03032, 11
  call fastcc void @dissect_sub_clv_tlv_22_22_23_141_222_223(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.t, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = add nuw nsw i32 %i.r, 11                 ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.v, i32 noundef %i.u)
  %i.w = add i32 %i.u, %.03032
  %i.x = sub nsw i32 %.033, %i.u                  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_ip_reachability_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.b = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.c = icmp samesign ult i32 %5, 12             ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.c, label %.split.us, label %.lr.ph152

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.c, label %.split.us, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph.split.us.preheader
  %.neg = mul i32 %5, -357913941
  %i.d = add i32 %.neg, -4
  %6 = lshr i32 %i.d, 2
  %i.e = add nsw i32 %5, -12
  %7 = udiv i32 %i.e, 12
  %i.f = tail call i32 @llvm.umin.i32(i32 %6, i32 %7) ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.f, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph156
  %i.h = sub nsw i32 0, %5
  %i.i = and i32 %i.h, 3
  %ident.check.not = icmp eq i32 %i.i, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.j = and i32 %i.g, 7                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %i.k, i32 8, i32 %i.j
  %n.vec = sub nsw i32 %i.g, %i.l                 ; 2 uses
  %i.m = mul i32 %n.vec, -12
  %i.n = add i32 %5, %i.m
  %i.o = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.o, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.p = add <4 x i32> %vec.phi, splat (i32 12)   ; 2 uses
  %i.q = add <4 x i32> %vec.phi159, splat (i32 12) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.r = icmp eq i32 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph156, %middle.block
  %.07889.us155.ph = phi i32 [ %3, %vector.scevcheck ], [ %3, %.lr.ph156 ], [ %i.s, %middle.block ]
  %.07792.us154.ph = phi i32 [ %5, %vector.scevcheck ], [ %5, %.lr.ph156 ], [ %i.n, %middle.block ]
  br label %scalar.ph

.lr.ph.split.us:                                  ; preds = %scalar.ph
  %i.t = add i32 %.07889.us155, 12                ; 2 uses
  %i.u = add nsw i32 %.07792.us154, -12           ; 2 uses
  %i.v = icmp slt i32 %.07792.us154, 24
  br i1 %i.v, label %.split.us, label %scalar.ph, !llvm.loop !10

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph.split.us
  %.07889.us155 = phi i32 [ %i.t, %.lr.ph.split.us ], [ %.07889.us155.ph, %scalar.ph.preheader ]
  %.07792.us154 = phi i32 [ %i.u, %.lr.ph.split.us ], [ %.07792.us154.ph, %scalar.ph.preheader ] ; 3 uses
  %.not142 = icmp eq i32 %.07792.us154, 12
  br i1 %.not142, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !11

.lr.ph.split:                                     ; preds = %bb.d
  %i.w = add i32 %.07889151, 12                   ; 2 uses
  %i.x = add nsw i32 %.07792150, -12              ; 2 uses
  %i.y = icmp slt i32 %.07792150, 24
  br i1 %i.y, label %.split.us, label %.lr.ph152, !llvm.loop !11

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  %.us-phi = phi i32 [ %i.t, %.lr.ph.split.us ], [ %3, %.lr.ph.split.us.preheader ], [ %3, %.lr.ph.split.preheader ], [ %i.w, %.lr.ph.split ]
  %.us-phi94 = phi i32 [ %i.u, %.lr.ph.split.us ], [ %5, %.lr.ph.split.us.preheader ], [ %5, %.lr.ph.split.preheader ], [ %i.x, %.lr.ph.split ]
  %i.z = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %0, i32 noundef %.us-phi, ptr noundef nonnull @.str.857, i32 noundef %.us-phi94) ; 0 uses
  br label %.loopexit

.lr.ph152:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.07889151 = phi i32 [ %i.w, %.lr.ph.split ], [ %3, %.lr.ph.split.preheader ] ; 11 uses
  %.07792150 = phi i32 [ %i.x, %.lr.ph.split ], [ %5, %.lr.ph.split.preheader ] ; 3 uses
  %.093149 = phi i1 [ %.181, %.lr.ph.split ], [ false, %.lr.ph.split.preheader ]
  %i.aa = add i32 %.07889151, 4                   ; 3 uses
  %i.ab = tail call i32 @tvb_get_ipv4(ptr noundef %0, i32 noundef %i.aa) ; 2 uses
  %i.ac = add i32 %.07889151, 8                   ; 2 uses
  %i.ad = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ac)
  switch i32 %i.ad, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread.fold.split
    i32 -4, label %.thread.fold.split110
    i32 -8, label %.thread.fold.split111
    i32 -16, label %.thread.fold.split112
    i32 -32, label %.thread.fold.split113
    i32 -64, label %.thread.fold.split114
    i32 -128, label %.thread.fold.split115
    i32 -256, label %.thread.fold.split116
    i32 -512, label %.thread.fold.split117
    i32 -1024, label %.thread.fold.split118
    i32 -2048, label %.thread.fold.split119
    i32 -4096, label %.thread.fold.split120
    i32 -8192, label %.thread.fold.split121
    i32 -16384, label %.thread.fold.split122
    i32 -32768, label %.thread.fold.split123
    i32 -65536, label %.thread.fold.split124
    i32 -131072, label %.thread.fold.split125
    i32 -262144, label %.thread.fold.split126
    i32 -524288, label %.thread.fold.split127
    i32 -1048576, label %.thread.fold.split128
    i32 -2097152, label %.thread.fold.split129
    i32 -4194304, label %.thread.fold.split130
    i32 -8388608, label %.thread.fold.split131
    i32 -16777216, label %.thread.fold.split132
    i32 -33554432, label %.thread.fold.split133
    i32 -67108864, label %.thread.fold.split134
    i32 -134217728, label %.thread.fold.split135
    i32 -268435456, label %.thread.fold.split136
    i32 -536870912, label %.thread.fold.split137
    i32 -1073741824, label %.thread.fold.split138
    i32 -2147483648, label %.thread.fold.split139
    i32 0, label %.thread.fold.split140
  ]

bb.b:                                             ; preds = %.lr.ph152
  br i1 %.093149, label %.thread, label %bb.c

.thread.fold.split:                               ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split110:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split111:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split112:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split113:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split114:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split115:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split116:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split117:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split118:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split119:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split120:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split121:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split122:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split123:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split124:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split125:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split126:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split127:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split128:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split129:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split130:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split131:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split132:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split133:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split134:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split135:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split136:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split137:                            ; preds = %.lr.ph152
  br label %.thread

.thread.fold.split138:                            ; preds = %.lr.ph152
  br label %.thread
end_hunk_0
begin_hunk_1_@dissect_lsp_sr_sid_label_clv:bb.a

; Function Attrs: null_pointer_is_valid
declare void @isis_dissect_authentication_clv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @isis_dissect_mt_clv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv6(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_display_repr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_l2_is_neighbors_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  tail call fastcc void @dissect_lsp_eis_neighbors_clv_inner(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5, i32 noundef %i.c, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_partition_dis_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 1          ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = icmp slt i32 %5, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.833, i32 noundef %5, i32 noundef %i.c) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_isis_lsp_partition_designated_l2_is, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef %i.c, i32 noundef 0) ; 0 uses
  %i.h = load i8, ptr %i.a, align 1
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = sub nsw i32 %5, %i.i                     ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %3, %i.i
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_long_clv, ptr noundef %0, i32 noundef %i.l, ptr noundef nonnull @.str.963, i32 noundef %i.j) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_lsp_prefix_neighbors_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp slt i32 %5, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.964, i32 noundef %5) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %dissect_metric.exit66, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @hf_isis_lsp_default, align 4
  %i.d = load i32, ptr @hf_isis_lsp_default_support, align 4
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 3 uses
  %i.f = zext i8 %i.e to i64
  %i.g = tail call ptr @proto_tree_add_boolean(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %3, i32 noundef 1, i64 noundef %i.f)
  %i.h = zext i8 %i.e to i32                      ; 2 uses
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.h)
  %i.j = icmp slt i8 %i.e, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.g, ptr noundef nonnull @.str.967)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = and i32 %i.h, 64
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %dissect_metric.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.i, ptr noundef nonnull @ei_isis_lsp_reserved_not_zero) ; 0 uses
  br label %dissect_metric.exit

dissect_metric.exit:                              ; preds = %bb.f, %bb.g
  %i.m = add i32 %3, 1                            ; 3 uses
  %i.n = load i32, ptr @hf_isis_lsp_delay, align 4
  %i.o = load i32, ptr @hf_isis_lsp_delay_support, align 4
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.m) ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = tail call ptr @proto_tree_add_boolean(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i64 noundef %i.q) ; 0 uses
  %i.s = zext i8 %i.p to i32                      ; 2 uses
  %i.t = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef %i.s)
  %i.u = and i32 %i.s, 64
  %.not.i61 = icmp eq i32 %i.u, 0
  br i1 %.not.i61, label %dissect_metric.exit62, label %bb.h

bb.h:                                             ; preds = %dissect_metric.exit
  %i.v = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.t, ptr noundef nonnull @ei_isis_lsp_reserved_not_zero) ; 0 uses
  br label %dissect_metric.exit62

dissect_metric.exit62:                            ; preds = %dissect_metric.exit, %bb.h
  %i.w = add i32 %3, 2                            ; 3 uses
  %i.x = load i32, ptr @hf_isis_lsp_expense, align 4
  %i.y = load i32, ptr @hf_isis_lsp_expense_support, align 4
  %i.z = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.w) ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = tail call ptr @proto_tree_add_boolean(ptr noundef nonnull %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i64 noundef %i.aa) ; 0 uses
  %i.ac = zext i8 %i.z to i32                     ; 2 uses
  %i.ad = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef %i.ac)
  %i.ae = and i32 %i.ac, 64
  %.not.i63 = icmp eq i32 %i.ae, 0
  br i1 %.not.i63, label %dissect_metric.exit64, label %bb.i

bb.i:                                             ; preds = %dissect_metric.exit62
  %i.af = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull @ei_isis_lsp_reserved_not_zero) ; 0 uses
  br label %dissect_metric.exit64

dissect_metric.exit64:                            ; preds = %dissect_metric.exit62, %bb.i
  %i.ag = add i32 %3, 3                           ; 3 uses
  %i.ah = load i32, ptr @hf_isis_lsp_error, align 4
  %i.ai = load i32, ptr @hf_isis_lsp_error_support, align 4
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ag) ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = tail call ptr @proto_tree_add_boolean(ptr noundef nonnull %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i64 noundef %i.ak) ; 0 uses
  %i.am = zext i8 %i.aj to i32                    ; 2 uses
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef %i.am)
  %i.ao = and i32 %i.am, 64
  %.not.i65 = icmp eq i32 %i.ao, 0
  br i1 %.not.i65, label %dissect_metric.exit66, label %bb.j

bb.j:                                             ; preds = %dissect_metric.exit64
  %i.ap = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.an, ptr noundef nonnull @ei_isis_lsp_reserved_not_zero) ; 0 uses
  br label %dissect_metric.exit66

dissect_metric.exit66:                            ; preds = %bb.j, %dissect_metric.exit64, %bb.c
  %.not73 = icmp eq i32 %5, 4
  br i1 %.not73, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %dissect_metric.exit66
  %i.aq = add nsw i32 %5, -4
  %i.ar = add i32 %3, 4
  %i.as = getelementptr i8, ptr %1, i64 416
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.072 = phi i32 [ %i.aq, %.lr.ph ], [ %i.bk, %bb.o ] ; 2 uses
  %.05471 = phi i32 [ %i.ar, %.lr.ph ], [ %i.bj, %bb.o ] ; 6 uses
  %i.at = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.05471)
  %i.au = zext i8 %i.at to i32                    ; 5 uses
  %i.av = add nsw i32 %.072, -1                   ; 2 uses
  %i.aw = icmp eq i32 %.072, 1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_short_clv, ptr noundef %0, i32 noundef %.05471, ptr noundef nonnull @.str.965) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ay = shl nuw i32 %i.av, 1                    ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.au
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_isis_lsp_long_clv, ptr noundef %0, i32 noundef %.05471, ptr noundef nonnull @.str.966, i32 noundef %i.au, i32 noundef %i.ay) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.as, align 8
  %i.bc = add i32 %.05471, 1
  %i.bd = tail call ptr @print_address_prefix(ptr noundef %i.bb, ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.au)
  %i.be = load i32, ptr @hf_isis_lsp_area_address_str, align 4
  %i.bf = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %.05471, i32 noundef %i.bh, ptr noundef %i.bd) ; 0 uses
  %i.bj = add i32 %i.bf, %.05471
  %i.bk = sub nsw i32 %i.av, %i.au                ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %bb.o, %dissect_metric.exit66, %bb.n, %bb.l, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @print_address_prefix(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7, !12, !13}
!10 = distinct !{!10, !7, !12}
!11 = distinct !{!11, !7}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
end_hunk_1
