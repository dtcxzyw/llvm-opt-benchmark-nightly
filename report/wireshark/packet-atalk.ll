Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-atalk?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
begin_hunk_0_@dissect_ddp_short:bb.a
  %i.o = zext i16 %i.m to i32                     ; 3 uses
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.o)
  %i.q = icmp ult i16 %i.m, 5
  br i1 %i.q, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.o
  br i1 %i.s, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.str.433.sink = phi ptr [ @.str.432, %bb.c ], [ @.str.433, %bb.d ]
  %.1.ph = phi i32 [ 5, %bb.c ], [ %i.r, %bb.d ]
  %i.t = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.p, ptr noundef nonnull @ei_ddp_len_invalid, ptr noundef nonnull %.str.433.sink) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.1 = phi i32 [ %i.o, %bb.d ], [ %.1.ph, %.sink.split ]
  tail call void @set_actual_length(ptr noundef %0, i32 noundef %.1)
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %.pre = zext i8 %i.u to i32                     ; 2 uses
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %.pre87 = zext i8 %i.v to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr @hf_ddp_dst_socket, align 4
  %i.x = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.w, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %.pre) ; 0 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.z = load i32, ptr @hf_ddp_src_socket, align 4
  %i.aa = zext i8 %i.y to i32                     ; 2 uses
  %i.ab = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.z, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.aa) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.pre-phi88 = phi i32 [ %.pre87, %.thread ], [ %i.aa, %bb.f ]
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  store i16 0, ptr %i.c, align 2
  %i.ad = getelementptr i8, ptr %3, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr i8, ptr %i.c, i64 2
  store i8 %i.ae, ptr %i.af, align 2
  store i16 0, ptr %i.e, align 2
  %i.ag = load i8, ptr %3, align 1
  %i.ah = getelementptr i8, ptr %i.e, i64 2
  store i8 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %1, i64 160
  %i.aj = load i32, ptr @atalk_address_type, align 4 ; 4 uses
  store i32 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %1, i64 164
  store i32 4, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %1, i64 168
  store ptr %i.c, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 176
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %1, i64 208       ; 2 uses
  store i32 %i.aj, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %1, i64 212
  store i32 4, ptr %i.ao, align 4
  %i.ap = getelementptr i8, ptr %1, i64 216
  store ptr %i.c, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %1, i64 184
  store i32 %i.aj, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %1, i64 188
  store i32 4, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %1, i64 192
  store ptr %i.e, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %1, i64 200
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %1, i64 232       ; 2 uses
  store i32 %i.aj, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %1, i64 236
  store i32 4, ptr %i.aw, align 4
  %i.ax = getelementptr i8, ptr %1, i64 240
  store ptr %i.e, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %1, i64 248
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %1, i64 284
  store i32 6, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %1, i64 292
  store i32 %.pre, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %1, i64 288
  store i32 %.pre-phi88, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = zext i8 %i.ac to i32                    ; 3 uses
  %i.bf = tail call ptr @val_to_str_ext(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull @op_vals_ext, ptr noundef nonnull @.str.434)
  tail call void @col_add_str(ptr noundef %i.bc, i32 noundef 25, ptr noundef %i.bf)
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr @hf_ddp_src, align 4
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = tail call ptr @address_to_str(ptr noundef %i.bh, ptr noundef %i.an)
  %i.bj = tail call ptr @proto_tree_add_string(ptr noundef %.0, i32 noundef %i.bg, ptr noundef %0, i32 noundef 4, i32 noundef 3, ptr noundef %i.bi) ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bl, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 28     ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = or i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.h, %bb.i, %bb.j
  %i.bp = load i32, ptr @hf_ddp_dst, align 4
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = tail call ptr @address_to_str(ptr noundef %i.bq, ptr noundef %i.av)
  %i.bs = tail call ptr @proto_tree_add_string(ptr noundef %.0, i32 noundef %i.bp, ptr noundef %0, i32 noundef 6, i32 noundef 3, ptr noundef %i.br) ; 2 uses
  %.not.i84 = icmp eq ptr %i.bs, null
  br i1 %.not.i84, label %proto_item_set_hidden.exit86, label %bb.k

bb.k:                                             ; preds = %proto_item_set_hidden.exit
  %i.bt = getelementptr i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not5.i85 = icmp eq ptr %i.bu, null
  br i1 %.not5.i85, label %proto_item_set_hidden.exit86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr i8, ptr %i.bu, i64 28     ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = or i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4
  br label %proto_item_set_hidden.exit86

proto_item_set_hidden.exit86:                     ; preds = %proto_item_set_hidden.exit, %bb.k, %bb.l
  %i.by = load i32, ptr @hf_ddp_type, align 4
  %i.bz = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.by, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.be) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %proto_item_set_hidden.exit86, %bb.g
  %i.ca = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 5) ; 2 uses
  %i.cb = load ptr, ptr @ddp_dissector_table, align 8
  %i.cc = tail call i32 @dissector_try_uint(ptr noundef %i.cb, i32 noundef %i.be, ptr noundef %i.ca, ptr noundef %1, ptr noundef %2)
  %.not83 = icmp eq i32 %i.cc, 0
  br i1 %.not83, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = tail call i32 @call_data_dissector(ptr noundef %i.ca, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ce
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nbp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.254)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.f = zext i8 %i.e to i32                      ; 6 uses
  %i.g = lshr i32 %i.f, 4                         ; 2 uses
  %i.h = and i32 %i.f, 15                         ; 4 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @val_to_str(ptr noundef %i.k, i32 noundef %i.g, ptr noundef nonnull @nbp_op_vals, ptr noundef nonnull @.str.436)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.435, ptr noundef %i.l, i32 noundef %i.h)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @proto_nbp, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = load i32, ptr @ett_nbp, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 3 uses
  %i.q = load i32, ptr @hf_nbp_info, align 4
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = tail call ptr @val_to_str(ptr noundef %i.r, i32 noundef %i.g, ptr noundef nonnull @nbp_op_vals, ptr noundef nonnull @.str.438)
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull @.str.437, i32 noundef %i.f, ptr noundef %i.s, i32 noundef %i.h)
  %i.u = load i32, ptr @ett_nbp_info, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u) ; 2 uses
  %i.w = load i32, ptr @hf_nbp_op, align 4
  %i.x = tail call ptr @proto_tree_add_uint(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.f) ; 0 uses
  %i.y = load i32, ptr @hf_nbp_count, align 4
  %i.z = tail call ptr @proto_tree_add_uint(ptr noundef %i.v, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.f) ; 0 uses
  %i.aa = load i32, ptr @hf_nbp_tid, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.aa, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not75 = icmp eq i32 %i.h, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.074 = phi i32 [ %i.bi, %.lr.ph ], [ 2, %bb.b ] ; 8 uses
  %.07173 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ac = load i32, ptr @ett_nbp_node, align 4
  %i.ad = add nuw nsw i32 %.07173, 1              ; 3 uses
  %i.ae = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.p, ptr noundef %0, i32 noundef %.074, i32 noundef -1, i32 noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.439, i32 noundef %i.ad) ; 7 uses
  %i.af = load i32, ptr @hf_nbp_node_net, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.af, ptr noundef %0, i32 noundef %.074, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %.074, 2
  %i.ai = load i32, ptr @hf_nbp_node_node, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %.074, 3
  %i.al = load i32, ptr @hf_nbp_node_port, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = add i32 %.074, 4
  %i.ao = load i32, ptr @hf_nbp_node_enum, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = add i32 %.074, 5                        ; 2 uses
  %i.ar = load i32, ptr @hf_nbp_node_object, align 4
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aq)
  %i.at = zext i8 %i.as to i32
  %i.au = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef 48) ; 0 uses
  %i.av = add i32 %.074, 6
  %i.aw = add i32 %i.av, %i.at                    ; 3 uses
  %i.ax = load i32, ptr @hf_nbp_node_type, align 4
  %i.ay = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aw)
  %i.az = zext i8 %i.ay to i32
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 48) ; 0 uses
  %i.bb = add i32 %i.aw, 1
  %i.bc = add i32 %i.bb, %i.az                    ; 3 uses
  %i.bd = load i32, ptr @hf_nbp_node_zone, align 4
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bc)
  %i.bf = zext i8 %i.be to i32
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bc, i32 noundef 1, i32 noundef 48) ; 0 uses
  %i.bh = add i32 %i.bc, 1
  %i.bi = add i32 %i.bh, %i.bf                    ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = sub i32 %i.bi, %.074
  call void @proto_item_set_len(ptr noundef %i.bj, i32 noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %exitcond.not = icmp eq i32 %i.ad, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.bl = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.bl
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_atp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.atp_asp_dsi_info, align 4   ; 11 uses
  %5 = alloca %struct.asp_request_key, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr i8, ptr %1, i64 208        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i32, ptr @atalk_address_type, align 4
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %is_ddp_address.exit, label %is_ddp_address.exit.thread

is_ddp_address.exit:                              ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 212
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.b, label %is_ddp_address.exit.thread

bb.b:                                             ; preds = %is_ddp_address.exit
  %i.h = getelementptr i8, ptr %1, i64 232        ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %is_ddp_address.exit181, label %is_ddp_address.exit.thread

is_ddp_address.exit181:                           ; preds = %bb.b
  %i.k = getelementptr i8, ptr %1, i64 236
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %._crit_edge, label %is_ddp_address.exit.thread

._crit_edge:                                      ; preds = %is_ddp_address.exit181
  %i.n = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 35, ptr noundef nonnull @.str.257)
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.r = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.s = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %i.q, i1 false)
  %i.t = sub nuw nsw i8 8, %i.s                   ; 2 uses
  %i.u = zext i8 %i.p to i32                      ; 4 uses
  %i.v = lshr i32 %i.u, 6
  %i.w = and i32 %i.u, 192                        ; 2 uses
  %i.x = icmp eq i32 %i.w, 128                    ; 5 uses
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %4, align 4
  %i.z = icmp eq i32 %i.w, 192                    ; 5 uses
  %i.aa = zext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.r, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ad, align 4
  %i.ae = xor i1 %i.z, %i.x                       ; 2 uses
  %i.af = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  %i.ag = load i8, ptr @atp_defragment, align 1, !range !8, !noundef !9
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %6

bb.c:                                             ; preds = %._crit_edge
  %i.ai = xor i1 %i.ae, true
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = load i32, ptr %i.aj, align 8
  store i32 %i.ak, ptr %5, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.in.v = select i1 %i.x, i64 240, i64 216
  %.in = getelementptr i8, ptr %1, i64 %.in.v
  %i.am = load ptr, ptr %.in, align 8
  %i.an = load i32, ptr %i.am, align 1
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %i.r, ptr %i.ao, align 4
  %i.ap = load ptr, ptr @atp_request_hash, align 8
  %i.aq = call ptr @wmem_map_lookup(ptr noundef %i.ap, ptr noundef nonnull %5) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond = select i1 %i.ar, i1 %i.ai, i1 false
  %i.as = icmp ugt i8 %i.q, 1
  %or.cond5 = select i1 %or.cond, i1 %i.as, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = call ptr @wmem_file_scope()
  %i.au = call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.at, i64 noundef 12) #8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %i.av = call ptr @wmem_file_scope()
  %i.aw = call noalias dereferenceable_or_null(1) ptr @wmem_alloc(ptr noundef %i.av, i64 noundef 1) #8 ; 3 uses
  store i8 %i.t, ptr %i.aw, align 1
  %i.ax = load ptr, ptr @atp_request_hash, align 8
  %i.ay = call ptr @wmem_map_insert(ptr noundef %i.ax, ptr noundef %i.au, ptr noundef %i.aw) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0158 = phi ptr [ %i.aw, %bb.d ], [ %i.aq, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.az = icmp ne ptr %.0158, null
  br label %6

6:                                                ; preds = %bb.e, %._crit_edge
  %.1 = phi i1 [ %i.az, %bb.e ], [ false, %._crit_edge ]
  br i1 %i.x, label %7, label %bb.f

7:                                                ; preds = %6
  %8 = and i32 %i.u, 16
  %.not172 = icmp eq i32 %8, 0
  %9 = and i1 %.not172, %.1
  %10 = zext i8 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %7, %6
  %.1.a = phi i1 [ %9, %7 ], [ false, %6 ]        ; 3 uses
  %.0159 = phi i32 [ %10, %7 ], [ 0, %6 ]         ; 2 uses
  %i.ba = load ptr, ptr %i.n, align 8
  call void @col_clear(ptr noundef %i.ba, i32 noundef 25)
  %i.bb = load ptr, ptr %i.n, align 8
  %i.bc = getelementptr i8, ptr %1, i64 416
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call ptr @val_to_str(ptr noundef %i.bd, i32 noundef %i.v, ptr noundef nonnull @atp_function_vals, ptr noundef nonnull @.str.436)
  %i.bf = zext i16 %i.r to i32                    ; 2 uses
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.bb, i32 noundef 25, ptr noundef nonnull @.str.440, ptr noundef %i.be, i32 noundef %i.bf)
  br i1 %.1.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.n, align 8
  call void @col_append_str(ptr noundef %i.bg, i32 noundef 25, ptr noundef nonnull @.str.441)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not173 = icmp eq ptr %2, null
  br i1 %.not173, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr @proto_atp, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bh, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.bj = load i32, ptr @ett_atp, align 4
  %i.bk = call ptr @proto_item_add_subtree(ptr noundef %i.bi, i32 noundef %i.bj) ; 7 uses
  %i.bl = select i1 %i.z, i32 8, i32 4
  call void @proto_item_set_len(ptr noundef %i.bk, i32 noundef %i.bl)
  %i.bm = load i32, ptr @hf_atp_ctrlinfo, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.bm, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.bo = load i32, ptr @ett_atp_info, align 4
  %i.bp = call ptr @proto_item_add_subtree(ptr noundef %i.bn, i32 noundef %i.bo) ; 5 uses
  %i.bq = load i32, ptr @hf_atp_function, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = load i32, ptr @hf_atp_xo, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.bs, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bu = load i32, ptr @hf_atp_eom, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.bu, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bw = load i32, ptr @hf_atp_sts, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.bw, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.by = and i32 %i.u, 224
  %i.bz = icmp eq i32 %i.by, 96
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr @hf_atp_treltimer, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.ca, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = load i32, ptr @hf_atp_bitmap, align 4   ; 2 uses
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %11 = zext i8 %i.q to i32                       ; 2 uses
  %i.cd = zext nneg i8 %i.t to i32
  %i.ce = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bk, i32 noundef %i.cc, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %11, ptr noundef nonnull @.str.442, i32 noundef %11, i32 noundef %i.cd) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.cc, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = load i32, ptr @hf_atp_tid, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.cg, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br i1 %i.z, label %.thread193, label %.thread

.thread193:                                       ; preds = %bb.n
  %i.ci = load i32, ptr @hf_atp_user_bytes, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.ci, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %is_ddp_address.exit.thread.sink.split

bb.o:                                             ; preds = %bb.h
  br i1 %i.z, label %is_ddp_address.exit.thread.sink.split, label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.0164184 = phi ptr [ null, %bb.o ], [ %i.bk, %bb.n ]
  %i.ck = getelementptr i8, ptr %1, i64 272       ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !8, !noundef !9
  %i.cm = load i8, ptr @atp_defragment, align 1, !range !8, !noundef !9
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond9 = select i1 %i.cn, i1 %i.x, i1 false
  br i1 %or.cond9, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread
  %i.co = icmp ne i32 %.0159, 0                   ; 2 uses
  %or.cond12 = select i1 %.1.a, i1 true, i1 %i.co
  br i1 %or.cond12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %spec.select = select i1 %i.co, i32 8, i32 4    ; 2 uses
  %i.cp = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %spec.select)
  %i.cq = call ptr @fragment_add_seq_check(ptr noundef nonnull @atp_reassembly_table, ptr noundef %0, i32 noundef %spec.select, ptr noundef %1, i32 noundef %i.bf, ptr noundef null, i32 noundef %.0159, i32 noundef %i.cp, i1 noundef zeroext %.1.a)
  %i.cr = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef 4, ptr noundef %1, ptr noundef nonnull @.str.443, ptr noundef %i.cq, ptr noundef nonnull @atp_frag_items, ptr noundef null, ptr noundef %.0164184)
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %.thread
  %i.cs = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 4)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0162 = phi ptr [ %i.cr, %bb.q ], [ %i.cs, %bb.r ] ; 7 uses
  %.not177 = icmp eq ptr %.0162, null
  br i1 %.not177, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %1, i64 288       ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 6
  br i1 %i.cv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr i8, ptr %1, i64 292       ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 6
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cz = load ptr, ptr @zip_atp_handle, align 8
  %i.da = call i32 @call_dissector_with_data(ptr noundef %i.cz, ptr noundef nonnull %.0162, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ae

bb.w:                                             ; preds = %bb.u
  %i.db = icmp eq i32 %i.cu, 72
  %i.dc = icmp eq i32 %i.cx, 72
  %or.cond180 = or i1 %i.db, %i.dc
  br i1 %or.cond180, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr @macip_atp_handle, align 8
  %i.de = call i32 @call_dissector_with_data(ptr noundef %i.dd, ptr noundef nonnull %.0162, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.df = load i8, ptr %4, align 4
  %.not178 = icmp eq i8 %i.df, 0
  br i1 %.not178, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr i8, ptr %1, i64 20
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = call ptr @conversation_get_dissector(ptr noundef %i.af, i32 noundef %i.dh)
  %.not179 = icmp eq ptr %i.di, null
  br i1 %.not179, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %.0162, i32 noundef 0)
  %i.dk = add i8 %i.dj, -9
  %or.cond15 = icmp ult i8 %i.dk, -8
  %pap_handle.val = load ptr, ptr @pap_handle, align 8
  %asp_handle.val = load ptr, ptr @asp_handle, align 8
  %.0.a = select i1 %or.cond15, ptr %pap_handle.val, ptr %asp_handle.val ; 2 uses
  %i.dl = call i32 @call_dissector_with_data(ptr noundef %.0.a, ptr noundef nonnull %.0162, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  call void @conversation_set_dissector(ptr noundef %i.af, ptr noundef %.0.a)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.dm = getelementptr i8, ptr %1, i64 284
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = call i32 @conversation_pt_to_conversation_type(i32 noundef %i.dn)
  %i.dp = load i32, ptr %i.ct, align 8
  %i.dq = load i32, ptr %i.cw, align 4
  %i.dr = call zeroext i1 @try_conversation_dissector(ptr noundef %i.a, ptr noundef %i.h, i32 noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef nonnull %.0162, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 0)
  br i1 %i.dr, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = call i32 @call_data_dissector(ptr noundef nonnull %.0162, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.s
  %i.dt = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 4)
  %i.du = call i32 @call_data_dissector(ptr noundef %i.dt, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.v, %bb.aa, %bb.ac, %bb.ab, %bb.x, %bb.ad
  store i8 %i.cl, ptr %i.ck, align 8
  br label %is_ddp_address.exit.thread.sink.split

is_ddp_address.exit.thread.sink.split:            ; preds = %bb.o, %.thread193, %bb.ae
  %i.dv = call i32 @tvb_captured_length(ptr noundef %0)
  br label %is_ddp_address.exit.thread

is_ddp_address.exit.thread:                       ; preds = %is_ddp_address.exit.thread.sink.split, %bb.b, %bb.a, %is_ddp_address.exit, %is_ddp_address.exit181
  %.0157 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %is_ddp_address.exit181 ], [ 0, %is_ddp_address.exit ], [ %i.dv, %is_ddp_address.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0157
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 7) i32 @dissect_asp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %is_ddp_address.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 208
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = load i32, ptr @atalk_address_type, align 4
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %is_ddp_address.exit, label %is_ddp_address.exit.thread

is_ddp_address.exit:                              ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 212
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %is_ddp_address.exit.thread

bb.c:                                             ; preds = %is_ddp_address.exit
  %i.i = getelementptr i8, ptr %1, i64 232
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %i.c
  br i1 %i.k, label %is_ddp_address.exit163, label %is_ddp_address.exit.thread

is_ddp_address.exit163:                           ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 236
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.d, label %is_ddp_address.exit.thread

bb.d:                                             ; preds = %is_ddp_address.exit163
  %i.o = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @col_set_str(ptr noundef %i.p, i32 noundef 35, ptr noundef nonnull @.str.260)
  %i.q = load ptr, ptr %i.o, align 8
  tail call void @col_clear(ptr noundef %i.q, i32 noundef 25)
  %i.r = tail call fastcc ptr @get_transaction(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %is_ddp_address.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.r, align 1               ; 4 uses
  %i.t = load i8, ptr %3, align 4
  %.not160 = icmp eq i8 %i.t, 0
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  br i1 %.not160, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %3, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.445, i32 noundef %i.x)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %1, i64 416
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext i8 %i.s to i32
  %i.ab = tail call ptr @val_to_str_ext(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @asp_func_vals_ext, ptr noundef nonnull @.str.436)
  %i.ac = getelementptr i8, ptr %3, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.446, ptr noundef %i.ab, i32 noundef %i.ae)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not161 = icmp eq ptr %2, null
  br i1 %.not161, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr @proto_asp, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.af, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ah = load i32, ptr @ett_asp, align 4
  %i.ai = tail call ptr @proto_item_add_subtree(ptr noundef %i.ag, i32 noundef %i.ah)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.a = phi ptr [ %i.ai, %bb.i ], [ null, %bb.h ] ; 29 uses
  %i.aj = load i8, ptr %3, align 4
  %.not162 = icmp eq i8 %i.aj, 0
  %i.ak = load i32, ptr @hf_asp_func, align 4     ; 2 uses
  br i1 %.not162, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %.0.a, i32 noundef %i.ak, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.s, label %bb.r [
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 1, label %bb.m
    i8 3, label %bb.n
    i8 8, label %bb.o
    i8 2, label %bb.p
    i8 6, label %bb.p
    i8 7, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr @hf_asp_socket, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %.0.a, i32 noundef %i.am, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_asp_version, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %.0.a, i32 noundef %i.ao, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %is_ddp_address.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.k
end_hunk_0
begin_hunk_1_@dissect_atp_zip:bb.a
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = load i32, ptr @atalk_address_type, align 4
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %is_ddp_address.exit, label %is_ddp_address.exit.thread

is_ddp_address.exit:                              ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 212
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.c, label %is_ddp_address.exit.thread

bb.c:                                             ; preds = %is_ddp_address.exit
  %i.j = getelementptr i8, ptr %1, i64 232
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, %i.d
  br i1 %i.l, label %is_ddp_address.exit75, label %is_ddp_address.exit.thread

is_ddp_address.exit75:                            ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 236
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.d, label %is_ddp_address.exit.thread

bb.d:                                             ; preds = %is_ddp_address.exit75
  %i.p = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @col_set_str(ptr noundef %i.q, i32 noundef 35, ptr noundef nonnull @.str.274)
  %i.r = load ptr, ptr %i.p, align 8
  tail call void @col_clear(ptr noundef %i.r, i32 noundef 25)
  %i.s = tail call fastcc ptr @get_transaction(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %is_ddp_address.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.s, align 1               ; 4 uses
  %i.v = load i8, ptr %3, align 4
  %.not70 = icmp eq i8 %i.v, 0
  %i.w = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %3, i64 2
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.w, i32 noundef 25, ptr noundef nonnull @.str.445, i32 noundef %i.z)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %1, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = zext i8 %i.u to i32
  %i.ad = tail call ptr @val_to_str(ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull @zip_atp_function_vals, ptr noundef nonnull @.str.436)
  %i.ae = getelementptr i8, ptr %3, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.w, i32 noundef 25, ptr noundef nonnull @.str.446, ptr noundef %i.ad, i32 noundef %i.ag)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not71 = icmp eq ptr %2, null
  br i1 %.not71, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %is_ddp_address.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = load i32, ptr @proto_zip, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ak = load i32, ptr @ett_zip, align 4
  %i.al = tail call ptr @proto_item_add_subtree(ptr noundef %i.aj, i32 noundef %i.ak) ; 7 uses
  %i.am = load i8, ptr %3, align 4
  %.not72 = icmp eq i8 %i.am, 0
  %i.an = load i32, ptr @hf_zip_atp_function, align 4 ; 2 uses
  br i1 %.not72, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.an, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.off = add i8 %i.u, -7
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @hf_zip_zero_value, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ap, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_zip_start_index, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ar, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.at = zext i8 %i.u to i32
  %i.au = tail call ptr @proto_tree_add_uint(ptr noundef %i.al, i32 noundef %i.an, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.at) ; 0 uses
  %.off73 = add i8 %i.u, -7
  %switch74 = icmp ult i8 %.off73, 3
  br i1 %switch74, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr @hf_zip_last_flag, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.av, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = load i32, ptr @hf_zip_zero_value, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ax, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr @hf_zip_count, align 4
  %i.ba = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.al, i32 noundef %i.az, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.bb = load i32, ptr @ett_zip_zones_list, align 4
  %i.bc = call ptr @proto_item_add_subtree(ptr noundef %i.ba, i32 noundef %i.bb)
  %i.bd = load i16, ptr %i.a, align 2
  %.not78 = icmp eq i16 %i.bd, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.077 = phi i32 [ %i.bk, %.lr.ph ], [ 0, %bb.o ]
  %.06576 = phi i32 [ %i.bj, %.lr.ph ], [ 4, %bb.o ] ; 3 uses
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06576)
  %i.bf = load i32, ptr @hf_zip_zone_name, align 4
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %i.bc, i32 noundef %i.bf, ptr noundef %0, i32 noundef %.06576, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = zext i8 %i.be to i32
  %i.bi = add i32 %.06576, 1
  %i.bj = add i32 %i.bi, %i.bh
  %i.bk = add nuw nsw i32 %.077, 1                ; 2 uses
  %i.bl = load i16, ptr %i.a, align 2
  %i.bm = zext i16 %i.bl to i32
  %i.bn = icmp samesign ult i32 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %bb.n, %bb.l, %bb.m
  %i.bo = call i32 @tvb_reported_length(ptr noundef %0)
  br label %is_ddp_address.exit.thread

is_ddp_address.exit.thread:                       ; preds = %bb.c, %bb.b, %is_ddp_address.exit, %is_ddp_address.exit75, %bb.a, %.loopexit, %bb.j, %bb.e
  %.066 = phi i32 [ 0, %bb.a ], [ %i.bo, %.loopexit ], [ %i.ah, %bb.j ], [ %i.t, %bb.e ], [ 0, %is_ddp_address.exit75 ], [ 0, %is_ddp_address.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.066
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_rtmp_request(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.282)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i8 %i.d to i32                      ; 2 uses
  %i.i = tail call ptr @val_to_str(ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull @rtmp_function_vals, ptr noundef nonnull @.str.455)
  tail call void @col_add_str(ptr noundef %i.e, i32 noundef 25, ptr noundef %i.i)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @proto_rtmp, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.l = load i32, ptr @ett_rtmp, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l)
  %i.n = load i32, ptr @hf_rtmp_function, align 4
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.h) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.p
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_rtmp_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.282)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp ult i8 %i.e, 9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.i = zext i8 %i.h to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0102 = phi i16 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.0101 = phi i32 [ 1, %bb.b ], [ 2, %bb.c ]     ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = zext i16 %i.d to i32                     ; 2 uses
  %i.m = zext i16 %.0102 to i32                   ; 2 uses
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.k, i32 noundef 25, ptr noundef nonnull @.str.456, i32 noundef %i.l, i32 noundef %i.f, i32 noundef %i.m)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr @proto_rtmp, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.p = load i32, ptr @ett_rtmp, align 4
  %i.q = tail call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 7 uses
  %i.r = load i32, ptr @hf_rtmp_net, align 4
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.l) ; 0 uses
  %i.t = load i32, ptr @hf_rtmp_node_len, align 4
  %i.u = tail call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %i.f) ; 0 uses
  %i.v = load i32, ptr @hf_rtmp_node, align 4
  %i.w = tail call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.v, ptr noundef %0, i32 noundef 3, i32 noundef %.0101, i32 noundef %i.m) ; 0 uses
  %i.x = add nuw nsw i32 %.0101, 3                ; 2 uses
  %i.y = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.x)
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr @hf_rtmp_version, align 4
  %i.ab = add nuw nsw i32 %.0101, 5
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add nuw nsw i32 %.0101, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0104.a = phi i32 [ %i.ad, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ae = tail call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %.0104.a)
  br i1 %i.ae, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.n
  %.0101108 = phi i32 [ %i.bl, %bb.n ], [ %.0104.a, %bb.g ] ; 10 uses
  %.1107 = phi i32 [ %i.bm, %bb.n ], [ 1, %bb.g ] ; 4 uses
  %i.af = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0101108) ; 2 uses
  %i.ag = add i32 %.0101108, 2                    ; 3 uses
  %i.ah = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ag) ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %.not106 = icmp sgt i8 %i.ah, -1
  br i1 %.not106, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.aj = add i32 %.0101108, 3                    ; 2 uses
  %i.ak = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aj)
  %i.al = add i32 %.0101108, 5                    ; 2 uses
  %i.am = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.al) ; 2 uses
  %i.an = icmp eq i32 %.1107, 1                   ; 2 uses
  %i.ao = load i32, ptr @ett_rtmp_tuple, align 4  ; 2 uses
  %i.ap = zext i16 %i.af to i32                   ; 3 uses
  %i.aq = and i32 %i.ai, 127                      ; 3 uses
  %i.ar = zext i16 %i.ak to i32                   ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = zext i8 %i.am to i32
  %i.at = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.q, ptr noundef %0, i32 noundef %.0101108, i32 noundef 6, i32 noundef %i.ao, ptr noundef null, ptr noundef nonnull @.str.457, i32 noundef 1, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.q, ptr noundef %0, i32 noundef %.0101108, i32 noundef 6, i32 noundef %i.ao, ptr noundef null, ptr noundef nonnull @.str.458, i32 noundef %.1107, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.au, %bb.j ], [ %i.at, %bb.i ] ; 4 uses
  %i.av = load i32, ptr @hf_rtmp_tuple_range_start, align 4
  %i.aw = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.av, ptr noundef %0, i32 noundef %.0101108, i32 noundef 2, i32 noundef %i.ap) ; 0 uses
  %i.ax = load i32, ptr @hf_rtmp_tuple_dist, align 4
  %i.ay = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef %i.aq) ; 0 uses
  %i.az = load i32, ptr @hf_rtmp_tuple_range_end, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.aj, i32 noundef 2, i32 noundef 0) ; 0 uses
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr @hf_rtmp_version, align 4
  %i.bc = zext i8 %i.am to i32
  %i.bd = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef %i.bc) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr @ett_rtmp_tuple, align 4
  %i.bf = zext i16 %i.af to i32                   ; 2 uses
  %i.bg = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.q, ptr noundef %0, i32 noundef %.0101108, i32 noundef 3, i32 noundef %i.be, ptr noundef null, ptr noundef nonnull @.str.459, i32 noundef %.1107, i32 noundef %i.bf, i32 noundef %i.ai) ; 2 uses
  %i.bh = load i32, ptr @hf_rtmp_tuple_net, align 4
  %i.bi = tail call ptr @proto_tree_add_uint(ptr noundef %i.bg, i32 noundef %i.bh, ptr noundef %0, i32 noundef %.0101108, i32 noundef 2, i32 noundef %i.bf) ; 0 uses
  %i.bj = load i32, ptr @hf_rtmp_tuple_dist, align 4
  %i.bk = tail call ptr @proto_tree_add_uint(ptr noundef %i.bg, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef %i.ai) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sink = phi i32 [ 3, %bb.m ], [ 6, %bb.l ], [ 6, %bb.k ]
  %i.bl = add i32 %.0101108, %.sink               ; 2 uses
  %i.bm = add i32 %.1107, 1
  %i.bn = tail call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.bl)
  br i1 %i.bn, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.n, %bb.g, %bb.d
  %i.bo = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.bo
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @address_type_dissector_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @atalk_to_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2) #1 {
bb.a:
  %3 = alloca %struct.atalk_ddp_addr, align 4     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 1              ; 2 uses
  store i32 %i.c, ptr %3, align 4
  %i.d = trunc i32 %i.c to i16
  %i.e = tail call ptr @word_to_hex(ptr noundef %1, i16 noundef zeroext %i.d) ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1
  store i8 46, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = call ptr @bytes_to_hexstr(ptr noundef %i.f, ptr noundef nonnull %i.g, i64 noundef 1)
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @atalk_str_len(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef nonnull ptr @atalk_col_filter_str(ptr nofree readnone captures(none) %0, i1 noundef zeroext %1) #3 {
bb.a:
  %.str.21..str.17 = select i1 %1, ptr @.str.21, ptr @.str.17
  ret ptr %.str.21..str.17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @atalk_len() #3 {
bb.a:
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_atalk() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.8, i32 noundef 32923, ptr noundef %i.a)
  %i.b = load ptr, ptr @ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.289, i32 noundef 32923, ptr noundef %i.b)
  %i.c = load ptr, ptr @ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.290, i32 noundef 41, ptr noundef %i.c)
  %i.d = load ptr, ptr @ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.291, i32 noundef 16, ptr noundef %i.d)
  %i.e = load ptr, ptr @ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.292, i32 noundef 221, ptr noundef %i.e)
  %i.f = load ptr, ptr @nbp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 2, ptr noundef %i.f)
  %i.g = load ptr, ptr @nbp_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.293, ptr noundef %i.g)
  %i.h = load ptr, ptr @atp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 3, ptr noundef %i.h)
  %i.i = load ptr, ptr @rtmp_request_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 5, ptr noundef %i.i)
  %i.j = load ptr, ptr @rtmp_data_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef %i.j)
  %i.k = load ptr, ptr @zip_ddp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 6, ptr noundef %i.k)
  %i.l = load ptr, ptr @macip_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 22, ptr noundef %i.l)
  %i.m = load ptr, ptr @adsp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef %i.m)
  %i.n = load ptr, ptr @llap_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.294, i32 noundef 30, ptr noundef %i.n)
  %i.o = load ptr, ptr @llap_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.295, i32 noundef 32923, ptr noundef %i.o)
  %i.p = load ptr, ptr @llap_cap_handle, align 8
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.294, i32 noundef 30, ptr noundef %i.p)
  tail call void @reassembly_table_register(ptr noundef nonnull @atp_reassembly_table, ptr noundef nonnull @addresses_reassembly_table_functions)
  %i.q = tail call ptr @wmem_epan_scope()
  %i.r = tail call ptr @wmem_file_scope()
  %i.s = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.q, ptr noundef %i.r, ptr noundef nonnull @asp_hash, ptr noundef nonnull @asp_equal)
  store ptr %i.s, ptr @atp_request_hash, align 8
  %i.t = tail call ptr @wmem_epan_scope()
  %i.u = tail call ptr @wmem_file_scope()
  %i.v = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.t, ptr noundef %i.u, ptr noundef nonnull @asp_hash, ptr noundef nonnull @asp_equal)
  store ptr %i.v, ptr @asp_request_hash, align 8
  %i.w = load i32, ptr @proto_asp, align 4
  %i.x = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.296, i32 noundef %i.w)
  store ptr %i.x, ptr @afp_handle, align 8
  %i.y = load i32, ptr @proto_asp, align 4
  %i.z = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.297, i32 noundef %i.y)
  store ptr %i.z, ptr @afp_server_status_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new_autoreset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @asp_hash(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @asp_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i16, ptr %i.f, align 4
  %i.h = icmp eq i16 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 4
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.i, align 1
  %i.l = load i32, ptr %i.j, align 1
  %i.m = icmp ne i32 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

end_hunk_1
