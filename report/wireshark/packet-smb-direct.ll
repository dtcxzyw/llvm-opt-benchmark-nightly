Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-smb-direct?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@dissect_smb_direct_infiniband
define internal i32 @dissect_smb_direct_infiniband(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 22, label %bb.c
    i8 23, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = tail call fastcc i32 @is_smb_direct(ptr noundef %0) ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 33         ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.h = trunc nuw i8 %i.g to i1
  %.not = xor i1 %i.h, true
  %i.i = load i8, ptr @smb_direct_infiniband_reassemble, align 1, !range !6
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @dissect_smb_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.d)
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_smb_direct() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_smb_direct, align 4
  tail call void @heur_dissector_add(ptr noundef @.str.69, ptr noundef @dissect_smb_direct_iwarp_heur, ptr noundef @.str.70, ptr noundef @.str.71, i32 noundef %i.a, i32 noundef 1)
  %i.b = load i32, ptr @proto_smb_direct, align 4
  tail call void @heur_dissector_add(ptr noundef @.str.72, ptr noundef @dissect_smb_direct_infiniband_heur, ptr noundef @.str.73, ptr noundef @.str.74, i32 noundef %i.b, i32 noundef 1)
  %i.c = load ptr, ptr @smb_direct_handle, align 8
  tail call void @dissector_add_for_decode_as(ptr noundef @.str.75, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_smb_direct_iwarp_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 8
  %.off = add i8 %i.b, -3
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @is_smb_direct(ptr noundef %0) ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @dissect_smb_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @dissect_smb_direct_infiniband_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %dissect_smb_direct_infiniband.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8
  switch i8 %i.c, label %dissect_smb_direct_infiniband.exit [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 22, label %bb.c
    i8 23, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = tail call fastcc i32 @is_smb_direct(ptr noundef %0) ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %dissect_smb_direct_infiniband.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 33         ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i = xor i1 %i.h, true
  %i.i = load i8, ptr @smb_direct_infiniband_reassemble, align 1, !range !6
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @dissect_smb_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.d)
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = icmp sgt i32 %i.k, 0
  br label %dissect_smb_direct_infiniband.exit

dissect_smb_direct_infiniband.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.f
  %.0.i = phi i1 [ %i.l, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 4) i32 @is_smb_direct(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.b = icmp ult i32 %i.a, 20
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 32
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 0)
  %i.e = icmp eq i16 %i.d, 256
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 2)
  %i.g = icmp eq i16 %i.f, 256
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 4)
  %i.i = icmp eq i16 %i.h, 256
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 6)
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.l = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 0)
  %i.m = icmp eq i16 %i.l, 256
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 2)
  %i.o = icmp eq i16 %i.n, 256
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 4)
  %.not3 = icmp eq i16 %i.p, 0
  %1 = select i1 %.not3, i32 1, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not = phi i32 [ -1, %bb.g ], [ %1, %bb.i ], [ -1, %bb.h ]
  %i.q = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 0)
  %i.r = icmp ult i16 %i.q, 256
  br i1 %i.r, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 2)
  %i.t = icmp ult i16 %i.s, 256
  br i1 %i.t, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.u = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 4)
  %i.v = icmp ult i16 %i.u, 2
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 6)
  %i.x = icmp eq i16 %i.w, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.j ], [ %i.x, %bb.m ], [ false, %bb.l ], [ false, %bb.k ] ; 2 uses
  %i.y = icmp eq i32 %i.a, 20
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %.not30 = icmp eq i32 %i.z, 0
  %i.aa = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %.not31 = icmp eq i32 %i.aa, 0
  %i.ab = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16)
  %.not32 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not32, i1 %.not31, i1 false
  %i.ad = select i1 %i.ac, i1 %.not30, i1 false
  %i.ae = select i1 %i.ad, i1 %.0, i1 false
  %spec.select2 = select i1 %i.ae, i32 3, i32 %.not
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.af = icmp ult i32 %i.a, 25
  br i1 %i.af, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %.not33 = icmp eq i32 %i.ag, 24
  br i1 %.not33, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ah = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 20)
  %.not34 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not34, i1 %.0, i1 false
  %spec.select = select i1 %i.ak, i32 3, i32 -1
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.o, %bb.r, %bb.q, %bb.p, %bb.f, %bb.a
  %.028 = phi i32 [ 2, %bb.f ], [ -1, %bb.a ], [ %spec.select2, %bb.o ], [ %spec.select, %bb.s ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ]
  ret i32 %.028
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_smb_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.c = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef @.str.60)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.e, i32 noundef 25)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @proto_smb_direct, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_smb_direct, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0140 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 5 uses
  switch i32 %3, label %.critedge.thread [
    i32 3, label %bb.j
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.j, i32 noundef 25, ptr noundef @.str)
  %i.k = icmp eq ptr %.0140, null
  br i1 %i.k, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @hf_smb_direct_negotiate_request, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.0140, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.n = load i32, ptr @ett_smb_direct_hdr, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 6 uses
  %i.p = load i32, ptr @hf_smb_direct_min_version, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.r = load i32, ptr @hf_smb_direct_max_version, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.r, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.t = load i32, ptr @hf_smb_direct_credits_requested, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.t, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.v = load i32, ptr @hf_smb_direct_preferred_send_size, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.v, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.x = load i32, ptr @hf_smb_direct_max_receive_size, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.x, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.z = load i32, ptr @hf_smb_direct_max_fragmented_size, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.z, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge.thread

bb.f:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.ab, i32 noundef 25, ptr noundef @.str.2)
  %i.ac = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12) ; 2 uses
  %.not145 = icmp eq i32 %i.ac, 0
  br i1 %.not145, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = getelementptr i8, ptr %1, i64 416
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @val_to_str_ext(ptr noundef %i.af, i32 noundef %i.ac, ptr noundef @NT_errors_ext, ptr noundef @.str.77)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ad, i32 noundef 25, ptr noundef @.str.76, ptr noundef %i.ag)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = icmp eq ptr %.0140, null
  br i1 %i.ah, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr @hf_smb_direct_negotiate_response, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.0140, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ak = load i32, ptr @ett_smb_direct_hdr, align 4
  %i.al = tail call ptr @proto_item_add_subtree(ptr noundef %i.aj, i32 noundef %i.ak) ; 10 uses
  %i.am = load i32, ptr @hf_smb_direct_min_version, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ao = load i32, ptr @hf_smb_direct_max_version, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ao, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aq = load i32, ptr @hf_smb_direct_negotiated_version, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.aq, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.as = load i32, ptr @hf_smb_direct_credits_requested, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.as, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.au = load i32, ptr @hf_smb_direct_credits_granted, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.au, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aw = load i32, ptr @hf_smb_direct_status, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.aw, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ay = load i32, ptr @hf_smb_direct_max_read_write_size, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ay, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ba = load i32, ptr @hf_smb_direct_preferred_send_size, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ba, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bc = load i32, ptr @hf_smb_direct_max_receive_size, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bc, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.be = load i32, ptr @hf_smb_direct_max_fragmented_size, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.be, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.critedge.thread

bb.j:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.c, align 8
  tail call void @col_append_str(ptr noundef %i.bg, i32 noundef 25, ptr noundef @.str.4)
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.b, i32 24)
  %i.bi = load i32, ptr @hf_smb_direct_data_message, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %.0140, i32 noundef %i.bi, ptr noundef %0, i32 noundef 0, i32 noundef %i.bh, i32 noundef 0)
  %i.bk = load i32, ptr @ett_smb_direct_hdr, align 4
  %i.bl = tail call ptr @proto_item_add_subtree(ptr noundef %i.bj, i32 noundef %i.bk) ; 6 uses
  %i.bm = load i32, ptr @hf_smb_direct_credits_requested, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bm, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bo = load i32, ptr @hf_smb_direct_credits_granted, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bo, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bq = load i32, ptr @hf_smb_direct_flags, align 4
  %i.br = load i32, ptr @ett_smb_direct_flags, align 4
  %i.bs = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bl, ptr noundef %0, i32 noundef 4, i32 noundef %i.bq, i32 noundef %i.br, ptr noundef @dissect_smb_direct.flags, i32 noundef -2147483648) ; 0 uses
  %i.bt = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.bu = load i32, ptr @hf_smb_direct_remaining_length, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bu, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bw = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12) ; 3 uses
  %i.bx = load i32, ptr @hf_smb_direct_data_offset, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bx, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bz = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16) ; 3 uses
  %i.ca = load i32, ptr @hf_smb_direct_data_length, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.ca, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %.not146 = icmp eq i32 %i.bz, 0
  br i1 %.not146, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp ugt i32 %i.bw, 20
  br i1 %i.cc, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bw)
  %i.ce = icmp ugt i32 %i.bz, %i.cd
  br i1 %i.ce, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.j
  %i.cf = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.bw, i32 noundef %i.bz) ; 5 uses
  %.not148 = icmp eq ptr %i.cf, null
  br i1 %.not148, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.cg = getelementptr i8, ptr %1, i64 272       ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !range !6, !noundef !7
  %i.ci = getelementptr i8, ptr %1, i64 80        ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 53
  %i.cl = load i16, ptr %i.ck, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.cm = load i8, ptr @smb_direct_reassemble, align 1, !range !6, !noundef !7
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.co = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.cp = tail call ptr @wmem_file_scope()
  %i.cq = load i32, ptr @proto_smb_direct, align 4
  %i.cr = tail call ptr @p_get_proto_data(ptr noundef %i.cp, ptr noundef %1, i32 noundef %i.cq, i32 noundef 0) ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp ne i32 %i.bt, 0
  %i.ct = load ptr, ptr %i.ci, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 53     ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = and i16 %i.cv, -9
  store i16 %i.cw, ptr %i.cu, align 1
  %i.cx = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = tail call i32 @tvb_captured_length(ptr noundef nonnull %i.cf)
  %i.da = tail call ptr @fragment_add_seq_next(ptr noundef @smb_direct_reassembly_table, ptr noundef nonnull %i.cf, i32 noundef 0, ptr noundef %1, i32 noundef %i.cy, ptr noundef null, i32 noundef %i.cz, i1 noundef zeroext %.not.i) ; 2 uses
  %i.db = icmp eq ptr %i.da, null
end_hunk_0
