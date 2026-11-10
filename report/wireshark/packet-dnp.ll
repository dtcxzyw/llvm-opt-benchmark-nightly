Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dnp?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_dnp3_message:bb.a

.thread357:                                       ; preds = %bb.be, %bb.bf
  %i.nd = load i32, ptr @hf_dnp3_fragment_reassembled_in, align 4
  %i.ne = getelementptr i8, ptr %.0, i64 40       ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = call ptr @proto_tree_add_uint(ptr noundef %i.ab, i32 noundef %i.nd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.nf) ; 0 uses
  %i.nh = load ptr, ptr %i.e, align 8
  call void @col_set_fence(ptr noundef %i.nh, i32 noundef 25)
  %i.ni = load ptr, ptr %i.e, align 8
  %i.nj = load i32, ptr %i.ne, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ni, i32 noundef 25, ptr noundef @.str.907, i32 noundef %i.fj, i32 noundef %i.nj)
  %i.nk = load i32, ptr @hf_al_frag_data, align 4
  %i.nl = call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.nk, ptr noundef %i.im, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.cy

bb.cx:                                            ; preds = %bb.bd
  %i.nm = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.nm, i32 noundef 25, ptr noundef @.str.908, i32 noundef %i.fj)
  %i.nn = load i32, ptr @hf_al_frag_data, align 4
  %i.no = call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.nn, ptr noundef %i.im, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.cy

bb.cy:                                            ; preds = %dissect_dnp3_al.exit, %.thread357, %bb.cx
  store i8 %i.io, ptr %i.in, align 8
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.thread, %.thread351
  %.1319356 = phi i32 [ %.lcssa393, %.thread351 ], [ 10, %._crit_edge.thread ]
  %i.np = load ptr, ptr %i.o, align 8
  call void @wmem_free(ptr noundef %i.np, ptr noundef %i.fo)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.1319355 = phi i32 [ %.1319356, %bb.cz ], [ %.0318.lcssa429, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %proto_item_set_hidden.exit343
  %.2320 = phi i32 [ %.1319355, %bb.da ], [ 10, %proto_item_set_hidden.exit343 ] ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.z, i32 noundef %.2320)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.2320
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc16_0x3D65_tvb_offset_seed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_full(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new_full(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_single(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get_reassembled_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc16_0x3D65_seed(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @nstime_set_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dnp3_al_process_object(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  %i.b = alloca ptr, align 8                      ; 74 uses
  %7 = alloca %struct.nstime_t, align 8           ; 6 uses
  %8 = alloca %struct.nstime_t, align 8           ; 23 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef nonnull %0, i32 noundef %2) ; 5 uses
  store i16 %i.e, ptr %5, align 2
  %i.f = and i16 %i.e, -512
  %or.cond = icmp eq i16 %i.f, 28160              ; 2 uses
  %i.g = and i16 %i.e, -256
  %i.h = and i16 %i.e, 255
  %narrow = select i1 %or.cond, i16 %i.h, i16 0   ; 2 uses
  %.01195 = zext nneg i16 %narrow to i32          ; 3 uses
  %.01189 = select i1 %or.cond, i16 %i.g, i16 %i.e ; 23 uses
  %i.i = zext i16 %.01189 to i32                  ; 12 uses
  switch i16 %.01189, label %bb.b [
    i16 30729, label %.thread
    i16 30723, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i16 %.01189, 256
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @hf_dnp3_al_obj, align 4
  %i.l = tail call ptr @val_to_str_ext_const(i32 noundef %i.i, ptr noundef @dnp3_al_obj_vals_ext, ptr noundef @.str.931)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.k, ptr noundef nonnull %0, i32 noundef %2, i32 noundef 2, i32 noundef %i.i, ptr noundef @.str.930, ptr noundef %i.l, i32 noundef %i.i) ; 3 uses
  %i.n = tail call ptr @try_val_to_str_ext(i32 noundef %i.i, ptr noundef @dnp3_al_obj_vals_ext)
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.m, ptr noundef @ei_dnp3_unknown_group0_variation) ; 0 uses
  br label %bb.h

.thread:                                          ; preds = %bb.a, %bb.a, %bb.b
  %.011731341 = phi i1 [ %4, %bb.b ], [ false, %bb.a ], [ false, %bb.a ] ; 3 uses
  %i.q = and i32 %i.i, 65024
  %switch = icmp eq i32 %i.q, 28160
  %i.r = load i32, ptr @hf_dnp3_al_obj, align 4   ; 2 uses
  %i.s = tail call ptr @val_to_str_ext_const(i32 noundef %i.i, ptr noundef @dnp3_al_obj_vals_ext, ptr noundef @.str.446) ; 2 uses
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %2, i32 noundef 2, i32 noundef %i.i, ptr noundef @.str.932, ptr noundef %i.s, i32 noundef %i.i, i32 noundef %.01195)
  br label %bb.h

bb.f:                                             ; preds = %.thread
  %i.u = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %2, i32 noundef 2, i32 noundef %i.i, ptr noundef @.str.930, ptr noundef %i.s, i32 noundef %i.i) ; 3 uses
  %i.v = tail call ptr @try_val_to_str_ext(i32 noundef %i.i, ptr noundef @dnp3_al_obj_vals_ext)
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.u, ptr noundef @ei_dnp3_unknown_object) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c, %bb.d
  %i.y = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ]
  %.011731340 = phi i1 [ %4, %bb.d ], [ %4, %bb.c ], [ %.011731341, %bb.e ], [ %.011731341, %bb.g ], [ %.011731341, %bb.f ] ; 2 uses
  %.01184 = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 12 uses
  %i.z = load i32, ptr @ett_dnp3_al_obj, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %.01184, i32 noundef %i.z) ; 47 uses
  %i.ab = add i32 %2, 2                           ; 4 uses
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ab) ; 2 uses
  %i.ad = lshr i8 %i.ac, 4
  %i.ae = and i8 %i.ad, 7                         ; 5 uses
  %i.af = and i8 %i.ac, 15                        ; 2 uses
  %i.ag = load i32, ptr @ett_dnp3_al_obj_qualifier, align 4
  %i.ah = zext nneg i8 %i.ae to i32
  %i.ai = tail call ptr @val_to_str_ext_const(i32 noundef %i.ah, ptr noundef @dnp3_al_objq_prefix_vals_ext, ptr noundef @.str.934)
  %i.aj = zext nneg i8 %i.af to i32
  %i.ak = tail call ptr @val_to_str_ext_const(i32 noundef %i.aj, ptr noundef @dnp3_al_objq_range_vals_ext, ptr noundef @.str.935)
  %i.al = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.aa, ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %i.ag, ptr noundef null, ptr noundef @.str.933, ptr noundef %i.ai, ptr noundef %i.ak) ; 2 uses
  %i.am = load i32, ptr @hf_dnp3_al_objq_prefix, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.am, ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_dnp3_al_objq_range, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ao, ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = add i32 %2, 3                           ; 26 uses
  %i.ar = load i32, ptr @ett_dnp3_al_obj_range, align 4
  %i.as = call ptr @proto_tree_add_subtree(ptr noundef %i.aa, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 0, i32 noundef %i.ar, ptr noundef nonnull %i.a, ptr noundef @.str.936) ; 13 uses
  switch i8 %i.af, label %bb.ai [
    i8 0, label %bb.i
    i8 1, label %bb.l
    i8 2, label %bb.o
    i8 3, label %bb.r
    i8 4, label %bb.u
    i8 5, label %bb.x
    i8 7, label %bb.aa
    i8 8, label %bb.ab
    i8 9, label %bb.ac
    i8 11, label %bb.ad
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = add i32 %2, 4                           ; 2 uses
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.at)
  %i.av = zext i8 %i.au to i32
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.av, 1
  %i.az = sub nsw i32 %i.ay, %i.ax
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.bc, i64 28     ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = or i32 %i.be, 2
  store i32 %i.bf, ptr %i.bd, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.i, %bb.j, %bb.k
  %i.bg = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i32, ptr @hf_dnp3_al_range_start8, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bi, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bk = load i32, ptr @hf_dnp3_al_range_stop8, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.bk, ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ae

bb.l:                                             ; preds = %bb.h
  %i.bm = add i32 %2, 5                           ; 2 uses
  %i.bn = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.bm)
  %i.bo = zext i16 %i.bn to i32
  %i.bp = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bo, 1
  %i.bs = sub nsw i32 %i.br, %i.bq
  %i.bt = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i1226 = icmp eq ptr %i.bt, null
  br i1 %.not.i1226, label %proto_item_set_generated.exit1228, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not5.i1227 = icmp eq ptr %i.bv, null
  br i1 %.not5.i1227, label %proto_item_set_generated.exit1228, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr i8, ptr %i.bv, i64 28     ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = or i32 %i.bx, 2
  store i32 %i.by, ptr %i.bw, align 4
  br label %proto_item_set_generated.exit1228

proto_item_set_generated.exit1228:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bz = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.ca = zext i16 %i.bz to i32
  %i.cb = load i32, ptr @hf_dnp3_al_range_start16, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cb, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cd = load i32, ptr @hf_dnp3_al_range_stop16, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cd, ptr noundef nonnull %0, i32 noundef %i.bm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.ae

bb.o:                                             ; preds = %bb.h
  %i.cf = add i32 %2, 7                           ; 2 uses
  %i.cg = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.cf)
  %i.ch = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.ci = add i32 %i.cg, 1
  %i.cj = sub i32 %i.ci, %i.ch
  %i.ck = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i1229 = icmp eq ptr %i.ck, null
  br i1 %.not.i1229, label %proto_item_set_generated.exit1231, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not5.i1230 = icmp eq ptr %i.cm, null
  br i1 %.not5.i1230, label %proto_item_set_generated.exit1231, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr i8, ptr %i.cm, i64 28     ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 4
  br label %proto_item_set_generated.exit1231

proto_item_set_generated.exit1231:                ; preds = %bb.o, %bb.p, %bb.q
  %i.cq = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.cr = load i32, ptr @hf_dnp3_al_range_start32, align 4
  %i.cs = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cr, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ct = load i32, ptr @hf_dnp3_al_range_stop32, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ct, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.ae

bb.r:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i1232 = icmp eq ptr %i.cv, null
  br i1 %.not.i1232, label %proto_item_set_generated.exit1234, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not5.i1233 = icmp eq ptr %i.cx, null
  br i1 %.not5.i1233, label %proto_item_set_generated.exit1234, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr i8, ptr %i.cx, i64 28     ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = or i32 %i.cz, 2
  store i32 %i.da, ptr %i.cy, align 4
  br label %proto_item_set_generated.exit1234

proto_item_set_generated.exit1234:                ; preds = %bb.r, %bb.s, %bb.t
  %i.db = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i32, ptr @hf_dnp3_al_range_abs8, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.dd, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.thread1276

bb.u:                                             ; preds = %bb.h
  %i.df = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i1235 = icmp eq ptr %i.df, null
  br i1 %.not.i1235, label %proto_item_set_generated.exit1237, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not5.i1236 = icmp eq ptr %i.dh, null
  br i1 %.not5.i1236, label %proto_item_set_generated.exit1237, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr i8, ptr %i.dh, i64 28     ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = or i32 %i.dj, 2
  store i32 %i.dk, ptr %i.di, align 4
  br label %proto_item_set_generated.exit1237

proto_item_set_generated.exit1237:                ; preds = %bb.u, %bb.v, %bb.w
  %i.dl = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.dm = zext i16 %i.dl to i32
  %i.dn = load i32, ptr @hf_dnp3_al_range_abs16, align 4
  %i.do = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.dn, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.thread1276

bb.x:                                             ; preds = %bb.h
  %i.dp = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i1238 = icmp eq ptr %i.dp, null
  br i1 %.not.i1238, label %proto_item_set_generated.exit1240, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr i8, ptr %i.dp, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not5.i1239 = icmp eq ptr %i.dr, null
  br i1 %.not5.i1239, label %proto_item_set_generated.exit1240, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr i8, ptr %i.dr, i64 28     ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = or i32 %i.dt, 2
  store i32 %i.du, ptr %i.ds, align 4
  br label %proto_item_set_generated.exit1240

proto_item_set_generated.exit1240:                ; preds = %bb.x, %bb.y, %bb.z
  %i.dv = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.dw = load i32, ptr @hf_dnp3_al_range_abs32, align 4
  %i.dx = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.dw, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.thread1276

bb.aa:                                            ; preds = %bb.h
  %i.dy = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.dz = zext i8 %i.dy to i32
  %i.ea = load i32, ptr @hf_dnp3_al_range_quant8, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ea, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ec = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.ec, i32 noundef 1)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.h
  %i.ed = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.ee = zext i16 %i.ed to i32
  %i.ef = load i32, ptr @hf_dnp3_al_range_quant16, align 4
  %i.eg = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ef, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.eh = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.eh, i32 noundef 2)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.h
  %i.ei = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.ej = load i32, ptr @hf_dnp3_al_range_quant32, align 4
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ej, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.el = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.el, i32 noundef 4)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.h
  %i.em = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.aq)
  %i.en = zext i8 %i.em to i32
  %i.eo = load i32, ptr @hf_dnp3_al_range_quant8, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.eo, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eq = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.eq, i32 noundef 1)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %proto_item_set_generated.exit1231, %proto_item_set_generated.exit1228, %proto_item_set_generated.exit
  %.01258 = phi i32 [ 0, %bb.aa ], [ %i.bh, %proto_item_set_generated.exit ], [ %i.ca, %proto_item_set_generated.exit1228 ], [ %i.cq, %proto_item_set_generated.exit1231 ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ad ]
  %.01186 = phi i32 [ %i.dz, %bb.aa ], [ %i.az, %proto_item_set_generated.exit ], [ %i.bs, %proto_item_set_generated.exit1228 ], [ %i.cj, %proto_item_set_generated.exit1231 ], [ %i.ee, %bb.ab ], [ %i.ei, %bb.ac ], [ %i.en, %bb.ad ] ; 5 uses
  %.01185 = phi i32 [ 1, %bb.aa ], [ 2, %proto_item_set_generated.exit ], [ 4, %proto_item_set_generated.exit1228 ], [ 8, %proto_item_set_generated.exit1231 ], [ 2, %bb.ab ], [ 4, %bb.ac ], [ 1, %bb.ad ] ; 2 uses
  %i.er = icmp sgt i32 %.01186, 0
  br i1 %i.er, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.es = icmp eq i32 %.01186, 1
  %spec.select1302 = select i1 %i.es, ptr @.str.938, ptr @.str.939
  br label %.thread1276

.thread1276:                                      ; preds = %bb.af, %proto_item_set_generated.exit1234, %proto_item_set_generated.exit1237, %proto_item_set_generated.exit1240
  %.0125812671284 = phi i32 [ %.01258, %bb.af ], [ %i.dc, %proto_item_set_generated.exit1234 ], [ %i.dv, %proto_item_set_generated.exit1240 ], [ %i.dm, %proto_item_set_generated.exit1237 ]
  %.0118612691282 = phi i32 [ %.01186, %bb.af ], [ 1, %proto_item_set_generated.exit1234 ], [ 1, %proto_item_set_generated.exit1240 ], [ 1, %proto_item_set_generated.exit1237 ] ; 2 uses
  %.0118512711280 = phi i32 [ %.01185, %bb.af ], [ 1, %proto_item_set_generated.exit1234 ], [ 4, %proto_item_set_generated.exit1240 ], [ 2, %proto_item_set_generated.exit1237 ]
  %i.et = phi ptr [ %spec.select1302, %bb.af ], [ @.str.938, %proto_item_set_generated.exit1234 ], [ @.str.938, %proto_item_set_generated.exit1240 ], [ @.str.938, %proto_item_set_generated.exit1237 ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.937, i32 noundef %.0118612691282, ptr noundef nonnull %i.et)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.eu = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.eu, ptr noundef @.str.940, i32 noundef %.01186)
  %i.ev = icmp slt i32 %.01186, 0
  br i1 %i.ev, label %bb.ah, label %.thread1342

.thread1342:                                      ; preds = %bb.ag
  %i.ew = add i32 %.01185, %i.aq
  br label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ex = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ex, ptr noundef @.str.941)
  %i.ey = load ptr, ptr %i.a, align 8
  %i.ez = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ey, ptr noundef @ei_dnp_num_items_neg) ; 0 uses
  %i.fa = call i32 @tvb_captured_length(ptr noundef nonnull %0)
  br label %bb.gb

bb.ai:                                            ; preds = %bb.h, %.thread1276
  %.011851270.ph = phi i32 [ %.0118512711280, %.thread1276 ], [ 0, %bb.h ]
  %.011861268.ph = phi i32 [ %.0118612691282, %.thread1276 ], [ 0, %bb.h ] ; 3 uses
  %.012581266.ph = phi i32 [ %.0125812671284, %.thread1276 ], [ 0, %bb.h ]
  %i.fb = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fb, ptr noundef @.str.940, i32 noundef %.011861268.ph)
  %i.fc = add i32 %.011851270.ph, %i.aq           ; 3 uses
  %i.fd = icmp eq i8 %i.ae, 0                     ; 4 uses
  %or.cond8.not = and i1 %.011731340, %i.fd
  %i.fe = icmp eq i32 %.011861268.ph, 0
  %or.cond1314.not = or i1 %i.fe, %or.cond8.not
  br i1 %or.cond1314.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.ff = icmp samesign ult i8 %i.ae, 4
  %i.fg = add nsw i32 %i.i, -256
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = add nsw i8 %i.ae, -7
  %switch1221 = icmp ult i8 %i.fi, -3
  %or.cond1222.not = and i1 %.011731340, %switch1221
  %i.fj = getelementptr i8, ptr %1, i64 416       ; 17 uses
  %i.fk = icmp eq i16 %.01189, 31234
  %.not = icmp eq i16 %narrow, 0
  %i.fl = icmp eq i16 %.01189, 13057
  %i.fm = icmp ne i16 %.01189, 515
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fo = icmp eq i16 %.01189, 20481
  %.str.942..str.943 = select i1 %i.ff, ptr @.str.942, ptr @.str.943
  %. = zext i1 %i.fm to i32
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ga
  %.011721313 = phi i32 [ %i.fc, %.lr.ph ], [ %.3, %bb.ga ] ; 50 uses
  %.011831311 = phi i32 [ 0, %.lr.ph ], [ %i.agc, %bb.ga ] ; 3 uses
  %.111871310 = phi i32 [ %.011861268.ph, %.lr.ph ], [ %.21188, %bb.ga ]
  %.011901309 = phi i8 [ 0, %.lr.ph ], [ %.41194, %bb.ga ] ; 60 uses
  %.112591308 = phi i32 [ %.012581266.ph, %.lr.ph ], [ %.21260, %bb.ga ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.fp = load i32, ptr @ett_dnp3_al_obj_point, align 4
  %i.fq = call ptr @proto_tree_add_subtree(ptr noundef %i.aa, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef -1, i32 noundef %i.fp, ptr noundef nonnull %i.b, ptr noundef %.str.942..str.943) ; 86 uses
  switch i8 %i.ae, label %default.unreachable1338 [
    i8 0, label %bb.ak
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %dnp3_al_obj_procprefix.exit
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fr = load i32, ptr @hf_dnp3_al_point_index, align 4
  %i.fs = call ptr @proto_tree_add_uint(ptr noundef %i.fq, i32 noundef %i.fr, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 0, i32 noundef %.112591308) ; 2 uses
  %.not.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i, label %bb.at, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.fu, null
  br i1 %.not5.i.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr i8, ptr %i.fu, i64 28     ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = or i32 %i.fw, 2
  store i32 %i.fx, ptr %i.fv, align 4
  br label %bb.at

bb.an:                                            ; preds = %bb.aj
  %i.fy = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.fz = zext i8 %i.fy to i32
  %i.ga = load i32, ptr @hf_dnp3_al_index8, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ga, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.at

bb.ao:                                            ; preds = %bb.aj
  %i.gc = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.gd = zext i16 %i.gc to i32
  %i.ge = load i32, ptr @hf_dnp3_al_index16, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ge, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.at

bb.ap:                                            ; preds = %bb.aj
  %i.gg = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.gh = load i32, ptr @hf_dnp3_al_index32, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.gh, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.at

bb.aq:                                            ; preds = %bb.aj
  %i.gj = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.gk = zext i8 %i.gj to i32
  %i.gl = load i32, ptr @hf_dnp3_al_size8, align 4
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.gl, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %dnp3_al_obj_procprefix.exit

bb.ar:                                            ; preds = %bb.aj
  %i.gn = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.go = zext i16 %i.gn to i32
  %i.gp = load i32, ptr @hf_dnp3_al_size16, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.gp, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %dnp3_al_obj_procprefix.exit

bb.as:                                            ; preds = %bb.aj
  %i.gr = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.gs = load i32, ptr @hf_dnp3_al_size32, align 4
  %i.gt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.gs, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %dnp3_al_obj_procprefix.exit

default.unreachable1338:                          ; preds = %bb.aj
  unreachable

bb.at:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.31261 = phi i32 [ %.112591308, %bb.ak ], [ %.112591308, %bb.al ], [ %.112591308, %bb.am ], [ %i.fz, %bb.an ], [ %i.gd, %bb.ao ], [ %i.gg, %bb.ap ] ; 7 uses
  %.0208.ph.i = phi i32 [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ 1, %bb.an ], [ 2, %bb.ao ], [ 4, %bb.ap ] ; 7 uses
  switch i32 %i.fh, label %dnp3_al_obj_procprefix.exit [
    i32 0, label %bb.bj
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
    i32 19, label %bb.ax
    i32 20, label %bb.ax
    i32 21, label %bb.ay
    i32 22, label %bb.ay
    i32 9, label %bb.az
    i32 10, label %bb.ba
    i32 12, label %bb.ba
    i32 11, label %bb.bb
    i32 29, label %bb.bc
    i32 30, label %bb.bc
    i32 31, label %bb.bd
    i32 32, label %bb.bd
    i32 39, label %bb.be
    i32 40, label %bb.bf
    i32 41, label %bb.bg
    i32 109, label %bb.bh
    i32 110, label %bb.bi
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.bj

bb.av:                                            ; preds = %bb.at
  br label %bb.bj

bb.aw:                                            ; preds = %bb.at
  br label %bb.bj

bb.ax:                                            ; preds = %bb.at, %bb.at
  br label %bb.bj

bb.ay:                                            ; preds = %bb.at, %bb.at
  br label %bb.bj

bb.az:                                            ; preds = %bb.at
  br label %bb.bj

bb.ba:                                            ; preds = %bb.at, %bb.at
  br label %bb.bj

bb.bb:                                            ; preds = %bb.at
  br label %bb.bj

bb.bc:                                            ; preds = %bb.at, %bb.at
  br label %bb.bj

bb.bd:                                            ; preds = %bb.at, %bb.at
  br label %bb.bj

bb.be:                                            ; preds = %bb.at
  br label %bb.bj

bb.bf:                                            ; preds = %bb.at
  br label %bb.bj

bb.bg:                                            ; preds = %bb.at
  br label %bb.bj

bb.bh:                                            ; preds = %bb.at
  br label %bb.bj

bb.bi:                                            ; preds = %bb.at
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %hf_dnp3_al_os_index.sink.i = phi ptr [ @hf_dnp3_al_os_index, %bb.bi ], [ @hf_dnp3_al_os_index, %bb.bh ], [ @hf_dnp3_al_ao_index, %bb.bg ], [ @hf_dnp3_al_ao_index, %bb.bf ], [ @hf_dnp3_al_ao_index, %bb.be ], [ @hf_dnp3_al_ai_index, %bb.bd ], [ @hf_dnp3_al_ai_index, %bb.bc ], [ @hf_dnp3_al_bo_index, %bb.bb ], [ @hf_dnp3_al_bo_index, %bb.ba ], [ @hf_dnp3_al_bo_index, %bb.az ], [ @hf_dnp3_al_counter_index, %bb.ay ], [ @hf_dnp3_al_counter_index, %bb.ax ], [ @hf_dnp3_al_dbi_index, %bb.aw ], [ @hf_dnp3_al_dbi_index, %bb.av ], [ @hf_dnp3_al_bi_index, %bb.au ], [ @hf_dnp3_al_bi_index, %bb.at ]
  %hf_dnp3_al_os_event_index.sink.i = phi ptr [ @hf_dnp3_al_os_event_index, %bb.bi ], [ @hf_dnp3_al_os_static_index, %bb.bh ], [ @hf_dnp3_al_ao_event_index, %bb.bg ], [ @hf_dnp3_al_ao_cmnd_index, %bb.bf ], [ @hf_dnp3_al_ao_static_index, %bb.be ], [ @hf_dnp3_al_ai_event_index, %bb.bd ], [ @hf_dnp3_al_ai_static_index, %bb.bc ], [ @hf_dnp3_al_bo_cmnd_index, %bb.bb ], [ @hf_dnp3_al_bo_event_index, %bb.ba ], [ @hf_dnp3_al_bo_static_index, %bb.az ], [ @hf_dnp3_al_counter_event_index, %bb.ay ], [ @hf_dnp3_al_counter_static_index, %bb.ax ], [ @hf_dnp3_al_dbi_event_index, %bb.aw ], [ @hf_dnp3_al_dbi_static_index, %bb.av ], [ @hf_dnp3_al_bi_event_index, %bb.au ], [ @hf_dnp3_al_bi_static_index, %bb.at ]
  %i.gu = load i32, ptr %hf_dnp3_al_os_index.sink.i, align 4
  %i.gv = call ptr @proto_tree_add_uint(ptr noundef %i.fq, i32 noundef %i.gu, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef %.0208.ph.i, i32 noundef %.31261) ; 2 uses
  %i.gw = load i32, ptr %hf_dnp3_al_os_event_index.sink.i, align 4
  %i.gx = call ptr @proto_tree_add_uint(ptr noundef %i.fq, i32 noundef %i.gw, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef %.0208.ph.i, i32 noundef %.31261) ; 2 uses
  br i1 %i.fd, label %bb.bk, label %dnp3_al_obj_procprefix.exit

bb.bk:                                            ; preds = %bb.bj
  %.not.i210.i = icmp eq ptr %i.gv, null
  br i1 %.not.i210.i, label %proto_item_set_generated.exit212.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gy = getelementptr i8, ptr %i.gv, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not5.i211.i = icmp eq ptr %i.gz, null
  br i1 %.not5.i211.i, label %proto_item_set_generated.exit212.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ha = getelementptr i8, ptr %i.gz, i64 28     ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = or i32 %i.hb, 2
  store i32 %i.hc, ptr %i.ha, align 4
  br label %proto_item_set_generated.exit212.i

proto_item_set_generated.exit212.i:               ; preds = %bb.bm, %bb.bl, %bb.bk
  %.not.i213.i = icmp eq ptr %i.gx, null
  br i1 %.not.i213.i, label %dnp3_al_obj_procprefix.exit, label %bb.bn

bb.bn:                                            ; preds = %proto_item_set_generated.exit212.i
  %i.hd = getelementptr i8, ptr %i.gx, i64 40
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not5.i214.i = icmp eq ptr %i.he, null
  br i1 %.not5.i214.i, label %dnp3_al_obj_procprefix.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hf = getelementptr i8, ptr %i.he, i64 28     ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4
end_hunk_0
begin_hunk_1_@dnp3_al_process_object:bb.a
  br label %dnp3_al_empty_obj.exit

dnp3_al_empty_obj.exit:                           ; preds = %dnp3_al_obj_procprefix.exit, %bb.bp
  %.21188 = phi i32 [ 0, %bb.bp ], [ %.111871310, %dnp3_al_obj_procprefix.exit ] ; 4 uses
  %i.hl = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hl, ptr noundef @.str.944, i32 noundef %.41262)
  %i.hm = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.hm, i32 noundef %.0208217.i)
  %i.hn = add i32 %.0208217.i, %.011721313        ; 187 uses
  br i1 %or.cond1222.not, label %bb.fy, label %bb.bq

bb.bq:                                            ; preds = %dnp3_al_empty_obj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  br i1 %i.y, label %bb.br, label %bb.cg

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ho = load i32, ptr @hf_dnp3_al_datatype, align 4
  %i.hp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fq, i32 noundef %i.ho, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.hq = add i32 %i.hn, 1                        ; 10 uses
  %i.hr = load i32, ptr %i.c, align 4
  %i.hs = call ptr @try_val_to_str(i32 noundef %i.hr, ptr noundef @dnp3_al_data_type_vals)
  %.not1215 = icmp eq ptr %i.hs, null
  br i1 %.not1215, label %bb.cf, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ht = load i32, ptr %i.c, align 4
  switch i32 %i.ht, label %bb.cf [
    i32 4, label %bb.cc
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 3, label %bb.by
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.hu = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hq)
  %i.hv = load i32, ptr @hf_dnp3_al_da_length, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.hv, ptr noundef nonnull %0, i32 noundef %i.hq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hx = add i32 %i.hn, 2                        ; 2 uses
  %i.hy = load i32, ptr @hf_dnp3_al_da_value, align 4
  %i.hz = zext i8 %i.hu to i32                    ; 2 uses
  %i.ia = load ptr, ptr %i.fj, align 8
  %i.ib = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.fq, i32 noundef %i.hy, ptr noundef nonnull %0, i32 noundef %i.hx, i32 noundef %i.hz, i32 noundef 0, ptr noundef %i.ia, ptr noundef nonnull %i.d) ; 0 uses
  %i.ic = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.945, ptr noundef %i.ic)
  %i.id = add i32 %i.hx, %i.hz
  br label %bb.cf

bb.bu:                                            ; preds = %bb.bs
  %i.ie = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hq)
  %i.if = load i32, ptr @hf_dnp3_al_da_length, align 4
  %i.ig = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.if, ptr noundef nonnull %0, i32 noundef %i.hq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ih = add i32 %i.hn, 2                        ; 7 uses
  switch i8 %i.ie, label %bb.cf [
    i8 1, label %bb.bv
    i8 2, label %bb.bw
    i8 4, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ii = load i32, ptr @hf_dnp3_al_da_uint8, align 4
  %i.ij = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ii, ptr noundef nonnull %0, i32 noundef %i.ih, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ik = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ih)
  %i.il = zext i8 %i.ik to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.946, i32 noundef %i.il)
  %i.im = add i32 %i.hn, 3
  br label %bb.cf

bb.bw:                                            ; preds = %bb.bu
  %i.in = load i32, ptr @hf_dnp3_al_da_uint16, align 4
  %i.io = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.in, ptr noundef nonnull %0, i32 noundef %i.ih, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ip = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.ih)
  %i.iq = zext i16 %i.ip to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.946, i32 noundef %i.iq)
  %i.ir = add i32 %i.hn, 4
  br label %bb.cf

bb.bx:                                            ; preds = %bb.bu
  %i.is = load i32, ptr @hf_dnp3_al_da_uint32, align 4
  %i.it = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.is, ptr noundef nonnull %0, i32 noundef %i.ih, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.iu = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.ih)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.946, i32 noundef %i.iu)
  %i.iv = add i32 %i.hn, 6
  br label %bb.cf

bb.by:                                            ; preds = %bb.bs
  %i.iw = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hq)
  %i.ix = load i32, ptr @hf_dnp3_al_da_length, align 4
  %i.iy = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ix, ptr noundef nonnull %0, i32 noundef %i.hq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.iz = add i32 %i.hn, 2                        ; 7 uses
  switch i8 %i.iw, label %bb.cf [
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 4, label %bb.cb
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ja = load i32, ptr @hf_dnp3_al_da_int8, align 4
  %i.jb = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ja, ptr noundef nonnull %0, i32 noundef %i.iz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.jc = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.iz)
  %i.jd = zext i8 %i.jc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.947, i32 noundef %i.jd)
  %i.je = add i32 %i.hn, 3
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  %i.jf = load i32, ptr @hf_dnp3_al_da_int16, align 4
  %i.jg = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.jf, ptr noundef nonnull %0, i32 noundef %i.iz, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jh = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.iz)
  %i.ji = zext i16 %i.jh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.947, i32 noundef %i.ji)
  %i.jj = add i32 %i.hn, 4
  br label %bb.cf

bb.cb:                                            ; preds = %bb.by
  %i.jk = load i32, ptr @hf_dnp3_al_da_int32, align 4
  %i.jl = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.jk, ptr noundef nonnull %0, i32 noundef %i.iz, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.jm = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.iz)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.947, i32 noundef %i.jm)
  %i.jn = add i32 %i.hn, 6
  br label %bb.cf

bb.cc:                                            ; preds = %bb.bs
  %i.jo = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hq)
  %i.jp = load i32, ptr @hf_dnp3_al_da_length, align 4
  %i.jq = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.jp, ptr noundef nonnull %0, i32 noundef %i.hq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.jr = add i32 %i.hn, 2                        ; 5 uses
  switch i8 %i.jo, label %bb.cf [
    i8 4, label %bb.cd
    i8 8, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.js = load i32, ptr @hf_dnp3_al_da_flt, align 4
  %i.jt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.js, ptr noundef nonnull %0, i32 noundef %i.jr, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ju = call float @tvb_get_letohieee_float(ptr noundef nonnull %0, i32 noundef %i.jr)
  %i.jv = fpext float %i.ju to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.948, double noundef %i.jv)
  %i.jw = add i32 %i.hn, 6
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.jx = load i32, ptr @hf_dnp3_al_da_dbl, align 4
  %i.jy = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.jx, ptr noundef nonnull %0, i32 noundef %i.jr, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.jz = call double @tvb_get_letohieee_double(ptr noundef nonnull %0, i32 noundef %i.jr)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.01184, ptr noundef @.str.948, double noundef %i.jz)
  %i.ka = add i32 %i.hn, 10
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.by, %bb.bu, %bb.bs, %bb.bt, %bb.bw, %bb.bx, %bb.bv, %bb.ca, %bb.cb, %bb.bz, %bb.ce, %bb.cd, %bb.br
  %.01177 = phi i32 [ %i.hq, %bb.bs ], [ %i.jw, %bb.cd ], [ %i.ka, %bb.ce ], [ %i.jr, %bb.cc ], [ %i.id, %bb.bt ], [ %i.im, %bb.bv ], [ %i.ir, %bb.bw ], [ %i.iv, %bb.bx ], [ %i.ih, %bb.bu ], [ %i.je, %bb.bz ], [ %i.jj, %bb.ca ], [ %i.jn, %bb.cb ], [ %i.iz, %bb.by ], [ %i.hq, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.fx

bb.cg:                                            ; preds = %bb.bq
  switch i16 %.01189, label %bb.fw [
    i16 256, label %bb.fx
    i16 512, label %bb.fx
    i16 2816, label %bb.fx
    i16 768, label %bb.fx
    i16 1024, label %bb.fx
    i16 5120, label %bb.fx
    i16 5632, label %bb.fx
    i16 7680, label %bb.fx
    i16 8192, label %bb.fx
    i16 8704, label %bb.fx
    i16 10752, label %bb.fx
    i16 15361, label %bb.fx
    i16 15362, label %bb.fx
    i16 15363, label %bb.fx
    i16 15364, label %bb.fx
    i16 257, label %bb.ch
    i16 2561, label %bb.ch
    i16 3075, label %bb.ch
    i16 20481, label %bb.ch
    i16 769, label %bb.cl
    i16 258, label %bb.cn
    i16 513, label %bb.cn
    i16 2562, label %bb.cn
    i16 2817, label %bb.cn
    i16 770, label %bb.cq
    i16 1025, label %bb.cq
    i16 514, label %bb.cr
    i16 2818, label %bb.cr
    i16 1026, label %bb.cu
    i16 515, label %bb.cv
    i16 1027, label %bb.cv
    i16 3073, label %bb.cz
    i16 3074, label %bb.cz
    i16 3329, label %bb.da
    i16 3330, label %bb.da
    i16 11009, label %bb.da
    i16 11010, label %bb.da
    i16 11011, label %bb.da
    i16 11012, label %bb.da
    i16 11013, label %bb.da
    i16 11014, label %bb.da
    i16 11015, label %bb.da
    i16 11016, label %bb.da
    i16 10497, label %9
    i16 10498, label %9
    i16 10499, label %9
    i16 10500, label %9
    i16 5121, label %bb.do
    i16 5122, label %bb.do
    i16 5123, label %bb.do
    i16 5124, label %bb.do
    i16 5125, label %bb.do
    i16 5126, label %bb.do
    i16 5127, label %bb.do
    i16 5128, label %bb.do
    i16 5377, label %bb.do
    i16 5378, label %bb.do
    i16 5379, label %bb.do
    i16 5380, label %bb.do
    i16 5381, label %bb.do
    i16 5382, label %bb.do
    i16 5383, label %bb.do
    i16 5384, label %bb.do
    i16 5385, label %bb.do
    i16 5386, label %bb.do
    i16 5387, label %bb.do
    i16 5388, label %bb.do
    i16 5633, label %bb.do
    i16 5634, label %bb.do
    i16 5635, label %bb.do
    i16 5636, label %bb.do
    i16 5637, label %bb.do
    i16 5638, label %bb.do
    i16 5639, label %bb.do
    i16 5640, label %bb.do
    i16 5889, label %bb.do
    i16 5890, label %bb.do
    i16 5891, label %bb.do
    i16 5892, label %bb.do
    i16 5893, label %bb.do
    i16 5894, label %bb.do
    i16 5895, label %bb.do
    i16 5896, label %bb.do
    i16 7681, label %bb.dw
    i16 7682, label %bb.dw
    i16 7683, label %bb.dw
    i16 7684, label %bb.dw
    i16 7685, label %bb.dw
    i16 7686, label %bb.dw
    i16 7937, label %bb.dw
    i16 7938, label %bb.dw
    i16 7939, label %bb.dw
    i16 7940, label %bb.dw
    i16 7941, label %bb.dw
    i16 7942, label %bb.dw
    i16 7943, label %bb.dw
    i16 7944, label %bb.dw
    i16 8193, label %bb.dw
    i16 8194, label %bb.dw
    i16 8195, label %bb.dw
    i16 8196, label %bb.dw
    i16 8197, label %bb.dw
    i16 8198, label %bb.dw
    i16 8199, label %bb.dw
    i16 8200, label %bb.dw
    i16 8449, label %bb.dw
    i16 8450, label %bb.dw
    i16 8451, label %bb.dw
    i16 8452, label %bb.dw
    i16 8453, label %bb.dw
    i16 8454, label %bb.dw
    i16 8455, label %bb.dw
    i16 8456, label %bb.dw
    i16 8705, label %bb.dw
    i16 8706, label %bb.dw
    i16 8707, label %bb.dw
    i16 10241, label %bb.eg
    i16 10242, label %bb.eg
    i16 10243, label %bb.eg
    i16 10244, label %bb.eg
    i16 10753, label %bb.eg
    i16 10754, label %bb.eg
    i16 10755, label %bb.eg
    i16 10756, label %bb.eg
    i16 10757, label %bb.eg
    i16 10758, label %bb.eg
    i16 10759, label %bb.eg
    i16 10760, label %bb.eg
    i16 12801, label %bb.eo
    i16 12803, label %bb.eo
    i16 13057, label %bb.eo
    i16 13058, label %bb.eo
    i16 13314, label %bb.eq
    i16 17923, label %bb.er
    i16 17924, label %bb.ex
    i16 17925, label %bb.fa
    i16 17926, label %bb.fd
    i16 28160, label %bb.fg
    i16 28416, label %bb.fg
    i16 30721, label %bb.fi
    i16 30722, label %bb.fj
    i16 30723, label %bb.fk
    i16 30724, label %bb.fl
    i16 30725, label %bb.fm
    i16 30726, label %bb.fo
    i16 30727, label %bb.fp
    i16 30729, label %bb.fq
    i16 30735, label %bb.fq
    i16 30731, label %bb.fr
    i16 30732, label %bb.fs
    i16 30733, label %bb.ft
    i16 30977, label %bb.fu
    i16 31233, label %bb.fu
    i16 31234, label %bb.fu
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.kb = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 3 uses
  br i1 %i.fo, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kc = icmp ult i32 %.41262, 8
  %i.kd = shl nuw nsw i32 256, %.41262
  %i.ke = add i32 %.41262, -8
  %i.kf = shl nuw i32 1, %i.ke
  %.01174.in = select i1 %i.kc, i32 %i.kd, i32 %i.kf
  %i.kg = load ptr, ptr %i.b, align 8
  %i.kh = and i32 %.01174.in, 65535
  %i.ki = call ptr @val_to_str_const(i32 noundef %i.kh, ptr noundef @dnp3_al_iin_vals, ptr noundef @.str.950)
  %i.kj = and i8 %i.kb, 1
  %i.kk = zext nneg i8 %i.kj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kg, ptr noundef @.str.949, ptr noundef %i.ki, i32 noundef %i.kk)
  br label %select.unfold

bb.cj:                                            ; preds = %bb.ch
  %i.kl = zext i8 %i.kb to i32
  %narrow1303 = select i1 %i.fd, i8 %.011901309, i8 0
  %i.km = zext nneg i8 %narrow1303 to i32
  %.01175.in = lshr i32 %i.kl, %i.km
  %i.kn = load ptr, ptr %i.b, align 8
  %i.ko = and i32 %.01175.in, 1
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kn, ptr noundef @.str.946, i32 noundef %i.ko)
  br i1 %i.fd, label %select.unfold, label %.sink.split

select.unfold:                                    ; preds = %bb.cj, %bb.ci
  %i.kp = icmp ult i8 %.011901309, 8
  br i1 %i.kp, label %switch.lookup, label %bb.ck

switch.lookup:                                    ; preds = %select.unfold
  %i.kq = zext nneg i8 %.011901309 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dnp3_al_process_object, i64 %i.kq
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cj, %switch.lookup
  %hf_dnp3_al_bit7.sink = phi ptr [ %switch.load, %switch.lookup ], [ @hf_dnp3_al_bit7, %bb.cj ]
  %.211921298.ph = phi i8 [ %.011901309, %switch.lookup ], [ 7, %bb.cj ]
  %i.kr = load i32, ptr %hf_dnp3_al_bit7.sink, align 4
  %i.ks = zext i8 %i.kb to i64
  %i.kt = call ptr @proto_tree_add_boolean(ptr noundef %i.fq, i32 noundef %i.kr, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i64 noundef %i.ks) ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %select.unfold, %.sink.split
  %.211921298 = phi i8 [ %.011901309, %select.unfold ], [ %.211921298.ph, %.sink.split ]
  %i.ku = load ptr, ptr %i.b, align 8
  %i.kv = add nuw nsw i32 %.0208217.i, 1          ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.ku, i32 noundef %i.kv)
  %i.kw = add i8 %.211921298, 1                   ; 2 uses
  %i.kx = icmp ugt i8 %i.kw, 7
  %i.ky = add nsw i32 %.21188, -1
  %i.kz = icmp eq i32 %.011831311, %i.ky
  %or.cond1217 = select i1 %i.kx, i1 true, i1 %i.kz ; 2 uses
  %spec.select = select i1 %or.cond1217, i8 0, i8 %i.kw
  %i.la = select i1 %or.cond1217, i32 %i.kv, i32 0
  %spec.select1223 = add i32 %i.la, %.011721313
  br label %bb.fx

bb.cl:                                            ; preds = %bb.cg
  %i.lb = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.011721313)
  %i.lc = zext i8 %i.lb to i32                    ; 2 uses
  %i.ld = zext i8 %.011901309 to i32
  %i.le = shl nuw nsw i32 %i.ld, 1
  %i.lf = lshr i32 %i.lc, %i.le
  %i.lg = and i32 %i.lf, 3
  %i.lh = load ptr, ptr %i.b, align 8
  %i.li = load ptr, ptr %i.fj, align 8
  %i.lj = call ptr @val_to_str_ext(ptr noundef %i.li, i32 noundef %i.lg, ptr noundef @dnp3_al_dbi_vals_ext, ptr noundef @.str.952)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.lh, ptr noundef @.str.951, ptr noundef %i.lj)
  %i.lk = icmp ult i8 %.011901309, 4
  br i1 %i.lk, label %switch.lookup1375, label %bb.cm

switch.lookup1375:                                ; preds = %bb.cl
  %i.ll = zext nneg i8 %.011901309 to i64
  %switch.gep1376 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dnp3_al_process_object.1, i64 %i.ll
  %switch.load1377 = load ptr, ptr %switch.gep1376, align 8
  %i.lm = load i32, ptr %switch.load1377, align 4
  %i.ln = call ptr @proto_tree_add_uint(ptr noundef %i.fq, i32 noundef %i.lm, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 1, i32 noundef %i.lc) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %switch.lookup1375
  %i.lo = load ptr, ptr %i.b, align 8
  %i.lp = add nuw nsw i32 %.0208217.i, 1          ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.lo, i32 noundef %i.lp)
  %i.lq = add i8 %.011901309, 1                   ; 2 uses
  %i.lr = icmp ugt i8 %i.lq, 3
  %i.ls = add nsw i32 %.21188, -1
  %i.lt = icmp eq i32 %.011831311, %i.ls
  %or.cond1219 = select i1 %i.lr, i1 true, i1 %i.lt ; 2 uses
  %spec.select1224 = select i1 %or.cond1219, i8 0, i8 %i.lq
  %i.lu = select i1 %or.cond1219, i32 %i.lp, i32 0
  %spec.select1225 = add i32 %i.lu, %.011721313
  br label %bb.fx

bb.cn:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.lv = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 2 uses
  switch i16 %.01189, label %bb.cp [
    i16 258, label %.sink.split1350.a
    i16 513, label %.sink.split1350.a
    i16 2562, label %bb.co
    i16 2817, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  br label %.sink.split1350.a

.sink.split1350.a:                                ; preds = %bb.cn, %bb.cn, %bb.co
  %.sink1351.a = phi i32 [ 2, %bb.co ], [ 0, %bb.cn ], [ 0, %bb.cn ]
  %i.lw = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.lv, ptr noundef %i.fq, ptr noundef %i.lw, i32 noundef %.sink1351.a)
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split1350.a, %bb.cn
  %i.lx = add i32 %i.hn, 1                        ; 2 uses
  %i.ly = load ptr, ptr %i.b, align 8
  %.lobit1213 = lshr i8 %i.lv, 7
  %i.lz = zext nneg i8 %.lobit1213 to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ly, ptr noundef @.str.946, i32 noundef %i.lz)
  %i.ma = load ptr, ptr %i.b, align 8
  %i.mb = sub i32 %i.lx, %.011721313
  call void @proto_item_set_len(ptr noundef %i.ma, i32 noundef %i.mb)
  br label %bb.fx

bb.cq:                                            ; preds = %bb.cg, %bb.cg
  %i.mc = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 2 uses
  %i.md = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.mc, ptr noundef %i.fq, ptr noundef %i.md, i32 noundef 1)
  %i.me = add i32 %i.hn, 1                        ; 2 uses
  %i.mf = lshr i8 %i.mc, 6
  %i.mg = load ptr, ptr %i.b, align 8
  %i.mh = load ptr, ptr %i.fj, align 8
  %i.mi = zext nneg i8 %i.mf to i32
  %i.mj = call ptr @val_to_str_ext(ptr noundef %i.mh, i32 noundef %i.mi, ptr noundef @dnp3_al_dbi_vals_ext, ptr noundef @.str.952)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mg, ptr noundef @.str.951, ptr noundef %i.mj)
  %i.mk = load ptr, ptr %i.b, align 8
  %i.ml = sub i32 %i.me, %.011721313
  call void @proto_item_set_len(ptr noundef %i.mk, i32 noundef %i.ml)
  br label %bb.fx

bb.cr:                                            ; preds = %bb.cg, %bb.cg
  %i.mm = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 2 uses
  switch i16 %.01189, label %bb.ct [
    i16 514, label %.sink.split1352
    i16 2818, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  br label %.sink.split1352

.sink.split1352:                                  ; preds = %bb.cr, %bb.cs
  %.sink1353 = phi i32 [ 2, %bb.cs ], [ 0, %bb.cr ]
  %i.mn = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.mm, ptr noundef %i.fq, ptr noundef %i.mn, i32 noundef %.sink1353)
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split1352, %bb.cr
  %i.mo = add i32 %i.hn, 1
  %i.mp = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.mq = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.mp, ptr noundef nonnull %0, i32 noundef %i.mo, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.mr = add i32 %i.hn, 7                        ; 2 uses
  %i.ms = load ptr, ptr %i.b, align 8
  %.lobit1212 = lshr i8 %i.mm, 7
  %i.mt = zext nneg i8 %.lobit1212 to i32
  %i.mu = load ptr, ptr %i.fj, align 8
  %i.mv = call ptr @abs_time_to_str_ex(ptr noundef %i.mu, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ms, ptr noundef @.str.953, i32 noundef %i.mt, ptr noundef %i.mv)
  %i.mw = load ptr, ptr %i.b, align 8
  %i.mx = sub i32 %i.mr, %.011721313
  call void @proto_item_set_len(ptr noundef %i.mw, i32 noundef %i.mx)
  br label %bb.fx

bb.cu:                                            ; preds = %bb.cg
  %i.my = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 2 uses
  %i.mz = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.my, ptr noundef %i.fq, ptr noundef %i.mz, i32 noundef 1)
  %i.na = add i32 %i.hn, 1
  %i.nb = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.nc = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.nb, ptr noundef nonnull %0, i32 noundef %i.na, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.nd = add i32 %i.hn, 7                        ; 2 uses
  %i.ne = lshr i8 %i.my, 6
  %i.nf = load ptr, ptr %i.b, align 8
  %i.ng = load ptr, ptr %i.fj, align 8
  %i.nh = zext nneg i8 %i.ne to i32
  %i.ni = call ptr @val_to_str_ext(ptr noundef %i.ng, i32 noundef %i.nh, ptr noundef @dnp3_al_dbi_vals_ext, ptr noundef @.str.952)
  %i.nj = load ptr, ptr %i.fj, align 8
  %i.nk = call ptr @abs_time_to_str_ex(ptr noundef %i.nj, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.nf, ptr noundef @.str.954, ptr noundef %i.ni, ptr noundef %i.nk)
  %i.nl = load ptr, ptr %i.b, align 8
  %i.nm = sub i32 %i.nd, %.011721313
  call void @proto_item_set_len(ptr noundef %i.nl, i32 noundef %i.nm)
  br label %bb.fx

bb.cv:                                            ; preds = %bb.cg, %bb.cg
  %i.nn = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn) ; 3 uses
  %i.no = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.nn, ptr noundef %i.fq, ptr noundef %i.no, i32 noundef %.)
  %i.np = add i32 %i.hn, 1                        ; 2 uses
  %i.nq = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.np) ; 2 uses
  %i.nr = udiv i16 %i.nq, 1000
  %i.ns = zext nneg i16 %i.nr to i64
  store i64 %i.ns, ptr %7, align 8
  %i.nt = urem i16 %i.nq, 1000
  %.zext1300 = zext nneg i16 %i.nt to i32
  %i.nu = mul nuw nsw i32 %.zext1300, 1000000
  store i32 %i.nu, ptr %i.fn, align 8
  call void @nstime_sum(ptr noundef nonnull %8, ptr noundef %6, ptr noundef nonnull %7)
  %i.nv = load i32, ptr @hf_dnp3_al_rel_timestamp, align 4
  %i.nw = call ptr @proto_tree_add_time(ptr noundef %i.fq, i32 noundef %i.nv, ptr noundef nonnull %0, i32 noundef %i.np, i32 noundef 2, ptr noundef nonnull %7) ; 0 uses
  %i.nx = add i32 %i.hn, 3                        ; 2 uses
  switch i16 %.01189, label %bb.cy [
    i16 515, label %bb.cw
    i16 1027, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.ny = load ptr, ptr %i.b, align 8
  %.lobit = lshr i8 %i.nn, 7
  %i.nz = zext nneg i8 %.lobit to i32
  %i.oa = load ptr, ptr %i.fj, align 8
  %i.ob = call ptr @abs_time_to_str_ex(ptr noundef %i.oa, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ny, ptr noundef @.str.953, i32 noundef %i.nz, ptr noundef %i.ob)
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.oc = lshr i8 %i.nn, 6
  %i.od = load ptr, ptr %i.b, align 8
  %i.oe = load ptr, ptr %i.fj, align 8
  %i.of = zext nneg i8 %i.oc to i32
  %i.og = call ptr @val_to_str_ext(ptr noundef %i.oe, i32 noundef %i.of, ptr noundef @dnp3_al_dbi_vals_ext, ptr noundef @.str.952)
  %i.oh = load ptr, ptr %i.fj, align 8
  %i.oi = call ptr @abs_time_to_str_ex(ptr noundef %i.oh, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.od, ptr noundef @.str.954, ptr noundef %i.og, ptr noundef %i.oi)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.oj = load ptr, ptr %i.b, align 8
  %i.ok = sub i32 %i.nx, %.011721313
  call void @proto_item_set_len(ptr noundef %i.oj, i32 noundef %i.ok)
  br label %bb.fx

bb.cz:                                            ; preds = %bb.cg, %bb.cg
  %i.ol = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.om = load i32, ptr @ett_dnp3_al_obj_point_tcc, align 4
  %i.on = zext i8 %i.ol to i32                    ; 3 uses
  %i.oo = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.fq, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef %i.om, ptr noundef null, ptr noundef @.str.955, i32 noundef %i.on) ; 3 uses
  %i.op = load ptr, ptr %i.b, align 8
  %i.oq = and i32 %i.on, 15
  %i.or = call ptr @val_to_str_const(i32 noundef %i.oq, ptr noundef @dnp3_al_ctlc_code_vals, ptr noundef @.str.957)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.op, ptr noundef @.str.956, ptr noundef %i.or)
  %i.os = load ptr, ptr %i.b, align 8
  %i.ot = lshr i32 %i.on, 6
  %i.ou = call ptr @val_to_str_const(i32 noundef %i.ot, ptr noundef @dnp3_al_ctlc_tc_vals, ptr noundef @.str.958)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.os, ptr noundef @.str.956, ptr noundef %i.ou)
  %i.ov = load i32, ptr @hf_dnp3_ctlobj_code_c, align 4
  %i.ow = call ptr @proto_tree_add_item(ptr noundef %i.oo, i32 noundef %i.ov, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ox = load i32, ptr @hf_dnp3_ctlobj_code_m, align 4
  %i.oy = call ptr @proto_tree_add_item(ptr noundef %i.oo, i32 noundef %i.ox, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.oz = load i32, ptr @hf_dnp3_ctlobj_code_tc, align 4
  %i.pa = call ptr @proto_tree_add_item(ptr noundef %i.oo, i32 noundef %i.oz, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pb = add i32 %i.hn, 1
  %i.pc = load i32, ptr @hf_dnp3_al_count, align 4
  %i.pd = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.pc, ptr noundef nonnull %0, i32 noundef %i.pb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pe = add i32 %i.hn, 2
  %i.pf = load i32, ptr @hf_dnp3_al_on_time, align 4
  %i.pg = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.pf, ptr noundef nonnull %0, i32 noundef %i.pe, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ph = add i32 %i.hn, 6
  %i.pi = load i32, ptr @hf_dnp3_al_off_time, align 4
  %i.pj = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.pi, ptr noundef nonnull %0, i32 noundef %i.ph, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.pk = add i32 %i.hn, 10
  %i.pl = load i32, ptr @hf_dnp3_al_ctrlstatus, align 4
  %i.pm = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.pl, ptr noundef nonnull %0, i32 noundef %i.pk, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pn = add i32 %i.hn, 11                       ; 2 uses
  %i.po = load ptr, ptr %i.b, align 8
  %i.pp = sub i32 %i.pn, %.011721313
  call void @proto_item_set_len(ptr noundef %i.po, i32 noundef %i.pp)
  br label %bb.fx

bb.da:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.pq = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.pr = and i8 %i.pq, 127
  %i.ps = load ptr, ptr %i.fj, align 8
  %i.pt = zext nneg i8 %i.pr to i32               ; 2 uses
  %i.pu = call ptr @val_to_str_ext(ptr noundef %i.ps, i32 noundef %i.pt, ptr noundef @dnp3_al_ctl_status_vals_ext, ptr noundef @.str.959)
  %i.pv = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.pv, ptr noundef @.str.960, ptr noundef %i.pu, i32 noundef %i.pt)
  %i.pw = load i32, ptr @hf_dnp3_al_ctrlstatus, align 4
  %i.px = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.pw, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  switch i16 %.01189, label %bb.dg [
    i16 3329, label %bb.db
    i16 3330, label %bb.db
    i16 11009, label %bb.dc
    i16 11011, label %bb.dc
    i16 11010, label %bb.dd
    i16 11012, label %bb.dd
    i16 11013, label %bb.de
    i16 11015, label %bb.de
    i16 11014, label %bb.df
    i16 11016, label %bb.df
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.py = load i32, ptr @hf_dnp3_bocs_bit, align 4
  %i.pz = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.py, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.qa = add i32 %i.hn, 1
  br label %bb.dg

bb.dc:                                            ; preds = %bb.da, %bb.da
  %i.qb = add i32 %i.hn, 1                        ; 3 uses
  %i.qc = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.qb)
  %i.qd = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qd, ptr noundef @.str.947, i32 noundef %i.qc)
  %i.qe = load i32, ptr @hf_dnp3_al_anaout32, align 4
  %i.qf = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.qe, ptr noundef nonnull %0, i32 noundef %i.qb, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.dg

bb.dd:                                            ; preds = %bb.da, %bb.da
  %i.qg = add i32 %i.hn, 1                        ; 2 uses
  %i.qh = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.qg)
  %i.qi = load ptr, ptr %i.b, align 8
  %i.qj = sext i16 %i.qh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qi, ptr noundef @.str.947, i32 noundef %i.qj)
  %i.qk = load i32, ptr @hf_dnp3_al_anaout16, align 4
  %i.ql = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.qk, ptr noundef nonnull %0, i32 noundef %i.qg, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qm = add i32 %i.hn, 3
  br label %bb.dg

bb.de:                                            ; preds = %bb.da, %bb.da
  %i.qn = add i32 %i.hn, 1                        ; 2 uses
  %i.qo = call float @tvb_get_letohieee_float(ptr noundef nonnull %0, i32 noundef %i.qn)
  %i.qp = load ptr, ptr %i.b, align 8
  %i.qq = fpext float %i.qo to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qp, ptr noundef @.str.948, double noundef %i.qq)
  %i.qr = load i32, ptr @hf_dnp3_al_anaoutflt, align 4
  %i.qs = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.qr, ptr noundef nonnull %0, i32 noundef %i.qn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.qt = add i32 %i.hn, 5
  br label %bb.dg

bb.df:                                            ; preds = %bb.da, %bb.da
  %i.qu = add i32 %i.hn, 1                        ; 2 uses
  %i.qv = call double @tvb_get_letohieee_double(ptr noundef nonnull %0, i32 noundef %i.qu)
  %i.qw = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qw, ptr noundef @.str.948, double noundef %i.qv)
  %i.qx = load i32, ptr @hf_dnp3_al_anaoutdbl, align 4
  %i.qy = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.qx, ptr noundef nonnull %0, i32 noundef %i.qu, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.qz = add i32 %i.hn, 9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da
  %.11178 = phi i32 [ %i.hn, %bb.da ], [ %i.qa, %bb.db ], [ %i.qb, %bb.dc ], [ %i.qm, %bb.dd ], [ %i.qt, %bb.de ], [ %i.qz, %bb.df ] ; 3 uses
  switch i16 %.01189, label %bb.di [
    i16 3330, label %bb.dh
    i16 11011, label %bb.dh
    i16 11012, label %bb.dh
    i16 11015, label %bb.dh
    i16 11016, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg
  %i.ra = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.rb = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.ra, ptr noundef nonnull %0, i32 noundef %.11178, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.rc = load ptr, ptr %i.b, align 8
  %i.rd = load ptr, ptr %i.fj, align 8
  %i.re = call ptr @abs_time_to_str_ex(ptr noundef %i.rd, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rc, ptr noundef @.str.961, ptr noundef %i.re)
  %i.rf = add i32 %.11178, 6
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.21179 = phi i32 [ %.11178, %bb.dg ], [ %i.rf, %bb.dh ] ; 2 uses
  %i.rg = load ptr, ptr %i.b, align 8
  %i.rh = sub i32 %.21179, %.011721313
  call void @proto_item_set_len(ptr noundef %i.rg, i32 noundef %i.rh)
  br label %bb.fx

9:                                                ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg
  switch i16 %.01189, label %default.unreachable [
    i16 10497, label %bb.dj
    i16 10498, label %bb.dk
    i16 10499, label %bb.dl
    i16 10500, label %bb.dm
  ]

bb.dj:                                            ; preds = %9
  %i.ri = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.rj = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rj, ptr noundef @.str.947, i32 noundef %i.ri)
  br label %bb.dn

bb.dk:                                            ; preds = %9
  %i.rk = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.rl = load ptr, ptr %i.b, align 8
  %i.rm = sext i16 %i.rk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rl, ptr noundef @.str.947, i32 noundef %i.rm)
  br label %bb.dn

bb.dl:                                            ; preds = %9
  %i.rn = call float @tvb_get_letohieee_float(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.ro = load ptr, ptr %i.b, align 8
  %i.rp = fpext float %i.rn to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ro, ptr noundef @.str.948, double noundef %i.rp)
  br label %bb.dn

bb.dm:                                            ; preds = %9
  %i.rq = call double @tvb_get_letohieee_double(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.rr = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rr, ptr noundef @.str.948, double noundef %i.rq)
  br label %bb.dn

default.unreachable:                              ; preds = %9
  unreachable

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %hf_dnp3_al_anaoutdbl.sink = phi ptr [ @hf_dnp3_al_anaoutdbl, %bb.dm ], [ @hf_dnp3_al_anaoutflt, %bb.dl ], [ @hf_dnp3_al_anaout16, %bb.dk ], [ @hf_dnp3_al_anaout32, %bb.dj ]
  %.sink1356 = phi i32 [ 8, %bb.dm ], [ 4, %bb.dl ], [ 2, %bb.dk ], [ 4, %bb.dj ] ; 2 uses
  %i.rs = load i32, ptr %hf_dnp3_al_anaoutdbl.sink, align 4
  %i.rt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.rs, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %.sink1356, i32 noundef -2147483648) ; 0 uses
  %i.ru = add i32 %i.hn, %.sink1356               ; 3 uses
  %i.rv = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ru)
  %i.rw = and i8 %i.rv, 127
  %i.rx = load ptr, ptr %i.fj, align 8
  %i.ry = zext nneg i8 %i.rw to i32               ; 2 uses
  %i.rz = call ptr @val_to_str_ext(ptr noundef %i.rx, i32 noundef %i.ry, ptr noundef @dnp3_al_ctl_status_vals_ext, ptr noundef @.str.959)
  %i.sa = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.sa, ptr noundef @.str.960, ptr noundef %i.rz, i32 noundef %i.ry)
  %i.sb = load i32, ptr @hf_dnp3_al_ctrlstatus, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.sb, ptr noundef nonnull %0, i32 noundef %i.ru, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.sd = add i32 %i.ru, 1                        ; 2 uses
  %i.se = load ptr, ptr %i.b, align 8
  %i.sf = sub i32 %i.sd, %.011721313
  call void @proto_item_set_len(ptr noundef %i.se, i32 noundef %i.sf)
  br label %bb.fx

bb.do:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  switch i16 %.01189, label %bb.dp [
    i16 5125, label %bb.dq
    i16 5126, label %bb.dq
    i16 5127, label %bb.dq
    i16 5128, label %bb.dq
    i16 5385, label %bb.dq
    i16 5386, label %bb.dq
    i16 5387, label %bb.dq
    i16 5388, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.sg = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.sh = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.sg, ptr noundef %i.fq, ptr noundef %i.sh, i32 noundef 5)
  %i.si = add i32 %i.hn, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %bb.dp
  %.41181 = phi i32 [ %i.si, %bb.dp ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ], [ %i.hn, %bb.do ] ; 5 uses
  switch i16 %.01189, label %bb.dt [
    i16 5121, label %bb.dr
    i16 5123, label %bb.dr
    i16 5125, label %bb.dr
    i16 5127, label %bb.dr
    i16 5377, label %bb.dr
    i16 5379, label %bb.dr
    i16 5381, label %bb.dr
    i16 5383, label %bb.dr
    i16 5385, label %bb.dr
    i16 5387, label %bb.dr
    i16 5633, label %bb.dr
    i16 5635, label %bb.dr
    i16 5637, label %bb.dr
    i16 5639, label %bb.dr
    i16 5889, label %bb.dr
    i16 5891, label %bb.dr
    i16 5893, label %bb.dr
    i16 5895, label %bb.dr
    i16 5122, label %bb.ds
    i16 5124, label %bb.ds
    i16 5126, label %bb.ds
    i16 5128, label %bb.ds
    i16 5378, label %bb.ds
    i16 5380, label %bb.ds
    i16 5382, label %bb.ds
    i16 5384, label %bb.ds
    i16 5386, label %bb.ds
    i16 5388, label %bb.ds
    i16 5634, label %bb.ds
    i16 5636, label %bb.ds
    i16 5638, label %bb.ds
    i16 5640, label %bb.ds
    i16 5890, label %bb.ds
    i16 5892, label %bb.ds
    i16 5894, label %bb.ds
    i16 5896, label %bb.ds
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq
  %i.sj = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.41181)
  %i.sk = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.sk, ptr noundef @.str.962, i32 noundef %i.sj)
  br label %.sink.split1357

bb.ds:                                            ; preds = %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq, %bb.dq
  %i.sl = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.41181)
  %i.sm = load ptr, ptr %i.b, align 8
  %i.sn = zext i16 %i.sl to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.sm, ptr noundef @.str.962, i32 noundef %i.sn)
  br label %.sink.split1357

.sink.split1357:                                  ; preds = %bb.dr, %bb.ds
  %hf_dnp3_al_cnt16.sink = phi ptr [ @hf_dnp3_al_cnt16, %bb.ds ], [ @hf_dnp3_al_cnt32, %bb.dr ]
  %.sink1360 = phi i32 [ 2, %bb.ds ], [ 4, %bb.dr ] ; 2 uses
  %i.so = load i32, ptr %hf_dnp3_al_cnt16.sink, align 4
  %i.sp = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.so, ptr noundef nonnull %0, i32 noundef %.41181, i32 noundef %.sink1360, i32 noundef -2147483648) ; 0 uses
  %i.sq = add i32 %.41181, %.sink1360
  br label %bb.dt

bb.dt:                                            ; preds = %.sink.split1357, %bb.dq
  %.5 = phi i32 [ %.41181, %bb.dq ], [ %i.sq, %.sink.split1357 ] ; 3 uses
  switch i16 %.01189, label %bb.dv [
    i16 5381, label %bb.du
    i16 5382, label %bb.du
    i16 5383, label %bb.du
    i16 5384, label %bb.du
    i16 5637, label %bb.du
    i16 5638, label %bb.du
    i16 5639, label %bb.du
    i16 5640, label %bb.du
    i16 5893, label %bb.du
    i16 5894, label %bb.du
    i16 5895, label %bb.du
    i16 5896, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt
  %i.sr = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.ss = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.sr, ptr noundef nonnull %0, i32 noundef %.5, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.st = load ptr, ptr %i.b, align 8
  %i.su = load ptr, ptr %i.fj, align 8
  %i.sv = call ptr @abs_time_to_str_ex(ptr noundef %i.su, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.st, ptr noundef @.str.961, ptr noundef %i.sv)
  %i.sw = add i32 %.5, 6
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.6 = phi i32 [ %.5, %bb.dt ], [ %i.sw, %bb.du ] ; 2 uses
  %i.sx = load ptr, ptr %i.b, align 8
  %i.sy = sub i32 %.6, %.011721313
  call void @proto_item_set_len(ptr noundef %i.sx, i32 noundef %i.sy)
  br label %bb.fx

bb.dw:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  switch i16 %.01189, label %bb.dx [
    i16 7683, label %bb.dy
    i16 7684, label %bb.dy
    i16 7941, label %bb.dy
    i16 7942, label %bb.dy
    i16 8705, label %bb.dy
    i16 8706, label %bb.dy
    i16 8707, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.sz = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.ta = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.sz, ptr noundef %i.fq, ptr noundef %i.ta, i32 noundef 3)
  %i.tb = add i32 %i.hn, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dw, %bb.dx
  %.7 = phi i32 [ %i.tb, %bb.dx ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ], [ %i.hn, %bb.dw ] ; 7 uses
  switch i16 %.01189, label %bb.ed [
    i16 7681, label %bb.dz
    i16 7683, label %bb.dz
    i16 7937, label %bb.dz
    i16 7939, label %bb.dz
    i16 7941, label %bb.dz
    i16 8193, label %bb.dz
    i16 8195, label %bb.dz
    i16 8449, label %bb.dz
    i16 8451, label %bb.dz
    i16 8706, label %bb.dz
    i16 7682, label %bb.ea
    i16 7684, label %bb.ea
    i16 7938, label %bb.ea
    i16 7940, label %bb.ea
    i16 7942, label %bb.ea
    i16 8194, label %bb.ea
    i16 8196, label %bb.ea
    i16 8450, label %bb.ea
    i16 8452, label %bb.ea
    i16 8705, label %bb.ea
    i16 7685, label %bb.eb
    i16 7943, label %bb.eb
    i16 8197, label %bb.eb
    i16 8199, label %bb.eb
    i16 8453, label %bb.eb
    i16 8455, label %bb.eb
    i16 8707, label %bb.eb
    i16 7686, label %bb.ec
    i16 7944, label %bb.ec
    i16 8198, label %bb.ec
    i16 8200, label %bb.ec
    i16 8454, label %bb.ec
    i16 8456, label %bb.ec
  ]

bb.dz:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.tc = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %.7)
  %i.td = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.td, ptr noundef @.str.947, i32 noundef %i.tc)
  br label %.sink.split1361

bb.ea:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.te = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %.7)
  %i.tf = load ptr, ptr %i.b, align 8
  %i.tg = sext i16 %i.te to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.tf, ptr noundef @.str.947, i32 noundef %i.tg)
  br label %.sink.split1361

bb.eb:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.th = call float @tvb_get_letohieee_float(ptr noundef nonnull %0, i32 noundef %.7)
  %i.ti = load ptr, ptr %i.b, align 8
  %i.tj = fpext float %i.th to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ti, ptr noundef @.str.948, double noundef %i.tj)
  br label %.sink.split1361

bb.ec:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.tk = call double @tvb_get_letohieee_double(ptr noundef nonnull %0, i32 noundef %.7)
  %i.tl = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.tl, ptr noundef @.str.948, double noundef %i.tk)
  br label %.sink.split1361

.sink.split1361:                                  ; preds = %bb.dz, %bb.ea, %bb.eb, %bb.ec
  %hf_dnp3_al_anadbl.sink = phi ptr [ @hf_dnp3_al_anadbl, %bb.ec ], [ @hf_dnp3_al_anaflt, %bb.eb ], [ @hf_dnp3_al_ana16, %bb.ea ], [ @hf_dnp3_al_ana32, %bb.dz ]
  %.sink1364 = phi i32 [ 8, %bb.ec ], [ 4, %bb.eb ], [ 2, %bb.ea ], [ 4, %bb.dz ] ; 2 uses
  %i.tm = load i32, ptr %hf_dnp3_al_anadbl.sink, align 4
  %i.tn = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.tm, ptr noundef nonnull %0, i32 noundef %.7, i32 noundef %.sink1364, i32 noundef -2147483648) ; 0 uses
  %i.to = add i32 %.7, %.sink1364
  br label %bb.ed

bb.ed:                                            ; preds = %.sink.split1361, %bb.dy
  %.8 = phi i32 [ %.7, %bb.dy ], [ %i.to, %.sink.split1361 ] ; 3 uses
  switch i16 %.01189, label %bb.ef [
    i16 8195, label %.sink.split1365
    i16 8196, label %.sink.split1365
    i16 8199, label %.sink.split1365
    i16 8200, label %.sink.split1365
    i16 8451, label %.sink.split1365
    i16 8452, label %.sink.split1365
    i16 8455, label %.sink.split1365
    i16 8456, label %.sink.split1365
    i16 7939, label %bb.ee
    i16 7940, label %bb.ee
  ]

bb.ee:                                            ; preds = %bb.ed, %bb.ed
  br label %.sink.split1365

.sink.split1365:                                  ; preds = %bb.ed, %bb.ed, %bb.ed, %bb.ed, %bb.ed, %bb.ed, %bb.ed, %bb.ed, %bb.ee
  %.str.963.sink = phi ptr [ @.str.963, %bb.ee ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ], [ @.str.961, %bb.ed ]
  %i.tp = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.tq = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.tp, ptr noundef nonnull %0, i32 noundef %.8, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.tr = load ptr, ptr %i.b, align 8
  %i.ts = load ptr, ptr %i.fj, align 8
  %i.tt = call ptr @abs_time_to_str_ex(ptr noundef %i.ts, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.tr, ptr noundef %.str.963.sink, ptr noundef %i.tt)
  %i.tu = add i32 %.8, 6
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split1365, %bb.ed
  %.9 = phi i32 [ %.8, %bb.ed ], [ %i.tu, %.sink.split1365 ] ; 2 uses
  %i.tv = load ptr, ptr %i.b, align 8
  %i.tw = sub i32 %.9, %.011721313
  call void @proto_item_set_len(ptr noundef %i.tv, i32 noundef %i.tw)
  br label %bb.fx

bb.eg:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.tx = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.ty = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.tx, ptr noundef %i.fq, ptr noundef %i.ty, i32 noundef 4)
  %i.tz = add i32 %i.hn, 1                        ; 6 uses
  switch i16 %.01189, label %bb.el [
    i16 10241, label %bb.eh
    i16 10753, label %bb.eh
    i16 10755, label %bb.eh
    i16 10242, label %bb.ei
    i16 10754, label %bb.ei
    i16 10756, label %bb.ei
    i16 10243, label %bb.ej
    i16 10757, label %bb.ej
    i16 10759, label %bb.ej
    i16 10244, label %bb.ek
    i16 10758, label %bb.ek
    i16 10760, label %bb.ek
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.eg, %bb.eg
  %i.ua = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.tz)
  %i.ub = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ub, ptr noundef @.str.947, i32 noundef %i.ua)
  br label %.sink.split1370

bb.ei:                                            ; preds = %bb.eg, %bb.eg, %bb.eg
  %i.uc = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.tz)
  %i.ud = load ptr, ptr %i.b, align 8
  %i.ue = sext i16 %i.uc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ud, ptr noundef @.str.947, i32 noundef %i.ue)
  br label %.sink.split1370

bb.ej:                                            ; preds = %bb.eg, %bb.eg, %bb.eg
  %i.uf = call float @tvb_get_letohieee_float(ptr noundef nonnull %0, i32 noundef %i.tz)
  %i.ug = load ptr, ptr %i.b, align 8
  %i.uh = fpext float %i.uf to double
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ug, ptr noundef @.str.948, double noundef %i.uh)
  br label %.sink.split1370

bb.ek:                                            ; preds = %bb.eg, %bb.eg, %bb.eg
  %i.ui = call double @tvb_get_letohieee_double(ptr noundef nonnull %0, i32 noundef %i.tz)
  %i.uj = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.uj, ptr noundef @.str.948, double noundef %i.ui)
  br label %.sink.split1370

.sink.split1370:                                  ; preds = %bb.eh, %bb.ei, %bb.ej, %bb.ek
  %hf_dnp3_al_anaoutdbl.sink1374 = phi ptr [ @hf_dnp3_al_anaoutdbl, %bb.ek ], [ @hf_dnp3_al_anaoutflt, %bb.ej ], [ @hf_dnp3_al_anaout16, %bb.ei ], [ @hf_dnp3_al_anaout32, %bb.eh ]
  %.sink1373 = phi i32 [ 8, %bb.ek ], [ 4, %bb.ej ], [ 2, %bb.ei ], [ 4, %bb.eh ]
  %.sink1371 = phi i32 [ 9, %bb.ek ], [ 5, %bb.ej ], [ 3, %bb.ei ], [ 5, %bb.eh ]
  %i.uk = load i32, ptr %hf_dnp3_al_anaoutdbl.sink1374, align 4
  %i.ul = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.uk, ptr noundef nonnull %0, i32 noundef %i.tz, i32 noundef %.sink1373, i32 noundef -2147483648) ; 0 uses
  %i.um = add i32 %i.hn, %.sink1371
  br label %bb.el

bb.el:                                            ; preds = %.sink.split1370, %bb.eg
  %.10 = phi i32 [ %i.tz, %bb.eg ], [ %i.um, %.sink.split1370 ] ; 3 uses
  switch i16 %.01189, label %bb.en [
    i16 10755, label %bb.em
    i16 10756, label %bb.em
    i16 10759, label %bb.em
    i16 10760, label %bb.em
  ]

bb.em:                                            ; preds = %bb.el, %bb.el, %bb.el, %bb.el
  %i.un = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.uo = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.un, ptr noundef nonnull %0, i32 noundef %.10, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.up = load ptr, ptr %i.b, align 8
  %i.uq = load ptr, ptr %i.fj, align 8
  %i.ur = call ptr @abs_time_to_str_ex(ptr noundef %i.uq, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.up, ptr noundef @.str.961, ptr noundef %i.ur)
  %i.us = add i32 %.10, 6
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.11 = phi i32 [ %.10, %bb.el ], [ %i.us, %bb.em ] ; 2 uses
  %i.ut = load ptr, ptr %i.b, align 8
  %i.uu = sub i32 %.11, %.011721313
  call void @proto_item_set_len(ptr noundef %i.ut, i32 noundef %i.uu)
  br label %bb.fx

bb.eo:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.uv = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.uw = call ptr @proto_tree_add_time_item(ptr noundef %i.aa, i32 noundef %i.uv, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.ux = add i32 %i.hn, 6                        ; 3 uses
  %i.uy = load ptr, ptr %i.b, align 8
  %i.uz = sub i32 %i.ux, %.011721313
  call void @proto_item_set_len(ptr noundef %i.uy, i32 noundef %i.uz)
  br i1 %i.fl, label %bb.ep, label %bb.fx

bb.ep:                                            ; preds = %bb.eo
  call void @nstime_copy(ptr noundef %6, ptr noundef nonnull %8)
  br label %bb.fx

bb.eq:                                            ; preds = %bb.cg
  %i.va = load i32, ptr @hf_dnp3_al_time_delay, align 4
  %i.vb = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.va, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.vc = add i32 %i.hn, 2                        ; 2 uses
  %i.vd = load ptr, ptr %i.b, align 8
  %i.ve = sub i32 %i.vc, %.011721313
  call void @proto_item_set_len(ptr noundef %i.vd, i32 noundef %i.ve)
  br label %bb.fx

bb.er:                                            ; preds = %bb.cg
  %i.vf = load i32, ptr @hf_dnp3_al_file_string_offset, align 4
  %i.vg = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.vf, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.vh = add i32 %i.hn, 2                        ; 2 uses
  %i.vi = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.vh) ; 2 uses
  %i.vj = load i32, ptr @hf_dnp3_al_file_string_length, align 4
  %i.vk = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.vj, ptr noundef nonnull %0, i32 noundef %i.vh, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.vl = add i32 %i.hn, 20                       ; 2 uses
  %i.vm = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.vl) ; 2 uses
  %i.vn = icmp eq i16 %i.vm, 2
  br i1 %i.vn, label %bb.es, label %.critedge

bb.es:                                            ; preds = %bb.er
  %i.vo = add i32 %i.hn, 4
  %i.vp = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.vq = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.vp, ptr noundef nonnull %0, i32 noundef %i.vo, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.vr = load i32, ptr @hf_dnp3_al_file_perms, align 4
  %i.vs = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.vr, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648)
  %i.vt = load i32, ptr @ett_dnp3_al_obj_point_perms, align 4
  %i.vu = call ptr @proto_item_add_subtree(ptr noundef %i.vs, i32 noundef %i.vt) ; 9 uses
  %i.vv = load i32, ptr @hf_dnp3_al_file_perms_read_owner, align 4
  %i.vw = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.vv, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.vx = load i32, ptr @hf_dnp3_al_file_perms_write_owner, align 4
  %i.vy = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.vx, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.vz = load i32, ptr @hf_dnp3_al_file_perms_exec_owner, align 4
  %i.wa = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.vz, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wb = load i32, ptr @hf_dnp3_al_file_perms_read_group, align 4
  %i.wc = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wb, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wd = load i32, ptr @hf_dnp3_al_file_perms_write_group, align 4
  %i.we = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wd, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wf = load i32, ptr @hf_dnp3_al_file_perms_exec_group, align 4
  %i.wg = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wf, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wh = load i32, ptr @hf_dnp3_al_file_perms_read_world, align 4
  %i.wi = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wh, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wj = load i32, ptr @hf_dnp3_al_file_perms_write_world, align 4
  %i.wk = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wj, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wl = load i32, ptr @hf_dnp3_al_file_perms_exec_world, align 4
  %i.wm = call ptr @proto_tree_add_item(ptr noundef %i.vu, i32 noundef %i.wl, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.er, %bb.es
  %i.wn = add i32 %i.hn, 12
  %i.wo = load i32, ptr @hf_dnp3_al_file_auth, align 4
  %i.wp = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.wo, ptr noundef nonnull %0, i32 noundef %i.wn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.wq = and i16 %i.vm, -2
  %or.cond14 = icmp eq i16 %i.wq, 2
  br i1 %or.cond14, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %.critedge
  %i.wr = add i32 %i.hn, 16
  %i.ws = load i32, ptr @hf_dnp3_al_file_size, align 4
  %i.wt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ws, ptr noundef nonnull %0, i32 noundef %i.wr, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %.critedge, %bb.et
  %i.wu = load i32, ptr @hf_dnp3_al_file_mode, align 4
  %i.wv = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.wu, ptr noundef nonnull %0, i32 noundef %i.vl, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ww = add i32 %i.hn, 22
  %i.wx = load i32, ptr @hf_dnp3_al_file_maxblk, align 4
  %i.wy = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.wx, ptr noundef nonnull %0, i32 noundef %i.ww, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wz = add i32 %i.hn, 24
  %i.xa = load i32, ptr @hf_dnp3_al_file_reqID, align 4
  %i.xb = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xa, ptr noundef nonnull %0, i32 noundef %i.wz, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.xc = add i32 %i.hn, 26                       ; 2 uses
  %i.xd = zext i16 %i.vi to i32                   ; 2 uses
  %.not1211 = icmp eq i16 %i.vi, 0
  br i1 %.not1211, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xe = load i32, ptr @hf_dnp3_al_file_name, align 4
  %i.xf = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xe, ptr noundef nonnull %0, i32 noundef %i.xc, i32 noundef %i.xd, i32 noundef 0) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.xg = add i32 %i.xc, %i.xd                    ; 2 uses
  %i.xh = load ptr, ptr %i.b, align 8
  %i.xi = sub i32 %i.xg, %.011721313
  call void @proto_item_set_len(ptr noundef %i.xh, i32 noundef %i.xi)
  br label %bb.fx

bb.ex:                                            ; preds = %bb.cg
  %i.xj = load i32, ptr @hf_dnp3_al_file_handle, align 4
  %i.xk = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xj, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.xl = add i32 %i.hn, 4
  %i.xm = load i32, ptr @hf_dnp3_al_file_size, align 4
  %i.xn = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xm, ptr noundef nonnull %0, i32 noundef %i.xl, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.xo = add i32 %i.hn, 8
  %i.xp = load i32, ptr @hf_dnp3_al_file_maxblk, align 4
  %i.xq = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xp, ptr noundef nonnull %0, i32 noundef %i.xo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.xr = add i32 %i.hn, 10
  %i.xs = load i32, ptr @hf_dnp3_al_file_reqID, align 4
  %i.xt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xs, ptr noundef nonnull %0, i32 noundef %i.xr, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.xu = add i32 %i.hn, 12
  %i.xv = load i32, ptr @hf_dnp3_al_file_status, align 4
  %i.xw = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xv, ptr noundef nonnull %0, i32 noundef %i.xu, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.xx = add i32 %i.hn, 13                       ; 2 uses
  %i.xy = add i32 %.41262, -13                    ; 2 uses
  %.not1210 = icmp eq i32 %i.xy, 0
  br i1 %.not1210, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xz = load i32, ptr @hf_dnp3_al_file_data, align 4
  %i.ya = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.xz, ptr noundef nonnull %0, i32 noundef %i.xx, i32 noundef %i.xy, i32 noundef 0) ; 0 uses
  %i.yb = add i32 %i.hn, %.41262
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.12 = phi i32 [ %i.yb, %bb.ey ], [ %i.xx, %bb.ex ] ; 2 uses
  %i.yc = load ptr, ptr %i.b, align 8
  %i.yd = sub i32 %.12, %.011721313
  call void @proto_item_set_len(ptr noundef %i.yc, i32 noundef %i.yd)
  br label %bb.fx

bb.fa:                                            ; preds = %bb.cg
  %i.ye = load i32, ptr @hf_dnp3_al_file_handle, align 4
  %i.yf = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ye, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yg = add i32 %i.hn, 4                        ; 2 uses
  %i.yh = load i32, ptr @hf_dnp3_al_file_blocknum, align 4
  %i.yi = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.yh, ptr noundef nonnull %0, i32 noundef %i.yg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yj = load i32, ptr @hf_dnp3_al_file_lastblock, align 4
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.yj, ptr noundef nonnull %0, i32 noundef %i.yg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yl = add i32 %i.hn, 8                        ; 2 uses
  %i.ym = add i32 %.41262, -8                     ; 2 uses
  %.not1209 = icmp eq i32 %i.ym, 0
  br i1 %.not1209, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.yn = load i32, ptr @hf_dnp3_al_file_data, align 4
  %i.yo = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.yn, ptr noundef nonnull %0, i32 noundef %i.yl, i32 noundef %i.ym, i32 noundef 0) ; 0 uses
  %i.yp = add i32 %i.hn, %.41262
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.13 = phi i32 [ %i.yp, %bb.fb ], [ %i.yl, %bb.fa ] ; 2 uses
  %i.yq = load ptr, ptr %i.b, align 8
  %i.yr = sub i32 %.13, %.011721313
  call void @proto_item_set_len(ptr noundef %i.yq, i32 noundef %i.yr)
  br label %bb.fx

bb.fd:                                            ; preds = %bb.cg
  %i.ys = load i32, ptr @hf_dnp3_al_file_handle, align 4
  %i.yt = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ys, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yu = add i32 %i.hn, 4                        ; 2 uses
  %i.yv = load i32, ptr @hf_dnp3_al_file_blocknum, align 4
  %i.yw = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.yv, ptr noundef nonnull %0, i32 noundef %i.yu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yx = load i32, ptr @hf_dnp3_al_file_lastblock, align 4
  %i.yy = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.yx, ptr noundef nonnull %0, i32 noundef %i.yu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.yz = add i32 %i.hn, 8
  %i.za = load i32, ptr @hf_dnp3_al_file_status, align 4
  %i.zb = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.za, ptr noundef nonnull %0, i32 noundef %i.yz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.zc = add i32 %i.hn, 9                        ; 2 uses
  %i.zd = add i32 %.41262, -9                     ; 2 uses
  %.not1208 = icmp eq i32 %i.zd, 0
  br i1 %.not1208, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ze = load i32, ptr @hf_dnp3_al_file_data, align 4
  %i.zf = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.ze, ptr noundef nonnull %0, i32 noundef %i.zc, i32 noundef %i.zd, i32 noundef 0) ; 0 uses
  %i.zg = add i32 %i.hn, %.41262
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.14 = phi i32 [ %i.zg, %bb.fe ], [ %i.zc, %bb.fd ] ; 2 uses
  %i.zh = load ptr, ptr %i.b, align 8
  %i.zi = sub i32 %.14, %.011721313
  call void @proto_item_set_len(ptr noundef %i.zh, i32 noundef %i.zi)
  br label %bb.fx

bb.fg:                                            ; preds = %bb.cg, %bb.cg
  br i1 %.not, label %bb.fx, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.zj = load i32, ptr @hf_dnp3_al_octet_string, align 4
  %i.zk = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.zj, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %.01195, i32 noundef 0) ; 0 uses
  %i.zl = add i32 %i.hn, %.01195                  ; 2 uses
  %i.zm = load ptr, ptr %i.b, align 8
  %i.zn = sub i32 %i.zl, %.011721313
  call void @proto_item_set_len(ptr noundef %i.zm, i32 noundef %i.zn)
  br label %bb.fx

bb.fi:                                            ; preds = %bb.cg
  %i.zo = load i32, ptr @hf_dnp3_al_sa_csq, align 4
  %i.zp = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.zo, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.zq = add i32 %i.hn, 4
  %i.zr = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.zs = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.zr, ptr noundef nonnull %0, i32 noundef %i.zq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.zt = add i32 %i.hn, 6
  %i.zu = load i32, ptr @hf_dnp3_al_sa_mal, align 4
  %i.zv = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.zu, ptr noundef nonnull %0, i32 noundef %i.zt, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.zw = add i32 %i.hn, 7
  %i.zx = load i32, ptr @hf_dnp3_al_sa_rfc, align 4
  %i.zy = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.zx, ptr noundef nonnull %0, i32 noundef %i.zw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.zz = add i32 %i.hn, 8
  %i.aaa = load i32, ptr @hf_dnp3_al_sa_cd, align 4
  %i.aab = add i32 %.41262, -8
  %i.aac = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aaa, ptr noundef nonnull %0, i32 noundef %i.zz, i32 noundef %i.aab, i32 noundef 0) ; 0 uses
  %i.aad = add i32 %i.hn, %.41262
  br label %bb.fx

bb.fj:                                            ; preds = %bb.cg
  %i.aae = load i32, ptr @hf_dnp3_al_sa_csq, align 4
  %i.aaf = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aae, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aag = add i32 %i.hn, 4
  %i.aah = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.aai = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aah, ptr noundef nonnull %0, i32 noundef %i.aag, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aaj = add i32 %i.hn, 6
  %i.aak = load i32, ptr @hf_dnp3_al_sa_mac, align 4
  %i.aal = add i32 %.41262, -6
  %i.aam = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aak, ptr noundef nonnull %0, i32 noundef %i.aaj, i32 noundef %i.aal, i32 noundef 0) ; 0 uses
  %i.aan = add i32 %i.hn, %.41262
  br label %bb.fx

bb.fk:                                            ; preds = %bb.cg
  %i.aao = load i32, ptr @hf_dnp3_al_sa_csq, align 4
  %i.aap = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aao, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aaq = add i32 %i.hn, 4
  %i.aar = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.aas = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aar, ptr noundef nonnull %0, i32 noundef %i.aaq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aat = add i32 %i.hn, 6
  br label %bb.fx

bb.fl:                                            ; preds = %bb.cg
  %i.aau = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.aav = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aau, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aaw = add i32 %i.hn, 2
  br label %bb.fx

bb.fm:                                            ; preds = %bb.cg
  %i.aax = load i32, ptr @hf_dnp3_al_sa_ksq, align 4
  %i.aay = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aax, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.aaz = add i32 %i.hn, 4
  %i.aba = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.abb = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aba, ptr noundef nonnull %0, i32 noundef %i.aaz, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.abc = add i32 %i.hn, 6
  %i.abd = load i32, ptr @hf_dnp3_al_sa_kwa, align 4
  %i.abe = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abd, ptr noundef nonnull %0, i32 noundef %i.abc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.abf = add i32 %i.hn, 7
  %i.abg = load i32, ptr @hf_dnp3_al_sa_ks, align 4
  %i.abh = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abg, ptr noundef nonnull %0, i32 noundef %i.abf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.abi = add i32 %i.hn, 8                       ; 2 uses
  %i.abj = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.abi)
  %switch.tableidx = add i8 %i.abj, -1            ; 2 uses
  %i.abk = icmp ult i8 %switch.tableidx, 6
  br i1 %i.abk, label %switch.lookup1378, label %bb.fn

switch.lookup1378:                                ; preds = %bb.fm
  %i.abl = zext nneg i8 %switch.tableidx to i64
  %switch.gep1379 = getelementptr inbounds nuw i8, ptr @switch.table.dnp3_al_process_object.2, i64 %i.abl
  %switch.load1380 = load i8, ptr %switch.gep1379, align 1
  %switch.ext = zext i8 %switch.load1380 to i32
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %switch.lookup1378
  %.01176 = phi i32 [ %switch.ext, %switch.lookup1378 ], [ 0, %bb.fm ] ; 2 uses
  %i.abm = load i32, ptr @hf_dnp3_al_sa_mal, align 4
  %i.abn = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abm, ptr noundef nonnull %0, i32 noundef %i.abi, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.abo = add i32 %i.hn, 9                       ; 2 uses
  %i.abp = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.abo)
  %i.abq = load i32, ptr @hf_dnp3_al_sa_cdl, align 4
  %i.abr = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abq, ptr noundef nonnull %0, i32 noundef %i.abo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.abs = add i32 %i.hn, 11                      ; 2 uses
  %i.abt = load i32, ptr @hf_dnp3_al_sa_cd, align 4
  %i.abu = zext i16 %i.abp to i32                 ; 2 uses
  %i.abv = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abt, ptr noundef nonnull %0, i32 noundef %i.abs, i32 noundef %i.abu, i32 noundef 0) ; 0 uses
  %i.abw = add i32 %i.abs, %i.abu                 ; 2 uses
  %i.abx = load i32, ptr @hf_dnp3_al_sa_mac, align 4
  %i.aby = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.abx, ptr noundef nonnull %0, i32 noundef %i.abw, i32 noundef %.01176, i32 noundef 0) ; 0 uses
  %i.abz = add i32 %i.abw, %.01176
  br label %bb.fx

bb.fo:                                            ; preds = %bb.cg
  %i.aca = load i32, ptr @hf_dnp3_al_sa_ksq, align 4
  %i.acb = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aca, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.acc = add i32 %i.hn, 4
  %i.acd = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.ace = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.acd, ptr noundef nonnull %0, i32 noundef %i.acc, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.acf = add i32 %i.hn, 6
  %i.acg = load i32, ptr @hf_dnp3_al_sa_key, align 4
  %i.ach = add i32 %.41262, -6
  %i.aci = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.acg, ptr noundef nonnull %0, i32 noundef %i.acf, i32 noundef %i.ach, i32 noundef 0) ; 0 uses
  %i.acj = add i32 %i.hn, %.41262
  br label %bb.fx

bb.fp:                                            ; preds = %bb.cg
  %i.ack = load i32, ptr @hf_dnp3_al_sa_seq, align 4
  %i.acl = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ack, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.acm = add i32 %i.hn, 4
  %i.acn = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.aco = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.acn, ptr noundef nonnull %0, i32 noundef %i.acm, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.acp = add i32 %i.hn, 6
  %i.acq = load i32, ptr @hf_dnp3_al_sa_assoc_id, align 4
  %i.acr = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.acq, ptr noundef nonnull %0, i32 noundef %i.acp, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.acs = add i32 %i.hn, 8
  %i.act = load i32, ptr @hf_dnp3_al_sa_err, align 4
  %i.acu = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.act, ptr noundef nonnull %0, i32 noundef %i.acs, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.acv = add i32 %i.hn, 9
  %i.acw = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.acx = call ptr @proto_tree_add_time_item(ptr noundef %i.aa, i32 noundef %i.acw, ptr noundef nonnull %0, i32 noundef %i.acv, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.acy = add i32 %i.hn, 15
  br label %bb.fx

bb.fq:                                            ; preds = %bb.cg, %bb.cg
  %i.acz = load i32, ptr @hf_dnp3_al_sa_mac, align 4
  %i.ada = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.acz, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %.41262, i32 noundef 0) ; 0 uses
  %i.adb = add i32 %i.hn, %.41262
  br label %bb.fx

bb.fr:                                            ; preds = %bb.cg
  %i.adc = load i32, ptr @hf_dnp3_al_sa_kcm, align 4
  %i.add = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adc, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ade = add i32 %i.hn, 1                       ; 2 uses
  %i.adf = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.ade)
  %i.adg = load i32, ptr @hf_dnp3_al_sa_usrnl, align 4
  %i.adh = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adg, ptr noundef nonnull %0, i32 noundef %i.ade, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.adi = add i32 %i.hn, 3                       ; 2 uses
  %i.adj = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.adi)
  %i.adk = load i32, ptr @hf_dnp3_al_sa_cdl, align 4
  %i.adl = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adk, ptr noundef nonnull %0, i32 noundef %i.adi, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.adm = add i32 %i.hn, 5                       ; 2 uses
  %i.adn = load i32, ptr @hf_dnp3_al_sa_usrn, align 4
  %i.ado = zext i16 %i.adf to i32                 ; 2 uses
  %i.adp = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adn, ptr noundef nonnull %0, i32 noundef %i.adm, i32 noundef %i.ado, i32 noundef 0) ; 0 uses
  %i.adq = add i32 %i.adm, %i.ado                 ; 2 uses
  %i.adr = load i32, ptr @hf_dnp3_al_sa_cd, align 4
  %i.ads = zext i16 %i.adj to i32                 ; 2 uses
  %i.adt = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adr, ptr noundef nonnull %0, i32 noundef %i.adq, i32 noundef %i.ads, i32 noundef 0) ; 0 uses
  %i.adu = add i32 %i.adq, %i.ads
  br label %bb.fx

bb.fs:                                            ; preds = %bb.cg
  %i.adv = load i32, ptr @hf_dnp3_al_sa_seq, align 4
  %i.adw = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.adv, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.adx = add i32 %i.hn, 4
  %i.ady = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.adz = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ady, ptr noundef nonnull %0, i32 noundef %i.adx, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aea = add i32 %i.hn, 6                       ; 2 uses
  %i.aeb = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aea)
  %i.aec = load i32, ptr @hf_dnp3_al_sa_cdl, align 4
  %i.aed = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aec, ptr noundef nonnull %0, i32 noundef %i.aea, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aee = add i32 %i.hn, 8                       ; 2 uses
  %i.aef = load i32, ptr @hf_dnp3_al_sa_cd, align 4
  %i.aeg = zext i16 %i.aeb to i32                 ; 2 uses
  %i.aeh = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aef, ptr noundef nonnull %0, i32 noundef %i.aee, i32 noundef %i.aeg, i32 noundef 0) ; 0 uses
  %i.aei = add i32 %i.aee, %i.aeg
  br label %bb.fx

bb.ft:                                            ; preds = %bb.cg
  %i.aej = load i32, ptr @hf_dnp3_al_sa_seq, align 4
  %i.aek = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aej, ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ael = add i32 %i.hn, 4
  %i.aem = load i32, ptr @hf_dnp3_al_sa_usr, align 4
  %i.aen = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aem, ptr noundef nonnull %0, i32 noundef %i.ael, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aeo = add i32 %i.hn, 6                       ; 2 uses
  %i.aep = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.aeo)
  %i.aeq = load i32, ptr @hf_dnp3_al_sa_ukl, align 4
  %i.aer = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aeq, ptr noundef nonnull %0, i32 noundef %i.aeo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aes = add i32 %i.hn, 8                       ; 2 uses
  %i.aet = load i32, ptr @hf_dnp3_al_sa_uk, align 4
  %i.aeu = zext i16 %i.aep to i32                 ; 2 uses
  %i.aev = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aet, ptr noundef nonnull %0, i32 noundef %i.aes, i32 noundef %i.aeu, i32 noundef 0) ; 0 uses
  %i.aew = add i32 %i.aes, %i.aeu
  br label %bb.fx

bb.fu:                                            ; preds = %bb.cg, %bb.cg, %bb.cg
  %i.aex = load ptr, ptr %i.fj, align 8
  %i.aey = call ptr @val_to_str_ext(ptr noundef %i.aex, i32 noundef %.41262, ptr noundef @dnp3_al_sa_secstat_vals_ext, ptr noundef @.str.964)
  %i.aez = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aez, ptr noundef @.str.965, ptr noundef %i.aey)
  %i.afa = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.hn)
  %i.afb = load ptr, ptr %i.b, align 8
  call fastcc void @dnp3_al_obj_quality(ptr noundef %0, i32 noundef %i.hn, i8 noundef zeroext %i.afa, ptr noundef %i.fq, ptr noundef %i.afb, i32 noundef 5)
  %i.afc = add i32 %i.hn, 1                       ; 2 uses
  %i.afd = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.afc)
  %i.afe = load ptr, ptr %i.b, align 8
  %i.aff = zext i16 %i.afd to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.afe, ptr noundef @.str.966, i32 noundef %i.aff)
  %i.afg = load i32, ptr @hf_dnp3_al_sa_assoc_id, align 4
  %i.afh = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.afg, ptr noundef nonnull %0, i32 noundef %i.afc, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.afi = add i32 %i.hn, 3                       ; 2 uses
  %i.afj = call i32 @tvb_get_letohl(ptr noundef nonnull %0, i32 noundef %i.afi)
  %i.afk = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.afk, ptr noundef @.str.962, i32 noundef %i.afj)
  %i.afl = load i32, ptr @hf_dnp3_al_cnt32, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.fq, i32 noundef %i.afl, ptr noundef nonnull %0, i32 noundef %i.afi, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.afn = add i32 %i.hn, 7                       ; 2 uses
  br i1 %i.fk, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.afo = load i32, ptr @hf_dnp3_al_timestamp, align 4
  %i.afp = call ptr @proto_tree_add_time_item(ptr noundef %i.fq, i32 noundef %i.afo, ptr noundef nonnull %0, i32 noundef %i.afn, i32 noundef 6, i32 noundef -2147483628, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) ; 0 uses
  %i.afq = load ptr, ptr %i.b, align 8
  %i.afr = load ptr, ptr %i.fj, align 8
  %i.afs = call ptr @abs_time_to_str_ex(ptr noundef %i.afr, ptr noundef nonnull %8, i32 noundef 19, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.afq, ptr noundef @.str.961, ptr noundef %i.afs)
  %i.aft = add i32 %i.hn, 13
  br label %bb.fx

bb.fw:                                            ; preds = %bb.cg
  %i.afu = load i32, ptr @hf_dnp3_unknown_data_chunk, align 4
  %i.afv = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.afu, ptr noundef nonnull %0, i32 noundef %.011721313, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.afw = call i32 @tvb_captured_length(ptr noundef nonnull %0)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.cm, %bb.ck, %bb.fu, %bb.fv, %bb.fg, %bb.fh, %bb.eo, %bb.ep, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cp, %bb.cq, %bb.ct, %bb.cu, %bb.cy, %bb.cz, %bb.di, %bb.dn, %bb.dv, %bb.ef, %bb.en, %bb.eq, %bb.ew, %bb.ez, %bb.fc, %bb.ff, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fw, %bb.cf
  %.31193 = phi i8 [ %.011901309, %bb.cf ], [ %.011901309, %bb.fw ], [ %.011901309, %bb.fg ], [ %.011901309, %bb.fu ], [ %.011901309, %bb.fv ], [ %spec.select, %bb.ck ], [ %spec.select1224, %bb.cm ], [ %.011901309, %bb.cp ], [ %.011901309, %bb.cq ], [ %.011901309, %bb.ct ], [ %.011901309, %bb.cu ], [ %.011901309, %bb.cy ], [ %.011901309, %bb.cz ], [ %.011901309, %bb.di ], [ %.011901309, %bb.dn ], [ %.011901309, %bb.dv ], [ %.011901309, %bb.ef ], [ %.011901309, %bb.en ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.eq ], [ %.011901309, %bb.ew ], [ %.011901309, %bb.ez ], [ %.011901309, %bb.fc ], [ %.011901309, %bb.ff ], [ %.011901309, %bb.eo ], [ %.011901309, %bb.fi ], [ %.011901309, %bb.fj ], [ %.011901309, %bb.fk ], [ %.011901309, %bb.fl ], [ %.011901309, %bb.fn ], [ %.011901309, %bb.fo ], [ %.011901309, %bb.fp ], [ %.011901309, %bb.fq ], [ %.011901309, %bb.fr ], [ %.011901309, %bb.fs ], [ %.011901309, %bb.ft ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.cg ], [ %.011901309, %bb.ep ], [ %.011901309, %bb.fh ]
  %.1 = phi i32 [ %.01177, %bb.cf ], [ %i.afw, %bb.fw ], [ %i.hn, %bb.fg ], [ %i.afn, %bb.fu ], [ %i.aft, %bb.fv ], [ %spec.select1223, %bb.ck ], [ %spec.select1225, %bb.cm ], [ %i.lx, %bb.cp ], [ %i.me, %bb.cq ], [ %i.mr, %bb.ct ], [ %i.nd, %bb.cu ], [ %i.nx, %bb.cy ], [ %i.pn, %bb.cz ], [ %.21179, %bb.di ], [ %i.sd, %bb.dn ], [ %.6, %bb.dv ], [ %.9, %bb.ef ], [ %.11, %bb.en ], [ %i.hn, %bb.cg ], [ %i.vc, %bb.eq ], [ %i.xg, %bb.ew ], [ %.12, %bb.ez ], [ %.13, %bb.fc ], [ %.14, %bb.ff ], [ %i.ux, %bb.eo ], [ %i.aad, %bb.fi ], [ %i.aan, %bb.fj ], [ %i.aat, %bb.fk ], [ %i.aaw, %bb.fl ], [ %i.abz, %bb.fn ], [ %i.acj, %bb.fo ], [ %i.acy, %bb.fp ], [ %i.adb, %bb.fq ], [ %i.adu, %bb.fr ], [ %i.aei, %bb.fs ], [ %i.aew, %bb.ft ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.hn, %bb.cg ], [ %i.ux, %bb.ep ], [ %i.zl, %bb.fh ]
  %i.afx = add i32 %.41262, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.fy

bb.fy:                                            ; preds = %dnp3_al_empty_obj.exit, %bb.fx
  %.21260 = phi i32 [ %i.afx, %bb.fx ], [ %.41262, %dnp3_al_empty_obj.exit ]
  %.41194 = phi i8 [ %.31193, %bb.fx ], [ %.011901309, %dnp3_al_empty_obj.exit ]
  %.2 = phi i32 [ %.1, %bb.fx ], [ %i.hn, %dnp3_al_empty_obj.exit ] ; 2 uses
  %i.afy = icmp sgt i32 %i.fc, %.2
  br i1 %i.afy, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.afz = load ptr, ptr %i.b, align 8
  %i.aga = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.afz, ptr noundef @ei_dnp_invalid_length) ; 0 uses
  %i.agb = call i32 @tvb_captured_length(ptr noundef nonnull %0)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.3 = phi i32 [ %i.agb, %bb.fz ], [ %.2, %bb.fy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.agc = add nuw nsw i32 %.011831311, 1         ; 2 uses
  %i.agd = icmp slt i32 %i.agc, %.21188
  br i1 %i.agd, label %bb.aj, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.ga, %.thread1342, %bb.ai
  %.4 = phi i32 [ %i.fc, %bb.ai ], [ %i.ew, %.thread1342 ], [ %.3, %bb.ga ] ; 2 uses
  %i.age = sub i32 %.4, %2
  call void @proto_item_set_len(ptr noundef %.01184, i32 noundef %i.age)
  br label %bb.gb

bb.gb:                                            ; preds = %.loopexit, %bb.ah
  %.0 = phi i32 [ %i.fa, %bb.ah ], [ %.4, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare float @tvb_get_letohieee_float(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare double @tvb_get_letohieee_double(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dnp3_al_obj_quality(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 6) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.972)
  %i.b = load i32, ptr @ett_dnp3_al_obj_quality, align 4
  %i.c = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef @.str.973) ; 9 uses
  %i.d = zext i8 %2 to i32                        ; 10 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8
  %.str.974..str.199 = select i1 %.not, ptr @.str.974, ptr @.str.199 ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef %.str.974..str.199)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.f, ptr noundef @.str.897, ptr noundef %.str.974..str.199)
  %i.g = and i32 %i.d, 2
  %.not69 = icmp eq i32 %i.g, 0
  br i1 %.not69, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.975)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef @.str.897, ptr noundef @.str.975)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i32 %i.d, 4
  %.not70 = icmp eq i32 %i.i, 0
  br i1 %.not70, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.976)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef @.str.897, ptr noundef @.str.976)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = and i32 %i.d, 8
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.977)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef @.str.897, ptr noundef @.str.977)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = and i32 %i.d, 16
  %.not72 = icmp eq i32 %i.m, 0
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.978)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.n, ptr noundef @.str.897, ptr noundef @.str.978)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  switch i32 %5, label %default.unreachable82 [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.s
    i32 5, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.o = and i32 %i.d, 32
  %.not77 = icmp eq i32 %i.o, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.979)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef @.str.897, ptr noundef @.str.979)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = icmp eq i32 %5, 0                        ; 2 uses
  %i.r = load i32, ptr @hf_dnp3_al_biq_b7, align 4
  %spec.select = select i1 %i.q, ptr @hf_dnp3_al_biq_b6, ptr @hf_dnp3_al_2bit
  %spec.select80 = select i1 %i.q, i32 %i.r, i32 0
  br label %bb.y

bb.m:                                             ; preds = %bb.i
  %i.s = load i32, ptr @hf_dnp3_al_boq_b7, align 4
  br label %bb.y

bb.n:                                             ; preds = %bb.i
  %i.t = and i32 %i.d, 32
  %.not75 = icmp eq i32 %i.t, 0
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.980)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef @.str.897, ptr noundef @.str.980)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.v = and i32 %i.d, 64
  %.not76 = icmp eq i32 %i.v, 0
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.897, ptr noundef @.str.981)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.w, ptr noundef @.str.897, ptr noundef @.str.981)
end_hunk_1
