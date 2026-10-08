Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wsp?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0_@wkh_accept_encoding:bb.a
  %.0112133 = phi i32 [ %i.ak, %bb.w ], [ %i.k, %bb.b ]
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.bk, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread126

.thread126:                                       ; preds = %bb.v, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %.thread130, %bb.w
  %.0112129 = phi i32 [ %i.ak, %bb.w ], [ %.0112133, %.thread130 ], [ %i.ak, %bb.v ], [ %i.y, %bb.h ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0112129
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_accept_language(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_accept_language, align 4
  %i.b = tail call fastcc i32 @wkh_accept_x_q_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.190, ptr noundef nonnull @vals_languages_ext, ptr noundef nonnull @.str.789)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_accept_ranges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_accept_ranges, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.931)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2                            ; 3 uses
  switch i8 %i.e, label %bb.k [
    i8 -128, label %bb.c
    i8 -127, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @hf_hdr_accept_ranges, align 4
  %i.l = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.932) ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr @hf_hdr_accept_ranges, align 4
  %i.n = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.m, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.933) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.o = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.o, -31
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %3, i64 416
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @tvb_get_stringz_enc(ptr noundef %i.q, ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.s = load i32, ptr %i.b, align 4
  %i.t = add i32 %i.s, %i.d                       ; 2 uses
  %i.u = load i32, ptr @hf_hdr_accept_ranges, align 4
  %i.v = sub i32 %i.t, %2
  %i.w = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.u, ptr noundef %1, i32 noundef %2, i32 noundef %i.v, ptr noundef %i.r) ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.e, 31
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add i32 %2, 2
  %i.z = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.y, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = add i32 %i.aa, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.ad = zext i8 %i.ac to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.z, %bb.h ], [ %i.ad, %bb.i ]
  %storemerge = phi i32 [ %i.ab, %bb.h ], [ 1, %bb.i ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.ae = add i32 %storemerge, %i.d
  %i.af = add i32 %i.ae, %.sink
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.af, %bb.j ]
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ag, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.c, %bb.k
  %.052 = phi i32 [ %.0, %bb.k ], [ %i.t, %bb.f ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.052
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_age(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 6 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = load i32, ptr @ett_age, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.196)
  %i.g = load i32, ptr @hf_hdr_name_value, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %2, 2
  %i.j = and i8 %i.d, 127                         ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = getelementptr i8, ptr %3, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq i8 %i.j, 1
  %i.o = select i1 %i.n, ptr @.str.935, ptr @.str.936
  %i.p = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.m, ptr noundef nonnull @.str.934, i32 noundef %i.k, ptr noundef nonnull %i.o)
  %i.q = load i32, ptr @hf_hdr_age, align 4
  %i.r = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.p) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.s = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.s, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.u = add i32 %i.t, %i.c
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %i.d, 31
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.w = add i32 %2, 2
  %i.x = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.w, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.y = load i32, ptr %i.b, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %i.b, align 4
  %i.aa = add i32 %i.x, %i.c
  %i.ab = add i32 %i.aa, %i.z
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.ad = zext i8 %i.ac to i32
  store i32 1, ptr %i.b, align 4
  %i.ae = add i32 %2, 2                           ; 5 uses
  %i.af = add i32 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp samesign ult i8 %i.d, 5
  br i1 %i.ag, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  switch i8 %i.ah, label %bb.m [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ae)
  %i.aj = zext i8 %i.ai to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ak = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.ae)
  %i.al = zext i16 %i.ak to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.am = call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.an = call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.ae)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.0.ph = phi i32 [ %i.an, %bb.k ], [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = getelementptr i8, ptr %3, i64 416
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq i32 %.0.ph, 1
  %i.ar = select i1 %i.aq, ptr @.str.935, ptr @.str.936
  %i.as = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.934, i32 noundef %.0.ph, ptr noundef nonnull %i.ar)
  %i.at = load i32, ptr @hf_hdr_age, align 4
  %i.au = sub i32 %i.af, %2
  %i.av = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.at, ptr noundef %1, i32 noundef %2, i32 noundef %i.au, ptr noundef %i.as) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %.thread, %bb.f, %bb.g
  %.070.ph = phi i32 [ %i.af, %bb.g ], [ %i.af, %bb.f ], [ %i.ab, %.thread ], [ %i.u, %bb.d ]
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.aw, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.l, %bb.m
  %.07086 = phi i32 [ %.070.ph, %bb.m ], [ %i.i, %bb.b ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.07086
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_allow(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 5 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = load i32, ptr @ett_allow, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.199)
  %i.g = load i32, ptr @hf_hdr_name_value, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %2, 2                            ; 2 uses
  %i.j = and i8 %i.d, 127                         ; 2 uses
  %i.k = icmp samesign ugt i8 %i.j, 63
  br i1 %i.k, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.l, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.n = add i32 %i.m, %i.c
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i8 %i.d, 31
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %2, 2
  %i.q = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.r = load i32, ptr %i.b, align 4
  %i.s = add i32 %i.r, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.u = zext i8 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.u, %bb.g ], [ %i.q, %bb.f ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.v = add i32 %storemerge, %i.c
  %i.w = add i32 %i.v, %.0
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.x = zext nneg i8 %i.j to i32
  %i.y = load i32, ptr @hf_hdr_allow, align 4
  %i.z = getelementptr i8, ptr %3, i64 416
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call ptr @val_to_str_ext(ptr noundef %i.aa, i32 noundef %i.x, ptr noundef nonnull @wsp_vals_pdu_type_ext, ptr noundef nonnull @.str.937)
  %i.ac = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.ab) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.h
  %.041.ph = phi i32 [ %i.w, %bb.h ], [ %i.n, %bb.d ], [ %i.i, %bb.b ]
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ad, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.04148 = phi i32 [ %.041.ph, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.04148
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_authorization(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_authorization, align 4
  %i.b = load i32, ptr @hf_hdr_authorization_scheme, align 4
  %i.c = load i32, ptr @hf_hdr_authorization_user_id, align 4
  %i.d = load i32, ptr @hf_hdr_authorization_password, align 4
  %i.e = tail call fastcc i32 @wkh_credentials_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @.str.202)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_cache_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = add i32 %2, 1                            ; 5 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = load i32, ptr @ett_cache_control, align 4
  %i.h = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.942)
  %i.i = load i32, ptr @hf_hdr_name_value, align 4
  %i.j = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %2, 2                            ; 2 uses
  %i.l = and i8 %i.f, 127
  %i.m = zext nneg i8 %i.l to i32
  %i.n = call ptr @try_val_to_str_ext(i32 noundef %i.m, ptr noundef nonnull @vals_cache_control_ext) ; 2 uses
  %.not174 = icmp eq ptr %i.n, null
  br i1 %.not174, label %.thread207, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr @hf_hdr_cache_control, align 4
  %i.p = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %i.n) ; 0 uses
  br label %.thread201

bb.d:                                             ; preds = %bb.a
  %i.q = add nsw i8 %i.f, -32
  %or.cond = icmp ult i8 %i.q, -31
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %3, i64 416
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr @tvb_get_stringz_enc(ptr noundef %i.s, ptr noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.u = load i32, ptr %i.b, align 4
  %i.v = add i32 %i.u, %i.e                       ; 2 uses
  %i.w = load i32, ptr @hf_hdr_cache_control, align 4
  %i.x = sub i32 %i.v, %2
  %i.y = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.w, ptr noundef %1, i32 noundef %2, i32 noundef %i.x, ptr noundef %i.t) ; 0 uses
  br label %.thread201

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i8 %i.f, 31
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %2, 2
  %i.ab = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.aa, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = add i32 %i.ac, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  %i.af = zext i8 %i.ae to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i32 [ %i.ab, %bb.g ], [ %i.af, %bb.h ]
  %storemerge = phi i32 [ %i.ad, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.ag = add i32 %storemerge, %i.e               ; 11 uses
  %i.ah = add i32 %i.ag, %.sink                   ; 18 uses
  %i.ai = add i32 %i.ag, 1                        ; 12 uses
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ag) ; 3 uses
  %.not170 = icmp sgt i8 %i.aj, -1
  br i1 %.not170, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i8 %i.aj, 127                       ; 2 uses
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  switch i8 %i.ak, label %.thread207 [
    i8 0, label %bb.k
    i8 7, label %bb.k
    i8 2, label %bb.r
    i8 3, label %bb.r
    i8 4, label %bb.r
    i8 11, label %bb.r
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.am = getelementptr i8, ptr %3, i64 416       ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = call ptr @val_to_str_ext(ptr noundef %i.an, i32 noundef %i.al, ptr noundef nonnull @vals_cache_control_ext, ptr noundef nonnull @.str.943)
  %i.ap = call ptr @wmem_strbuf_new(ptr noundef %i.an, ptr noundef %i.ao) ; 4 uses
  %i.aq = icmp ult i32 %i.ai, %i.ah
  br i1 %i.aq, label %.lr.ph, label %.thread201.critedge

.lr.ph:                                           ; preds = %bb.k, %bb.q
  %.0157211 = phi i32 [ %.1158, %bb.q ], [ %i.ai, %bb.k ] ; 7 uses
  %i.ar = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0157211) ; 2 uses
  %.not173 = icmp sgt i8 %i.ar, -1
end_hunk_0
begin_hunk_1_@wkh_content_range:bb.a
  %i.al = add i32 %i.ak, %i.u                     ; 3 uses
  %i.am = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.al)
  %i.an = icmp eq i8 %i.am, -128
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ae, ptr noundef nonnull @.str.947, ptr noundef nonnull @.str.990)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ao = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.al, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar) ; 2 uses
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = add i32 %i.ap, -1
  %or.cond6 = icmp ult i32 %i.aq, 5
  br i1 %or.cond6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ae, ptr noundef nonnull @.str.991, i32 noundef %i.ao)
  %i.ar = load i32, ptr @hf_hdr_content_range_entity_length, align 4
  %i.as = load i32, ptr %i.c, align 4
  %i.at = call ptr @proto_tree_add_uint(ptr noundef %i.ag, i32 noundef %i.ar, ptr noundef %1, i32 noundef %i.al, i32 noundef %i.as, i32 noundef %i.ao) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.b, %bb.d, %bb.k, %bb.h
  %.069.ph = phi i32 [ %i.v, %bb.h ], [ %i.v, %bb.k ], [ %i.m, %bb.d ], [ %i.j, %bb.b ]
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.au, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.m
  %.06976 = phi i32 [ %.069.ph, %bb.m ], [ %i.v, %bb.j ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.06976
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_content_type(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_content_type, align 4
  %i.b = tail call fastcc i32 @wkh_content_type_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.1)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_date(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_date, align 4
  %i.b = tail call fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.249)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_etag(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_etag, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.252)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_expires(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_expires, align 4
  %i.b = tail call fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.255)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_from(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_from, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.258)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_host(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_host, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.261)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_if_modified_since(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_if_modified_since, align 4
  %i.b = tail call fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.264)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_if_match(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_if_match, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.267)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_if_none_match(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_if_none_match, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.270)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_if_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load i32, ptr @hf_hdr_if_range, align 4  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = add i32 %2, 1                            ; 6 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.g = getelementptr i8, ptr %3, i64 416        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.h, ptr noundef nonnull @.str.993, ptr noundef nonnull @.str.273)
  %i.j = load i32, ptr @ett_text_or_date_value, align 4
  %i.k = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef %i.i)
  %i.l = load i32, ptr @hf_hdr_name_value, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i = icmp sgt i8 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %2, 2
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.o = add nsw i8 %i.f, -32
  %or.cond.i = icmp ult i8 %i.o, -31
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = call ptr @tvb_get_stringz_enc(ptr noundef %i.p, ptr noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.r = load i32, ptr %i.b, align 4
  %i.s = add i32 %i.r, %i.e                       ; 2 uses
  %i.t = sub i32 %i.s, %2
  %i.u = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %i.t, ptr noundef %i.q) ; 0 uses
  br label %wkh_text_or_date_value_header_func.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %i.f, 31
  br i1 %i.v, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.w = add i32 %2, 2
  %i.x = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.w, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.y = load i32, ptr %i.c, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %i.c, align 4
  %i.aa = add i32 %i.x, %i.e
  %i.ab = add i32 %i.aa, %i.z
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  %i.ad = zext i8 %i.ac to i32
  store i32 1, ptr %i.c, align 4
  %i.ae = add i32 %2, 2                           ; 5 uses
  %i.af = add i32 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp samesign ult i8 %i.f, 5
  br i1 %i.ag, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  switch i8 %i.ah, label %bb.m [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ae)
  %i.aj = zext i8 %i.ai to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ak = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.ae)
  %i.al = zext i16 %i.ak to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.am = call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.an = call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.ae)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.ph.i = phi i32 [ %i.an, %bb.k ], [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.aj, %bb.h ]
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = zext i32 %.0.ph.i to i64
  %i.aq = call ptr @abs_time_secs_to_str_ex(ptr noundef %i.ao, i64 noundef %i.ap, i32 noundef 18, i32 noundef 1)
  %i.ar = sub i32 %i.af, %2
  %i.as = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %i.ar, ptr noundef %i.aq) ; 0 uses
  br label %wkh_text_or_date_value_header_func.exit

bb.m:                                             ; preds = %bb.g, %bb.f, %.thread.i, %bb.b
  %.068.ph.i = phi i32 [ %i.af, %bb.g ], [ %i.af, %bb.f ], [ %i.ab, %.thread.i ], [ %i.n, %bb.b ]
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.at, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %wkh_text_or_date_value_header_func.exit

wkh_text_or_date_value_header_func.exit:          ; preds = %bb.d, %bb.l, %bb.m
  %.06812.i = phi i32 [ %.068.ph.i, %bb.m ], [ %i.af, %bb.l ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.06812.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_if_unmodified_since(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_if_unmodified_since, align 4
  %i.b = tail call fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.276)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_location(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_location, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.282)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_last_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_last_modified, align 4
  %i.b = tail call fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.279)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_max_forwards(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_max_forwards, align 4
  %i.b = tail call fastcc i32 @wkh_integer_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.285)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_pragma(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 5 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = load i32, ptr @ett_pragma, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.288)
  %i.g = load i32, ptr @hf_hdr_name_value, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %2, 2                            ; 2 uses
  %i.j = icmp eq i8 %i.d, -128
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @hf_hdr_pragma, align 4
  %i.l = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.949) ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.m = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.m, -31
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.o = add i32 %i.n, %i.c
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.d, 31
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %2, 2
  %i.r = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.s = load i32, ptr %i.b, align 4
  %i.t = add i32 %i.s, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.v = zext i8 %i.u to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i32 [ 1, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %.0 = phi i32 [ %i.v, %bb.h ], [ %i.r, %bb.g ]  ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4
  %i.w = add i32 %storemerge, %i.c                ; 3 uses
  %i.x = add i32 %i.w, %.0
  %i.y = load i32, ptr @hf_hdr_pragma, align 4
  %i.z = sub i32 %i.w, %2
  %i.aa = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef %2, i32 noundef %i.z, ptr noundef nonnull @.str.935)
  %i.ab = call fastcc i32 @parameter(ptr noundef null, ptr noundef %3, ptr noundef %i.aa, ptr noundef %1, i32 noundef %i.w, i32 noundef %.0) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.b, %bb.e
  %.050 = phi i32 [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ac, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.c, %bb.j
  %.05055 = phi i32 [ %.050, %bb.j ], [ %i.x, %bb.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.05055
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_proxy_authenticate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_proxy_authenticate, align 4
  %i.b = load i32, ptr @hf_hdr_proxy_authenticate_scheme, align 4
  %i.c = load i32, ptr @hf_hdr_proxy_authenticate_realm, align 4
  %i.d = tail call fastcc i32 @wkh_challenge_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @.str.291)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_proxy_authorization(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_proxy_authorization, align 4
  %i.b = load i32, ptr @hf_hdr_proxy_authorization_scheme, align 4
  %i.c = load i32, ptr @hf_hdr_proxy_authorization_user_id, align 4
  %i.d = load i32, ptr @hf_hdr_proxy_authorization_password, align 4
  %i.e = tail call fastcc i32 @wkh_credentials_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @.str.300)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_public(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_public, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.309)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2                            ; 2 uses
  %i.k = and i8 %i.e, 127                         ; 2 uses
  %i.l = icmp samesign ugt i8 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32
  %i.n = load i32, ptr @hf_hdr_public, align 4
  %i.o = getelementptr i8, ptr %3, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call ptr @val_to_str_ext(ptr noundef %i.p, i32 noundef %i.m, ptr noundef nonnull @wsp_vals_pdu_type_ext, ptr noundef nonnull @.str.937)
  %i.r = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.n, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.q) ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.s, -31
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %3, i64 416
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @tvb_get_stringz_enc(ptr noundef %i.u, ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.w = load i32, ptr %i.b, align 4
  %i.x = add i32 %i.w, %i.d                       ; 2 uses
  %i.y = load i32, ptr @hf_hdr_public, align 4
  %i.z = sub i32 %i.x, %2
  %i.aa = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef %2, i32 noundef %i.z, ptr noundef %i.v) ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i8 %i.e, 31
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add i32 %2, 2
  %i.ad = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.ac, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = add i32 %i.ae, 1
end_hunk_1
begin_hunk_2_@wkh_transfer_encoding:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_upgrade(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_upgrade, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.335)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_user_agent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_user_agent, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.338)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_vary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_vary, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.341)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2
  %i.k = load i32, ptr @hf_hdr_vary, align 4
  %i.l = getelementptr i8, ptr %3, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i8 %i.e, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = call ptr @val_to_str_ext(ptr noundef %i.m, i32 noundef %i.o, ptr noundef nonnull @vals_field_names_ext, ptr noundef nonnull @.str.944)
  %i.q = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.p) ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.r = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.r, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %3, i64 416
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call ptr @tvb_get_stringz_enc(ptr noundef %i.t, ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.v = load i32, ptr %i.b, align 4
  %i.w = add i32 %i.v, %i.d                       ; 2 uses
  %i.x = load i32, ptr @hf_hdr_vary, align 4
  %i.y = sub i32 %i.w, %2
  %i.z = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.x, ptr noundef %1, i32 noundef %2, i32 noundef %i.y, ptr noundef %i.u) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i8 %i.e, 31
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %2, 2
  %i.ac = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.ab, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.ad = load i32, ptr %i.c, align 4
  %i.ae = add i32 %i.ad, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.ag = zext i8 %i.af to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %storemerge = phi i32 [ %i.ae, %bb.f ], [ 1, %bb.g ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.ah = add i32 %storemerge, %i.d
  %i.ai = add i32 %i.ah, %.sink
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.aj, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b, %bb.h
  %.048 = phi i32 [ %i.ai, %bb.h ], [ %i.w, %bb.d ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.048
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_via(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_via, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.344)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_warning(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 6 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_warning, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.347)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2                            ; 2 uses
  %i.k = and i8 %i.e, 127
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = call ptr @try_val_to_str_ext(i32 noundef %i.l, ptr noundef nonnull @vals_wsp_warning_code_ext) ; 2 uses
  %.not109 = icmp eq ptr %i.m, null
  br i1 %.not109, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @hf_hdr_warning, align 4
  %i.o = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.n, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %i.m)
  %i.p = load i32, ptr @ett_header, align 4
  %i.q = call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p)
  %i.r = load i32, ptr @hf_hdr_warning_code, align 4
  %i.s = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef %i.l) ; 0 uses
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.t = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.t, -31
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.d)
  %i.v = add i32 %i.u, %i.d
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i8 %i.e, 31
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = add i32 %2, 2
  %i.y = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.x, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.z = load i32, ptr %i.b, align 4
  %i.aa = add i32 %i.z, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.ac = zext i8 %i.ab to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i32 [ 1, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %.0100 = phi i32 [ %i.ac, %bb.h ], [ %i.y, %bb.g ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.ad = add i32 %storemerge, %i.d               ; 4 uses
  %i.ae = add i32 %i.ad, %.0100                   ; 6 uses
  %i.af = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ad) ; 2 uses
  %.not107 = icmp sgt i8 %i.af, -1
  br i1 %.not107, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %i.ai = call ptr @try_val_to_str_ext(i32 noundef %i.ah, ptr noundef nonnull @vals_wsp_warning_code_short_ext) ; 2 uses
  %.not108 = icmp eq ptr %i.ai, null
  br i1 %.not108, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %3, i64 416       ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ak, ptr noundef nonnull @.str.1006, ptr noundef nonnull %i.ai)
  %i.am = load i32, ptr @hf_hdr_warning, align 4
  %i.an = sub i32 %i.ae, %2
  %i.ao = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.am, ptr noundef %1, i32 noundef %2, i32 noundef %i.an, ptr noundef %i.al) ; 3 uses
  %i.ap = load i32, ptr @ett_header, align 4
  %i.aq = call ptr @proto_item_add_subtree(ptr noundef %i.ao, i32 noundef %i.ap) ; 3 uses
  %i.ar = load i32, ptr @hf_hdr_warning_code, align 4
  %i.as = call ptr @proto_tree_add_uint(ptr noundef %i.aq, i32 noundef %i.ar, ptr noundef %1, i32 noundef %i.ad, i32 noundef 1, i32 noundef %i.ah) ; 0 uses
  %i.at = add i32 %i.ad, 1                        ; 6 uses
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.at)
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.at)
  %i.ax = icmp ugt i8 %i.aw, 31
  br i1 %i.ax, label %bb.m, label %4

bb.m:                                             ; preds = %bb.l
  %i.ay = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.at)
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.n, label %4

4:                                                ; preds = %bb.l, %bb.m
  store i32 0, ptr %i.c, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.ba = load ptr, ptr %i.aj, align 8
  %i.bb = call ptr @tvb_get_stringz_enc(ptr noundef %i.ba, ptr noundef %1, i32 noundef %i.at, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.bc = load i32, ptr @hf_hdr_warning_agent, align 4
  %i.bd = load i32, ptr %i.c, align 4
  %i.be = call ptr @proto_tree_add_string(ptr noundef %i.aq, i32 noundef %i.bc, ptr noundef %1, i32 noundef %i.at, i32 noundef %i.bd, ptr noundef %i.bb) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1007, ptr noundef %i.bb)
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = add i32 %i.bf, %i.at                    ; 5 uses
  %i.bh = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bg)
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bg)
  %i.bk = icmp ugt i8 %i.bj, 31
  br i1 %i.bk, label %bb.p, label %5

bb.p:                                             ; preds = %bb.o
  %i.bl = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bg)
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %5

5:                                                ; preds = %bb.o, %bb.p
  store i32 0, ptr %i.c, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.p
  %i.bn = load ptr, ptr %i.aj, align 8
  %i.bo = call ptr @tvb_get_stringz_enc(ptr noundef %i.bn, ptr noundef %1, i32 noundef %i.bg, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.bp = load i32, ptr @hf_hdr_warning_text, align 4
  %i.bq = load i32, ptr %i.c, align 4
  %i.br = call ptr @proto_tree_add_string(ptr noundef %i.aq, i32 noundef %i.bp, ptr noundef %1, i32 noundef %i.bg, i32 noundef %i.bq, ptr noundef %i.bo) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1008, ptr noundef %i.bo)
  br label %bb.s

bb.r:                                             ; preds = %bb.b, %bb.e, %5, %4, %bb.j, %bb.i
  %.0101.ph = phi i32 [ %i.ae, %bb.i ], [ %i.ae, %bb.j ], [ %i.ae, %4 ], [ %i.ae, %5 ], [ %i.v, %bb.e ], [ %i.j, %bb.b ]
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.bs, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.q, %bb.r
  %.0101122 = phi i32 [ %.0101.ph, %bb.r ], [ %i.j, %bb.c ], [ %i.ae, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0101122
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_www_authenticate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_www_authenticate, align 4
  %i.b = load i32, ptr @hf_hdr_www_authenticate_scheme, align 4
  %i.c = load i32, ptr @hf_hdr_www_authenticate_realm, align 4
  %i.d = tail call fastcc i32 @wkh_challenge_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @.str.967)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_content_disposition(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_content_disposition, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1017)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2
  br label %.thread101

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.k, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.d)
  %i.m = add i32 %i.l, %i.d
  br label %.thread101

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i8 %i.e, 31
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %2, 2
  %i.p = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.o, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.q = load i32, ptr %i.b, align 4
  %i.r = add i32 %i.q, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.t = zext i8 %i.s to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.086 = phi i32 [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.u = add i32 %storemerge, %i.d                ; 8 uses
  %i.v = add i32 %i.u, %.086                      ; 7 uses
  %i.w = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.u) ; 2 uses
  %.not94 = icmp sgt i8 %i.w, -1
  br i1 %.not94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %switch.tableidx = and i8 %i.w, 127             ; 2 uses
  %i.x = icmp samesign ult i8 %switch.tableidx, 3 ; 2 uses
  br i1 %i.x, label %switch.lookup, label %bb.j

switch.lookup:                                    ; preds = %bb.i
  %i.y = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wkh_content_disposition, i64 %i.y
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.z = load i32, ptr @hf_hdr_content_disposition, align 4
  %i.aa = sub i32 %i.v, %2
  %i.ab = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.z, ptr noundef %1, i32 noundef %2, i32 noundef %i.aa, ptr noundef nonnull %switch.load)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %switch.lookup
  %.0 = phi ptr [ null, %bb.i ], [ %i.ab, %switch.lookup ]
  %i.ac = add i32 %i.u, 1
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ad = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.u)
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.u)
  %i.ag = icmp ugt i8 %i.af, 31
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.u)
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  store i32 0, ptr %i.c, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m
  %i.aj = getelementptr i8, ptr %3, i64 416
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call ptr @tvb_get_stringz_enc(ptr noundef %i.ak, ptr noundef %1, i32 noundef %i.u, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.am = load i32, ptr @hf_hdr_content_disposition, align 4
  %i.an = sub i32 %i.v, %2
  %i.ao = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.am, ptr noundef %1, i32 noundef %2, i32 noundef %i.an, ptr noundef %i.al)
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ap = phi i32 [ %.pre, %bb.o ], [ 0, %bb.n ]
  %.18998 = phi i1 [ true, %bb.o ], [ false, %bb.n ]
  %.1 = phi ptr [ %i.ao, %bb.o ], [ null, %bb.n ]
  %i.aq = add i32 %i.ap, %i.u
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %.290 = phi i1 [ %i.x, %bb.j ], [ %.18998, %bb.p ] ; 2 uses
  %.084 = phi i32 [ %i.ac, %bb.j ], [ %i.aq, %bb.p ] ; 2 uses
  %.2 = phi ptr [ %.0, %bb.j ], [ %.1, %bb.p ]    ; 2 uses
  %i.ar = icmp ult i32 %.084, %i.v
  %or.cond95 = select i1 %.290, i1 %i.ar, i1 false
  br i1 %or.cond95, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr @ett_header, align 4
  %i.at = call ptr @proto_item_add_subtree(ptr noundef %.2, i32 noundef %i.as)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.s
  %.185106 = phi i32 [ %.084, %bb.r ], [ %i.av, %bb.s ] ; 2 uses
  %i.au = sub nuw i32 %i.v, %.185106
  %i.av = call fastcc i32 @parameter(ptr noundef %i.at, ptr noundef %3, ptr noundef %.2, ptr noundef %1, i32 noundef %.185106, i32 noundef %i.au) ; 2 uses
  %i.aw = icmp ult i32 %i.av, %i.v
  br i1 %i.aw, label %bb.s, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.s, %bb.q
  br i1 %.290, label %bb.t, label %.thread101

.thread101:                                       ; preds = %bb.d, %bb.b, %.loopexit
  %.087104 = phi i32 [ %i.v, %.loopexit ], [ %i.m, %bb.d ], [ %i.j, %bb.b ]
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ax, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.thread101, %.loopexit
  %.087105 = phi i32 [ %.087104, %.thread101 ], [ %i.v, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.087105
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_x_wap_application_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_x_wap_application_id, align 4
  %i.b = tail call fastcc i32 @wkh_integer_lookup_or_text_value_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.429, ptr noundef nonnull @vals_wap_application_ids_ext, ptr noundef nonnull @.str.1021)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_content_uri(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_content_uri, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.372)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_initiator_uri(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_initiator_uri, align 4
  %i.b = tail call fastcc i32 @wkh_text_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.375)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_accept_application(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_accept_application, align 4
end_hunk_2
begin_hunk_3_@wkh_profile_warning:bb.a
  %i.ab = add i32 %i.z, 1                         ; 5 uses
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.z)
  %.not95 = icmp sgt i8 %i.ac, -1
  br i1 %.not95, label %.thread110, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call ptr @try_val_to_str_ext(i32 noundef 0, ptr noundef nonnull @vals_wsp_profile_warning_code_ext) ; 2 uses
  %.not96 = icmp eq ptr %i.ad, null
  br i1 %.not96, label %.thread110, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr @hf_hdr_profile_warning, align 4
  %i.af = sub i32 %i.aa, %2
  %i.ag = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ae, ptr noundef %1, i32 noundef %2, i32 noundef %i.af, ptr noundef nonnull %i.ad) ; 2 uses
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ab)
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ab)
  %i.ak = icmp ugt i8 %i.aj, 31
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ab)
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  store i32 0, ptr %i.c, align 4
  br label %.thread110

bb.n:                                             ; preds = %bb.j, %bb.l
  %i.an = getelementptr i8, ptr %3, i64 416       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call ptr @tvb_get_stringz_enc(ptr noundef %i.ao, ptr noundef %1, i32 noundef %i.ab, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = add i32 %i.aq, %i.ab                    ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ag, ptr noundef nonnull @.str.1062, ptr noundef %i.ap)
  %i.as = icmp ult i32 %i.ar, %i.aa
  br i1 %i.as, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.n, %bb.s
  %.084118 = phi i32 [ %i.bh, %bb.s ], [ %i.ar, %bb.n ] ; 6 uses
  %i.at = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.084118) ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  store i32 %i.au, ptr %i.c, align 4
  switch i8 %i.at, label %._crit_edge [
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.av = add nuw i32 %.084118, 1
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.av)
  %i.ax = zext i8 %i.aw to i32
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph
  %i.ay = add nuw i32 %.084118, 1
  %i.az = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.ay)
  %i.ba = zext i16 %i.az to i32
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph
  %i.bb = add nuw i32 %.084118, 1
  %i.bc = call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.bb)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bd = add nuw i32 %.084118, 1
  %i.be = call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.bd)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.1.ph = phi i32 [ %i.be, %bb.r ], [ %i.bc, %bb.q ], [ %i.ba, %bb.p ], [ %i.ax, %bb.o ]
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.c, align 4
  %i.bh = add i32 %i.bg, %.084118                 ; 2 uses
  %i.bi = load ptr, ptr %i.an, align 8
  %i.bj = zext i32 %.1.ph to i64
  %i.bk = call ptr @abs_time_secs_to_str_ex(ptr noundef %i.bi, i64 noundef %i.bj, i32 noundef 18, i32 noundef 1)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ag, ptr noundef nonnull @.str.1063, ptr noundef %i.bk)
  %i.bl = icmp ult i32 %i.bh, %i.aa
  br i1 %i.bl, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph
  %i.bm = add nuw nsw i32 %i.au, 1
  store i32 %i.bm, ptr %i.c, align 4
  br label %.thread110

.thread110:                                       ; preds = %._crit_edge, %bb.h, %bb.i, %bb.m, %bb.d, %bb.b
  %.088113 = phi i32 [ %i.aa, %._crit_edge ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aa, %bb.m ], [ %i.r, %bb.d ], [ %i.j, %bb.b ]
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.bn, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.s, %bb.n, %.thread115, %.thread110
  %.088114 = phi i32 [ %.088113, %.thread110 ], [ %i.j, %.thread115 ], [ %i.aa, %bb.n ], [ %i.aa, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.088114
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_te(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_te_value, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1073)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2                            ; 2 uses
  %i.k = icmp eq i8 %i.e, -127
  br i1 %i.k, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @hf_hdr_encoding_version, align 4
  %i.m = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.1074) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.n, -31
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.d)
  %i.p = add i32 %i.o, %i.d
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i8 %i.e, 31
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %2, 2
  %i.s = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.r, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.t = load i32, ptr %i.b, align 4
  %i.u = add i32 %i.t, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.w = zext i8 %i.v to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i32 [ 1, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %.068 = phi i32 [ %i.w, %bb.h ], [ %i.s, %bb.g ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.x = add i32 %storemerge, %i.d                ; 8 uses
  %i.y = add i32 %i.x, %.068                      ; 5 uses
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x) ; 2 uses
  %.not73 = icmp sgt i8 %i.z, -1
  br i1 %.not73, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = call ptr @try_val_to_str_ext(i32 noundef %i.ab, ptr noundef nonnull @vals_well_known_te_ext) ; 2 uses
  %.not74 = icmp eq ptr %i.ac, null
  br i1 %.not74, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr @hf_hdr_te, align 4
  %i.ae = sub i32 %i.x, %2
  %i.af = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ad, ptr noundef %1, i32 noundef %2, i32 noundef %i.ae, ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.ag = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.aj = icmp ugt i8 %i.ai, 31
  br i1 %i.aj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ak = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.n
  %i.am = getelementptr i8, ptr %3, i64 416
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr @tvb_get_stringz_enc(ptr noundef %i.an, ptr noundef %1, i32 noundef %i.x, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.ap = load i32, ptr @hf_hdr_te, align 4
  %i.aq = sub i32 %i.x, %2
  %i.ar = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ap, ptr noundef %1, i32 noundef %2, i32 noundef %i.aq, ptr noundef %i.ao) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.b, %bb.e, %bb.j
  %.069.ph = phi i32 [ %i.j, %bb.b ], [ %i.y, %bb.j ], [ %i.p, %bb.e ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.as, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.o, %bb.k, %bb.p
  %.06983 = phi i32 [ %.069.ph, %bb.p ], [ %i.j, %bb.c ], [ %i.y, %bb.k ], [ %i.y, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.06983
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_trailer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_trailer, align 4
  %i.b = tail call fastcc i32 @wkh_integer_lookup_or_text_value_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.408, ptr noundef nonnull @vals_field_names_ext, ptr noundef nonnull @.str.1078)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_x_wap_tod(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_hdr_x_wap_tod, align 4
  %i.b = tail call fastcc i32 @wkh_tod_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %i.a, ptr noundef nonnull @.str.411)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_content_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = load i32, ptr @ett_content_id, align 4
  %i.g = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1081)
  %i.h = load i32, ptr @hf_hdr_name_value, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %2, 2
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.k, -31
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %3, i64 416        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call ptr @tvb_get_stringz_enc(ptr noundef %i.m, ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 0) ; 5 uses
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = add i32 %i.o, %i.d                       ; 6 uses
  %i.q = load i8, ptr %i.n, align 1
  %i.r = icmp eq i8 %i.q, 34
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.o, -2
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 34
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr @hf_hdr_content_id, align 4
  %i.y = sub i32 %i.p, %2
  %i.z = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.x, ptr noundef %1, i32 noundef %2, i32 noundef %i.y, ptr noundef %i.n)
  %i.aa = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.z, ptr noundef nonnull @ei_wsp_trailing_quote) ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ab, ptr noundef nonnull @.str.767, ptr noundef %i.n)
  %i.ad = load i32, ptr @hf_hdr_content_id, align 4
  %i.ae = sub i32 %i.p, %2
  %i.af = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ad, ptr noundef %1, i32 noundef %2, i32 noundef %i.ae, ptr noundef %i.ac) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ag = load i32, ptr @hf_hdr_content_id, align 4
  %i.ah = sub i32 %i.p, %2
  %i.ai = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, i32 noundef %i.ah, ptr noundef %i.n)
  %i.aj = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ai, ptr noundef nonnull @ei_wsp_trailing_quote) ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.ak = icmp eq i8 %i.e, 31
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %2, 2
  %i.am = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.al, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.an = load i32, ptr %i.c, align 4
  %i.ao = add i32 %i.an, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ap = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.aq = zext i8 %i.ap to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi i32 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %storemerge = phi i32 [ %i.ao, %bb.j ], [ 1, %bb.k ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.ar = add i32 %storemerge, %i.d
  %i.as = add i32 %i.ar, %.sink
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.as, %bb.l ]
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.at, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.m
  %.061 = phi i32 [ %.0, %bb.m ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.061
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_encoding_version(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = add i32 %2, 1                            ; 5 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = load i32, ptr @ett_encoding_version, align 4
  %i.h = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1082)
  %i.i = load i32, ptr @hf_hdr_name_value, align 4
  %i.j = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %2, 2
  %i.l = and i8 %i.f, 127
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = getelementptr i8, ptr %3, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = lshr i32 %i.m, 4
  %i.q = and i32 %i.m, 15
  %i.r = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.o, ptr noundef nonnull @.str.754, i32 noundef %i.p, i32 noundef %i.q)
  %i.s = load i32, ptr @hf_hdr_encoding_version, align 4
  %i.t = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.s, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.r) ; 0 uses
  br label %.thread94

bb.c:                                             ; preds = %bb.a
  %i.u = add nsw i8 %i.f, -32
  %or.cond = icmp ult i8 %i.u, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %3, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call ptr @tvb_get_stringz_enc(ptr noundef %i.w, ptr noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.y = load i32, ptr %i.b, align 4
  %i.z = add i32 %i.y, %i.e                       ; 2 uses
  %i.aa = load i32, ptr @hf_hdr_encoding_version, align 4
  %i.ab = sub i32 %i.z, %2
  %i.ac = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.aa, ptr noundef %1, i32 noundef %2, i32 noundef %i.ab, ptr noundef %i.x) ; 0 uses
  br label %.thread94

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp eq i8 %i.f, 31
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = add i32 %2, 2
  %i.af = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = add i32 %i.ag, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  %i.aj = zext i8 %i.ai to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %storemerge = phi i32 [ %i.ah, %bb.f ], [ 1, %bb.g ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.ak = add i32 %storemerge, %i.e               ; 3 uses
  %i.al = add i32 %i.ak, %.sink                   ; 5 uses
  %i.am = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ak) ; 2 uses
  %.not87 = icmp sgt i8 %i.am, -1
  br i1 %.not87, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %3, i64 416       ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = and i8 %i.am, 127
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ao, ptr noundef nonnull @.str.1083, i32 noundef %i.aq)
  %i.as = load i32, ptr @hf_hdr_encoding_version, align 4
  %i.at = sub i32 %i.al, %2
  %i.au = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.as, ptr noundef %1, i32 noundef %2, i32 noundef %i.at, ptr noundef %i.ar)
  %i.av = add i32 %i.ak, 1                        ; 6 uses
  %i.aw = icmp ult i32 %i.av, %i.al
  br i1 %i.aw, label %bb.j, label %.thread94

bb.j:                                             ; preds = %bb.i
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.av) ; 2 uses
  %.not88 = icmp sgt i8 %i.ax, -1
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.d, align 4
  %i.ay = and i8 %i.ax, 127
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = load ptr, ptr %i.an, align 8
  %i.bb = lshr i32 %i.az, 4
  %i.bc = and i32 %i.az, 15
  %i.bd = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ba, ptr noundef nonnull @.str.754, i32 noundef %i.bb, i32 noundef %i.bc)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.av)
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.av)
  %i.bh = icmp ugt i8 %i.bg, 31
  br i1 %i.bh, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bi = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.av)
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bk = load ptr, ptr %i.an, align 8
  %i.bl = call ptr @tvb_get_stringz_enc(ptr noundef %i.bk, ptr noundef %1, i32 noundef %i.av, ptr noundef nonnull %i.d, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.0.ph = phi ptr [ %i.bl, %bb.o ], [ %i.bd, %bb.k ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.au, ptr noundef nonnull @.str.1084, ptr noundef %.0.ph)
  br label %.thread94

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.h
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.bm, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread94

.thread94:                                        ; preds = %bb.i, %bb.p, %bb.d, %bb.b, %bb.q
  %.08197 = phi i32 [ %i.al, %bb.q ], [ %i.al, %bb.i ], [ %i.al, %bb.p ], [ %i.z, %bb.d ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.08197
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @wkh_x_wap_security(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 5 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = load i32, ptr @ett_x_wap_security, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1085)
  %i.g = load i32, ptr @hf_hdr_name_value, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %2, 2                            ; 2 uses
  %i.j = icmp eq i8 %i.d, -128
  br i1 %i.j, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.k, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.m = add i32 %i.l, %i.c
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i8 %i.d, 31
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %2, 2
  %i.p = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.o, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.q = load i32, ptr %i.b, align 4
  %i.r = add i32 %i.q, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.t = zext i8 %i.s to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.u = add i32 %storemerge, %i.c
  %i.v = add i32 %i.u, %.0
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.w = load i32, ptr @hf_hdr_x_wap_security, align 4
  %i.x = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.w, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull @.str.1086) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.h
  %.038.ph = phi i32 [ %i.v, %bb.h ], [ %i.m, %bb.d ], [ %i.i, %bb.b ]
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.y, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.03844 = phi i32 [ %.038.ph, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.03844
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_content_type_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = add i32 %2, 1                            ; 8 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = getelementptr i8, ptr %3, i64 416        ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.h, ptr noundef nonnull @.str.780, ptr noundef %5)
  %i.j = load i32, ptr @ett_content_type_header, align 4
  %i.k = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef %i.i) ; 6 uses
  %i.l = load i32, ptr @hf_hdr_name_value, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %2, 2
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = and i8 %i.f, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = call ptr @val_to_str_ext(ptr noundef %i.o, i32 noundef %i.q, ptr noundef nonnull @vals_content_types_ext, ptr noundef nonnull @.str.738)
  %i.s = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %4, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, ptr noundef %i.r) ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.t, i32 noundef 2)
  br label %.thread139

bb.c:                                             ; preds = %bb.a
  %i.u = add nsw i8 %i.f, -32
  %or.cond = icmp ult i8 %i.u, -31
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = call ptr @tvb_get_stringz_enc(ptr noundef %i.v, ptr noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  %i.x = load i32, ptr %i.b, align 4              ; 2 uses
  %i.y = add i32 %i.x, %i.e                       ; 2 uses
  %i.z = load i8, ptr %i.w, align 1
  %.not120 = icmp eq i8 %i.z, 0
  br i1 %.not120, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %4, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.x, ptr noundef %i.w) ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = add i32 %i.ac, 1
  call void @proto_item_set_len(ptr noundef %i.ab, i32 noundef %i.ad)
  br label %.thread139

bb.f:                                             ; preds = %bb.d
  %i.ae = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %4, ptr noundef %1, i32 noundef %i.e, i32 noundef 0, ptr noundef nonnull @.str.781) ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.af, i32 noundef 2)
  br label %.thread139

bb.g:                                             ; preds = %bb.c
  %i.ag = icmp eq i8 %i.f, 31
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add i32 %2, 2
  %i.ai = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.ah, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = add i32 %i.aj, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  %i.am = zext i8 %i.al to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.ai, %bb.h ], [ %i.am, %bb.i ]
  %storemerge = phi i32 [ %i.ak, %bb.h ], [ 1, %bb.i ] ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4
  %i.an = add i32 %storemerge, %i.e               ; 9 uses
  %i.ao = add i32 %i.an, %.sink                   ; 8 uses
  %i.ap = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.an) ; 3 uses
  %i.aq = icmp eq i8 %i.ap, 0
  %or.cond5 = icmp sgt i8 %i.ap, 31
  %or.cond121 = or i1 %i.aq, %or.cond5
  br i1 %or.cond121, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = call ptr @tvb_get_stringz_enc(ptr noundef %i.ar, ptr noundef %1, i32 noundef %i.an, ptr noundef nonnull %i.d, i32 noundef 0)
  %i.at = sub i32 %i.ao, %2
  %i.au = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.at, ptr noundef %i.as) ; 0 uses
  br label %.thread129

bb.l:                                             ; preds = %bb.j
  %or.cond8.not = icmp eq i8 %i.ap, 31
  br i1 %or.cond8.not, label %.thread129, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.an) ; 3 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %.not119 = icmp sgt i8 %i.av, -1
  br i1 %.not119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = and i32 %i.aw, 127
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  switch i8 %i.av, label %.thread134 [
    i8 1, label %bb.p
end_hunk_3
begin_hunk_4_@wkh_text_header_func:bb.a
  %i.ab = sub i32 %i.aa, %2
  %i.ac = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.ab, ptr noundef %i.y) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.g
  %.0.ph = phi i32 [ %i.w, %bb.g ], [ %i.m, %bb.b ]
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ad, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.046 = phi i32 [ %.0.ph, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.046
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_integer_lookup_or_text_value_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 6 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = getelementptr i8, ptr %3, i64 416        ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.g, ptr noundef nonnull @.str.984, ptr noundef %5)
  %i.i = load i32, ptr @ett_integer_lookup, align 4
  %i.j = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull %i.a, ptr noundef %i.h)
  %i.k = load i32, ptr @hf_hdr_name_value, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = zext i8 %i.e to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %2, 2
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = and i32 %i.m, 127
  %i.q = call ptr @val_to_str_ext(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %6, ptr noundef %7)
  %i.r = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.q) ; 0 uses
  br label %.thread71

bb.c:                                             ; preds = %bb.a
  %i.s = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.s, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = call ptr @tvb_get_stringz_enc(ptr noundef %i.t, ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.v = load i32, ptr %i.b, align 4
  %i.w = add i32 %i.v, %i.d                       ; 2 uses
  %i.x = sub i32 %i.w, %2
  %i.y = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.x, ptr noundef %i.u) ; 0 uses
  br label %.thread71

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i8 %i.e, 31
  br i1 %i.z, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.aa = add i32 %2, 2
  %i.ab = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.aa, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.c, align 4
  %i.ae = add i32 %i.ab, %i.d
  %i.af = add i32 %i.ae, %i.ad
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.ah = zext i8 %i.ag to i32
  store i32 1, ptr %i.c, align 4
  %i.ai = add i32 %2, 2
  %i.aj = add i32 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp samesign ult i8 %i.e, 5
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.am = add i8 %i.al, -1
  %i.an = icmp ult i8 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = sub i32 %i.aj, %2
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = call ptr @val_to_str_ext(ptr noundef %i.ap, i32 noundef %i.m, ptr noundef %6, ptr noundef %7)
  %i.ar = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.ao, ptr noundef %i.aq) ; 0 uses
  br label %.thread71

bb.i:                                             ; preds = %bb.f, %bb.g, %.thread
  %.0 = phi i32 [ %i.aj, %bb.g ], [ %i.aj, %bb.f ], [ %i.af, %.thread ]
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.as, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.thread71

.thread71:                                        ; preds = %bb.h, %bb.d, %bb.b, %bb.i
  %.074 = phi i32 [ %.0, %bb.i ], [ %i.aj, %bb.h ], [ %i.w, %bb.d ], [ %i.n, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.074
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_integer_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 6 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = getelementptr i8, ptr %3, i64 416        ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.f, ptr noundef nonnull @.str.985, ptr noundef %5)
  %i.h = load i32, ptr @ett_integer_value, align 4
  %i.i = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.g)
  %i.j = load i32, ptr @hf_hdr_name_value, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %2, 2
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = and i8 %i.d, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.m, ptr noundef nonnull @.str.986, i32 noundef %i.o)
  %i.q = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef %i.p) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.r = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.r, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.t = add i32 %i.s, %i.c
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.d, 31
  br i1 %i.u, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.v = add i32 %2, 2
  %i.w = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.v, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.x = load i32, ptr %i.b, align 4
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.b, align 4
  %i.z = add i32 %i.w, %i.c
  %i.aa = add i32 %i.z, %i.y
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.ac = zext i8 %i.ab to i32
  store i32 1, ptr %i.b, align 4
  %i.ad = add i32 %2, 2                           ; 5 uses
  %i.ae = add i32 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp samesign ult i8 %i.d, 5
  br i1 %i.af, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ag = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  switch i8 %i.ag, label %bb.m [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ad)
  %i.ai = zext i8 %i.ah to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aj = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.ad)
  %i.ak = zext i16 %i.aj to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.al = call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.ad)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.am = call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.ad)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.0.ph = phi i32 [ %i.am, %bb.k ], [ %i.al, %bb.j ], [ %i.ak, %bb.i ], [ %i.ai, %bb.h ]
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.an, ptr noundef nonnull @.str.986, i32 noundef %.0.ph)
  %i.ap = sub i32 %i.ae, %2
  %i.aq = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.ap, ptr noundef %i.ao) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %.thread, %bb.f, %bb.g
  %.072.ph = phi i32 [ %i.ae, %bb.g ], [ %i.ae, %bb.f ], [ %i.aa, %.thread ], [ %i.t, %bb.d ]
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.ar, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.l, %bb.m
  %.07288 = phi i32 [ %.072.ph, %bb.m ], [ %i.l, %bb.b ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.07288
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_date_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = add i32 %2, 1                            ; 6 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = getelementptr i8, ptr %3, i64 416        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.f, ptr noundef nonnull @.str.992, ptr noundef %5)
  %i.h = load i32, ptr @ett_date_value, align 4
  %i.i = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.g)
  %i.j = load i32, ptr @hf_hdr_name_value, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %2, 2
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i8 %i.d, -32
  %or.cond = icmp ult i8 %i.m, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.c)
  %i.o = add i32 %i.n, %i.c
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.d, 31
  br i1 %i.p, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.q = add i32 %2, 2
  %i.r = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.s = load i32, ptr %i.b, align 4
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.b, align 4
  %i.u = add i32 %i.r, %i.c
  %i.v = add i32 %i.u, %i.t
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  %i.x = zext i8 %i.w to i32
  store i32 1, ptr %i.b, align 4
  %i.y = add i32 %2, 2                            ; 5 uses
  %i.z = add i32 %i.y, %i.x                       ; 4 uses
  %i.aa = icmp samesign ult i8 %i.d, 5
  br i1 %i.aa, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.c)
  switch i8 %i.ab, label %bb.m [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.y)
  %i.ad = zext i8 %i.ac to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ae = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.y)
  %i.af = zext i16 %i.ae to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ag = call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %i.y)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ah = call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.y)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.ph = phi i32 [ %i.ah, %bb.k ], [ %i.ag, %bb.j ], [ %i.af, %bb.i ], [ %i.ad, %bb.h ]
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = zext i32 %.0.ph to i64
  %i.ak = call ptr @abs_time_secs_to_str_ex(ptr noundef %i.ai, i64 noundef %i.aj, i32 noundef 18, i32 noundef 1)
  %i.al = sub i32 %i.z, %2
  %i.am = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.al, ptr noundef %i.ak) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.b, %bb.d, %.thread, %bb.f, %bb.g
  %.063.ph = phi i32 [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.v, %.thread ], [ %i.o, %bb.d ], [ %i.l, %bb.b ]
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.an, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.06379 = phi i32 [ %.063.ph, %bb.m ], [ %i.z, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.06379
}

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_secs_to_str_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_challenge_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = add i32 %2, 1                            ; 5 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.f = getelementptr i8, ptr %3, i64 416        ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.g, ptr noundef nonnull @.str.994, ptr noundef %7)
  %i.i = load i32, ptr @ett_challenge, align 4
  %i.j = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull %i.a, ptr noundef %i.h)
  %i.k = load i32, ptr @hf_hdr_name_value, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %2, 2
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.n = add nsw i8 %i.e, -32
  %or.cond = icmp ult i8 %i.n, -31
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @tvb_strsize(ptr noundef %1, i32 noundef %i.d)
  %i.p = add i32 %i.o, %i.d
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %i.e, 31
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %2, 2
  %i.s = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.r, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull @ei_wsp_oversized_uintvar)
  %i.t = load i32, ptr %i.b, align 4
  %i.u = add i32 %i.t, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.w = zext i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %.0122 = phi i32 [ %i.w, %bb.g ], [ %i.s, %bb.f ]
  store i32 %storemerge, ptr %i.b, align 4
  %i.x = add i32 %storemerge, %i.d                ; 10 uses
  %i.y = add i32 %i.x, %.0122                     ; 10 uses
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.aa = icmp eq i8 %i.z, -128
  br i1 %i.aa, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ab = sub i32 %i.y, %2
  %i.ac = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.ab, ptr noundef nonnull @.str.939) ; 2 uses
  %i.ad = load i32, ptr @ett_header, align 4
  %i.ae = call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.ad) ; 2 uses
  %i.af = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %5, ptr noundef %1, i32 noundef %i.x, i32 noundef 1, ptr noundef nonnull @.str.939) ; 0 uses
  %i.ag = add i32 %i.x, 1                         ; 5 uses
  %i.ah = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ag)
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ag)
  %i.ak = icmp ugt i8 %i.aj, 31
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ag)
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 0, ptr %i.c, align 4
  br label %bb.w

bb.m:                                             ; preds = %bb.i, %bb.k
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = call ptr @tvb_get_stringz_enc(ptr noundef %i.an, ptr noundef %1, i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %6, ptr noundef %1, i32 noundef %i.ag, i32 noundef %i.ap, ptr noundef %i.ao) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ac, ptr noundef nonnull @.str.995, ptr noundef %i.ao)
  br label %.loopexit

bb.n:                                             ; preds = %bb.h
  %i.ar = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.au = icmp ugt i8 %i.at, 31
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.x)
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  store i32 0, ptr %i.c, align 4
  br label %bb.w

bb.r:                                             ; preds = %bb.n, %bb.p
  %i.ax = load ptr, ptr %i.f, align 8
  %i.ay = call ptr @tvb_get_stringz_enc(ptr noundef %i.ax, ptr noundef %1, i32 noundef %i.x, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.az = sub i32 %i.x, %2                        ; 2 uses
  %i.ba = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %i.az, ptr noundef %i.ay) ; 3 uses
  %i.bb = load i32, ptr @ett_header, align 4
  %i.bc = call ptr @proto_item_add_subtree(ptr noundef %i.ba, i32 noundef %i.bb) ; 3 uses
  %i.bd = call ptr @proto_tree_add_string(ptr noundef %i.bc, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %i.az, ptr noundef %i.ay) ; 0 uses
  %i.be = load i32, ptr %i.c, align 4
  %i.bf = add i32 %i.be, %i.x                     ; 6 uses
  %i.bg = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bf)
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bf)
  %i.bj = icmp ugt i8 %i.bi, 31
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bf)
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  store i32 0, ptr %i.c, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.t
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = call ptr @tvb_get_stringz_enc(ptr noundef %i.bm, ptr noundef %1, i32 noundef %i.bf, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.bo = load i32, ptr %i.c, align 4
  %i.bp = call ptr @proto_tree_add_string(ptr noundef %i.bc, i32 noundef %6, ptr noundef %1, i32 noundef %i.bf, i32 noundef %i.bo, ptr noundef %i.bn) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ba, ptr noundef nonnull @.str.995, ptr noundef %i.bn)
  %i.bq = load i32, ptr %i.c, align 4
  %i.br = add i32 %i.bq, %i.bf                    ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.y
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.0121148 = phi i32 [ %i.bu, %.lr.ph ], [ %i.br, %bb.v ] ; 2 uses
  %i.bt = sub nuw i32 %i.y, %.0121148
  %i.bu = call fastcc i32 @parameter(ptr noundef %i.bc, ptr noundef %3, ptr noundef %i.ba, ptr noundef %1, i32 noundef %.0121148, i32 noundef %i.bt) ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %i.y
  br i1 %i.bv, label %.lr.ph, label %.loopexit, !llvm.loop !23

bb.w:                                             ; preds = %bb.b, %bb.d, %bb.l, %bb.u, %bb.q
  %.0123.ph = phi i32 [ %i.y, %bb.q ], [ %i.y, %bb.u ], [ %i.y, %bb.l ], [ %i.p, %bb.d ], [ %i.m, %bb.b ]
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.bw, ptr noundef nonnull @ei_wsp_header_invalid_value) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.v, %bb.m, %bb.w
  %.0123147 = phi i32 [ %.0123.ph, %bb.w ], [ %i.y, %bb.m ], [ %i.y, %bb.v ], [ %i.y, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0123147
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @wkh_tod_value_header_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.nstime_t, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
end_hunk_4
