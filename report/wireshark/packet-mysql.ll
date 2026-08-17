inline.NumInlined: 176
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mariadb_dissect_caps_or_flags:bb.a

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint24(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 1, 10) i32 @tvb_get_fle(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %i.a, label %bb.k [
    i8 -5, label %bb.d
    i8 -4, label %bb.h
    i8 -3, label %bb.i
    i8 -2, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %3, align 1
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.b = add i32 %1, 1
  %i.c = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.b, i32 noundef -2147483648)
  %i.d = zext i16 %i.c to i64
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.e = add i32 %1, 1
  %i.f = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.e, i32 noundef -2147483648)
  %i.g = zext i32 %i.f to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.h = add i32 %1, 1
  %i.i = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.h, i32 noundef -2147483648)
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.k = zext i8 %i.j to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.024 = phi i32 [ 1, %bb.k ], [ 3, %bb.h ], [ 4, %bb.i ], [ 9, %bb.j ] ; 2 uses
  %.0 = phi i64 [ %i.k, %bb.k ], [ %i.d, %bb.h ], [ %i.g, %bb.i ], [ %i.i, %bb.j ]
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %.0, ptr %2, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.g
  %.025 = phi i32 [ 1, %bb.f ], [ 1, %bb.g ], [ %.024, %bb.m ], [ %.024, %bb.l ]
  ret i32 %.025
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @mysql_dissect_auth_switch_request(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 4, 6) %2, ptr noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.1271)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_set_fence(ptr noundef %i.c, i32 noundef 25)
  %i.d = getelementptr i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val, i64 53
  %.val.val = load i16, ptr %i.e, align 1
  %i.f = and i16 %.val.val, 8
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %bb.b, label %mysql_set_conn_state.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %4, i64 56
  store i32 17, ptr %i.g, align 8
  br label %mysql_set_conn_state.exit

mysql_set_conn_state.exit:                        ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %4, i64 6
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %mysql_set_conn_state.exit
  %i.k = tail call i32 @tvb_strnlen(ptr noundef %0, i32 noundef %2, i32 noundef -1) ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %2)
  br label %my_tvb_strsize.exit

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw i32 %i.k, 1
  br label %my_tvb_strsize.exit

my_tvb_strsize.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = load i32, ptr @hf_mysql_auth_switch_request_name, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.o, ptr noundef %0, i32 noundef %2, i32 noundef %.0.i, i32 noundef 0) ; 0 uses
  %i.q = tail call ptr @wmem_file_scope()
  %i.r = tail call ptr @tvb_get_string_enc(ptr noundef %i.q, ptr noundef %0, i32 noundef %2, i32 noundef %.0.i, i32 noundef 0)
  %i.s = getelementptr i8, ptr %4, i64 40
  store ptr %i.r, ptr %i.s, align 8
  %i.t = add i32 %.0.i, %2                        ; 4 uses
  %i.u = tail call i32 @tvb_strnlen(ptr noundef %0, i32 noundef %i.t, i32 noundef -1) ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %my_tvb_strsize.exit
  %i.w = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.t)
  br label %my_tvb_strsize.exit32

bb.g:                                             ; preds = %my_tvb_strsize.exit
  %i.x = add nuw i32 %i.u, 1
  br label %my_tvb_strsize.exit32

my_tvb_strsize.exit32:                            ; preds = %bb.f, %bb.g
  %.0.i31 = phi i32 [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %i.y = load i32, ptr @hf_mysql_auth_switch_request_data, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.t, i32 noundef %.0.i31, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.0.i31, %i.t
  br label %bb.i

bb.h:                                             ; preds = %mysql_set_conn_state.exit
  %i.ab = load i32, ptr @hf_mysql_auth_switch_request_status, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ab, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ad = add nuw nsw i32 %2, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %my_tvb_strsize.exit32
  %.0 = phi i32 [ %i.aa, %my_tvb_strsize.exit32 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ae = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0)
  %i.af = add i32 %i.ae, %.0
  ret i32 %i.af
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @mysql_dissect_ok_packet(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_append_str(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.1272)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_set_fence(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  switch i8 %i.e, label %bb.e [
    i8 -5, label %tvb_get_fle.exit
    i8 -4, label %bb.b
    i8 -3, label %bb.c
    i8 -2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 6, i32 noundef -2147483648)
  %i.g = zext i16 %i.f to i64
  br label %tvb_get_fle.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef 6, i32 noundef -2147483648)
  %i.i = zext i32 %i.h to i64
  br label %tvb_get_fle.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef 6, i32 noundef -2147483648)
  br label %tvb_get_fle.exit

bb.e:                                             ; preds = %bb.a
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.l = zext i8 %i.k to i64
  br label %tvb_get_fle.exit

tvb_get_fle.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.0114 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.e ], [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %.025.i = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 9, %bb.d ] ; 5 uses
  %i.m = load i32, ptr @hf_mysql_affected_rows, align 4
  %i.n = tail call ptr @proto_tree_add_uint64(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef %.025.i, i64 noundef %.0114) ; 0 uses
  %i.o = add nuw nsw i32 %.025.i, 5               ; 4 uses
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.o)
  switch i8 %i.p, label %bb.i [
    i8 -5, label %tvb_get_fle.exit90
    i8 -4, label %bb.f
    i8 -3, label %bb.g
    i8 -2, label %bb.h
  ]

bb.f:                                             ; preds = %tvb_get_fle.exit
  %i.q = add nuw nsw i32 %.025.i, 6
  %i.r = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.q, i32 noundef -2147483648)
  %i.s = zext i16 %i.r to i64
  br label %tvb_get_fle.exit90

bb.g:                                             ; preds = %tvb_get_fle.exit
  %i.t = add nuw nsw i32 %.025.i, 6
  %i.u = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.t, i32 noundef -2147483648)
  %i.v = zext i32 %i.u to i64
  br label %tvb_get_fle.exit90

bb.h:                                             ; preds = %tvb_get_fle.exit
  %i.w = add nuw nsw i32 %.025.i, 6
  %i.x = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.w, i32 noundef -2147483648)
  br label %tvb_get_fle.exit90

bb.i:                                             ; preds = %tvb_get_fle.exit
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.o)
  %i.z = zext i8 %i.y to i64
  br label %tvb_get_fle.exit90

tvb_get_fle.exit90:                               ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %tvb_get_fle.exit
  %.0113 = phi i64 [ 0, %tvb_get_fle.exit ], [ %i.z, %bb.i ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %.025.i89 = phi i32 [ 1, %tvb_get_fle.exit ], [ 1, %bb.i ], [ 3, %bb.f ], [ 4, %bb.g ], [ 9, %bb.h ] ; 2 uses
  %i.aa = load i32, ptr @hf_mysql_insert_id, align 4
  %i.ab = tail call ptr @proto_tree_add_uint64(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.o, i32 noundef %.025.i89, i64 noundef %.0113) ; 0 uses
  %i.ac = add nuw nsw i32 %.025.i89, %i.o         ; 6 uses
  %i.ad = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ac)
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %tvb_get_fle.exit90
  %i.ae = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ac) ; 3 uses
  %i.af = load i32, ptr @hf_mysql_server_status, align 4
  %i.ag = load i32, ptr @ett_stat, align 4
  %i.ah = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull @mysql_stat_flags, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.ai = add nuw nsw i32 %i.ac, 2                ; 5 uses
  %i.aj = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ai)
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %3, i64 4
  %i.am = load i16, ptr %i.al, align 4
  %i.an = load i16, ptr %3, align 8
  %i.ao = and i16 %i.am, 512
  %i.ap = and i16 %i.ao, %i.an
  %.not80 = icmp eq i16 %i.ap, 0
  br i1 %.not80, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr @hf_mysql_num_warn, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.as = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ai)
  %i.at = zext i16 %i.as to i64
  %i.au = add nuw nsw i32 %i.ac, 4
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %tvb_get_fle.exit90
  %.0115 = phi i64 [ 0, %tvb_get_fle.exit90 ], [ 0, %bb.k ], [ %i.at, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %.0112 = phi i16 [ 0, %tvb_get_fle.exit90 ], [ %i.ae, %bb.k ], [ %i.ae, %bb.l ], [ %i.ae, %bb.j ]
  %.0 = phi i32 [ %i.ac, %tvb_get_fle.exit90 ], [ %i.ai, %bb.k ], [ %i.au, %bb.l ], [ %i.ai, %bb.j ] ; 14 uses
  %i.av = getelementptr i8, ptr %3, i64 6
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, 128
  %.not81 = icmp eq i16 %i.ax, 0
  %i.ay = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0)
  %.not82 = icmp eq i32 %i.ay, 0                  ; 2 uses
  br i1 %.not81, label %bb.bq, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not82, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0)
  switch i8 %i.az, label %bb.s [
    i8 -5, label %tvb_get_fle.exit94.thread
    i8 -4, label %bb.p
    i8 -3, label %bb.q
    i8 -2, label %bb.r
  ]

tvb_get_fle.exit94.thread:                        ; preds = %bb.o
  %i.ba = add nuw nsw i32 %.0, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bb = add nuw nsw i32 %.0, 1
  %i.bc = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.bb, i32 noundef -2147483648)
  %i.bd = zext i16 %i.bc to i64
  br label %tvb_get_fle.exit94

bb.q:                                             ; preds = %bb.o
  %i.be = add nuw nsw i32 %.0, 1
  %i.bf = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.be, i32 noundef -2147483648)
  %i.bg = zext i32 %i.bf to i64
  br label %tvb_get_fle.exit94

bb.r:                                             ; preds = %bb.o
  %i.bh = add nuw nsw i32 %.0, 1
  %i.bi = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.bh, i32 noundef -2147483648)
  br label %tvb_get_fle.exit94

bb.s:                                             ; preds = %bb.o
  %i.bj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0)
  %i.bk = zext i8 %i.bj to i64
  br label %tvb_get_fle.exit94

tvb_get_fle.exit94:                               ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.2117 = phi i64 [ %i.bi, %bb.r ], [ %i.bk, %bb.s ], [ %i.bd, %bb.p ], [ %i.bg, %bb.q ] ; 2 uses
  %.025.i93 = phi i32 [ 9, %bb.r ], [ 1, %bb.s ], [ 3, %bb.p ], [ 4, %bb.q ]
  %i.bl = add nuw nsw i32 %.025.i93, %.0          ; 3 uses
  %.not84 = icmp eq i64 %.2117, 0
  br i1 %.not84, label %bb.u, label %bb.t

bb.t:                                             ; preds = %tvb_get_fle.exit94
  %i.bm = load i32, ptr @hf_mysql_message, align 4
  %i.bn = trunc i64 %.2117 to i32                 ; 2 uses
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %i.bl, %i.bn
  br label %bb.u

bb.u:                                             ; preds = %tvb_get_fle.exit94.thread, %bb.t, %tvb_get_fle.exit94
  %.1 = phi i32 [ %i.bp, %bb.t ], [ %i.bl, %tvb_get_fle.exit94 ], [ %i.ba, %tvb_get_fle.exit94.thread ] ; 9 uses
  %i.bq = and i16 %.0112, 16384
  %.not85 = icmp eq i16 %i.bq, 0
  br i1 %.not85, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1)
  switch i8 %i.br, label %bb.z [
    i8 -5, label %tvb_get_fle.exit98
    i8 -4, label %bb.w
    i8 -3, label %bb.x
    i8 -2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bs = add i32 %.1, 1
  %i.bt = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.bs, i32 noundef -2147483648)
  %i.bu = zext i16 %i.bt to i64
  br label %tvb_get_fle.exit98

bb.x:                                             ; preds = %bb.v
  %i.bv = add i32 %.1, 1
  %i.bw = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.bv, i32 noundef -2147483648)
  %i.bx = zext i32 %i.bw to i64
  br label %tvb_get_fle.exit98

bb.y:                                             ; preds = %bb.v
  %i.by = add i32 %.1, 1
  %i.bz = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.by, i32 noundef -2147483648)
  br label %tvb_get_fle.exit98

bb.z:                                             ; preds = %bb.v
  %i.ca = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1)
  %i.cb = zext i8 %i.ca to i64
  br label %tvb_get_fle.exit98

tvb_get_fle.exit98:                               ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.v
  %.1111 = phi i64 [ 0, %bb.v ], [ %i.cb, %bb.z ], [ %i.bu, %bb.w ], [ %i.bx, %bb.x ], [ %i.bz, %bb.y ] ; 3 uses
  %.025.i97 = phi i32 [ 1, %bb.v ], [ 1, %bb.z ], [ 3, %bb.w ], [ 4, %bb.x ], [ 9, %bb.y ] ; 2 uses
  %i.cc = load i32, ptr @hf_mysql_session_track_data, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.1, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.ce = load i32, ptr @ett_session_track_data, align 4
  %i.cf = tail call ptr @proto_item_add_subtree(ptr noundef %i.cd, i32 noundef %i.ce)
  %i.cg = load i32, ptr @hf_mysql_session_track_data_length, align 4
  %i.ch = tail call ptr @proto_tree_add_uint64(ptr noundef %i.cd, i32 noundef %i.cg, ptr noundef %0, i32 noundef %.1, i32 noundef %.025.i97, i64 noundef %.1111) ; 0 uses
  %i.ci = add i32 %.025.i97, %.1                  ; 2 uses
  %.not86121 = icmp eq i64 %.1111, 0
  br i1 %.not86121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %tvb_get_fle.exit98
  %i.cj = getelementptr i8, ptr %1, i64 416
  %i.ck = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %4 = getelementptr i8, ptr %3, i64 116
  %5 = getelementptr i8, ptr %3, i64 112
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %add_session_tracker_entry_to_tree.exit
  %.2123 = phi i32 [ %i.ci, %.lr.ph ], [ %.0129.i, %add_session_tracker_entry_to_tree.exit ] ; 8 uses
  %.0110122 = phi i64 [ %.1111, %.lr.ph ], [ %i.ij, %add_session_tracker_entry_to_tree.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cl = load i32, ptr @hf_mysql_session_track, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.cf, i32 noundef %i.cl, ptr noundef %0, i32 noundef %.2123, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cn = load i32, ptr @ett_session_track, align 4
  %i.co = call ptr @proto_item_add_subtree(ptr noundef %i.cm, i32 noundef %i.cn) ; 17 uses
  %i.cp = load i32, ptr @hf_mysql_session_track_type, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.cp, ptr noundef %0, i32 noundef %.2123, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2123)
  %i.cs = add i32 %.2123, 1                       ; 4 uses
  %i.ct = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cs)
  switch i8 %i.ct, label %bb.ae [
    i8 -5, label %tvb_get_fle.exit.i
    i8 -4, label %bb.ab
    i8 -3, label %bb.ac
    i8 -2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cu = add i32 %.2123, 2
  %i.cv = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.cu, i32 noundef -2147483648)
  %i.cw = zext i16 %i.cv to i64
  br label %tvb_get_fle.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cx = add i32 %.2123, 2
  %i.cy = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.cx, i32 noundef -2147483648)
  %i.cz = zext i32 %i.cy to i64
  br label %tvb_get_fle.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.da = add i32 %.2123, 2
  %i.db = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.da, i32 noundef -2147483648)
  br label %tvb_get_fle.exit.i

bb.ae:                                            ; preds = %bb.aa
  %i.dc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cs)
  %i.dd = zext i8 %i.dc to i64
  br label %tvb_get_fle.exit.i

tvb_get_fle.exit.i:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0179.i = phi i64 [ 0, %bb.aa ], [ %i.dd, %bb.ae ], [ %i.cw, %bb.ab ], [ %i.cz, %bb.ac ], [ %i.db, %bb.ad ] ; 2 uses
  %.025.i.i = phi i32 [ 1, %bb.aa ], [ 1, %bb.ae ], [ 3, %bb.ab ], [ 4, %bb.ac ], [ 9, %bb.ad ] ; 2 uses
  %i.de = load i32, ptr @hf_mysql_session_track_length, align 4
  %i.df = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.cs, i32 noundef %.025.i.i, i64 noundef %.0179.i) ; 0 uses
  %i.dg = add i32 %.025.i.i, %i.cs                ; 37 uses
  switch i8 %i.cr, label %bb.bp [
    i8 0, label %bb.af
    i8 1, label %bb.au
    i8 2, label %bb.az
    i8 3, label %bb.ba
    i8 4, label %bb.bf
    i8 5, label %bb.bk
  ]

bb.af:                                            ; preds = %tvb_get_fle.exit.i
  %i.dh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  switch i8 %i.dh, label %bb.aj [
    i8 -5, label %tvb_get_fle.exit134.i
    i8 -4, label %bb.ag
    i8 -3, label %bb.ah
    i8 -2, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.di = add i32 %i.dg, 1
  %i.dj = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.di, i32 noundef -2147483648)
  %i.dk = zext i16 %i.dj to i64
  br label %tvb_get_fle.exit134.i

bb.ah:                                            ; preds = %bb.af
  %i.dl = add i32 %i.dg, 1
  %i.dm = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.dl, i32 noundef -2147483648)
  %i.dn = zext i32 %i.dm to i64
  br label %tvb_get_fle.exit134.i

bb.ai:                                            ; preds = %bb.af
  %i.do = add i32 %i.dg, 1
  %i.dp = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.do, i32 noundef -2147483648)
  br label %tvb_get_fle.exit134.i

bb.aj:                                            ; preds = %bb.af
  %i.dq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  %i.dr = zext i8 %i.dq to i64
  br label %tvb_get_fle.exit134.i

tvb_get_fle.exit134.i:                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0178.i = phi i64 [ 0, %bb.af ], [ %i.dr, %bb.aj ], [ %i.dk, %bb.ag ], [ %i.dn, %bb.ah ], [ %i.dp, %bb.ai ] ; 4 uses
  %.025.i133.i = phi i32 [ 1, %bb.af ], [ 1, %bb.aj ], [ 3, %bb.ag ], [ 4, %bb.ah ], [ 9, %bb.ai ] ; 2 uses
  %i.ds = load i32, ptr @hf_mysql_session_track_sysvar_length, align 4
  %i.dt = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.dg, i32 noundef %.025.i133.i, i64 noundef %.0178.i) ; 0 uses
  %i.du = add i32 %.025.i133.i, %i.dg             ; 4 uses
  %i.dv = load i32, ptr @hf_mysql_session_track_sysvar_name, align 4
  %i.dw = trunc i64 %.0178.i to i32               ; 2 uses
  %i.dx = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef 0) ; 0 uses
  %i.dy = call i32 @tvb_strneql(ptr noundef %0, i32 noundef %i.du, ptr noundef nonnull @.str.1273, i64 noundef %.0178.i)
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  br i1 %i.dz, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %tvb_get_fle.exit134.i
  %i.ea = call i32 @tvb_strneql(ptr noundef %0, i32 noundef %i.du, ptr noundef nonnull @.str.1274, i64 noundef %.0178.i)
  %i.eb = icmp eq i32 %i.ea, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %tvb_get_fle.exit134.i
  %.0.i99 = phi i1 [ %i.eb, %bb.ak ], [ false, %tvb_get_fle.exit134.i ]
  %i.ec = add i32 %i.du, %i.dw                    ; 7 uses
  %i.ed = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ec)
  switch i8 %i.ed, label %bb.ap [
    i8 -5, label %tvb_get_fle.exit138.i
    i8 -4, label %bb.am
    i8 -3, label %bb.an
    i8 -2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.ee = add i32 %i.ec, 1
  %i.ef = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ee, i32 noundef -2147483648)
  %i.eg = zext i16 %i.ef to i64
  br label %tvb_get_fle.exit138.i

bb.an:                                            ; preds = %bb.al
  %i.eh = add i32 %i.ec, 1
  %i.ei = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.eh, i32 noundef -2147483648)
  %i.ej = zext i32 %i.ei to i64
  br label %tvb_get_fle.exit138.i

bb.ao:                                            ; preds = %bb.al
  %i.ek = add i32 %i.ec, 1
  %i.el = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.ek, i32 noundef -2147483648)
  br label %tvb_get_fle.exit138.i

bb.ap:                                            ; preds = %bb.al
  %i.em = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ec)
  %i.en = zext i8 %i.em to i64
  br label %tvb_get_fle.exit138.i

tvb_get_fle.exit138.i:                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.1.i = phi i64 [ 0, %bb.al ], [ %i.en, %bb.ap ], [ %i.eg, %bb.am ], [ %i.ej, %bb.an ], [ %i.el, %bb.ao ] ; 2 uses
  %.025.i137.i = phi i32 [ 1, %bb.al ], [ 1, %bb.ap ], [ 3, %bb.am ], [ 4, %bb.an ], [ 9, %bb.ao ] ; 2 uses
  %i.eo = load i32, ptr @hf_mysql_session_track_sysvar_length, align 4
  %i.ep = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ec, i32 noundef %.025.i137.i, i64 noundef %.1.i) ; 0 uses
  %i.eq = add i32 %.025.i137.i, %i.ec             ; 2 uses
  %i.er = load i32, ptr @hf_mysql_session_track_sysvar_value, align 4
  %i.es = trunc i64 %.1.i to i32                  ; 2 uses
  %i.et = load ptr, ptr %i.cj, align 8
  %i.eu = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.co, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.eq, i32 noundef %i.es, i32 noundef 0, ptr noundef %i.et, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %tvb_get_fle.exit138.i
  %.val.i = load ptr, ptr %i.ck, align 8
  %i.ev = getelementptr i8, ptr %.val.i, i64 53
  %.val.val.i = load i16, ptr %i.ev, align 1
  %i.ew = and i16 %.val.val.i, 8
  %.not.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i.i, label %6, label %mysql_set_encoding_client.exit.i

6:                                                ; preds = %bb.aq
  %7 = load ptr, ptr %i.a, align 8
  %8 = call fastcc i32 @charset_to_encoding(ptr noundef %7)
  store i32 %8, ptr %5, align 8
  br label %mysql_set_encoding_client.exit.i

bb.ar:                                            ; preds = %tvb_get_fle.exit138.i
  br i1 %.0.i99, label %bb.as, label %mysql_set_encoding_client.exit.i

bb.as:                                            ; preds = %bb.ar
  %.val130.i = load ptr, ptr %i.ck, align 8
  %i.ex = getelementptr i8, ptr %.val130.i, i64 53
  %.val130.val.i = load i16, ptr %i.ex, align 1
  %i.ey = and i16 %.val130.val.i, 8
  %.not.i139.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i139.i, label %bb.at, label %mysql_set_encoding_client.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ez = load ptr, ptr %i.a, align 8
  %i.fa = call fastcc i32 @charset_to_encoding(ptr noundef %i.ez)
  store i32 %i.fa, ptr %4, align 4
  br label %mysql_set_encoding_client.exit.i

mysql_set_encoding_client.exit.i:                 ; preds = %bb.at, %bb.as, %bb.ar, %6, %bb.aq
  %i.fb = add i32 %i.eq, %i.es
  br label %add_session_tracker_entry_to_tree.exit

bb.au:                                            ; preds = %tvb_get_fle.exit.i
  %i.fc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  switch i8 %i.fc, label %bb.ay [
    i8 -5, label %tvb_get_fle.exit143.i
    i8 -4, label %bb.av
    i8 -3, label %bb.aw
    i8 -2, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.fd = add i32 %i.dg, 1
  %i.fe = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.fd, i32 noundef -2147483648)
  %i.ff = zext i16 %i.fe to i64
  br label %tvb_get_fle.exit143.i

bb.aw:                                            ; preds = %bb.au
  %i.fg = add i32 %i.dg, 1
  %i.fh = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.fg, i32 noundef -2147483648)
  %i.fi = zext i32 %i.fh to i64
  br label %tvb_get_fle.exit143.i

bb.ax:                                            ; preds = %bb.au
  %i.fj = add i32 %i.dg, 1
  %i.fk = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.fj, i32 noundef -2147483648)
  br label %tvb_get_fle.exit143.i

bb.ay:                                            ; preds = %bb.au
  %i.fl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  %i.fm = zext i8 %i.fl to i64
  br label %tvb_get_fle.exit143.i

tvb_get_fle.exit143.i:                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %.2.i = phi i64 [ 0, %bb.au ], [ %i.fm, %bb.ay ], [ %i.ff, %bb.av ], [ %i.fi, %bb.aw ], [ %i.fk, %bb.ax ] ; 2 uses
  %.025.i142.i = phi i32 [ 1, %bb.au ], [ 1, %bb.ay ], [ 3, %bb.av ], [ 4, %bb.aw ], [ 9, %bb.ax ] ; 2 uses
  %i.fn = load i32, ptr @hf_mysql_session_track_schema_length, align 4
  %i.fo = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.dg, i32 noundef %.025.i142.i, i64 noundef %.2.i) ; 0 uses
  %i.fp = add i32 %.025.i142.i, %i.dg             ; 2 uses
  %i.fq = load i32, ptr @hf_mysql_session_track_schema, align 4
  %i.fr = trunc i64 %.2.i to i32                  ; 2 uses
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.fp, i32 noundef %i.fr, i32 noundef 0) ; 0 uses
  %i.ft = add i32 %i.fp, %i.fr
  br label %add_session_tracker_entry_to_tree.exit

bb.az:                                            ; preds = %tvb_get_fle.exit.i
  %i.fu = load i32, ptr @hf_mysql_session_state_change, align 4
  %i.fv = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.fu, ptr noundef %0, i32 noundef %i.dg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fw = add i32 %i.dg, 1
  br label %add_session_tracker_entry_to_tree.exit

bb.ba:                                            ; preds = %tvb_get_fle.exit.i
  %i.fx = load i32, ptr @hf_mysql_session_track_gtids_encoding, align 4
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.fx, ptr noundef %0, i32 noundef %i.dg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fz = add i32 %i.dg, 1                        ; 4 uses
  %i.ga = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fz)
  switch i8 %i.ga, label %bb.be [
    i8 -5, label %tvb_get_fle.exit147.i
    i8 -4, label %bb.bb
    i8 -3, label %bb.bc
    i8 -2, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.gb = add i32 %i.dg, 2
  %i.gc = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.gb, i32 noundef -2147483648)
  %i.gd = zext i16 %i.gc to i64
  br label %tvb_get_fle.exit147.i

bb.bc:                                            ; preds = %bb.ba
  %i.ge = add i32 %i.dg, 2
  %i.gf = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.ge, i32 noundef -2147483648)
  %i.gg = zext i32 %i.gf to i64
  br label %tvb_get_fle.exit147.i

bb.bd:                                            ; preds = %bb.ba
  %i.gh = add i32 %i.dg, 2
  %i.gi = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.gh, i32 noundef -2147483648)
  br label %tvb_get_fle.exit147.i

bb.be:                                            ; preds = %bb.ba
  %i.gj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fz)
  %i.gk = zext i8 %i.gj to i64
  br label %tvb_get_fle.exit147.i

tvb_get_fle.exit147.i:                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.3.i = phi i64 [ 0, %bb.ba ], [ %i.gk, %bb.be ], [ %i.gd, %bb.bb ], [ %i.gg, %bb.bc ], [ %i.gi, %bb.bd ] ; 2 uses
  %.025.i146.i = phi i32 [ 1, %bb.ba ], [ 1, %bb.be ], [ 3, %bb.bb ], [ 4, %bb.bc ], [ 9, %bb.bd ] ; 2 uses
  %i.gl = load i32, ptr @hf_mysql_session_track_gtids_length, align 4
  %i.gm = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.gl, ptr noundef %0, i32 noundef %i.fz, i32 noundef %.025.i146.i, i64 noundef %.3.i) ; 0 uses
  %i.gn = add i32 %.025.i146.i, %i.fz             ; 2 uses
  %i.go = load i32, ptr @hf_mysql_session_track_gtids, align 4
  %i.gp = trunc i64 %.3.i to i32                  ; 2 uses
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.gp, i32 noundef 0) ; 0 uses
  %i.gr = add i32 %i.gn, %i.gp
  br label %add_session_tracker_entry_to_tree.exit

bb.bf:                                            ; preds = %tvb_get_fle.exit.i
  %i.gs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  switch i8 %i.gs, label %bb.bj [
    i8 -5, label %tvb_get_fle.exit151.i
    i8 -4, label %bb.bg
    i8 -3, label %bb.bh
    i8 -2, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gt = add i32 %i.dg, 1
  %i.gu = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.gt, i32 noundef -2147483648)
  %i.gv = zext i16 %i.gu to i64
  br label %tvb_get_fle.exit151.i

bb.bh:                                            ; preds = %bb.bf
  %i.gw = add i32 %i.dg, 1
  %i.gx = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.gw, i32 noundef -2147483648)
  %i.gy = zext i32 %i.gx to i64
  br label %tvb_get_fle.exit151.i

bb.bi:                                            ; preds = %bb.bf
  %i.gz = add i32 %i.dg, 1
  %i.ha = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.gz, i32 noundef -2147483648)
  br label %tvb_get_fle.exit151.i

bb.bj:                                            ; preds = %bb.bf
  %i.hb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  %i.hc = zext i8 %i.hb to i64
  br label %tvb_get_fle.exit151.i

tvb_get_fle.exit151.i:                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.4.i = phi i64 [ 0, %bb.bf ], [ %i.hc, %bb.bj ], [ %i.gv, %bb.bg ], [ %i.gy, %bb.bh ], [ %i.ha, %bb.bi ] ; 2 uses
  %.025.i150.i = phi i32 [ 1, %bb.bf ], [ 1, %bb.bj ], [ 3, %bb.bg ], [ 4, %bb.bh ], [ 9, %bb.bi ] ; 2 uses
  %i.hd = load i32, ptr @hf_mysql_session_track_transaction_characteristics_length, align 4
  %i.he = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.dg, i32 noundef %.025.i150.i, i64 noundef %.4.i) ; 0 uses
  %i.hf = add i32 %.025.i150.i, %i.dg             ; 2 uses
  %i.hg = load i32, ptr @hf_mysql_session_track_transaction_characteristics, align 4
  %i.hh = trunc i64 %.4.i to i32                  ; 2 uses
  %i.hi = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hg, ptr noundef %0, i32 noundef %i.hf, i32 noundef %i.hh, i32 noundef 0) ; 0 uses
  %i.hj = add i32 %i.hf, %i.hh
  br label %add_session_tracker_entry_to_tree.exit

bb.bk:                                            ; preds = %tvb_get_fle.exit.i
  %i.hk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  switch i8 %i.hk, label %bb.bo [
    i8 -5, label %tvb_get_fle.exit155.i
    i8 -4, label %bb.bl
    i8 -3, label %bb.bm
    i8 -2, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.hl = add i32 %i.dg, 1
  %i.hm = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.hl, i32 noundef -2147483648)
  %i.hn = zext i16 %i.hm to i64
  br label %tvb_get_fle.exit155.i

bb.bm:                                            ; preds = %bb.bk
  %i.ho = add i32 %i.dg, 1
  %i.hp = call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.ho, i32 noundef -2147483648)
  %i.hq = zext i32 %i.hp to i64
  br label %tvb_get_fle.exit155.i

bb.bn:                                            ; preds = %bb.bk
  %i.hr = add i32 %i.dg, 1
  %i.hs = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.hr, i32 noundef -2147483648)
  br label %tvb_get_fle.exit155.i

bb.bo:                                            ; preds = %bb.bk
  %i.ht = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dg)
  %i.hu = zext i8 %i.ht to i64
  br label %tvb_get_fle.exit155.i

tvb_get_fle.exit155.i:                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.5.i = phi i64 [ 0, %bb.bk ], [ %i.hu, %bb.bo ], [ %i.hn, %bb.bl ], [ %i.hq, %bb.bm ], [ %i.hs, %bb.bn ] ; 2 uses
  %.025.i154.i = phi i32 [ 1, %bb.bk ], [ 1, %bb.bo ], [ 3, %bb.bl ], [ 4, %bb.bm ], [ 9, %bb.bn ] ; 2 uses
  %i.hv = load i32, ptr @hf_mysql_session_track_transaction_state_length, align 4
  %i.hw = call ptr @proto_tree_add_uint64(ptr noundef %i.co, i32 noundef %i.hv, ptr noundef %0, i32 noundef %i.dg, i32 noundef %.025.i154.i, i64 noundef %.5.i) ; 0 uses
  %i.hx = add i32 %.025.i154.i, %i.dg             ; 2 uses
  %i.hy = load i32, ptr @hf_mysql_session_track_transaction_state, align 4
  %i.hz = trunc i64 %.5.i to i32                  ; 2 uses
  %i.ia = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hy, ptr noundef %0, i32 noundef %i.hx, i32 noundef %i.hz, i32 noundef 0) ; 0 uses
  %i.ib = add i32 %i.hx, %i.hz
  br label %add_session_tracker_entry_to_tree.exit

bb.bp:                                            ; preds = %tvb_get_fle.exit.i
  %i.ic = load i32, ptr @hf_mysql_payload, align 4
  %i.id = trunc i64 %.0179.i to i32               ; 2 uses
  %i.ie = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ic, ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.id, i32 noundef 0)
  %i.if = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ie, ptr noundef nonnull @ei_mysql_dissector_incomplete, ptr noundef nonnull @.str.1275) ; 0 uses
  %i.ig = add i32 %i.dg, %i.id
  br label %add_session_tracker_entry_to_tree.exit

add_session_tracker_entry_to_tree.exit:           ; preds = %mysql_set_encoding_client.exit.i, %tvb_get_fle.exit143.i, %bb.az, %tvb_get_fle.exit147.i, %tvb_get_fle.exit151.i, %tvb_get_fle.exit155.i, %bb.bp
  %.0129.i = phi i32 [ %i.ig, %bb.bp ], [ %i.fb, %mysql_set_encoding_client.exit.i ], [ %i.ft, %tvb_get_fle.exit143.i ], [ %i.fw, %bb.az ], [ %i.gr, %tvb_get_fle.exit147.i ], [ %i.hj, %tvb_get_fle.exit151.i ], [ %i.ib, %tvb_get_fle.exit155.i ] ; 3 uses
  %i.ih = sub i32 %.0129.i, %.2123                ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.cm, i32 noundef %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ii = sext i32 %i.ih to i64
  %i.ij = sub i64 %.0110122, %i.ii                ; 2 uses
  %.not86 = icmp eq i64 %i.ij, 0
end_hunk_0
