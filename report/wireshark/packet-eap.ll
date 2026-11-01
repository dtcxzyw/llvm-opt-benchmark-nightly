Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-eap?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@dissect_eap_identity_3gpp:bb.a
  %i.fp = call i64 @strlen(ptr noundef %i.ef) #6
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add i32 %i.fq, -3
  %i.fs = call ptr @proto_tree_add_uint(ptr noundef %.0114, i32 noundef %.0107, ptr noundef %0, i32 noundef %i.fo, i32 noundef %i.fr, i32 noundef %i.ew) ; 0 uses
  br label %.thread

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %i.ft = phi ptr [ %i.gc, %.lr.ph ], [ %i.fb, %bb.aa ]
  %.0132 = phi i32 [ %i.fz, %.lr.ph ], [ 0, %bb.aa ]
  %i.fu = phi i32 [ %i.fy, %.lr.ph ], [ %i.fa, %bb.aa ]
  %i.fv = call i64 @strlen(ptr noundef %i.ft) #6
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = add i32 %i.fw, 1
  %i.fy = add i32 %i.fx, %i.fu                    ; 3 uses
  store i32 %i.fy, ptr %i.a, align 4
  %i.fz = add i32 %.0132, 1                       ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [8 x i8], ptr %.2, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.gc, %i.ef
  br i1 %.not128, label %._crit_edge, label %.lr.ph, !llvm.loop !7

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.z, %._crit_edge, %bb.x, %bb.y, %bb.l, %bb.k, %bb.j, %bb.d, %bb.e, %bb.b, %bb.c
  %.1113 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %.0112, %._crit_edge ], [ %.0112, %bb.z ], [ %.0112, %bb.y ], [ %.0112, %bb.x ], [ %i.bg, %bb.l ], [ null, %bb.j ], [ %i.bg, %bb.k ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %.3 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %.2, %._crit_edge ], [ %.2, %bb.z ], [ %.2, %bb.y ], [ %.2, %bb.x ], [ %i.bk, %bb.l ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %i.ba, %bb.i ]
  %.1109 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %._crit_edge ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ]
  call void @g_strfreev(ptr noundef %.1113)
  call void @g_strfreev(ptr noundef %.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i1 %.1109
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_ascii_isprint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @g_strv_length(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @realm_is_3gpp(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_strv_length(ptr noundef %0) ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ult i32 %i.a, 5
  br i1 %i.b, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add i32 %i.a, -4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @g_ascii_strncasecmp(ptr noundef %i.f, ptr noundef @.str.430, i64 noundef 3)
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = add i32 %i.a, -3
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @g_ascii_strncasecmp(ptr noundef %i.k, ptr noundef @.str.431, i64 noundef 3)
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %i.a, -2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @g_ascii_strncasecmp(ptr noundef %i.p, ptr noundef @.str.432, i64 noundef 11)
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %i.a, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @g_ascii_strncasecmp(ptr noundef %i.u, ptr noundef @.str.433, i64 noundef 3)
  %.not18 = icmp eq i32 %i.v, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i1 [ false, %bb.c ], [ %.not18, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissect_e212_utf8_imsi(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_uint8_length(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_eap() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.352, ptr noundef @.str.353, ptr noundef @.str.354) ; 2 uses
  store i32 %i.a, ptr @proto_eap, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_eap.hf, i32 noundef 157)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_eap.ett, i32 noundef 17)
  %i.b = load i32, ptr @proto_eap, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_eap.ei, i32 noundef 9)
  %i.d = load i32, ptr @proto_eap, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.354, ptr noundef @dissect_eap, i32 noundef %i.d)
  store ptr %i.e, ptr @eap_handle, align 8
  tail call void @reassembly_table_register(ptr noundef @eap_tls_reassembly_table, ptr noundef @addresses_reassembly_table_functions)
  %i.f = load i32, ptr @proto_eap, align 4
  %i.g = tail call ptr @register_dissector_table(ptr noundef @.str.321, ptr noundef @.str.320, i32 noundef %i.f, i32 noundef 6, i32 noundef 2)
  store ptr %i.g, ptr @eap_expanded_type_dissector_table, align 8
  tail call void @register_external_value_string_ext(ptr noundef @.str.355, ptr noundef @eap_type_vals_ext)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_eap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct._address, align 8           ; 12 uses
  %5 = alloca %struct._address, align 8           ; 12 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @col_set_str(ptr noundef %i.p, i32 noundef 35, ptr noundef @.str.353)
  %i.q = load ptr, ptr %i.o, align 8
  tail call void @col_clear(ptr noundef %i.q, i32 noundef 25)
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 8 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext i8 %i.r to i32
  %i.x = tail call ptr @val_to_str(ptr noundef %i.v, i32 noundef %i.w, ptr noundef @eap_code_vals, ptr noundef @.str.555)
  tail call void @col_add_str(ptr noundef %i.t, i32 noundef 25, ptr noundef %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.y = getelementptr i8, ptr %1, i64 385
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16               ; 7 uses
  %i.ac = getelementptr i8, ptr %1, i64 288
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 292
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 208       ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aj = icmp eq i8 %i.r, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %4, align 8
  store i32 0, ptr %i.ak, align 4
  store ptr null, ptr %i.al, align 8
  store ptr null, ptr %i.am, align 8
  store i32 1, ptr %5, align 8
  store i32 6, ptr %i.an, align 4
  store ptr @dissect_eap.pae_group_address_mac_addr, ptr %i.ao, align 8
  store ptr null, ptr %i.ap, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 8
  store i32 6, ptr %i.ak, align 4
  store ptr @dissect_eap.pae_group_address_mac_addr, ptr %i.al, align 8
  store ptr null, ptr %i.am, align 8
  store i32 0, ptr %5, align 8
  store i32 0, ptr %i.an, align 4
  store ptr null, ptr %i.ao, align 8
  store ptr null, ptr %i.ap, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %1, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8
  %6 = load <2 x i32>, ptr %i.ag, align 8
  store <2 x i32> %6, ptr %4, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %1, i64 232
  %i.av = getelementptr i8, ptr %1, i64 240
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load <2 x i32>, ptr %i.au, align 8
  store <2 x i32> %i.ax, ptr %5, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.az, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0479 = phi i32 [ 443, %bb.c ], [ %i.ad, %bb.d ], [ %i.ad, %bb.e ]
  %.0477 = phi i32 [ %i.af, %bb.c ], [ 443, %bb.d ], [ %i.af, %bb.e ]
  %i.ba = icmp eq i8 %i.r, 1                      ; 4 uses
  %i.bb = select i1 %i.ba, i32 0, i32 %i.ab
  %.1480 = or i32 %.0479, %i.bb                   ; 2 uses
  %i.bc = select i1 %i.ba, i32 %i.ab, i32 0
  %.1478 = or i32 %.0477, %i.bc                   ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 284       ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.be)
  call void @conversation_set_conv_addr_port_endpoints(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %i.bf, i32 noundef %.1480, i32 noundef %.1478)
  %i.bg = getelementptr i8, ptr %1, i64 80        ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 53
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = and i16 %i.bj, 8
  %i.bl = icmp eq i16 %i.bk, 0
  %or.cond = and i1 %i.ba, %i.bl
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bo = call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bq = getelementptr i8, ptr %1, i64 20
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = load i32, ptr %i.bd, align 4
  %i.bt = call i32 @conversation_pt_to_conversation_type(i32 noundef %i.bs)
  %i.bu = call ptr @conversation_new(i32 noundef %i.br, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %i.bt, i32 noundef %.1480, i32 noundef %.1478, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.1485 = phi ptr [ %i.bu, %.thread ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bv = load i32, ptr @proto_eap, align 4
  %i.bw = call ptr @conversation_get_proto_data(ptr noundef %.1485, i32 noundef %i.bv) ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = call ptr @wmem_file_scope()
  %i.bz = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.by, i64 noundef 24) #7 ; 5 uses
  store i32 -1, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  store i64 -1, ptr %i.cb, align 4
  %i.cc = load i32, ptr @proto_eap, align 4
  call void @conversation_add_proto_data(ptr noundef %.1485, i32 noundef %i.cc, ptr noundef %i.bz)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0483 = phi ptr [ %i.bz, %bb.j ], [ %i.bw, %bb.i ] ; 17 uses
  %i.cd = icmp eq i8 %i.r, 4
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr i8, ptr %.0483, i64 16
  store i32 -1, ptr %i.ce, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 6 uses
  %i.cg = zext i16 %i.cf to i32                   ; 10 uses
  %i.ch = load i32, ptr @proto_eap, align 4
  %i.ci = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ch, ptr noundef %0, i32 noundef 0, i32 noundef %i.cg, i32 noundef 0)
  %i.cj = load i32, ptr @ett_eap, align 4
  %i.ck = call ptr @proto_item_add_subtree(ptr noundef %i.ci, i32 noundef %i.cj) ; 43 uses
  %i.cl = load i32, ptr @hf_eap_code, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_eap_identifier, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cn, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.cp = load i32, ptr @hf_eap_len, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cp, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0)
  %i.cr = icmp ult i16 %i.cf, 4
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = call i32 @tvb_reported_length(ptr noundef %0)
  %i.ct = icmp ult i32 %i.cs, %i.cg
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.cq, ptr noundef @ei_eap_bad_length) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not = icmp eq ptr %.0483, null                ; 5 uses
  br i1 %.not, label %.thread519, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = icmp eq i8 %i.r, 5
  %i.cw = and i8 %i.r, -5
  %i.cx = add i8 %i.cw, -1
  %or.cond13 = icmp ult i8 %i.cx, 2
  br i1 %or.cond13, label %bb.r, label %.thread519

bb.r:                                             ; preds = %bb.q
  %i.cy = load ptr, ptr %i.bg, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 53
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = and i16 %i.da, 8
  %.not500 = icmp eq i16 %i.db, 0
  br i1 %.not500, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %or.cond16 = or i1 %i.ba, %i.cv
  %.v = select i1 %or.cond16, i64 20, i64 22
  %i.dc = getelementptr i8, ptr %.0483, i64 %.v   ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i32
  %i.df = zext i8 %i.s to i32
  %i.dg = icmp eq i32 %i.de, %i.df
  %i.dh = zext i8 %i.s to i16
  store i16 %i.dh, ptr %i.dc, align 2
  br i1 %i.dg, label %.thread516, label %.thread519

.thread516:                                       ; preds = %bb.s
  %i.di = call ptr @wmem_file_scope()
  %i.dj = load i32, ptr @proto_eap, align 4
  call void @p_add_proto_data(ptr noundef %i.di, ptr noundef %1, i32 noundef %i.dj, i32 noundef %i.ab, ptr noundef nonnull inttoptr (i64 1 to ptr))
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dk = call ptr @wmem_file_scope()
  %i.dl = load i32, ptr @proto_eap, align 4
  %i.dm = call ptr @p_get_proto_data(ptr noundef %i.dk, ptr noundef %1, i32 noundef %i.dl, i32 noundef %i.ab)
  %.not542 = icmp eq ptr %i.dm, null
  br i1 %.not542, label %.thread519, label %bb.u

bb.u:                                             ; preds = %.thread516, %bb.t
  %i.dn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.co, ptr noundef @ei_eap_retransmission) ; 0 uses
  br label %.thread519

.thread519:                                       ; preds = %bb.s, %bb.q, %bb.u, %bb.t, %bb.p
  %.1476.shrunk = phi i1 [ true, %bb.u ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.s ]
  %.off = add i8 %i.r, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.v, label %dissect_eap_aka.exit

bb.v:                                             ; preds = %.thread519
  %i.do = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 6 uses
  %i.dp = load ptr, ptr %i.o, align 8
  %i.dq = load ptr, ptr %i.u, align 8
  %i.dr = zext i8 %i.do to i32
  %i.ds = call ptr @val_to_str_ext(ptr noundef %i.dq, i32 noundef %i.dr, ptr noundef @eap_type_vals_ext, ptr noundef @.str.557)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dp, i32 noundef 25, ptr noundef @.str.556, ptr noundef %i.ds)
  %i.dt = load i32, ptr @hf_eap_type, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.dt, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dv = icmp ugt i16 %i.cf, 5
  br i1 %i.dv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = icmp ne i16 %i.cf, 5
  %i.dx = icmp ne i8 %i.do, 1
  %or.cond19.not545 = or i1 %i.dw, %i.dx
  %brmerge = or i1 %.not, %or.cond19.not545
  br i1 %brmerge, label %dissect_eap_aka.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dy = add nsw i32 %i.cg, -5                   ; 11 uses
  switch i8 %i.do, label %bb.dj [
    i8 1, label %.thread522
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 43, label %bb.ag
    i8 25, label %bb.ag
    i8 21, label %bb.ag
    i8 13, label %bb.ag
    i8 55, label %bb.ag
    i8 17, label %bb.by
    i8 26, label %bb.cf
    i8 18, label %bb.cg
    i8 23, label %bb.ch
    i8 50, label %bb.ch
    i8 -2, label %bb.cw
    i8 46, label %bb.cx
end_hunk_0
