Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ranap?download=true
inline.NumInlined: 403
inline.NumDeleted: 307
begin_hunk_0_@dissect_ranap_TAI:bb.a
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 416     ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr @proto_ranap, align 4
  %i.e = tail call ptr @p_get_proto_data(ptr noundef %i.c, ptr noundef %.val, i32 noundef %i.d, i32 noundef 0) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %ranap_get_private_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = tail call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.g, i64 noundef 12) #5 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i32, ptr @proto_ranap, align 4
  tail call void @p_add_proto_data(ptr noundef %i.i, ptr noundef %.val, i32 noundef %i.j, i32 noundef 0, ptr noundef %i.h)
  br label %ranap_get_private_data.exit

ranap_get_private_data.exit:                      ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.e, %bb.a ]
  %i.k = getelementptr i8, ptr %.0.i, i64 8
  store i32 6, ptr %i.k, align 4
  %i.l = load i32, ptr @ett_ranap_TAI, align 4
  %i.m = tail call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.l, ptr noundef @TAI_sequence)
  ret i32 %i.m
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_BIT_STRING_SIZE_20(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 20, i32 noundef 20, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_BIT_STRING_SIZE_28(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 28, i32 noundef 28, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_BIT_STRING_SIZE_18(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 18, i32 noundef 18, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_BIT_STRING_SIZE_21(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 21, i32 noundef 21, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_TAC(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef -1, i32 noundef 2, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.e = getelementptr i8, ptr %2, i64 24
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare void @bssmap_old_bss_to_new_bss_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_TransportLayerAddress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 160, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @tvb_reported_length(ptr noundef nonnull %i.c) ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr @ett_ranap_transportLayerAddress, align 4
  %i.h = call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 3 uses
  switch i32 %i.d, label %.thread [
    i32 4, label %bb.c
    i32 16, label %bb.e
    i32 7, label %bb.f
    i32 20, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_ranap_transportLayerAddress_ipv4, align 4
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %i.j, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call i32 @tvb_get_ipv4(ptr noundef %i.l, i32 noundef 0)
  %i.n = getelementptr i8, ptr %2, i64 16
  %.val36 = load ptr, ptr %i.n, align 8           ; 3 uses
  %i.o = getelementptr i8, ptr %.val36, i64 416   ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr @proto_ranap, align 4
  %i.r = call ptr @p_get_proto_data(ptr noundef %i.p, ptr noundef %.val36, i32 noundef %i.q, i32 noundef 0) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %private_data_set_transportLayerAddress_ipv4.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.t, i64 noundef 12) #5 ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = load i32, ptr @proto_ranap, align 4
  call void @p_add_proto_data(ptr noundef %i.v, ptr noundef %.val36, i32 noundef %i.w, i32 noundef 0, ptr noundef %i.u)
  br label %private_data_set_transportLayerAddress_ipv4.exit

private_data_set_transportLayerAddress_ipv4.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.r, %bb.c ]
  store i32 %i.m, ptr %.0.i.i, align 4
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.x = load i32, ptr @hf_ranap_transportLayerAddress_ipv6, align 4
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.x, ptr noundef %i.y, i32 noundef 0, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 416
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noalias dereferenceable_or_null(20) ptr @wmem_alloc0(ptr noundef %i.ad, i64 noundef 20) #5 ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = call ptr @tvb_memcpy(ptr noundef %i.af, ptr noundef %i.ae, i32 noundef 0, i64 noundef 7) ; 0 uses
  %i.ah = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ae, i32 noundef 20, i32 noundef 20) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = call ptr @add_new_data_source(ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef @.str.2481) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %.pre, %bb.f ], [ %i.ak, %bb.g ]
  %.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ak, %bb.g ]
  %i.am = load i32, ptr @hf_ranap_transportLayerAddress_nsap, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.am, ptr noundef %i.al, i32 noundef 0, i32 noundef %i.d, i32 noundef 0)
  %i.ao = load i32, ptr @ett_ranap_transportLayerAddress_nsap, align 4
  %i.ap = call ptr @proto_item_add_subtree(ptr noundef %i.an, i32 noundef %i.ao)
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = call i32 @tvb_get_ntoh24(ptr noundef %i.aq, i32 noundef 0)
  %i.as = icmp eq i32 %i.ar, 3473409
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = call i32 @tvb_get_ipv4(ptr noundef %i.at, i32 noundef 3)
  %i.av = getelementptr i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.aw = getelementptr i8, ptr %.val, i64 416    ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr @proto_ranap, align 4
  %i.az = call ptr @p_get_proto_data(ptr noundef %i.ax, ptr noundef %.val, i32 noundef %i.ay, i32 noundef 0) ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.j, label %private_data_set_transportLayerAddress_ipv4.exit38

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.aw, align 8
  %i.bc = call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.bb, i64 noundef 12) #5 ; 2 uses
  %i.bd = load ptr, ptr %i.aw, align 8
  %i.be = load i32, ptr @proto_ranap, align 4
  call void @p_add_proto_data(ptr noundef %i.bd, ptr noundef %.val, i32 noundef %i.be, i32 noundef 0, ptr noundef %i.bc)
  br label %private_data_set_transportLayerAddress_ipv4.exit38

private_data_set_transportLayerAddress_ipv4.exit38: ; preds = %bb.i, %bb.j
  %.0.i.i37 = phi ptr [ %i.bc, %bb.j ], [ %i.az, %bb.i ]
  store i32 %i.au, ptr %.0.i.i37, align 4
  br label %bb.k

bb.k:                                             ; preds = %private_data_set_transportLayerAddress_ipv4.exit38, %bb.h
  %i.bf = getelementptr i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void @dissect_nsap(ptr noundef %.0, ptr noundef %i.bg, i32 noundef 0, i32 noundef 20, ptr noundef %i.ap)
  br label %.thread

.thread:                                          ; preds = %bb.e, %private_data_set_transportLayerAddress_ipv4.exit, %bb.b, %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_IuTransportAssociation(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ranap_IuTransportAssociation, align 4
  %i.b = tail call i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @IuTransportAssociation_choice, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissect_nsap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_GTP_TEI(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef -1, i32 noundef 4, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_BindingID(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 4, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.c, i32 noundef 2)
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.i = getelementptr i8, ptr %.val, i64 416     ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr @proto_ranap, align 4
  %i.l = call ptr @p_get_proto_data(ptr noundef %i.j, ptr noundef %.val, i32 noundef %i.k, i32 noundef 0) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %private_data_set_binding_id_port.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.n, i64 noundef 12) #5 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = load i32, ptr @proto_ranap, align 4
  call void @p_add_proto_data(ptr noundef %i.p, ptr noundef %.val, i32 noundef %i.q, i32 noundef 0, ptr noundef %i.o)
  br label %private_data_set_binding_id_port.exit

private_data_set_binding_id_port.exit:            ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.l, %bb.b ]
  %i.r = getelementptr i8, ptr %.0.i.i, i64 4
  store i16 %i.g, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %2, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i16 %i.g to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.t, ptr noundef @.str.2483, i32 noundef %i.u)
  br label %bb.d

bb.d:                                             ; preds = %private_data_set_binding_id_port.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_PermanentNAS_UE_ID(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ranap_PermanentNAS_UE_ID, align 4
  %i.b = tail call i32 @dissect_per_choice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef @PermanentNAS_UE_ID_choice, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_IMSI(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call i32 @dissect_per_octet_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 28       ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %.pre = load ptr, ptr %i.a, align 8
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %i.k = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i32 @tvb_reported_length(ptr noundef %i.k)
  %i.o = call ptr @dissect_e212_imsi(ptr noundef %i.k, ptr noundef %i.m, ptr noundef %3, i32 noundef 0, i32 noundef %i.n, i1 noundef zeroext false) ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 416
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr @proto_ranap, align 4
  %i.t = getelementptr i8, ptr %i.p, i64 384
  %i.u = load i8, ptr %i.t, align 8
  %i.v = zext i8 %i.u to i32
  %i.w = call ptr @p_get_proto_data(ptr noundef %i.r, ptr noundef %i.p, i32 noundef %i.s, i32 noundef %i.v) ; 2 uses
  %.not21 = icmp eq ptr %i.w, null
  br i1 %.not21, label %bb.h, label %bb.e

bb.e:                                             ; preds = %proto_item_set_hidden.exit
  %i.x = getelementptr i8, ptr %i.w, i64 40       ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.y, null
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %.not23 = icmp eq ptr %i.aa, null
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @wmem_file_scope()
  %i.ac = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ab, ptr noundef @.str.2485, ptr noundef %i.o)
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = call ptr @wmem_file_scope()
  %i.ag = call noalias ptr @wmem_strdup(ptr noundef %i.af, ptr noundef %i.o)
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 64
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.h

bb.h:                                             ; preds = %proto_item_set_hidden.exit, %bb.e, %bb.f, %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @dissect_e212_imsi(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_CN_DomainIndicator(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ranap_IuSignallingConnectionIdentifier(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @dissect_per_bit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 24, i32 noundef 24, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret i32 %i.a
end_hunk_0
