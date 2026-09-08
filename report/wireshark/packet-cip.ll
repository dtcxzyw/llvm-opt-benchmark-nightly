Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cip?download=true
inline.NumInlined: 204
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dissect_cip_class_cco:bb.a

dissect_cip_cco_data.exit:                        ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  %i.cf = load ptr, ptr %i.g, align 8
  %i.cg = load ptr, ptr %i.o, align 8
  %i.ch = and i8 %i.i, 127
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = call ptr @val_to_str(ptr noundef %i.cg, i32 noundef %i.ci, ptr noundef nonnull @cip_sc_vals_cco, ptr noundef nonnull @.str.152)
  call void @col_append_str(ptr noundef %i.cf, i32 noundef 25, ptr noundef %i.cj)
  %i.ck = load ptr, ptr %i.g, align 8
  call void @col_set_fence(ptr noundef %i.ck, i32 noundef 25)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cl = call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.cl
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_cip() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @cip_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1368, i32 noundef 0, ptr noundef %i.a)
  %i.b = load ptr, ptr @cip_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1369, i32 noundef 2, ptr noundef %i.b)
  %i.c = load ptr, ptr @cip_class_generic_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1348, i32 noundef 0, ptr noundef %i.c)
  %i.d = load ptr, ptr @cip_class_cm_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1348, i32 noundef 6, ptr noundef %i.d)
  %i.e = load ptr, ptr @cip_class_pccc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1348, i32 noundef 103, ptr noundef %i.e)
  %i.f = load ptr, ptr @cip_class_mb_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1348, i32 noundef 68, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_cip_class_mb, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1370, i32 noundef %i.g)
  store ptr %i.h, ptr @modbus_handle, align 8
  %i.i = load ptr, ptr @cip_class_cco_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1348, i32 noundef 243, ptr noundef %i.i)
  %i.j = load i32, ptr @proto_cip_class_cco, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.256, ptr noundef nonnull @dissect_class_cco_heur, ptr noundef nonnull @.str.1364, ptr noundef nonnull @.str.1371, i32 noundef %i.j, i32 noundef 1)
  %i.k = tail call i32 @proto_get_id_by_filter_name(ptr noundef nonnull @.str.1372)
  store i32 %i.k, ptr @proto_enip, align 4
  %i.l = tail call i32 @proto_get_id_by_filter_name(ptr noundef nonnull @.str.1370) ; 0 uses
  %i.m = tail call i32 @proto_get_id_by_filter_name(ptr noundef nonnull @.str.1373)
  store i32 %i.m, ptr @proto_cip_safety, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_class_cco_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = add nsw i8 %i.b, -1
  %or.cond = icmp ult i8 %i.c, 2
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @wmem_file_scope()
  %i.e = load i32, ptr @proto_cip, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.e, i32 noundef 0) ; 3 uses
  %.not39 = icmp eq ptr %i.f, null
  br i1 %.not39, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr @subdissector_class_table, align 8
  %i.i = tail call ptr @dissector_get_uint_handle(ptr noundef %i.h, i32 noundef 243)
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.thread.sink.split, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.l = icmp ugt i8 %i.k, 1
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 252
  %or.cond41 = icmp eq i32 %i.o, 32
  br i1 %or.cond41, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.n, 3
  switch i32 %i.p, label %default.unreachable45 [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.r = zext i8 %i.q to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 4)
  %i.t = zext i16 %i.s to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not38 = icmp eq i8 %i.k, 2
  br i1 %.not38, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 4)
  br label %bb.l

default.unreachable45:                            ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.0 = phi i32 [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ %i.u, %bb.k ]
  %i.v = icmp eq i32 %.0, 243
  br i1 %i.v, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.l, %bb.d
  %cip_class_cco_handle.sink = phi ptr [ %i.f, %bb.d ], [ @cip_class_cco_handle, %bb.l ]
  %i.w = load ptr, ptr %cip_class_cco_handle.sink, align 8
  %i.x = tail call i32 @call_dissector(ptr noundef %i.w, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %bb.g, %bb.j, %bb.e, %bb.a, %bb.l, %bb.c, %bb.d
  %.035 = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.l ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.j ], [ true, %.thread.sink.split ]
  ret i1 %.035
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_id_by_filter_name(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 -2147483648, 3) i32 @dissect_id_revision(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #3 {
bb.a:
  %i.a = icmp slt i32 %5, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_identity_revision) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_id_major_rev, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_id_minor_rev, align 4
  %i.f = add i32 %4, 1
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %3, i32 noundef %i.f, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %5, %bb.b ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cip_id_active_language(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef returned %5) #3 {
bb.a:
  %.not = icmp eq i32 %5, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_identity_active_language) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_id_active_language, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %3, i32 noundef %4, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cip_id_supported_language_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef returned %5) #3 {
bb.a:
  %i.a = srem i32 %5, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_identity_supported_language_list) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %6 = udiv i32 %5, 3
  %i.c = icmp sgt i32 %5, 2
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 416
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.02021 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.e = mul nuw i32 %.02021, 3
  %i.f = add i32 %i.e, %4                         ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = tail call ptr @tvb_get_string_enc(ptr noundef %i.g, ptr noundef %3, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 2 uses
  %i.i = load i32, ptr @hf_id_supported_language_list, align 4
  %i.j = add nuw nsw i32 %.02021, 1               ; 3 uses
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %1, i32 noundef %i.i, ptr noundef %3, i32 noundef %i.f, i32 noundef 3, ptr noundef %i.h, ptr noundef nonnull @.str.3184, i32 noundef %i.j, ptr noundef %i.h) ; 0 uses
  %exitcond.not = icmp eq i32 %i.j, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !34

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cip_id_semaphore(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef returned %5) #3 {
bb.a:
  %.not = icmp eq i32 %5, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_identity_semaphore) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @ett_id_semaphore, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.b) ; 2 uses
  %i.d = load i32, ptr @hf_id_semaphore_client_key, align 4
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %3, i32 noundef %4, i32 noundef 6, ptr noundef nonnull @.str.483)
  %i.f = load i32, ptr @ett_id_semaphore_client_key, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = load i32, ptr @hf_id_semaphore_vendor, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %4, 2
  %i.k = load i32, ptr @hf_id_semaphore_client_sn, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.k, ptr noundef %3, i32 noundef %i.j, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.m = add i32 %4, 6
  %i.n = load i32, ptr @hf_id_semaphore_timer, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.n, ptr noundef %3, i32 noundef %i.m, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_cip_id_modbus_identity_info(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #3 {
bb.a:
  %i.a = load i32, ptr @ett_id_modbus_info, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.a) ; 7 uses
  %i.c = load i32, ptr @hf_id_modbus_identity_vendor_name, align 4
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %4) ; 2 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %4)
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = add i32 %4, 1
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, i32 noundef %i.i, i32 noundef %i.f, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit

dissect_cip_string_type.exit:                     ; preds = %bb.b, %bb.c
  %.036.i = phi i32 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  %i.k = add i32 %.036.i, %4                      ; 4 uses
  %i.l = load i32, ptr @hf_id_modbus_identity_product_code, align 4
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.k) ; 2 uses
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.k)
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %.not57 = icmp sgt i32 %i.m, %i.o
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dissect_cip_string_type.exit
  %i.p = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit46

bb.e:                                             ; preds = %dissect_cip_string_type.exit
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = add i32 %i.k, 1
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %3, i32 noundef %i.r, i32 noundef %i.o, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit46

dissect_cip_string_type.exit46:                   ; preds = %bb.d, %bb.e
  %.036.i45 = phi i32 [ %i.q, %bb.e ], [ %i.m, %bb.d ]
  %i.t = add i32 %.036.i45, %i.k                  ; 4 uses
  %i.u = load i32, ptr @hf_id_modbus_identity_revision, align 4
  %i.v = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.t) ; 2 uses
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.t)
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %.not58 = icmp sgt i32 %i.v, %i.x
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %dissect_cip_string_type.exit46
  %i.y = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit48

bb.g:                                             ; preds = %dissect_cip_string_type.exit46
  %i.z = add nuw nsw i32 %i.x, 1
  %i.aa = add i32 %i.t, 1
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.u, ptr noundef %3, i32 noundef %i.aa, i32 noundef %i.x, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit48

dissect_cip_string_type.exit48:                   ; preds = %bb.f, %bb.g
  %.036.i47 = phi i32 [ %i.z, %bb.g ], [ %i.v, %bb.f ]
  %i.ac = add i32 %.036.i47, %i.t                 ; 4 uses
  %i.ad = load i32, ptr @hf_id_modbus_identity_vendor_url, align 4
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.ac) ; 2 uses
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.ac)
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %.not59 = icmp sgt i32 %i.ae, %i.ag
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %dissect_cip_string_type.exit48
  %i.ah = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit50

bb.i:                                             ; preds = %dissect_cip_string_type.exit48
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = add i32 %i.ac, 1
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ad, ptr noundef %3, i32 noundef %i.aj, i32 noundef %i.ag, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit50

dissect_cip_string_type.exit50:                   ; preds = %bb.h, %bb.i
  %.036.i49 = phi i32 [ %i.ai, %bb.i ], [ %i.ae, %bb.h ]
  %i.al = add i32 %.036.i49, %i.ac                ; 4 uses
  %i.am = load i32, ptr @hf_id_modbus_identity_product_name, align 4
  %i.an = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.al) ; 2 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.al)
  %i.ap = zext i8 %i.ao to i32                    ; 3 uses
  %.not60 = icmp sgt i32 %i.an, %i.ap
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %dissect_cip_string_type.exit50
  %i.aq = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit52

bb.k:                                             ; preds = %dissect_cip_string_type.exit50
  %i.ar = add nuw nsw i32 %i.ap, 1
  %i.as = add i32 %i.al, 1
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.am, ptr noundef %3, i32 noundef %i.as, i32 noundef %i.ap, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit52

dissect_cip_string_type.exit52:                   ; preds = %bb.j, %bb.k
  %.036.i51 = phi i32 [ %i.ar, %bb.k ], [ %i.an, %bb.j ]
  %i.au = add i32 %.036.i51, %i.al                ; 4 uses
  %i.av = load i32, ptr @hf_id_modbus_identity_model_name, align 4
  %i.aw = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.au) ; 2 uses
  %i.ax = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.au)
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %.not61 = icmp sgt i32 %i.aw, %i.ay
  br i1 %.not61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dissect_cip_string_type.exit52
  %i.az = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit54

bb.m:                                             ; preds = %dissect_cip_string_type.exit52
  %i.ba = add nuw nsw i32 %i.ay, 1
  %i.bb = add i32 %i.au, 1
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.av, ptr noundef %3, i32 noundef %i.bb, i32 noundef %i.ay, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit54

dissect_cip_string_type.exit54:                   ; preds = %bb.l, %bb.m
  %.036.i53 = phi i32 [ %i.ba, %bb.m ], [ %i.aw, %bb.l ]
  %i.bd = add i32 %.036.i53, %i.au                ; 4 uses
  %i.be = load i32, ptr @hf_id_modbus_identity_app_name, align 4
  %i.bf = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.bd) ; 2 uses
  %i.bg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bd)
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  %.not62 = icmp sgt i32 %i.bf, %i.bh
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %dissect_cip_string_type.exit54
  %i.bi = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit56

bb.o:                                             ; preds = %dissect_cip_string_type.exit54
  %i.bj = add nuw nsw i32 %i.bh, 1
  %i.bk = add i32 %i.bd, 1
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.be, ptr noundef %3, i32 noundef %i.bk, i32 noundef %i.bh, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit56

dissect_cip_string_type.exit56:                   ; preds = %bb.n, %bb.o
  %.036.i55 = phi i32 [ %i.bj, %bb.o ], [ %i.bf, %bb.n ]
  %i.bm = sub i32 %i.bd, %4
  %i.bn = add i32 %i.bm, %.036.i55
  ret i32 %i.bn
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
end_hunk_0
