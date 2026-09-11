Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-afp?download=true
inline.NumInlined: 139
inline.NumDeleted: 45
begin_hunk_0_@catsearch_spec:bb.a
  %i.p = add i32 %2, %i.d
  ret i32 %i.p
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @decode_attr_name(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_afp_pad, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = add i32 %3, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %3, %bb.a ]    ; 5 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef %.0)
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = add i32 %.0, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add i32 %.0, 2                           ; 3 uses
  %i.j = tail call ptr @tvb_format_text(ptr noundef %i.h, ptr noundef %2, i32 noundef %i.i, i32 noundef %i.f)
  %i.k = add nuw nsw i32 %i.f, 2
  %i.l = load i32, ptr @ett_afp_extattr_names, align 4
  %i.m = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.0, i32 noundef %i.k, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull @.str.1087, ptr noundef %i.j) ; 2 uses
  %i.n = load i32, ptr @hf_afp_extattr_namelen, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %2, i32 noundef %.0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_afp_extattr_name, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %2, i32 noundef %i.i, i32 noundef %i.f, i32 noundef 2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.d ]
  %i.r = add i32 %.pre-phi, %i.f
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @decode_uuid_acl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_afp_pad, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %3, %bb.a ]    ; 3 uses
  %i.f = zext i16 %4 to i32                       ; 3 uses
  %i.g = and i32 %i.f, 1
  %.not20 = icmp eq i32 %i.g, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_afp_UUID, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %.0, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.j = add i32 %.0, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.j, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.k = and i32 %i.f, 2
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @hf_afp_GRPUUID, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %.1, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.n = add i32 %.1, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.n, %bb.f ], [ %.1, %bb.e ]   ; 4 uses
  %i.o = and i32 %i.f, 4
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.p = load i32, ptr @hf_afp_acl_entrycount, align 4
  %i.q = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %.2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  %i.r = load i32, ptr @ett_afp_ace_entries, align 4
  %i.s = call ptr @proto_item_add_subtree(ptr noundef %i.q, i32 noundef %i.r)
  %i.t = add i32 %.2, 4
  %i.u = load i32, ptr @hf_afp_acl_flags, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = add i32 %.2, 8                           ; 3 uses
  %i.x = load i32, ptr %i.a, align 4              ; 3 uses
  %i.y = icmp ugt i32 %i.x, 500
  br i1 %i.y, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %decode_kauth_acl.exit, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.q, ptr noundef nonnull @ei_afp_too_many_acl_entries, ptr noundef nonnull @.str.1088, i32 noundef %i.x) ; 0 uses
  br label %decode_kauth_acl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %decode_kauth_ace.exit.i
  %.026.i = phi i32 [ %i.ao, %decode_kauth_ace.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.02225.i = phi i32 [ %.0.i.i, %decode_kauth_ace.exit.i ], [ %i.w, %.preheader.i ] ; 5 uses
  %i.aa = load i32, ptr @ett_afp_ace_entry, align 4
  %i.ab = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.s, ptr noundef %0, i32 noundef %.02225.i, i32 noundef 24, i32 noundef %i.aa, ptr noundef null, ptr noundef nonnull @.str.1089, i32 noundef %.026.i) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %decode_kauth_ace.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = load i32, ptr @hf_afp_UUID, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef nonnull %i.ab, i32 noundef %i.ac, ptr noundef %0, i32 noundef %.02225.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %.02225.i, 16                   ; 2 uses
  %i.af = load i32, ptr @hf_afp_ace_flags, align 4
  %i.ag = load i32, ptr @ett_afp_ace_flags, align 4
  %i.ah = call ptr @proto_tree_add_bitmask(ptr noundef nonnull %i.ab, ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull @decode_ace_flags_bitmap.bitmaps, i32 noundef 0) ; 0 uses
  %i.ai = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ae) ; 0 uses
  %i.aj = add i32 %.02225.i, 20                   ; 2 uses
  %i.ak = load i32, ptr @hf_afp_acl_access_bitmap, align 4
  %i.al = load i32, ptr @ett_afp_acl_access_bitmap, align 4
  %i.am = call ptr @proto_tree_add_bitmask(ptr noundef nonnull %i.ab, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, ptr noundef nonnull @decode_acl_access_bitmap.bitmaps, i32 noundef 0) ; 0 uses
  %i.an = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.aj) ; 0 uses
  br label %decode_kauth_ace.exit.i

decode_kauth_ace.exit.i:                          ; preds = %bb.j, %.lr.ph.i
  %.0.i.i = add i32 %.02225.i, 24                 ; 2 uses
  %i.ao = add nuw i32 %.026.i, 1                  ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %decode_kauth_acl.exit, !llvm.loop !15

decode_kauth_acl.exit:                            ; preds = %decode_kauth_ace.exit.i, %.preheader.i, %bb.i
  %.023.i = phi i32 [ %i.w, %bb.i ], [ %i.w, %.preheader.i ], [ %.0.i.i, %decode_kauth_ace.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %decode_kauth_acl.exit, %bb.g
  %.3 = phi i32 [ %.023.i, %decode_kauth_acl.exit ], [ %.2, %bb.g ]
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_stringz_enc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @reply_enumerate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_afp_file_bitmap, align 4
  %i.b = load i32, ptr @ett_afp_file_bitmap, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull @decode_file_bitmap.bitmaps, i32 noundef 0) ; 0 uses
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.e = load i32, ptr @hf_afp_dir_bitmap, align 4
  %i.f = load i32, ptr @ett_afp_dir_bitmap, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @decode_dir_bitmap.bitmaps, i32 noundef 0) ; 0 uses
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @hf_afp_req_count, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0)
  %i.l = load i32, ptr @ett_afp_enumerate, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %i.n = zext i16 %i.i to i32
  %i.o = tail call fastcc i32 @loop_record(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i32 noundef 6, i32 noundef %i.n, i16 noundef zeroext %i.h, i16 noundef zeroext %i.d, i32 noundef 0, i32 noundef %3)
  ret i32 %i.o
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @loop_record(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 6, 25) %3, i32 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i32 noundef range(i32 0, 3) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %8, 0                       ; 2 uses
  %i.b = shl nuw nsw i32 %7, 1
  %9 = add nuw nsw i32 %8, 1
  %.not85 = icmp eq ptr %2, null
  %i.c = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.07693 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.s ] ; 2 uses
  %.07992 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.s ]
  %.08191 = phi i32 [ %3, %.lr.ph ], [ %i.ai, %bb.s ] ; 13 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.08191)
  %i.e = zext i16 %i.d to i32
  %i.f = add nuw nsw i32 %i.b, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.08191)
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %7, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.077 = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]        ; 2 uses
  %.not84 = icmp eq i32 %.077, 0
  br i1 %.not84, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i32 %.0, %.08191
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j) ; 2 uses
  br i1 %.not85, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw nsw i32 %9, %.0
  %.not86 = icmp eq i8 %i.k, 0
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.n = add i32 %i.l, %.08191                    ; 2 uses
  br i1 %.not86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call fastcc ptr @name_in_bitmap(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.n, i16 noundef zeroext %5, i32 noundef 1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = tail call fastcc ptr @name_in_bitmap(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.n, i16 noundef zeroext %6, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.078 = phi ptr [ %i.o, %bb.h ], [ %i.p, %bb.i ] ; 2 uses
  %.not87 = icmp eq ptr %.078, null
  %i.q = load i32, ptr @ett_afp_enumerate_line, align 4 ; 2 uses
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @proto_tree_add_subtree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.08191, i32 noundef %.077, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull %.078)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = add nuw nsw i32 %.07693, 1
  %i.t = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.08191, i32 noundef %.077, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull @.str.1090, i32 noundef %i.s)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f
  %.1 = phi ptr [ %i.r, %bb.k ], [ %i.t, %bb.l ], [ %.07992, %bb.f ] ; 7 uses
  br i1 %.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = load i32, ptr @hf_afp_struct_size16, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.u, ptr noundef %0, i32 noundef %.08191, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = add i32 %.08191, 2
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %hf_afp_struct_size.sink = phi ptr [ @hf_afp_file_flag, %bb.n ], [ @hf_afp_struct_size, %bb.m ]
  %.08191.sink = phi i32 [ %i.w, %bb.n ], [ %.08191, %bb.m ]
  %.sink101 = phi i32 [ 3, %bb.n ], [ 1, %bb.m ]
  %hf_afp_file_flag.sink = phi ptr [ @hf_afp_pad, %bb.n ], [ @hf_afp_file_flag, %bb.m ]
  %.sink = phi i32 [ 4, %bb.n ], [ 2, %bb.m ]
  %i.x = load i32, ptr %hf_afp_struct_size.sink, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.x, ptr noundef %0, i32 noundef %.08191.sink, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = add i32 %.08191, %.sink101
  %i.aa = load i32, ptr %hf_afp_file_flag.sink, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %.08191, %.sink                 ; 2 uses
  %.not88 = icmp eq i8 %i.k, 0
  br i1 %.not88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.ad = tail call fastcc i32 @parse_dir_bitmap(ptr noundef %.1, ptr noundef %0, i32 noundef %i.ac, i16 noundef zeroext %5)
  br label %bb.q

bb.p:                                             ; preds = %.thread
  %i.ae = tail call fastcc i32 @parse_file_bitmap(ptr noundef %.1, ptr noundef %0, i32 noundef %i.ac, i16 noundef zeroext %6, i32 noundef 0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi i32 [ %i.ad, %bb.o ], [ %i.ae, %bb.p ] ; 2 uses
  %i.af = and i32 %.3, 1
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = load i32, ptr @hf_afp_pad, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %.1, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = add i32 %.077, %.08191                  ; 2 uses
  %i.aj = add nuw nsw i32 %.07693, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.e, %bb.s, %bb.a
  %.081.lcssa = phi i32 [ %3, %bb.a ], [ %i.ai, %bb.s ], [ %.08191, %bb.e ]
  ret i32 %.081.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @name_in_bitmap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32                       ; 14 uses
  %i.b = shl nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.c = and i32 %i.b, 2
  %i.d = and i32 %i.b, 4
  %i.e = and i32 %i.a, 4
  %i.f = lshr i32 %i.a, 1
  %i.g = and i32 %i.f, 4
  %i.h = lshr i32 %i.a, 2
  %i.i = and i32 %i.h, 4
  %i.j = and i32 %i.a, 32
  %spec.select = add i32 %i.e, %2
  %.1 = add i32 %spec.select, %i.j
  %.2 = add i32 %.1, %i.c
  %.3 = add i32 %.2, %i.d
  %.4 = add i32 %.3, %i.g
  %.5 = add i32 %.4, %i.i                         ; 3 uses
  %i.k = and i32 %i.a, 64
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %.5) ; 2 uses
  %.not72 = icmp eq i16 %i.l, 0
  br i1 %.not72, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %i.l to i32
  %i.n = add i32 %2, %i.m                         ; 2 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.n)
  %i.p = add i32 %i.n, 1
  %i.q = zext i8 %i.o to i32
  %i.r = tail call ptr @tvb_get_string_enc(ptr noundef %0, ptr noundef %1, i32 noundef %i.p, i32 noundef %i.q, i32 noundef 0)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.s = add i32 %.5, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.6 = phi i32 [ %i.s, %bb.d ], [ %.5, %bb.a ]
  %i.t = lshr i32 %i.a, 6
  %spec.select86 = and i32 %i.t, 6
  %.8 = add i32 %spec.select86, %.6
  %.not75 = icmp eq i32 %4, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.a, 8
  %i.v = lshr i32 %i.a, 9
  %i.w = and i32 %i.v, 4
  %i.x = lshr i32 %i.a, 10
  %i.y = and i32 %i.x, 4
  %spec.select87 = and i32 %i.u, 6
  %.10 = add nuw nsw i32 %spec.select87, %i.w
  %.11 = add nuw nsw i32 %.10, %i.y
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = lshr i32 %i.a, 7
  %i.aa = and i32 %i.z, 4
  %i.ab = lshr i32 %i.a, 8                        ; 2 uses
  %i.ac = and i32 %i.ab, 4
  %i.ad = and i32 %i.ab, 8
  %i.ae = lshr i32 %i.a, 11
  %i.af = and i32 %i.ae, 2
  %spec.select88 = add nuw nsw i32 %i.ac, %i.aa
  %.13 = add nuw nsw i32 %spec.select88, %i.ad
  %.14 = or disjoint i32 %.13, %i.af
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.11.pn = phi i32 [ %.11, %bb.f ], [ %.14, %bb.g ]
  %i.ag = and i32 %i.a, 8192
  %.not84 = icmp eq i32 %i.ag, 0
  br i1 %.not84, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.15 = add i32 %.11.pn, %.8
  %i.ah = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %.15) ; 2 uses
  %.not85 = icmp eq i16 %i.ah, 0
  br i1 %.not85, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %2, %i.ai                       ; 2 uses
  %i.ak = add i32 %i.aj, 4
  %i.al = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.ak)
  %i.am = add i32 %i.aj, 6
  %i.an = zext i16 %i.al to i32
  %i.ao = tail call ptr @tvb_get_string_enc(ptr noundef %0, ptr noundef %1, i32 noundef %i.am, i32 noundef %i.an, i32 noundef 2)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.c
  %.0 = phi ptr [ %i.r, %bb.c ], [ %i.ao, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @reply_catsearch(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_afp_cat_position, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_afp_file_bitmap, align 4
  %i.d = load i32, ptr @ett_afp_file_bitmap, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 16, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @decode_file_bitmap.bitmaps, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 16)
  %i.g = load i32, ptr @hf_afp_dir_bitmap, align 4
  %i.h = load i32, ptr @ett_afp_dir_bitmap, align 4
end_hunk_0
