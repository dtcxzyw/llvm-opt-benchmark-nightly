Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-m2ua?download=true
inline.NumInlined: 32
inline.NumDeleted: 32
begin_hunk_0_@dissect_m2ua:bb.a
  %i.z = load i32, ptr @hf_message_length, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.f, i32 noundef %i.z, ptr noundef %i.g, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_message.exit

dissect_message.exit:                             ; preds = %bb.a, %bb.b
  tail call fastcc void @dissect_parameters(ptr noundef %i.h, ptr noundef %1, ptr noundef %2, ptr noundef %i.f)
  %i.ab = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ab
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_m2ua() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_m2ua, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.82, i32 noundef %i.a)
  store ptr %i.b, ptr @mtp3_handle, align 8
  %i.c = load ptr, ptr @m2ua_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.83, i32 noundef 2, ptr noundef %i.c)
  %i.d = load ptr, ptr @m2ua_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.84, i32 noundef 2904, ptr noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 29 uses
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not27 = icmp eq i32 %i.b, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %dissect_parameter.exit
  %i.d = phi i32 [ %i.b, %.lr.ph ], [ %i.hi, %dissect_parameter.exit ] ; 2 uses
  %.02128 = phi i32 [ 0, %.lr.ph ], [ %i.hh, %dissect_parameter.exit ] ; 3 uses
  %i.e = add i32 %.02128, 2
  %i.f = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.e)
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 3
  %i.i = and i32 %i.h, 131068                     ; 2 uses
  %.not23 = icmp slt i32 %i.d, %i.g
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.d)
  %.0 = select i1 %.not23, i32 %i.i, i32 %i.j     ; 2 uses
  %i.k = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.02128, i32 noundef %.0) ; 76 uses
  call void @increment_dissection_depth(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.l = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 0), !inline_history !6 ; 3 uses
  %i.m = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2), !inline_history !6 ; 3 uses
  %i.n = call i32 @tvb_reported_length(ptr noundef %i.k), !inline_history !6
  %i.o = zext i16 %i.m to i32
  %i.p = trunc i32 %i.n to i16                    ; 2 uses
  %i.q = sub i16 %i.p, %i.m
  %i.r = load i32, ptr @ett_m2ua_parameter, align 4
  %i.s = zext i16 %i.l to i32
  %i.t = call ptr @val_to_str_const(i32 noundef %i.s, ptr noundef nonnull @parameter_tag_values, ptr noundef nonnull @.str.242), !inline_history !6
  %i.u = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %i.k, i32 noundef 0, i32 noundef -1, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef %i.t), !inline_history !6 ; 37 uses
  %i.v = load i32, ptr @protocol_data_1_global, align 4
  %i.w = icmp eq i32 %i.v, 14
  %i.x = icmp eq i16 %i.l, 14
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  %i.y = load i32, ptr @hf_parameter_tag, align 4 ; 2 uses
  br i1 %or.cond.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.z = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.u, i32 noundef %i.y, ptr noundef %i.k, i32 noundef 0, i32 noundef 2, i32 noundef 14, ptr noundef nonnull @.str.243), !inline_history !6 ; 0 uses
  %i.aa = load i32, ptr @hf_parameter_length, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.aa, ptr noundef %i.k, i32 noundef 2, i32 noundef 2, i32 noundef 0), !inline_history !6 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.y, ptr noundef %i.k, i32 noundef 0, i32 noundef 2, i32 noundef 0), !inline_history !6 ; 0 uses
  %i.ad = load i32, ptr @hf_parameter_length, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ad, ptr noundef %i.k, i32 noundef 2, i32 noundef 2, i32 noundef 0), !inline_history !6 ; 0 uses
  switch i16 %i.l, label %bb.af [
    i16 1, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 7, label %bb.g
    i16 8, label %bb.h
    i16 9, label %bb.i
    i16 11, label %bb.j
    i16 12, label %bb.k
    i16 13, label %bb.l
    i16 17, label %bb.m
    i16 19, label %bb.n
    i16 768, label %bb.o
    i16 769, label %bb.p
    i16 770, label %bb.q
    i16 771, label %bb.r
    i16 772, label %bb.s
    i16 773, label %bb.t
    i16 774, label %bb.u
    i16 775, label %bb.v
    i16 776, label %bb.w
    i16 777, label %bb.x
    i16 778, label %bb.y
    i16 779, label %bb.z
    i16 780, label %bb.aa
    i16 781, label %bb.ab
    i16 782, label %bb.ac
    i16 783, label %bb.ad
    i16 784, label %bb.ae
  ]

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = load i32, ptr @hf_interface_id_int, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ag, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ai = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.af, ptr noundef nonnull @.str.244, i32 noundef %i.ai)
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.al = add i16 %i.ak, -4
  %i.am = load i32, ptr @hf_interface_id_text, align 4
  %i.an = zext i16 %i.al to i32                   ; 2 uses
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.am, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.an, i32 noundef 0) ; 0 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = call ptr @tvb_format_text(ptr noundef %i.ap, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.an)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aj, ptr noundef nonnull @.str.245, ptr noundef %i.aq)
  br label %bb.ah

bb.f:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.at = add i16 %i.as, -4
  %i.au = load i32, ptr @hf_info_string, align 4
  %i.av = zext i16 %i.at to i32                   ; 2 uses
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.au, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.av, i32 noundef 0) ; 0 uses
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = call ptr @tvb_format_text(ptr noundef %i.ax, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.av)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ar, ptr noundef nonnull @.str.245, ptr noundef %i.ay)
  br label %bb.ah

bb.g:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.bb = add i16 %i.ba, -4                       ; 2 uses
  %i.bc = load i32, ptr @hf_diagnostic_information, align 4
  %i.bd = zext i16 %i.bb to i32                   ; 2 uses
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.bc, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %i.bf = icmp eq i16 %i.bb, 1
  %i.bg = select i1 %i.bf, ptr @.str.247, ptr @.str.248
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.az, ptr noundef nonnull @.str.246, i32 noundef %i.bd, ptr noundef nonnull %i.bg)
  br label %bb.ah

bb.h:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2) ; 3 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -4
  %i.bl = sdiv i32 %i.bk, 8                       ; 2 uses
  %.not.i25 = icmp ult i16 %i.bi, 12
  br i1 %.not.i25, label %dissect_interface_identifier_range_parameter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.016.i.a = phi i32 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.h ]
  %.016.i = phi i32 [ %i.br, %.lr.ph.i ], [ 4, %bb.h ] ; 3 uses
  %i.bm = load i32, ptr @hf_interface_id_start, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.bm, ptr noundef %i.k, i32 noundef %.016.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bo = load i32, ptr @hf_interface_id_stop, align 4
  %i.bp = add nuw nsw i32 %.016.i, 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.bo, ptr noundef %i.k, i32 noundef %i.bp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.br = add nuw nsw i32 %.016.i, 8
  %indvars.iv.next.i = add nuw nsw i32 %.016.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %i.bl
  br i1 %exitcond.not.i, label %dissect_interface_identifier_range_parameter.exit, label %.lr.ph.i, !llvm.loop !7

dissect_interface_identifier_range_parameter.exit: ; preds = %.lr.ph.i, %bb.h
  %i.bs = add i16 %i.bi, -12
  %i.bt = icmp ult i16 %i.bs, 8
  %i.bu = select i1 %i.bt, ptr @.str.247, ptr @.str.248
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bh, ptr noundef nonnull @.str.249, i32 noundef %i.bl, ptr noundef nonnull %i.bu)
  br label %bb.ah

bb.i:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.bx = add i16 %i.bw, -4                       ; 2 uses
  %i.by = load i32, ptr @hf_heartbeat_data, align 4
  %i.bz = zext i16 %i.bx to i32                   ; 2 uses
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.by, ptr noundef %i.k, i32 noundef 4, i32 noundef %i.bz, i32 noundef 0) ; 0 uses
  %i.cb = icmp eq i16 %i.bx, 1
  %i.cc = select i1 %i.cb, ptr @.str.247, ptr @.str.248
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bv, ptr noundef nonnull @.str.246, i32 noundef %i.bz, ptr noundef nonnull %i.cc)
  br label %bb.ah

bb.j:                                             ; preds = %bb.c
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = load i32, ptr @hf_traffic_mode_type, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ce, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cg = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.ch = call ptr @val_to_str_const(i32 noundef %i.cg, ptr noundef nonnull @traffic_mode_type_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cd, ptr noundef nonnull @.str.245, ptr noundef %i.ch)
  br label %bb.ah

bb.k:                                             ; preds = %bb.c
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = load i32, ptr @hf_error_code, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.cj, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cl = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.cm = call ptr @val_to_str_const(i32 noundef %i.cl, ptr noundef nonnull @error_code_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ci, ptr noundef nonnull @.str.245, ptr noundef %i.cm)
  br label %bb.ah

bb.l:                                             ; preds = %bb.c
  %i.cn = load ptr, ptr %i.a, align 8
  %i.co = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 4)
  %i.cp = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 6)
  %i.cq = load i32, ptr @hf_status_type, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.cq, ptr noundef %i.k, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_status_ident, align 4
  %i.ct = zext i16 %i.cp to i32                   ; 3 uses
  %i.cu = zext i16 %i.co to i32
  %i.cv = shl nuw i32 %i.cu, 16
  %i.cw = or disjoint i32 %i.cv, %i.ct            ; 2 uses
  %i.cx = call ptr @val_to_str_const(i32 noundef %i.cw, ptr noundef nonnull @status_type_id_values, ptr noundef nonnull @.str.250)
  %i.cy = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.u, i32 noundef %i.cs, ptr noundef %i.k, i32 noundef 6, i32 noundef 2, i32 noundef %i.ct, ptr noundef nonnull @.str.251, i32 noundef %i.ct, ptr noundef %i.cx) ; 0 uses
  %i.cz = call ptr @val_to_str_const(i32 noundef %i.cw, ptr noundef nonnull @status_type_id_values, ptr noundef nonnull @.str.252)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cn, ptr noundef nonnull @.str.245, ptr noundef %i.cz)
  br label %bb.ah

bb.m:                                             ; preds = %bb.c
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = load i32, ptr @hf_asp_id, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.db, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dd = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.da, ptr noundef nonnull @.str.260, i32 noundef %i.dd)
  br label %bb.ah

bb.n:                                             ; preds = %bb.c
  %i.de = load ptr, ptr %i.a, align 8
  %i.df = load i32, ptr @hf_correlation_id, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.df, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dh = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.de, ptr noundef nonnull @.str.260, i32 noundef %i.dh)
  br label %bb.ah

bb.o:                                             ; preds = %.thread, %bb.c
  %i.di = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dj = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -4
  %i.dm = call ptr @tvb_new_subset_length(ptr noundef %i.k, i32 noundef 4, i32 noundef %i.dl)
  call void @proto_item_set_len(ptr noundef %i.di, i32 noundef 4)
  %i.dn = load ptr, ptr @mtp3_handle, align 8
  %i.do = call i32 @call_dissector(ptr noundef %i.dn, ptr noundef %i.dm, ptr noundef %1, ptr noundef %2) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.di, ptr noundef nonnull @.str.261)
  br label %bb.ah

bb.p:                                             ; preds = %bb.c
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2)
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -5
  %i.dt = load i32, ptr @hf_data_2_li, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.dt, ptr noundef %i.k, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dv = call ptr @tvb_new_subset_length(ptr noundef %i.k, i32 noundef 5, i32 noundef %i.ds)
  call void @proto_item_set_len(ptr noundef %i.dp, i32 noundef 5)
  %i.dw = load ptr, ptr @mtp3_handle, align 8
  %i.dx = call i32 @call_dissector(ptr noundef %i.dw, ptr noundef %i.dv, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.ah

bb.q:                                             ; preds = %bb.c
  %i.dy = load ptr, ptr %i.a, align 8
  %i.dz = load i32, ptr @hf_state, align 4
  %i.ea = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.dz, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eb = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.ec = call ptr @val_to_str_const(i32 noundef %i.eb, ptr noundef nonnull @state_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dy, ptr noundef nonnull @.str.245, ptr noundef %i.ec)
  br label %bb.ah

bb.r:                                             ; preds = %bb.c
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = load i32, ptr @hf_event, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ee, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eg = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.eh = call ptr @val_to_str_const(i32 noundef %i.eg, ptr noundef nonnull @event_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ed, ptr noundef nonnull @.str.245, ptr noundef %i.eh)
  br label %bb.ah

bb.s:                                             ; preds = %bb.c
  %i.ei = load ptr, ptr %i.a, align 8
  %i.ej = load i32, ptr @hf_congestion_status, align 4
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ej, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.el = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.em = call ptr @val_to_str_const(i32 noundef %i.el, ptr noundef nonnull @level_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ei, ptr noundef nonnull @.str.245, ptr noundef %i.em)
  br label %bb.ah

bb.t:                                             ; preds = %bb.c
  %i.en = load ptr, ptr %i.a, align 8
  %i.eo = load i32, ptr @hf_discard_status, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.eo, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eq = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.er = call ptr @val_to_str_const(i32 noundef %i.eq, ptr noundef nonnull @level_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.en, ptr noundef nonnull @.str.245, ptr noundef %i.er)
  br label %bb.ah

bb.u:                                             ; preds = %bb.c
  %i.es = load ptr, ptr %i.a, align 8
  %i.et = load i32, ptr @hf_action, align 4
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.et, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ev = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.ew = call ptr @val_to_str_const(i32 noundef %i.ev, ptr noundef nonnull @action_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.es, ptr noundef nonnull @.str.245, ptr noundef %i.ew)
  br label %bb.ah

bb.v:                                             ; preds = %bb.c
  %i.ex = load ptr, ptr %i.a, align 8
  %i.ey = load i32, ptr @hf_sequence_number, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ey, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fa = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ex, ptr noundef nonnull @.str.260, i32 noundef %i.fa)
  br label %bb.ah

bb.w:                                             ; preds = %bb.c
  %i.fb = load ptr, ptr %i.a, align 8
  %i.fc = load i32, ptr @hf_retrieval_result, align 4
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fc, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fe = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  %i.ff = call ptr @val_to_str_const(i32 noundef %i.fe, ptr noundef nonnull @retrieval_result_values, ptr noundef nonnull @.str.250)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fb, ptr noundef nonnull @.str.245, ptr noundef %i.ff)
  br label %bb.ah

bb.x:                                             ; preds = %bb.c
  %i.fg = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2), !inline_history !9
  %i.fh = add i16 %i.fg, -4
  %i.fi = zext i16 %i.fh to i32
  %i.fj = call ptr @tvb_new_subset_length(ptr noundef %i.k, i32 noundef 4, i32 noundef %i.fi), !inline_history !9
  call fastcc void @dissect_parameters(ptr noundef %i.fj, ptr noundef %1, ptr noundef %2, ptr noundef %i.u), !inline_history !9
  br label %bb.ah

bb.y:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %i.a, align 8
  %i.fl = load i32, ptr @hf_local_lk_id, align 4
  %i.fm = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fl, ptr noundef %i.k, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fn = call i32 @tvb_get_ntohl(ptr noundef %i.k, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fk, ptr noundef nonnull @.str.260, i32 noundef %i.fn)
  br label %bb.ah

bb.z:                                             ; preds = %bb.c
  %i.fo = load ptr, ptr %i.a, align 8
  %i.fp = load i32, ptr @hf_sdt_reserved, align 4
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fp, ptr noundef %i.k, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_sdt_id, align 4
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fr, ptr noundef %i.k, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ft = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 6)
  %i.fu = zext i16 %i.ft to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fo, ptr noundef nonnull @.str.260, i32 noundef %i.fu)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.c
  %i.fv = load ptr, ptr %i.a, align 8
  %i.fw = load i32, ptr @hf_sdl_reserved, align 4
  %i.fx = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fw, ptr noundef %i.k, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fy = load i32, ptr @hf_sdl_id, align 4
  %i.fz = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.fy, ptr noundef %i.k, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ga = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 6)
  %i.gb = zext i16 %i.ga to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fv, ptr noundef nonnull @.str.260, i32 noundef %i.gb)
  br label %bb.ah

bb.ab:                                            ; preds = %bb.c
  %i.gc = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.k, i32 noundef 2), !inline_history !10
  %i.gd = add i16 %i.gc, -4
  %i.ge = zext i16 %i.gd to i32
end_hunk_0
