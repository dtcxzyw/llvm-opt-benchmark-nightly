inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@proto_register_dtpt:bb.a
  store ptr %i.e, ptr @dtpt_conversation_handle, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare void @guids_add_guid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dtpt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i8 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  switch i8 %i.b, label %bb.r [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 1, label %bb.d
    i8 90, label %bb.d
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not63 = icmp eq i32 %i.d, 20
  br i1 %.not63, label %bb.e, label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not62 = icmp eq i32 %i.e, 36
  br i1 %.not62, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 35, ptr noundef nonnull @.str.180)
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %1, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @val_to_str(ptr noundef %i.j, i32 noundef %i.c, ptr noundef nonnull @names_message_type, ptr noundef nonnull @.str.209)
  tail call void @col_add_str(ptr noundef %i.h, i32 noundef 25, ptr noundef %i.k)
  %i.l = icmp eq i8 %i.b, 9
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.n = load ptr, ptr @dtpt_conversation_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = load i32, ptr @proto_dtpt, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.q = load i32, ptr @ett_dtpt, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 18 uses
  %.not64 = icmp eq ptr %i.r, null
  br i1 %.not64, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr @hf_dtpt_version, align 4
  %i.t = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.u = load i32, ptr @hf_dtpt_message_type, align 4
  %i.v = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.r, i32 noundef %i.u, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.c) ; 0 uses
  switch i8 %i.b, label %bb.q [
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.k
    i8 12, label %bb.l
    i8 13, label %bb.m
    i8 1, label %bb.n
    i8 90, label %bb.o
    i8 91, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr @hf_dtpt_flags, align 4
  %i.x = load i32, ptr @ett_dtpt_flags, align 4
  %i.y = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %i.r, ptr noundef %0, i32 noundef 12, i32 noundef %i.w, i32 noundef %i.x, ptr noundef nonnull @dissect_dtpt.flags, i32 noundef -2147483648) ; 0 uses
  %i.z = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16)
  %i.aa = load i32, ptr @hf_dtpt_payload_size, align 4
  %i.ab = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.r, i32 noundef %i.aa, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef %i.z) ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ac = load i32, ptr @hf_dtpt_handle, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ac, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ae = load i32, ptr @hf_dtpt_error, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ae, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ag = load i32, ptr @hf_dtpt_handle, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ag, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ai = load i32, ptr @hf_dtpt_buffer_size, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ai, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.ak = load i32, ptr @hf_dtpt_error, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ak, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.am = load i32, ptr @hf_dtpt_data_size, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.am, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ao = load i32, ptr @hf_dtpt_handle, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ao, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.aq = load i32, ptr @hf_dtpt_connect_addr, align 4
  %i.ar = tail call fastcc i32 @dissect_dtpt_sockaddr(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.r, ptr noundef %1, i32 noundef %i.aq, i32 noundef 2) ; 0 uses
  %i.as = load i32, ptr @hf_dtpt_error, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.as, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.h
  %i.au = load i32, ptr @hf_dtpt_connect_addr, align 4
  %i.av = tail call fastcc i32 @dissect_dtpt_sockaddr(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.r, ptr noundef %1, i32 noundef %i.au, i32 noundef 2) ; 0 uses
  %i.aw = load i32, ptr @hf_dtpt_error, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.aw, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ay = load i32, ptr @hf_dtpt_connect_addr, align 4
  %i.az = tail call fastcc i32 @dissect_dtpt_sockaddr(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.r, ptr noundef %1, i32 noundef %i.ay, i32 noundef 2) ; 0 uses
  %i.ba = load i32, ptr @hf_dtpt_error, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.r, i32 noundef %i.ba, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.g
  %i.bc = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a, %bb.q
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ], [ %i.bc, %bb.q ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dtpt_conversation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = tail call i32 @dissect_dtpt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.e = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.e, 60
  br i1 %.not.i, label %bb.c, label %dissect_dtpt_data.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 4)
  %.not276.i = icmp eq i32 %i.f, 60
  br i1 %.not276.i, label %bb.d, label %dissect_dtpt_data.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @col_set_str(ptr noundef %i.h, i32 noundef 35, ptr noundef nonnull @.str.180)
  %i.i = load ptr, ptr %i.g, align 8
  tail call void @col_set_str(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.211)
  %i.j = load i32, ptr @proto_dtpt, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 5 uses
  %i.l = load i32, ptr @ett_dtpt, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 14 uses
  %.not277.i = icmp eq ptr %i.m, null             ; 5 uses
  br i1 %.not277.i, label %.split.i, label %.split261.i

.split.i:                                         ; preds = %bb.d
  %i.n = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 64) ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @tvb_get_string_enc(ptr noundef %i.p, ptr noundef %0, i32 noundef 68, i32 noundef %i.n, i32 noundef -2147483644) ; 0 uses
  %4 = add i32 %i.n, 3
  %i.r = and i32 %4, -4                           ; 2 uses
  %i.s = add i32 %i.r, 68
  %i.t = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.s)
  %i.u = add i32 %i.r, 72
  %i.v = add i32 %i.u, %i.t                       ; 2 uses
  %i.w = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.v) ; 2 uses
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = add i32 %i.v, 4                          ; 2 uses
  %i.z = tail call ptr @tvb_get_string_enc(ptr noundef %i.x, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.w, i32 noundef -2147483644) ; 0 uses
  %5 = add i32 %i.w, 3
  %i.aa = and i32 %5, -4
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ab)
  %i.ad = add i32 %i.ab, 4
  %i.ae = add i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ae) ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8
  %i.ah = add i32 %i.ae, 4                        ; 2 uses
  %i.ai = tail call ptr @tvb_get_string_enc(ptr noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.af, i32 noundef -2147483644) ; 0 uses
  %6 = add i32 %i.af, 3
  %i.aj = and i32 %6, -4
  %i.ak = add i32 %i.ah, %i.aj
  br label %bb.e

.split261.i:                                      ; preds = %bb.d
  %i.al = load i32, ptr @hf_dtpt_queryset_rawsize, align 4
  %i.am = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.m, i32 noundef %i.al, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 60) ; 0 uses
  %i.an = load i32, ptr @ett_dtpt_queryset, align 4
  %i.ao = tail call ptr @proto_tree_add_subtree(ptr noundef nonnull %i.m, ptr noundef %0, i32 noundef 4, i32 noundef 60, i32 noundef %i.an, ptr noundef null, ptr noundef nonnull @.str.212) ; 15 uses
  %i.ap = load i32, ptr @hf_dtpt_queryset_size, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ar = load i32, ptr @hf_dtpt_queryset_service_instance_name_pointer, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ar, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.at = load i32, ptr @hf_dtpt_queryset_service_class_id_pointer, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.at, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.av = load i32, ptr @hf_dtpt_queryset_version, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.av, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ax = load i32, ptr @hf_dtpt_queryset_comment_pointer, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ax, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.az = load i32, ptr @hf_dtpt_queryset_namespace, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.az, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bb = load i32, ptr @hf_dtpt_queryset_provider_id_pointer, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bb, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bd = load i32, ptr @hf_dtpt_queryset_context_pointer, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bd, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bf = load i32, ptr @hf_dtpt_queryset_protocols_number, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bf, ptr noundef %0, i32 noundef 36, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bh = load i32, ptr @hf_dtpt_queryset_protocols_pointer, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bh, ptr noundef %0, i32 noundef 40, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bj = load i32, ptr @hf_dtpt_queryset_query_string_pointer, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bj, ptr noundef %0, i32 noundef 44, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bl = load i32, ptr @hf_dtpt_queryset_cs_addrs_number, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bl, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bn = load i32, ptr @hf_dtpt_queryset_cs_addrs_pointer, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bn, ptr noundef %0, i32 noundef 52, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bp = load i32, ptr @hf_dtpt_queryset_output_flags, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bp, ptr noundef %0, i32 noundef 56, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.br = load i32, ptr @hf_dtpt_queryset_blob_pointer, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.br, ptr noundef %0, i32 noundef 60, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bt = load i32, ptr @hf_dtpt_service_instance_name, align 4
  %i.bu = tail call fastcc i32 @dissect_dtpt_wstring(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %i.m, ptr noundef readonly %1, i32 noundef %i.bt)
  %i.bv = load i32, ptr @hf_dtpt_service_class_id, align 4
  %i.bw = tail call fastcc i32 @dissect_dtpt_guid(ptr noundef %0, i32 noundef %i.bu, ptr noundef nonnull %i.m, ptr noundef readonly %1, i32 noundef %i.bv)
  %i.bx = load i32, ptr @hf_dtpt_comment, align 4
  %i.by = tail call fastcc i32 @dissect_dtpt_wstring(ptr noundef %0, i32 noundef %i.bw, ptr noundef nonnull %i.m, ptr noundef readonly %1, i32 noundef %i.bx)
  %i.bz = load i32, ptr @hf_dtpt_ns_provider_id, align 4
  %i.ca = tail call fastcc i32 @dissect_dtpt_guid(ptr noundef %0, i32 noundef %i.by, ptr noundef nonnull %i.m, ptr noundef readonly %1, i32 noundef %i.bz)
  %i.cb = load i32, ptr @hf_dtpt_context, align 4
  %i.cc = tail call fastcc i32 @dissect_dtpt_wstring(ptr noundef %0, i32 noundef %i.ca, ptr noundef nonnull %i.m, ptr noundef readonly %1, i32 noundef %i.cb)
  br label %bb.e

bb.e:                                             ; preds = %.split261.i, %.split.i
  %phi.call.i = phi i32 [ %i.cc, %.split261.i ], [ %i.ak, %.split.i ] ; 7 uses
  %i.cd = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %phi.call.i) ; 5 uses
  %.not278.i = icmp eq i32 %i.cd, 0               ; 2 uses
  br i1 %.not278.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = add i32 %phi.call.i, 4
  %i.cf = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ce)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre.i = phi i32 [ 8, %bb.f ], [ 4, %bb.e ]    ; 3 uses
  %.0252.i = phi i32 [ %i.cf, %bb.f ], [ 0, %bb.e ]
  %.pre304.i = shl i32 %i.cd, 3                   ; 2 uses
  br i1 %.not277.i, label %.loopexit292.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = add i32 %.pre.i, %.pre304.i
  %i.ch = load i32, ptr @ett_dtpt_protocols, align 4
  %i.ci = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.m, ptr noundef %0, i32 noundef %phi.call.i, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef null, ptr noundef nonnull @.str.213, i32 noundef %i.cd) ; 4 uses
  %.not279.i = icmp eq ptr %i.ci, null
  br i1 %.not279.i, label %.loopexit292.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = load i32, ptr @hf_dtpt_protocols_number, align 4
  %i.ck = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.ci, i32 noundef %i.cj, ptr noundef %0, i32 noundef %phi.call.i, i32 noundef 4, i32 noundef %i.cd) ; 0 uses
  br i1 %.not278.i, label %.loopexit292.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.cl = load i32, ptr @hf_dtpt_protocols_length, align 4
  %i.cm = add i32 %phi.call.i, 4
  %i.cn = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %i.ci, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.cm, i32 noundef 4, i32 noundef %.0252.i) ; 0 uses
  %i.co = add i32 %phi.call.i, 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.0257293.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cs, %bb.j ] ; 2 uses
  %i.cp = shl i32 %.0257293.i, 3
  %i.cq = add i32 %i.co, %i.cp                    ; 3 uses
  %i.cr = load i32, ptr @ett_dtpt_protocol, align 4
  %i.cs = add nuw i32 %.0257293.i, 1              ; 3 uses
  %i.ct = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.ci, ptr noundef %0, i32 noundef %i.cq, i32 noundef 8, i32 noundef %i.cr, ptr noundef null, ptr noundef nonnull @.str.214, i32 noundef %i.cs) ; 2 uses
  %i.cu = load i32, ptr @hf_dtpt_protocol_family, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %i.ct, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.cq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cw = load i32, ptr @hf_dtpt_protocol_protocol, align 4
  %i.cx = add i32 %i.cq, 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %i.ct, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cx, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %exitcond.not.i = icmp eq i32 %i.cs, %i.cd
  br i1 %exitcond.not.i, label %.loopexit292.i, label %bb.j, !llvm.loop !6

.loopexit292.i:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.g ], [ %.pre.i, %bb.h ], [ 4, %bb.i ], [ 8, %bb.j ]
  %i.cz = add i32 %.pre304.i, %phi.call.i
  %i.da = add i32 %i.cz, %.pre-phi.i
  %i.db = load i32, ptr @hf_dtpt_query_string, align 4
  %i.dc = tail call fastcc i32 @dissect_dtpt_wstring(ptr noundef %0, i32 noundef %i.da, ptr noundef %i.m, ptr noundef readonly %1, i32 noundef %i.db) ; 9 uses
  %i.dd = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dc) ; 6 uses
  %.not280.i = icmp eq i32 %i.dd, 0               ; 4 uses
  br i1 %.not280.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit292.i
  %i.de = add i32 %i.dc, 4
  %i.df = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.de)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit292.i
  %.0256.i = phi i32 [ %i.df, %bb.k ], [ 0, %.loopexit292.i ]
  br i1 %.not277.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr @ett_dtpt_cs_addrs, align 4
  %i.dh = call ptr @proto_tree_add_subtree(ptr noundef nonnull %i.m, ptr noundef %0, i32 noundef %i.dc, i32 noundef -1, i32 noundef %i.dg, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.215) ; 5 uses
  %.not281.i = icmp eq ptr %i.dh, null
  br i1 %.not281.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr @hf_dtpt_cs_addrs_number, align 4
  %i.dj = call ptr @proto_tree_add_uint(ptr noundef nonnull %i.dh, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dc, i32 noundef 4, i32 noundef %i.dd) ; 0 uses
  br i1 %.not280.i, label %.thread.i, label %.lr.ph297.split.preheader.i

.thread.i:                                        ; preds = %bb.n
  %i.dk = add i32 %i.dc, 4
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dl = select i1 %.not280.i, i32 4, i32 8
  %i.dm = add i32 %i.dl, %i.dc                    ; 2 uses
  br i1 %.not280.i, label %.loopexit.i, label %.lr.ph297.split.us.preheader.i

.lr.ph297.split.preheader.i:                      ; preds = %bb.n
  %i.dn = load i32, ptr @hf_dtpt_cs_addrs_length1, align 4
  %i.do = add i32 %i.dc, 4
  %i.dp = call ptr @proto_tree_add_uint(ptr noundef nonnull %i.dh, i32 noundef %i.dn, ptr noundef %0, i32 noundef %i.do, i32 noundef 4, i32 noundef %.0256.i) ; 0 uses
  %i.dq = add i32 %i.dc, 8                        ; 2 uses
  %i.dr = mul i32 %i.dd, 24
  %i.ds = add i32 %i.dr, %i.dq
  br label %.lr.ph297.split.i

.lr.ph297.split.us.preheader.i:                   ; preds = %bb.o
  %i.dt = mul i32 %i.dd, 24
  %i.du = add i32 %i.dm, %i.dt
  br label %.lr.ph297.split.us.i

.lr.ph297.split.us.i:                             ; preds = %.lr.ph297.split.us.i, %.lr.ph297.split.us.preheader.i
  %.0254295.us.i = phi i32 [ %i.dy, %.lr.ph297.split.us.i ], [ %i.du, %.lr.ph297.split.us.preheader.i ] ; 3 uses
  %.0255294.us.i = phi i32 [ %i.dz, %.lr.ph297.split.us.i ], [ 0, %.lr.ph297.split.us.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.dv = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0254295.us.i) ; 0 uses
  %i.dw = add i32 %.0254295.us.i, 20
  %i.dx = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dw) ; 0 uses
  %i.dy = add i32 %.0254295.us.i, 40              ; 2 uses
  call void @proto_item_set_len(ptr noundef null, i32 noundef 40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.dz = add nuw i32 %.0255294.us.i, 1           ; 2 uses
  %exitcond303.not.i = icmp eq i32 %i.dz, %i.dd
  br i1 %exitcond303.not.i, label %.loopexit.i, label %.lr.ph297.split.us.i, !llvm.loop !8

.lr.ph297.split.i:                                ; preds = %.lr.ph297.split.i, %.lr.ph297.split.preheader.i
  %.0251296.i = phi i32 [ %i.fc, %.lr.ph297.split.i ], [ %i.dq, %.lr.ph297.split.preheader.i ] ; 8 uses
  %.0254295.i = phi i32 [ %i.ez, %.lr.ph297.split.i ], [ %i.ds, %.lr.ph297.split.preheader.i ] ; 3 uses
  %.0255294.i = phi i32 [ %i.eb, %.lr.ph297.split.i ], [ 0, %.lr.ph297.split.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.ea = load i32, ptr @ett_dtpt_cs_addr1, align 4
  %i.eb = add nuw i32 %.0255294.i, 1              ; 4 uses
  %i.ec = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.dh, ptr noundef %0, i32 noundef %.0251296.i, i32 noundef 24, i32 noundef %i.ea, ptr noundef null, ptr noundef nonnull @.str.216, i32 noundef %i.eb) ; 6 uses
  %i.ed = load i32, ptr @hf_dtpt_cs_addr_local_pointer, align 4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.ed, ptr noundef %0, i32 noundef %.0251296.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ef = load i32, ptr @hf_dtpt_cs_addr_local_length, align 4
  %i.eg = add i32 %.0251296.i, 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.eg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ei = load i32, ptr @hf_dtpt_cs_addr_remote_pointer, align 4
  %i.ej = add i32 %.0251296.i, 8
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.ej, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.el = load i32, ptr @hf_dtpt_cs_addr_remote_length, align 4
  %i.em = add i32 %.0251296.i, 12
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.em, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.eo = load i32, ptr @hf_dtpt_cs_addr_socket_type, align 4
  %i.ep = add i32 %.0251296.i, 16
  %i.eq = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ep, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.er = load i32, ptr @hf_dtpt_cs_addr_protocol, align 4
  %i.es = add i32 %.0251296.i, 20
  %i.et = call ptr @proto_tree_add_item(ptr noundef %i.ec, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.es, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.eu = load i32, ptr @ett_dtpt_cs_addr2, align 4
  %i.ev = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.dh, ptr noundef %0, i32 noundef %.0254295.i, i32 noundef -1, i32 noundef %i.eu, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.217, i32 noundef %i.eb) ; 2 uses
  %i.ew = load i32, ptr @hf_dtpt_cs_addr_local, align 4
  %i.ex = call fastcc i32 @dissect_dtpt_sockaddr(ptr noundef %0, i32 noundef %.0254295.i, ptr noundef %i.ev, ptr noundef readonly %1, i32 noundef %i.ew, i32 noundef 1)
  %i.ey = load i32, ptr @hf_dtpt_cs_addr_remote, align 4
  %i.ez = call fastcc i32 @dissect_dtpt_sockaddr(ptr noundef %0, i32 noundef %i.ex, ptr noundef %i.ev, ptr noundef readonly %1, i32 noundef %i.ey, i32 noundef 1) ; 3 uses
end_hunk_0
