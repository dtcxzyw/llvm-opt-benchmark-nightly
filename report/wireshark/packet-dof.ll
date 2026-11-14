Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dof?download=true
inline.NumInlined: 284
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@create_tcp_session_data:bb.a
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = tail call i32 @conversation_key_port2(ptr noundef %i.ak)
  %i.am = getelementptr i8, ptr %i.b, i64 120
  store i32 %i.al, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.b, i64 56
  store i8 0, ptr %i.an, align 8
  %i.ao = load i32, ptr @proto_2008_1_dof_tcp, align 4
  store i32 %i.ao, ptr %i.b, align 8
  %i.ap = getelementptr i8, ptr %i.b, i64 49
  store i8 1, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %i.b, i64 48
  store i8 1, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.b, i64 8
  %i.as = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ar, ptr noundef align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr i8, ptr %i.b, i64 24
  store i8 1, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.b, i64 28
  store i32 0, ptr %i.au, align 4
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_raw_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @assign_addr_port_id(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._addr_port_key, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %3, align 8
  %i.c = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.d, ptr %i.e, align 4
  %i.f = sext i32 %i.d to i64                     ; 2 uses
  %i.g = tail call noalias ptr @wmem_alloc(ptr noundef %0, i64 noundef %i.f) #22 ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.c, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = icmp ne i32 %i.d, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = tail call ptr @__memcpy_chk(ptr noundef %i.g, ptr noundef %i.i, i64 noundef %i.k, i64 noundef %i.f) #26, !alias.scope !40 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.g, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %2, ptr %i.p, align 8
  %i.q = load ptr, ptr @addr_port_to_id, align 8
  %i.r = call ptr @g_hash_table_lookup(ptr noundef %i.q, ptr noundef nonnull %3)
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #24 ; 7 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = load i32, ptr %i.c, align 4              ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store i32 %i.v, ptr %i.u, align 8
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %copy_address.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sext i32 %i.w to i64
  %i.aa = call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.x, i64 noundef %i.z) #27 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 16
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.ad, align 4
  br label %copy_address.exit

copy_address.exit:                                ; preds = %bb.c, %bb.d
  %i.ae = getelementptr i8, ptr %i.u, i64 24
  store i16 %2, ptr %i.ae, align 8
  %i.af = load ptr, ptr @addr_port_to_id, align 8
  %i.ag = load i32, ptr @next_addr_port_id, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call i32 @g_hash_table_insert(ptr noundef %i.af, ptr noundef %i.u, ptr noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr @next_addr_port_id, align 4 ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @next_addr_port_id, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %copy_address.exit
  %.0 = phi i32 [ %i.ak, %copy_address.exit ], [ 0, %bb.a ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_key_addr1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @conversation_key_port1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_key_addr2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @conversation_key_port2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_2009_11_type_4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @proto_tree_get_parent(ptr noundef nonnull %2)
  %i.c = getelementptr i8, ptr %1, i64 416
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.f = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.g = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.e, ptr %i.a, align 4
  %i.h = call fastcc ptr @DOFObjectID_Create_Unmarshal(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef readonly %i.g) ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %dof_oid_create_standard_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @ObjectID_ToStringLength(ptr noundef %i.h, ptr noundef %1) ; 2 uses
  %i.j = add i32 %i.i, 1
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @wmem_alloc(ptr noundef %i.d, i64 noundef %i.k) #22 ; 4 uses
  %.not15.i = icmp eq ptr %i.l, null
  br i1 %.not15.i, label %dof_oid_create_standard_string.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @ObjectID_ToString(ptr noundef %i.h, ptr noundef nonnull %i.l, ptr noundef %1) ; 0 uses
  %i.n = zext i32 %i.i to i64
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  store i8 0, ptr %i.o, align 1
  br label %dof_oid_create_standard_string.exit

dof_oid_create_standard_string.exit:              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ @.str.700, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.b, ptr noundef @.str.696, ptr noundef %.0.i)
  br label %bb.e

bb.e:                                             ; preds = %dof_oid_create_standard_string.exit, %bb.a
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.q = icmp slt i8 %i.p, 0                      ; 3 uses
  %i.r = and i8 %i.p, 64
  %.not81 = icmp eq i8 %i.r, 0
  %i.s = and i8 %i.p, 63
  %..i = select i1 %.not81, i32 2, i32 4          ; 2 uses
  %.020.i = select i1 %i.q, i8 %i.s, i8 %i.p
  %i.t = zext nneg i8 %.020.i to i32              ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %read_c4.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.02331.i = phi i32 [ %.023.i, %.lr.ph.i ], [ 1, %bb.e ] ; 2 uses
  %.02229.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.t, %bb.e ]
  %i.u = shl i32 %.02229.i, 8
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i)
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %.023.i = add nuw i32 %.02331.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %.023.i, %..i
  br i1 %exitcond.not.i, label %read_c4.exit, label %.lr.ph.i, !llvm.loop !2

read_c4.exit:                                     ; preds = %.lr.ph.i, %bb.e
  %.022.lcssa.i = phi i32 [ %i.t, %bb.e ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.023.lcssa.i = phi i32 [ 1, %bb.e ], [ %..i, %.lr.ph.i ] ; 6 uses
  %i.y = load i32, ptr @hf_oid_class, align 4
  %i.z = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef %.023.lcssa.i, i32 noundef %.022.lcssa.i, ptr noundef @.str.697, i32 noundef %.022.lcssa.i) ; 2 uses
  %i.aa = icmp ult i32 %.022.lcssa.i, 128
  %or.cond.i = and i1 %i.q, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %read_c4.exit
  %i.ab = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.z, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %read_c4.exit
  %i.ac = icmp ugt i8 %i.p, -65
  %i.ad = icmp ult i32 %.022.lcssa.i, 16384
  %or.cond3.i = and i1 %i.ac, %i.ad
  br i1 %or.cond3.i, label %bb.h, label %validate_c4.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.z, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit

validate_c4.exit:                                 ; preds = %bb.g, %bb.h
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.023.lcssa.i) ; 2 uses
  %i.ag = load i32, ptr @hf_oid_header, align 4
  %i.ah = zext i8 %i.af to i32                    ; 4 uses
  %.not72 = icmp sgt i8 %i.af, -1                 ; 2 uses
  %i.ai = select i1 %.not72, ptr @.str.180, ptr @.str.699
  %i.aj = and i32 %i.ah, 63                       ; 4 uses
  %i.ak = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.023.lcssa.i, i32 noundef 1, i32 noundef %i.ah, ptr noundef @.str.698, i32 noundef %i.ah, ptr noundef nonnull %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.al = load i32, ptr @ett_oid_header, align 4
  %i.am = tail call ptr @proto_item_add_subtree(ptr noundef %i.ak, i32 noundef %i.al) ; 2 uses
  %i.an = load i32, ptr @hf_oid_attribute, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.an, ptr noundef %0, i32 noundef %.023.lcssa.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_oid_length, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.ap, ptr noundef %0, i32 noundef %.023.lcssa.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = add nuw nsw i32 %.023.lcssa.i, 1        ; 3 uses
  %i.as = and i32 %i.ah, 64
  %.not73 = icmp eq i32 %i.as, 0
  br i1 %.not73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %validate_c4.exit
  %i.at = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ak, ptr noundef @ei_type_4_header_zero) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %validate_c4.exit
  %.not74 = icmp eq i32 %i.aj, 0
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr @hf_oid_data, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.aj, i32 noundef 0) ; 0 uses
  %i.aw = add nuw nsw i32 %i.aj, %i.ar
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.aw, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  br i1 %.not72, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l, %dissect_2009_11_type_5.exit
  %.1 = phi i32 [ %i.cg, %dissect_2009_11_type_5.exit ], [ %.0, %bb.l ] ; 4 uses
  %i.ax = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.1) ; 10 uses
  %i.ay = load i32, ptr @hf_oid_all_attribute_data, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef %.1, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.ba = load i32, ptr @ett_oid_attribute, align 4
  %i.bb = tail call ptr @proto_item_add_subtree(ptr noundef %i.az, i32 noundef %i.ba) ; 5 uses
  %i.bc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1)
  tail call void @increment_dissection_depth(ptr noundef %1)
  %i.bd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.ax, i32 noundef 0), !inline_history !41 ; 2 uses
  %i.be = load i32, ptr @hf_oid_attribute_header, align 4
  %i.bf = zext i8 %i.bd to i32                    ; 4 uses
  %.not.i77 = icmp sgt i8 %i.bd, -1
  %i.bg = select i1 %.not.i77, ptr @.str.180, ptr @.str.699
  %i.bh = and i32 %i.bf, 63
  %i.bi = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bb, i32 noundef %i.be, ptr noundef %i.ax, i32 noundef 0, i32 noundef 1, i32 noundef %i.bf, ptr noundef @.str.698, i32 noundef %i.bf, ptr noundef nonnull %i.bg, i32 noundef %i.bh), !inline_history !41
  %i.bj = load i32, ptr @ett_oid_attribute_header, align 4
  %i.bk = tail call ptr @proto_item_add_subtree(ptr noundef %i.bi, i32 noundef %i.bj), !inline_history !41 ; 2 uses
  %i.bl = load i32, ptr @hf_oid_attribute_attribute, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.ax, i32 noundef 0, i32 noundef 1, i32 noundef 0), !inline_history !41 ; 0 uses
  %i.bn = load i32, ptr @hf_oid_attribute_id, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.bn, ptr noundef %i.ax, i32 noundef 0, i32 noundef 1, i32 noundef 0), !inline_history !41 ; 0 uses
  %i.bp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.ax, i32 noundef 1), !inline_history !41 ; 3 uses
  %i.bq = load i32, ptr @hf_oid_attribute_length, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bq, ptr noundef %i.ax, i32 noundef 1, i32 noundef 1, i32 noundef 0), !inline_history !41 ; 0 uses
  %i.bs = and i32 %i.bf, 127
  switch i32 %i.bs, label %bb.o [
    i32 1, label %bb.m
    i32 0, label %bb.n
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %.preheader
  %i.bt = load i32, ptr @hf_oid_attribute_data, align 4
  %i.bu = zext i8 %i.bp to i32                    ; 2 uses
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.bt, ptr noundef %i.ax, i32 noundef 2, i32 noundef %i.bu, i32 noundef 0), !inline_history !41 ; 0 uses
  br label %dissect_2009_11_type_5.exit

bb.n:                                             ; preds = %.preheader, %.preheader
  %i.bw = zext i8 %i.bp to i32
  %i.bx = tail call ptr @tvb_new_subset_length(ptr noundef %i.ax, i32 noundef 2, i32 noundef %i.bw), !inline_history !41
  %i.by = load i32, ptr @hf_oid_attribute_oid, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.by, ptr noundef %i.ax, i32 noundef 2, i32 noundef -1, i32 noundef 0), !inline_history !41
  %i.ca = load i32, ptr @ett_oid_attribute_oid, align 4
  %i.cb = tail call ptr @proto_item_add_subtree(ptr noundef %i.bz, i32 noundef %i.ca), !inline_history !41
  tail call void @increment_dissection_depth(ptr noundef %1), !inline_history !41
  %i.cc = tail call i32 @dissect_2009_11_type_4(ptr noundef %i.bx, ptr noundef %1, ptr noundef %i.cb, ptr poison), !inline_history !41
  tail call void @decrement_dissection_depth(ptr noundef %1), !inline_history !41
  br label %dissect_2009_11_type_5.exit

bb.o:                                             ; preds = %.preheader
  %i.cd = load i32, ptr @hf_oid_attribute_data, align 4
  %i.ce = zext i8 %i.bp to i32                    ; 2 uses
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.cd, ptr noundef %i.ax, i32 noundef 2, i32 noundef %i.ce, i32 noundef 0), !inline_history !41 ; 0 uses
  br label %dissect_2009_11_type_5.exit

dissect_2009_11_type_5.exit:                      ; preds = %bb.m, %bb.n, %bb.o
  %.0.in.i = phi i32 [ %i.ce, %bb.o ], [ %i.bu, %bb.m ], [ %i.cc, %bb.n ]
  %.0.i78 = add i32 %.0.in.i, 2                   ; 2 uses
  tail call void @decrement_dissection_depth(ptr noundef %1)
  tail call void @proto_item_set_len(ptr noundef %i.az, i32 noundef %.0.i78)
  %i.cg = add i32 %.0.i78, %.1                    ; 2 uses
  %.not75 = icmp sgt i8 %i.bc, -1
  br i1 %.not75, label %.loopexit, label %.preheader, !llvm.loop !42

.loopexit:                                        ; preds = %dissect_2009_11_type_5.exit, %bb.l
  %.2 = phi i32 [ %.0, %bb.l ], [ %i.cg, %dissect_2009_11_type_5.exit ] ; 2 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ch = tail call ptr @proto_tree_get_parent(ptr noundef nonnull %2)
  tail call void @proto_item_set_len(ptr noundef %i.ch, i32 noundef %.2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dof_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = tail call ptr @find_conversation_pinfo(ptr noundef %1, i32 noundef 0) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.12, ptr noundef @.str.13, i32 noundef 5892, ptr noundef @.str.693) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @proto_2008_1_dof_tcp, align 4
  %i.d = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.b, i32 noundef %i.c) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc ptr @create_tcp_session_data(ptr noundef %1, ptr noundef %i.b) ; 2 uses
  %i.g = load i32, ptr @proto_2008_1_dof_tcp, align 4
  tail call void @conversation_add_proto_data(ptr noundef nonnull %i.b, i32 noundef %i.g, ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0107 = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 13 uses
  %i.h = getelementptr i8, ptr %.0107, i64 56     ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.ay, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @wmem_file_scope()
  %i.l = load i32, ptr @proto_2008_1_dof_tcp, align 4
  %i.m = tail call ptr @p_get_proto_data(ptr noundef %i.k, ptr noundef %1, i32 noundef %i.l, i32 noundef 0) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @wmem_file_scope()
  %i.p = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.o, i64 noundef 24) #22 ; 2 uses
  %i.q = tail call ptr @wmem_file_scope()
  %i.r = load i32, ptr @proto_2008_1_dof_tcp, align 4
  tail call void @p_add_proto_data(ptr noundef %i.q, ptr noundef %1, i32 noundef %i.r, i32 noundef 0, ptr noundef %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0106 = phi ptr [ %i.p, %bb.g ], [ %i.m, %bb.f ] ; 6 uses
  %.val119 = load i32, ptr %3, align 4
  %i.s = getelementptr i8, ptr %1, i64 208        ; 5 uses
  %i.t = getelementptr i8, ptr %.0107, i64 64     ; 4 uses
  %i.u = load i32, ptr %i.s, align 8
  %i.v = load i32, ptr %i.t, align 8
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %addresses_equal.exit.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %1, i64 212
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
end_hunk_0
begin_hunk_1_@read_c4:bb.a
  %exitcond.not = icmp eq i32 %i.k, %.
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.j, %.lr.ph ]
  %.023.lcssa = phi i32 [ %.02328, %bb.a ], [ %.023, %.lr.ph ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i32 %.021, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.022.lcssa, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %.023.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @validate_c4(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 1
  %i.b = icmp ult i32 %2, 128
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %3, 2
  %i.e = icmp ult i32 %2, 16384
  %or.cond3 = and i1 %i.e, %i.d
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @DOFObjectID_Create_Unmarshal(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 5 uses
  %i.b = icmp ne ptr %2, null
  %i.c = icmp ugt i32 %i.a, 1
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %2, align 1                 ; 3 uses
  %i.e = lshr i8 %i.d, 6
  switch i8 %i.e, label %OALMarshal_UncompressValue.exit.thread [
    i8 2, label %bb.d
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %.017.i = phi i32 [ 2, %bb.b ], [ 4, %bb.c ]    ; 4 uses
  %i.f = icmp ugt i32 %.017.i, %i.a
  br i1 %i.f, label %.thread, label %.lr.ph.i

OALMarshal_UncompressValue.exit.thread:           ; preds = %bb.b
  %i.g = and i8 %i.d, 127
  %i.h = zext nneg i8 %i.g to i32
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = and i8 %i.d, 63
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  br i1 %exitcond.not.i, label %OALMarshal_UncompressValue.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.p = getelementptr i8, ptr %2, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.o, 16
  %i.t = shl nuw nsw i32 %i.r, 8
  %i.u = or disjoint i32 %i.s, %i.t
  %i.v = getelementptr i8, ptr %2, i64 3
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  br label %OALMarshal_UncompressValue.exit

OALMarshal_UncompressValue.exit:                  ; preds = %.lr.ph.i.2, %.lr.ph.i
  %.lcssa96 = phi i32 [ %i.o, %.lr.ph.i ], [ %i.y, %.lr.ph.i.2 ]
  %i.z = or disjoint i32 %.017.i, 1
  %.not.not = icmp ugt i32 %i.a, %.017.i
  br i1 %.not.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %OALMarshal_UncompressValue.exit.thread, %OALMarshal_UncompressValue.exit
  %i.aa = phi i32 [ 2, %OALMarshal_UncompressValue.exit.thread ], [ %i.z, %OALMarshal_UncompressValue.exit ]
  %.020.i89 = phi i32 [ %i.h, %OALMarshal_UncompressValue.exit.thread ], [ %.lcssa96, %OALMarshal_UncompressValue.exit ]
  %.088 = phi i32 [ 1, %OALMarshal_UncompressValue.exit.thread ], [ %.017.i, %OALMarshal_UncompressValue.exit ]
  %i.ab = zext nneg i32 %.088 to i64
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1             ; 3 uses
  %i.ae = and i8 %i.ad, 64
  %.not59 = icmp eq i8 %i.ae, 0
  br i1 %.not59, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.af = and i8 %i.ad, 63                        ; 2 uses
  %i.ag = icmp eq i32 %.020.i89, 0
  %i.ah = icmp ne i8 %i.af, 0
  %or.cond6 = and i1 %i.ag, %i.ah
  br i1 %or.cond6, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = zext nneg i8 %i.af to i32
  %i.aj = add nuw nsw i32 %i.aa, %i.ai            ; 2 uses
  %.04978 = icmp slt i8 %i.ad, 0
  br i1 %.04978, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.05079 = phi i32 [ %i.at, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = add i32 %.05079, 2                      ; 2 uses
  %.not62 = icmp ult i32 %i.a, %i.ak
  br i1 %.not62, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.al = zext i32 %.05079 to i64
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = add i32 %.05079, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.ak, %i.as                    ; 2 uses
  %.049 = icmp slt i8 %i.an, 0
  br i1 %.049, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.050.lcssa = phi i32 [ %i.aj, %bb.g ], [ %i.at, %bb.h ] ; 5 uses
  %.not60 = icmp ult i32 %i.a, %.050.lcssa
  br i1 %.not60, label %.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.au = add i32 %.050.lcssa, 1
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 8
  %i.ax = tail call noalias ptr @wmem_alloc0(ptr noundef %0, i64 noundef %i.aw) #22 ; 5 uses
  store i32 %.050.lcssa, ptr %1, align 4
  %.not61 = icmp eq ptr %i.ax, null
  br i1 %.not61, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.ax, align 4
  %i.ay = trunc i32 %.050.lcssa to i16
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  store i16 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.ax, i64 6      ; 2 uses
  %i.bb = zext i32 %.050.lcssa to i64             ; 2 uses
  %i.bc = add nuw nsw i64 %i.av, 2
  %i.bd = tail call ptr @__memcpy_chk(ptr noundef %i.ba, ptr noundef nonnull %2, i64 noundef %i.bb, i64 noundef %i.bc) #26, !alias.scope !50 ; 0 uses
  %i.be = getelementptr i8, ptr %i.ba, i64 %i.bb
  store i8 0, ptr %i.be, align 1
  br label %bb.k

.thread:                                          ; preds = %.lr.ph, %bb.d, %._crit_edge, %bb.f, %bb.i, %bb.e, %OALMarshal_UncompressValue.exit, %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.6 = phi ptr [ %i.ax, %bb.j ], [ null, %.thread ]
  ret ptr %.6
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @ObjectID_ToStringLength(ptr nofree noundef nonnull readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 6          ; 13 uses
  %i.c = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.d = load i16, ptr %i.c, align 4              ; 4 uses
  %i.e = zext i16 %i.d to i32                     ; 3 uses
  %i.f = load i8, ptr %i.b, align 2               ; 3 uses
  %i.g = lshr i8 %i.f, 6                          ; 6 uses
  switch i8 %i.g, label %.thread.i.i.i.i [
    i8 2, label %bb.c
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.017.i.i.i.i = phi i32 [ 2, %bb.a ], [ 4, %bb.b ]
  %spec.select5.i.i.i = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i, i32 %i.e)
  br label %DOFObjectID_GetDataSize.exit.i

.thread.i.i.i.i:                                  ; preds = %bb.a
  %i.h = icmp ne i16 %i.d, 0
  %spec.select.i.i.i = zext i1 %i.h to i32
  br label %DOFObjectID_GetDataSize.exit.i

DOFObjectID_GetDataSize.exit.i:                   ; preds = %.thread.i.i.i.i, %bb.c
  %.0.i.i.i = phi i32 [ %spec.select.i.i.i, %.thread.i.i.i.i ], [ %spec.select5.i.i.i, %bb.c ]
  %i.i = zext nneg i32 %.0.i.i.i to i64
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 63
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %DOFObjectID_GetData.exit, label %bb.d

bb.d:                                             ; preds = %DOFObjectID_GetDataSize.exit.i
  switch i8 %i.g, label %.thread.i.i.i [
    i8 2, label %bb.f
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.017.i.i.i = phi i32 [ 2, %bb.d ], [ 4, %bb.e ]
  %spec.select5.i.i = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i, i32 %i.e)
  br label %DOFObjectID_GetClassSize.exit.i

.thread.i.i.i:                                    ; preds = %bb.d
  %i.m = icmp ne i16 %i.d, 0
  %spec.select.i.i = zext i1 %i.m to i32
  br label %DOFObjectID_GetClassSize.exit.i

DOFObjectID_GetClassSize.exit.i:                  ; preds = %.thread.i.i.i, %bb.f
  %.0.i.i = phi i32 [ %spec.select.i.i, %.thread.i.i.i ], [ %spec.select5.i.i, %bb.f ]
  %i.n = zext nneg i32 %.0.i.i to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 7
  br label %DOFObjectID_GetData.exit

DOFObjectID_GetData.exit:                         ; preds = %DOFObjectID_GetDataSize.exit.i, %DOFObjectID_GetClassSize.exit.i
  %.0.i = phi ptr [ %i.p, %DOFObjectID_GetClassSize.exit.i ], [ null, %DOFObjectID_GetDataSize.exit.i ] ; 2 uses
  switch i8 %i.g, label %.thread.i.i.i46 [
    i8 2, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %DOFObjectID_GetData.exit
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %DOFObjectID_GetData.exit
  %.017.i.i.i42 = phi i32 [ 2, %DOFObjectID_GetData.exit ], [ 4, %bb.g ]
  %spec.select5.i.i43 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i42, i32 %i.e)
  br label %DOFObjectID_GetDataSize.exit

.thread.i.i.i46:                                  ; preds = %DOFObjectID_GetData.exit
  %i.q = icmp ne i16 %i.d, 0
  %spec.select.i.i47 = zext i1 %i.q to i32
  br label %DOFObjectID_GetDataSize.exit

DOFObjectID_GetDataSize.exit:                     ; preds = %bb.h, %.thread.i.i.i46
  %.0.i.i45 = phi i32 [ %spec.select.i.i47, %.thread.i.i.i46 ], [ %spec.select5.i.i43, %bb.h ]
  %i.r = zext nneg i32 %.0.i.i45 to i64
  %i.s = getelementptr i8, ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 63                          ; 4 uses
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %.not102.i = icmp eq i8 %i.u, 0
  br i1 %.not102.i, label %.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %DOFObjectID_GetDataSize.exit
  %wide.trip.count.i = zext nneg i8 %i.u to i64   ; 3 uses
  %min.iters.check = icmp samesign ult i8 %i.u, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 60         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi163, %vector.body ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %i.w = getelementptr i8, ptr %.0.i, i64 %index
  %wide.load = load <4 x i8>, ptr %i.w, align 1   ; 7 uses
  %i.x = add <4 x i8> %wide.load, splat (i8 -32)
  %i.y = icmp ult <4 x i8> %i.x, splat (i8 95)    ; 2 uses
  %i.z = icmp eq <4 x i8> %wide.load, splat (i8 91)
  %i.aa = icmp eq <4 x i8> %wide.load, splat (i8 93)
  %i.ab = icmp eq <4 x i8> %wide.load, splat (i8 123)
  %i.ac = icmp eq <4 x i8> %wide.load, splat (i8 125)
  %i.ad = and <4 x i8> %wide.load, splat (i8 -2)
  %i.ae = icmp eq <4 x i8> %i.ad, splat (i8 40)
  %i.af = or <4 x i1> %i.ae, %i.z
  %i.ag = or <4 x i1> %i.af, %i.aa
  %i.ah = or <4 x i1> %i.ag, %i.ab
  %i.ai = or <4 x i1> %i.ah, %i.ac
  %i.aj = and <4 x i8> %wide.load, splat (i8 -33)
  %i.ak = icmp eq <4 x i8> %i.aj, splat (i8 92)
  %i.al = or <4 x i1> %i.ai, %i.ak
  %i.am = select <4 x i1> %i.y, <4 x i1> %i.al, <4 x i1> zeroinitializer
  %not. = xor <4 x i1> %i.y, splat (i1 true)
  %i.an = zext <4 x i1> %not. to <4 x i32>
  %predphi = add <4 x i32> %vec.phi162, %i.an     ; 2 uses
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %predphi163 = add <4 x i32> %vec.phi, %i.ao     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi163) ; 2 uses
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.090.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.aq, %middle.block ]
  %.07589.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.090.i = phi i32 [ %.1.i, %bb.l ], [ %.090.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.07589.i = phi i32 [ %.176.i, %bb.l ], [ %.07589.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0.i, i64 %indvars.iv.i
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = add i8 %i.at, -32
  %or.cond.i = icmp ult i8 %i.au, 95
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = add i32 %.07589.i, 1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  switch i8 %i.at, label %bb.l [
    i8 40, label %bb.k
    i8 41, label %bb.k
    i8 91, label %bb.k
    i8 93, label %bb.k
    i8 123, label %bb.k
    i8 125, label %bb.k
    i8 92, label %bb.k
    i8 124, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.aw = add i32 %.090.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.176.i = phi i32 [ %.07589.i, %bb.k ], [ %.07589.i, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.aw, %bb.k ], [ %.090.i, %bb.j ], [ %.090.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.l, %middle.block
  %.176.i.lcssa = phi i32 [ %i.ar, %middle.block ], [ %.176.i, %bb.l ]
  %.1.i.lcssa = phi i32 [ %i.aq, %middle.block ], [ %.1.i, %bb.l ]
  %i.ax = icmp eq i32 %.176.i.lcssa, 0
  br i1 %i.ax, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %DOFObjectID_GetDataSize.exit, %._crit_edge.i
  %.0.lcssa125128.i = phi i32 [ %.1.i.lcssa, %._crit_edge.i ], [ 0, %DOFObjectID_GetDataSize.exit ]
  %i.ay = add i32 %.0.lcssa125128.i, %i.v
  br label %ObjectID_DataToString.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.az = shl nuw nsw i32 %i.v, 1
  %i.ba = add nuw nsw i32 %i.az, 2
  br label %ObjectID_DataToString.exit

ObjectID_DataToString.exit:                       ; preds = %.thread.i, %bb.m
  %.3.i = phi i32 [ %i.ba, %bb.m ], [ %i.ay, %.thread.i ] ; 3 uses
  switch i8 %i.g, label %DOFObjectID_GetIDClass.exit67 [
    i8 2, label %.lr.ph.preheader.i.i
    i8 3, label %bb.n
  ]

bb.n:                                             ; preds = %ObjectID_DataToString.exit
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %ObjectID_DataToString.exit, %bb.n
  %exitcond.not.i.i = phi i1 [ true, %ObjectID_DataToString.exit ], [ false, %bb.n ]
  %i.bb = and i8 %i.f, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = shl nuw nsw i32 %i.bc, 8                ; 2 uses
  br i1 %exitcond.not.i.i, label %DOFObjectID_GetIDClass.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.preheader.i.i
  %i.be = getelementptr i8, ptr %0, i64 7
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg
  %i.bi = getelementptr i8, ptr %0, i64 8
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bh, 16
  %i.bm = shl nuw nsw i32 %i.bk, 8
  %i.bn = or disjoint i32 %i.bl, %i.bm
  br label %DOFObjectID_GetIDClass.exit

DOFObjectID_GetIDClass.exit:                      ; preds = %.lr.ph.i.i.2, %.lr.ph.preheader.i.i
  %.lcssa188 = phi i32 [ %i.bd, %.lr.ph.preheader.i.i ], [ %i.bn, %.lr.ph.i.i.2 ]
  %.not = icmp ult i32 %.lcssa188, 16777216
  br i1 %.not, label %DOFObjectID_GetIDClass.exit.thread, label %bb.o

bb.o:                                             ; preds = %DOFObjectID_GetIDClass.exit
  %i.bo = add i32 %.3.i, 13
  br label %bb.r

DOFObjectID_GetIDClass.exit.thread:               ; preds = %DOFObjectID_GetIDClass.exit
  %i.bp = icmp eq i8 %i.g, 2
  %2 = select i1 %i.bp, i64 1, i64 3
  br label %.lr.ph.i.i50.epil

.lr.ph.i.i50.epil:                                ; preds = %.lr.ph.i.i50.epil, %DOFObjectID_GetIDClass.exit.thread
  %indvars.iv.i.i51.epil = phi i64 [ 1, %DOFObjectID_GetIDClass.exit.thread ], [ %indvars.iv.next.i.i53.epil, %.lr.ph.i.i50.epil ] ; 2 uses
  %.01923.i.i52.epil = phi i32 [ %i.bc, %DOFObjectID_GetIDClass.exit.thread ], [ %i.bu, %.lr.ph.i.i50.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %DOFObjectID_GetIDClass.exit.thread ], [ %epil.iter.next, %.lr.ph.i.i50.epil ]
  %i.bq = shl i32 %.01923.i.i52.epil, 8
  %indvars.iv.next.i.i53.epil = add nuw nsw i64 %indvars.iv.i.i51.epil, 1
  %i.br = getelementptr i8, ptr %i.b, i64 %indvars.iv.i.i51.epil
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %2
  br i1 %epil.iter.cmp.not, label %DOFObjectID_GetIDClass.exit57.epilog-lcssa, label %.lr.ph.i.i50.epil, !llvm.loop !53

DOFObjectID_GetIDClass.exit57.epilog-lcssa:       ; preds = %.lr.ph.i.i50.epil
  %i.bv = and i32 %.01923.i.i52.epil, 65280
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %DOFObjectID_GetIDClass.exit57.thread, label %bb.p

bb.p:                                             ; preds = %DOFObjectID_GetIDClass.exit57.epilog-lcssa
  %i.bx = add i32 %.3.i, 11
  br label %bb.r

DOFObjectID_GetIDClass.exit57.thread:             ; preds = %DOFObjectID_GetIDClass.exit57.epilog-lcssa
  switch i8 %i.g, label %DOFObjectID_GetIDClass.exit67 [
    i8 2, label %.lr.ph.i.i60
    i8 3, label %bb.q
  ]

bb.q:                                             ; preds = %DOFObjectID_GetIDClass.exit57.thread
  br label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %DOFObjectID_GetIDClass.exit57.thread, %bb.q
  %exitcond.not.i.i64 = phi i1 [ true, %DOFObjectID_GetIDClass.exit57.thread ], [ false, %bb.q ]
  %i.by = and i8 %i.f, 63
  %i.bz = zext nneg i8 %i.by to i32               ; 2 uses
  br i1 %exitcond.not.i.i64, label %DOFObjectID_GetIDClass.exit67.loopexit, label %.lr.ph.i.i60.2

.lr.ph.i.i60.2:                                   ; preds = %.lr.ph.i.i60
  %i.ca = shl nuw nsw i32 %i.bz, 16
  %i.cb = getelementptr i8, ptr %0, i64 7
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = getelementptr i8, ptr %0, i64 8
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci
  br label %DOFObjectID_GetIDClass.exit67.loopexit

DOFObjectID_GetIDClass.exit67.loopexit:           ; preds = %.lr.ph.i.i60.2, %.lr.ph.i.i60
  %.01923.i.i62.lcssa = phi i32 [ %i.bz, %.lr.ph.i.i60 ], [ %i.cj, %.lr.ph.i.i60.2 ]
  %i.ck = and i32 %.01923.i.i62.lcssa, 255
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = select i1 %i.cl, i32 7, i32 9
  br label %DOFObjectID_GetIDClass.exit67

DOFObjectID_GetIDClass.exit67:                    ; preds = %ObjectID_DataToString.exit, %DOFObjectID_GetIDClass.exit57.thread, %DOFObjectID_GetIDClass.exit67.loopexit
  %.019.lcssa.i.i65 = phi i32 [ %i.cm, %DOFObjectID_GetIDClass.exit67.loopexit ], [ 7, %DOFObjectID_GetIDClass.exit57.thread ], [ 7, %ObjectID_DataToString.exit ]
  %spec.select = add i32 %.019.lcssa.i.i65, %.3.i
  br label %bb.r

bb.r:                                             ; preds = %DOFObjectID_GetIDClass.exit67, %bb.p, %bb.o
  %.034 = phi i32 [ %i.bo, %bb.o ], [ %i.bx, %bb.p ], [ %spec.select, %DOFObjectID_GetIDClass.exit67 ] ; 4 uses
  tail call void @increment_dissection_depth(ptr noundef %1)
  %i.cn = load i16, ptr %i.c, align 4             ; 6 uses
  %i.co = zext i16 %i.cn to i32                   ; 3 uses
  %i.cp = load i8, ptr %i.b, align 2
  %i.cq = lshr i8 %i.cp, 6                        ; 4 uses
  switch i8 %i.cq, label %.thread.i.i.i72 [
    i8 2, label %bb.t
    i8 3, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.017.i.i.i68 = phi i32 [ 2, %bb.r ], [ 4, %bb.s ]
  %spec.select5.i.i69 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i68, i32 %i.co)
  br label %DOFObjectID_HasAttributes.exit

.thread.i.i.i72:                                  ; preds = %bb.r
  %i.cr = icmp ne i16 %i.cn, 0
  %spec.select.i.i73 = zext i1 %i.cr to i32
  br label %DOFObjectID_HasAttributes.exit

DOFObjectID_HasAttributes.exit:                   ; preds = %bb.t, %.thread.i.i.i72
  %.0.i.i71 = phi i32 [ %spec.select.i.i73, %.thread.i.i.i72 ], [ %spec.select5.i.i69, %bb.t ]
  %i.cs = zext nneg i32 %.0.i.i71 to i64
  %i.ct = getelementptr i8, ptr %i.b, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp slt i8 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %.thread

bb.u:                                             ; preds = %DOFObjectID_HasAttributes.exit
  switch i8 %i.cq, label %.thread.i.i.i.i80 [
    i8 2, label %bb.w
    i8 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.017.i.i.i.i74 = phi i32 [ 2, %bb.u ], [ 4, %bb.v ]
  %spec.select5.i.i.i75 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i74, i32 %i.co)
  br label %DOFObjectID_HasAttributes.exit.i

.thread.i.i.i.i80:                                ; preds = %bb.u
  %i.cw = icmp ne i16 %i.cn, 0
  %spec.select.i.i.i81 = zext i1 %i.cw to i32
  br label %DOFObjectID_HasAttributes.exit.i

DOFObjectID_HasAttributes.exit.i:                 ; preds = %.thread.i.i.i.i80, %bb.w
  %.0.i.i.i76 = phi i32 [ %spec.select.i.i.i81, %.thread.i.i.i.i80 ], [ %spec.select5.i.i.i75, %bb.w ]
  %i.cx = zext nneg i32 %.0.i.i.i76 to i64
  %i.cy = getelementptr i8, ptr %i.b, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp slt i8 %i.cz, 0
  br i1 %i.da, label %bb.x, label %DOFObjectID_GetAttributeCount.exit.thread

DOFObjectID_GetAttributeCount.exit.thread:        ; preds = %DOFObjectID_HasAttributes.exit.i
  %i.db = add i32 %.034, 2
  br label %.thread

bb.x:                                             ; preds = %DOFObjectID_HasAttributes.exit.i
  switch i8 %i.cq, label %.thread.i.i.i14.i [
    i8 2, label %bb.z
    i8 3, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.017.i.i.i11.i = phi i16 [ 2, %bb.x ], [ 4, %bb.y ]
  %spec.select5.i.i12.i = tail call i16 @llvm.umin.i16(i16 %.017.i.i.i11.i, i16 %i.cn)
  br label %DOFObjectID_GetClassSize.exit.i.i

.thread.i.i.i14.i:                                ; preds = %bb.x
  %i.dc = icmp ne i16 %i.cn, 0
  %spec.select.i.i15.i = zext i1 %i.dc to i16
  br label %DOFObjectID_GetClassSize.exit.i.i

DOFObjectID_GetClassSize.exit.i.i:                ; preds = %.thread.i.i.i14.i, %bb.z
  %.0.i.i13.i = phi i16 [ %spec.select.i.i15.i, %.thread.i.i.i14.i ], [ %spec.select5.i.i12.i, %bb.z ]
  switch i8 %i.cq, label %.thread.i.i.i.i.i [
    i8 2, label %bb.ab
    i8 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %DOFObjectID_GetClassSize.exit.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %DOFObjectID_GetClassSize.exit.i.i
  %.017.i.i.i.i.i = phi i32 [ 2, %DOFObjectID_GetClassSize.exit.i.i ], [ 4, %bb.aa ]
  %spec.select5.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i.i, i32 %i.co)
  br label %DOFObjectID_GetBaseSize.exit.i

.thread.i.i.i.i.i:                                ; preds = %DOFObjectID_GetClassSize.exit.i.i
  %i.dd = icmp ne i16 %i.cn, 0
  %spec.select.i.i.i.i = zext i1 %i.dd to i32
  br label %DOFObjectID_GetBaseSize.exit.i

DOFObjectID_GetBaseSize.exit.i:                   ; preds = %.thread.i.i.i.i.i, %bb.ab
  %.0.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.thread.i.i.i.i.i ], [ %spec.select5.i.i.i.i, %bb.ab ]
  %i.de = zext nneg i32 %.0.i.i.i.i to i64
  %i.df = getelementptr i8, ptr %i.b, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %i.dg, 63
  %i.di = trunc nuw nsw i16 %.0.i.i13.i to i8
  %i.dj = add nuw nsw i8 %i.di, 1
  %i.dk = add nuw nsw i8 %i.dj, %i.dh
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.b, i64 %i.dl   ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %.not16.i = icmp sgt i8 %i.dn, -1
  br i1 %.not16.i, label %DOFObjectID_GetAttributeCount.exit.thread149, label %.lr.ph.i78

DOFObjectID_GetAttributeCount.exit.thread149:     ; preds = %DOFObjectID_GetBaseSize.exit.i
  %i.do = add i32 %.034, 2
  br label %.lr.ph

.lr.ph.i78:                                       ; preds = %DOFObjectID_GetBaseSize.exit.i, %.lr.ph.i78
  %.018.i = phi ptr [ %i.du, %.lr.ph.i78 ], [ %i.dm, %DOFObjectID_GetBaseSize.exit.i ] ; 2 uses
  %.0917.i = phi i8 [ %i.dp, %.lr.ph.i78 ], [ 1, %DOFObjectID_GetBaseSize.exit.i ] ; 2 uses
  %i.dp = add i8 %.0917.i, 1                      ; 2 uses
  %i.dq = getelementptr i8, ptr %.018.i, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr i8, ptr %.018.i, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 2      ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1
  %.not.i79 = icmp sgt i8 %i.dv, -1
  br i1 %.not.i79, label %DOFObjectID_GetAttributeCount.exit, label %.lr.ph.i78, !llvm.loop !3

DOFObjectID_GetAttributeCount.exit:               ; preds = %.lr.ph.i78
  %i.dw = add i32 %.034, 2                        ; 2 uses
  %.not135 = icmp eq i8 %i.dp, 0
  br i1 %.not135, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %DOFObjectID_GetAttributeCount.exit.thread149, %DOFObjectID_GetAttributeCount.exit
  %i.dx = phi i32 [ %i.do, %DOFObjectID_GetAttributeCount.exit.thread149 ], [ %i.dw, %DOFObjectID_GetAttributeCount.exit ]
  %.1.i77152 = phi i8 [ 0, %DOFObjectID_GetAttributeCount.exit.thread149 ], [ %.0917.i, %DOFObjectID_GetAttributeCount.exit ]
  %i.dy = getelementptr i8, ptr %1, i64 416
  %umin = tail call i8 @llvm.umin.i8(i8 %.1.i77152, i8 127)
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.as
  %.033133 = phi i8 [ 0, %.lr.ph ], [ %i.gt, %bb.as ] ; 4 uses
  %.1132 = phi i32 [ %i.dx, %.lr.ph ], [ %.3, %bb.as ] ; 3 uses
  %i.dz = load i16, ptr %i.c, align 4             ; 5 uses
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = load i8, ptr %i.b, align 2
  %i.ec = lshr i8 %i.eb, 6                        ; 3 uses
  switch i8 %i.ec, label %.thread.i.i.i.i96 [
    i8 2, label %bb.ae
    i8 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.017.i.i.i.i82 = phi i32 [ 2, %bb.ac ], [ 4, %bb.ad ]
  %spec.select5.i.i.i83 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i82, i32 %i.ea)
  br label %DOFObjectID_HasAttributes.exit.i84

.thread.i.i.i.i96:                                ; preds = %bb.ac
  %i.ed = icmp ne i16 %i.dz, 0
  %spec.select.i.i.i97 = zext i1 %i.ed to i32
  br label %DOFObjectID_HasAttributes.exit.i84

DOFObjectID_HasAttributes.exit.i84:               ; preds = %.thread.i.i.i.i96, %bb.ae
  %.0.i.i.i85 = phi i32 [ %spec.select.i.i.i97, %.thread.i.i.i.i96 ], [ %spec.select5.i.i.i83, %bb.ae ]
  %i.ee = zext nneg i32 %.0.i.i.i85 to i64
  %i.ef = getelementptr i8, ptr %i.b, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp slt i8 %i.eg, 0
  br i1 %i.eh, label %bb.af, label %.thread

bb.af:                                            ; preds = %DOFObjectID_HasAttributes.exit.i84
  switch i8 %i.ec, label %.thread.i.i.i20.i [
    i8 2, label %bb.ah
    i8 3, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.017.i.i.i17.i = phi i16 [ 2, %bb.af ], [ 4, %bb.ag ]
  %spec.select5.i.i18.i = tail call i16 @llvm.umin.i16(i16 %.017.i.i.i17.i, i16 %i.dz)
  br label %DOFObjectID_GetClassSize.exit.i.i86

.thread.i.i.i20.i:                                ; preds = %bb.af
  %i.ei = icmp ne i16 %i.dz, 0
  %spec.select.i.i21.i = zext i1 %i.ei to i16
  br label %DOFObjectID_GetClassSize.exit.i.i86

DOFObjectID_GetClassSize.exit.i.i86:              ; preds = %.thread.i.i.i20.i, %bb.ah
  %.0.i.i19.i = phi i16 [ %spec.select.i.i21.i, %.thread.i.i.i20.i ], [ %spec.select5.i.i18.i, %bb.ah ]
  switch i8 %i.ec, label %.thread.i.i.i.i.i94 [
    i8 2, label %bb.aj
    i8 3, label %bb.ai
  ]

bb.ai:                                            ; preds = %DOFObjectID_GetClassSize.exit.i.i86
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %DOFObjectID_GetClassSize.exit.i.i86
  %.017.i.i.i.i.i87 = phi i32 [ 2, %DOFObjectID_GetClassSize.exit.i.i86 ], [ 4, %bb.ai ]
  %spec.select5.i.i.i.i88 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i.i87, i32 %i.ea)
  br label %DOFObjectID_GetBaseSize.exit.i89

.thread.i.i.i.i.i94:                              ; preds = %DOFObjectID_GetClassSize.exit.i.i86
  %i.ej = icmp ne i16 %i.dz, 0
  %spec.select.i.i.i.i95 = zext i1 %i.ej to i32
  br label %DOFObjectID_GetBaseSize.exit.i89

DOFObjectID_GetBaseSize.exit.i89:                 ; preds = %.thread.i.i.i.i.i94, %bb.aj
  %.0.i.i.i.i90 = phi i32 [ %spec.select.i.i.i.i95, %.thread.i.i.i.i.i94 ], [ %spec.select5.i.i.i.i88, %bb.aj ]
  %i.ek = zext nneg i32 %.0.i.i.i.i90 to i64
  %i.el = getelementptr i8, ptr %i.b, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i8 %i.em, 63
  %i.eo = trunc nuw nsw i16 %.0.i.i19.i to i8
  %i.ep = add nuw nsw i8 %i.eo, 1
  %i.eq = add nuw nsw i8 %i.ep, %i.en
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.b, i64 %i.er   ; 2 uses
  %i.et = icmp ne i8 %.033133, 0                  ; 2 uses
  br i1 %i.et, label %.lr.ph.i91, label %DOFObjectID_GetAttributeAtIndex.exit

.lr.ph.i91:                                       ; preds = %DOFObjectID_GetBaseSize.exit.i89, %bb.ak
  %i.eu = phi i8 [ %i.fb, %bb.ak ], [ 1, %DOFObjectID_GetBaseSize.exit.i89 ] ; 2 uses
  %.023.i = phi ptr [ %i.fa, %bb.ak ], [ %i.es, %DOFObjectID_GetBaseSize.exit.i89 ] ; 3 uses
  %i.ev = load i8, ptr %.023.i, align 1
  %.not.i92 = icmp sgt i8 %i.ev, -1
  br i1 %.not.i92, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i91
  %i.ew = getelementptr i8, ptr %.023.i, i64 1
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr i8, ptr %.023.i, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 2      ; 2 uses
  %i.fb = add nuw nsw i8 %i.eu, 1
  %i.fc = icmp eq i8 %.033133, %i.eu
  br i1 %i.fc, label %DOFObjectID_GetAttributeAtIndex.exit, label %.lr.ph.i91

DOFObjectID_GetAttributeAtIndex.exit:             ; preds = %bb.ak, %DOFObjectID_GetBaseSize.exit.i89
  %.0.lcssa.i = phi ptr [ %i.es, %DOFObjectID_GetBaseSize.exit.i89 ], [ %i.fa, %bb.ak ] ; 2 uses
  %i.fd = getelementptr i8, ptr %.0.lcssa.i, i64 2 ; 3 uses
  %i.fe = getelementptr i8, ptr %.0.lcssa.i, i64 1
  %i.ff = load i8, ptr %i.fe, align 1             ; 4 uses
  %i.fg = zext i8 %i.ff to i32                    ; 4 uses
  %i.fh = zext i1 %i.et to i32
  %i.fi = load ptr, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.fg, ptr %i.a, align 4
  %i.fj = call fastcc ptr @DOFObjectID_Create_Unmarshal(ptr noundef %i.fi, ptr noundef nonnull %i.a, ptr noundef readonly %i.fd) ; 2 uses
  %.not.i98 = icmp eq ptr %i.fj, null
  %i.fk = load i32, ptr %i.a, align 4
  %.not7.i = icmp ne i32 %i.fk, %i.fg
  %i.fl = select i1 %.not.i98, i1 true, i1 %.not7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.fl, label %bb.am, label %bb.al

bb.al:                                            ; preds = %DOFObjectID_GetAttributeAtIndex.exit
  %i.fm = tail call fastcc i32 @ObjectID_ToStringLength(ptr noundef %i.fj, ptr noundef %1)
  br label %bb.as

bb.am:                                            ; preds = %DOFObjectID_GetAttributeAtIndex.exit
  %.not102.i100 = icmp eq i8 %i.ff, 0
  br i1 %.not102.i100, label %.thread.i115, label %.lr.ph.preheader.i101

.lr.ph.preheader.i101:                            ; preds = %bb.am
  %wide.trip.count.i102 = zext i8 %i.ff to i64    ; 3 uses
  %min.iters.check166 = icmp ult i8 %i.ff, 4
  br i1 %min.iters.check166, label %.lr.ph.i103.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.preheader.i101
  %n.vec168 = and i64 %wide.trip.count.i102, 252  ; 3 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body169 ] ; 2 uses
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph167 ], [ %predphi175, %vector.body169 ]
  %vec.phi172 = phi <4 x i32> [ zeroinitializer, %vector.ph167 ], [ %predphi174, %vector.body169 ]
  %i.fn = getelementptr i8, ptr %i.fd, i64 %index170
  %wide.load173 = load <4 x i8>, ptr %i.fn, align 1 ; 7 uses
  %i.fo = add <4 x i8> %wide.load173, splat (i8 -32)
  %i.fp = icmp ult <4 x i8> %i.fo, splat (i8 95)  ; 2 uses
  %i.fq = icmp eq <4 x i8> %wide.load173, splat (i8 91)
  %i.fr = icmp eq <4 x i8> %wide.load173, splat (i8 93)
  %i.fs = icmp eq <4 x i8> %wide.load173, splat (i8 123)
  %i.ft = icmp eq <4 x i8> %wide.load173, splat (i8 125)
  %i.fu = and <4 x i8> %wide.load173, splat (i8 -2)
  %i.fv = icmp eq <4 x i8> %i.fu, splat (i8 40)
  %i.fw = or <4 x i1> %i.fv, %i.fq
  %i.fx = or <4 x i1> %i.fw, %i.fr
  %i.fy = or <4 x i1> %i.fx, %i.fs
  %i.fz = or <4 x i1> %i.fy, %i.ft
  %i.ga = and <4 x i8> %wide.load173, splat (i8 -33)
  %i.gb = icmp eq <4 x i8> %i.ga, splat (i8 92)
  %i.gc = or <4 x i1> %i.fz, %i.gb
  %i.gd = select <4 x i1> %i.fp, <4 x i1> %i.gc, <4 x i1> zeroinitializer
  %not.182 = xor <4 x i1> %i.fp, splat (i1 true)
  %i.ge = zext <4 x i1> %not.182 to <4 x i32>
  %predphi174 = add <4 x i32> %vec.phi172, %i.ge  ; 2 uses
  %i.gf = zext <4 x i1> %i.gd to <4 x i32>
  %predphi175 = add <4 x i32> %vec.phi171, %i.gf  ; 2 uses
  %index.next176 = add nuw i64 %index170, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.gg, label %middle.block177, label %vector.body169, !llvm.loop !54

middle.block177:                                  ; preds = %vector.body169
  %i.gh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi175) ; 2 uses
  %i.gi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi174) ; 2 uses
  %cmp.n178 = icmp eq i64 %n.vec168, %wide.trip.count.i102
  br i1 %cmp.n178, label %._crit_edge.i112, label %.lr.ph.i103.preheader

.lr.ph.i103.preheader:                            ; preds = %.lr.ph.preheader.i101, %middle.block177
  %indvars.iv.i104.ph = phi i64 [ 0, %.lr.ph.preheader.i101 ], [ %n.vec168, %middle.block177 ]
  %.090.i105.ph = phi i32 [ 0, %.lr.ph.preheader.i101 ], [ %i.gh, %middle.block177 ]
  %.07589.i106.ph = phi i32 [ 0, %.lr.ph.preheader.i101 ], [ %i.gi, %middle.block177 ]
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.preheader, %bb.aq
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i110, %bb.aq ], [ %indvars.iv.i104.ph, %.lr.ph.i103.preheader ] ; 2 uses
  %.090.i105 = phi i32 [ %.1.i109, %bb.aq ], [ %.090.i105.ph, %.lr.ph.i103.preheader ] ; 3 uses
  %.07589.i106 = phi i32 [ %.176.i108, %bb.aq ], [ %.07589.i106.ph, %.lr.ph.i103.preheader ] ; 3 uses
  %i.gj = getelementptr i8, ptr %i.fd, i64 %indvars.iv.i104
  %i.gk = load i8, ptr %i.gj, align 1             ; 2 uses
  %i.gl = add i8 %i.gk, -32
  %or.cond.i107 = icmp ult i8 %i.gl, 95
  br i1 %or.cond.i107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i103
  %i.gm = add i32 %.07589.i106, 1
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i103
  switch i8 %i.gk, label %bb.aq [
    i8 40, label %bb.ap
    i8 41, label %bb.ap
    i8 91, label %bb.ap
    i8 93, label %bb.ap
    i8 123, label %bb.ap
    i8 125, label %bb.ap
    i8 92, label %bb.ap
    i8 124, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.gn = add i32 %.090.i105, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.176.i108 = phi i32 [ %.07589.i106, %bb.ap ], [ %.07589.i106, %bb.ao ], [ %i.gm, %bb.an ] ; 2 uses
  %.1.i109 = phi i32 [ %i.gn, %bb.ap ], [ %.090.i105, %bb.ao ], [ %.090.i105, %bb.an ] ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i110, %wide.trip.count.i102
  br i1 %exitcond.not.i111, label %._crit_edge.i112, label %.lr.ph.i103, !llvm.loop !55

._crit_edge.i112:                                 ; preds = %bb.aq, %middle.block177
  %.176.i108.lcssa = phi i32 [ %i.gi, %middle.block177 ], [ %.176.i108, %bb.aq ]
  %.1.i109.lcssa = phi i32 [ %i.gh, %middle.block177 ], [ %.1.i109, %bb.aq ]
  %i.go = icmp eq i32 %.176.i108.lcssa, 0
  br i1 %i.go, label %.thread.i115, label %bb.ar

.thread.i115:                                     ; preds = %bb.am, %._crit_edge.i112
  %.0.lcssa125128.i114 = phi i32 [ %.1.i109.lcssa, %._crit_edge.i112 ], [ 0, %bb.am ]
  %i.gp = add i32 %.0.lcssa125128.i114, %i.fg
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i112
  %i.gq = shl nuw nsw i32 %i.fg, 1
  %i.gr = add nuw nsw i32 %i.gq, 2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread.i115, %bb.al
  %.pn = phi i32 [ %i.fm, %bb.al ], [ %i.gr, %bb.ar ], [ %i.gp, %.thread.i115 ]
  %spec.select41 = add i32 %.1132, 5
  %i.gs = add i32 %spec.select41, %i.fh
  %.3 = add i32 %i.gs, %.pn                       ; 2 uses
  %i.gt = add nuw i8 %.033133, 1
  %exitcond.not = icmp eq i8 %.033133, %umin
  br i1 %exitcond.not, label %.thread, label %bb.ac, !llvm.loop !56

.thread:                                          ; preds = %bb.as, %DOFObjectID_HasAttributes.exit.i84, %.lr.ph.i91, %DOFObjectID_GetAttributeCount.exit.thread, %DOFObjectID_GetAttributeCount.exit, %DOFObjectID_HasAttributes.exit
  %.6 = phi i32 [ %.034, %DOFObjectID_HasAttributes.exit ], [ %i.db, %DOFObjectID_GetAttributeCount.exit.thread ], [ %i.dw, %DOFObjectID_GetAttributeCount.exit ], [ %.1132, %.lr.ph.i91 ], [ %.3, %bb.as ], [ %.1132, %DOFObjectID_HasAttributes.exit.i84 ]
  tail call void @decrement_dissection_depth(ptr noundef %1)
  ret i32 %.6
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @ObjectID_ToString(ptr nofree noundef nonnull readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) initializes((0, 2)) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  store i8 91, ptr %1, align 1
  %i.b = getelementptr i8, ptr %1, i64 1
  store i8 123, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %0, i64 6          ; 13 uses
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  %i.e = lshr i8 %i.d, 6
  switch i8 %i.e, label %.thread146 [
    i8 2, label %.lr.ph.i.i
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.lr.ph.i.i

.thread146:                                       ; preds = %bb.a
  %i.f = and i8 %i.d, 127
  %i.g = zext nneg i8 %i.f to i32
  br label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %exitcond.not.i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ]
  %i.h = and i8 %i.d, 63
  %i.i = zext nneg i8 %i.h to i32                 ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 8                  ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 7
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  br i1 %exitcond.not.i.i, label %DOFObjectID_GetIDClass.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = shl nuw nsw i32 %i.s, 8                  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 9
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  br label %DOFObjectID_GetIDClass.exit

DOFObjectID_GetIDClass.exit:                      ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i
  %.01923.i.i.lcssa = phi i32 [ %i.i, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i.i.2 ]
  %.lcssa208 = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.t, %.lr.ph.i.i.2 ] ; 8 uses
  %.lcssa207 = phi i32 [ %i.n, %.lr.ph.i.i ], [ %i.x, %.lr.ph.i.i.2 ] ; 2 uses
  %.not = icmp ult i32 %.lcssa208, 16777216
  br i1 %.not, label %bb.c, label %.thread140

.thread140:                                       ; preds = %DOFObjectID_GetIDClass.exit
  %i.y = lshr i32 %.lcssa208, 28
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr @OALString_HexChar, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr i8, ptr %1, i64 2
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i32 %.lcssa208, 24
  %i.ae = and i32 %i.ad, 15
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr @OALString_HexChar, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr i8, ptr %1, i64 3
  store i8 %i.ah, ptr %i.ai, align 1
  br label %.thread151

bb.c:                                             ; preds = %DOFObjectID_GetIDClass.exit
  %.not93 = icmp samesign ult i32 %.lcssa208, 65536
  br i1 %.not93, label %bb.d, label %.thread151

.thread151:                                       ; preds = %bb.c, %.thread140
  %.090145 = phi i32 [ 4, %.thread140 ], [ 2, %bb.c ] ; 2 uses
  %i.aj = lshr i32 %.lcssa208, 20
  %i.ak = and i32 %i.aj, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr @OALString_HexChar, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext nneg i32 %.090145 to i64
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao     ; 2 uses
  store i8 %i.an, ptr %i.ap, align 1
  %i.aq = lshr i32 %.lcssa208, 16
  %i.ar = and i32 %i.aq, 15
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr @OALString_HexChar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = add nuw nsw i32 %.090145, 2
  %i.aw = getelementptr i8, ptr %i.ap, i64 1
  store i8 %i.au, ptr %i.aw, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not94 = icmp eq i32 %.lcssa208, 0
  br i1 %.not94, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread151, %bb.d
  %.1156 = phi i32 [ %i.av, %.thread151 ], [ 2, %bb.d ] ; 2 uses
  %i.ax = lshr i32 %.lcssa208, 12
  %i.ay = and i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr @OALString_HexChar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext nneg i32 %.1156 to i64
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc     ; 2 uses
  store i8 %i.bb, ptr %i.bd, align 1
  %i.be = and i32 %.01923.i.i.lcssa, 15
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr @OALString_HexChar, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = add nuw nsw i32 %.1156, 2
  %i.bj = getelementptr i8, ptr %i.bd, i64 1
  store i8 %i.bh, ptr %i.bj, align 1
  br label %bb.f

bb.f:                                             ; preds = %.thread146, %bb.e, %bb.d
  %.019.lcssa.i.i135139150 = phi i32 [ %.lcssa207, %bb.e ], [ %.lcssa207, %bb.d ], [ %i.g, %.thread146 ] ; 2 uses
  %.2 = phi i32 [ %i.bi, %bb.e ], [ 2, %bb.d ], [ 2, %.thread146 ] ; 2 uses
  %i.bk = lshr i32 %.019.lcssa.i.i135139150, 4
  %i.bl = and i32 %i.bk, 15
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr @OALString_HexChar, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext nneg i32 %.2 to i64
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp     ; 4 uses
  store i8 %i.bo, ptr %i.bq, align 1
  %i.br = and i32 %.019.lcssa.i.i135139150, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr i8, ptr @OALString_HexChar, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %i.bq, i64 2
  store i8 125, ptr %i.bw, align 1
  %i.bx = add nuw nsw i32 %.2, 4                  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bq, i64 3
  store i8 58, ptr %i.by, align 1
  %i.bz = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.ca = load i16, ptr %i.bz, align 4            ; 4 uses
  %i.cb = zext i16 %i.ca to i32                   ; 3 uses
  %i.cc = load i8, ptr %i.c, align 2
  %i.cd = lshr i8 %i.cc, 6                        ; 3 uses
  switch i8 %i.cd, label %.thread.i.i.i.i [
    i8 2, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.017.i.i.i.i = phi i32 [ 2, %bb.f ], [ 4, %bb.g ]
  %spec.select5.i.i.i = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i, i32 %i.cb)
  br label %DOFObjectID_GetDataSize.exit.i

.thread.i.i.i.i:                                  ; preds = %bb.f
  %i.ce = icmp ne i16 %i.ca, 0
  %spec.select.i.i.i = zext i1 %i.ce to i32
  br label %DOFObjectID_GetDataSize.exit.i

DOFObjectID_GetDataSize.exit.i:                   ; preds = %.thread.i.i.i.i, %bb.h
  %.0.i.i.i = phi i32 [ %spec.select.i.i.i, %.thread.i.i.i.i ], [ %spec.select5.i.i.i, %bb.h ]
  %i.cf = zext nneg i32 %.0.i.i.i to i64
  %i.cg = getelementptr i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = and i8 %i.ch, 63
  %.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i, label %DOFObjectID_GetData.exit, label %bb.i

bb.i:                                             ; preds = %DOFObjectID_GetDataSize.exit.i
  switch i8 %i.cd, label %.thread.i.i.i [
    i8 2, label %bb.k
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.017.i.i.i = phi i32 [ 2, %bb.i ], [ 4, %bb.j ]
  %spec.select5.i.i = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i, i32 %i.cb)
  br label %DOFObjectID_GetClassSize.exit.i

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cj = icmp ne i16 %i.ca, 0
  %spec.select.i.i = zext i1 %i.cj to i32
  br label %DOFObjectID_GetClassSize.exit.i

DOFObjectID_GetClassSize.exit.i:                  ; preds = %.thread.i.i.i, %bb.k
  %.0.i.i = phi i32 [ %spec.select.i.i, %.thread.i.i.i ], [ %spec.select5.i.i, %bb.k ]
  %i.ck = zext nneg i32 %.0.i.i to i64
end_hunk_1
begin_hunk_2_@ObjectID_ToString:bb.a
DOFObjectID_GetAttributeCount.exit:               ; preds = %.lr.ph.i
  %i.ek = add i32 %i.cw, 1                        ; 2 uses
  %i.el = zext i32 %i.cw to i64
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  store i8 40, ptr %i.em, align 1
  %.not175 = icmp eq i8 %i.ed, 0
  br i1 %.not175, label %.thread163, label %.lr.ph

.lr.ph:                                           ; preds = %DOFObjectID_GetAttributeCount.exit.thread186, %DOFObjectID_GetAttributeCount.exit
  %i.en = phi i32 [ %i.ea, %DOFObjectID_GetAttributeCount.exit.thread186 ], [ %i.ek, %DOFObjectID_GetAttributeCount.exit ]
  %.1.i189 = phi i8 [ 0, %DOFObjectID_GetAttributeCount.exit.thread186 ], [ %.0917.i, %DOFObjectID_GetAttributeCount.exit ]
  %i.eo = getelementptr i8, ptr %2, i64 416
  %umin = tail call i8 @llvm.umin.i8(i8 %.1.i189, i8 127)
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ak
  %.089173 = phi i8 [ 0, %.lr.ph ], [ %i.hm, %bb.ak ] ; 4 uses
  %.3172 = phi i32 [ %i.en, %.lr.ph ], [ %.5, %bb.ak ] ; 5 uses
  %i.ep = load i16, ptr %i.bz, align 4            ; 5 uses
  %i.eq = zext i16 %i.ep to i32                   ; 2 uses
  %i.er = load i8, ptr %i.c, align 2
  %i.es = lshr i8 %i.er, 6                        ; 3 uses
  switch i8 %i.es, label %.thread.i.i.i.i129 [
    i8 2, label %bb.z
    i8 3, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.017.i.i.i.i116 = phi i32 [ 2, %bb.x ], [ 4, %bb.y ]
  %spec.select5.i.i.i117 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i116, i32 %i.eq)
  br label %DOFObjectID_HasAttributes.exit.i118

.thread.i.i.i.i129:                               ; preds = %bb.x
  %i.et = icmp ne i16 %i.ep, 0
  %spec.select.i.i.i130 = zext i1 %i.et to i32
  br label %DOFObjectID_HasAttributes.exit.i118

DOFObjectID_HasAttributes.exit.i118:              ; preds = %.thread.i.i.i.i129, %bb.z
  %.0.i.i.i119 = phi i32 [ %spec.select.i.i.i130, %.thread.i.i.i.i129 ], [ %spec.select5.i.i.i117, %bb.z ]
  %i.eu = zext nneg i32 %.0.i.i.i119 to i64
  %i.ev = getelementptr i8, ptr %i.c, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = icmp slt i8 %i.ew, 0
  br i1 %i.ex, label %bb.aa, label %.thread163

bb.aa:                                            ; preds = %DOFObjectID_HasAttributes.exit.i118
  switch i8 %i.es, label %.thread.i.i.i20.i [
    i8 2, label %bb.ac
    i8 3, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.017.i.i.i17.i = phi i16 [ 2, %bb.aa ], [ 4, %bb.ab ]
  %spec.select5.i.i18.i = tail call i16 @llvm.umin.i16(i16 %.017.i.i.i17.i, i16 %i.ep)
  br label %DOFObjectID_GetClassSize.exit.i.i120

.thread.i.i.i20.i:                                ; preds = %bb.aa
  %i.ey = icmp ne i16 %i.ep, 0
  %spec.select.i.i21.i = zext i1 %i.ey to i16
  br label %DOFObjectID_GetClassSize.exit.i.i120

DOFObjectID_GetClassSize.exit.i.i120:             ; preds = %.thread.i.i.i20.i, %bb.ac
  %.0.i.i19.i = phi i16 [ %spec.select.i.i21.i, %.thread.i.i.i20.i ], [ %spec.select5.i.i18.i, %bb.ac ]
  switch i8 %i.es, label %.thread.i.i.i.i.i127 [
    i8 2, label %bb.ae
    i8 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %DOFObjectID_GetClassSize.exit.i.i120
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %DOFObjectID_GetClassSize.exit.i.i120
  %.017.i.i.i.i.i121 = phi i32 [ 2, %DOFObjectID_GetClassSize.exit.i.i120 ], [ 4, %bb.ad ]
  %spec.select5.i.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %.017.i.i.i.i.i121, i32 %i.eq)
  br label %DOFObjectID_GetBaseSize.exit.i123

.thread.i.i.i.i.i127:                             ; preds = %DOFObjectID_GetClassSize.exit.i.i120
  %i.ez = icmp ne i16 %i.ep, 0
  %spec.select.i.i.i.i128 = zext i1 %i.ez to i32
  br label %DOFObjectID_GetBaseSize.exit.i123

DOFObjectID_GetBaseSize.exit.i123:                ; preds = %.thread.i.i.i.i.i127, %bb.ae
  %.0.i.i.i.i124 = phi i32 [ %spec.select.i.i.i.i128, %.thread.i.i.i.i.i127 ], [ %spec.select5.i.i.i.i122, %bb.ae ]
  %i.fa = zext nneg i32 %.0.i.i.i.i124 to i64
  %i.fb = getelementptr i8, ptr %i.c, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = and i8 %i.fc, 63
  %i.fe = trunc nuw nsw i16 %.0.i.i19.i to i8
  %i.ff = add nuw nsw i8 %i.fe, 1
  %i.fg = add nuw nsw i8 %i.ff, %i.fd
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = getelementptr i8, ptr %i.c, i64 %i.fh   ; 4 uses
  %i.fj = icmp eq i8 %.089173, 0
  br i1 %i.fj, label %DOFObjectID_GetAttributeAtIndex.exit.thread, label %.lr.ph.i125

DOFObjectID_GetAttributeAtIndex.exit.thread:      ; preds = %DOFObjectID_GetBaseSize.exit.i123
  %i.fk = load i8, ptr %i.fi, align 1
  %i.fl = getelementptr i8, ptr %i.fi, i64 1
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = getelementptr i8, ptr %i.fi, i64 2
  br label %bb.ah

.lr.ph.i125:                                      ; preds = %DOFObjectID_GetBaseSize.exit.i123, %bb.af
  %i.fo = phi i8 [ %i.fv, %bb.af ], [ 1, %DOFObjectID_GetBaseSize.exit.i123 ] ; 2 uses
  %.023.i = phi ptr [ %i.fu, %bb.af ], [ %i.fi, %DOFObjectID_GetBaseSize.exit.i123 ] ; 3 uses
  %i.fp = load i8, ptr %.023.i, align 1
  %.not.i126 = icmp sgt i8 %i.fp, -1
  br i1 %.not.i126, label %.thread163, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i125
  %i.fq = getelementptr i8, ptr %.023.i, i64 1
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr i8, ptr %.023.i, i64 %i.fs ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 2      ; 2 uses
  %i.fv = add nuw nsw i8 %i.fo, 1
  %i.fw = icmp eq i8 %.089173, %i.fo
  br i1 %i.fw, label %bb.ag, label %.lr.ph.i125

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i8, ptr %i.fu, align 1
  %i.fy = getelementptr i8, ptr %i.ft, i64 3
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = getelementptr i8, ptr %i.ft, i64 4
  %i.gb = add i32 %.3172, 1
  %i.gc = zext i32 %.3172 to i64
  %i.gd = getelementptr i8, ptr %1, i64 %i.gc
  store i8 124, ptr %i.gd, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %DOFObjectID_GetAttributeAtIndex.exit.thread, %bb.ag
  %.in.in = phi i8 [ %i.fx, %bb.ag ], [ %i.fk, %DOFObjectID_GetAttributeAtIndex.exit.thread ]
  %.in196 = phi i8 [ %i.fz, %bb.ag ], [ %i.fm, %DOFObjectID_GetAttributeAtIndex.exit.thread ]
  %i.ge = phi ptr [ %i.ga, %bb.ag ], [ %i.fn, %DOFObjectID_GetAttributeAtIndex.exit.thread ] ; 2 uses
  %.4 = phi i32 [ %i.gb, %bb.ag ], [ %.3172, %DOFObjectID_GetAttributeAtIndex.exit.thread ] ; 6 uses
  %i.gf = zext i8 %.in196 to i32                  ; 3 uses
  %.in = and i8 %.in.in, 127
  %i.gg = zext nneg i8 %.in to i64                ; 2 uses
  %i.gh = add i32 %.4, 1
  %i.gi = zext i32 %.4 to i64
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  store i8 123, ptr %i.gj, align 1
  %i.gk = lshr i64 %i.gg, 4
  %i.gl = getelementptr i8, ptr @OALString_HexChar, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = add i32 %.4, 2
  %i.go = zext i32 %i.gh to i64
  %i.gp = getelementptr i8, ptr %1, i64 %i.go
  store i8 %i.gm, ptr %i.gp, align 1
  %i.gq = and i64 %i.gg, 15
  %i.gr = getelementptr i8, ptr @OALString_HexChar, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = add i32 %.4, 3
  %i.gu = zext i32 %i.gn to i64
  %i.gv = getelementptr i8, ptr %1, i64 %i.gu
  store i8 %i.gs, ptr %i.gv, align 1
  %i.gw = add i32 %.4, 4
  %i.gx = zext i32 %i.gt to i64
  %i.gy = getelementptr i8, ptr %1, i64 %i.gx
  store i8 125, ptr %i.gy, align 1
  %i.gz = add i32 %.4, 5                          ; 3 uses
  %i.ha = zext i32 %i.gw to i64
  %i.hb = getelementptr i8, ptr %1, i64 %i.ha
  store i8 58, ptr %i.hb, align 1
  %i.hc = load ptr, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.gf, ptr %i.a, align 4
  %i.hd = call fastcc ptr @DOFObjectID_Create_Unmarshal(ptr noundef %i.hc, ptr noundef nonnull %i.a, ptr noundef readonly %i.ge) ; 2 uses
  %.not.i131 = icmp eq ptr %i.hd, null
  %i.he = load i32, ptr %i.a, align 4
  %.not7.i = icmp ne i32 %i.he, %i.gf
  %i.hf = select i1 %.not.i131, i1 true, i1 %.not7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.hf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @increment_dissection_depth(ptr noundef %2)
  %i.hg = zext i32 %i.gz to i64
  %i.hh = getelementptr i8, ptr %1, i64 %i.hg
  %i.hi = tail call fastcc i32 @ObjectID_ToString(ptr noundef %i.hd, ptr noundef %i.hh, ptr noundef %2)
  tail call void @decrement_dissection_depth(ptr noundef %2)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.hj = zext i32 %i.gz to i64
  %i.hk = getelementptr i8, ptr %1, i64 %i.hj
  %i.hl = tail call fastcc i32 @ObjectID_DataToString(ptr noundef %i.ge, i32 noundef %i.gf, ptr noundef %i.hk)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi i32 [ %i.hi, %bb.ai ], [ %i.hl, %bb.aj ]
  %.5 = add i32 %.pn, %i.gz                       ; 2 uses
  %i.hm = add nuw i8 %.089173, 1
  %exitcond.not = icmp eq i8 %.089173, %umin
  br i1 %exitcond.not, label %.thread163, label %bb.x, !llvm.loop !57

.thread163:                                       ; preds = %bb.ak, %DOFObjectID_HasAttributes.exit.i118, %.lr.ph.i125, %DOFObjectID_GetAttributeCount.exit.thread, %DOFObjectID_GetAttributeCount.exit
  %.3168 = phi i32 [ %i.dl, %DOFObjectID_GetAttributeCount.exit.thread ], [ %i.ek, %DOFObjectID_GetAttributeCount.exit ], [ %.3172, %.lr.ph.i125 ], [ %.5, %bb.ak ], [ %.3172, %DOFObjectID_HasAttributes.exit.i118 ] ; 2 uses
  %i.hn = add i32 %.3168, 1
  %i.ho = zext i32 %.3168 to i64
  %i.hp = getelementptr i8, ptr %1, i64 %i.ho
  store i8 41, ptr %i.hp, align 1
  br label %bb.al

bb.al:                                            ; preds = %.thread163, %DOFObjectID_HasAttributes.exit
  %.8 = phi i32 [ %i.hn, %.thread163 ], [ %i.cw, %DOFObjectID_HasAttributes.exit ] ; 2 uses
  %i.hq = add i32 %.8, 1
  %i.hr = zext i32 %.8 to i64
  %i.hs = getelementptr i8, ptr %1, i64 %i.hr
  store i8 93, ptr %i.hs, align 1
  ret i32 %i.hq
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @ObjectID_DataToString(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #17 {
bb.a:
  %.not102 = icmp eq i32 %1, 0
  br i1 %.not102, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 252          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi130, %vector.body ]
  %vec.phi129 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %i.a = getelementptr i8, ptr %0, i64 %index
  %wide.load = load <4 x i8>, ptr %i.a, align 1   ; 7 uses
  %i.b = add <4 x i8> %wide.load, splat (i8 -32)
  %i.c = icmp ult <4 x i8> %i.b, splat (i8 95)    ; 2 uses
  %i.d = icmp eq <4 x i8> %wide.load, splat (i8 91)
  %i.e = icmp eq <4 x i8> %wide.load, splat (i8 93)
  %i.f = icmp eq <4 x i8> %wide.load, splat (i8 123)
  %i.g = icmp eq <4 x i8> %wide.load, splat (i8 125)
  %i.h = and <4 x i8> %wide.load, splat (i8 -2)
  %i.i = icmp eq <4 x i8> %i.h, splat (i8 40)
  %i.j = or <4 x i1> %i.i, %i.d
  %i.k = or <4 x i1> %i.j, %i.e
  %i.l = or <4 x i1> %i.k, %i.f
  %i.m = or <4 x i1> %i.l, %i.g
  %i.n = and <4 x i8> %wide.load, splat (i8 -33)
  %i.o = icmp eq <4 x i8> %i.n, splat (i8 92)
  %i.p = or <4 x i1> %i.m, %i.o
  %i.q = select <4 x i1> %i.c, <4 x i1> %i.p, <4 x i1> zeroinitializer
  %not. = xor <4 x i1> %i.c, splat (i1 true)
  %i.r = zext <4 x i1> %not. to <4 x i32>
  %predphi = add <4 x i32> %vec.phi129, %i.r      ; 2 uses
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %predphi130 = add <4 x i32> %vec.phi, %i.s      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi130) ; 2 uses
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.090.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.07589.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader132, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %.lr.ph.preheader132 ] ; 2 uses
  %.090 = phi i32 [ %.1, %bb.e ], [ %.090.ph, %.lr.ph.preheader132 ] ; 3 uses
  %.07589 = phi i32 [ %.176, %bb.e ], [ %.07589.ph, %.lr.ph.preheader132 ] ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = add i8 %i.x, -32
  %or.cond = icmp ult i8 %i.y, 95
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = add i32 %.07589, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  switch i8 %i.x, label %bb.e [
    i8 40, label %bb.d
    i8 41, label %bb.d
    i8 91, label %bb.d
    i8 93, label %bb.d
    i8 123, label %bb.d
    i8 125, label %bb.d
    i8 92, label %bb.d
    i8 124, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.aa = add i32 %.090, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.176 = phi i32 [ %.07589, %bb.d ], [ %.07589, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.aa, %bb.d ], [ %.090, %bb.c ], [ %.090, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.e, %middle.block
  %.176.lcssa = phi i32 [ %i.v, %middle.block ], [ %.176, %bb.e ]
  %.1.lcssa = phi i32 [ %i.u, %middle.block ], [ %.1, %bb.e ]
  %i.ab = icmp eq i32 %.176.lcssa, 0
  %.not87 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not87, label %bb.j, label %.lr.ph100.preheader

.thread:                                          ; preds = %bb.a
  %.not87127 = icmp eq ptr %2, null
  br i1 %.not87127, label %bb.j, label %.loopexit

.lr.ph100.preheader:                              ; preds = %bb.f
  %wide.trip.count118 = zext nneg i32 %1 to i64
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.i
  %indvars.iv115 = phi i64 [ 0, %.lr.ph100.preheader ], [ %indvars.iv.next116, %bb.i ] ; 2 uses
  %.07998 = phi i32 [ 0, %.lr.ph100.preheader ], [ %.180, %bb.i ] ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 %indvars.iv115 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = add i32 %.07998, 1                      ; 2 uses
  %i.af = zext i32 %.07998 to i64
  %i.ag = getelementptr i8, ptr %2, i64 %i.af     ; 2 uses
  switch i8 %i.ad, label %bb.h [
    i8 40, label %bb.g
    i8 41, label %bb.g
    i8 91, label %bb.g
    i8 93, label %bb.g
    i8 123, label %bb.g
    i8 125, label %bb.g
    i8 92, label %bb.g
    i8 124, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph100, %.lr.ph100, %.lr.ph100, %.lr.ph100, %.lr.ph100, %.lr.ph100, %.lr.ph100, %.lr.ph100
  store i8 92, ptr %i.ag, align 1
  %i.ah = load i8, ptr %i.ac, align 1
  %i.ai = add i32 %.07998, 2
  %i.aj = zext i32 %i.ae to i64
  %i.ak = getelementptr i8, ptr %2, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph100
  store i8 %i.ad, ptr %i.ag, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.180 = phi i32 [ %i.ai, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph100, !llvm.loop !60

bb.j:                                             ; preds = %.thread, %bb.f
  %.0.lcssa125128 = phi i32 [ 0, %.thread ], [ %.1.lcssa, %bb.f ]
  %i.al = add i32 %.0.lcssa125128, %1
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge
  br i1 %.not87, label %bb.l, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %bb.k
  store i8 123, ptr %2, align 1
  %wide.trip.count113 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count113, 1
  %i.am = icmp eq i32 %1, 1
  br i1 %i.am, label %.lr.ph95.epil.preheader, label %.lr.ph95.preheader.new

.lr.ph95.preheader.new:                           ; preds = %.lr.ph95.preheader
  %unroll_iter = and i64 %wide.trip.count113, 254
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph95.preheader.new ], [ %indvars.iv.next109.1, %.lr.ph95 ] ; 4 uses
  %indvars.iv106 = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %indvars.iv.next107.1, %.lr.ph95 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %niter.next.1, %.lr.ph95 ]
  %i.an = getelementptr i8, ptr %0, i64 %indvars.iv106 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr i8, ptr @OALString_HexChar, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %2, i64 %indvars.iv108
  store i8 %i.as, ptr %i.at, align 1
  %i.au = load i8, ptr %i.an, align 1
  %i.av = and i8 %i.au, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr i8, ptr @OALString_HexChar, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %i.az = getelementptr i8, ptr %2, i64 %indvars.iv108
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  store i8 %i.ay, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %0, i64 %indvars.iv106
  %i.bc = getelementptr i8, ptr %i.bb, i64 1      ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = lshr i8 %i.bd, 4
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr i8, ptr @OALString_HexChar, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %2, i64 %indvars.iv.next109
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = load i8, ptr %i.bc, align 1
  %i.bk = and i8 %i.bj, 15
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr @OALString_HexChar, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 4 ; 3 uses
  %i.bo = getelementptr i8, ptr %2, i64 %indvars.iv.next109
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  store i8 %i.bn, ptr %i.bp, align 1
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge96.unr-lcssa, label %.lr.ph95, !llvm.loop !61

._crit_edge96.unr-lcssa:                          ; preds = %.lr.ph95
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96, label %.lr.ph95.epil.preheader

.lr.ph95.epil.preheader:                          ; preds = %._crit_edge96.unr-lcssa, %.lr.ph95.preheader
  %indvars.iv108.epil.init = phi i64 [ 1, %.lr.ph95.preheader ], [ %indvars.iv.next109.1, %._crit_edge96.unr-lcssa ] ; 3 uses
  %indvars.iv106.epil.init = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next107.1, %._crit_edge96.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.bq = getelementptr i8, ptr %0, i64 %indvars.iv106.epil.init ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = lshr i8 %i.br, 4
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr @OALString_HexChar, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr i8, ptr %2, i64 %indvars.iv108.epil.init
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = load i8, ptr %i.bq, align 1
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr i8, ptr @OALString_HexChar, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %indvars.iv.next109.epil = add nuw nsw i64 %indvars.iv108.epil.init, 2
  %i.cc = getelementptr i8, ptr %2, i64 %indvars.iv108.epil.init
  %i.cd = getelementptr i8, ptr %i.cc, i64 1
  store i8 %i.cb, ptr %i.cd, align 1
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.unr-lcssa, %.lr.ph95.epil.preheader
  %indvars.iv.next109.lcssa = phi i64 [ %indvars.iv.next109.1, %._crit_edge96.unr-lcssa ], [ %indvars.iv.next109.epil, %.lr.ph95.epil.preheader ] ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next109.lcssa to i32
  %i.cf = add i32 %i.ce, 1
  %i.cg = getelementptr i8, ptr %2, i64 %indvars.iv.next109.lcssa
  store i8 125, ptr %i.cg, align 1
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ch = shl nuw nsw i32 %1, 1
  %i.ci = add nuw nsw i32 %i.ch, 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.thread, %._crit_edge96, %bb.l, %bb.j
  %.3 = phi i32 [ %i.ci, %bb.l ], [ %i.al, %bb.j ], [ %i.cf, %._crit_edge96 ], [ 0, %.thread ], [ %.180, %bb.i ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_ensure_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_uint_handle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @conversation_pt_to_conversation_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dnp_0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.b, i32 noundef 25)
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef @.str.702)
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 25, ptr noundef @.str.703)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.i = icmp eq i8 %i.h, 0
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 25, ptr noundef @.str.703)
  %i.k = load i32, ptr @hf_2008_1_dnp_0_1_1_padding, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 25, ptr noundef @.str.704)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %.03437 = phi i32 [ 1, %bb.e ], [ %i.o, %bb.g ] ; 2 uses
  %i.m = load i32, ptr @hf_2008_1_dnp_0_1_1_version, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %.03437, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add i32 %.03437, 1                       ; 5 uses
  %i.p = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.o)
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.f, !llvm.loop !62

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.t = icmp ult i32 %i.o, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr @hf_2008_1_dnp_0_1_1_padding, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.o, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.h, %bb.b
  %i.w = load ptr, ptr %i.a, align 8
  tail call void @col_set_fence(ptr noundef %i.w, i32 noundef 35)
  %i.x = load ptr, ptr %i.a, align 8
  tail call void @col_set_fence(ptr noundef %i.x, i32 noundef 25)
  %i.y = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.y
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dnp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._dof_ns_session_key, align 4 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not119 = icmp eq ptr %i.b, null
  br i1 %.not119, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 35, ptr noundef @.str.705)
  %.not120 = icmp sgt i8 %i.e, -1
  br i1 %.not120, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %.not121 = icmp ult i8 %i.h, 16
  br i1 %.not121, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef null, ptr noundef @ei_dof_10_flags_zero) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = load i32, ptr @hf_2009_9_dnp_1_flags, align 4
  %i.l = load i32, ptr @ett_2009_9_dnp_1_flags, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @bitmask_2009_9_dnp_1_flags, i32 noundef 0) ; 0 uses
  %i.n = and i32 %i.i, 3                          ; 4 uses
  %.not122 = icmp eq i32 %i.n, 0
  br i1 %.not122, label %bb.g, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.o = load i32, ptr @hf_2009_9_dnp_1_length, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 2, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0110171 = phi i32 [ %i.v, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0113170 = phi i32 [ %i.u, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.q = shl i32 %.0113170, 8
  %i.r = add nuw nsw i32 %.0110171, 2
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.r)
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %i.v = add nuw nsw i32 %.0110171, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = add nuw nsw i32 %i.n, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0106165.ph = phi i32 [ 1, %bb.c ], [ 2, %bb.f ] ; 2 uses
  %.0109164.ph = phi i32 [ 0, %bb.c ], [ %i.i, %bb.f ]
  %i.x = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0106165.ph)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.y = phi i32 [ %.0106165.ph, %bb.g ], [ %i.w, %._crit_edge ] ; 7 uses
  %.0109164189194 = phi i32 [ %.0109164.ph, %bb.g ], [ %i.i, %._crit_edge ] ; 2 uses
  %.1114 = phi i32 [ %i.x, %bb.g ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.z = and i32 %.0109164189194, 4
  %.not123 = icmp eq i32 %i.z, 0
  br i1 %.not123, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.y) ; 5 uses
  %i.ab = icmp slt i8 %i.aa, 0                    ; 3 uses
  %i.ac = and i8 %i.aa, 64
  %.not167 = icmp eq i8 %i.ac, 0
  %i.ad = and i8 %i.aa, 63
  %..i = select i1 %.not167, i32 2, i32 3
  %.020.i = select i1 %i.ab, i8 %i.ad, i8 %i.aa
  %i.ae = zext nneg i8 %.020.i to i32             ; 2 uses
  %.02328.i = add nuw nsw i32 %i.y, 1             ; 2 uses
  br i1 %i.ab, label %.lr.ph.i, label %read_c3.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.02331.i = phi i32 [ %.023.i, %.lr.ph.i ], [ %.02328.i, %bb.i ] ; 2 uses
  %.030.i = phi i32 [ %i.aj, %.lr.ph.i ], [ 1, %bb.i ]
  %.02229.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.af = shl i32 %.02229.i, 8
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i)
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = add nuw nsw i32 %.030.i, 1              ; 2 uses
  %.023.i = add nuw nsw i32 %.02331.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aj, %..i
  br i1 %exitcond.not.i, label %read_c3.exit, label %.lr.ph.i, !llvm.loop !64

read_c3.exit:                                     ; preds = %.lr.ph.i, %bb.i
  %.022.lcssa.i = phi i32 [ %i.ae, %bb.i ], [ %i.ai, %.lr.ph.i ] ; 5 uses
  %.023.lcssa.i = phi i32 [ %.02328.i, %bb.i ], [ %.023.i, %.lr.ph.i ] ; 2 uses
  %i.ak = load i32, ptr @hf_2009_9_dnp_1_srcport, align 4
  %i.al = sub i32 %.023.lcssa.i, %i.y             ; 2 uses
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.al, i32 noundef %.022.lcssa.i, ptr noundef @.str.706, i32 noundef %.022.lcssa.i) ; 2 uses
  %i.an = icmp ult i32 %.022.lcssa.i, 128
  %or.cond.i = and i1 %i.ab, %i.an
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %read_c3.exit
  %i.ao = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.am, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.708) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %read_c3.exit
  %i.ap = icmp ugt i8 %i.aa, -65
  %i.aq = icmp ult i32 %.022.lcssa.i, 16384
  %or.cond3.i = and i1 %i.ap, %i.aq
  br i1 %or.cond3.i, label %bb.l, label %validate_c3.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.am, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.708) ; 0 uses
  br label %validate_c3.exit

validate_c3.exit:                                 ; preds = %bb.k, %bb.l
  %i.as = sub i32 %.1114, %i.al
  br label %proto_item_set_generated.exit

bb.m:                                             ; preds = %bb.h
  %i.at = load i32, ptr @hf_2009_9_dnp_1_srcport, align 4
  %i.au = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.706, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.aw, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %i.aw, i64 28     ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = or i32 %i.ay, 2
  store i32 %i.az, ptr %i.ax, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.o, %bb.n, %bb.m, %validate_c3.exit
  %.0160 = phi i32 [ %.022.lcssa.i, %validate_c3.exit ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 3 uses
  %.0111 = phi i32 [ %i.as, %validate_c3.exit ], [ %.1114, %bb.m ], [ %.1114, %bb.n ], [ %.1114, %bb.o ] ; 4 uses
  %.1 = phi i32 [ %.023.lcssa.i, %validate_c3.exit ], [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %i.y, %bb.o ] ; 7 uses
  %i.ba = and i32 %.0109164189194, 8
  %.not124 = icmp eq i32 %i.ba, 0
  br i1 %.not124, label %bb.t, label %bb.p

bb.p:                                             ; preds = %proto_item_set_generated.exit
  %i.bb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1) ; 5 uses
  %i.bc = icmp slt i8 %i.bb, 0                    ; 3 uses
  %i.bd = and i8 %i.bb, 64
  %.not168 = icmp eq i8 %i.bd, 0
  %i.be = and i8 %i.bb, 63
  %..i126 = select i1 %.not168, i32 2, i32 3
  %.020.i128 = select i1 %i.bc, i8 %i.be, i8 %i.bb
  %i.bf = zext nneg i8 %.020.i128 to i32          ; 2 uses
  %.02328.i129 = add i32 %.1, 1                   ; 2 uses
  br i1 %i.bc, label %.lr.ph.i133, label %read_c3.exit139

.lr.ph.i133:                                      ; preds = %bb.p, %.lr.ph.i133
  %.02331.i134 = phi i32 [ %.023.i137, %.lr.ph.i133 ], [ %.02328.i129, %bb.p ] ; 2 uses
  %.030.i135 = phi i32 [ %i.bk, %.lr.ph.i133 ], [ 1, %bb.p ]
  %.02229.i136 = phi i32 [ %i.bj, %.lr.ph.i133 ], [ %i.bf, %bb.p ]
  %i.bg = shl i32 %.02229.i136, 8
  %i.bh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i134)
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = add nuw nsw i32 %.030.i135, 1           ; 2 uses
  %.023.i137 = add i32 %.02331.i134, 1            ; 2 uses
  %exitcond.not.i138 = icmp eq i32 %i.bk, %..i126
  br i1 %exitcond.not.i138, label %read_c3.exit139, label %.lr.ph.i133, !llvm.loop !64

read_c3.exit139:                                  ; preds = %.lr.ph.i133, %bb.p
  %.022.lcssa.i130 = phi i32 [ %i.bf, %bb.p ], [ %i.bj, %.lr.ph.i133 ] ; 5 uses
  %.023.lcssa.i131 = phi i32 [ %.02328.i129, %bb.p ], [ %.023.i137, %.lr.ph.i133 ] ; 2 uses
  %i.bl = load i32, ptr @hf_2009_9_dnp_1_dstport, align 4
  %i.bm = sub i32 %.023.lcssa.i131, %.1           ; 2 uses
  %i.bn = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef %.1, i32 noundef %i.bm, i32 noundef %.022.lcssa.i130, ptr noundef @.str.707, i32 noundef %.022.lcssa.i130) ; 2 uses
  %i.bo = icmp ult i32 %.022.lcssa.i130, 128
  %or.cond.i140 = and i1 %i.bc, %i.bo
  br i1 %or.cond.i140, label %bb.q, label %bb.r

bb.q:                                             ; preds = %read_c3.exit139
  %i.bp = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bn, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.708) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %read_c3.exit139
  %i.bq = icmp ugt i8 %i.bb, -65
  %i.br = icmp ult i32 %.022.lcssa.i130, 16384
  %or.cond3.i141 = and i1 %i.bq, %i.br
  br i1 %or.cond3.i141, label %bb.s, label %validate_c3.exit142

bb.s:                                             ; preds = %bb.r
  %i.bs = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bn, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.708) ; 0 uses
  br label %validate_c3.exit142

validate_c3.exit142:                              ; preds = %bb.r, %bb.s
  %i.bt = sub i32 %.0111, %i.bm
  br label %proto_item_set_generated.exit145

bb.t:                                             ; preds = %proto_item_set_generated.exit
  %i.bu = load i32, ptr @hf_2009_9_dnp_1_dstport, align 4
  %i.bv = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.bu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.707, i32 noundef 0) ; 2 uses
  %.not.i143 = icmp eq ptr %i.bv, null
  br i1 %.not.i143, label %proto_item_set_generated.exit145, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not5.i144 = icmp eq ptr %i.bx, null
  br i1 %.not5.i144, label %proto_item_set_generated.exit145, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr i8, ptr %i.bx, i64 28     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = or i32 %i.bz, 2
  store i32 %i.ca, ptr %i.by, align 4
  br label %proto_item_set_generated.exit145

proto_item_set_generated.exit145:                 ; preds = %bb.v, %bb.u, %bb.t, %validate_c3.exit142
  %.0159 = phi i32 [ %.022.lcssa.i130, %validate_c3.exit142 ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ] ; 3 uses
  %.1112 = phi i32 [ %i.bt, %validate_c3.exit142 ], [ %.0111, %bb.t ], [ %.0111, %bb.u ], [ %.0111, %bb.v ]
  %.2 = phi i32 [ %.023.lcssa.i131, %validate_c3.exit142 ], [ %.1, %bb.t ], [ %.1, %bb.u ], [ %.1, %bb.v ] ; 3 uses
  tail call void @proto_item_set_end(ptr noundef %2, ptr noundef %0, i32 noundef %.2)
  %i.cb = getelementptr i8, ptr %3, i64 16        ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %proto_item_set_generated.exit145
  %i.ce = getelementptr i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load i8, ptr %i.cf, align 4, !range !12, !noundef !13
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %.0107.sroa.speculated = select i1 %i.ch, i32 %.0159, i32 %.0160 ; 2 uses
  %.0108.sroa.speculated = select i1 %i.ch, i32 %.0160, i32 %.0159 ; 2 uses
  %i.ci = load ptr, ptr %3, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 %i.ck, ptr %4, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.0108.sroa.speculated, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.0107.sroa.speculated, ptr %i.cm, align 4
  %i.cn = load ptr, ptr @dof_ns_session_lookup, align 8
  %i.co = call ptr @g_hash_table_lookup(ptr noundef %i.cn, ptr noundef nonnull %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr %i.co, ptr %i.cb, align 8
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cq = call ptr @wmem_file_scope()
  %i.cr = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.cq, i64 noundef 24) #22 ; 4 uses
  %i.cs = load ptr, ptr %3, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #24 ; 4 uses
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  store i32 %.0108.sroa.speculated, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  store i32 %.0107.sroa.speculated, ptr %i.cx, align 4
  %i.cy = load ptr, ptr @dof_ns_session_lookup, align 8
  %i.cz = call i32 @g_hash_table_insert(ptr noundef %i.cy, ptr noundef %i.cv, ptr noundef %i.cr) ; 0 uses
  %i.da = load i32, ptr @globals.1, align 4       ; 2 uses
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @globals.1, align 4
  store i32 %i.da, ptr %i.cr, align 8
  %i.dc = getelementptr i8, ptr %i.cr, i64 4
  store i8 %i.f, ptr %i.dc, align 4
  store ptr %i.cr, ptr %i.cb, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %proto_item_set_generated.exit145
  %i.dd = getelementptr i8, ptr %i.b, i64 40
  store i32 %.0160, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %i.b, i64 44
  store i32 %.0159, ptr %i.de, align 4
  %i.df = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.2, i32 noundef %.1112)
  %i.dg = call ptr @proto_item_get_parent(ptr noundef %2)
  %i.dh = call fastcc i32 @dof_dissect_dpp_common(ptr noundef %i.df, ptr noundef %1, ptr noundef %i.dg, ptr noundef %3)
  %i.di = add i32 %i.dh, %.2
  %i.dj = load ptr, ptr %i.c, align 8
  call void @col_set_fence(ptr noundef %i.dj, i32 noundef 35)
  %i.dk = load ptr, ptr %i.c, align 8
  call void @col_set_fence(ptr noundef %i.dk, i32 noundef 25)
  br label %bb.z

bb.z:                                             ; preds = %bb.b, %bb.a, %bb.y
  %.0 = phi i32 [ %i.di, %bb.y ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @determine_packet_length_1(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 4 uses
  %i.b = tail call i32 @tvb_ensure_captured_length_remaining(ptr noundef %0, i32 noundef %i.a) ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.a, 1
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.f)
  %i.h = and i8 %i.g, 3                           ; 3 uses
  %narrow = add nuw nsw i8 %i.h, 2
  %i.i = zext nneg i8 %narrow to i32              ; 3 uses
  %i.j = zext nneg i8 %i.h to i32
  %i.k = icmp samesign ult i32 %i.b, %i.i
  br i1 %i.k, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = add i32 %i.a, 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.129 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.d ]
  %i.m = shl i32 %.129, 8
  %i.n = add i32 %i.l, %indvars.iv
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n)
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.d, %bb.b, %.preheader
  %.03539 = phi i32 [ %i.i, %.preheader ], [ 2, %bb.b ], [ %i.i, %bb.d ]
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ 0, %bb.b ], [ %i.q, %bb.d ]
  %i.r = add i32 %.1.lcssa, %.03539
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %._crit_edge
  %.025 = phi i32 [ %i.r, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.025
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dpp_0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.b, i32 noundef 25)
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef @.str.709)
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 25, ptr noundef @.str.703)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.i = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.i, i32 noundef 25, ptr noundef @.str.704)
  %.not26 = icmp eq i8 %i.h, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.02427 = phi i32 [ %i.l, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.j = load i32, ptr @hf_2008_1_dpp_0_1_1_version, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %.02427, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = add i32 %.02427, 1                       ; 3 uses
  %i.m = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.l)
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !66

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr %i.a, align 8
  tail call void @col_set_fence(ptr noundef %i.p, i32 noundef 35)
  %i.q = load ptr, ptr %i.a, align 8
  tail call void @col_set_fence(ptr noundef %i.q, i32 noundef 25)
  %i.r = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dpp_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct._node_key_to_sid_id_key, align 4 ; 16 uses
  %5 = alloca %struct._dof_secmode_api_data, align 8 ; 9 uses
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.eh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 24         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 42 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.eh, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.j = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not70.i = icmp eq ptr %i.k, null
  br i1 %.not70.i, label %assign_sid_id.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 52       ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %.not71.i = icmp eq i32 %i.m, 0
  br i1 %.not71.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %3, align 8
  %i.o = load i32, ptr %i.n, align 8
  store i32 %i.o, ptr %4, align 4
  %i.p = getelementptr i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.k, i64 4
  %i.v = load i8, ptr %i.u, align 4
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.h, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load i32, ptr %i.k, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = load ptr, ptr @node_key_to_sid_id, align 8
  %i.ae = call ptr @g_hash_table_lookup(ptr noundef %i.ad, ptr noundef nonnull %4)
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not72.i = icmp eq i32 %i.ag, 0
  br i1 %.not72.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = inttoptr i64 %i.ah to ptr
  store i32 %i.ag, ptr %i.l, align 4
  %i.aj = load ptr, ptr @sid_id_to_sid_buffer, align 8
  %i.ak = call ptr @g_hash_table_lookup(ptr noundef %i.aj, ptr noundef %i.ai) ; 2 uses
  %.not73.i = icmp eq ptr %i.ak, null
  br i1 %.not73.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.h, i64 64
  store ptr %i.ak, ptr %i.al, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.am = call noalias dereferenceable_or_null(20) ptr @g_malloc0(i64 noundef 20) #24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 noundef 20, i1 noundef false) #26
  %i.an = load ptr, ptr @node_key_to_sid_id, align 8
  %i.ao = load i32, ptr @dpp_next_sid_id, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = call i32 @g_hash_table_insert(ptr noundef %i.an, ptr noundef %i.am, ptr noundef %i.aq) ; 0 uses
  %i.as = load i32, ptr @dpp_next_sid_id, align 4 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @dpp_next_sid_id, align 4
  store i32 %i.as, ptr %i.l, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.au = getelementptr i8, ptr %i.h, i64 56      ; 3 uses
  %i.av = load i32, ptr %i.au, align 8
  %.not74.i = icmp eq i32 %i.av, 0
  br i1 %.not74.i, label %bb.j, label %assign_sid_id.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = load i32, ptr %i.aw, align 8
  store i32 %i.ax, ptr %4, align 4
  %i.ay = getelementptr i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %i.k, i64 4
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %i.h, i64 44
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = load i32, ptr %i.k, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = load ptr, ptr @node_key_to_sid_id, align 8
  %i.bn = call ptr @g_hash_table_lookup(ptr noundef %i.bm, ptr noundef nonnull %4)
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %.not75.i = icmp eq i32 %i.bp, 0
  br i1 %.not75.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = and i64 %i.bo, 4294967295
  %i.br = inttoptr i64 %i.bq to ptr
  store i32 %i.bp, ptr %i.au, align 8
  %i.bs = load ptr, ptr @sid_id_to_sid_buffer, align 8
  %i.bt = call ptr @g_hash_table_lookup(ptr noundef %i.bs, ptr noundef %i.br) ; 2 uses
  %.not76.i = icmp eq ptr %i.bt, null
  br i1 %.not76.i, label %assign_sid_id.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %i.h, i64 72
  store ptr %i.bt, ptr %i.bu, align 8
  br label %assign_sid_id.exit

bb.m:                                             ; preds = %bb.j
  %i.bv = call noalias dereferenceable_or_null(20) ptr @g_malloc0(i64 noundef 20) #24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.bv, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 noundef 20, i1 noundef false) #26
  %i.bw = load ptr, ptr @node_key_to_sid_id, align 8
  %i.bx = load i32, ptr @dpp_next_sid_id, align 4
  %i.by = zext i32 %i.bx to i64
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call i32 @g_hash_table_insert(ptr noundef %i.bw, ptr noundef %i.bv, ptr noundef %i.bz) ; 0 uses
  %i.cb = load i32, ptr @dpp_next_sid_id, align 4 ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @dpp_next_sid_id, align 4
  store i32 %i.cb, ptr %i.au, align 8
  br label %assign_sid_id.exit

assign_sid_id.exit:                               ; preds = %bb.c, %bb.i, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cd = getelementptr i8, ptr %1, i64 8         ; 11 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  call void @col_clear(ptr noundef %i.ce, i32 noundef 25)
  %i.cf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.cg = load ptr, ptr %i.cd, align 8
  call void @col_set_str(ptr noundef %i.cg, i32 noundef 35, ptr noundef @.str.710)
  %i.ch = load i32, ptr @hf_2008_1_dpp_sid_num, align 4
  %i.ci = getelementptr i8, ptr %i.h, i64 52      ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ch, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cj, ptr noundef @.str.711, i32 noundef %i.cj) ; 2 uses
  %.not.i514 = icmp eq ptr %i.ck, null
  br i1 %.not.i514, label %proto_item_set_generated.exit, label %bb.n

bb.n:                                             ; preds = %assign_sid_id.exit
  %i.cl = getelementptr i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.cm, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr i8, ptr %i.cm, i64 28     ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %assign_sid_id.exit, %bb.n, %bb.o
  %i.cq = getelementptr i8, ptr %i.h, i64 64      ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %proto_item_set_generated.exit518, label %bb.p

bb.p:                                             ; preds = %proto_item_set_generated.exit
  %i.cs = getelementptr i8, ptr %1, i64 416
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = load i8, ptr %i.cr, align 1
end_hunk_2
begin_hunk_3_@dissect_dpp_2:bb.a
  %i.hq = zext nneg i8 %.020.i to i32             ; 2 uses
  br i1 %i.hm, label %.lr.ph.i, label %read_c4.exit

.lr.ph.i:                                         ; preds = %proto_item_set_generated.exit531, %.lr.ph.i
  %.02331.i.in = phi i32 [ %.02331.i, %.lr.ph.i ], [ %.1441621, %proto_item_set_generated.exit531 ]
  %.030.i = phi i32 [ %i.hv, %.lr.ph.i ], [ 1, %proto_item_set_generated.exit531 ]
  %.02229.i = phi i32 [ %i.hu, %.lr.ph.i ], [ %i.hq, %proto_item_set_generated.exit531 ]
  %.02331.i = add i32 %.02331.i.in, 1             ; 2 uses
  %i.hr = shl i32 %.02229.i, 8
  %i.hs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i)
  %i.ht = zext i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hr, %i.ht            ; 2 uses
  %i.hv = add nuw nsw i32 %.030.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hv, %..i
  br i1 %exitcond.not.i, label %read_c4.exit, label %.lr.ph.i, !llvm.loop !2

read_c4.exit:                                     ; preds = %.lr.ph.i, %proto_item_set_generated.exit531
  %.022.lcssa.i = phi i32 [ %i.hq, %proto_item_set_generated.exit531 ], [ %i.hu, %.lr.ph.i ] ; 5 uses
  %i.hw = load i32, ptr @hf_2009_12_dpp_2_1_opcnt, align 4
  %i.hx = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.hk, i32 noundef %i.hw, ptr noundef %0, i32 noundef %.1441621, i32 noundef %.021.i, i32 noundef %.022.lcssa.i, ptr noundef @.str.717, i32 noundef %.022.lcssa.i) ; 2 uses
  %i.hy = icmp ult i32 %.022.lcssa.i, 128
  %or.cond.i = and i1 %i.hm, %i.hy
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %read_c4.exit
  %i.hz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.hx, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %read_c4.exit
  %i.ia = icmp samesign ugt i32 %.021.i, 2
  %i.ib = icmp ult i32 %.022.lcssa.i, 16384
  %or.cond3.i = and i1 %i.ia, %i.ib
  br i1 %or.cond3.i, label %bb.at, label %validate_c4.exit

bb.at:                                            ; preds = %bb.as
  %i.ic = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.hx, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit

validate_c4.exit:                                 ; preds = %bb.as, %bb.at
  %i.id = add i32 %.021.i, %.1441621              ; 3 uses
  %i.ie = add i32 %i.id, -2                       ; 2 uses
  call void @proto_item_set_len(ptr noundef null, i32 noundef %i.ie)
  %i.if = getelementptr i8, ptr %i.h, i64 88      ; 2 uses
  %i.ig = getelementptr i8, ptr %i.h, i64 104
  store i32 %.022.lcssa.i, ptr %i.ig, align 8
  %i.ih = getelementptr i8, ptr %i.h, i64 80
  %i.ii = load i8, ptr %i.ih, align 8, !range !12, !noundef !13
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %validate_c4.exit
  %i.ik = getelementptr i8, ptr %i.h, i64 144     ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8
  %.not478 = icmp eq ptr %i.il, null
  br i1 %.not478, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.im = load ptr, ptr @dpp_opid_to_packet_data, align 8
  %i.in = call ptr @g_hash_table_lookup(ptr noundef %i.im, ptr noundef %i.if) ; 6 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ip = load ptr, ptr @dpp_opid_to_packet_data, align 8
  %i.iq = call i32 @g_hash_table_insert(ptr noundef %i.ip, ptr noundef %i.if, ptr noundef nonnull %i.h) ; 0 uses
  store ptr %i.h, ptr %i.ik, align 8
  %i.ir = getelementptr i8, ptr %i.h, i64 160
  store ptr %i.h, ptr %i.ir, align 8
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  store ptr %i.in, ptr %i.ik, align 8
  %i.is = getelementptr i8, ptr %i.in, i64 160    ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr i8, ptr %i.it, i64 152
  store ptr %i.h, ptr %i.iu, align 8
  store ptr %i.h, ptr %i.is, align 8
  %i.iv = load i8, ptr %i.fr, align 8, !range !12, !noundef !13
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ix = getelementptr i8, ptr %i.in, i64 168    ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8
  %.not479 = icmp eq ptr %i.iy, null
  br i1 %.not479, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr %i.h, ptr %i.ix, align 8
  %i.iz = getelementptr i8, ptr %i.in, i64 184
  store ptr %i.h, ptr %i.iz, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ja = getelementptr i8, ptr %i.in, i64 184    ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr i8, ptr %i.jb, i64 176
  store ptr %i.h, ptr %i.jc, align 8
  store ptr %i.h, ptr %i.ja, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.aw, %bb.az, %bb.ba, %bb.ax, %bb.au, %validate_c4.exit
  %i.jd = load i8, ptr @globals.7, align 1, !range !12, !noundef !13
  %i.je = trunc nuw i8 %i.jd to i1
  %i.jf = icmp ne ptr %2, null
  %or.cond = and i1 %i.jf, %i.je
  br i1 %or.cond, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.jg = load i32, ptr @ett_2009_12_dpp_2_opid_history, align 4
  %i.jh = call ptr @proto_tree_add_subtree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.jg, ptr noundef null, ptr noundef @.str.718) ; 5 uses
  %i.ji = getelementptr i8, ptr %i.h, i64 144     ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 8 uses
  %.not480 = icmp eq ptr %i.jj, null              ; 2 uses
  br i1 %.not480, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jk = load i32, ptr @hf_2008_1_dpp_first_command, align 4
  %i.jl = getelementptr i8, ptr %i.jj, i64 8
  %i.jm = load i32, ptr %i.jl, align 8            ; 2 uses
  %i.jn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.jh, i32 noundef %i.jk, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.jm, ptr noundef @.str.719, i32 noundef %i.jm) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jo = getelementptr i8, ptr %i.jj, i64 160
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  %.not481 = icmp eq ptr %i.jp, null
  %.not482 = icmp eq ptr %i.jp, %i.jj
  %or.cond510 = or i1 %.not481, %.not482
  br i1 %or.cond510, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jq = load i32, ptr @hf_2008_1_dpp_last_command, align 4
  %i.jr = getelementptr i8, ptr %i.jp, i64 8
  %i.js = load i32, ptr %i.jr, align 8            ; 2 uses
  %i.jt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.jh, i32 noundef %i.jq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.js, ptr noundef @.str.720, i32 noundef %i.js) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ju = getelementptr i8, ptr %i.jj, i64 168    ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not483 = icmp eq ptr %i.jv, null
  br i1 %.not483, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jw = load i32, ptr @hf_2008_1_dpp_first_response, align 4
  %i.jx = getelementptr i8, ptr %i.jv, i64 8
  %i.jy = load i32, ptr %i.jx, align 8            ; 2 uses
  %i.jz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.jh, i32 noundef %i.jw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.jy, ptr noundef @.str.721, i32 noundef %i.jy) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ka = getelementptr i8, ptr %i.jj, i64 184
  %i.kb = load ptr, ptr %i.ka, align 8            ; 3 uses
  %.not484 = icmp eq ptr %i.kb, null
  br i1 %.not484, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kc = load ptr, ptr %i.ju, align 8
  %.not485 = icmp eq ptr %i.kb, %i.kc
  br i1 %.not485, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kd = load i32, ptr @hf_2008_1_dpp_last_response, align 4
  %i.ke = getelementptr i8, ptr %i.kb, i64 8
  %i.kf = load i32, ptr %i.ke, align 8            ; 2 uses
  %i.kg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.jh, i32 noundef %i.kd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.kf, ptr noundef @.str.722, i32 noundef %i.kf) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.kh = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.ki = icmp eq ptr %i.jj, %i.h
  %or.cond511668 = or i1 %.not480, %i.ki
  br i1 %or.cond511668, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bl
  %i.kj = load i32, ptr @globals.8, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph, %bb.bo
  %.0424671 = phi i32 [ 0, %.lr.ph ], [ %.1425, %bb.bo ] ; 2 uses
  %.0430670 = phi ptr [ %i.kh, %.lr.ph ], [ %.1431, %bb.bo ] ; 2 uses
  %.0432669 = phi ptr [ %i.jj, %.lr.ph ], [ %i.kl, %bb.bo ]
  %i.kk = getelementptr i8, ptr %.0432669, i64 152
  %i.kl = load ptr, ptr %i.kk, align 8            ; 3 uses
  %i.km = add i32 %.0424671, 1                    ; 2 uses
  %i.kn = icmp ugt i32 %i.km, %i.kj
  br i1 %i.kn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ko = getelementptr i8, ptr %.0430670, i64 152
  %i.kp = load ptr, ptr %i.ko, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.1431 = phi ptr [ %i.kp, %bb.bn ], [ %.0430670, %bb.bm ] ; 2 uses
  %.1425 = phi i32 [ %.0424671, %bb.bn ], [ %i.km, %bb.bm ]
  %.not486 = icmp eq ptr %i.kl, null
  %i.kq = icmp eq ptr %i.kl, %i.h
  %or.cond511 = or i1 %.not486, %i.kq
  br i1 %or.cond511, label %.preheader.preheader, label %bb.bm, !llvm.loop !67

.preheader.preheader:                             ; preds = %bb.bo, %bb.bl
  %.1433.ph = phi ptr [ %i.kh, %bb.bl ], [ %.1431, %bb.bo ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.bp
  %.1433 = phi ptr [ %i.li, %bb.bp ], [ %.1433.ph, %.preheader.preheader ] ; 8 uses
  %.2426 = phi i32 [ %.5429, %bb.bp ], [ 0, %.preheader.preheader ]
  %.not487 = icmp eq ptr %.1433, null
  br i1 %.not487, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.kr = icmp eq ptr %.1433, %i.h                ; 2 uses
  %i.ks = load i32, ptr @globals.8, align 4
  %i.kt = add i32 %i.ks, 1
  %.3427 = select i1 %i.kr, i32 %i.kt, i32 %.2426 ; 2 uses
  %.0423 = select i1 %i.kr, ptr @.str.723, ptr @.str.180
  %i.ku = load i32, ptr @hf_2008_1_dpp_related_frame, align 4
  %i.kv = getelementptr i8, ptr %.1433, i64 8
  %i.kw = load i32, ptr %i.kv, align 8            ; 2 uses
  %i.kx = getelementptr i8, ptr %.1433, i64 12
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = getelementptr i8, ptr %.1433, i64 52
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = getelementptr i8, ptr %.1433, i64 56
  %i.lc = load i32, ptr %i.lb, align 8
  %i.ld = getelementptr i8, ptr %.1433, i64 32
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %.not488 = icmp eq ptr %i.le, null
  %i.lf = select i1 %.not488, ptr @.str.180, ptr %i.le
  %i.lg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.jh, i32 noundef %i.ku, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.kw, ptr noundef @.str.724, i32 noundef %i.ky, i32 noundef %i.kw, i32 noundef %i.la, i32 noundef %i.lc, ptr noundef nonnull %.0423, ptr noundef nonnull %i.lf) ; 0 uses
  %i.lh = getelementptr i8, ptr %.1433, i64 152
  %i.li = load ptr, ptr %i.lh, align 8
  %.not490.not = icmp eq i32 %.3427, 1
  %.5429 = call i32 @llvm.usub.sat.i32(i32 %.3427, i32 1)
  br i1 %.not490.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.bp, %.preheader, %bb.bb
  call void @proto_item_set_len(ptr noundef %i.hk, i32 noundef %i.ie)
  br i1 %.not472, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %.thread608, %.loopexit
  %.2442625 = phi i32 [ 2, %.thread608 ], [ %i.id, %.loopexit ] ; 4 uses
  %i.lj = and i32 %i.ew, 4
  %.not491 = icmp eq i32 %i.lj, 0
  br i1 %.not491, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2442625)
  %i.ll = load i32, ptr @hf_2009_12_dpp_2_1_seq, align 4
  %i.lm = zext i8 %i.lk to i32                    ; 3 uses
  %i.ln = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ll, ptr noundef %0, i32 noundef %.2442625, i32 noundef 1, i32 noundef %i.lm, ptr noundef @.str.725, i32 noundef %i.lm) ; 0 uses
  %i.lo = add i32 %.2442625, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3443 = phi i32 [ %i.lo, %bb.br ], [ %.2442625, %bb.bq ] ; 4 uses
  %.0422 = phi i32 [ %i.lm, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.lp = and i32 %i.ew, 2
  %.not492 = icmp eq i32 %i.lp, 0
  br i1 %.not492, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3443)
  %i.lr = load i32, ptr @hf_2009_12_dpp_2_1_retry, align 4
  %i.ls = zext i8 %i.lq to i32                    ; 3 uses
  %i.lt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.lr, ptr noundef %0, i32 noundef %.3443, i32 noundef 1, i32 noundef %i.ls, ptr noundef @.str.726, i32 noundef %i.ls) ; 0 uses
  %i.lu = add i32 %.3443, 1
  br label %bb.bu

bb.bu:                                            ; preds = %.thread652, %bb.bt, %bb.bs
  %.0422658 = phi i32 [ %.0422, %bb.bt ], [ %.0422, %bb.bs ], [ 0, %.thread652 ]
  %.0449596607613622651657 = phi i32 [ %i.ew, %bb.bt ], [ %i.ew, %bb.bs ], [ 0, %.thread652 ]
  %.4444 = phi i32 [ %i.lu, %bb.bt ], [ %.3443, %bb.bs ], [ 1, %.thread652 ] ; 3 uses
  %.0421 = phi i32 [ %i.ls, %bb.bt ], [ 0, %bb.bs ], [ 0, %.thread652 ]
  %i.lv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.4444) ; 2 uses
  %i.lw = zext i8 %i.lv to i32                    ; 2 uses
  %i.lx = icmp ugt i8 %i.lv, -128
  %i.ly = shl nuw nsw i32 %i.lw, 5
  %i.lz = add nuw nsw i32 %i.ly, 61568
  %.0420 = select i1 %i.lx, i32 %i.lz, i32 %i.lw
  %i.ma = load i32, ptr @hf_2009_12_dpp_2_1_delay, align 4
  %i.mb = and i32 %.0420, 65535                   ; 3 uses
  %i.mc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.ma, ptr noundef %0, i32 noundef %.4444, i32 noundef 1, i32 noundef %i.mb, ptr noundef @.str.727, i32 noundef %i.mb) ; 0 uses
  %i.md = add i32 %.4444, 1
  %i.me = call ptr @wmem_file_scope()
  %i.mf = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.me, ptr noundef @.str.728, i32 noundef %.0422658, i32 noundef %.0421, i32 noundef %i.mb)
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit, %.thread608, %bb.bu
  %.str.729.sink = phi ptr [ %i.mf, %bb.bu ], [ @.str.729, %.thread608 ], [ @.str.729, %.loopexit ]
  %.0449596607613623 = phi i32 [ %.0449596607613622651657, %bb.bu ], [ %i.ew, %.thread608 ], [ %i.ew, %.loopexit ]
  %.5445 = phi i32 [ %i.md, %bb.bu ], [ 2, %.thread608 ], [ %i.id, %.loopexit ] ; 15 uses
  %i.mg = getelementptr i8, ptr %i.h, i64 32
  store ptr %.str.729.sink, ptr %i.mg, align 8
  %.not493 = icmp samesign ult i32 %.0449596607613623, 128
  br i1 %.not493, label %bb.ct, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mh = load i32, ptr @ett_2009_12_dpp_2_3_security, align 4
  %i.mi = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.5445, i32 noundef -1, i32 noundef %i.mh, ptr noundef null, ptr noundef @.str.730) ; 11 uses
  %i.mj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.5445) ; 2 uses
  %i.mk = load i32, ptr @hf_2009_12_dpp_2_3_sec_flags, align 4
  %i.ml = zext i8 %i.mj to i32                    ; 6 uses
  %i.mm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.mi, i32 noundef %i.mk, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef %i.ml, ptr noundef @.str.714, i32 noundef %i.ml)
  %i.mn = load i32, ptr @ett_2009_12_dpp_2_3_sec_flags, align 4
  %i.mo = call ptr @proto_item_add_subtree(ptr noundef %i.mm, i32 noundef %i.mn) ; 5 uses
  %i.mp = load i32, ptr @hf_2009_12_dpp_2_3_sec_flag_secure, align 4
  %i.mq = call ptr @proto_tree_add_item(ptr noundef %i.mo, i32 noundef %i.mp, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mr = load i32, ptr @hf_2009_12_dpp_2_3_sec_flag_rdid, align 4
  %i.ms = call ptr @proto_tree_add_item(ptr noundef %i.mo, i32 noundef %i.mr, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mt = load i32, ptr @hf_2009_12_dpp_2_3_sec_flag_partition, align 4
  %i.mu = call ptr @proto_tree_add_item(ptr noundef %i.mo, i32 noundef %i.mt, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mv = load i32, ptr @hf_2009_12_dpp_2_3_sec_flag_as, align 4
  %i.mw = call ptr @proto_tree_add_item(ptr noundef %i.mo, i32 noundef %i.mv, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mx = load i32, ptr @hf_2009_12_dpp_2_3_sec_flag_ssid, align 4
  %i.my = call ptr @proto_tree_add_item(ptr noundef %i.mo, i32 noundef %i.mx, ptr noundef %0, i32 noundef %.5445, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mz = add i32 %.5445, 1                       ; 4 uses
  %i.na = and i32 %i.ml, 1
  %.not494 = icmp eq i32 %i.na, 0
  br i1 %.not494, label %validate_c4.exit549, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mz) ; 5 uses
  %i.nc = icmp slt i8 %i.nb, 0                    ; 3 uses
  %i.nd = and i8 %i.nb, 64
  %.not660 = icmp eq i8 %i.nd, 0
  %i.ne = and i8 %i.nb, 63
  %..i533 = select i1 %.not660, i32 2, i32 4
  %.020.i535 = select i1 %i.nc, i8 %i.ne, i8 %i.nb
  %i.nf = zext nneg i8 %.020.i535 to i32          ; 2 uses
  %.02328.i536 = add i32 %.5445, 2                ; 2 uses
  br i1 %i.nc, label %.lr.ph.i540, label %read_c4.exit546

.lr.ph.i540:                                      ; preds = %bb.bx, %.lr.ph.i540
  %.02331.i541 = phi i32 [ %.023.i544, %.lr.ph.i540 ], [ %.02328.i536, %bb.bx ] ; 2 uses
  %.030.i542 = phi i32 [ %i.nk, %.lr.ph.i540 ], [ 1, %bb.bx ]
  %.02229.i543 = phi i32 [ %i.nj, %.lr.ph.i540 ], [ %i.nf, %bb.bx ]
  %i.ng = shl i32 %.02229.i543, 8
  %i.nh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i541)
  %i.ni = zext i8 %i.nh to i32
  %i.nj = or disjoint i32 %i.ng, %i.ni            ; 2 uses
  %i.nk = add nuw nsw i32 %.030.i542, 1           ; 2 uses
  %.023.i544 = add i32 %.02331.i541, 1            ; 2 uses
  %exitcond.not.i545 = icmp eq i32 %i.nk, %..i533
  br i1 %exitcond.not.i545, label %read_c4.exit546, label %.lr.ph.i540, !llvm.loop !2

read_c4.exit546:                                  ; preds = %.lr.ph.i540, %bb.bx
  %.022.lcssa.i537 = phi i32 [ %i.nf, %bb.bx ], [ %i.nj, %.lr.ph.i540 ] ; 7 uses
  %.023.lcssa.i538 = phi i32 [ %.02328.i536, %bb.bx ], [ %.023.i544, %.lr.ph.i540 ] ; 3 uses
  %i.nl = load i32, ptr @hf_2009_12_dpp_2_3_sec_ssid, align 4
  %i.nm = sub i32 %.023.lcssa.i538, %i.mz
  %i.nn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.mi, i32 noundef %i.nl, ptr noundef %0, i32 noundef %i.mz, i32 noundef %i.nm, i32 noundef %.022.lcssa.i537, ptr noundef @.str.731, i32 noundef %.022.lcssa.i537, i32 noundef %.022.lcssa.i537) ; 2 uses
  %i.no = icmp ult i32 %.022.lcssa.i537, 128
  %or.cond.i547 = and i1 %i.nc, %i.no
  br i1 %or.cond.i547, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %read_c4.exit546
  %i.np = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nn, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %read_c4.exit546
  %i.nq = icmp ugt i8 %i.nb, -65
  %i.nr = icmp ult i32 %.022.lcssa.i537, 16384
  %or.cond3.i548 = and i1 %i.nq, %i.nr
  br i1 %or.cond3.i548, label %bb.ca, label %validate_c4.exit549

bb.ca:                                            ; preds = %bb.bz
  %i.ns = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nn, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit549

validate_c4.exit549:                              ; preds = %bb.ca, %bb.bz, %bb.bw
  %.0589 = phi i32 [ 0, %bb.bw ], [ %.022.lcssa.i537, %bb.bz ], [ %.022.lcssa.i537, %bb.ca ]
  %.6446 = phi i32 [ %i.mz, %bb.bw ], [ %.023.lcssa.i538, %bb.bz ], [ %.023.lcssa.i538, %bb.ca ] ; 5 uses
  %i.nt = shl i32 %i.ml, 29
  %i.nu = and i32 %i.nt, 1073741824
  %spec.select659 = or i32 %.0589, %i.nu
  %i.nv = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not496 = icmp eq ptr %i.nv, null
  br i1 %.not496, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %validate_c4.exit549
  %i.nw = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8
  %.not497 = icmp eq ptr %i.nx, null
  br i1 %.not497, label %bb.cc, label %.critedge

bb.cc:                                            ; preds = %bb.cb
  %i.ny = getelementptr i8, ptr %i.nv, i64 8
  %.0418672 = load ptr, ptr %i.ny, align 8        ; 2 uses
  %.not498673 = icmp eq ptr %.0418672, null
  br i1 %.not498673, label %.critedge, label %.lr.ph675

.lr.ph675:                                        ; preds = %bb.cc, %bb.cd
  %.0418674 = phi ptr [ %.0418, %bb.cd ], [ %.0418672, %bb.cc ] ; 4 uses
  %i.nz = load i32, ptr %.0418674, align 8
  %i.oa = icmp eq i32 %spec.select659, %i.nz
  br i1 %i.oa, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph675
  %i.ob = getelementptr i8, ptr %.0418674, i64 32
  %.0418 = load ptr, ptr %i.ob, align 8           ; 2 uses
  %.not498 = icmp eq ptr %.0418, null
  br i1 %.not498, label %.critedge, label %.lr.ph675, !llvm.loop !68

bb.ce:                                            ; preds = %.lr.ph675
  %i.oc = getelementptr i8, ptr %.0418674, i64 40
  %i.od = load ptr, ptr %i.oc, align 8
  store ptr %i.od, ptr %i.j, align 8
  store ptr %.0418674, ptr %i.nw, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.cd, %bb.cc, %bb.ce, %bb.cb, %validate_c4.exit549
  %i.oe = and i32 %i.ml, 8
  %.not499 = icmp eq i32 %i.oe, 0
  br i1 %.not499, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %.critedge
  %i.of = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.6446) ; 5 uses
  %i.og = icmp slt i8 %i.of, 0                    ; 3 uses
  %i.oh = and i8 %i.of, 64
  %.not661 = icmp eq i8 %i.oh, 0
  %i.oi = and i8 %i.of, 63
  %..i550 = select i1 %.not661, i32 2, i32 4
  %.020.i552 = select i1 %i.og, i8 %i.oi, i8 %i.of
  %i.oj = zext nneg i8 %.020.i552 to i32          ; 2 uses
  %.02328.i553 = add i32 %.6446, 1                ; 2 uses
  br i1 %i.og, label %.lr.ph.i557, label %read_c4.exit563

.lr.ph.i557:                                      ; preds = %bb.cf, %.lr.ph.i557
  %.02331.i558 = phi i32 [ %.023.i561, %.lr.ph.i557 ], [ %.02328.i553, %bb.cf ] ; 2 uses
  %.030.i559 = phi i32 [ %i.oo, %.lr.ph.i557 ], [ 1, %bb.cf ]
  %.02229.i560 = phi i32 [ %i.on, %.lr.ph.i557 ], [ %i.oj, %bb.cf ]
  %i.ok = shl i32 %.02229.i560, 8
  %i.ol = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i558)
  %i.om = zext i8 %i.ol to i32
  %i.on = or disjoint i32 %i.ok, %i.om            ; 2 uses
  %i.oo = add nuw nsw i32 %.030.i559, 1           ; 2 uses
  %.023.i561 = add i32 %.02331.i558, 1            ; 2 uses
  %exitcond.not.i562 = icmp eq i32 %i.oo, %..i550
  br i1 %exitcond.not.i562, label %read_c4.exit563, label %.lr.ph.i557, !llvm.loop !2

read_c4.exit563:                                  ; preds = %.lr.ph.i557, %bb.cf
  %.022.lcssa.i554 = phi i32 [ %i.oj, %bb.cf ], [ %i.on, %.lr.ph.i557 ] ; 5 uses
  %.023.lcssa.i555 = phi i32 [ %.02328.i553, %bb.cf ], [ %.023.i561, %.lr.ph.i557 ] ; 4 uses
  %i.op = load i32, ptr @hf_2009_12_dpp_2_3_sec_rdid, align 4
  %i.oq = sub i32 %.023.lcssa.i555, %.6446
  %i.or = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.mi, i32 noundef %i.op, ptr noundef %0, i32 noundef %.6446, i32 noundef %i.oq, i32 noundef %.022.lcssa.i554, ptr noundef @.str.732, i32 noundef %.022.lcssa.i554, i32 noundef %.022.lcssa.i554) ; 2 uses
  %i.os = icmp ult i32 %.022.lcssa.i554, 128
  %or.cond.i564 = and i1 %i.og, %i.os
  br i1 %or.cond.i564, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %read_c4.exit563
  %i.ot = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.or, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %read_c4.exit563
  %i.ou = icmp ugt i8 %i.of, -65
  %i.ov = icmp ult i32 %.022.lcssa.i554, 16384
  %or.cond3.i565 = and i1 %i.ou, %i.ov
  br i1 %or.cond3.i565, label %bb.ci, label %validate_c4.exit566

bb.ci:                                            ; preds = %bb.ch
  %i.ow = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.or, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit566

validate_c4.exit566:                              ; preds = %bb.ch, %bb.ci
  %i.ox = load i32, ptr @hf_2009_12_dpp_2_3_sec_remote_partition, align 4
  %i.oy = load i32, ptr @ett_2009_12_dpp_2_3_sec_remote_partition, align 4
  %i.oz = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.023.lcssa.i555)
  %i.pa = call ptr @proto_tree_add_item(ptr noundef %i.mi, i32 noundef %i.ox, ptr noundef %0, i32 noundef %.023.lcssa.i555, i32 noundef -1, i32 noundef 0)
  %i.pb = call ptr @proto_item_add_subtree(ptr noundef %i.pa, i32 noundef %i.oy) ; 2 uses
  %i.pc = call i32 @dissect_2008_16_security_10(ptr noundef %i.oz, ptr noundef %1, ptr noundef %i.pb, ptr poison), !inline_history !4 ; 2 uses
  %i.pd = call ptr @proto_tree_get_parent(ptr noundef %i.pb)
  call void @proto_item_set_len(ptr noundef %i.pd, i32 noundef %i.pc)
  %i.pe = add i32 %i.pc, %.023.lcssa.i555
  br label %bb.cj

bb.cj:                                            ; preds = %validate_c4.exit566, %.critedge
  %.7447 = phi i32 [ %i.pe, %validate_c4.exit566 ], [ %.6446, %.critedge ] ; 4 uses
  %i.pf = and i32 %i.ml, 4
  %.not500 = icmp eq i32 %i.pf, 0
  br i1 %.not500, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pg = load i32, ptr @hf_2009_12_dpp_2_3_sec_partition, align 4
  %i.ph = load i32, ptr @ett_2009_12_dpp_2_3_sec_partition, align 4
  %i.pi = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.7447)
  %i.pj = call ptr @proto_tree_add_item(ptr noundef %i.mi, i32 noundef %i.pg, ptr noundef %0, i32 noundef %.7447, i32 noundef -1, i32 noundef 0)
  %i.pk = call ptr @proto_item_add_subtree(ptr noundef %i.pj, i32 noundef %i.ph) ; 2 uses
  %i.pl = call i32 @dissect_2008_16_security_10(ptr noundef %i.pi, ptr noundef %1, ptr noundef %i.pk, ptr poison), !inline_history !4 ; 2 uses
  %i.pm = call ptr @proto_tree_get_parent(ptr noundef %i.pk)
  call void @proto_item_set_len(ptr noundef %i.pm, i32 noundef %i.pl)
  %i.pn = add i32 %i.pl, %.7447
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.8 = phi i32 [ %i.pn, %bb.ck ], [ %.7447, %bb.cj ] ; 10 uses
  %.not501 = icmp sgt i8 %i.mj, -1
  br i1 %.not501, label %.thread627, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.po = getelementptr i8, ptr %i.h, i64 192     ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8            ; 2 uses
  %.not502 = icmp eq ptr %i.pp, null
  br i1 %.not502, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pq = load ptr, ptr %i.cd, align 8
  call void @col_set_str(ptr noundef %i.pq, i32 noundef 25, ptr noundef nonnull %i.pp)
  call void @proto_item_set_end(ptr noundef %2, ptr noundef %0, i32 noundef %.8)
  %i.pr = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.mi, ptr noundef @ei_dpp_no_security_context) ; 0 uses
  %i.ps = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.8)
  %i.pt = call i32 @call_data_dissector(ptr noundef %i.ps, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.pu = sub i32 %.8, %.5445
  call void @proto_item_set_len(ptr noundef %i.mi, i32 noundef %i.pu)
  br label %bb.eh

bb.co:                                            ; preds = %bb.cm
  %i.pv = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8
  %.not503 = icmp eq ptr %i.pw, null
  br i1 %.not503, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr @.str.733, ptr %i.po, align 8
  %i.px = sub i32 %.8, %.5445
  call void @proto_item_set_len(ptr noundef %i.mi, i32 noundef %i.px)
  br label %bb.eh

bb.cq:                                            ; preds = %bb.co
  %i.py = call ptr @find_dissector_table(ptr noundef @.str.134)
  %i.pz = call ptr @dissector_get_uint_handle(ptr noundef %i.py, i32 noundef 24577) ; 2 uses
  %.not504 = icmp eq ptr %i.pz, null
  br i1 %.not504, label %.thread627, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.qa = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.qa, align 4
  %i.qb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.8, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.qc, align 8
  %i.qd = load ptr, ptr %i.pv, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.qd, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.qf, align 8
  %i.qg = call i32 @call_dissector_only(ptr noundef nonnull %i.pz, ptr noundef %0, ptr noundef %1, ptr noundef %i.mi, ptr noundef nonnull %5)
  %i.qh = add i32 %i.qg, %.8                      ; 4 uses
  %i.qi = getelementptr i8, ptr %i.h, i64 216
  %i.qj = load ptr, ptr %i.qi, align 8
  %.not505.not = icmp eq ptr %i.qj, null
  br i1 %.not505.not, label %bb.cs, label %.thread631

.thread631:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread627

bb.cs:                                            ; preds = %bb.cr
  call void @proto_item_set_end(ptr noundef %2, ptr noundef %0, i32 noundef %i.qh)
  %i.qk = sub i32 %i.qh, %.5445
  call void @proto_item_set_len(ptr noundef %i.mi, i32 noundef %i.qk)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.eh

.thread627:                                       ; preds = %bb.cq, %bb.cl, %.thread631
  %.11 = phi i32 [ %i.qh, %.thread631 ], [ %.8, %bb.cl ], [ %.8, %bb.cq ] ; 2 uses
  %i.ql = sub i32 %.11, %.5445
  call void @proto_item_set_len(ptr noundef %i.mi, i32 noundef %i.ql)
  br label %bb.ct

bb.ct:                                            ; preds = %.thread627, %bb.bv
  %.13 = phi i32 [ %.11, %.thread627 ], [ %.5445, %bb.bv ] ; 2 uses
  call void @proto_item_set_end(ptr noundef %2, ptr noundef %0, i32 noundef %.13)
  %i.qm = getelementptr i8, ptr %i.h, i64 224
  %i.qn = load ptr, ptr %i.qm, align 8            ; 2 uses
  %.not506 = icmp eq ptr %i.qn, null
  br i1 %.not506, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qo = getelementptr i8, ptr %i.h, i64 232
  %i.qp = load i16, ptr %i.qo, align 8
  %i.qq = zext i16 %i.qp to i32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.14 = phi i32 [ %i.qq, %bb.cu ], [ %.13, %bb.ct ] ; 5 uses
  %.0417 = phi ptr [ %i.qn, %bb.cu ], [ %0, %bb.ct ] ; 4 uses
  %i.qr = call i32 @tvb_reported_length(ptr noundef %.0417)
  %i.qs = sub i32 %i.qr, %.14
  %i.qt = call ptr @tvb_new_subset_length(ptr noundef %.0417, i32 noundef %.14, i32 noundef %i.qs) ; 18 uses
  %i.qu = call zeroext i8 @tvb_get_uint8(ptr noundef %.0417, i32 noundef %.14) ; 2 uses
  %.not.i567 = icmp sgt i8 %i.qu, -1
  br i1 %.not.i567, label %read_c2.exit.thread, label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.cv
  %i.qv = add i32 %.14, 1
  %i.qw = and i8 %i.qu, 127
  %i.qx = zext nneg i8 %i.qw to i16
  %i.qy = shl nuw nsw i16 %i.qx, 8
  %i.qz = call zeroext i8 @tvb_get_uint8(ptr noundef %.0417, i32 noundef %i.qv)
  %i.ra = zext i8 %i.qz to i16
  %i.rb = or disjoint i16 %i.qy, %i.ra
  %i.rc = icmp eq i16 %i.rb, 32767
  br i1 %i.rc, label %bb.cw, label %read_c2.exit.thread

bb.cw:                                            ; preds = %read_c2.exit
  %i.rd = call ptr @proto_item_get_parent(ptr noundef %2)
  %i.re = load ptr, ptr %i.g, align 8             ; 6 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.eg, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rg = load ptr, ptr %i.cd, align 8
  call void @col_set_str(ptr noundef %i.rg, i32 noundef 35, ptr noundef @.str.739)
  %i.rh = load i32, ptr @proto_2009_12_dpp_common, align 4
  %i.ri = call ptr @proto_tree_add_item(ptr noundef %i.rd, i32 noundef %i.rh, ptr noundef %i.qt, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.rj = load i32, ptr @ett_2009_12_dpp_common, align 4
  %i.rk = call ptr @proto_item_add_subtree(ptr noundef %i.ri, i32 noundef %i.rj) ; 4 uses
  %i.rl = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef 0) ; 3 uses
  %.not.i.i = icmp slt i8 %i.rl, 0                ; 2 uses
  br i1 %.not.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.rm = and i8 %i.rl, 127
  %i.rn = zext nneg i8 %i.rm to i16
  %i.ro = shl nuw nsw i16 %i.rn, 8
  %i.rp = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef 1)
  %i.rq = zext i8 %i.rp to i16
  %i.rr = or disjoint i16 %i.ro, %i.rq
  br label %read_c2.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.rs = zext nneg i8 %i.rl to i16
  br label %read_c2.exit.i

read_c2.exit.i:                                   ; preds = %bb.cz, %bb.cy
  %.sink.i.i = phi i32 [ 2, %bb.cy ], [ 1, %bb.cz ] ; 4 uses
  %.0.ph.i.i = phi i16 [ %i.rr, %bb.cy ], [ %i.rs, %bb.cz ] ; 2 uses
  %i.rt = load i32, ptr @hf_2008_1_app_version, align 4
  %i.ru = zext nneg i16 %.0.ph.i.i to i32
  %i.rv = call ptr @proto_tree_add_uint(ptr noundef %i.rk, i32 noundef %i.rt, ptr noundef %i.qt, i32 noundef 0, i32 noundef %.sink.i.i, i32 noundef %i.ru)
  %i.rw = icmp samesign ult i16 %.0.ph.i.i, 128
  %or.cond.i.i = and i1 %.not.i.i, %i.rw
  br i1 %or.cond.i.i, label %bb.da, label %validate_c2.exit.i

bb.da:                                            ; preds = %read_c2.exit.i
  %i.rx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.rv, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit.i

validate_c2.exit.i:                               ; preds = %bb.da, %read_c2.exit.i
  %i.ry = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef %.sink.i.i)
  %i.rz = getelementptr i8, ptr %i.re, i64 48
  %i.sa = load i8, ptr %i.rz, align 8, !range !12, !noundef !13
  %i.sb = xor i8 %i.sa, -1
  %i.sc = shl i8 %i.sb, 7
  %spec.select.i = or i8 %i.sc, %i.ry             ; 2 uses
  %i.sd = load ptr, ptr %i.cd, align 8
  %i.se = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = zext i8 %spec.select.i to i32           ; 3 uses
  %i.sh = call ptr @val_to_str(ptr noundef %i.sf, i32 noundef %i.sg, ptr noundef @strings_2009_12_dpp_common_opcodes, ptr noundef @.str.741)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.sd, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.sh)
  %i.si = load i32, ptr @hf_2009_12_dpp_2_14_opcode, align 4
  %i.sj = and i32 %i.sg, 63                       ; 2 uses
  %i.sk = load ptr, ptr %i.se, align 8
  %i.sl = call ptr @val_to_str(ptr noundef %i.sk, i32 noundef %i.sg, ptr noundef @strings_2009_12_dpp_common_opcodes, ptr noundef @.str.741)
  %i.sm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.rk, i32 noundef %i.si, ptr noundef %i.qt, i32 noundef %.sink.i.i, i32 noundef 1, i32 noundef %i.sj, ptr noundef @.str.742, ptr noundef %i.sl, i32 noundef %i.sj) ; 0 uses
  %i.sn = add nuw nsw i32 %.sink.i.i, 1           ; 7 uses
  switch i8 %spec.select.i, label %bb.eg [
    i8 1, label %bb.db
    i8 8, label %bb.db
    i8 2, label %bb.db
    i8 4, label %bb.dc
    i8 0, label %bb.dc
    i8 -122, label %bb.dc
  ]

bb.db:                                            ; preds = %validate_c2.exit.i, %validate_c2.exit.i, %validate_c2.exit.i
  %i.so = getelementptr i8, ptr %i.re, i64 112
  store i8 1, ptr %i.so, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %validate_c2.exit.i, %validate_c2.exit.i, %validate_c2.exit.i
  %i.sp = getelementptr i8, ptr %i.re, i64 112    ; 3 uses
  %i.sq = load i8, ptr %i.sp, align 8, !range !12, !noundef !13
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ss = load i32, ptr @ett_2009_12_dpp_2_opid, align 4
  %i.st = call ptr @proto_tree_add_subtree(ptr noundef %i.rk, ptr noundef %i.qt, i32 noundef %i.sn, i32 noundef 0, i32 noundef %i.ss, ptr noundef null, ptr noundef @.str.715)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.069.i = phi ptr [ %i.st, %bb.dd ], [ %i.rk, %bb.dc ] ; 2 uses
  %i.su = load i32, ptr @ett_2009_12_dpp_2_opid, align 4
  %i.sv = call ptr @proto_tree_add_subtree(ptr noundef %.069.i, ptr noundef %i.qt, i32 noundef %i.sn, i32 noundef 0, i32 noundef %i.su, ptr noundef null, ptr noundef @.str.716)
  %i.sw = call i32 @tvb_reported_length(ptr noundef %i.qt)
  %i.sx = sub i32 %i.sw, %i.sn
  %i.sy = call ptr @tvb_new_subset_length(ptr noundef %i.qt, i32 noundef %i.sn, i32 noundef %i.sx) ; 3 uses
  %i.sz = load ptr, ptr @dof_oid_handle, align 8
  %i.ta = call i32 @call_dissector_only(ptr noundef %i.sz, ptr noundef %i.sy, ptr noundef %1, ptr noundef %i.sv, ptr noundef null) ; 6 uses
  %i.tb = trunc i32 %i.ta to i8                   ; 2 uses
  %i.tc = call ptr @tvb_get_ptr(ptr noundef %i.sy, i32 noundef 0, i32 noundef %i.ta)
  %.val.i = load ptr, ptr %i.g, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.not.i74.i = icmp eq ptr %.val.i, null
  br i1 %.not.i74.i, label %learn_sender_sid.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.td = getelementptr i8, ptr %.val.i, i64 52   ; 7 uses
  %i.te = load i32, ptr %i.td, align 4
  %.not48.i.i = icmp eq i32 %i.te, 0
  br i1 %.not48.i.i, label %learn_sender_sid.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tf = getelementptr i8, ptr %.val.i, i64 64   ; 3 uses
  %i.tg = load ptr, ptr %i.tf, align 8
  %.not49.i.i = icmp eq ptr %i.tg, null
  br i1 %.not49.i.i, label %bb.dh, label %learn_sender_sid.exit.i

bb.dh:                                            ; preds = %bb.dg
  store i8 %i.tb, ptr %i.a, align 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.mask.i = and i32 %i.ta, 255
  %i.ti = zext nneg i32 %.mask.i to i64           ; 2 uses
  %i.tj = call ptr @__memcpy_chk(ptr noundef nonnull %i.th, ptr noundef readonly %i.tc, i64 noundef %i.ti, i64 noundef 255) #26, !alias.scope !74 ; 0 uses
  %i.tk = load ptr, ptr @sid_buffer_to_sid_id, align 8
  %i.tl = call i32 @g_hash_table_lookup_extended(ptr noundef %i.tk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not50.i.i = icmp eq i32 %i.tl, 0
  br i1 %.not50.i.i, label %bb.ds, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tm = load ptr, ptr %i.c, align 8
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = trunc i64 %i.tn to i32                  ; 5 uses
  %i.tp = load i32, ptr %i.td, align 4            ; 5 uses
  %i.tq = icmp eq i32 %i.tp, %i.to
  br i1 %i.tq, label %bb.dj, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.di
  %.0432.i.i = load ptr, ptr @globals.2, align 8  ; 2 uses
  %.not523.i.i = icmp eq ptr %.0432.i.i, null
  br i1 %.not523.i.i, label %learn_sender_sid.exit.i, label %.lr.ph.i.i

bb.dj:                                            ; preds = %bb.di
  %i.tr = load ptr, ptr %i.b, align 8
  store ptr %i.tr, ptr %i.tf, align 8
  br label %learn_sender_sid.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.dr
  %.0434.i.i = phi ptr [ %.043.i.i, %bb.dr ], [ %.0432.i.i, %.preheader.i.i ] ; 5 uses
  %i.ts = getelementptr i8, ptr %.0434.i.i, i64 52 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4
  %i.tu = icmp eq i32 %i.tt, %i.tp
  br i1 %i.tu, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph.i.i
  store i32 %i.to, ptr %i.ts, align 4
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %i.tv = getelementptr i8, ptr %.0434.i.i, i64 56 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 8
  %i.tx = icmp eq i32 %i.tw, %i.tp
  br i1 %i.tx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 %i.to, ptr %i.tv, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ty = getelementptr i8, ptr %.0434.i.i, i64 88 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 8
  %i.ua = icmp eq i32 %i.tz, %i.tp
  br i1 %i.ua, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 %i.to, ptr %i.ty, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ub = getelementptr i8, ptr %.0434.i.i, i64 120 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 8
  %i.ud = icmp eq i32 %i.uc, %i.tp
  br i1 %i.ud, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 %i.to, ptr %i.ub, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ue = getelementptr i8, ptr %.0434.i.i, i64 16
  %.043.i.i = load ptr, ptr %i.ue, align 8        ; 2 uses
  %.not52.i.i = icmp eq ptr %.043.i.i, null
  br i1 %.not52.i.i, label %learn_sender_sid.exit.i, label %.lr.ph.i.i, !llvm.loop !72

bb.ds:                                            ; preds = %bb.dh
  %i.uf = add nuw nsw i64 %i.ti, 1                ; 2 uses
  %i.ug = call noalias ptr @g_malloc0(i64 noundef %i.uf) #24 ; 3 uses
  store ptr %i.ug, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ug, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 noundef %i.uf, i1 noundef false) #26
  %i.uh = load ptr, ptr @sid_buffer_to_sid_id, align 8
  %i.ui = load i32, ptr %i.td, align 4
  %i.uj = zext i32 %i.ui to i64
  %i.uk = inttoptr i64 %i.uj to ptr
  %i.ul = call i32 @g_hash_table_insert(ptr noundef %i.uh, ptr noundef %i.ug, ptr noundef %i.uk) ; 0 uses
  %i.um = load ptr, ptr @sid_id_to_sid_buffer, align 8
  %i.un = load i32, ptr %i.td, align 4
  %i.uo = zext i32 %i.un to i64
  %i.up = inttoptr i64 %i.uo to ptr
  %i.uq = load ptr, ptr %i.b, align 8
  %i.ur = call i32 @g_hash_table_insert(ptr noundef %i.um, ptr noundef %i.up, ptr noundef %i.uq) ; 0 uses
  %i.us = load ptr, ptr %i.b, align 8             ; 3 uses
  store ptr %i.us, ptr %i.tf, align 8
  %.05.i.i = load ptr, ptr @globals.2, align 8    ; 2 uses
  %.not516.i.i = icmp eq ptr %.05.i.i, null
  br i1 %.not516.i.i, label %learn_sender_sid.exit.i, label %.lr.ph8.preheader.i.i

.lr.ph8.preheader.i.i:                            ; preds = %bb.ds
  %.pre10.i.i = load i32, ptr %i.td, align 4
  br label %.lr.ph8.i.i

.lr.ph8.i.i:                                      ; preds = %bb.dw, %.lr.ph8.preheader.i.i
  %i.ut = phi i32 [ %i.vd, %bb.dw ], [ %.pre10.i.i, %.lr.ph8.preheader.i.i ] ; 2 uses
  %.07.i.i = phi ptr [ %.0.i.i, %bb.dw ], [ %.05.i.i, %.lr.ph8.preheader.i.i ] ; 5 uses
  %i.uu = getelementptr i8, ptr %.07.i.i, i64 52
  %i.uv = load i32, ptr %i.uu, align 4
  %i.uw = icmp eq i32 %i.uv, %i.ut
  br i1 %i.uw, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph8.i.i
  %i.ux = getelementptr i8, ptr %.07.i.i, i64 64
  store ptr %i.us, ptr %i.ux, align 8
  %.pre11.i.i = load i32, ptr %i.td, align 4
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph8.i.i
  %i.uy = phi i32 [ %.pre11.i.i, %bb.dt ], [ %i.ut, %.lr.ph8.i.i ] ; 2 uses
  %i.uz = getelementptr i8, ptr %.07.i.i, i64 56
  %i.va = load i32, ptr %i.uz, align 8
  %i.vb = icmp eq i32 %i.va, %i.uy
  br i1 %i.vb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.vc = getelementptr i8, ptr %.07.i.i, i64 72
  store ptr %i.us, ptr %i.vc, align 8
  %.pre.i.i = load i32, ptr %i.td, align 4
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.vd = phi i32 [ %.pre.i.i, %bb.dv ], [ %i.uy, %bb.du ]
  %i.ve = getelementptr i8, ptr %.07.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.ve, align 8          ; 2 uses
  %.not51.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not51.i.i, label %learn_sender_sid.exit.i, label %.lr.ph8.i.i, !llvm.loop !73

learn_sender_sid.exit.i:                          ; preds = %bb.dr, %bb.dw, %bb.ds, %bb.dj, %.preheader.i.i, %bb.dg, %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.vf = load i8, ptr %i.sp, align 8, !range !12, !noundef !13
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.dx, label %.thread.i

.thread.i:                                        ; preds = %learn_sender_sid.exit.i
  %i.vh = add i32 %i.ta, %i.sn
  br label %bb.eg

bb.dx:                                            ; preds = %learn_sender_sid.exit.i
  %i.vi = getelementptr i8, ptr %i.re, i64 120
  %i.vj = call ptr @tvb_get_ptr(ptr noundef %i.sy, i32 noundef 0, i32 noundef %i.ta)
  call fastcc void @learn_operation_sid(ptr noundef %i.vi, i8 noundef zeroext %i.tb, ptr noundef %i.vj)
  %.pre.i = load i8, ptr %i.sp, align 8, !range !12
  %i.vk = trunc nuw i8 %.pre.i to i1
  %i.vl = add i32 %i.ta, %i.sn                    ; 5 uses
  br i1 %i.vk, label %bb.dy, label %bb.eg

bb.dy:                                            ; preds = %bb.dx
  %i.vm = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef %i.vl) ; 4 uses
  %i.vn = icmp slt i8 %i.vm, 0                    ; 4 uses
  %i.vo = and i8 %i.vm, 64
  %i.vp = icmp eq i8 %i.vo, 0
  %i.vq = and i8 %i.vm, 63
  %..i.i = select i1 %i.vp, i32 2, i32 4          ; 2 uses
  %.021.i.i = select i1 %i.vn, i32 %..i.i, i32 1  ; 3 uses
  %.020.i.i = select i1 %i.vn, i8 %i.vq, i8 %i.vm
  %i.vr = zext nneg i8 %.020.i.i to i32           ; 2 uses
  br i1 %i.vn, label %.lr.ph.i76.i, label %read_c4.exit.i

.lr.ph.i76.i:                                     ; preds = %bb.dy, %.lr.ph.i76.i
  %.02331.i.in.i = phi i32 [ %.02331.i.i, %.lr.ph.i76.i ], [ %i.vl, %bb.dy ]
  %.030.i.i = phi i32 [ %i.vw, %.lr.ph.i76.i ], [ 1, %bb.dy ]
  %.02229.i.i = phi i32 [ %i.vv, %.lr.ph.i76.i ], [ %i.vr, %bb.dy ]
  %.02331.i.i = add i32 %.02331.i.in.i, 1         ; 2 uses
  %i.vs = shl i32 %.02229.i.i, 8
  %i.vt = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef %.02331.i.i)
  %i.vu = zext i8 %i.vt to i32
  %i.vv = or disjoint i32 %i.vs, %i.vu            ; 2 uses
  %i.vw = add nuw nsw i32 %.030.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.vw, %..i.i
  br i1 %exitcond.not.i.i, label %read_c4.exit.i, label %.lr.ph.i76.i, !llvm.loop !2

read_c4.exit.i:                                   ; preds = %.lr.ph.i76.i, %bb.dy
  %.022.lcssa.i.i = phi i32 [ %i.vr, %bb.dy ], [ %i.vv, %.lr.ph.i76.i ] ; 5 uses
  %i.vx = load i32, ptr @hf_2009_12_dpp_2_1_opcnt, align 4
  %i.vy = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.069.i, i32 noundef %i.vx, ptr noundef %i.qt, i32 noundef %i.vl, i32 noundef %.021.i.i, i32 noundef %.022.lcssa.i.i, ptr noundef @.str.717, i32 noundef %.022.lcssa.i.i) ; 2 uses
  %i.vz = icmp ult i32 %.022.lcssa.i.i, 128
  %or.cond.i77.i = and i1 %i.vn, %i.vz
  br i1 %or.cond.i77.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %read_c4.exit.i
  %i.wa = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.vy, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %read_c4.exit.i
  %i.wb = icmp samesign ugt i32 %.021.i.i, 2
  %i.wc = icmp ult i32 %.022.lcssa.i.i, 16384
  %or.cond3.i.i = and i1 %i.wb, %i.wc
  br i1 %or.cond3.i.i, label %bb.eb, label %validate_c4.exit.i

bb.eb:                                            ; preds = %bb.ea
  %i.wd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.vy, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit.i

validate_c4.exit.i:                               ; preds = %bb.eb, %bb.ea
  %i.we = add i32 %.021.i.i, %i.vl
  %i.wf = getelementptr i8, ptr %i.re, i64 136
  store i32 %.022.lcssa.i.i, ptr %i.wf, align 8
  br label %bb.eg

read_c2.exit.thread:                              ; preds = %bb.cv, %read_c2.exit
  %i.wg = call ptr @proto_item_get_parent(ptr noundef %2) ; 2 uses
  %i.wh = load ptr, ptr %i.cd, align 8
  call void @col_clear(ptr noundef %i.wh, i32 noundef 25)
  %i.wi = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef 0) ; 3 uses
  %.not.i.i570 = icmp sgt i8 %i.wi, -1
  br i1 %.not.i.i570, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %read_c2.exit.thread
  %i.wj = and i8 %i.wi, 127
  %i.wk = zext nneg i8 %i.wj to i32
  %i.wl = shl nuw nsw i32 %i.wk, 8
  %i.wm = call zeroext i8 @tvb_get_uint8(ptr noundef %i.qt, i32 noundef 1)
  %i.wn = zext i8 %i.wm to i32
  %i.wo = or disjoint i32 %i.wl, %i.wn
  br label %read_c2.exit.i571

bb.ed:                                            ; preds = %read_c2.exit.thread
  %i.wp = zext nneg i8 %i.wi to i32
  br label %read_c2.exit.i571

read_c2.exit.i571:                                ; preds = %bb.ed, %bb.ec
  %.sink.i.i572 = phi i32 [ 2, %bb.ec ], [ 1, %bb.ed ]
  %.0.ph.i.i573 = phi i32 [ %i.wo, %bb.ec ], [ %i.wp, %bb.ed ] ; 3 uses
  %i.wq = load ptr, ptr %i.cd, align 8
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.wq, i32 noundef 35, ptr noundef @.str.691, i32 noundef %.0.ph.i.i573)
  %i.wr = load ptr, ptr @app_dissectors, align 8
  %i.ws = call i32 @dissector_try_uint_with_data(ptr noundef %i.wr, i32 noundef %.0.ph.i.i573, ptr noundef %i.qt, ptr noundef %1, ptr noundef %i.wg, i1 noundef zeroext true, ptr noundef nonnull %3)
  %.not.not.i = icmp eq i32 %i.ws, 0
  br i1 %.not.not.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %read_c2.exit.i571
  %i.wt = load ptr, ptr %i.cd, align 8
  call void @col_set_fence(ptr noundef %i.wt, i32 noundef 35)
  %i.wu = load ptr, ptr %i.cd, align 8
  call void @col_set_fence(ptr noundef %i.wu, i32 noundef 25)
  %i.wv = call i32 @tvb_reported_length(ptr noundef %i.qt)
  br label %bb.eg

bb.ef:                                            ; preds = %read_c2.exit.i571
  %i.ww = load i32, ptr @proto_2008_1_app, align 4
  %i.wx = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %i.wg, i32 noundef %i.ww, ptr noundef %i.qt, i32 noundef 0, i32 noundef %.sink.i.i572, ptr noundef @.str.692, i32 noundef %.0.ph.i.i573) ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.cw, %validate_c2.exit.i, %.thread.i, %bb.dx, %validate_c4.exit.i, %bb.ee, %bb.ef
  %.pn = phi i32 [ %i.vh, %.thread.i ], [ 0, %bb.cw ], [ %i.sn, %validate_c2.exit.i ], [ %i.we, %validate_c4.exit.i ], [ %i.vl, %bb.dx ], [ %i.wv, %bb.ee ], [ 0, %bb.ef ]
  %.15 = add i32 %.pn, %.14
  %i.wy = load ptr, ptr %i.cd, align 8
  call void @col_set_fence(ptr noundef %i.wy, i32 noundef 35)
  %i.wz = load ptr, ptr %i.cd, align 8
  call void @col_set_fence(ptr noundef %i.wz, i32 noundef 25)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.cp, %bb.cs, %bb.cn, %bb.b, %bb.a, %bb.eg
  %.7 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.15, %bb.eg ], [ %.8, %bb.cp ], [ %i.qh, %bb.cs ], [ %.8, %bb.cn ]
  ret i32 %.7
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @learn_operation_sid(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = zext i8 %1 to i64                        ; 2 uses
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef %i.g, i64 noundef 255) #26, !alias.scope !78 ; 0 uses
  %i.i = load ptr, ptr @sid_buffer_to_sid_id, align 8
  %i.j = call i32 @g_hash_table_lookup_extended(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %0, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.o = call noalias ptr @g_malloc0(i64 noundef %i.n) #24 ; 3 uses
  store ptr %i.o, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.o, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 noundef %i.n, i1 noundef false) #26
  %i.p = load i32, ptr @dpp_next_sid_id, align 4  ; 3 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @dpp_next_sid_id, align 4
  store i32 %i.p, ptr %0, align 8
  %i.r = load ptr, ptr @sid_buffer_to_sid_id, align 8
  %i.s = zext i32 %i.p to i64
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = call i32 @g_hash_table_insert(ptr noundef %i.r, ptr noundef %i.o, ptr noundef %i.t) ; 0 uses
  %i.v = load ptr, ptr @sid_id_to_sid_buffer, align 8
  %i.w = load i32, ptr %0, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = call i32 @g_hash_table_insert(ptr noundef %i.v, ptr noundef %i.y, ptr noundef %i.z) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %i.ab = load ptr, ptr %i.b, align 8
  store ptr %i.ab, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dof_dissect_pdu_as_field(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tvb_new_subset_remaining(ptr noundef %1, i32 noundef %4)
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %5, ptr noundef %1, i32 noundef %4, i32 noundef -1, i32 noundef 0)
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %6) ; 2 uses
  %i.d = tail call i32 %0(ptr noundef %i.a, ptr noundef %2, ptr noundef %i.c, ptr noundef %7), !inline_history !79 ; 2 uses
  %i.e = tail call ptr @proto_tree_get_parent(ptr noundef %i.c)
  tail call void @proto_item_set_len(ptr noundef %i.e, i32 noundef %i.d)
  %i.f = add i32 %i.d, %4
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_2008_16_security_10(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.a, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i16
  %i.d = shl nuw nsw i16 %i.c, 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.d, %i.f
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.a to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = load i32, ptr @hf_security_10_count, align 4
  %i.j = zext nneg i16 %.0.ph.i to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.j)
  %i.l = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.l
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %.not33 = icmp eq i16 %.0.ph.i, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %validate_c2.exit, %validate_c4.exit
  %.in = phi i16 [ %i.n, %validate_c4.exit ], [ %.0.ph.i, %validate_c2.exit ]
  %.02234 = phi i32 [ %.023.lcssa.i, %validate_c4.exit ], [ %.sink.i, %validate_c2.exit ] ; 4 uses
  %i.n = add nsw i16 %.in, -1                     ; 2 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02234) ; 5 uses
  %i.p = icmp slt i8 %i.o, 0                      ; 3 uses
  %i.q = and i8 %i.o, 64
  %.not32 = icmp eq i8 %i.q, 0
  %i.r = and i8 %i.o, 63
  %..i = select i1 %.not32, i32 2, i32 4
  %.020.i = select i1 %i.p, i8 %i.r, i8 %i.o
  %i.s = zext nneg i8 %.020.i to i32              ; 2 uses
  %.02328.i = add i32 %.02234, 1                  ; 2 uses
  br i1 %i.p, label %.lr.ph.i, label %read_c4.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.02331.i = phi i32 [ %.023.i, %.lr.ph.i ], [ %.02328.i, %.lr.ph ] ; 2 uses
  %.030.i = phi i32 [ %i.x, %.lr.ph.i ], [ 1, %.lr.ph ]
  %.02229.i = phi i32 [ %i.w, %.lr.ph.i ], [ %i.s, %.lr.ph ]
  %i.t = shl i32 %.02229.i, 8
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i)
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = add nuw nsw i32 %.030.i, 1               ; 2 uses
  %.023.i = add i32 %.02331.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.x, %..i
  br i1 %exitcond.not.i, label %read_c4.exit, label %.lr.ph.i, !llvm.loop !2

read_c4.exit:                                     ; preds = %.lr.ph.i, %.lr.ph
  %.022.lcssa.i = phi i32 [ %i.s, %.lr.ph ], [ %i.w, %.lr.ph.i ] ; 5 uses
  %.023.lcssa.i = phi i32 [ %.02328.i, %.lr.ph ], [ %.023.i, %.lr.ph.i ] ; 3 uses
  %switch.tableidx = add i32 %.022.lcssa.i, -1073741821 ; 2 uses
  %i.y = icmp ult i32 %switch.tableidx, 3
  br i1 %i.y, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %read_c4.exit
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_2008_16_security_11, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %read_c4.exit
  %.0 = phi ptr [ @.str.180, %read_c4.exit ], [ %switch.load, %switch.lookup ]
  %i.aa = load i32, ptr @hf_security_10_permission_group_identifier, align 4
  %i.ab = sub i32 %.023.lcssa.i, %.02234
  %i.ac = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.02234, i32 noundef %i.ab, i32 noundef %.022.lcssa.i, ptr noundef @.str.737, i32 noundef %.022.lcssa.i, ptr noundef nonnull %.0) ; 2 uses
  %i.ad = icmp ult i32 %.022.lcssa.i, 128
  %or.cond.i25 = and i1 %i.p, %i.ad
  br i1 %or.cond.i25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = icmp ugt i8 %i.o, -65
  %i.ag = icmp ult i32 %.022.lcssa.i, 16384
  %or.cond3.i = and i1 %i.af, %i.ag
  br i1 %or.cond3.i, label %bb.h, label %validate_c4.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit

validate_c4.exit:                                 ; preds = %bb.g, %bb.h
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %validate_c4.exit, %validate_c2.exit
  %.022.lcssa = phi i32 [ %.sink.i, %validate_c2.exit ], [ %.023.lcssa.i, %validate_c4.exit ]
  ret i32 %.022.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @read_c2(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 3 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 1
  %i.c = and i8 %i.a, 127
  %i.d = zext nneg i8 %i.c to i16
  %i.e = shl nuw nsw i16 %i.d, 8
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.b)
  %i.g = zext i8 %i.f to i16
  %i.h = or disjoint i16 %i.e, %i.g               ; 2 uses
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.a to i16                 ; 2 uses
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  %.0.ph = phi i16 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi i16 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %.0.ph, %.sink.split ]
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %.0, ptr %2, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dsp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %dissect_options.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %dissect_options.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef @.str.743)
  %i.g = load i32, ptr @proto_2008_1_dsp, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.i = load i32, ptr @ett_2008_1_dsp_12, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 5 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.k, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i16
  %i.n = shl nuw nsw i16 %i.m, 8
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.n, %i.p
  br label %read_c2.exit

bb.e:                                             ; preds = %bb.c
  %i.r = zext nneg i8 %i.k to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]   ; 6 uses
  %.0.ph.i = phi i16 [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = load i32, ptr @hf_2008_1_app_version, align 4
  %i.t = zext nneg i16 %.0.ph.i to i32
  %i.u = tail call ptr @proto_tree_add_uint(ptr noundef %i.j, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.t)
  %i.v = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.v
  br i1 %or.cond.i, label %bb.f, label %validate_c2.exit

bb.f:                                             ; preds = %read_c2.exit
  %i.w = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.u, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.f
  %i.x = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.y = icmp eq i32 %.sink.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %validate_c2.exit
  %i.z = load ptr, ptr %i.e, align 8
  tail call void @col_append_str(ptr noundef %i.z, i32 noundef 25, ptr noundef @.str.744)
  %i.aa = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.j, ptr noundef @ei_implicit_no_op) ; 0 uses
  br label %dissect_options.exit

bb.h:                                             ; preds = %validate_c2.exit
  %i.ab = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.ac = getelementptr i8, ptr %i.c, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !12, !noundef !13
  %i.ae = xor i8 %i.ad, -1
  %i.af = shl i8 %i.ae, 7
  %spec.select = or i8 %i.af, %i.ab               ; 2 uses
  %i.ag = load i32, ptr @hf_2008_1_dsp_12_opcode, align 4
  %i.ah = zext i8 %spec.select to i32             ; 4 uses
  %i.ai = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call ptr @val_to_str(ptr noundef %i.aj, i32 noundef %i.ah, ptr noundef @strings_2008_1_dsp_opcodes, ptr noundef @.str.741)
  %i.al = and i32 %i.ah, 127
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.j, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef %i.ah, ptr noundef @.str.742, ptr noundef %i.ak, i32 noundef %i.al) ; 0 uses
  %i.an = add nuw nsw i32 %.sink.i, 1             ; 9 uses
  %i.ao = load ptr, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.ai, align 8
  %i.aq = tail call ptr @val_to_str(ptr noundef %i.ap, i32 noundef %i.ah, ptr noundef @strings_2008_1_dsp_opcodes, ptr noundef @.str.741)
  tail call void @col_append_sep_str(ptr noundef %i.ao, i32 noundef 25, ptr noundef @.str.745, ptr noundef %i.aq)
  switch i8 %spec.select, label %dissect_options.exit [
    i8 1, label %bb.m
    i8 -122, label %bb.i
    i8 -121, label %bb.i
    i8 -125, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ar = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.as = icmp ult i32 %i.an, %i.ar
  br i1 %i.as, label %.lr.ph, label %dissect_options.exit

.lr.ph:                                           ; preds = %bb.i, %validate_c2.exit74
  %.06382 = phi i32 [ %.015.ph.i70, %validate_c2.exit74 ], [ %i.an, %bb.i ] ; 5 uses
  %i.at = add nuw i32 %.06382, 1                  ; 2 uses
  %i.au = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06382) ; 3 uses
  %.not.i68 = icmp slt i8 %i.au, 0                ; 2 uses
  br i1 %.not.i68, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.av = and i8 %i.au, 127
  %i.aw = zext nneg i8 %i.av to i16
  %i.ax = shl nuw nsw i16 %i.aw, 8
  %i.ay = add i32 %.06382, 2
  %i.az = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at)
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  br label %read_c2.exit72

bb.k:                                             ; preds = %.lr.ph
  %i.bc = zext nneg i8 %i.au to i16
  br label %read_c2.exit72

read_c2.exit72:                                   ; preds = %bb.j, %bb.k
  %.015.ph.i70 = phi i32 [ %i.ay, %bb.j ], [ %i.at, %bb.k ] ; 4 uses
  %.0.ph.i71 = phi i16 [ %i.bb, %bb.j ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bd = load i32, ptr @hf_2008_1_app_version, align 4
  %i.be = sub i32 %.015.ph.i70, %.06382
  %i.bf = zext nneg i16 %.0.ph.i71 to i32
  %i.bg = tail call ptr @proto_tree_add_uint(ptr noundef %i.j, i32 noundef %i.bd, ptr noundef %0, i32 noundef %.06382, i32 noundef %i.be, i32 noundef %i.bf)
  %i.bh = icmp samesign ult i16 %.0.ph.i71, 128
  %or.cond.i73 = and i1 %.not.i68, %i.bh
  br i1 %or.cond.i73, label %bb.l, label %validate_c2.exit74

bb.l:                                             ; preds = %read_c2.exit72
  %i.bi = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bg, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit74

validate_c2.exit74:                               ; preds = %read_c2.exit72, %bb.l
  %i.bj = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.bk = icmp ult i32 %.015.ph.i70, %i.bj
  br i1 %i.bk, label %.lr.ph, label %dissect_options.exit, !llvm.loop !81

bb.m:                                             ; preds = %bb.h, %bb.h
  %i.bl = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.bm = sub i32 %i.bl, %i.an                    ; 3 uses
  %i.bn = load i32, ptr @ett_2008_1_dsp_12_options, align 4
  %i.bo = icmp eq i32 %i.bm, 1
  %i.bp = select i1 %i.bo, ptr @.str.180, ptr @.str.747
  %i.bq = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef null, ptr noundef @.str.746, i32 noundef %i.bm, ptr noundef nonnull %i.bp)
  %i.br = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.bs = icmp slt i32 %i.an, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %dissect_options.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.01.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.an, %bb.m ] ; 3 uses
  %i.bt = load i32, ptr @ett_2008_1_dsp_12_option, align 4
  %i.bu = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bq, ptr noundef %0, i32 noundef %.01.i, i32 noundef 0, i32 noundef %i.bt, ptr noundef null, ptr noundef @.str.748) ; 2 uses
  %i.bv = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.01.i)
  %i.bw = tail call fastcc i32 @dissect_2008_1_dsp_1(ptr noundef %i.bv, ptr noundef %1, ptr noundef %i.bu) ; 2 uses
  %i.bx = tail call ptr @proto_tree_get_parent(ptr noundef %i.bu)
  tail call void @proto_item_set_len(ptr noundef %i.bx, i32 noundef %i.bw)
  %i.by = add i32 %i.bw, %.01.i                   ; 3 uses
  %i.bz = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph.i, label %dissect_options.exit, !llvm.loop !82

dissect_options.exit:                             ; preds = %validate_c2.exit74, %.lr.ph.i, %bb.i, %bb.m, %bb.h, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.sink.i, %bb.g ], [ %i.an, %bb.h ], [ %i.by, %.lr.ph.i ], [ %i.an, %bb.m ], [ %i.an, %bb.i ], [ %.015.ph.i70, %validate_c2.exit74 ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 4, 260) i32 @dissect_2008_1_dsp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.e = load i32, ptr @hf_2008_1_dsp_attribute_code, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_2008_1_dsp_attribute_data, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_2008_1_dsp_value_length, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext i8 %i.b to i32                      ; 2 uses
  %i.n = tail call ptr @val_to_str(ptr noundef %i.l, i32 noundef %i.m, ptr noundef @strings_2008_1_dsp_attribute_codes, ptr noundef @.str.750)
  %i.o = zext i16 %i.c to i32                     ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.a, ptr noundef @.str.749, ptr noundef %i.n, i32 noundef %i.o)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @hf_2008_1_dsp_value_data, align 4
  %i.q = zext i8 %i.d to i32                      ; 2 uses
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef %i.q, i32 noundef 0) ; 0 uses
  %i.s = add nuw nsw i32 %i.q, 4                  ; 2 uses
  tail call void @tvb_set_reported_length(ptr noundef %0, i32 noundef %i.s)
  %i.t = load ptr, ptr @dsp_option_dissectors, align 8
  %i.u = shl nuw nsw i32 %i.m, 16
  %i.v = or disjoint i32 %i.u, %i.o
  %i.w = tail call i32 @dissector_try_uint(ptr noundef %i.t, i32 noundef %i.v, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.pre-phi26 = phi i32 [ %i.s, %bb.b ], [ 4, %bb.a ]
  ret i32 %.pre-phi26
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_reported_length(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_ccm_app(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.751)
  %i.c = load i32, ptr @proto_ccm_app, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_ccm, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 2 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.g, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i16
  %i.j = shl nuw nsw i16 %i.i, 8
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.j, %i.l
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.n = zext nneg i8 %i.g to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.m, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.o = load i32, ptr @hf_2008_1_app_version, align 4
  %i.p = zext nneg i16 %.0.ph.i to i32
  %i.q = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.p)
  %i.r = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.s = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.q, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %1, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = zext i8 %i.t to i32
  %i.y = tail call ptr @val_to_str(ptr noundef %i.w, i32 noundef %i.x, ptr noundef @ccm_opcode_strings, ptr noundef @.str.741)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.y)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %validate_c2.exit
  %i.z = load i32, ptr @hf_ccm_opcode, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.z, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %validate_c2.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 1) i32 @dissect_ccm_dsp(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef @.str.752)
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.d = load i32, ptr @hf_ccm_dsp_option, align 4
  %i.e = zext i8 %i.c to i32
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef %i.e, i32 noundef 0)
  %i.g = load i32, ptr @ett_ccm_dsp_option, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 6 uses
  %i.i = load i32, ptr @hf_ccm_dsp_strength_count, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i8 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %.03132 = phi i32 [ %i.m, %.lr.ph ], [ 5, %bb.a ] ; 2 uses
  %i.l = load i32, ptr @hf_ccm_dsp_strength, align 4
  %i.m = add nuw nsw i32 %.03132, 1               ; 2 uses
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.l, ptr noundef %0, i32 noundef %.03132, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add nuw i8 %.033, 1                      ; 2 uses
  %i.p = load i8, ptr %i.a, align 1
  %i.q = icmp ult i8 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.031.lcssa = phi i32 [ 5, %bb.a ], [ %i.m, %.lr.ph ] ; 5 uses
  %i.r = load i32, ptr @hf_ccm_dsp_e_flag, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.r, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_ccm_dsp_m_flag, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.t, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ccm_dsp_tmax, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.v, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_ccm_dsp_tmin, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.x, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = add i32 %.031.lcssa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ccm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [11 x i8], align 4                ; 7 uses
  %i.o = icmp eq ptr %3, null
  br i1 %i.o, label %.critedge371, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = getelementptr i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4
  switch i32 %i.s, label %.critedge371 [
    i32 0, label %bb.c
    i32 1, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not351 = icmp eq ptr %i.u, null
  br i1 %.not351, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.v, i64 noundef 48) #22 ; 11 uses
  %.not352 = icmp eq ptr %i.w, null
  br i1 %.not352, label %.critedge371, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @wmem_file_scope()
  %i.y = tail call i32 @wmem_register_callback(ptr noundef %i.x, ptr noundef @dof_sessions_destroy_cb, ptr noundef nonnull %i.w) ; 0 uses
  store ptr %i.w, ptr %i.t, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 16       ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not353 = icmp eq ptr %i.aa, null
  br i1 %.not353, label %.critedge371, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.q, i64 12      ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.critedge371, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 24577, ptr %i.w, align 8
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %i.w, i64 36
  store i8 %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = load i32, ptr %i.ab, align 4
  %i.ak = add i32 %i.aj, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.w, i64 37
  %.lobit = lshr i8 %i.an, 7
  store i8 %.lobit, ptr %i.ao, align 1
  %i.ap = load ptr, ptr %i.z, align 8
  %i.aq = load i32, ptr %i.ab, align 4
  %i.ar = add i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = shl i8 %i.au, 1
  %i.aw = and i8 %i.av, 14
  %narrow = add nuw nsw i8 %i.aw, 2
  %i.ax = getelementptr i8, ptr %i.w, i64 38
  store i8 %narrow, ptr %i.ax, align 2
  %i.ay = getelementptr i8, ptr %i.w, i64 40
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.w, i64 8
  %i.bb = tail call i32 @gcry_cipher_open(ptr noundef %i.ba, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not354 = icmp eq i32 %i.bb, 0
  br i1 %.not354, label %bb.h, label %.critedge371

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0317 = phi ptr [ %i.u, %bb.c ], [ %i.w, %bb.g ] ; 11 uses
  %i.bc = getelementptr i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 49
  %i.bg = load i8, ptr %i.bf, align 1, !range !12, !noundef !13
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bi = load i32, ptr %.0317, align 8
  %cond10 = icmp eq i32 %i.bi, 24577
  br i1 %cond10, label %bb.j, label %.critedge371

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %.0317, i64 8     ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.q, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 @gcry_cipher_setkey(ptr noundef %i.bk, ptr noundef %i.bm, i64 noundef 32)
  %.not363 = icmp eq i32 %i.bn, 0
  br i1 %.not363, label %.critedge371, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bj, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.bo)
  store ptr null, ptr %i.bj, align 8
  br label %.critedge371

bb.l:                                             ; preds = %bb.h
  %i.bp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp sgt i8 %i.bp, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = and i8 %i.bp, 127
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  br label %read_c2.exit

bb.n:                                             ; preds = %bb.l
  %i.bw = zext nneg i8 %i.bp to i32
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.m, %bb.n
  %.015.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ]    ; 2 uses
  %.0.i = phi i32 [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.bx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.015.i)
  %i.by = lshr i8 %i.bx, 4
  %i.bz = and i8 %i.by, 7                         ; 2 uses
  %i.ca = getelementptr i8, ptr %.0317, i64 16    ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.o, label %bb.t

bb.o:                                             ; preds = %read_c2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cd = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not361 = icmp eq i32 %i.cd, 0
  br i1 %.not361, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ce = call ptr @g_hash_table_new_full(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal, ptr noundef null, ptr noundef @dof_cipher_data_destroy)
  store ptr %i.ce, ptr %i.ca, align 8
  %i.cf = getelementptr i8, ptr %.0317, i64 24    ; 2 uses
  store i32 1, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %.0317, i64 28
  %i.ch = zext nneg i8 %i.bz to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  store i8 1, ptr %i.ci, align 1
  %i.cj = load i32, ptr %.0317, align 8
  %cond8 = icmp eq i32 %i.cj, 24577
  %i.ck = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %cond8, label %bb.q, label %.critedge.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr i8, ptr %i.q, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call i32 @gcry_cipher_setkey(ptr noundef %i.ck, ptr noundef %i.cm, i64 noundef 32)
  %.not362 = icmp eq i32 %i.cn, 0
  br i1 %.not362, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.a, align 8
  br label %.critedge.sink.split

bb.s:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.ca, align 8
  %i.cq = load i32, ptr %i.cf, align 8
  %i.cr = zext i32 %i.cq to i64
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.a, align 8
  %i.cu = call i32 @g_hash_table_insert(ptr noundef %i.cp, ptr noundef %i.cs, ptr noundef %i.ct) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge372

bb.t:                                             ; preds = %read_c2.exit
  %i.cv = getelementptr i8, ptr %.0317, i64 28
  %i.cw = zext nneg i8 %i.bz to i64
  %i.cx = getelementptr i8, ptr %i.cv, i64 %i.cw  ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %.not355 = icmp eq i8 %i.cy, 0
  br i1 %.not355, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.cz = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not356 = icmp eq i32 %i.cz, 0
  br i1 %.not356, label %bb.v, label %.critedge365

bb.v:                                             ; preds = %bb.u
  %i.da = load i32, ptr %.0317, align 8
  %cond1 = icmp eq i32 %i.da, 24577
  %i.db = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %cond1, label %bb.w, label %.critedge365.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr i8, ptr %i.q, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 @gcry_cipher_setkey(ptr noundef %i.db, ptr noundef %i.dd, i64 noundef 32)
  %.not357 = icmp eq i32 %i.de, 0
  br i1 %.not357, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.b, align 8
  br label %.critedge365.sink.split

bb.y:                                             ; preds = %bb.w
  %i.dg = getelementptr i8, ptr %.0317, i64 24    ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = add i32 %i.dh, 1                        ; 3 uses
  store i32 %i.di, ptr %i.dg, align 8
  %i.dj = trunc i32 %i.di to i8
  store i8 %i.dj, ptr %i.cx, align 1
  %i.dk = load ptr, ptr %i.ca, align 8
  %i.dl = zext i32 %i.di to i64
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load ptr, ptr %i.b, align 8
  %i.do = call i32 @g_hash_table_insert(ptr noundef %i.dk, ptr noundef %i.dm, ptr noundef %i.dn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge372

bb.z:                                             ; preds = %bb.t
  %i.dp = zext i8 %i.cy to i64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.dq) ; 2 uses
  %i.ds = getelementptr i8, ptr %i.q, i64 32      ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = load i128, ptr %i.dt, align 1
  %i.dv = load i128, ptr %i.dr, align 1
  %i.dw = xor i128 %i.du, %i.dv
  %i.dx = getelementptr i8, ptr %i.dt, i64 16
  %i.dy = getelementptr i8, ptr %i.dr, i64 16
  %i.dz = load i128, ptr %i.dx, align 1
  %i.ea = load i128, ptr %i.dy, align 1
  %i.eb = xor i128 %i.dz, %i.ea
  %i.ec = or i128 %i.dw, %i.eb
  %i.ed = icmp ne i128 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %.not358 = icmp eq i32 %i.ee, 0
  br i1 %.not358, label %.critedge372, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ef = call i32 @gcry_cipher_open(ptr noundef nonnull %i.c, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not359 = icmp eq i32 %i.ef, 0
  br i1 %.not359, label %bb.ab, label %.critedge367

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load i32, ptr %.0317, align 8
  %cond6 = icmp eq i32 %i.eg, 24577
  %i.eh = load ptr, ptr %i.c, align 8             ; 2 uses
  br i1 %cond6, label %bb.ac, label %.critedge367.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.ds, align 8
  %i.ej = call i32 @gcry_cipher_setkey(ptr noundef %i.eh, ptr noundef %i.ei, i64 noundef 32)
  %.not360 = icmp eq i32 %i.ej, 0
  br i1 %.not360, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr %i.c, align 8
  br label %.critedge367.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.el = getelementptr i8, ptr %.0317, i64 24    ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = add i32 %i.em, 1                        ; 3 uses
  store i32 %i.en, ptr %i.el, align 8
  %i.eo = trunc i32 %i.en to i8
  store i8 %i.eo, ptr %i.cx, align 1
  %i.ep = load ptr, ptr %i.ca, align 8
  %i.eq = zext i32 %i.en to i64
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %i.c, align 8
  %i.et = call i32 @g_hash_table_insert(ptr noundef %i.ep, ptr noundef %i.er, ptr noundef %i.es) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.critedge372

.critedge367.sink.split:                          ; preds = %bb.ab, %bb.ad
  %.sink = phi ptr [ %i.ek, %bb.ad ], [ %i.eh, %bb.ab ]
  call void @gcry_cipher_close(ptr noundef %.sink)
  br label %.critedge367

.critedge367:                                     ; preds = %.critedge367.sink.split, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.critedge371

.critedge365.sink.split:                          ; preds = %bb.v, %bb.x
  %.sink422 = phi ptr [ %i.df, %bb.x ], [ %i.db, %bb.v ]
  call void @gcry_cipher_close(ptr noundef %.sink422)
  br label %.critedge365

.critedge365:                                     ; preds = %.critedge365.sink.split, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge371

.critedge.sink.split:                             ; preds = %bb.p, %bb.r
  %.sink423 = phi ptr [ %i.co, %bb.r ], [ %i.ck, %bb.p ]
  call void @gcry_cipher_close(ptr noundef %.sink423)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge371

.critedge372:                                     ; preds = %bb.y, %bb.z, %bb.ae, %bb.s
  %i.eu = add nuw nsw i32 %.0.i, %.015.i
  br label %.critedge371

bb.af:                                            ; preds = %bb.b
  %i.ev = getelementptr i8, ptr %3, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr i8, ptr %3, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ew, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8            ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i16 0, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.fc = getelementptr i8, ptr %i.fb, i64 200    ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fd, null
  br i1 %.not, label %bb.ag, label %.thread382

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr i8, ptr %i.ex, i64 48
  %i.ff = load i8, ptr %i.fe, align 8, !range !12, !noundef !13
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr i8, ptr %i.ez, i64 16
  %.0325392 = load ptr, ptr %i.fh, align 8        ; 6 uses
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.not337393 = icmp eq ptr %.0325392, null
  br i1 %.not337393, label %.critedge374, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.fi = getelementptr i8, ptr %i.fb, i64 49
  %i.fj = load i8, ptr %i.fi, align 1, !range !12, !noundef !13
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr i8, ptr %i.fb, i64 12
  %i.fm = load i32, ptr %i.fl, align 4            ; 2 uses
  br i1 %i.fk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.0325394.us = phi ptr [ %.0325.us, %.thread.us ], [ %.0325392, %.lr.ph ] ; 3 uses
  %i.fn = load i32, ptr %.0325394.us, align 8
  %i.fo = icmp ugt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.split.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.fp = getelementptr i8, ptr %.0325394.us, i64 40
  %.0325.us = load ptr, ptr %i.fp, align 8        ; 2 uses
  %.not337.us = icmp eq ptr %.0325.us, null
  br i1 %.not337.us, label %.critedge374, label %.lr.ph.split.us, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.0325394 = phi ptr [ %.0325, %.thread ], [ %.0325392, %.lr.ph ] ; 3 uses
  %i.fq = getelementptr i8, ptr %.0325394, i64 4
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp ugt i32 %i.fm, %i.fr
  br i1 %i.fs, label %.split.us, label %.thread

.thread:                                          ; preds = %.lr.ph.split
  %i.ft = getelementptr i8, ptr %.0325394, i64 40
  %.0325 = load ptr, ptr %i.ft, align 8           ; 2 uses
  %.not337 = icmp eq ptr %.0325, null
  br i1 %.not337, label %.critedge374, label %.lr.ph.split, !llvm.loop !84

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.0325394.us, %.lr.ph.split.us ], [ %.0325394, %.lr.ph.split ] ; 2 uses
  store ptr %.us-phi, ptr %i.fc, align 8
  br label %.thread382

.critedge374:                                     ; preds = %.thread, %.thread.us, %bb.ah
  %i.fu = getelementptr i8, ptr %i.fb, i64 192
  store ptr @.str.733, ptr %i.fu, align 8
  br label %bb.bw

bb.ai:                                            ; preds = %bb.ag
  store ptr %.0325392, ptr %i.fc, align 8
  %.not338 = icmp eq ptr %.0325392, null
  br i1 %.not338, label %bb.ak, label %.thread382

.thread382:                                       ; preds = %bb.af, %.split.us, %bb.ai
  %.1326385 = phi ptr [ %.0325392, %bb.ai ], [ %i.fd, %bb.af ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.fv = getelementptr i8, ptr %.1326385, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8
  %.not339 = icmp eq ptr %i.fw, null
  br i1 %.not339, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread382
  %i.fx = getelementptr i8, ptr %.1326385, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8            ; 9 uses
  %.not340 = icmp eq ptr %i.fy, null
  br i1 %.not340, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.thread382, %bb.ai
  %i.fz = getelementptr i8, ptr %i.fb, i64 192
  store ptr @.str.733, ptr %i.fz, align 8
  br label %bb.bw

bb.al:                                            ; preds = %bb.aj
  %i.ga = getelementptr i8, ptr %3, i64 8         ; 5 uses
  %i.gb = load i32, ptr %i.ga, align 8            ; 9 uses
  %i.gc = load i32, ptr @proto_ccm, align 4
  %i.gd = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.gc, ptr noundef %0, i32 noundef %i.gb, i32 noundef 0, ptr noundef @.str.753) ; 2 uses
  %i.ge = load i32, ptr @ett_header, align 4
  %i.gf = tail call ptr @proto_item_add_subtree(ptr noundef %i.gd, i32 noundef %i.ge) ; 11 uses
  %i.gg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gb) ; 4 uses
  %i.gh = load i32, ptr @hf_epp_v1_ccm_flags, align 4
  %i.gi = zext i8 %i.gg to i32                    ; 4 uses
  %i.gj = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.gi, ptr noundef @.str.714, i32 noundef %i.gi)
  %i.gk = load i32, ptr @ett_epp_v1_ccm_flags, align 4
  %i.gl = tail call ptr @proto_item_add_subtree(ptr noundef %i.gj, i32 noundef %i.gk) ; 5 uses
  %i.gm = load i32, ptr @hf_epp_v1_ccm_flags_manager, align 4
  %i.gn = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gm, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.go = load i32, ptr @hf_epp_v1_ccm_flags_period, align 4
  %i.gp = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gq = load i32, ptr @hf_epp_v1_ccm_flags_target, align 4
  %i.gr = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gq, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gs = load i32, ptr @hf_epp_v1_ccm_flags_next_nid, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gu = load i32, ptr @hf_epp_v1_ccm_flags_packet, align 4
  %i.gv = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gw = add i32 %i.gb, 1                        ; 7 uses
  %.not341 = trunc i8 %i.gg to i1
  %i.gx = getelementptr i8, ptr %i.fb, i64 208    ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %.not342 = icmp eq ptr %i.gy, null
  br i1 %.not342, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.gz = tail call ptr @wmem_file_scope()
  %i.ha = tail call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.gz, i64 noundef 12) #22 ; 6 uses
  %.not343 = icmp eq ptr %i.ha, null
  br i1 %.not343, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ha, ptr %i.gx, align 8
  %i.hb = getelementptr i8, ptr %i.ex, i64 49
  %i.hc = load i8, ptr %i.hb, align 1, !range !12, !noundef !13
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.he = getelementptr i8, ptr %i.fb, i64 49
  %i.hf = load i8, ptr %i.he, align 1, !range !12, !noundef !13
  %i.hg = trunc nuw i8 %i.hf to i1
  %.not341.mask344 = and i8 %i.gg, 1
  %i.hh = icmp eq i8 %.not341.mask344, 0          ; 2 uses
  br i1 %i.hg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ha, align 4
  br i1 %i.hh, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr i8, ptr %i.fy, i64 40     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = add i32 %i.hj, 1                        ; 2 uses
  store i32 %i.hk, ptr %i.hi, align 8
  br label %.sink.split

bb.ar:                                            ; preds = %bb.ao
  store i32 1, ptr %i.ha, align 4
  br i1 %i.hh, label %bb.as, label %.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.hl = getelementptr i8, ptr %i.fy, i64 44     ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = add i32 %i.hm, 1                        ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4
  br label %.sink.split

bb.at:                                            ; preds = %bb.an
  %i.ho = lshr i8 %i.gg, 4
  %i.hp = and i8 %i.ho, 7
  %i.hq = getelementptr i8, ptr %i.fy, i64 28
  %i.hr = zext nneg i8 %i.hp to i64
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i32
  br label %.sink.split

bb.au:                                            ; preds = %bb.am
  %i.hv = load i32, ptr %i.ga, align 8
  %i.hw = sub i32 %i.gw, %i.hv
  br label %bb.bw

.sink.split:                                      ; preds = %bb.ar, %bb.ap, %bb.at, %bb.as, %bb.aq
  %.sink426 = phi i64 [ 4, %bb.aq ], [ 8, %bb.at ], [ 4, %bb.as ], [ 4, %bb.ap ], [ 4, %bb.ar ]
  %.sink424 = phi i32 [ %i.hk, %bb.aq ], [ %i.hu, %bb.at ], [ %i.hn, %bb.as ], [ 0, %bb.ap ], [ 0, %bb.ar ]
  %i.hx = getelementptr i8, ptr %i.ha, i64 %.sink426
  store i32 %.sink424, ptr %i.hx, align 4
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.al
  %.0323.ph = phi ptr [ %i.gy, %bb.al ], [ %i.ha, %.sink.split ] ; 7 uses
  %i.hy = getelementptr i8, ptr %i.ez, i64 52     ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4, !range !12, !noundef !13
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ib = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %i.gw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) ; 0 uses
  %i.ic = load i32, ptr %i.d, align 4
  %i.id = lshr i32 %i.ic, 1                       ; 4 uses
  store i32 %i.id, ptr %.0323.ph, align 4
  %i.ie = load i32, ptr @hf_epp_v1_ccm_nid, align 4
  %i.if = load i32, ptr %i.i, align 4             ; 3 uses
  %i.ig = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.gw, i32 noundef %i.if, i32 noundef %i.id, ptr noundef @.str.754, i32 noundef %i.id)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.ig, i32 noundef %i.id, i32 noundef %i.if)
  %i.ih = add i32 %i.if, %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %proto_item_set_generated.exit

bb.ax:                                            ; preds = %bb.av
  %i.ii = load i32, ptr @hf_epp_v1_ccm_nid, align 4
  %i.ij = load i32, ptr %.0323.ph, align 4        ; 2 uses
  %i.ik = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ii, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ij, ptr noundef @.str.754, i32 noundef %i.ij) ; 2 uses
  %.not.i375 = icmp eq ptr %i.ik, null
  br i1 %.not.i375, label %proto_item_set_generated.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.im, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.in = getelementptr i8, ptr %i.im, i64 28     ; 2 uses
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = or i32 %i.io, 2
  store i32 %i.ip, ptr %i.in, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.0318 = phi i32 [ %i.ih, %bb.aw ], [ %i.gw, %bb.ax ], [ %i.gw, %bb.ay ], [ %i.gw, %bb.az ] ; 6 uses
  %i.iq = load i8, ptr %i.hy, align 4, !range !12, !noundef !13
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %proto_item_set_generated.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call fastcc void @read_c2(ptr noundef %0, i32 noundef %.0318, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  %i.is = load i32, ptr @hf_epp_v1_ccm_slot, align 4
  %i.it = load i32, ptr %i.j, align 4             ; 3 uses
  %i.iu = load i16, ptr %i.e, align 2             ; 3 uses
  %i.iv = zext i16 %i.iu to i32                   ; 2 uses
  %i.iw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.is, ptr noundef %0, i32 noundef %.0318, i32 noundef %i.it, i32 noundef %i.iv, ptr noundef @.str.755, i32 noundef %i.iv)
  %i.ix = icmp sgt i32 %i.it, 1
  %i.iy = icmp ult i16 %i.iu, 128
  %or.cond.i = and i1 %i.ix, %i.iy
  br i1 %or.cond.i, label %bb.bb, label %validate_c2.exit

bb.bb:                                            ; preds = %bb.ba
  %i.iz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.iw, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %bb.ba, %bb.bb
  %i.ja = add i32 %i.it, %.0318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %proto_item_set_generated.exit378

bb.bc:                                            ; preds = %proto_item_set_generated.exit
  %i.jb = load i32, ptr @hf_epp_v1_ccm_slot, align 4
  %i.jc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.756, i32 noundef 0) ; 2 uses
  %.not.i376 = icmp eq ptr %i.jc, null
  br i1 %.not.i376, label %proto_item_set_generated.exit378, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jd = getelementptr i8, ptr %i.jc, i64 40
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  %.not5.i377 = icmp eq ptr %i.je, null
  br i1 %.not5.i377, label %proto_item_set_generated.exit378, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = getelementptr i8, ptr %i.je, i64 28     ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = or i32 %i.jg, 2
  store i32 %i.jh, ptr %i.jf, align 4
  br label %proto_item_set_generated.exit378

proto_item_set_generated.exit378:                 ; preds = %bb.be, %bb.bd, %bb.bc, %validate_c2.exit
  %i.ji = phi i16 [ %i.iu, %validate_c2.exit ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ] ; 2 uses
  %.1319 = phi i32 [ %i.ja, %validate_c2.exit ], [ %.0318, %bb.bc ], [ %.0318, %bb.bd ], [ %.0318, %bb.be ] ; 6 uses
  br i1 %.not341, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %proto_item_set_generated.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.jj = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.1319, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k) ; 0 uses
  %i.jk = load i32, ptr @hf_epp_v1_ccm_pn, align 4
  %i.jl = load i32, ptr %i.k, align 4             ; 3 uses
  %i.jm = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jk, ptr noundef %0, i32 noundef %.1319, i32 noundef %i.jl, i32 noundef %i.jm, ptr noundef @.str.757, i32 noundef %i.jm)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.jn, i32 noundef %i.jm, i32 noundef %i.jl)
  %i.jo = getelementptr i8, ptr %.0323.ph, i64 4
  store i32 %i.jm, ptr %i.jo, align 4
  %i.jp = add i32 %i.jl, %.1319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %proto_item_set_generated.exit381

bb.bg:                                            ; preds = %proto_item_set_generated.exit378
  %i.jq = load i32, ptr @hf_epp_v1_ccm_pn, align 4
  %i.jr = getelementptr i8, ptr %.0323.ph, i64 4
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.js, ptr noundef @.str.757, i32 noundef %i.js) ; 2 uses
  %.not.i379 = icmp eq ptr %i.jt, null
  br i1 %.not.i379, label %proto_item_set_generated.exit381, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ju = getelementptr i8, ptr %i.jt, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not5.i380 = icmp eq ptr %i.jv, null
  br i1 %.not5.i380, label %proto_item_set_generated.exit381, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jw = getelementptr i8, ptr %i.jv, i64 28     ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = or i32 %i.jx, 2
  store i32 %i.jy, ptr %i.jw, align 4
  br label %proto_item_set_generated.exit381

proto_item_set_generated.exit381:                 ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.2320 = phi i32 [ %i.jp, %bb.bf ], [ %.1319, %bb.bg ], [ %.1319, %bb.bh ], [ %.1319, %bb.bi ] ; 4 uses
  %i.jz = and i32 %i.gi, 8
  %.not346 = icmp eq i32 %i.jz, 0
  br i1 %.not346, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %proto_item_set_generated.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.ka = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.2320, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l) ; 0 uses
  %i.kb = load i32, ptr @hf_epp_v1_ccm_tnid, align 4
  %i.kc = load i32, ptr %i.l, align 4             ; 3 uses
  %i.kd = load i32, ptr %i.g, align 4             ; 3 uses
  %i.ke = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.kb, ptr noundef %0, i32 noundef %.2320, i32 noundef %i.kc, i32 noundef %i.kd, ptr noundef @.str.758, i32 noundef %i.kd)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.ke, i32 noundef %i.kd, i32 noundef %i.kc)
  %i.kf = add i32 %i.kc, %.2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %proto_item_set_generated.exit381
  %.3321 = phi i32 [ %i.kf, %bb.bj ], [ %.2320, %proto_item_set_generated.exit381 ] ; 4 uses
  %i.kg = and i32 %i.gi, 2
  %.not347 = icmp eq i32 %i.kg, 0
  br i1 %.not347, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.kh = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.3321, ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) ; 0 uses
  %i.ki = load i32, ptr @hf_epp_v1_ccm_nnid, align 4
  %i.kj = load i32, ptr %i.m, align 4             ; 3 uses
  %i.kk = load i32, ptr %i.h, align 4             ; 3 uses
  %i.kl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ki, ptr noundef %0, i32 noundef %.3321, i32 noundef %i.kj, i32 noundef %i.kk, ptr noundef @.str.759, i32 noundef %i.kk)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.kl, i32 noundef %i.kk, i32 noundef %i.kj)
  %i.km = add i32 %i.kj, %.3321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.4322 = phi i32 [ %i.km, %bb.bl ], [ %.3321, %bb.bk ] ; 9 uses
  %i.kn = load i32, ptr %i.ga, align 8
  %i.ko = sub i32 %.4322, %i.kn
  call void @proto_item_set_len(ptr noundef %i.gd, i32 noundef %i.ko)
  %i.kp = getelementptr i8, ptr %i.fb, i64 240    ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8            ; 2 uses
  %.not348 = icmp eq ptr %i.kq, null
  br i1 %.not348, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = getelementptr i8, ptr %1, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void @col_set_str(ptr noundef %i.ks, i32 noundef 25, ptr noundef nonnull %i.kq)
  %i.kt = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.gf, ptr noundef @ei_decode_failure) ; 0 uses
  %i.ku = load i32, ptr %i.ga, align 8
  %i.kv = sub i32 %.4322, %i.ku
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bm
  %i.kw = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %.4322)
  %i.kx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.4322) ; 6 uses
  %i.ky = getelementptr i8, ptr %1, i64 416
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = zext i32 %i.kx to i64
  %i.lb = call ptr @tvb_memdup(ptr noundef %i.kz, ptr noundef %0, i32 noundef %.4322, i64 noundef %i.la) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.lc = load i32, ptr %.0323.ph, align 4
  %i.ld = call i32 @llvm.bswap.i32(i32 %i.lc)
  store i32 %i.ld, ptr %i.n, align 4
  %i.le = lshr i16 %i.ji, 8
  %i.lf = trunc nuw i16 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.lf, ptr %i.lg, align 4
  %i.lh = trunc i16 %i.ji to i8
  %i.li = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i8 %i.lh, ptr %i.li, align 1
  %i.lj = getelementptr i8, ptr %.0323.ph, i64 4
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.lm = call i32 @llvm.bswap.i32(i32 %i.lk)
  store i32 %i.lm, ptr %i.ll, align 1
  call void @proto_item_set_end(ptr noundef %i.gf, ptr noundef %0, i32 noundef %.4322)
  %i.ln = getelementptr i8, ptr %i.fy, i64 37
  %i.lo = load i8, ptr %i.ln, align 1, !range !12, !noundef !13
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lq = getelementptr i8, ptr %i.fy, i64 38
  %i.lr = load i8, ptr %i.lq, align 2
  %i.ls = zext i8 %i.lr to i32
  %i.lt = sub i32 %i.kx, %i.ls
  %i.lu = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.4322, i32 noundef %i.lt)
  %i.lv = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.lu, ptr %i.lv, align 8
  %i.lw = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.lw, align 8
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  %i.lx = getelementptr i8, ptr %i.fb, i64 216    ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8            ; 2 uses
  %.not349 = icmp eq ptr %i.ly, null
  br i1 %.not349, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lz = getelementptr i8, ptr %i.fy, i64 38
  %i.ma = load i8, ptr %i.lz, align 2
  %i.mb = zext i8 %i.ma to i32
  %i.mc = sub i32 %i.kx, %i.mb                    ; 2 uses
  %i.md = call ptr @tvb_new_real_data(ptr noundef nonnull %i.ly, i32 noundef %i.mc, i32 noundef %i.mc) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.md)
  %i.me = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.md, ptr noundef @.str.760) ; 0 uses
  %i.mf = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.md, ptr %i.mf, align 8
  %i.mg = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.mg, align 8
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.mh = call fastcc i32 @decrypt(ptr noundef %i.fy, ptr noundef %.0323.ph, ptr noundef nonnull %i.n, ptr noundef %i.kw, i32 noundef %.4322, ptr noundef %i.lb, i32 noundef %i.kx)
  %.not350 = icmp eq i32 %i.mh, 0
  br i1 %.not350, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mi = call ptr @wmem_file_scope()
  %i.mj = getelementptr i8, ptr %i.fy, i64 38     ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 2
  %i.ml = zext i8 %i.mk to i32
  %i.mm = sub i32 %i.kx, %i.ml
  %i.mn = zext i32 %i.mm to i64                   ; 2 uses
  %i.mo = call noalias ptr @wmem_alloc0(ptr noundef %i.mi, i64 noundef %i.mn) #22 ; 3 uses
  %i.mp = load i8, ptr %i.mj, align 2
  %i.mq = zext i8 %i.mp to i32
  %i.mr = sub i32 %i.kx, %i.mq                    ; 3 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = call ptr @__memcpy_chk(ptr noundef %i.mo, ptr noundef %i.lb, i64 noundef %i.ms, i64 noundef %i.mn) #26, !alias.scope !88 ; 0 uses
  %i.mu = call ptr @tvb_new_real_data(ptr noundef %i.mo, i32 noundef %i.mr, i32 noundef %i.mr) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.mu)
  %i.mv = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mu, ptr noundef @.str.760) ; 0 uses
  store ptr %i.mo, ptr %i.lx, align 8
  %i.mw = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.mw, align 8
  %i.mx = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.mu, ptr %i.mx, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  store ptr @.str.761, ptr %i.kp, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.br, %bb.bu, %bb.bt, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  %i.my = load i32, ptr %i.ga, align 8
  %i.mz = sub i32 %.4322, %i.my
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bn, %bb.au, %bb.ak, %.critedge374
  %.10 = phi i32 [ %i.kv, %bb.bn ], [ %i.mz, %bb.bv ], [ %i.hw, %bb.au ], [ 0, %bb.ak ], [ 0, %.critedge374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.critedge371

.critedge371:                                     ; preds = %bb.k, %.critedge372, %bb.d, %bb.f, %bb.e, %bb.g, %bb.i, %bb.j, %.critedge365, %.critedge367, %.critedge, %bb.b, %bb.a, %bb.bw
  %.11 = phi i32 [ %.10, %bb.bw ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %.critedge ], [ %i.eu, %.critedge372 ], [ 2, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.critedge365 ], [ 0, %.critedge367 ]
  ret i32 %.11
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_register_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dof_sessions_destroy_cb(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dof_cipher_data_destroy(ptr noundef %0) #0 {
bb.a:
  tail call void @gcry_cipher_close(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @decrypt(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [11 x i8], align 1            ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  %i.c = alloca [16 x i8], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = icmp eq ptr %5, null
  %i.e = icmp eq i32 %6, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 38         ; 5 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = add i8 %i.g, -17
  %or.cond47 = icmp ult i8 %i.h, -13
  br i1 %or.cond47, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %i.j to i64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef nonnull %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ]
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, ptr noundef align 1 dereferenceable(11) %2, i64 11, i1 false)
  %i.s = load i8, ptr %i.f, align 2               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub i32 %6, %i.t
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.6.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.8.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.sroa.14.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.14.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.14.1, %bb.j ] ; 3 uses
  %.sroa.10.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.10.2, %bb.j ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.x = and i64 %indvars.iv, 15
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %.sroa.14.0, -1
  %i.aa = zext i1 %i.z to i8
  %spec.select = add i8 %.sroa.10.0, %i.aa        ; 2 uses
  %i.ab = add i8 %.sroa.14.0, 1                   ; 2 uses
  store i8 3, ptr %i.a, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx66, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, i64 11, i1 false)
  store i8 0, ptr %.sroa.6.0..sroa_idx67, align 4
  store i8 0, ptr %.sroa.8.0..sroa_idx69, align 1
  store i8 %spec.select, ptr %.sroa.10.0..sroa_idx71, align 2
  store i8 %i.ab, ptr %.sroa.14.0..sroa_idx73, align 1
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = call i32 @gcry_cipher_encrypt(ptr noundef %i.ac, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.14.1 = phi i8 [ %i.ab, %bb.i ], [ %.sroa.14.0, %bb.h ]
  %.sroa.10.2 = phi i8 [ %spec.select, %bb.i ], [ %.sroa.10.0, %bb.h ]
  %i.ae = and i64 %indvars.iv, 15
  %i.af = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %5, i64 %indvars.iv ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.ah, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = load i8, ptr %i.f, align 2              ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = sub i32 %6, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.h, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.039.lcssa = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.j ]
  %.lcssa49 = phi i8 [ %i.s, %bb.g ], [ %i.ak, %bb.j ]
  %i.ap = getelementptr i8, ptr %5, i64 %.039.lcssa
  %i.aq = zext i8 %.lcssa49 to i64
  %i.ar = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef %i.ap, i64 noundef %i.aq, i64 noundef 16) #26, !alias.scope !97 ; 0 uses
  store i8 3, ptr %i.a, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, i64 11, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.as = getelementptr i8, ptr %0, i64 8         ; 2 uses
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @gcry_cipher_encrypt(ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.av = load i8, ptr %i.f, align 2              ; 6 uses
  %i.aw = zext i8 %i.av to i32
  %.not58 = icmp eq i8 %i.av, 0
  br i1 %.not58, label %._crit_edge55, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %wide.trip.count = zext i8 %i.av to i64         ; 6 uses
  %min.iters.check = icmp ult i8 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph54.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i8 %i.av, 32
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <16 x i8>, ptr %i.a, align 16
  %wide.load81 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load82 = load <16 x i8>, ptr %i.b, align 16
  %wide.load83 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = xor <16 x i8> %wide.load82, %wide.load
  %i.bb = xor <16 x i8> %wide.load83, %wide.load81
  store <16 x i8> %i.ba, ptr %i.b, align 16
  store <16 x i8> %i.bb, ptr %i.az, align 16
  %i.bc = icmp eq i64 %n.vec, 32
  br i1 %i.bc, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bd = getelementptr i8, ptr %i.a, i64 32
  %i.be = getelementptr i8, ptr %i.a, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.bd, align 16
  %wide.load81.1 = load <16 x i8>, ptr %i.be, align 16
  %i.bf = getelementptr i8, ptr %i.b, i64 32      ; 2 uses
  %i.bg = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  %wide.load82.1 = load <16 x i8>, ptr %i.bf, align 16
  %wide.load83.1 = load <16 x i8>, ptr %i.bg, align 16
  %i.bh = xor <16 x i8> %wide.load82.1, %wide.load.1
  %i.bi = xor <16 x i8> %wide.load83.1, %wide.load81.1
  store <16 x i8> %i.bh, ptr %i.bf, align 16
  store <16 x i8> %i.bi, ptr %i.bg, align 16
  %i.bj = icmp eq i64 %n.vec, 64
  br i1 %i.bj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bk = getelementptr i8, ptr %i.a, i64 64
  %i.bl = getelementptr i8, ptr %i.a, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.bk, align 16
  %wide.load81.2 = load <16 x i8>, ptr %i.bl, align 16
  %i.bm = getelementptr i8, ptr %i.b, i64 64      ; 2 uses
  %i.bn = getelementptr i8, ptr %i.b, i64 80      ; 2 uses
  %wide.load82.2 = load <16 x i8>, ptr %i.bm, align 16
  %wide.load83.2 = load <16 x i8>, ptr %i.bn, align 16
  %i.bo = xor <16 x i8> %wide.load82.2, %wide.load.2
  %i.bp = xor <16 x i8> %wide.load83.2, %wide.load81.2
  store <16 x i8> %i.bo, ptr %i.bm, align 16
  store <16 x i8> %i.bp, ptr %i.bn, align 16
  %i.bq = icmp eq i64 %n.vec, 96
  br i1 %i.bq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.br = getelementptr i8, ptr %i.a, i64 96
  %i.bs = getelementptr i8, ptr %i.a, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.br, align 16
  %wide.load81.3 = load <16 x i8>, ptr %i.bs, align 16
  %i.bt = getelementptr i8, ptr %i.b, i64 96      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %wide.load82.3 = load <16 x i8>, ptr %i.bt, align 16
  %wide.load83.3 = load <16 x i8>, ptr %i.bu, align 16
  %i.bv = xor <16 x i8> %wide.load82.3, %wide.load.3
  %i.bw = xor <16 x i8> %wide.load83.3, %wide.load81.3
  store <16 x i8> %i.bv, ptr %i.bt, align 16
  store <16 x i8> %i.bw, ptr %i.bu, align 16
  %i.bx = icmp eq i64 %n.vec, 128
  br i1 %i.bx, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.by = getelementptr i8, ptr %i.a, i64 128
  %i.bz = getelementptr i8, ptr %i.a, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.by, align 16
  %wide.load81.4 = load <16 x i8>, ptr %i.bz, align 16
  %i.ca = getelementptr i8, ptr %i.b, i64 128     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.b, i64 144     ; 2 uses
  %wide.load82.4 = load <16 x i8>, ptr %i.ca, align 16
  %wide.load83.4 = load <16 x i8>, ptr %i.cb, align 16
  %i.cc = xor <16 x i8> %wide.load82.4, %wide.load.4
  %i.cd = xor <16 x i8> %wide.load83.4, %wide.load81.4
  store <16 x i8> %i.cc, ptr %i.ca, align 16
  store <16 x i8> %i.cd, ptr %i.cb, align 16
  %i.ce = icmp eq i64 %n.vec, 160
  br i1 %i.ce, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cf = getelementptr i8, ptr %i.a, i64 160
  %i.cg = getelementptr i8, ptr %i.a, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.cf, align 16
  %wide.load81.5 = load <16 x i8>, ptr %i.cg, align 16
  %i.ch = getelementptr i8, ptr %i.b, i64 160     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 176     ; 2 uses
  %wide.load82.5 = load <16 x i8>, ptr %i.ch, align 16
  %wide.load83.5 = load <16 x i8>, ptr %i.ci, align 16
  %i.cj = xor <16 x i8> %wide.load82.5, %wide.load.5
  %i.ck = xor <16 x i8> %wide.load83.5, %wide.load81.5
  store <16 x i8> %i.cj, ptr %i.ch, align 16
  store <16 x i8> %i.ck, ptr %i.ci, align 16
  %i.cl = icmp eq i64 %n.vec, 192
  br i1 %i.cl, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cm = getelementptr i8, ptr %i.a, i64 192
  %i.cn = getelementptr i8, ptr %i.a, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.cm, align 16
  %wide.load81.6 = load <16 x i8>, ptr %i.cn, align 16
  %i.co = getelementptr i8, ptr %i.b, i64 192     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 208     ; 2 uses
  %wide.load82.6 = load <16 x i8>, ptr %i.co, align 16
  %wide.load83.6 = load <16 x i8>, ptr %i.cp, align 16
  %i.cq = xor <16 x i8> %wide.load82.6, %wide.load.6
  %i.cr = xor <16 x i8> %wide.load83.6, %wide.load81.6
  store <16 x i8> %i.cq, ptr %i.co, align 16
  store <16 x i8> %i.cr, ptr %i.cp, align 16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.preheader, label %vec.epilog.ph, !prof !98

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr i8, ptr %i.a, i64 %index85
  %wide.load86 = load <4 x i8>, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.b, i64 %index85 ; 2 uses
  %wide.load87 = load <4 x i8>, ptr %i.ct, align 4
  %i.cu = xor <4 x i8> %wide.load87, %wide.load86
  store <4 x i8> %i.cu, ptr %i.ct, align 4
  %index.next88 = add nuw i64 %index85, 4         ; 2 uses
  %i.cv = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec84, %wide.trip.count
  br i1 %cmp.n89, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv61.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec84, %vec.epilog.middle.block ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %.lr.ph54 ], [ %indvars.iv61.ph, %.lr.ph54.preheader ] ; 3 uses
  %i.cw = getelementptr i8, ptr %i.a, i64 %indvars.iv61
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr i8, ptr %i.b, i64 %indvars.iv61 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = xor i8 %i.cz, %i.cx
  store i8 %i.da, ptr %i.cy, align 1
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.lr.ph54, !llvm.loop !94

._crit_edge55:                                    ; preds = %.lr.ph54, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.db = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.dc = sub i32 %6, %i.aw                       ; 4 uses
  %i.dd = zext i8 %i.av to i16
  %.lhs.trunc.i = add nsw i16 %i.dd, -2
  %i.de = sdiv i16 %.lhs.trunc.i, 2
  %.tr.i = trunc nsw i16 %i.de to i8
  %i.df = shl i8 %.tr.i, 3
  %i.dg = or i8 %i.df, 67
  store i8 %i.dg, ptr %i.c, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dh, ptr noundef readonly align 1 dereferenceable(11) %2, i64 noundef 11, i1 noundef false) #26
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.di, align 4
  %i.dj = lshr i32 %i.dc, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.dk, ptr %i.dl, align 2
  %i.dm = trunc i32 %i.dc to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.dp = lshr i32 %4, 8
  %i.dq = load i8, ptr %i.c, align 16
  %i.dr = trunc i32 %i.dp to i8
  %i.ds = xor i8 %i.dq, %i.dr
  store i8 %i.ds, ptr %i.c, align 16
  %i.dt = load i8, ptr %i.dh, align 1
  %i.du = trunc i32 %4 to i8
  %i.dv = xor i8 %i.dt, %i.du
  store i8 %i.dv, ptr %i.dh, align 1
  %i.dw = icmp sgt i32 %4, 0
  br i1 %i.dw, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge55
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.l, %._crit_edge55
  %i.dx = icmp sgt i32 %i.dc, 0
  br i1 %i.dx, label %.lr.ph44.preheader.i, label %generateMac.exit

.lr.ph44.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count48.i = zext nneg i32 %i.dc to i64
  br label %.lr.ph44.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.03940.i = phi i16 [ 2, %.lr.ph.preheader.i ], [ %i.eh, %bb.l ] ; 2 uses
  %i.dy = and i16 %.03940.i, 15                   ; 2 uses
  %i.dz = icmp eq i16 %i.dy, 0
  br i1 %i.dz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ea = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.eb = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext nneg i16 %i.dy to i64
  %i.ee = getelementptr i8, ptr %i.c, i64 %i.ed   ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = xor i8 %i.ef, %i.ec
  store i8 %i.eg, ptr %i.ee, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eh = add i16 %.03940.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !95

.lr.ph44.i:                                       ; preds = %bb.n, %.lr.ph44.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph44.preheader.i ], [ %indvars.iv.next46.i, %bb.n ] ; 4 uses
  %i.ei = and i64 %indvars.iv45.i, 15
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph44.i
  %i.ek = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph44.i
  %i.el = getelementptr i8, ptr %5, i64 %indvars.iv45.i
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i64 %indvars.iv45.i, 15
  %i.eo = getelementptr i8, ptr %i.c, i64 %i.en   ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = xor i8 %i.ep, %i.em
  store i8 %i.eq, ptr %i.eo, align 1
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count48.i
  br i1 %exitcond49.not.i, label %generateMac.exit, label %.lr.ph44.i, !llvm.loop !96

generateMac.exit:                                 ; preds = %bb.n, %.preheader.i
  %i.er = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.es = load i8, ptr %i.f, align 2
  %i.et = zext i8 %i.es to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.c, i64 %i.et)
  %.not46 = icmp eq i32 %bcmp, 0
  %. = zext i1 %.not46 to i32
  br label %bb.o

bb.o:                                             ; preds = %generateMac.exit, %bb.f, %bb.b, %bb.a
  %.040 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.f ], [ %., %generateMac.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %.040
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_oap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct._dof_proto_data, align 8    ; 6 uses
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca [20 x i8], align 16               ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 0, ptr %i.a, align 2
  %i.i = icmp eq ptr %3, null
  br i1 %i.i, label %.thread483, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread483, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @col_set_str(ptr noundef %i.n, i32 noundef 35, ptr noundef @.str.762)
  %i.o = load i32, ptr @proto_oap_1, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.q = load i32, ptr @ett_oap_1, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 43 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.s, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i16
  %i.v = shl nuw nsw i16 %i.u, 8
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.x = zext i8 %i.w to i16
  %i.y = or disjoint i16 %i.v, %i.x
  br label %read_c2.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i8 %i.s to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]   ; 21 uses
  %.0.ph.i = phi i16 [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = load i32, ptr @hf_2008_1_app_version, align 4
  %i.ab = zext nneg i16 %.0.ph.i to i32
  %i.ac = tail call ptr @proto_tree_add_uint(ptr noundef %i.r, i32 noundef %i.aa, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.ab) ; 9 uses
  %i.ad = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.ad
  br i1 %or.cond.i, label %bb.f, label %validate_c2.exit

bb.f:                                             ; preds = %read_c2.exit
  %i.ae = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.f
  %i.af = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ag = icmp eq i32 %.sink.i, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %validate_c2.exit
  %i.ah = load ptr, ptr %i.m, align 8
  tail call void @col_append_str(ptr noundef %i.ah, i32 noundef 25, ptr noundef @.str.763)
  %i.ai = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.r, ptr noundef @ei_implicit_no_op) ; 0 uses
  br label %.thread483

bb.h:                                             ; preds = %validate_c2.exit
  %i.aj = load i32, ptr @proto_oap_1, align 4
  %.val = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 %i.aj, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ak, align 8
  %i.al = call ptr @wmem_list_find_custom(ptr noundef %.val, ptr noundef nonnull %4, ptr noundef @p_compare) ; 2 uses
  %.not.i436 = icmp eq ptr %i.al, null
  br i1 %.not.i436, label %dof_packet_get_proto_data.exit.thread, label %dof_packet_get_proto_data.exit

dof_packet_get_proto_data.exit.thread:            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.i

dof_packet_get_proto_data.exit:                   ; preds = %bb.h
  %i.am = call ptr @wmem_list_frame_data(ptr noundef nonnull %i.al)
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dof_packet_get_proto_data.exit.thread, %dof_packet_get_proto_data.exit
  %i.ap = call ptr @wmem_file_scope()
  %i.aq = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ap, i64 noundef 8) #22
  %i.ar = load i32, ptr @proto_oap_1, align 4
  %i.as = call ptr @wmem_file_scope()
  %i.at = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.as, i64 noundef 16) #22 ; 3 uses
  store i32 %i.ar, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.aq, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = call ptr @wmem_list_insert_sorted(ptr noundef %i.av, ptr noundef %i.at, ptr noundef @p_compare) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %dof_packet_get_proto_data.exit, %bb.i
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.ay = and i8 %i.ax, 31
  %i.az = getelementptr i8, ptr %i.k, i64 48
  %i.ba = load i8, ptr %i.az, align 8, !range !12, !noundef !13
  %i.bb = xor i8 %i.ba, -1
  %i.bc = shl i8 %i.bb, 7
  %spec.select = or disjoint i8 %i.bc, %i.ay      ; 5 uses
  %i.bd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i) ; 10 uses
  %i.be = load ptr, ptr %i.m, align 8
  %i.bf = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext i8 %spec.select to i32             ; 8 uses
  %i.bi = call ptr @val_to_str(ptr noundef %i.bg, i32 noundef %i.bh, ptr noundef @oap_opcode_strings, ptr noundef @.str.741)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.be, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bj = call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef @.str.764, i64 noundef 20) ; 0 uses
  %i.bk = and i32 %i.bh, 16
  %.not425 = icmp eq i32 %i.bk, 0
  %.str.767..str.766 = select i1 %.not425, ptr @.str.767, ptr @.str.766
  %i.bl = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef %.str.767..str.766, i64 noundef 20) ; 0 uses
  %i.bm = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef @.str.765, i64 noundef 20) ; 0 uses
  %i.bn = and i32 %i.bh, 8
  %.not425.1 = icmp eq i32 %i.bn, 0
  %.str.766.sink = select i1 %.not425.1, ptr @.str.767, ptr @.str.766
  %i.bo = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef %.str.766.sink, i64 noundef 20) ; 0 uses
  %i.bp = and i32 %i.bh, 4
  %.not425.2 = icmp eq i32 %i.bp, 0
  %.str.766.sink529 = select i1 %.not425.2, ptr @.str.767, ptr @.str.766
  %i.bq = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef %.str.766.sink529, i64 noundef 20) ; 0 uses
  %i.br = and i32 %i.bh, 2
  %.not425.3 = icmp eq i32 %i.br, 0
  %.str.766.sink530 = select i1 %.not425.3, ptr @.str.767, ptr @.str.766
  %i.bs = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef %.str.766.sink530, i64 noundef 20) ; 0 uses
  %i.bt = and i32 %i.bh, 1
  %.not425.4 = icmp eq i32 %i.bt, 0
  %.str.767.sink531 = select i1 %.not425.4, ptr @.str.767, ptr @.str.766
  %i.bu = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef %.str.767.sink531, i64 noundef 20) ; 0 uses
  %i.bv = load i32, ptr @hf_oap_1_opcode, align 4
  %i.bw = and i32 %i.bh, 31                       ; 2 uses
  %i.bx = load ptr, ptr %i.bf, align 8
  %i.by = call ptr @val_to_str(ptr noundef %i.bx, i32 noundef %i.bh, ptr noundef @oap_opcode_strings, ptr noundef @.str.741)
  %i.bz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.r, i32 noundef %i.bv, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef %i.bw, ptr noundef @.str.768, ptr noundef nonnull %i.b, ptr noundef %i.by, i32 noundef %i.bw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  switch i8 %spec.select, label %.thread483 [
    i8 28, label %bb.k
    i8 4, label %bb.k
    i8 3, label %bb.k
    i8 10, label %bb.k
    i8 12, label %bb.k
    i8 25, label %bb.k
    i8 20, label %bb.k
    i8 24, label %bb.k
    i8 30, label %bb.k
    i8 5, label %bb.m
    i8 -118, label %bb.p
    i8 -116, label %bb.p
    i8 -103, label %bb.p
    i8 -108, label %bb.p
    i8 -104, label %bb.p
    i8 2, label %bb.t
    i8 14, label %bb.t
    i8 16, label %bb.t
    i8 22, label %bb.t
    i8 -119, label %.thread475
    i8 6, label %bb.u
    i8 -122, label %bb.u
    i8 -114, label %bb.u
  ]
end_hunk_3
begin_hunk_4_@dissect_oap:bb.a
bb.ai:                                            ; preds = %validate_c2.exit442
  %i.fc = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %i.ex)
  br label %.thread483

bb.aj:                                            ; preds = %bb.ag
  %i.fd = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

bb.ak:                                            ; preds = %bb.v
  %i.fe = load i32, ptr @hf_oap_1_update_sequence, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fe, ptr noundef %0, i32 noundef %.1390, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fg = add i32 %.1390, 2
  br label %.thread483

bb.al:                                            ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.fh = lshr i8 %i.bd, 6                        ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 3
  %spec.store.select10 = select i1 %i.fi, i8 4, i8 %i.fh ; 2 uses
  %.not420 = icmp eq i8 %spec.store.select10, 0
  br i1 %.not420, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr i8, ptr %3, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = call fastcc i32 @oap_1_tree_add_alias(ptr nonnull %i.fk, ptr noundef %i.k, ptr noundef %i.r, ptr noundef %0, ptr noundef %1, i32 noundef %.1390, i8 noundef zeroext %spec.store.select10, i8 noundef zeroext 1)
  br label %.thread483

bb.ao:                                            ; preds = %bb.al
  %i.fn = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %.1390)
  br label %.thread483

bb.ap:                                            ; preds = %bb.am
  %i.fo = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

.thread:                                          ; preds = %bb.o, %bb.n, %bb.v
  %.1390474 = phi i32 [ %.1390, %bb.v ], [ %i.cl, %bb.o ], [ %i.ck, %bb.n ]
  %i.fp = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %.1390474)
  br label %.thread483

bb.aq:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.fq = lshr i8 %i.bd, 6                        ; 2 uses
  %i.fr = icmp eq i8 %i.fq, 3
  %spec.store.select11 = select i1 %i.fr, i8 4, i8 %i.fq ; 2 uses
  %i.fs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1390) ; 3 uses
  %.not.i443 = icmp slt i8 %i.fs, 0               ; 2 uses
  br i1 %.not.i443, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ft = add i32 %.1390, 1
  %i.fu = and i8 %i.fs, 127
  %i.fv = zext nneg i8 %i.fu to i16
  %i.fw = shl nuw nsw i16 %i.fv, 8
  %i.fx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ft)
  %i.fy = zext i8 %i.fx to i16
  %i.fz = or disjoint i16 %i.fw, %i.fy
  br label %read_c2.exit448

bb.as:                                            ; preds = %bb.aq
  %i.ga = zext nneg i8 %i.fs to i16
  br label %read_c2.exit448

read_c2.exit448:                                  ; preds = %bb.ar, %bb.as
  %.sink.i444 = phi i32 [ 2, %bb.ar ], [ 1, %bb.as ] ; 2 uses
  %.0.ph.i446 = phi i16 [ %i.fz, %bb.ar ], [ %i.ga, %bb.as ] ; 2 uses
  %i.gb = load i32, ptr @hf_oap_1_itemid, align 4
  %i.gc = zext nneg i16 %.0.ph.i446 to i32        ; 2 uses
  %i.gd = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.r, i32 noundef %i.gb, ptr noundef %0, i32 noundef %.1390, i32 noundef %.sink.i444, i32 noundef %i.gc, ptr noundef @.str.769, i32 noundef %i.gc)
  %i.ge = icmp samesign ult i16 %.0.ph.i446, 128
  %or.cond.i449 = and i1 %.not.i443, %i.ge
  br i1 %or.cond.i449, label %bb.at, label %validate_c2.exit450

bb.at:                                            ; preds = %read_c2.exit448
  %i.gf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.gd, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit450

validate_c2.exit450:                              ; preds = %read_c2.exit448, %bb.at
  %i.gg = add i32 %.sink.i444, %.1390             ; 3 uses
  %.not419 = icmp eq i8 %spec.store.select11, 0
  br i1 %.not419, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %validate_c2.exit450
  %i.gh = getelementptr i8, ptr %3, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = call fastcc i32 @oap_1_tree_add_alias(ptr nonnull %i.gi, ptr noundef %i.k, ptr noundef %i.r, ptr noundef %0, ptr noundef %1, i32 noundef %i.gg, i8 noundef zeroext %spec.store.select11, i8 noundef zeroext 1)
  br label %bb.ax

bb.aw:                                            ; preds = %validate_c2.exit450
  %i.gl = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %i.gg)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.8 = phi i32 [ %i.gk, %bb.av ], [ %i.gl, %bb.aw ] ; 4 uses
  switch i8 %spec.select, label %.thread483 [
    i8 20, label %bb.ay
    i8 12, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %i.gm = load i32, ptr @hf_oap_1_value_list, align 4
  %i.gn = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.gm, ptr noundef %0, i32 noundef %.8, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.go = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.gp = add i32 %i.go, %.8
  br label %.thread483

bb.az:                                            ; preds = %bb.au
  %i.gq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

bb.ba:                                            ; preds = %bb.v
  %i.gr = lshr i8 %i.bd, 6                        ; 2 uses
  %i.gs = icmp eq i8 %i.gr, 3
  %spec.store.select15 = select i1 %i.gs, i8 4, i8 %i.gr ; 2 uses
  %.not418 = icmp eq i8 %spec.store.select15, 0
  br i1 %.not418, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr i8, ptr %3, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gw = call fastcc i32 @oap_1_tree_add_alias(ptr nonnull %i.gu, ptr noundef %i.k, ptr noundef %i.r, ptr noundef %0, ptr noundef %1, i32 noundef %.1390, i8 noundef zeroext %spec.store.select15, i8 noundef zeroext 1)
  br label %.thread497

bb.bd:                                            ; preds = %bb.ba
  %i.gx = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %.1390)
  br label %.thread497

.thread497:                                       ; preds = %bb.bc, %bb.bd
  %.11 = phi i32 [ %i.gw, %bb.bc ], [ %i.gx, %bb.bd ]
  %i.gy = call fastcc i32 @oap_1_tree_add_interface(ptr noundef %i.r, ptr noundef %0, i32 noundef %.11)
  %i.gz = load i32, ptr @hf_oap_1_objectid, align 4
  %i.ha = load i32, ptr @ett_oap_1_objectid, align 4
  %i.hb = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2009_11_type_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.r, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %i.ha, ptr noundef null)
  br label %.thread483

bb.be:                                            ; preds = %bb.bb
  %i.hc = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

bb.bf:                                            ; preds = %bb.v
  %i.hd = lshr i8 %i.bd, 6                        ; 2 uses
  %i.he = icmp eq i8 %i.hd, 3
  %spec.store.select16 = select i1 %i.he, i8 4, i8 %i.hd ; 2 uses
  %i.hf = zext nneg i8 %spec.store.select16 to i32 ; 3 uses
  %i.hg = icmp eq i8 %spec.store.select16, 0
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_malformed, ptr noundef @.str.771) ; 0 uses
  br label %.thread483

bb.bh:                                            ; preds = %bb.bf
  %i.hi = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bi, label %oap_1_tree_add_alias.exit

bb.bi:                                            ; preds = %bb.bh
  %i.hl = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

oap_1_tree_add_alias.exit:                        ; preds = %bb.bh
  %i.hm = load i32, ptr @hf_oap_1_alias, align 4
  %i.hn = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.hm, ptr noundef %0, i32 noundef %.1390, i32 noundef %i.hf, i32 noundef 0) ; 0 uses
  %i.ho = add i32 %.1390, %i.hf                   ; 3 uses
  %i.hp = call fastcc i32 @oap_1_tree_add_interface(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.ho) ; 4 uses
  %i.hq = load i32, ptr @hf_oap_1_objectid, align 4
  %i.hr = load i32, ptr @ett_oap_1_objectid, align 4
  %i.hs = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2009_11_type_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.r, i32 noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef null) ; 3 uses
  %i.ht = getelementptr i8, ptr %i.k, i64 24
  %i.hu = load i8, ptr %i.ht, align 8, !range !12, !noundef !13
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.thread483, label %bb.bj

bb.bj:                                            ; preds = %oap_1_tree_add_alias.exit
  %i.hw = call ptr @wmem_file_scope()
  %i.hx = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.hw, i64 noundef 32) #22 ; 6 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bk
  %.0387514 = phi i32 [ 0, %bb.bj ], [ %i.id, %bb.bk ] ; 2 uses
  %.0388513 = phi i32 [ 0, %bb.bj ], [ %i.ic, %bb.bk ]
  %i.hy = shl i32 %.0388513, 8
  %i.hz = add i32 %.0387514, %.1390
  %i.ia = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hz)
  %i.ib = zext i8 %i.ia to i32
  %i.ic = or disjoint i32 %i.hy, %i.ib            ; 2 uses
  %i.id = add nuw nsw i32 %.0387514, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.id, %i.hf
  br i1 %exitcond.not, label %bb.bl, label %bb.bk, !llvm.loop !99

bb.bl:                                            ; preds = %bb.bk
  %i.ie = sub i32 %i.hp, %i.ho                    ; 2 uses
  %i.if = trunc i32 %i.ie to i16
  %i.ig = getelementptr i8, ptr %i.hx, i64 24
  store i16 %i.if, ptr %i.ig, align 8
  %i.ih = call ptr @wmem_file_scope()
  %.mask = and i32 %i.ie, 65535
  %i.ii = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ij = call noalias ptr @wmem_alloc0(ptr noundef %i.ih, i64 noundef %i.ii) #22 ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hx, i64 16
  store ptr %i.ij, ptr %i.ik, align 8
  %i.il = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.ij, i32 noundef %i.ho, i64 noundef %i.ii) ; 0 uses
  %i.im = sub i32 %i.hs, %i.hp                    ; 2 uses
  %i.in = trunc i32 %i.im to i16
  %i.io = getelementptr i8, ptr %i.hx, i64 8
  store i16 %i.in, ptr %i.io, align 8
  %i.ip = call ptr @wmem_file_scope()
  %.mask528 = and i32 %i.im, 65535
  %i.iq = zext nneg i32 %.mask528 to i64          ; 2 uses
  %i.ir = call noalias ptr @wmem_alloc0(ptr noundef %i.ip, i64 noundef %i.iq) #22 ; 2 uses
  store ptr %i.ir, ptr %i.hx, align 8
  %i.is = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.ir, i32 noundef %i.hp, i64 noundef %i.iq) ; 0 uses
  %i.it = getelementptr i8, ptr %1, i64 80
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = getelementptr i8, ptr %i.hx, i64 28
  store i32 %i.iv, ptr %i.iw, align 4
  %.val434 = load ptr, ptr %i.hi, align 8
  %.val435 = load ptr, ptr %i.j, align 8
  call fastcc void @oap_1_define_alias(ptr %.val434, ptr %.val435, i32 noundef %i.ic, ptr noundef %i.hx)
  br label %.thread483

bb.bm:                                            ; preds = %bb.v, %bb.v
  %i.ix = lshr i8 %i.bd, 6                        ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 3
  %spec.store.select17 = select i1 %i.iy, i8 4, i8 %i.ix ; 2 uses
  %i.iz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1390) ; 3 uses
  %.not.i452 = icmp slt i8 %i.iz, 0               ; 2 uses
  br i1 %.not.i452, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ja = add i32 %.1390, 1
  %i.jb = and i8 %i.iz, 127
  %i.jc = zext nneg i8 %i.jb to i16
  %i.jd = shl nuw nsw i16 %i.jc, 8
  %i.je = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ja)
  %i.jf = zext i8 %i.je to i16
  %i.jg = or disjoint i16 %i.jd, %i.jf
  br label %read_c2.exit457

bb.bo:                                            ; preds = %bb.bm
  %i.jh = zext nneg i8 %i.iz to i16
  br label %read_c2.exit457

read_c2.exit457:                                  ; preds = %bb.bn, %bb.bo
  %.sink.i453 = phi i32 [ 2, %bb.bn ], [ 1, %bb.bo ] ; 2 uses
  %.0.ph.i455 = phi i16 [ %i.jg, %bb.bn ], [ %i.jh, %bb.bo ] ; 2 uses
  %i.ji = load i32, ptr @hf_oap_1_itemid, align 4
  %i.jj = zext nneg i16 %.0.ph.i455 to i32        ; 2 uses
  %i.jk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.r, i32 noundef %i.ji, ptr noundef %0, i32 noundef %.1390, i32 noundef %.sink.i453, i32 noundef %i.jj, ptr noundef @.str.769, i32 noundef %i.jj)
  %i.jl = icmp samesign ult i16 %.0.ph.i455, 128
  %or.cond.i458 = and i1 %.not.i452, %i.jl
  br i1 %or.cond.i458, label %bb.bp, label %validate_c2.exit459

bb.bp:                                            ; preds = %read_c2.exit457
  %i.jm = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.jk, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit459

validate_c2.exit459:                              ; preds = %read_c2.exit457, %bb.bp
  %i.jn = add i32 %.sink.i453, %.1390             ; 3 uses
  %.not417 = icmp eq i8 %spec.store.select17, 0
  br i1 %.not417, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %validate_c2.exit459
  %i.jo = getelementptr i8, ptr %3, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = call fastcc i32 @oap_1_tree_add_alias(ptr nonnull %i.jp, ptr noundef %i.k, ptr noundef %i.r, ptr noundef %0, ptr noundef %1, i32 noundef %i.jn, i8 noundef zeroext %spec.store.select17, i8 noundef zeroext 1)
  br label %.thread506

bb.bs:                                            ; preds = %validate_c2.exit459
  %i.js = call fastcc i32 @oap_1_tree_add_binding(ptr noundef %i.r, ptr noundef %1, ptr noundef %0, i32 noundef %i.jn)
  br label %.thread506

.thread506:                                       ; preds = %bb.br, %bb.bs
  %.14 = phi i32 [ %i.jr, %bb.br ], [ %i.js, %bb.bs ] ; 2 uses
  %i.jt = load i32, ptr @hf_oap_1_update_sequence, align 4
  %i.ju = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.jt, ptr noundef %0, i32 noundef %.14, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jv = add i32 %.14, 2                         ; 3 uses
  %i.jw = load i32, ptr @hf_oap_1_value_list, align 4
  %i.jx = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.jw, ptr noundef %0, i32 noundef %i.jv, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.jy = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.jv)
  %i.jz = add i32 %i.jy, %i.jv
  br label %.thread483

bb.bt:                                            ; preds = %bb.bq
  %i.ka = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ac, ptr noundef @ei_oap_no_session) ; 0 uses
  br label %.thread483

bb.bu:                                            ; preds = %.thread475, %bb.v
  %.1390477 = phi i32 [ %i.dl, %.thread475 ], [ %.1390, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call fastcc void @read_c2(ptr noundef %0, i32 noundef %.1390477, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g)
  %i.kb = load i32, ptr %i.g, align 4
  %i.kc = add i32 %i.kb, %.1390477                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.kd = load i32, ptr @hf_oap_1_value_list, align 4
  %i.ke = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.kd, ptr noundef %0, i32 noundef %i.kc, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.kf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.kc)
  %i.kg = add i32 %i.kf, %i.kc
  br label %.thread483

.thread483:                                       ; preds = %oap_1_tree_add_alias.exit, %bb.bl, %bb.ay, %bb.ax, %bb.an, %bb.ao, %bb.ah, %bb.ai, %bb.ak, %.thread, %bb.bu, %bb.v, %.thread478, %.thread497, %.thread506, %bb.bt, %bb.bg, %bb.bi, %bb.be, %bb.az, %bb.ap, %bb.aj, %bb.ad, %bb.j, %bb.b, %bb.a, %bb.g
  %.7 = phi i32 [ %i.jn, %bb.bt ], [ 0, %bb.a ], [ %.sink.i, %bb.g ], [ 0, %bb.b ], [ %.1390, %bb.bi ], [ %i.dx, %bb.ad ], [ %i.ex, %bb.aj ], [ %.1390, %bb.ap ], [ %i.gg, %bb.az ], [ %.1390, %bb.be ], [ %.sink.i, %bb.j ], [ %.1390, %bb.bg ], [ %.1390, %bb.v ], [ %i.el, %.thread478 ], [ %i.kg, %bb.bu ], [ %i.fg, %bb.ak ], [ %i.fb, %bb.ah ], [ %i.fp, %.thread ], [ %i.fm, %bb.an ], [ %i.hb, %.thread497 ], [ %i.gp, %bb.ay ], [ %i.jz, %.thread506 ], [ %i.fc, %bb.ai ], [ %i.fn, %bb.ao ], [ %.8, %bb.ax ], [ %i.hs, %bb.bl ], [ %i.hs, %oap_1_tree_add_alias.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.7
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @dissect_oap_dsp(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_oap_1_dsp_option, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dof_packet_add_proto_data(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.a, i64 noundef 16) #22 ; 3 uses
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call ptr @wmem_list_insert_sorted(ptr noundef %i.d, ptr noundef %i.b, ptr noundef @p_compare) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @oap_1_tree_add_cmdcontrol(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3)
  %i.c = load i32, ptr @hf_oap_1_cmdcontrol, align 4
  %i.d = load i32, ptr @ett_oap_1_cmdcontrol_flags, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.c, i32 noundef %i.d, ptr noundef @bitmask_oap_1_cmdcontrol_flags, i32 noundef 0)
  %i.f = load i32, ptr @ett_oap_1_cmdcontrol, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 10 uses
  %i.h = load i32, ptr @hf_oap_1_cmdcontrol_cache_flag, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_oap_1_cmdcontrol_verbosity_flag, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_oap_1_cmdcontrol_noexecute_flag, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_oap_1_cmdcontrol_ack_flag, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_oap_1_cmdcontrol_delay_flag, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.p, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_oap_1_cmdcontrol_heuristic_flag, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.r, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add i32 %3, 1                            ; 4 uses
  %i.u = zext i8 %i.b to i32                      ; 3 uses
  %i.v = and i32 %i.u, 1
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.t) ; 3 uses
  %.not.i = icmp slt i8 %i.w, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = add i32 %3, 2
  %i.y = and i8 %i.w, 127
  %i.z = zext nneg i8 %i.y to i16
  %i.aa = shl nuw nsw i16 %i.z, 8
  %i.ab = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.x)
  %i.ac = zext i8 %i.ab to i16
  %i.ad = or disjoint i16 %i.aa, %i.ac
  br label %read_c2.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = zext nneg i8 %i.w to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]   ; 2 uses
  %.0.ph.i = phi i16 [ %i.ad, %bb.c ], [ %i.ae, %bb.d ] ; 2 uses
  %i.af = load i32, ptr @hf_oap_1_cmdcontrol_heuristic, align 4
  %i.ag = zext nneg i16 %.0.ph.i to i32           ; 2 uses
  %i.ah = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.g, i32 noundef %i.af, ptr noundef %2, i32 noundef %i.t, i32 noundef %.sink.i, i32 noundef %i.ag, ptr noundef @.str.772, i32 noundef %i.ag)
  %i.ai = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.ai
  br i1 %or.cond.i, label %bb.e, label %validate_c2.exit

bb.e:                                             ; preds = %read_c2.exit
  %i.aj = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %i.ah, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.e
  %i.ak = add i32 %.sink.i, %i.t
  br label %bb.f

bb.f:                                             ; preds = %validate_c2.exit, %bb.a
  %.0 = phi i32 [ %i.ak, %validate_c2.exit ], [ %i.t, %bb.a ] ; 3 uses
  %i.al = and i32 %i.u, 4
  %.not55 = icmp eq i32 %i.al, 0
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.am = load i32, ptr @hf_oap_1_cmdcontrol_ackcnt, align 4
  %i.an = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.g, i32 noundef %i.am, ptr noundef %2, i32 noundef %.0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ao = add i32 %.0, 1                          ; 2 uses
  %i.ap = load i8, ptr %i.a, align 1
  %.not75 = icmp eq i8 %i.ap, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.174 = phi i32 [ %i.ax, %.lr.ph ], [ %i.ao, %bb.g ] ; 3 uses
  %.05473 = phi i8 [ %i.ay, %.lr.ph ], [ 0, %bb.g ]
  %i.aq = load i32, ptr @hf_oap_1_cmdcontrol_ack, align 4
  %i.ar = load i32, ptr @ett_oap_1_cmdcontrol_ack, align 4
  %i.as = call ptr @tvb_new_subset_remaining(ptr noundef %2, i32 noundef %.174)
  %i.at = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.aq, ptr noundef %2, i32 noundef %.174, i32 noundef -1, i32 noundef 0)
  %i.au = call ptr @proto_item_add_subtree(ptr noundef %i.at, i32 noundef %i.ar) ; 2 uses
  %i.av = call i32 @dissect_2009_11_type_4(ptr noundef %i.as, ptr noundef %0, ptr noundef %i.au, ptr poison), !inline_history !4 ; 2 uses
  %i.aw = call ptr @proto_tree_get_parent(ptr noundef %i.au)
  call void @proto_item_set_len(ptr noundef %i.aw, i32 noundef %i.av)
  %i.ax = add i32 %i.av, %.174                    ; 2 uses
  %i.ay = add nuw i8 %.05473, 1                   ; 2 uses
  %i.az = load i8, ptr %i.a, align 1
  %i.ba = icmp ult i8 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1.lcssa = phi i32 [ %i.ao, %bb.g ], [ %i.ax, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %.2 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.0, %bb.f ] ; 5 uses
  %i.bb = and i32 %i.u, 64
  %.not56 = icmp eq i32 %i.bb, 0
  br i1 %.not56, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.2) ; 3 uses
  %.not.i57 = icmp slt i8 %i.bc, 0                ; 2 uses
  br i1 %.not.i57, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = add i32 %.2, 1
  %i.be = and i8 %i.bc, 127
  %i.bf = zext nneg i8 %i.be to i16
  %i.bg = shl nuw nsw i16 %i.bf, 8
  %i.bh = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.bd)
  %i.bi = zext i8 %i.bh to i16
  %i.bj = or disjoint i16 %i.bg, %i.bi
  br label %read_c2.exit61

bb.k:                                             ; preds = %bb.i
  %i.bk = zext nneg i8 %i.bc to i16
  br label %read_c2.exit61

read_c2.exit61:                                   ; preds = %bb.j, %bb.k
  %.sink.i58 = phi i32 [ 2, %bb.j ], [ 1, %bb.k ] ; 2 uses
  %.0.ph.i60 = phi i16 [ %i.bj, %bb.j ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = load i32, ptr @hf_oap_1_cmdcontrol_cache, align 4
  %i.bm = zext nneg i16 %.0.ph.i60 to i32         ; 2 uses
  %i.bn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.g, i32 noundef %i.bl, ptr noundef %2, i32 noundef %.2, i32 noundef %.sink.i58, i32 noundef %i.bm, ptr noundef @.str.773, i32 noundef %i.bm)
  %i.bo = icmp samesign ult i16 %.0.ph.i60, 128
  %or.cond.i62 = and i1 %.not.i57, %i.bo
  br i1 %or.cond.i62, label %bb.l, label %validate_c2.exit63

bb.l:                                             ; preds = %read_c2.exit61
  %i.bp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %i.bn, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit63

validate_c2.exit63:                               ; preds = %read_c2.exit61, %bb.l
  %i.bq = add i32 %.sink.i58, %.2
  br label %bb.m

bb.m:                                             ; preds = %validate_c2.exit63, %bb.h
  %.3 = phi i32 [ %i.bq, %validate_c2.exit63 ], [ %.2, %bb.h ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @oap_1_tree_add_alias(ptr nofree readonly captures(address_is_null) %.16.val, ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext range(i8 0, 5) %5, i8 noundef zeroext range(i8 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct._alias_key, align 4         ; 6 uses
  %i.b = zext nneg i8 %5 to i32                   ; 3 uses
  %i.c = icmp eq i8 %5, 0
  %i.d = icmp eq ptr %.16.val, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_oap_1_alias, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %2, i32 noundef %4, i32 noundef %i.b, i32 noundef 0)
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %bb.l, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i32 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0431 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.g = shl i32 %.02, 8
  %i.h = add i32 %.0431, %4
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.h)
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 2 uses
  %i.l = add nuw nsw i32 %.0431, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = load i32, ptr %.16.val, align 8
  store i32 %i.m, ptr %7, align 4
  %i.n = getelementptr i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.k, ptr %i.q, align 4
  %i.r = load ptr, ptr @oap_1_alias_to_binding, align 8
  %i.s = call ptr @g_hash_table_lookup(ptr noundef %i.r, ptr noundef nonnull %7) ; 6 uses
  %.not48 = icmp eq ptr %i.s, null
  br i1 %.not48, label %bb.k, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = load i32, ptr @ett_oap_1_alias, align 4
  %i.u = call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.t)
  %i.v = load i32, ptr @hf_oap_1_interfaceid, align 4
  %i.w = getelementptr i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 9 uses
  %i.y = getelementptr i8, ptr %3, i64 416        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.s, i64 24
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = add nuw nsw i64 %i.ad, 8
  %i.af = call noalias ptr @wmem_alloc(ptr noundef %i.z, i64 noundef %i.ae) #22 ; 26 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %dof_iid_create_standard_string.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.x, align 1              ; 3 uses
  %i.ah = and i8 %i.ag, 3                         ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 3                     ; 2 uses
  %narrow.i.i = select i1 %i.ai, i8 4, i8 %i.ah   ; 3 uses
  store i8 91, ptr %i.af, align 1
  %i.aj = getelementptr i8, ptr %i.af, i64 1
  store i8 123, ptr %i.aj, align 1
  %i.ak = lshr i8 %i.ag, 6
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr i8, ptr @OALString_HexChar, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.af, i64 2
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = lshr i8 %i.ag, 2
  %i.aq = and i8 %i.ap, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr i8, ptr @OALString_HexChar, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr i8, ptr %i.af, i64 3
  store i8 %i.at, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %i.af, i64 4
  store i8 125, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %i.af, i64 5
  store i8 58, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.af, i64 6
  store i8 123, ptr %i.ax, align 1
  %.not.i.i = icmp eq i8 %narrow.i.i, 0
  br i1 %.not.i.i, label %InterfaceID_ToString.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ay = getelementptr i8, ptr %i.x, i64 1
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = lshr i8 %i.az, 4
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr i8, ptr @OALString_HexChar, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr i8, ptr %i.af, i64 7
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = and i8 %i.az, 15
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr i8, ptr @OALString_HexChar, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %i.af, i64 8
  store i8 %i.bi, ptr %i.bj, align 1
  %exitcond.not.i.i = icmp eq i8 %narrow.i.i, 1
  br i1 %exitcond.not.i.i, label %InterfaceID_ToString.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.bk = getelementptr i8, ptr %i.x, i64 2
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr @OALString_HexChar, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr i8, ptr %i.af, i64 9
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = and i8 %i.bl, 15
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr i8, ptr @OALString_HexChar, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %i.af, i64 10
  store i8 %i.bu, ptr %i.bv, align 1
  %exitcond.not.i.i.1 = icmp eq i8 %narrow.i.i, 2
  br i1 %exitcond.not.i.i.1, label %InterfaceID_ToString.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.bw = getelementptr i8, ptr %i.x, i64 3
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.by = lshr i8 %i.bx, 4
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr i8, ptr @OALString_HexChar, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr i8, ptr %i.af, i64 11
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = and i8 %i.bx, 15
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr i8, ptr @OALString_HexChar, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr i8, ptr %i.af, i64 12
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %i.x, i64 4
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %i.ck = lshr i8 %i.cj, 4
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = getelementptr i8, ptr @OALString_HexChar, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr i8, ptr %i.af, i64 13
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = and i8 %i.cj, 15
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr @OALString_HexChar, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr i8, ptr %i.af, i64 14
  store i8 %i.cs, ptr %i.ct, align 1
  br i1 %i.ai, label %InterfaceID_ToString.exit.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.2
  %i.cu = getelementptr i8, ptr %i.x, i64 5
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = lshr i8 %i.cv, 4
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = getelementptr i8, ptr @OALString_HexChar, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr i8, ptr %i.af, i64 15
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = and i8 %i.cv, 15
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr i8, ptr @OALString_HexChar, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr i8, ptr %i.af, i64 16
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = getelementptr i8, ptr %i.x, i64 6
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = lshr i8 %i.dh, 4
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = getelementptr i8, ptr @OALString_HexChar, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr i8, ptr %i.af, i64 17
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = and i8 %i.dh, 15
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = getelementptr i8, ptr @OALString_HexChar, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr i8, ptr %i.af, i64 18
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = getelementptr i8, ptr %i.x, i64 7
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %i.du = lshr i8 %i.dt, 4
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = getelementptr i8, ptr @OALString_HexChar, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr i8, ptr %i.af, i64 19
  store i8 %i.dx, ptr %i.dy, align 1
  %i.dz = and i8 %i.dt, 15
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = getelementptr i8, ptr @OALString_HexChar, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr i8, ptr %i.af, i64 20
  store i8 %i.ec, ptr %i.ed, align 1
  br label %InterfaceID_ToString.exit.i

InterfaceID_ToString.exit.i:                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.4, %bb.d
  %.033.lcssa.i.i = phi i32 [ 7, %bb.d ], [ 9, %.lr.ph.i.i ], [ 11, %.lr.ph.i.i.1 ], [ 21, %.lr.ph.i.i.4 ], [ 15, %.lr.ph.i.i.2 ] ; 3 uses
  %i.ee = add i32 %.033.lcssa.i.i, 1
  %i.ef = zext i32 %.033.lcssa.i.i to i64
  %i.eg = getelementptr i8, ptr %i.af, i64 %i.ef
  store i8 125, ptr %i.eg, align 1
  %i.eh = add i32 %.033.lcssa.i.i, 2
  %i.ei = zext i32 %i.ee to i64
  %i.ej = getelementptr i8, ptr %i.af, i64 %i.ei
  store i8 93, ptr %i.ej, align 1
  %i.ek = zext i32 %i.eh to i64
  %i.el = getelementptr i8, ptr %i.af, i64 %i.ek
  store i8 0, ptr %i.el, align 1
  br label %dof_iid_create_standard_string.exit

dof_iid_create_standard_string.exit:              ; preds = %bb.c, %InterfaceID_ToString.exit.i
  %i.em = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %1, i32 noundef %i.v, ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef %i.x, ptr noundef @.str.712, ptr noundef %i.af) ; 2 uses
  %.not.i49 = icmp eq ptr %i.em, null
  br i1 %.not.i49, label %proto_item_set_generated.exit, label %bb.e

bb.e:                                             ; preds = %dof_iid_create_standard_string.exit
  %i.en = getelementptr i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.eo, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.f

end_hunk_4
begin_hunk_5_@dissect_2008_16_security_5:bb.a

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_2008_16_security_3_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i16
  %i.e = shl nuw nsw i16 %i.d, 8
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.g = zext i8 %i.f to i16
  %i.h = or disjoint i16 %i.e, %i.g
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.b to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = load i32, ptr @hf_security_3_1_credential_type, align 4
  %i.k = zext nneg i16 %.0.ph.i to i32
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.k)
  %i.m = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.m
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.n = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.l, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %i.o = load i32, ptr @hf_security_3_1_stage, align 4
  %i.p = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.q = add nuw nsw i32 %.sink.i, 1              ; 3 uses
  %i.r = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %validate_c2.exit
  %i.s = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.p, ptr noundef @ei_security_3_1_invalid_stage) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %validate_c2.exit
  %i.t = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.q) ; 3 uses
  %i.u = load i32, ptr @hf_security_3_1_security_node_identifier, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.q, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.w = load i32, ptr @ett_security_3_1_security_node_identifier, align 4
  %i.x = call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.w)
  %i.y = call i32 @dissect_2009_11_type_4(ptr noundef %i.t, ptr noundef %1, ptr noundef %i.x, ptr poison) ; 3 uses
  call void @proto_item_set_len(ptr noundef %i.v, i32 noundef %i.y)
  call void @tvb_set_reported_length(ptr noundef %i.t, i32 noundef %i.y)
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %3, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = add i32 %i.y, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_2008_16_security_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.a, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i16
  %i.d = shl nuw nsw i16 %i.c, 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.d, %i.f
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.a to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = load i32, ptr @hf_security_2_count, align 4
  %i.j = zext nneg i16 %.0.ph.i to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.j)
  %i.l = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.l
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %.not28 = icmp eq i16 %.0.ph.i, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %validate_c2.exit, %dissect_2008_16_security_1.exit
  %.030 = phi i32 [ %i.ba, %dissect_2008_16_security_1.exit ], [ %.sink.i, %validate_c2.exit ] ; 3 uses
  %.02429 = phi i16 [ %i.n, %dissect_2008_16_security_1.exit ], [ %.0.ph.i, %validate_c2.exit ]
  %i.n = add nsw i16 %.02429, -1                  ; 2 uses
  %i.o = load i32, ptr @hf_security_2_permission, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %.030, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.q = load i32, ptr @ett_security_2_permission, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 3 uses
  %i.s = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.030) ; 7 uses
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef 0) ; 3 uses
  %.not.i.i = icmp slt i8 %i.t, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = and i8 %i.t, 127
  %i.v = zext nneg i8 %i.u to i16
  %i.w = shl nuw nsw i16 %i.v, 8
  %i.x = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef 1)
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.w, %i.y
  br label %read_c2.exit.i

bb.f:                                             ; preds = %.lr.ph
  %i.aa = zext nneg i8 %i.t to i16
  br label %read_c2.exit.i

read_c2.exit.i:                                   ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 2, %bb.e ], [ 1, %bb.f ] ; 7 uses
  %.0.ph.i.i = phi i16 [ %i.z, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ab = zext nneg i16 %.0.ph.i.i to i32         ; 2 uses
  %i.ac = and i32 %i.ab, 1
  %.not.i25 = icmp eq i32 %i.ac, 0
  %i.ad = load i32, ptr @hf_security_1_permission_type, align 4
  %i.ae = tail call ptr @proto_tree_add_uint(ptr noundef %i.r, i32 noundef %i.ad, ptr noundef %i.s, i32 noundef 0, i32 noundef %.sink.i.i, i32 noundef %i.ab)
  %i.af = icmp samesign ult i16 %.0.ph.i.i, 128
  %or.cond.i.i = and i1 %.not.i.i, %i.af
  br i1 %or.cond.i.i, label %bb.g, label %validate_c2.exit.i

bb.g:                                             ; preds = %read_c2.exit.i
  %i.ag = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ae, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit.i

validate_c2.exit.i:                               ; preds = %bb.g, %read_c2.exit.i
  br i1 %.not.i25, label %dissect_2008_16_security_1.exit, label %bb.h

bb.h:                                             ; preds = %validate_c2.exit.i
  %i.ah = add nuw nsw i32 %.sink.i.i, 1           ; 2 uses
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef %.sink.i.i) ; 3 uses
  %.not.i29.i = icmp slt i8 %i.ai, 0              ; 2 uses
  br i1 %.not.i29.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = and i8 %i.ai, 127
  %i.ak = zext nneg i8 %i.aj to i16
  %i.al = shl nuw nsw i16 %i.ak, 8
  %i.am = add nuw nsw i32 %.sink.i.i, 2
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef %i.ah)
  %i.ao = zext i8 %i.an to i16
  %i.ap = or disjoint i16 %i.al, %i.ao
  br label %read_c2.exit33.i

bb.j:                                             ; preds = %bb.h
  %i.aq = zext nneg i8 %i.ai to i16
  br label %read_c2.exit33.i

read_c2.exit33.i:                                 ; preds = %bb.j, %bb.i
  %.015.ph.i31.i = phi i32 [ %i.am, %bb.i ], [ %i.ah, %bb.j ] ; 3 uses
  %.0.ph.i32.i = phi i16 [ %i.ap, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ar = load i32, ptr @hf_security_1_length, align 4
  %i.as = sub nuw nsw i32 %.015.ph.i31.i, %.sink.i.i
  %i.at = zext nneg i16 %.0.ph.i32.i to i32       ; 3 uses
  %i.au = tail call ptr @proto_tree_add_uint(ptr noundef %i.r, i32 noundef %i.ar, ptr noundef %i.s, i32 noundef %.sink.i.i, i32 noundef %i.as, i32 noundef %i.at)
  %i.av = icmp samesign ult i16 %.0.ph.i32.i, 128
  %or.cond.i34.i = and i1 %.not.i29.i, %i.av
  br i1 %or.cond.i34.i, label %bb.k, label %validate_c2.exit35.i

bb.k:                                             ; preds = %read_c2.exit33.i
  %i.aw = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.au, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit35.i

validate_c2.exit35.i:                             ; preds = %bb.k, %read_c2.exit33.i
  %i.ax = load i32, ptr @hf_security_1_data, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ax, ptr noundef %i.s, i32 noundef %.015.ph.i31.i, i32 noundef %i.at, i32 noundef 0) ; 0 uses
  %i.az = add nuw nsw i32 %.015.ph.i31.i, %i.at
  br label %dissect_2008_16_security_1.exit

dissect_2008_16_security_1.exit:                  ; preds = %validate_c2.exit.i, %validate_c2.exit35.i
  %.0.i = phi i32 [ %i.az, %validate_c2.exit35.i ], [ %.sink.i.i, %validate_c2.exit.i ] ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.p, i32 noundef %.0.i)
  %i.ba = add i32 %.0.i, %.030                    ; 2 uses
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %dissect_2008_16_security_1.exit, %validate_c2.exit
  %.0.lcssa = phi i32 [ %.sink.i, %validate_c2.exit ], [ %i.ba, %dissect_2008_16_security_1.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_2008_16_security_8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @dissect_2009_11_type_4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tep(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._dof_2008_16_security_6_1, align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %struct._dof_2008_16_security_6_2, align 8 ; 5 uses
  %6 = alloca %struct._dof_secmode_api_data, align 8 ; 8 uses
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.bz, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef @.str.777)
  %i.k = load i32, ptr @proto_tep, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.m = load i32, ptr @ett_tep, align 4
  %i.n = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 14 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.o, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i16
  %i.r = shl nuw nsw i16 %i.q, 8
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.t = zext i8 %i.s to i16
  %i.u = or disjoint i16 %i.r, %i.t
  br label %read_c2.exit

bb.e:                                             ; preds = %bb.c
  %i.v = zext nneg i8 %i.o to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]   ; 12 uses
  %.0.ph.i = phi i16 [ %i.u, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = load i32, ptr @hf_2008_1_app_version, align 4
  %i.x = zext nneg i16 %.0.ph.i to i32
  %i.y = tail call ptr @proto_tree_add_uint(ptr noundef %i.n, i32 noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.x)
  %i.z = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.z
  br i1 %or.cond.i, label %bb.f, label %validate_c2.exit

bb.f:                                             ; preds = %read_c2.exit
  %i.aa = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.y, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.f
  %i.ab = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ac = icmp eq i32 %.sink.i, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %validate_c2.exit
  %i.ad = load ptr, ptr %i.i, align 8
  tail call void @col_append_str(ptr noundef %i.ad, i32 noundef 25, ptr noundef @.str.778)
  %i.ae = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.n, ptr noundef @ei_implicit_no_op) ; 0 uses
  br label %bb.bz

bb.h:                                             ; preds = %validate_c2.exit
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.ag = getelementptr i8, ptr %i.g, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !range !12, !noundef !13
  %i.ai = xor i8 %i.ah, -1
  %i.aj = shl i8 %i.ai, 7
  %spec.select = or i8 %i.aj, %i.af               ; 3 uses
  %i.ak = load ptr, ptr %i.i, align 8
  %i.al = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = zext i8 %spec.select to i32             ; 5 uses
  %i.ao = tail call ptr @val_to_str(ptr noundef %i.am, i32 noundef %i.an, ptr noundef @tep_opcode_strings, ptr noundef @.str.741)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ak, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.ao)
  %i.ap = load i32, ptr @hf_tep_operation, align 4
  %i.aq = load ptr, ptr %i.al, align 8
  %i.ar = tail call ptr @val_to_str(ptr noundef %i.aq, i32 noundef %i.an, ptr noundef @tep_opcode_strings, ptr noundef @.str.741)
  %i.as = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.n, i32 noundef %i.ap, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef %i.an, ptr noundef @.str.779, ptr noundef %i.ar, i32 noundef %i.an)
  %i.at = load i32, ptr @ett_tep_operation, align 4
  %i.au = tail call ptr @proto_item_add_subtree(ptr noundef %i.as, i32 noundef %i.at) ; 4 uses
  %i.av = load i32, ptr @hf_tep_operation_type, align 4
  %i.aw = zext i8 %spec.select to i64
  %i.ax = tail call ptr @proto_tree_add_boolean(ptr noundef %i.au, i32 noundef %i.av, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 0, i64 noundef %i.aw) ; 2 uses
  %.not.i375 = icmp eq ptr %i.ax, null
  br i1 %.not.i375, label %proto_item_set_generated.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.az, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.az, i64 28     ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = or i32 %i.bb, 2
  store i32 %i.bc, ptr %i.ba, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.h, %bb.i, %bb.j
  %i.bd = and i32 %i.an, 143
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %proto_item_set_generated.exit
  %i.bf = load i32, ptr @hf_tep_c, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.bf, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_tep_k, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.bh, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %proto_item_set_generated.exit
  %i.bj = load i32, ptr @hf_tep_opcode, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.bj, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = add nuw nsw i32 %.sink.i, 1             ; 11 uses
  switch i8 %spec.select, label %bb.bz [
    i8 17, label %bb.m
    i8 1, label %bb.t
    i8 -127, label %bb.z
    i8 33, label %bb.br
    i8 -128, label %bb.bx
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr i8, ptr %i.g, i64 248     ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not368 = icmp eq ptr %i.bn, null
  br i1 %.not368, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call ptr @wmem_file_scope()
  %i.bp = tail call noalias dereferenceable_or_null(96) ptr @wmem_alloc0(ptr noundef %i.bo, i64 noundef 96) #22 ; 2 uses
  store ptr %i.bp, ptr %i.bm, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0324 = phi ptr [ %i.bn, %bb.m ], [ %i.bp, %bb.n ] ; 6 uses
  %i.bq = tail call ptr @wmem_file_scope()
  %i.br = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.bq, i64 noundef 48) #22
  %i.bs = getelementptr i8, ptr %.0324, i64 88
  store ptr %i.br, ptr %i.bs, align 8
  store i8 1, ptr %.0324, align 8
  %i.bt = getelementptr i8, ptr %i.g, i64 216
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr @hf_tep_2_1_domain, align 4
  %i.bx = load i32, ptr @ett_tep_2_1_domain, align 4
  %i.by = tail call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.n, i32 noundef %i.bl, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef null) ; 3 uses
  %i.bz = getelementptr i8, ptr %.0324, i64 8     ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %.not370 = icmp eq ptr %i.ca, null
  br i1 %.not370, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cb = sub i32 %i.by, %i.bl
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.0324, i64 1     ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = tail call ptr @wmem_file_scope()
  %i.cf = load i8, ptr %i.cd, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = tail call noalias ptr @wmem_alloc0(ptr noundef %i.ce, i64 noundef %i.cg) #22 ; 2 uses
  store ptr %i.ch, ptr %i.bz, align 8
  %i.ci = load i8, ptr %i.cd, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = tail call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.ch, i32 noundef %i.bl, i64 noundef %i.cj) ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.cl = getelementptr i8, ptr %.0324, i64 8     ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %.not369 = icmp eq ptr %i.cm, null
  br i1 %.not369, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %3, i64 32        ; 2 uses
end_hunk_5
begin_hunk_6_@dissect_tep:bb.a
  %i.dk = load i32, ptr @ett_tep_2_1_initiator_block, align 4
  %i.dl = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.0326)
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.dj, ptr noundef %0, i32 noundef %.0326, i32 noundef -1, i32 noundef 0)
  %i.dn = tail call ptr @proto_item_add_subtree(ptr noundef %i.dm, i32 noundef %i.dk) ; 2 uses
  %i.do = call i32 @dissect_2008_16_security_6_1(ptr noundef %i.dl, ptr noundef %1, ptr noundef %i.dn, ptr noundef nonnull %4), !inline_history !4 ; 2 uses
  %i.dp = call ptr @proto_tree_get_parent(ptr noundef %i.dn)
  call void @proto_item_set_len(ptr noundef %i.dp, i32 noundef %i.do)
  %i.dq = add i32 %i.do, %.0326
  %i.dr = getelementptr i8, ptr %i.g, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !range !12, !noundef !13
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = load ptr, ptr %4, align 8               ; 2 uses
  %i.dx = call i32 @tvb_reported_length(ptr noundef %i.dv)
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr i8, ptr %.1325, i64 40    ; 3 uses
  store i8 %i.dy, ptr %i.dz, align 8
  %i.ea = call ptr @wmem_file_scope()
  %i.eb = load i8, ptr %i.dz, align 8
  %i.ec = zext i8 %i.eb to i64
  %i.ed = call noalias ptr @wmem_alloc0(ptr noundef %i.ea, i64 noundef %i.ec) #22 ; 2 uses
  %i.ee = getelementptr i8, ptr %.1325, i64 32
  store ptr %i.ed, ptr %i.ee, align 8
  %i.ef = load i8, ptr %i.dz, align 8
  %i.eg = zext i8 %i.ef to i64
  %i.eh = call ptr @tvb_memcpy(ptr noundef %i.dv, ptr noundef %i.ed, i32 noundef 0, i64 noundef %i.eg) ; 0 uses
  %i.ei = call i32 @tvb_reported_length(ptr noundef %i.dw)
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr i8, ptr %.1325, i64 24    ; 3 uses
  store i8 %i.ej, ptr %i.ek, align 8
  %i.el = call ptr @wmem_file_scope()
  %i.em = load i8, ptr %i.ek, align 8
  %i.en = zext i8 %i.em to i64
  %i.eo = call noalias ptr @wmem_alloc0(ptr noundef %i.el, i64 noundef %i.en) #22 ; 2 uses
  %i.ep = getelementptr i8, ptr %.1325, i64 16
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = load i8, ptr %i.ek, align 8
  %i.er = zext i8 %i.eq to i64
  %i.es = call ptr @tvb_memcpy(ptr noundef %i.dw, ptr noundef %i.eo, i32 noundef 0, i64 noundef %i.er) ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load i16, ptr %i.et, align 8
  %i.ev = getelementptr i8, ptr %.1325, i64 74
  store i16 %i.eu, ptr %i.ev, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = getelementptr i8, ptr %.1325, i64 76
  store i32 %i.ex, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr i8, ptr %.1325, i64 80
  store ptr %i.fa, ptr %i.fb, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bz

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.fc = getelementptr i8, ptr %i.g, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not353 = icmp eq ptr %i.fd, null
  br i1 %.not353, label %bb.bp, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr i8, ptr %i.fd, i64 248
  %i.ff = load ptr, ptr %i.fe, align 8            ; 21 uses
  %.not354 = icmp eq ptr %i.ff, null
  br i1 %.not354, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fg = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bp

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.fh = load i32, ptr @hf_tep_2_2_initiator_ticket, align 4
  %i.fi = load i32, ptr @ett_tep_2_2_initiator_ticket, align 4
  %i.fj = tail call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.n, i32 noundef %i.bl, i32 noundef %i.fh, i32 noundef %i.fi, ptr noundef null) ; 3 uses
  %i.fk = getelementptr i8, ptr %i.g, i64 24      ; 5 uses
  %i.fl = load i8, ptr %i.fk, align 8, !range !12, !noundef !13
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %.loopexit388, label %.preheader387

.preheader387:                                    ; preds = %bb.ac
  %i.fn = load ptr, ptr @globals.4, align 8       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 40
  %i.fp = load i16, ptr %i.fo, align 8
  %.not406 = icmp eq i16 %i.fp, 0
  br i1 %.not406, label %.loopexit388, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader387
  %i.fq = getelementptr i8, ptr %i.ff, i64 1
  %i.fr = getelementptr i8, ptr %i.ff, i64 8
  %i.fs = getelementptr i8, ptr %i.ff, i64 24
  %i.ft = getelementptr i8, ptr %i.ff, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.am
  %i.fx = phi ptr [ %i.fn, %.lr.ph ], [ %i.hk, %bb.am ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %.0316391 = phi ptr [ null, %.lr.ph ], [ %.1317, %bb.am ] ; 5 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr [40 x i8], ptr %i.fz, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load i8, ptr %i.gb, align 8             ; 2 uses
  %i.gd = load i8, ptr %i.fq, align 1
  %.not355 = icmp eq i8 %i.gc, %i.gd
  br i1 %.not355, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.ge = load ptr, ptr %i.ga, align 8
  %i.gf = load ptr, ptr %i.fr, align 8
  %i.gg = zext i8 %i.gc to i64
  %bcmp = call i32 @bcmp(ptr %i.ge, ptr %i.gf, i64 %i.gg)
  %.not356 = icmp eq i32 %bcmp, 0
  br i1 %.not356, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.gh = getelementptr i8, ptr %i.ga, i64 24
  %i.gi = load i8, ptr %i.gh, align 8             ; 2 uses
  %i.gj = load i8, ptr %i.fs, align 8
  %.not357 = icmp eq i8 %i.gi, %i.gj
  br i1 %.not357, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.gk = getelementptr i8, ptr %i.ga, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.ft, align 8
  %i.gn = zext i8 %i.gi to i64
  %bcmp358 = call i32 @bcmp(ptr %i.gl, ptr %i.gm, i64 %i.gn)
  %.not359 = icmp eq i32 %bcmp358, 0
  br i1 %.not359, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.go = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.bl, i64 noundef 64) ; 0 uses
  %i.gp = call i32 @gcry_cipher_open(ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not360 = icmp eq i32 %i.gp, 0
  br i1 %.not360, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.gq = load ptr, ptr %i.d, align 8
  %i.gr = getelementptr i8, ptr %i.ga, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call i32 @gcry_cipher_setkey(ptr noundef %i.gq, ptr noundef %i.gs, i64 noundef 32)
  %.not361 = icmp eq i32 %i.gt, 0
  br i1 %.not361, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gu = load ptr, ptr %i.d, align 8
  %i.gv = call i32 @gcry_cipher_encrypt(ptr noundef %i.gu, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.gw = load ptr, ptr %i.d, align 8
  %i.gx = call i32 @gcry_cipher_encrypt(ptr noundef %i.gw, ptr noundef nonnull %i.fu, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gy = load ptr, ptr %i.d, align 8
  call void @gcry_cipher_close(ptr noundef %i.gy)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.gz = load <16 x i8>, ptr %i.fv, align 16
  %i.ha = load <16 x i8>, ptr %i.c, align 16
  %i.hb = xor <16 x i8> %i.ha, %i.gz
  store <16 x i8> %i.hb, ptr %i.fv, align 16
  %i.hc = load <16 x i8>, ptr %i.fw, align 16
  %i.hd = load <16 x i8>, ptr %i.fu, align 16
  %i.he = xor <16 x i8> %i.hd, %i.hc
  store <16 x i8> %i.he, ptr %i.fw, align 16
  %i.hf = call ptr @wmem_file_scope()
  %i.hg = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.hf, i64 noundef 16) #22 ; 3 uses
  %i.hh = call ptr @wmem_file_scope()
  %i.hi = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.hh, i64 noundef 32) #22 ; 2 uses
  store ptr %i.hi, ptr %i.hg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.hi, ptr noundef nonnull align 16 dereferenceable(32) %i.fv, i64 noundef 32, i1 noundef false) #26
  %i.hj = getelementptr i8, ptr %i.hg, i64 8
  store ptr %.0316391, ptr %i.hj, align 8
  %.pre = load ptr, ptr @globals.4, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.al
  %i.hk = phi ptr [ %.pre, %bb.al ], [ %i.fx, %bb.ad ], [ %i.fx, %bb.ae ], [ %i.fx, %bb.af ], [ %i.fx, %bb.ag ] ; 2 uses
  %.1317 = phi ptr [ %i.hg, %bb.al ], [ %.0316391, %bb.ad ], [ %.0316391, %bb.ae ], [ %.0316391, %bb.af ], [ %.0316391, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 40
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = zext i16 %i.hm to i64
  %i.ho = icmp samesign ult i64 %indvars.iv.next, %i.hn
  br i1 %i.ho, label %bb.ad, label %.loopexit388, !llvm.loop !103

.loopexit388:                                     ; preds = %bb.am, %.preheader387, %bb.ac
  %.2318 = phi ptr [ null, %bb.ac ], [ null, %.preheader387 ], [ %.1317, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.hp = load i8, ptr %i.fk, align 8, !range !12, !noundef !13
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit388
  %i.hr = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.fj, i64 noundef 32) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit388
  %i.hs = load i32, ptr @hf_tep_2_2_ticket_confirmation, align 4
  %i.ht = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.hs, ptr noundef %0, i32 noundef %i.fj, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.hu = add i32 %i.fj, 32                       ; 4 uses
  %i.hv = getelementptr i8, ptr %i.ff, i64 88     ; 10 uses
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not362 = icmp eq ptr %i.hw, null
  br i1 %.not362, label %proto_item_set_generated.exit378, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hx = getelementptr i8, ptr %i.hw, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = icmp ne ptr %i.hy, null
  %i.ia = icmp ne ptr %i.n, null
  %or.cond = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond, label %bb.aq, label %proto_item_set_generated.exit378

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load i32, ptr @hf_tep_session_key, align 4
  %i.ic = call ptr @proto_tree_add_bytes_with_length(ptr noundef %2, i32 noundef %i.ib, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.hy, i32 noundef 32) ; 2 uses
  %.not.i376 = icmp eq ptr %i.ic, null
  br i1 %.not.i376, label %proto_item_set_generated.exit378, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.id = getelementptr i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %.not5.i377 = icmp eq ptr %i.ie, null
  br i1 %.not5.i377, label %proto_item_set_generated.exit378, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.if = getelementptr i8, ptr %i.ie, i64 28     ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = or i32 %i.ig, 2
  store i32 %i.ih, ptr %i.if, align 4
  br label %proto_item_set_generated.exit378

proto_item_set_generated.exit378:                 ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ii = load i8, ptr %i.ff, align 8, !range !12, !noundef !13
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.at, label %bb.av

bb.at:                                            ; preds = %proto_item_set_generated.exit378
  %i.ik = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.hu) ; 2 uses
  %i.il = load i32, ptr @hf_tep_2_2_responder_initialization, align 4
  %i.im = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.hu, i32 noundef 0, i32 noundef 0)
  %i.in = load i32, ptr @ett_tep_2_2_responder_initialization, align 4
  %i.io = call ptr @proto_item_add_subtree(ptr noundef %i.im, i32 noundef %i.in) ; 2 uses
  %.val = load ptr, ptr %i.f, align 8
  %i.ip = call fastcc i32 @dissect_2008_4_tep_2_2_1(ptr noundef %i.ik, ptr noundef %1, ptr noundef %i.io, ptr noundef nonnull %i.a, ptr %.val) ; 3 uses
  call void @proto_item_set_len(ptr noundef %i.io, i32 noundef %i.ip)
  %i.iq = add i32 %i.ip, %i.hu                    ; 2 uses
  %i.ir = load i8, ptr %i.fk, align 8, !range !12, !noundef !13
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = call ptr @wmem_file_scope()
  %.mask = and i32 %i.ip, 255                     ; 2 uses
  %i.iu = zext nneg i32 %.mask to i64             ; 2 uses
  %i.iv = call noalias ptr @wmem_alloc0(ptr noundef %i.it, i64 noundef %i.iu) #22 ; 2 uses
  %i.iw = call ptr @tvb_memcpy(ptr noundef %i.ik, ptr noundef %i.iv, i32 noundef 0, i64 noundef %i.iu) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %proto_item_set_generated.exit378
  %.1327 = phi i32 [ %i.hu, %proto_item_set_generated.exit378 ], [ %i.iq, %bb.au ], [ %i.iq, %bb.at ]
  %.1323 = phi ptr [ null, %proto_item_set_generated.exit378 ], [ %i.iv, %bb.au ], [ null, %bb.at ] ; 2 uses
  %.1321 = phi i32 [ 0, %proto_item_set_generated.exit378 ], [ %.mask, %bb.au ], [ 0, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ix = load i32, ptr @hf_tep_2_2_responder_block, align 4
  %i.iy = load i32, ptr @ett_tep_2_2_responder_block, align 4
  %i.iz = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_6_2, ptr noundef %0, ptr noundef %1, ptr noundef %i.n, i32 noundef %.1327, i32 noundef %i.ix, i32 noundef %i.iy, ptr noundef nonnull %5)
  %i.ja = load i8, ptr %i.fk, align 8, !range !12, !noundef !13
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = load ptr, ptr %5, align 8               ; 2 uses
  %i.jf = call i32 @tvb_reported_length(ptr noundef %i.jd)
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr i8, ptr %i.ff, i64 72     ; 3 uses
  store i8 %i.jg, ptr %i.jh, align 8
  %i.ji = call ptr @wmem_file_scope()
  %i.jj = load i8, ptr %i.jh, align 8
  %i.jk = zext i8 %i.jj to i64
  %i.jl = call noalias ptr @wmem_alloc0(ptr noundef %i.ji, i64 noundef %i.jk) #22 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.ff, i64 64
  store ptr %i.jl, ptr %i.jm, align 8
  %i.jn = load i8, ptr %i.jh, align 8
  %i.jo = zext i8 %i.jn to i64
  %i.jp = call ptr @tvb_memcpy(ptr noundef %i.jd, ptr noundef %i.jl, i32 noundef 0, i64 noundef %i.jo) ; 0 uses
  %i.jq = call i32 @tvb_reported_length(ptr noundef %i.je)
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr i8, ptr %i.ff, i64 56     ; 3 uses
  store i8 %i.jr, ptr %i.js, align 8
  %i.jt = call ptr @wmem_file_scope()
  %i.ju = load i8, ptr %i.js, align 8
  %i.jv = zext i8 %i.ju to i64
  %i.jw = call noalias ptr @wmem_alloc0(ptr noundef %i.jt, i64 noundef %i.jv) #22 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ff, i64 48
  store ptr %i.jw, ptr %i.jx, align 8
  %i.jy = load i8, ptr %i.js, align 8
  %i.jz = zext i8 %i.jy to i64
  %i.ka = call ptr @tvb_memcpy(ptr noundef %i.je, ptr noundef %i.jw, i32 noundef 0, i64 noundef %i.jz) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.kb = load i32, ptr @hf_tep_2_2_authenticator_initialization, align 4
  %i.kc = load i32, ptr @ett_tep_2_2_authenticator_initialization, align 4
  %i.kd = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_6_3, ptr noundef %0, ptr noundef %1, ptr noundef %i.n, i32 noundef %i.iz, i32 noundef %i.kb, i32 noundef %i.kc, ptr noundef null)
  %i.ke = getelementptr i8, ptr %i.g, i64 216
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.kh = getelementptr i8, ptr %3, i64 16        ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %.0313393 = load ptr, ptr %i.kj, align 8        ; 2 uses
  %.not363394 = icmp eq ptr %.0313393, null
  %.pre414 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %.not363394, label %.critedge373, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.ay
  %i.kk = getelementptr i8, ptr %i.ff, i64 1
  %i.kl = getelementptr i8, ptr %i.ff, i64 8
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph396, %bb.bc
  %.0313395 = phi ptr [ %.0313393, %.lr.ph396 ], [ %.0313, %bb.bc ] ; 5 uses
  %i.km = load i32, ptr %.0313395, align 8
  %i.kn = icmp eq i32 %i.km, %.pre414
  br i1 %i.kn, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ko = getelementptr i8, ptr %.0313395, i64 4
  %i.kp = load i8, ptr %i.ko, align 4             ; 2 uses
  %i.kq = load i8, ptr %i.kk, align 1
  %i.kr = icmp eq i8 %i.kp, %i.kq
  br i1 %i.kr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ks = getelementptr i8, ptr %.0313395, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = load ptr, ptr %i.kl, align 8
  %i.kv = zext i8 %i.kp to i64
  %bcmp364 = call i32 @bcmp(ptr %i.kt, ptr %i.ku, i64 %i.kv)
  %i.kw = icmp eq i32 %bcmp364, 0
  br i1 %i.kw, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.kx = getelementptr i8, ptr %.0313395, i64 32
  %.0313 = load ptr, ptr %i.kx, align 8           ; 2 uses
  %.not363 = icmp eq ptr %.0313, null
  br i1 %.not363, label %.critedge373, label %bb.az, !llvm.loop !104

.critedge373:                                     ; preds = %bb.bc, %bb.ay
  %i.ky = call ptr @wmem_file_scope()
  %i.kz = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.ky, i64 noundef 24) #22 ; 3 uses
  %i.la = load i32, ptr @globals.1, align 4       ; 2 uses
  %i.lb = add i32 %i.la, 1
  store i32 %i.lb, ptr @globals.1, align 4
  store i32 %i.la, ptr %i.kz, align 8
  %i.lc = load ptr, ptr %i.kh, align 8
  %i.ld = getelementptr i8, ptr %i.lc, i64 4
  %i.le = load i8, ptr %i.ld, align 4
  %i.lf = getelementptr i8, ptr %i.kz, i64 4
  store i8 %i.le, ptr %i.lf, align 4
  %i.lg = call ptr @wmem_file_scope()
  %i.lh = call noalias dereferenceable_or_null(56) ptr @wmem_alloc0(ptr noundef %i.lg, i64 noundef 56) #22 ; 11 uses
  store i32 %.pre414, ptr %i.lh, align 8
  %i.li = getelementptr i8, ptr %i.ff, i64 1
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = getelementptr i8, ptr %i.lh, i64 4
  store i8 %i.lj, ptr %i.lk, align 4
  %i.ll = getelementptr i8, ptr %i.ff, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = getelementptr i8, ptr %i.lh, i64 8
  store ptr %i.lm, ptr %i.ln, align 8
  %i.lo = load ptr, ptr %i.kh, align 8            ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = getelementptr i8, ptr %i.lh, i64 48
  store i32 %i.lp, ptr %i.lq, align 8
  %i.lr = getelementptr i8, ptr %i.lh, i64 40
  store ptr %i.kz, ptr %i.lr, align 8
  %i.ls = getelementptr i8, ptr %i.lh, i64 52
  store i8 1, ptr %i.ls, align 4
  %i.lt = getelementptr i8, ptr %i.lo, i64 8      ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr i8, ptr %i.lh, i64 32
  store ptr %i.lu, ptr %i.lv, align 8
  store ptr %i.lh, ptr %i.lt, align 8
  %i.lw = getelementptr i8, ptr %i.lh, i64 24     ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %.not365 = icmp eq ptr %i.lx, null
  %i.ly = load ptr, ptr %i.hv, align 8            ; 3 uses
  br i1 %.not365, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge373
  %i.lz = getelementptr i8, ptr %i.lh, i64 16
  store ptr %i.ly, ptr %i.lz, align 8
  br label %bb.bf

bb.be:                                            ; preds = %.critedge373
  %i.ma = getelementptr i8, ptr %i.lx, i64 40
  store ptr %i.ly, ptr %i.ma, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.ly, ptr %i.lw, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.bf, %bb.ax
  %.2315 = phi ptr [ null, %bb.ax ], [ %i.lh, %bb.bf ], [ %.0313395, %bb.bb ] ; 2 uses
  %i.mb = load i8, ptr %i.fk, align 8, !range !12, !noundef !13
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %.loopexit
  %i.md = load i8, ptr %i.ff, align 8, !range !12, !noundef !13
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %.preheader386, label %bb.bq

.preheader386:                                    ; preds = %bb.bg
  %.not407 = icmp eq ptr %.2318, null
  br i1 %.not407, label %.lr.ph402.preheader, label %.lr.ph398

.preheader:                                       ; preds = %bb.bi
  %i.mf = icmp eq ptr %.1, null
  br i1 %i.mf, label %.lr.ph402.preheader, label %.critedge

.lr.ph402.preheader:                              ; preds = %.preheader386, %.preheader
  br label %.lr.ph402

.lr.ph398:                                        ; preds = %.preheader386, %bb.bi
  %.3319397 = phi ptr [ %i.mm, %bb.bi ], [ %.2318, %.preheader386 ] ; 3 uses
  %i.mg = load ptr, ptr %.3319397, align 8
  %i.mh = call fastcc zeroext i1 @validate_session_key(ptr noundef %i.ff, i32 noundef %.1321, ptr noundef %.1323, ptr noundef nonnull %i.b, ptr noundef %i.mg)
  br i1 %i.mh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph398
  %i.mi = call ptr @wmem_file_scope()
  %i.mj = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.mi, i64 noundef 32) #22 ; 2 uses
  %i.mk = load ptr, ptr %.3319397, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.mj, ptr noundef align 1 dereferenceable(32) %i.mk, i64 noundef 32, i1 noundef false) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph398
  %.1 = phi ptr [ %i.mj, %bb.bh ], [ null, %.lr.ph398 ] ; 3 uses
  %i.ml = getelementptr i8, ptr %.3319397, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8            ; 2 uses
  %i.mn = icmp eq ptr %.1, null
  %i.mo = icmp ne ptr %i.mm, null
  %i.mp = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %i.mp, label %.lr.ph398, label %.preheader, !llvm.loop !105

.lr.ph402:                                        ; preds = %.lr.ph402.preheader, %bb.bl
  %indvars.iv411 = phi i64 [ %indvars.iv.next412, %bb.bl ], [ 0, %.lr.ph402.preheader ] ; 4 uses
  %i.mq = load ptr, ptr @globals.4, align 8       ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  %i.ms = load i16, ptr %i.mr, align 8
  %i.mt = zext i16 %i.ms to i64
  %i.mu = icmp samesign ult i64 %indvars.iv411, %i.mt
  br i1 %i.mu, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %.lr.ph402
  %i.mv = load ptr, ptr %i.mq, align 8
  %i.mw = getelementptr [8 x i8], ptr %i.mv, i64 %indvars.iv411
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = call fastcc zeroext i1 @validate_session_key(ptr noundef %i.ff, i32 noundef %.1321, ptr noundef %.1323, ptr noundef nonnull %i.b, ptr noundef %i.mx)
  br i1 %i.my, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mz = load ptr, ptr @globals.4, align 8
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %indvars.iv411
  %i.nc = load ptr, ptr %i.nb, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.3 = phi ptr [ %i.nc, %bb.bk ], [ null, %bb.bj ] ; 2 uses
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1
  %i.nd = icmp eq ptr %.3, null
  br i1 %i.nd, label %.lr.ph402, label %.critedge, !llvm.loop !106

.critedge:                                        ; preds = %.lr.ph402, %bb.bl, %.preheader
  %.2.lcssa = phi ptr [ %.1, %.preheader ], [ %.3, %bb.bl ], [ null, %.lr.ph402 ] ; 2 uses
  %i.ne = getelementptr i8, ptr %i.g, i64 12
  %i.nf = load i32, ptr %i.ne, align 4
  %i.ng = load ptr, ptr %i.hv, align 8
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  store i32 %i.nf, ptr %i.nh, align 4
  %i.ni = load ptr, ptr %i.hv, align 8
  store i32 -1, ptr %i.ni, align 8
  %i.nj = load ptr, ptr %i.hv, align 8
  %i.nk = getelementptr i8, ptr %i.nj, i64 32
  store ptr %.2.lcssa, ptr %i.nk, align 8
  %i.nl = getelementptr i8, ptr %i.ff, i64 74
  %i.nm = load i16, ptr %i.nl, align 2
  %i.nn = zext i16 %i.nm to i32
  %i.no = load ptr, ptr %i.hv, align 8
  %i.np = getelementptr i8, ptr %i.no, i64 8
  store i32 %i.nn, ptr %i.np, align 8
  %i.nq = getelementptr i8, ptr %i.ff, i64 76
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = load ptr, ptr %i.hv, align 8
  %i.nt = getelementptr i8, ptr %i.ns, i64 12
  store i32 %i.nr, ptr %i.nt, align 4
  %i.nu = getelementptr i8, ptr %i.ff, i64 80
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = load ptr, ptr %i.hv, align 8
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  store ptr %i.nv, ptr %i.nx, align 8
  %i.ny = icmp ne ptr %.2.lcssa, null
  %i.nz = icmp ne ptr %.2315, null
  %or.cond3 = and i1 %i.nz, %i.ny
  br i1 %or.cond3, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %.critedge
  %i.oa = call ptr @find_dissector_table(ptr noundef @.str.134) ; 2 uses
  %.not366 = icmp eq ptr %i.oa, null
  br i1 %.not366, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ob = load ptr, ptr %i.hv, align 8
  %i.oc = getelementptr i8, ptr %i.ob, i64 8
  %i.od = load i32, ptr %i.oc, align 8
  %i.oe = call ptr @dissector_get_uint_handle(ptr noundef nonnull %i.oa, i32 noundef %i.od) ; 2 uses
  %.not367 = icmp eq ptr %i.oe, null
  br i1 %.not367, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.2315, ptr %i.oi, align 8
  %i.oj = load ptr, ptr %i.hv, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.oj, ptr %i.ok, align 8
  %i.ol = call i32 @call_dissector_only(ptr noundef nonnull %i.oe, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bq

bb.bp:                                            ; preds = %bb.z, %bb.ab
  %.0309 = phi i32 [ 0, %bb.z ], [ %i.fg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bz

bb.bq:                                            ; preds = %.critedge, %bb.bn, %bb.bo, %bb.bm, %bb.bg, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bz

bb.br:                                            ; preds = %bb.l
  %i.om = load i32, ptr @hf_tep_2_1_ticket_confirmation, align 4
  %i.on = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.om, ptr noundef %0, i32 noundef %i.bl, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.oo = add nuw nsw i32 %.sink.i, 33            ; 6 uses
  %i.op = getelementptr i8, ptr %i.g, i64 24
  %i.oq = load i8, ptr %i.op, align 8, !range !12, !noundef !13
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.os = getelementptr i8, ptr %3, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  %.not = icmp eq ptr %i.ot, null
  br i1 %.not, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ou = getelementptr i8, ptr %i.g, i64 144
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %.not350 = icmp eq ptr %i.ov, null
  br i1 %.not350, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ow = getelementptr i8, ptr %i.ov, i64 248
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %.not351 = icmp eq ptr %i.ox, null
  br i1 %.not351, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oy = getelementptr i8, ptr %i.ox, i64 88
  %i.oz = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not352 = icmp eq ptr %i.oz, null
  br i1 %.not352, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pa = getelementptr i8, ptr %i.g, i64 12
  %i.pb = load i32, ptr %i.pa, align 4
  store i32 %i.pb, ptr %i.oz, align 8
  br label %bb.bz

bb.bx:                                            ; preds = %bb.l
  %i.pc = load i32, ptr @hf_tep_reject_code, align 4
  %i.pd = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.pc, ptr noundef %0, i32 noundef %i.bl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pe = add nuw nsw i32 %.sink.i, 2             ; 4 uses
  %i.pf = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.pg = icmp ugt i32 %i.pf, %i.pe
  br i1 %i.pg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ph = load i32, ptr @hf_tep_reject_data, align 4
  %i.pi = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ph, ptr noundef %0, i32 noundef %i.pe, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bq, %bb.bp, %bb.y, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.by, %bb.bx, %bb.l, %bb.bw, %bb.bv, %bb.u, %bb.b, %bb.a, %bb.g
  %.1310 = phi i32 [ %i.oo, %bb.bv ], [ 0, %bb.a ], [ %.sink.i, %bb.g ], [ 0, %bb.u ], [ 0, %bb.b ], [ %i.bl, %bb.l ], [ %i.dq, %bb.y ], [ %i.oo, %bb.br ], [ %i.pe, %bb.bx ], [ %i.oo, %bb.bu ], [ %i.oo, %bb.bt ], [ %i.oo, %bb.bs ], [ %i.pe, %bb.by ], [ %i.oo, %bb.bw ], [ %i.kd, %bb.bq ], [ %.0309, %bb.bp ]
  ret i32 %.1310
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @dissect_tep_dsp(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_dsp_option, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_2008_16_security_6_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct._dof_2008_16_security_4, align 16 ; 4 uses
  %i.a = load i32, ptr @hf_security_6_1_desired_duration, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 1) ; 5 uses
  %i.d = load i32, ptr @hf_security_6_1_desired_security_mode, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.f = load i32, ptr @ett_security_6_1_desired_security_mode, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.c, i32 noundef 1)
  %i.i = add i16 %i.h, -28672
  %or.cond.i = icmp ult i16 %i.i, -4096
  br i1 %or.cond.i, label %bb.b, label %dissect_2008_16_security_13.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.g, ptr noundef @ei_security_13_out_of_range) ; 0 uses
  br label %dissect_2008_16_security_13.exit

dissect_2008_16_security_13.exit:                 ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc range(i32 4, 260) i32 @dissect_2008_1_dsp_1(ptr noundef %i.c, ptr noundef %1, ptr noundef %i.g) ; 4 uses
  %i.l = add nuw nsw i32 %i.k, 1                  ; 3 uses
  tail call void @tvb_set_reported_length(ptr noundef %i.c, i32 noundef %i.k)
  tail call void @proto_item_set_len(ptr noundef %i.e, i32 noundef %i.k)
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dissect_2008_16_security_13.exit
  %i.m = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.c, i32 noundef 1)
  %i.n = getelementptr i8, ptr %3, i64 16
  store i16 %i.m, ptr %i.n, align 8
  %i.o = add nsw i32 %i.k, -4                     ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 20
  store i32 %i.o, ptr %i.p, align 4
  %i.q = tail call ptr @wmem_file_scope()
  %i.r = zext nneg i32 %i.o to i64
  %i.s = tail call ptr @tvb_memdup(ptr noundef %i.q, ptr noundef %i.c, i32 noundef 4, i64 noundef %i.r)
  %i.t = getelementptr i8, ptr %3, i64 24
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %dissect_2008_16_security_13.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.u = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.v = load i32, ptr @hf_security_6_1_initiator_request, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.l, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.x = load i32, ptr @ett_security_6_1_initiator_request, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x)
  %i.z = call i32 @dissect_2008_16_security_4(ptr noundef %i.u, ptr noundef %1, ptr noundef %i.y, ptr noundef nonnull %4) ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.w, i32 noundef %i.z)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.aa, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = add i32 %i.z, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %i.ab
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_with_length(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 32774) i32 @dissect_2008_4_tep_2_2_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree readonly captures(address_is_null) %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.24.val, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.24.val, i64 216
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %validate_c4.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.f = icmp slt i8 %i.e, 0                      ; 3 uses
  %i.g = and i8 %i.e, 64
  %.not = icmp eq i8 %i.g, 0
  %i.h = and i8 %i.e, 63
  %..i = select i1 %.not, i32 2, i32 4            ; 2 uses
  %.020.i = select i1 %i.f, i8 %i.h, i8 %i.e
  %i.i = zext nneg i8 %.020.i to i32              ; 2 uses
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02331.i = phi i32 [ %.023.i, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %.02229.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.i, %bb.c ]
  %i.j = shl i32 %.02229.i, 8
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02331.i)
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.j, %i.l               ; 2 uses
  %.023.i = add nuw i32 %.02331.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %.023.i, %..i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi i32 [ %i.i, %bb.c ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.023.lcssa.i = phi i32 [ 1, %bb.c ], [ %..i, %.lr.ph.i ] ; 3 uses
  %.not27.i = icmp eq ptr %3, null
  br i1 %.not27.i, label %._crit_edge.i.read_c4.exit_crit_edge, label %bb.d

._crit_edge.i.read_c4.exit_crit_edge:             ; preds = %._crit_edge.i
  %.pre = load i32, ptr null, align 4294967296
  br label %read_c4.exit

bb.d:                                             ; preds = %._crit_edge.i
  store i32 %.022.lcssa.i, ptr %3, align 4
  br label %read_c4.exit

read_c4.exit:                                     ; preds = %._crit_edge.i.read_c4.exit_crit_edge, %bb.d
  %i.n = phi i32 [ %.pre, %._crit_edge.i.read_c4.exit_crit_edge ], [ %.022.lcssa.i, %bb.d ]
  %i.o = load i32, ptr @hf_tep_2_2_1_state_identifier, align 4
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef %.023.lcssa.i, i32 noundef %i.n) ; 2 uses
  %i.q = load i32, ptr %3, align 4                ; 2 uses
  %i.r = icmp ult i32 %i.q, 128
  %or.cond.i = and i1 %i.f, %i.r
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %read_c4.exit
  %i.s = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.p, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %read_c4.exit
  %i.t = icmp ugt i8 %i.e, -65
  %i.u = icmp ult i32 %i.q, 16384
  %or.cond3.i = and i1 %i.t, %i.u
  br i1 %or.cond3.i, label %bb.g, label %validate_c4.exit

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.p, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit

validate_c4.exit:                                 ; preds = %bb.g, %bb.f, %bb.b
  %.032 = phi i32 [ 0, %bb.b ], [ %.023.lcssa.i, %bb.f ], [ %.023.lcssa.i, %bb.g ] ; 3 uses
  %i.w = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.032)
  %i.x = load i32, ptr @hf_tep_2_2_1_initial_state, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %.032, i32 noundef 0, i32 noundef 0)
  %i.z = load i32, ptr @ett_tep_2_2_1_initial_state, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 3 uses
  %i.ab = tail call fastcc i32 @dissect_2008_16_security_9(ptr noundef %i.w, ptr noundef %1, ptr noundef %i.aa) ; 3 uses
  %i.ac = tail call ptr @proto_tree_get_parent(ptr noundef %i.aa)
  tail call void @proto_item_set_len(ptr noundef %i.ac, i32 noundef %i.ab)
  tail call void @proto_item_set_len(ptr noundef %i.aa, i32 noundef %i.ab)
  %i.ad = add nuw nsw i32 %i.ab, %.032
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %validate_c4.exit
  %.0 = phi i32 [ %i.ad, %validate_c4.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_2008_16_security_6_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct._dof_2008_16_security_4, align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_security_6_2_responder_request, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.d = load i32, ptr @ett_security_6_2_responder_request, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d)
  %i.f = call i32 @dissect_2008_16_security_4(ptr noundef %i.a, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %4) ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.c, i32 noundef %i.f)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.g, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_2008_16_security_6_3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_security_6_3_granted_duration, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 1)
  %i.d = load i32, ptr @hf_security_6_3_session_security_scope, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.f = load i32, ptr @ett_security_6_3_session_security_scope, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f)
  %i.h = tail call i32 @dissect_2008_16_security_10(ptr noundef %i.c, ptr noundef %1, ptr noundef %i.g, ptr poison) ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.e, i32 noundef %i.h)
  %i.i = add i32 %i.h, 1                          ; 3 uses
  %i.j = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.i)
  %i.k = load i32, ptr @hf_security_6_3_initiator_validation, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.i, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.m = load i32, ptr @ett_security_6_3_initiator_validation, align 4
  %i.n = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m)
  %i.o = tail call i32 @dissect_2008_16_security_11(ptr noundef %i.j, ptr noundef %1, ptr noundef %i.n, ptr poison) ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.l, i32 noundef %i.o)
  %i.p = add i32 %i.o, %i.i                       ; 3 uses
  %i.q = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.p)
  %i.r = load i32, ptr @hf_security_6_3_responder_validation, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.p, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.t = load i32, ptr @ett_security_6_3_responder_validation, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t)
  %i.v = tail call i32 @dissect_2008_16_security_11(ptr noundef %i.q, ptr noundef %1, ptr noundef %i.u, ptr poison) ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.s, i32 noundef %i.v)
  %i.w = add i32 %i.v, %i.p
  ret i32 %i.w
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @validate_session_key(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #26
  %i.c = call i32 @gcry_mac_open(ptr noundef nonnull %i.b, i32 noundef 101, i32 noundef 0, ptr noundef null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call i32 @gcry_mac_setkey(ptr noundef %i.d, ptr noundef %4, i64 noundef 32) ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = sub nsw i64 16, %i.i
  %i.k = call i32 @gcry_mac_write(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i8, ptr %i.g, align 8
  %i.p = zext i8 %i.o to i64
  %i.q = call i32 @gcry_mac_write(ptr noundef %i.l, ptr noundef %i.n, i64 noundef %i.p) ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = zext i8 %i.t to i64
  %i.v = sub nsw i64 16, %i.u
  %i.w = call i32 @gcry_mac_write(ptr noundef %i.r, ptr noundef nonnull %i.a, i64 noundef %i.v) ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i8, ptr %i.s, align 8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = call i32 @gcry_mac_write(ptr noundef %i.x, ptr noundef %i.z, i64 noundef %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = zext nneg i32 %1 to i64
  %i.af = call i32 @gcry_mac_write(ptr noundef %i.ad, ptr noundef %2, i64 noundef %i.ae) ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %0, i64 56
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = zext i8 %i.ak to i64
  %i.am = call i32 @gcry_mac_write(ptr noundef %i.ag, ptr noundef %i.ai, i64 noundef %i.al) ; 0 uses
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = call i32 @gcry_mac_verify(ptr noundef %i.an, ptr noundef %3, i64 noundef 32)
  %i.ap = icmp eq i32 %i.ao, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.ap, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 4, 260) i32 @dissect_2008_16_security_13(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.b = add i16 %i.a, -28672
  %or.cond = icmp ult i16 %i.b, -4096
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef @ei_security_13_out_of_range) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = tail call fastcc i32 @dissect_2008_1_dsp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_2008_16_security_11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.a, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i16
  %i.d = shl nuw nsw i16 %i.c, 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.d, %i.f
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.a to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.i = load i32, ptr @hf_security_11_count, align 4
  %i.j = zext nneg i16 %.0.ph.i to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.j)
  %i.l = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.l
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %.not29 = icmp eq i16 %.0.ph.i, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %validate_c2.exit, %dissect_2008_16_security_12.exit
  %.031 = phi i32 [ %i.ax, %dissect_2008_16_security_12.exit ], [ %.sink.i, %validate_c2.exit ] ; 3 uses
  %.02430 = phi i16 [ %i.n, %dissect_2008_16_security_12.exit ], [ %.0.ph.i, %validate_c2.exit ]
  %i.n = add nsw i16 %.02430, -1                  ; 2 uses
  %i.o = load i32, ptr @hf_security_11_permission_security_scope, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %.031, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.q = load i32, ptr @ett_security_11_permission_security_scope, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 3 uses
  %i.s = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.031) ; 7 uses
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef 0)
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef 0)
  %i.v = and i8 %i.u, 63                          ; 2 uses
  %i.w = load i32, ptr @hf_security_12_m, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.w, ptr noundef %i.s, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_security_12_count, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.y, ptr noundef %i.s, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = icmp ult i8 %i.t, 64
  %.not5.i = icmp eq i8 %i.v, 0
  %or.cond.i25 = select i1 %i.aa, i1 true, i1 %.not5.i
  br i1 %or.cond.i25, label %dissect_2008_16_security_12.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.ab = zext nneg i8 %i.v to i16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %validate_c4.exit.i, %.lr.ph.preheader.i
  %.in.i = phi i16 [ %i.ac, %validate_c4.exit.i ], [ %i.ab, %.lr.ph.preheader.i ]
  %.0276.i = phi i32 [ %.023.lcssa.i.i, %validate_c4.exit.i ], [ 1, %.lr.ph.preheader.i ] ; 4 uses
  %i.ac = add nsw i16 %.in.i, -1                  ; 2 uses
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef %.0276.i) ; 5 uses
  %i.ae = icmp slt i8 %i.ad, 0                    ; 3 uses
  %i.af = and i8 %i.ad, 64
  %.not4.i = icmp eq i8 %i.af, 0
  %i.ag = and i8 %i.ad, 63
  %..i.i = select i1 %.not4.i, i32 2, i32 4
  %.020.i.i = select i1 %i.ae, i8 %i.ag, i8 %i.ad
  %i.ah = zext nneg i8 %.020.i.i to i32           ; 2 uses
  %.02328.i.i = add i32 %.0276.i, 1               ; 2 uses
  br i1 %i.ae, label %.lr.ph.i.i, label %read_c4.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.02331.i.i = phi i32 [ %.023.i.i, %.lr.ph.i.i ], [ %.02328.i.i, %.lr.ph.i ] ; 2 uses
  %.030.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ 1, %.lr.ph.i ]
  %.02229.i.i = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.ah, %.lr.ph.i ]
  %i.ai = shl i32 %.02229.i.i, 8
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.s, i32 noundef %.02331.i.i)
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak            ; 2 uses
  %i.am = add nuw nsw i32 %.030.i.i, 1            ; 2 uses
  %.023.i.i = add i32 %.02331.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.am, %..i.i
  br i1 %exitcond.not.i.i, label %read_c4.exit.i, label %.lr.ph.i.i, !llvm.loop !2

read_c4.exit.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.022.lcssa.i.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.al, %.lr.ph.i.i ] ; 5 uses
  %.023.lcssa.i.i = phi i32 [ %.02328.i.i, %.lr.ph.i ], [ %.023.i.i, %.lr.ph.i.i ] ; 3 uses
  %switch.tableidx = add i32 %.022.lcssa.i.i, -1073741821 ; 2 uses
  %i.an = icmp ult i32 %switch.tableidx, 3
  br i1 %i.an, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %read_c4.exit.i
  %i.ao = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_2008_16_security_11, i64 %i.ao
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %read_c4.exit.i
  %.0.i = phi ptr [ @.str.180, %read_c4.exit.i ], [ %switch.load, %switch.lookup ]
  %i.ap = load i32, ptr @hf_security_12_permission_group_identifier, align 4
  %i.aq = sub i32 %.023.lcssa.i.i, %.0276.i
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.r, i32 noundef %i.ap, ptr noundef %i.s, i32 noundef %.0276.i, i32 noundef %i.aq, i32 noundef %.022.lcssa.i.i, ptr noundef @.str.737, i32 noundef %.022.lcssa.i.i, ptr noundef nonnull %.0.i) ; 2 uses
  %i.as = icmp ult i32 %.022.lcssa.i.i, 128
  %or.cond.i.i = and i1 %i.ae, %i.as
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ar, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = icmp ugt i8 %i.ad, -65
  %i.av = icmp ult i32 %.022.lcssa.i.i, 16384
  %or.cond3.i.i = and i1 %i.au, %i.av
  br i1 %or.cond3.i.i, label %bb.h, label %validate_c4.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ar, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.701) ; 0 uses
  br label %validate_c4.exit.i

validate_c4.exit.i:                               ; preds = %bb.h, %bb.g
  %.not.i26 = icmp eq i16 %i.ac, 0
  br i1 %.not.i26, label %dissect_2008_16_security_12.exit, label %.lr.ph.i, !llvm.loop !107

dissect_2008_16_security_12.exit:                 ; preds = %validate_c4.exit.i, %.lr.ph
  %.028.i = phi i32 [ 1, %.lr.ph ], [ %.023.lcssa.i.i, %validate_c4.exit.i ] ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.p, i32 noundef %.028.i)
  %i.ax = add i32 %.028.i, %.031                  ; 2 uses
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %dissect_2008_16_security_12.exit, %validate_c2.exit
  %.0.lcssa = phi i32 [ %.sink.i, %validate_c2.exit ], [ %i.ax, %dissect_2008_16_security_12.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_verify(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_trp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct._dof_proto_data, align 8    ; 5 uses
  %5 = alloca %struct._dof_2008_16_security_4, align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct._dof_2008_16_security_4, align 8 ; 4 uses
  %7 = alloca %struct._dof_2008_16_security_4, align 8 ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef @.str.780)
  %i.e = load i32, ptr @proto_trp, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.g = load i32, ptr @ett_trp, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 43 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.i, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i16
  %i.l = shl nuw nsw i16 %i.k, 8
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.n = zext i8 %i.m to i16
  %i.o = or disjoint i16 %i.l, %i.n
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.i to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 9 uses
  %.0.ph.i = phi i16 [ %i.o, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.q = load i32, ptr @hf_2008_1_app_version, align 4
  %i.r = zext nneg i16 %.0.ph.i to i32
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.r) ; 3 uses
  %i.t = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.t
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.u = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %i.v = icmp eq ptr %3, null
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %validate_c2.exit
  %i.w = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_malformed, ptr noundef @.str.781) ; 0 uses
  br label %bb.bx

bb.f:                                             ; preds = %validate_c2.exit
  %i.x = getelementptr i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 12 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef @ei_malformed, ptr noundef @.str.781) ; 0 uses
  br label %bb.bx

bb.h:                                             ; preds = %bb.f
  %i.ab = load i32, ptr @proto_trp, align 4
  %.val = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 %i.ab, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ac, align 8
  %i.ad = call ptr @wmem_list_find_custom(ptr noundef %.val, ptr noundef nonnull %4, ptr noundef @p_compare) ; 2 uses
  %.not.i546 = icmp eq ptr %i.ad, null
  br i1 %.not.i546, label %dof_packet_get_proto_data.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call ptr @wmem_list_frame_data(ptr noundef nonnull %i.ad)
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %dof_packet_get_proto_data.exit

dof_packet_get_proto_data.exit:                   ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ag, %bb.i ], [ null, %bb.h ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ah = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ai = icmp eq i32 %.sink.i, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %dof_packet_get_proto_data.exit
  %i.aj = load ptr, ptr %i.c, align 8
  call void @col_append_str(ptr noundef %i.aj, i32 noundef 25, ptr noundef @.str.782)
  %i.ak = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.h, ptr noundef @ei_implicit_no_op) ; 0 uses
  br label %bb.bx

bb.k:                                             ; preds = %dof_packet_get_proto_data.exit
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.am = getelementptr i8, ptr %i.y, i64 48
  %i.an = load i8, ptr %i.am, align 8, !range !12, !noundef !13
  %i.ao = xor i8 %i.an, -1
  %i.ap = shl i8 %i.ao, 7
  %spec.select = or i8 %i.ap, %i.al               ; 2 uses
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr i8, ptr %1, i64 416       ; 13 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = zext i8 %spec.select to i32             ; 3 uses
  %i.au = call ptr @val_to_str(ptr noundef %i.as, i32 noundef %i.at, ptr noundef @trp_opcode_strings, ptr noundef @.str.741)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aq, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.au)
  %i.av = load i32, ptr @hf_trp_opcode, align 4
  %i.aw = and i32 %i.at, 127                      ; 2 uses
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = call ptr @val_to_str(ptr noundef %i.ax, i32 noundef %i.at, ptr noundef @trp_opcode_strings, ptr noundef @.str.741)
  %i.az = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.av, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef %i.aw, ptr noundef @.str.742, ptr noundef %i.ay, i32 noundef %i.aw) ; 5 uses
  %i.ba = add nuw nsw i32 %.sink.i, 1             ; 25 uses
  switch i8 %spec.select, label %bb.bx [
    i8 -128, label %bb.l
    i8 1, label %bb.m
    i8 -127, label %bb.aa
    i8 2, label %bb.ag
    i8 -126, label %bb.au
    i8 4, label %bb.av
    i8 -124, label %bb.bj
    i8 6, label %bb.bk
    i8 -122, label %bb.bn
    i8 3, label %bb.bo
    i8 -125, label %bb.bu
    i8 9, label %bb.bv
    i8 -119, label %bb.bw
  ]

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr @hf_trp_errorcode, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = add nuw nsw i32 %.sink.i, 2
  br label %bb.bx

bb.m:                                             ; preds = %bb.k
  %.not535 = icmp eq ptr %.0.i, null
  br i1 %.not535, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr i8, ptr %.0.i, i64 24
  %i.bf = load i8, ptr %i.be, align 8
  %.not536 = icmp eq i8 %i.bf, 0
  br i1 %.not536, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.az, ptr noundef @ei_trp_initiator_id_known) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bh = load i32, ptr @hf_domain, align 4
  %i.bi = load i32, ptr @ett_domain, align 4
  %i.bj = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef null) ; 4 uses
  %i.bk = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !12, !noundef !13
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = sub i32 %i.bj, %i.ba                    ; 2 uses
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = call ptr @wmem_file_scope()
  %.mask537 = and i32 %i.bn, 255
  %i.bq = zext nneg i32 %.mask537 to i64          ; 2 uses
  %i.br = call noalias ptr @wmem_alloc0(ptr noundef %i.bp, i64 noundef %i.bq) #22 ; 2 uses
  %i.bs = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.br, i32 noundef %i.ba, i64 noundef %i.bq) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0508 = phi i8 [ 0, %bb.p ], [ %i.bo, %bb.q ]  ; 3 uses
  %.0502 = phi ptr [ null, %bb.p ], [ %i.br, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bt = load i32, ptr @hf_initiator_request, align 4
  %i.bu = load i32, ptr @ett_initiator_request, align 4
  %i.bv = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.bj, i32 noundef %i.bt, i32 noundef %i.bu, ptr noundef nonnull %5) ; 3 uses
  %i.bw = load i8, ptr %i.bk, align 8, !range !12, !noundef !13
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %5, align 8               ; 2 uses
  %i.bz = call i32 @tvb_reported_length(ptr noundef %i.by) ; 2 uses
  %i.ca = trunc i32 %i.bz to i8                   ; 2 uses
  %i.cb = load ptr, ptr %i.ar, align 8
  %.mask538 = and i32 %i.bz, 255
  %i.cc = zext nneg i32 %.mask538 to i64          ; 5 uses
  %i.cd = call noalias ptr @wmem_alloc0(ptr noundef %i.cb, i64 noundef %i.cc) #22 ; 3 uses
  %i.ce = call ptr @tvb_memcpy(ptr noundef %i.by, ptr noundef %i.cd, i32 noundef 0, i64 noundef %i.cc) ; 0 uses
  %i.cf = load ptr, ptr @globals.4, align 8       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 40
  %i.ch = load i16, ptr %i.cg, align 8
  %.not566 = icmp eq i16 %i.ch, 0
  br i1 %.not566, label %.loopexit, label %.lr.ph562

.lr.ph562:                                        ; preds = %bb.s
  %i.ci = zext i8 %.0508 to i64                   ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph562, %bb.y
  %i.cj = phi ptr [ %i.cf, %.lr.ph562 ], [ %i.dj, %bb.y ] ; 5 uses
  %indvars.iv571 = phi i64 [ 0, %.lr.ph562 ], [ %indvars.iv.next572, %bb.y ] ; 2 uses
  %.0504559 = phi ptr [ null, %.lr.ph562 ], [ %.2506, %bb.y ] ; 4 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr [40 x i8], ptr %i.cl, i64 %indvars.iv571 ; 5 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 8
  %.not539 = icmp eq i8 %.0508, %i.co
  br i1 %.not539, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %i.cm, align 8
  %bcmp540 = call i32 @bcmp(ptr %.0502, ptr %i.cp, i64 %i.ci)
  %.not541 = icmp eq i32 %bcmp540, 0
  br i1 %.not541, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr i8, ptr %i.cm, i64 24
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = icmp eq i8 %i.cr, %i.ca
  br i1 %i.cs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %i.cm, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %bcmp542 = call i32 @bcmp(ptr %i.cd, ptr %i.cu, i64 %i.cc)
  %i.cv = icmp eq i32 %bcmp542, 0
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = call ptr @wmem_file_scope()
  %i.cx = call noalias dereferenceable_or_null(80) ptr @wmem_alloc0(ptr noundef %i.cw, i64 noundef 80) #22 ; 7 uses
  %i.cy = load i32, ptr @proto_trp, align 4
  call fastcc void @dof_packet_add_proto_data(ptr noundef %i.y, i32 noundef %i.cy, ptr noundef %i.cx)
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  store i8 %.0508, ptr %i.cz, align 8
  %i.da = call ptr @wmem_file_scope()
  %i.db = call noalias ptr @wmem_alloc0(ptr noundef %i.da, i64 noundef %i.ci) #22 ; 2 uses
  store ptr %i.db, ptr %i.cx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.db, ptr noundef align 1 %.0502, i64 noundef %i.ci, i1 noundef false) #26
  %i.dc = getelementptr i8, ptr %i.cx, i64 24
  store i8 %i.ca, ptr %i.dc, align 8
  %i.dd = call ptr @wmem_file_scope()
  %i.de = call noalias ptr @wmem_alloc0(ptr noundef %i.dd, i64 noundef %i.cc) #22 ; 2 uses
  %i.df = getelementptr i8, ptr %i.cx, i64 16
  store ptr %i.de, ptr %i.df, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.de, ptr noundef align 1 %i.cd, i64 noundef %i.cc, i1 noundef false) #26
  %i.dg = getelementptr i8, ptr %i.cm, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %i.cx, i64 64
  store ptr %i.dh, ptr %i.di, align 8
  %.pre575 = load ptr, ptr @globals.4, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.t, %bb.u
  %i.dj = phi ptr [ %i.cj, %bb.t ], [ %i.cj, %bb.u ], [ %.pre575, %bb.x ], [ %i.cj, %bb.w ], [ %i.cj, %bb.v ] ; 2 uses
  %.2506 = phi ptr [ %.0504559, %bb.t ], [ %.0504559, %bb.u ], [ %i.cx, %bb.x ], [ %.0504559, %bb.w ], [ %.0504559, %bb.v ] ; 2 uses
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 40
  %i.dl = load i16, ptr %i.dk, align 8
  %i.dm = zext i16 %i.dl to i64
  %i.dn = icmp samesign ult i64 %indvars.iv.next572, %i.dm
  br i1 %i.dn, label %bb.t, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %bb.y, %bb.s, %bb.r
  %.3507 = phi ptr [ null, %bb.r ], [ null, %bb.s ], [ %.2506, %bb.y ] ; 5 uses
  %i.do = load i32, ptr @hf_group_identifier, align 4
  %i.dp = load i32, ptr @ett_group_identifier, align 4
  %i.dq = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_8, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.bv, i32 noundef %i.do, i32 noundef %i.dp, ptr noundef null) ; 3 uses
  %.not543 = icmp eq ptr %.3507, null
  br i1 %.not543, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.dr = sub i32 %i.dq, %i.bv
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr i8, ptr %.3507, i64 40    ; 3 uses
  store i8 %i.ds, ptr %i.dt, align 8
  %i.du = call ptr @wmem_file_scope()
  %i.dv = load i8, ptr %i.dt, align 8
  %i.dw = zext i8 %i.dv to i64
  %i.dx = call noalias ptr @wmem_alloc0(ptr noundef %i.du, i64 noundef %i.dw) #22 ; 2 uses
  %i.dy = getelementptr i8, ptr %.3507, i64 32
  store ptr %i.dx, ptr %i.dy, align 8
  %i.dz = load i8, ptr %i.dt, align 8
  %i.ea = zext i8 %i.dz to i64
  %i.eb = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.dx, i32 noundef %i.bv, i64 noundef %i.ea) ; 0 uses
  %i.ec = sub i32 %i.dq, %i.bj
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = getelementptr i8, ptr %.3507, i64 56    ; 3 uses
  store i16 %i.ed, ptr %i.ee, align 8
  %i.ef = call ptr @wmem_file_scope()
  %i.eg = load i16, ptr %i.ee, align 8
  %i.eh = zext i16 %i.eg to i64
  %i.ei = call noalias ptr @wmem_alloc0(ptr noundef %i.ef, i64 noundef %i.eh) #22 ; 2 uses
  %i.ej = getelementptr i8, ptr %.3507, i64 48
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = load i16, ptr %i.ee, align 8
  %i.el = zext i16 %i.ek to i64
  %i.em = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.ei, i32 noundef %i.bj, i64 noundef %i.el) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bx

bb.aa:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not534 = icmp eq ptr %.0.i, null
  br i1 %.not534, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr i8, ptr %.0.i, i64 72
  %i.eo = load i8, ptr %i.en, align 8, !range !12, !noundef !13
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.az, ptr noundef @ei_trp_kek_discovered) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.er = load i32, ptr @hf_initiator_ticket, align 4
  %i.es = load i32, ptr @ett_initiator_ticket, align 4
  %i.et = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.er, i32 noundef %i.es, ptr noundef null) ; 7 uses
  %i.eu = load i32, ptr @hf_thb, align 4
  %i.ev = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.et, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ew = add i32 %i.et, 1
  %i.ex = load i32, ptr @hf_tmin, align 4
  %i.ey = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ex, ptr noundef %0, i32 noundef %i.ew, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ez = add i32 %i.et, 2
  %i.fa = load i32, ptr @hf_tmax, align 4
  %i.fb = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.ez, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fc = add i32 %i.et, 3
  %i.fd = load i32, ptr @hf_trp_epoch, align 4
  %i.fe = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.fc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ff = add i32 %i.et, 5
  %i.fg = load i32, ptr @hf_sidg, align 4
  %i.fh = load i32, ptr @ett_sidg, align 4
  %i.fi = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2009_11_type_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ff, i32 noundef %i.fg, i32 noundef %i.fh, ptr noundef null)
  %i.fj = load i32, ptr @hf_security_scope, align 4
  %i.fk = load i32, ptr @ett_security_scope, align 4
  %i.fl = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_10, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.fi, i32 noundef %i.fj, i32 noundef %i.fk, ptr noundef null) ; 3 uses
  %i.fm = load i32, ptr @hf_security_mode, align 4
  %i.fn = load i32, ptr @ett_security_mode, align 4
  %i.fo = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_13, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef %i.fn, ptr noundef null) ; 4 uses
  %i.fp = getelementptr i8, ptr %i.y, i64 24
  %i.fq = load i8, ptr %i.fp, align 8, !range !12, !noundef !13
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = sub i32 %i.fo, %i.fl
  %i.ft = load ptr, ptr %i.ar, align 8
  %i.fu = and i32 %i.fs, 255
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = call noalias ptr @wmem_alloc0(ptr noundef %i.ft, i64 noundef %i.fv) #22
  %i.fx = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.fw, i32 noundef %i.fl, i64 noundef %i.fv) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.fy = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %i.fo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.fz = load i32, ptr %i.a, align 4
  %i.ga = or i32 %i.fz, 1073741824                ; 4 uses
  store i32 %i.ga, ptr %i.a, align 4
  %i.gb = load i32, ptr @hf_ssid, align 4
  %i.gc = sub i32 %i.fy, %i.fo
  %i.gd = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.fo, i32 noundef %i.gc, i32 noundef %i.ga, ptr noundef @.str.783, i32 noundef %i.ga)
  %i.ge = load i32, ptr %i.b, align 4
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.gd, i32 noundef %i.ga, i32 noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.gf = load i32, ptr @hf_responder_pg, align 4
  %i.gg = load i32, ptr @ett_responder_pg, align 4
  %i.gh = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_2, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.fy, i32 noundef %i.gf, i32 noundef %i.gg, ptr noundef null)
  %i.gi = load i32, ptr @hf_responder_validation, align 4
  %i.gj = load i32, ptr @ett_responder_validation, align 4
  %i.gk = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_11, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.gh, i32 noundef %i.gi, i32 noundef %i.gj, ptr noundef null)
  %i.gl = load i32, ptr @hf_initiator_validation, align 4
  %i.gm = load i32, ptr @ett_initiator_validation, align 4
  %i.gn = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_11, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.gk, i32 noundef %i.gl, i32 noundef %i.gm, ptr noundef null) ; 2 uses
  %i.go = sub i32 %i.gn, %i.et
  %i.gp = load ptr, ptr %i.ar, align 8
  %i.gq = and i32 %i.go, 255
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = call noalias ptr @wmem_alloc0(ptr noundef %i.gp, i64 noundef %i.gr) #22
  %i.gt = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.gs, i32 noundef %i.et, i64 noundef %i.gr) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bx

bb.ag:                                            ; preds = %bb.k
  %.not525 = icmp eq ptr %.0.i, null
  br i1 %.not525, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gu = getelementptr i8, ptr %.0.i, i64 24
  %i.gv = load i8, ptr %i.gu, align 8
  %.not526 = icmp eq i8 %i.gv, 0
  br i1 %.not526, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gw = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.az, ptr noundef @ei_trp_initiator_id_known) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.gx = load i32, ptr @hf_domain, align 4
  %i.gy = load i32, ptr @ett_domain, align 4
  %i.gz = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.gx, i32 noundef %i.gy, ptr noundef null) ; 4 uses
  %i.ha = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 8, !range !12, !noundef !13
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = sub i32 %i.gz, %i.ba                    ; 2 uses
  %i.he = trunc i32 %i.hd to i8
  %i.hf = load ptr, ptr %i.ar, align 8
  %.mask527 = and i32 %i.hd, 255
  %i.hg = zext nneg i32 %.mask527 to i64          ; 2 uses
  %i.hh = call noalias ptr @wmem_alloc0(ptr noundef %i.hf, i64 noundef %i.hg) #22 ; 2 uses
  %i.hi = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.hh, i32 noundef %i.ba, i64 noundef %i.hg) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0501 = phi ptr [ null, %bb.aj ], [ %i.hh, %bb.ak ] ; 2 uses
  %.0500 = phi i8 [ 0, %bb.aj ], [ %i.he, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.hj = load i32, ptr @hf_initiator_request, align 4
  %i.hk = load i32, ptr @ett_initiator_request, align 4
  %i.hl = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.gz, i32 noundef %i.hj, i32 noundef %i.hk, ptr noundef nonnull %6) ; 2 uses
  %i.hm = load i8, ptr %i.ha, align 8, !range !12, !noundef !13
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ho = load ptr, ptr %6, align 8               ; 2 uses
  %i.hp = call i32 @tvb_reported_length(ptr noundef %i.ho) ; 2 uses
  %i.hq = trunc i32 %i.hp to i8                   ; 2 uses
  %i.hr = load ptr, ptr %i.ar, align 8
  %.mask528 = and i32 %i.hp, 255
  %i.hs = zext nneg i32 %.mask528 to i64          ; 5 uses
  %i.ht = call noalias ptr @wmem_alloc0(ptr noundef %i.hr, i64 noundef %i.hs) #22 ; 3 uses
  %i.hu = call ptr @tvb_memcpy(ptr noundef %i.ho, ptr noundef %i.ht, i32 noundef 0, i64 noundef %i.hs) ; 0 uses
  %i.hv = load ptr, ptr @globals.4, align 8       ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 40
  %i.hx = load i16, ptr %i.hw, align 8
  %.not565 = icmp eq i16 %i.hx, 0
  br i1 %.not565, label %.thread, label %.lr.ph557

.lr.ph557:                                        ; preds = %bb.am
  %i.hy = zext i8 %.0500 to i64                   ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph557, %bb.as
  %i.hz = phi ptr [ %i.hv, %.lr.ph557 ], [ %i.iz, %bb.as ] ; 5 uses
  %indvars.iv568 = phi i64 [ 0, %.lr.ph557 ], [ %indvars.iv.next569, %bb.as ] ; 2 uses
  %.0496555 = phi ptr [ null, %.lr.ph557 ], [ %.2498, %bb.as ] ; 4 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr [40 x i8], ptr %i.ib, i64 %indvars.iv568 ; 5 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %i.ie = load i8, ptr %i.id, align 8
  %.not529 = icmp eq i8 %.0500, %i.ie
  br i1 %.not529, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr %i.ic, align 8
  %bcmp530 = call i32 @bcmp(ptr %.0501, ptr %i.if, i64 %i.hy)
  %.not531 = icmp eq i32 %bcmp530, 0
  br i1 %.not531, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ig = getelementptr i8, ptr %i.ic, i64 24
  %i.ih = load i8, ptr %i.ig, align 8
  %i.ii = icmp eq i8 %i.ih, %i.hq
  br i1 %i.ii, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ij = getelementptr i8, ptr %i.ic, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  %bcmp532 = call i32 @bcmp(ptr %i.ht, ptr %i.ik, i64 %i.hs)
  %i.il = icmp eq i32 %bcmp532, 0
  br i1 %i.il, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.im = call ptr @wmem_file_scope()
  %i.in = call noalias dereferenceable_or_null(80) ptr @wmem_alloc0(ptr noundef %i.im, i64 noundef 80) #22 ; 7 uses
  %i.io = load i32, ptr @proto_trp, align 4
  call fastcc void @dof_packet_add_proto_data(ptr noundef %i.y, i32 noundef %i.io, ptr noundef %i.in)
  %i.ip = getelementptr i8, ptr %i.in, i64 8
  store i8 %.0500, ptr %i.ip, align 8
  %i.iq = call ptr @wmem_file_scope()
  %i.ir = call noalias ptr @wmem_alloc0(ptr noundef %i.iq, i64 noundef %i.hy) #22 ; 2 uses
  store ptr %i.ir, ptr %i.in, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ir, ptr noundef align 1 %.0501, i64 noundef %i.hy, i1 noundef false) #26
  %i.is = getelementptr i8, ptr %i.in, i64 24
  store i8 %i.hq, ptr %i.is, align 8
  %i.it = call ptr @wmem_file_scope()
  %i.iu = call noalias ptr @wmem_alloc0(ptr noundef %i.it, i64 noundef %i.hs) #22 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.in, i64 16
  store ptr %i.iu, ptr %i.iv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.iu, ptr noundef align 1 %i.ht, i64 noundef %i.hs, i1 noundef false) #26
  %i.iw = getelementptr i8, ptr %i.ic, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr i8, ptr %i.in, i64 64
  store ptr %i.ix, ptr %i.iy, align 8
  %.pre574 = load ptr, ptr @globals.4, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.an, %bb.ao
  %i.iz = phi ptr [ %i.hz, %bb.an ], [ %i.hz, %bb.ao ], [ %.pre574, %bb.ar ], [ %i.hz, %bb.aq ], [ %i.hz, %bb.ap ] ; 2 uses
  %.2498 = phi ptr [ %.0496555, %bb.an ], [ %.0496555, %bb.ao ], [ %i.in, %bb.ar ], [ %.0496555, %bb.aq ], [ %.0496555, %bb.ap ] ; 4 uses
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 40
  %i.jb = load i16, ptr %i.ja, align 8
  %i.jc = zext i16 %i.jb to i64
  %i.jd = icmp samesign ult i64 %indvars.iv.next569, %i.jc
  br i1 %i.jd, label %bb.an, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.as
  %.not533 = icmp eq ptr %.2498, null
  br i1 %.not533, label %.thread, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.je = sub i32 %i.hl, %i.gz
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %.2498, i64 56    ; 3 uses
  store i16 %i.jf, ptr %i.jg, align 8
  %i.jh = call ptr @wmem_file_scope()
  %i.ji = load i16, ptr %i.jg, align 8
  %i.jj = zext i16 %i.ji to i64
  %i.jk = call noalias ptr @wmem_alloc0(ptr noundef %i.jh, i64 noundef %i.jj) #22 ; 2 uses
  %i.jl = getelementptr i8, ptr %.2498, i64 48
  store ptr %i.jk, ptr %i.jl, align 8
  %i.jm = load i16, ptr %i.jg, align 8
  %i.jn = zext i16 %i.jm to i64
  %i.jo = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.jk, i32 noundef %i.gz, i64 noundef %i.jn) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.al, %bb.at, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bx

bb.au:                                            ; preds = %bb.k
  %i.jp = load i32, ptr @hf_initiator_ticket, align 4
  %i.jq = load i32, ptr @ett_initiator_ticket, align 4
  %i.jr = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.jp, i32 noundef %i.jq, ptr noundef null)
  br label %bb.bx

bb.av:                                            ; preds = %bb.k
  %.not518 = icmp eq ptr %.0.i, null
  br i1 %.not518, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.js = getelementptr i8, ptr %.0.i, i64 24
  %i.jt = load i8, ptr %i.js, align 8
  %.not519 = icmp eq i8 %i.jt, 0
  br i1 %.not519, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ju = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.az, ptr noundef @ei_trp_initiator_id_known) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.jv = load i32, ptr @hf_domain, align 4
  %i.jw = load i32, ptr @ett_domain, align 4
  %i.jx = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.jv, i32 noundef %i.jw, ptr noundef null) ; 5 uses
  %i.jy = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !range !12, !noundef !13
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kb = sub i32 %i.jx, %i.ba                    ; 2 uses
  %i.kc = trunc i32 %i.kb to i8
  %i.kd = load ptr, ptr %i.ar, align 8
  %.mask = and i32 %i.kb, 255
  %i.ke = zext nneg i32 %.mask to i64             ; 2 uses
  %i.kf = call noalias ptr @wmem_alloc0(ptr noundef %i.kd, i64 noundef %i.ke) #22 ; 2 uses
  %i.kg = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.kf, i32 noundef %i.ba, i64 noundef %i.ke) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0494 = phi ptr [ null, %bb.ay ], [ %i.kf, %bb.az ] ; 2 uses
  %.0493 = phi i8 [ 0, %bb.ay ], [ %i.kc, %bb.az ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.kh = load i32, ptr @hf_trp_duration, align 4
  %i.ki = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.kh, ptr noundef %0, i32 noundef %i.jx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kj = add i32 %i.jx, 1
  %i.kk = load i32, ptr @hf_initiator_request, align 4
  %i.kl = load i32, ptr @ett_initiator_request, align 4
  %i.km = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_4, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.kj, i32 noundef %i.kk, i32 noundef %i.kl, ptr noundef nonnull %7) ; 3 uses
  %i.kn = load i8, ptr %i.jy, align 8, !range !12, !noundef !13
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %.loopexit552, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kp = load ptr, ptr %7, align 8               ; 2 uses
  %i.kq = call i32 @tvb_reported_length(ptr noundef %i.kp) ; 2 uses
  %i.kr = trunc i32 %i.kq to i8                   ; 2 uses
  %i.ks = load ptr, ptr %i.ar, align 8
  %.mask520 = and i32 %i.kq, 255
  %i.kt = zext nneg i32 %.mask520 to i64          ; 5 uses
  %i.ku = call noalias ptr @wmem_alloc0(ptr noundef %i.ks, i64 noundef %i.kt) #22 ; 3 uses
  %i.kv = call ptr @tvb_memcpy(ptr noundef %i.kp, ptr noundef %i.ku, i32 noundef 0, i64 noundef %i.kt) ; 0 uses
  %i.kw = load ptr, ptr @globals.4, align 8       ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 40
  %i.ky = load i16, ptr %i.kx, align 8
  %.not564 = icmp eq i16 %i.ky, 0
  br i1 %.not564, label %.loopexit552, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb
  %i.kz = zext i8 %.0493 to i64                   ; 3 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %bb.bh
  %i.la = phi ptr [ %i.kw, %.lr.ph ], [ %i.ma, %bb.bh ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 2 uses
  %.0492553 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.bh ] ; 4 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = getelementptr [40 x i8], ptr %i.lc, i64 %indvars.iv ; 5 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 8
  %i.lf = load i8, ptr %i.le, align 8
  %.not521 = icmp eq i8 %.0493, %i.lf
  br i1 %.not521, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.lg = load ptr, ptr %i.ld, align 8
  %bcmp = call i32 @bcmp(ptr %.0494, ptr %i.lg, i64 %i.kz)
  %.not522 = icmp eq i32 %bcmp, 0
  br i1 %.not522, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.lh = getelementptr i8, ptr %i.ld, i64 24
  %i.li = load i8, ptr %i.lh, align 8
  %i.lj = icmp eq i8 %i.li, %i.kr
  br i1 %i.lj, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.lk = getelementptr i8, ptr %i.ld, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  %bcmp523 = call i32 @bcmp(ptr %i.ku, ptr %i.ll, i64 %i.kt)
  %i.lm = icmp eq i32 %bcmp523, 0
  br i1 %i.lm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ln = call ptr @wmem_file_scope()
  %i.lo = call noalias dereferenceable_or_null(80) ptr @wmem_alloc0(ptr noundef %i.ln, i64 noundef 80) #22 ; 7 uses
  %i.lp = load i32, ptr @proto_trp, align 4
  call fastcc void @dof_packet_add_proto_data(ptr noundef %i.y, i32 noundef %i.lp, ptr noundef %i.lo)
  %i.lq = getelementptr i8, ptr %i.lo, i64 8
  store i8 %.0493, ptr %i.lq, align 8
  %i.lr = call ptr @wmem_file_scope()
  %i.ls = call noalias ptr @wmem_alloc0(ptr noundef %i.lr, i64 noundef %i.kz) #22 ; 2 uses
  store ptr %i.ls, ptr %i.lo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ls, ptr noundef align 1 %.0494, i64 noundef %i.kz, i1 noundef false) #26
  %i.lt = getelementptr i8, ptr %i.lo, i64 24
  store i8 %i.kr, ptr %i.lt, align 8
  %i.lu = call ptr @wmem_file_scope()
  %i.lv = call noalias ptr @wmem_alloc0(ptr noundef %i.lu, i64 noundef %i.kt) #22 ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lo, i64 16
  store ptr %i.lv, ptr %i.lw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.lv, ptr noundef align 1 %i.ku, i64 noundef %i.kt, i1 noundef false) #26
  %i.lx = getelementptr i8, ptr %i.ld, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = getelementptr i8, ptr %i.lo, i64 64
  store ptr %i.ly, ptr %i.lz, align 8
  %.pre = load ptr, ptr @globals.4, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bc, %bb.bd
  %i.ma = phi ptr [ %i.la, %bb.bc ], [ %i.la, %bb.bd ], [ %.pre, %bb.bg ], [ %i.la, %bb.bf ], [ %i.la, %bb.be ] ; 2 uses
  %.2 = phi ptr [ %.0492553, %bb.bc ], [ %.0492553, %bb.bd ], [ %i.lo, %bb.bg ], [ %.0492553, %bb.bf ], [ %.0492553, %bb.be ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 40
  %i.mc = load i16, ptr %i.mb, align 8
  %i.md = zext i16 %i.mc to i64
  %i.me = icmp samesign ult i64 %indvars.iv.next, %i.md
  br i1 %i.me, label %bb.bc, label %.loopexit552, !llvm.loop !111

.loopexit552:                                     ; preds = %bb.bh, %bb.bb, %bb.ba
  %.3 = phi ptr [ null, %bb.ba ], [ null, %bb.bb ], [ %.2, %bb.bh ] ; 5 uses
  %i.mf = load i32, ptr @hf_node_identifier, align 4
  %i.mg = load i32, ptr @ett_node_identifier, align 4
  %i.mh = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_8, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.km, i32 noundef %i.mf, i32 noundef %i.mg, ptr noundef null) ; 3 uses
  %.not524 = icmp eq ptr %.3, null
  br i1 %.not524, label %.critedge545, label %bb.bi

bb.bi:                                            ; preds = %.loopexit552
  %i.mi = sub i32 %i.mh, %i.km
  %i.mj = trunc i32 %i.mi to i8
  %i.mk = getelementptr i8, ptr %.3, i64 40       ; 3 uses
  store i8 %i.mj, ptr %i.mk, align 8
  %i.ml = call ptr @wmem_file_scope()
  %i.mm = load i8, ptr %i.mk, align 8
  %i.mn = zext i8 %i.mm to i64
  %i.mo = call noalias ptr @wmem_alloc0(ptr noundef %i.ml, i64 noundef %i.mn) #22 ; 2 uses
  %i.mp = getelementptr i8, ptr %.3, i64 32
  store ptr %i.mo, ptr %i.mp, align 8
  %i.mq = load i8, ptr %i.mk, align 8
  %i.mr = zext i8 %i.mq to i64
  %i.ms = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.mo, i32 noundef %i.km, i64 noundef %i.mr) ; 0 uses
  %i.mt = sub i32 %i.mh, %i.jx
  %i.mu = trunc i32 %i.mt to i16
  %i.mv = getelementptr i8, ptr %.3, i64 56       ; 3 uses
  store i16 %i.mu, ptr %i.mv, align 8
  %i.mw = call ptr @wmem_file_scope()
  %i.mx = load i16, ptr %i.mv, align 8
  %i.my = zext i16 %i.mx to i64
  %i.mz = call noalias ptr @wmem_alloc0(ptr noundef %i.mw, i64 noundef %i.my) #22 ; 2 uses
  %i.na = getelementptr i8, ptr %.3, i64 48
  store ptr %i.mz, ptr %i.na, align 8
  %i.nb = load i16, ptr %i.mv, align 8
  %i.nc = zext i16 %i.nb to i64
  %i.nd = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.mz, i32 noundef %i.jx, i64 noundef %i.nc) ; 0 uses
  br label %.critedge545

.critedge545:                                     ; preds = %.loopexit552, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bx

bb.bj:                                            ; preds = %bb.k
  %i.ne = load i32, ptr @hf_initiator_ticket, align 4
  %i.nf = load i32, ptr @ett_initiator_ticket, align 4
  %i.ng = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.ne, i32 noundef %i.nf, ptr noundef null) ; 4 uses
  %i.nh = load i32, ptr @hf_trp_duration, align 4
  %i.ni = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.nh, ptr noundef %0, i32 noundef %i.ng, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nj = add i32 %i.ng, 1
  %i.nk = load i32, ptr @hf_security_scope, align 4
  %i.nl = load i32, ptr @ett_security_scope, align 4
  %i.nm = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_10, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.nj, i32 noundef %i.nk, i32 noundef %i.nl, ptr noundef null)
  %i.nn = load i32, ptr @hf_initiator_validation, align 4
  %i.no = load i32, ptr @ett_initiator_validation, align 4
  %i.np = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_11, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.nm, i32 noundef %i.nn, i32 noundef %i.no, ptr noundef null) ; 2 uses
  %i.nq = sub i32 %i.np, %i.ng
  %i.nr = load ptr, ptr %i.ar, align 8
  %i.ns = and i32 %i.nq, 255
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = call noalias ptr @wmem_alloc0(ptr noundef %i.nr, i64 noundef %i.nt) #22
  %i.nv = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.nu, i32 noundef %i.ng, i64 noundef %i.nt) ; 0 uses
  br label %bb.bx

bb.bk:                                            ; preds = %bb.k
  %i.nw = load i32, ptr @hf_domain, align 4
  %i.nx = load i32, ptr @ett_domain, align 4
  %i.ny = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.nw, i32 noundef %i.nx, ptr noundef null) ; 2 uses
  %i.nz = getelementptr i8, ptr %i.y, i64 24
  %i.oa = load i8, ptr %i.nz, align 8, !range !12, !noundef !13
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oc = sub i32 %i.ny, %i.ba
  %i.od = load ptr, ptr %i.ar, align 8
  %i.oe = and i32 %i.oc, 255
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = call noalias ptr @wmem_alloc0(ptr noundef %i.od, i64 noundef %i.of) #22
  %i.oh = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.og, i32 noundef %i.ba, i64 noundef %i.of) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.oi = load i32, ptr @hf_identity_resolution, align 4
  %i.oj = load i32, ptr @ett_identity_resolution, align 4
  %i.ok = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_3_2, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ny, i32 noundef %i.oi, i32 noundef %i.oj, ptr noundef null)
  br label %bb.bx

bb.bn:                                            ; preds = %bb.k
  %i.ol = load i32, ptr @hf_identity_resolution, align 4
  %i.om = load i32, ptr @ett_identity_resolution, align 4
  %i.on = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_3_2, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.ol, i32 noundef %i.om, ptr noundef null)
  br label %bb.bx

bb.bo:                                            ; preds = %bb.k
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oo = getelementptr i8, ptr %.0.i, i64 24
  %i.op = load i8, ptr %i.oo, align 8
  %.not517 = icmp eq i8 %i.op, 0
  br i1 %.not517, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.az, ptr noundef @ei_trp_initiator_id_known) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.or = load i32, ptr @hf_domain, align 4
  %i.os = load i32, ptr @ett_domain, align 4
  %i.ot = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.or, i32 noundef %i.os, ptr noundef null) ; 2 uses
  %i.ou = getelementptr i8, ptr %i.y, i64 24
  %i.ov = load i8, ptr %i.ou, align 8, !range !12, !noundef !13
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ox = sub i32 %i.ot, %i.ba
  %i.oy = load ptr, ptr %i.ar, align 8
  %i.oz = and i32 %i.ox, 255
  %i.pa = zext nneg i32 %i.oz to i64              ; 2 uses
  %i.pb = call noalias ptr @wmem_alloc0(ptr noundef %i.oy, i64 noundef %i.pa) #22
  %i.pc = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.pb, i32 noundef %i.ba, i64 noundef %i.pa) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.pd = load i32, ptr @hf_responder_request, align 4
  %i.pe = load i32, ptr @ett_responder_request, align 4
  %i.pf = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_6_2, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ot, i32 noundef %i.pd, i32 noundef %i.pe, ptr noundef null)
  %i.pg = load i32, ptr @hf_initiator_request, align 4
  %i.ph = load i32, ptr @ett_initiator_request, align 4
  %i.pi = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_6_1, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.pf, i32 noundef %i.pg, i32 noundef %i.ph, ptr noundef null)
  br label %bb.bx

bb.bu:                                            ; preds = %bb.k
  %i.pj = load i32, ptr @hf_responder_ticket, align 4
  %i.pk = load i32, ptr @ett_responder_ticket, align 4
  %i.pl = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.pj, i32 noundef %i.pk, ptr noundef null)
  %i.pm = load i32, ptr @hf_initiator_ticket, align 4
  %i.pn = load i32, ptr @ett_initiator_ticket, align 4
  %i.po = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_5, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.pl, i32 noundef %i.pm, i32 noundef %i.pn, ptr noundef null) ; 3 uses
  %i.pp = load i32, ptr @hf_authentication_block, align 4
  %i.pq = load i32, ptr @ett_authentication_block, align 4
  %i.pr = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_6_3, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.po, i32 noundef %i.pp, i32 noundef %i.pq, ptr noundef null) ; 2 uses
  %i.ps = sub i32 %i.pr, %i.po
  %i.pt = load ptr, ptr %i.ar, align 8
  %i.pu = and i32 %i.ps, 255
  %i.pv = zext nneg i32 %i.pu to i64              ; 2 uses
  %i.pw = call noalias ptr @wmem_alloc0(ptr noundef %i.pt, i64 noundef %i.pv) #22
  %i.px = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.pw, i32 noundef %i.po, i64 noundef %i.pv) ; 0 uses
  br label %bb.bx

bb.bv:                                            ; preds = %bb.k
  %i.py = load i32, ptr @hf_domain, align 4
  %i.pz = load i32, ptr @ett_domain, align 4
  %i.qa = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_7, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.ba, i32 noundef %i.py, i32 noundef %i.pz, ptr noundef null)
  %i.qb = load i32, ptr @hf_identity_resolution, align 4
  %i.qc = load i32, ptr @ett_identity_resolution, align 4
  %i.qd = call fastcc i32 @dof_dissect_pdu_as_field(ptr noundef @dissect_2008_16_security_3_1, ptr noundef %0, ptr noundef %1, ptr noundef %i.h, i32 noundef %i.qa, i32 noundef %i.qb, i32 noundef %i.qc, ptr noundef null) ; 2 uses
  %i.qe = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.qd)
  %i.qf = call i32 @call_data_dissector(ptr noundef %i.qe, ptr noundef %1, ptr noundef %i.h) ; 0 uses
  br label %bb.bx

bb.bw:                                            ; preds = %bb.k
  %i.qg = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ba)
  %i.qh = call i32 @call_data_dissector(ptr noundef %i.qg, ptr noundef %1, ptr noundef %i.h) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.k, %bb.l, %.critedge, %bb.af, %.thread, %bb.au, %.critedge545, %bb.bj, %bb.bm, %bb.bn, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.j, %bb.g, %bb.e
  %.0 = phi i32 [ %.sink.i, %bb.e ], [ %.sink.i, %bb.g ], [ %.sink.i, %bb.j ], [ %i.ba, %bb.k ], [ %i.bd, %bb.l ], [ %i.dq, %.critedge ], [ %i.gn, %bb.af ], [ %i.hl, %.thread ], [ %i.jr, %bb.au ], [ %i.mh, %.critedge545 ], [ %i.np, %bb.bj ], [ %i.ok, %bb.bm ], [ %i.on, %bb.bn ], [ %i.pi, %bb.bt ], [ %i.pr, %bb.bu ], [ %i.qd, %bb.bv ], [ %i.ba, %bb.bw ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @dissect_trp_dsp(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_trp_dsp_option, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 3, 32773) i32 @dissect_2008_16_security_3_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.a, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i16
  %i.d = shl nuw nsw i16 %i.c, 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.d, %i.f
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.a to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 5 uses
  %.0.ph.i = phi i16 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = load i32, ptr @hf_security_3_2_credential_type, align 4
  %i.j = zext nneg i16 %.0.ph.i to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.j)
  %i.l = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.l
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %i.n = load i32, ptr @hf_security_3_2_stage, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = add nuw nsw i32 %.sink.i, 1              ; 3 uses
  %i.q = add nuw nsw i32 %.sink.i, 2              ; 2 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.p) ; 3 uses
  %.not.i30 = icmp slt i8 %i.r, 0                 ; 2 uses
  br i1 %.not.i30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %validate_c2.exit
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i16
  %i.u = shl nuw nsw i16 %i.t, 8
  %i.v = add nuw nsw i32 %.sink.i, 3
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.q)
  %i.x = zext i8 %i.w to i16
  %i.y = or disjoint i16 %i.u, %i.x
  br label %read_c2.exit34

bb.f:                                             ; preds = %validate_c2.exit
  %i.z = zext nneg i8 %i.r to i16
  br label %read_c2.exit34

read_c2.exit34:                                   ; preds = %bb.e, %bb.f
  %.015.ph.i32 = phi i32 [ %i.v, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %.0.ph.i33 = phi i16 [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.aa = load i32, ptr @hf_security_3_2_length, align 4
  %i.ab = sub nuw nsw i32 %.015.ph.i32, %i.p
  %i.ac = zext nneg i16 %.0.ph.i33 to i32         ; 3 uses
  %i.ad = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.ab, i32 noundef %i.ac)
  %i.ae = icmp samesign ult i16 %.0.ph.i33, 128
  %or.cond.i35 = and i1 %.not.i30, %i.ae
  br i1 %or.cond.i35, label %bb.g, label %validate_c2.exit36

bb.g:                                             ; preds = %read_c2.exit34
  %i.af = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ad, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit36

validate_c2.exit36:                               ; preds = %read_c2.exit34, %bb.g
  %i.ag = load i32, ptr @hf_security_3_2_public_data, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.015.ph.i32, i32 noundef %i.ac, i32 noundef 0) ; 0 uses
  %i.ai = add nuw nsw i32 %.015.ph.i32, %i.ac
  ret i32 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { allocsize(0) }
attributes #25 = { allocsize(0,1) }
attributes #26 = { nounwind }
attributes #27 = { allocsize(2) }

!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{!3, !11}
!4 = distinct !{ptr @dof_dissect_pdu_as_field, null}
!5 = !{i32 8, !"cf-protection-return", i32 1}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"probe-stack", !"inline-asm"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{null, null}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, i1 true, !"memcpy.inline"}
!38 = distinct !{!38, !37, !"memcpy.inline: argument 1"}
!39 = distinct !{!39, !37, !"memcpy.inline: argument 0"}
!40 = !{!39, !38}
!41 = distinct !{null}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, i1 true, !"memcpy.inline"}
!48 = distinct !{!48, !47, !"memcpy.inline: argument 1"}
!49 = distinct !{!49, !47, !"memcpy.inline: argument 0"}
!50 = !{!49, !48}
!51 = distinct !{!51, !11, !15, !16}
!52 = distinct !{!52, !11, !16, !15}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !11, !15, !16}
!55 = distinct !{!55, !11, !16, !15}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11, !15, !16}
!59 = distinct !{!59, !11, !16, !15}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, i1 true, !"memcpy.inline"}
!70 = distinct !{!70, !69, !"memcpy.inline: argument 1"}
!71 = distinct !{!71, !69, !"memcpy.inline: argument 0"}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = !{!71, !70}
!75 = distinct !{!75, i1 true, !"memcpy.inline"}
!76 = distinct !{!76, !75, !"memcpy.inline: argument 1"}
!77 = distinct !{!77, !75, !"memcpy.inline: argument 0"}
!78 = !{!77, !76}
!79 = distinct !{null}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, i1 true, !"memcpy.inline"}
!86 = distinct !{!86, !85, !"memcpy.inline: argument 1"}
!87 = distinct !{!87, !85, !"memcpy.inline: argument 0"}
!88 = !{!87, !86}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, i1 true, !"memcpy.inline"}
!91 = distinct !{!91, !90, !"memcpy.inline: argument 1"}
!92 = distinct !{!92, !90, !"memcpy.inline: argument 0"}
!93 = distinct !{!93, !11, !15, !16}
!94 = distinct !{!94, !11, !16, !15}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = !{!92, !91}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
end_hunk_6
