Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-giop?download=true
inline.NumInlined: 128
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dissect_target_address:bb.a

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_reply_body(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.complete_reply_hash_key, align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  store i32 %1, ptr %i.a, align 4
  switch i32 %5, label %bb.w [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.g
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %.lr.ph.preheader.i83
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 416
  %.val = load ptr, ptr %i.b, align 8
  call fastcc void @decode_SystemExceptionReplyBody(ptr noundef %0, ptr %.val, ptr noundef %3, ptr noundef nonnull %i.a, i1 noundef zeroext %4)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %1, 3
  %.not9.i = icmp eq i32 %i.c, 0
  %i.d = or i32 %1, 3
  %i.e = add i32 %i.d, 1
  %i.f = select i1 %.not9.i, i32 %1, i32 %i.e     ; 4 uses
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.f)
  br label %get_CDR_ulong.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.f)
  br label %get_CDR_ulong.exit

get_CDR_ulong.exit:                               ; preds = %bb.d, %bb.e
  %i.i = phi i32 [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 4 uses
  %i.j = add i32 %i.f, 4                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = load i32, ptr @hf_giop_exception_len, align 4
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef %i.i) ; 0 uses
  %i.m = add i32 %i.i, -1
  %or.cond = icmp ult i32 %i.m, 239
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_CDR_ulong.exit
  %i.n = load i32, ptr @hf_giop_exception_id, align 4
  %i.o = getelementptr i8, ptr %2, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %6, i64 24
  %i.r = tail call ptr @proto_tree_add_item_ret_string(ptr noundef %3, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.i, i32 noundef 0, ptr noundef %i.p, ptr noundef %i.q) ; 0 uses
  %i.s = add i32 %i.j, %i.i
  store i32 %i.s, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %get_CDR_ulong.exit, %bb.f, %bb.a
  %i.t = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %i.u, ptr %8, align 4
  %i.v = load ptr, ptr @giop_complete_reply_hash, align 8
  %i.w = call ptr @g_hash_table_lookup(ptr noundef %i.v, ptr noundef nonnull %8) ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %get_mfn_from_fn.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.w, align 4
  br label %get_mfn_from_fn.exit

get_mfn_from_fn.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.x, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.y = load i32, ptr %i.t, align 4
  %i.z = icmp eq i32 %.0.i, %i.y
  br i1 %i.z, label %.critedge, label %bb.i

bb.i:                                             ; preds = %get_mfn_from_fn.exit
  %i.aa = load ptr, ptr @giop_complete_request_list, align 8
  %i.ab = call ptr @g_list_last(ptr noundef %i.aa) ; 2 uses
  %.not8.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.09.i = phi ptr [ %i.ag, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = load ptr, ptr %.09.i, align 8           ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, %.0.i
  br i1 %i.ae, label %find_fn_in_list.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr i8, ptr %.09.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i80 = icmp eq ptr %i.ag, null
  br i1 %.not.i80, label %.critedge, label %.lr.ph.i, !llvm.loop !3

find_fn_in_list.exit:                             ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %find_fn_in_list.exit
  %i.ah = getelementptr i8, ptr %i.ac, i64 8      ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @giop_op_resolve, ptr noundef %i.ai) #19
  %.not77 = icmp eq i32 %i.aj, 0
  br i1 %.not77, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @decode_IOR(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 12, i1 noundef zeroext %4)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ac, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.al, null
  br i1 %.not78, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call fastcc zeroext i1 @try_explicit_giop_dissector(ptr noundef %0, ptr noundef %2, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef %i.ai, ptr noundef %i.al)
  br i1 %i.am, label %.critedge, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.n
  %.pre = load ptr, ptr %i.ah, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.m
  %i.an = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.ai, %bb.m ]
  %i.ao = call fastcc zeroext i1 @try_heuristic_giop_dissector(ptr noundef %0, ptr noundef %2, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef %i.an)
  br i1 %i.ao, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.ap = load ptr, ptr %i.ah, align 8
  %i.aq = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @giop_op_is_a, ptr noundef %i.ap) #19
  %.not79 = icmp eq i32 %i.aq, 0
  br i1 %.not79, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.a, align 4             ; 2 uses
  %i.as = load i32, ptr @hf_giop_type_id_match, align 4
  %i.at = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ar)
  %i.au = load i32, ptr %i.a, align 4
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.a, align 4
  %i.aw = icmp ne i8 %i.at, 0
  %i.ax = zext i1 %i.aw to i64
  %i.ay = call ptr @proto_tree_add_boolean(ptr noundef %3, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i64 noundef %i.ax) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.az = load i32, ptr %i.a, align 4
  %i.ba = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.az) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr @hf_giop_stub_data, align 4
  %i.bd = load i32, ptr %i.a, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  call fastcc void @decode_IOR(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 12, i1 noundef zeroext %4)
  br label %.critedge

bb.t:                                             ; preds = %bb.a
  call fastcc void @decode_IOR(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 12, i1 noundef zeroext %4)
  br label %.critedge

.lr.ph.preheader.i83:                             ; preds = %bb.a
  %i.bf = and i32 %1, 1
  %spec.select = add i32 %1, %i.bf                ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.preheader.i83
  %i.bg = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %spec.select)
  br label %get_CDR_ushort.exit

bb.v:                                             ; preds = %.lr.ph.preheader.i83
  %i.bh = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %spec.select)
  br label %get_CDR_ushort.exit

get_CDR_ushort.exit:                              ; preds = %bb.u, %bb.v
  %.in.i = phi i16 [ %i.bg, %bb.u ], [ %i.bh, %bb.v ]
  %i.bi = load i32, ptr @hf_giop_address_disp, align 4
  %i.bj = zext i16 %.in.i to i32
  %i.bk = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.bi, ptr noundef %0, i32 noundef %spec.select, i32 noundef 2, i32 noundef %i.bj) ; 0 uses
  br label %.critedge

bb.w:                                             ; preds = %bb.a
  %i.bl = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.bn = load i32, ptr @hf_giop_reply_body, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bn, ptr noundef %0, i32 noundef %1, i32 noundef %i.bl, i32 noundef 0) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.n, %bb.b, %bb.s, %bb.t, %get_CDR_ushort.exit, %bb.x, %bb.w, %bb.r, %bb.q, %.thread, %find_fn_in_list.exit, %get_mfn_from_fn.exit, %bb.l
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_SystemExceptionReplyBody(ptr noundef %0, ptr %.416.val, ptr noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %.promoted.i.i = load i32, ptr %2, align 4      ; 4 uses
  %i.a = and i32 %.promoted.i.i, 3
  %.not9.i.i = icmp eq i32 %i.a, 0
  br i1 %.not9.i.i, label %bb.b, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.b = or i32 %.promoted.i.i, -4
  %sub.i = sub i32 %.promoted.i.i, %i.b           ; 2 uses
  store i32 %sub.i, ptr %2, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %bb.a
  %.lcssa.i.i = phi i32 [ %sub.i, %.lr.ph.preheader.i.i ], [ %.promoted.i.i, %bb.a ] ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.lcssa.i.i)
  br label %get_CDR_string.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.lcssa.i.i)
  br label %get_CDR_string.exit

get_CDR_string.exit:                              ; preds = %bb.c, %bb.d
  %i.e = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  %i.f = load i32, ptr %2, align 4                ; 2 uses
  %i.g = add i32 %i.f, 4
  store i32 %i.g, ptr %2, align 4
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.f)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.h) ; 6 uses
  %i.i = load i32, ptr %2, align 4
  %i.j = tail call ptr @tvb_get_string_enc(ptr noundef %.416.val, ptr noundef %0, i32 noundef %i.i, i32 noundef %spec.select.i, i32 noundef 10)
  %i.k = load i32, ptr %2, align 4
  %i.l = add i32 %i.k, %spec.select.i             ; 2 uses
  store i32 %i.l, ptr %2, align 4
  %i.m = load i32, ptr @hf_giop_exception_len, align 4
  %i.n = add i32 %i.l, -4
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef %spec.select.i) ; 0 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %get_CDR_string.exit
  %i.p = load i32, ptr @hf_giop_exception_id, align 4
  %i.q = load i32, ptr %2, align 4
  %i.r = sub i32 %i.q, %spec.select.i
  %i.s = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.r, i32 noundef %spec.select.i, ptr noundef %i.j) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %get_CDR_string.exit
  %.promoted.i = load i32, ptr %2, align 4        ; 3 uses
  %i.t = and i32 %.promoted.i, 3
  %.not9.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.u = or i32 %.promoted.i, 3
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader.i, %bb.f
  %.lcssa.i = phi i32 [ %i.v, %.lr.ph.preheader.i ], [ %.promoted.i, %bb.f ] ; 2 uses
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.lcssa.i)
  br label %get_CDR_ulong.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.lcssa.i)
  br label %get_CDR_ulong.exit

get_CDR_ulong.exit:                               ; preds = %bb.h, %bb.i
  %i.y = phi i32 [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  %i.z = load i32, ptr %2, align 4                ; 3 uses
  %i.aa = add i32 %i.z, 4
  %i.ab = and i32 %i.z, 3                         ; 2 uses
  %.not9.i31 = icmp eq i32 %i.ab, 0
  %i.ac = xor i32 %i.ab, 3
  %i.ad = add i32 %i.z, 5
  %i.ae = add i32 %i.ad, %i.ac
  %.lcssa.i34 = select i1 %.not9.i31, i32 %i.aa, i32 %i.ae ; 3 uses
  store i32 %.lcssa.i34, ptr %2, align 4
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_CDR_ulong.exit
  %i.af = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.lcssa.i34)
  br label %get_CDR_ulong.exit35

bb.k:                                             ; preds = %get_CDR_ulong.exit
  %i.ag = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.lcssa.i34)
  br label %get_CDR_ulong.exit35

get_CDR_ulong.exit35:                             ; preds = %bb.j, %bb.k
  %i.ah = phi i32 [ %i.af, %bb.j ], [ %i.ag, %bb.k ]
  %i.ai = load i32, ptr %2, align 4               ; 2 uses
  %i.aj = add i32 %i.ai, 4
  store i32 %i.aj, ptr %2, align 4
  %i.ak = load i32, ptr @hf_giop_minor_code_value, align 4
  %i.al = add i32 %i.ai, -4
  %i.am = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef %i.y) ; 0 uses
  %i.an = load i32, ptr @hf_giop_completion_status, align 4
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, -4
  %i.aq = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ap, i32 noundef 4, i32 noundef %i.ah) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_memeql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissect_ziop_heur(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_giop_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.b = icmp ult i32 %i.a, 12
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %2)
  %.not = icmp eq i32 %i.c, 1195986768
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %2, 5
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.d)
  %i.f = add i32 %2, 6
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.f) ; 2 uses
  switch i8 %i.e, label %is_big_endian.exit.thread [
    i8 2, label %is_big_endian.exit
    i8 1, label %is_big_endian.exit
    i8 0, label %.split
  ]

.split:                                           ; preds = %bb.c
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.d, label %is_big_endian.exit.thread

is_big_endian.exit:                               ; preds = %bb.c, %bb.c
  %i.h = and i8 %i.g, 1
  %.not3.i = icmp eq i8 %i.h, 0
  br i1 %.not3.i, label %bb.d, label %is_big_endian.exit.thread

bb.d:                                             ; preds = %.split, %is_big_endian.exit
  %i.i = add i32 %2, 8
  %i.j = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.i)
  br label %bb.e

is_big_endian.exit.thread:                        ; preds = %bb.c, %.split, %is_big_endian.exit
  %i.k = add i32 %2, 8
  %i.l = tail call i32 @tvb_get_letohl(ptr noundef %1, i32 noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %is_big_endian.exit.thread, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.l, %is_big_endian.exit.thread ] ; 2 uses
  %i.m = load i32, ptr @giop_max_message_size, align 4
  %i.n = icmp ugt i32 %.0, %i.m
  %i.o = add i32 %.0, 12
  %spec.select = select i1 %i.n, i32 12, i32 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.014 = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @giop_hash_objkey_hash(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
end_hunk_0
