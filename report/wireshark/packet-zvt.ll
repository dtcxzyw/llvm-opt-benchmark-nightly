Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-zvt?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_zvt_expiry_date:bb.a
  %i.i = getelementptr i8, ptr %i.e, i64 1
  store i8 %i.h, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.e, i64 2
  store i8 47, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %i.c, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.e, i64 3
  store i8 %i.l, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %i.c, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %i.e, i64 4
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.e, i64 5
  store i8 0, ptr %i.q, align 1
  %i.r = load i32, ptr @hf_zvt_expiry_date, align 4
  %i.s = tail call ptr @proto_tree_add_string(ptr noundef %3, i32 noundef %i.r, ptr noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef %i.e) ; 0 uses
  ret i32 2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 168) i32 @dissect_zvt_card_number(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.b = and i8 %i.a, 15
  %i.c = add i32 %1, 1
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.c)
  %i.e = and i8 %i.d, 15
  %narrow = mul nuw i8 %i.b, 10
  %i.f = add nuw i8 %narrow, %i.e
  %i.g = load i32, ptr @hf_zvt_card_number, align 4
  %i.h = add i32 %1, 2
  %i.i = zext i8 %i.f to i32                      ; 2 uses
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 68) ; 0 uses
  %i.k = add nuw nsw i32 %i.i, 2
  ret i32 %i.k
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_res_code(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_res_code, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i32 1
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_terminal_id(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_terminal_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 68) ; 0 uses
  ret i32 4
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal range(i32 3, 1669) i32 @dissect_zvt_additional_data(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.c = and i8 %i.b, 15
  %i.d = add i32 %1, 1
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d)
  %i.f = and i8 %i.e, 15
  %i.g = add i32 %1, 2
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.c to i32
  %i.k = mul nuw nsw i32 %i.j, 100
  %narrow = mul nuw i8 %i.f, 10
  %i.l = zext i8 %narrow to i32
  %i.m = add nuw nsw i32 %i.k, %i.l
  %i.n = zext nneg i8 %i.i to i32
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.p = load i32, ptr @hf_zvt_additional_data, align 4
  %i.q = add i32 %1, 3
  %i.r = getelementptr i8, ptr %2, i64 416
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr @proto_tree_add_item_ret_string(ptr noundef %3, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.o, i32 noundef 0, ptr noundef %i.s, ptr noundef nonnull %i.a) ; 0 uses
  %i.u = add nuw nsw i32 %i.o, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.u
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_card_type(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_card_type, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i32 1
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 168) i32 @dissect_zvt_card_name(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.c = and i8 %i.b, 15
  %i.d = add i32 %1, 1
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d)
  %i.f = and i8 %i.e, 15
  %narrow = mul nuw i8 %i.c, 10
  %i.g = add nuw i8 %narrow, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.h = load i32, ptr @hf_zvt_card_name, align 4
  %i.i = add i32 %1, 2
  %i.j = zext i8 %i.g to i32                      ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call ptr @proto_tree_add_item_ret_string(ptr noundef %3, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 0, ptr noundef %i.l, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = add nuw nsw i32 %i.j, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.n
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bcd_dig_to_str_be(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @g_ascii_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_zvt_tlv_seq(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 416
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @wmem_alloc(ptr noundef %i.c, i64 noundef 4) #8 ; 2 uses
  store i32 50, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi ptr [ %5, %bb.a ], [ %i.d, %bb.b ]
  %i.e = zext i16 %2 to i32
  %.not71 = icmp eq i16 %2, 0
  br i1 %.not71, label %dissect_zvt_tlv_tag.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.backedge
  %i.f = phi i32 [ %i.bv, %.backedge ], [ 0, %bb.c ] ; 2 uses
  %.04068 = phi i32 [ %.040.be, %.backedge ], [ %1, %bb.c ] ; 11 uses
  %.067 = phi i16 [ %.163, %.backedge ], [ 0, %bb.c ] ; 2 uses
  %i.g = load i32, ptr @ett_zvt_tlv_dat_obj, align 4
  %i.h = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %0, i32 noundef %.04068, i32 noundef -1, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.185) ; 3 uses
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.04068)
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = add i32 %.04068, 1                       ; 2 uses
  %i.l = and i32 %i.j, 31
  %i.m = icmp eq i32 %i.l, 31
  br i1 %i.m, label %.preheader.preheader.i, label %dissect_zvt_tlv_tag.exit

.preheader.preheader.i:                           ; preds = %.lr.ph
  %i.n = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.k) ; 2 uses
  %i.o = shl nuw nsw i32 %i.j, 8
  %i.p = and i8 %i.n, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %i.o, %i.q               ; 2 uses
  %i.s = add i32 %.04068, 2                       ; 2 uses
  %.not.i = icmp sgt i8 %i.n, -1
  br i1 %.not.i, label %dissect_zvt_tlv_tag.exit, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.t = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.s) ; 2 uses
  %i.u = shl nuw nsw i32 %i.r, 8
  %i.v = and i8 %i.t, 127
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = add i32 %.04068, 3                       ; 2 uses
  %.not.1.i = icmp sgt i8 %i.t, -1
  br i1 %.not.1.i, label %dissect_zvt_tlv_tag.exit, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.y) ; 2 uses
  %i.aa = shl nuw i32 %i.x, 8
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = add i32 %.04068, 4                      ; 2 uses
  %.not.2.i = icmp sgt i8 %i.z, -1
  br i1 %.not.2.i, label %dissect_zvt_tlv_tag.exit, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.af = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ae) ; 2 uses
  %i.ag = shl i32 %i.ad, 8
  %i.ah = and i8 %i.af, 127
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = add i32 %.04068, 5
  %.not.3.i = icmp sgt i8 %i.af, -1
  br i1 %.not.3.i, label %dissect_zvt_tlv_tag.exit, label %dissect_zvt_tlv_tag.exit.thread

dissect_zvt_tlv_tag.exit:                         ; preds = %.lr.ph, %.preheader.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i
  %.136.i = phi i32 [ %i.j, %.lr.ph ], [ %i.r, %.preheader.preheader.i ], [ %i.x, %.preheader.1.i ], [ %i.ad, %.preheader.2.i ], [ %i.aj, %.preheader.3.i ] ; 4 uses
  %.1.i = phi i32 [ %i.k, %.lr.ph ], [ %i.s, %.preheader.preheader.i ], [ %i.y, %.preheader.1.i ], [ %i.ae, %.preheader.2.i ], [ %i.ak, %.preheader.3.i ] ; 7 uses
  %i.al = load i32, ptr @hf_zvt_tlv_tag, align 4
  %i.am = sub i32 %.1.i, %.04068                  ; 3 uses
  %i.an = call ptr @val_to_str_ext_const(i32 noundef %.136.i, ptr noundef nonnull @tlv_tags_ext, ptr noundef nonnull @.str.183)
  %i.ao = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.al, ptr noundef %0, i32 noundef %.04068, i32 noundef %i.am, i32 noundef %.136.i, ptr noundef nonnull @.str.186, ptr noundef %i.an, i32 noundef %.136.i)
  %i.ap = load i32, ptr @ett_zvt_tlv_tag, align 4
  %i.aq = call ptr @proto_item_add_subtree(ptr noundef %i.ao, i32 noundef %i.ap) ; 2 uses
  %i.ar = load i32, ptr @hf_zvt_tlv_tag_class, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.ar, ptr noundef %0, i32 noundef %.04068, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_zvt_tlv_tag_type, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.at, ptr noundef %0, i32 noundef %.04068, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = icmp slt i32 %i.am, 1
  br i1 %i.av, label %dissect_zvt_tlv_tag.exit.thread, label %bb.d

bb.d:                                             ; preds = %dissect_zvt_tlv_tag.exit
  %i.aw = load i32, ptr @hf_zvt_tlv_len, align 4
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1.i) ; 3 uses
  %i.ay = zext nneg i8 %i.ax to i16
  %.not.i51 = icmp sgt i8 %i.ax, -1
  br i1 %.not.i51, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = and i8 %i.ax, 3
  switch i8 %i.az, label %.dissect_zvt_tlv_len.exit_crit_edge [
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

.dissect_zvt_tlv_len.exit_crit_edge:              ; preds = %bb.e
  %.pre = zext i16 %.067 to i32
  br label %dissect_zvt_tlv_len.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = add i32 %.1.i, 1
  %i.bb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ba)
  %i.bc = zext i8 %i.bb to i16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = add i32 %.1.i, 1
  %i.be = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bd)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.021.i = phi i16 [ %i.bc, %bb.f ], [ %i.be, %bb.g ], [ %i.ay, %bb.d ] ; 2 uses
  %.0.i52 = phi i32 [ 2, %bb.f ], [ 3, %bb.g ], [ 1, %bb.d ] ; 3 uses
  %i.bf = zext i16 %.021.i to i32                 ; 2 uses
  %i.bg = call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.aw, ptr noundef %0, i32 noundef %.1.i, i32 noundef %.0.i52, i32 noundef %i.bf) ; 0 uses
  %i.bh = add i32 %.0.i52, %.1.i
  br label %dissect_zvt_tlv_len.exit

dissect_zvt_tlv_len.exit:                         ; preds = %.dissect_zvt_tlv_len.exit_crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre, %.dissect_zvt_tlv_len.exit_crit_edge ], [ %i.bf, %bb.h ] ; 3 uses
  %.022.i65 = phi i32 [ -1, %.dissect_zvt_tlv_len.exit_crit_edge ], [ %.0.i52, %bb.h ]
  %.163 = phi i16 [ %.067, %.dissect_zvt_tlv_len.exit_crit_edge ], [ %.021.i, %bb.h ] ; 2 uses
  %i.bi = phi i32 [ %.1.i, %.dissect_zvt_tlv_len.exit_crit_edge ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = add i32 %.022.i65, %i.am
  %i.bl = add nuw i32 %i.bk, %.pre-phi
  call void @proto_item_set_len(ptr noundef %i.bj, i32 noundef %i.bl)
  %i.bm = icmp eq i16 %.163, 0
  br i1 %i.bm, label %.backedge, label %bb.i

bb.i:                                             ; preds = %dissect_zvt_tlv_len.exit
  %i.bn = load ptr, ptr @tlv_table, align 8
  %i.bo = zext i32 %.136.i to i64
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = call ptr @g_hash_table_lookup(ptr noundef %i.bn, ptr noundef %i.bp) ; 2 uses
  %.not49 = icmp eq ptr %i.bq, null
  br i1 %.not49, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not50 = icmp eq ptr %i.bs, null
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = call i32 %i.bs(ptr noundef %0, i32 noundef %i.bi, i32 noundef %.pre-phi, ptr noundef %3, ptr noundef %i.h, ptr noundef %.041) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bu = add i32 %i.bi, %.pre-phi
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %dissect_zvt_tlv_len.exit
  %.040.be = phi i32 [ %i.bi, %dissect_zvt_tlv_len.exit ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bv = sub i32 %.040.be, %1                    ; 3 uses
  %i.bw = icmp slt i32 %i.bv, %i.e
  br i1 %i.bw, label %.lr.ph, label %dissect_zvt_tlv_tag.exit.thread, !llvm.loop !9

dissect_zvt_tlv_tag.exit.thread:                  ; preds = %dissect_zvt_tlv_tag.exit, %.backedge, %.preheader.3.i, %bb.c
  %.lcssa = phi i32 [ 0, %bb.c ], [ %i.f, %.preheader.3.i ], [ %i.bv, %.backedge ], [ %i.f, %dissect_zvt_tlv_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_text_lines(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_text_lines_line, align 4
  %i.b = load i32, ptr %5, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.b) ; 0 uses
  ret i32 %2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_zvt_tlv_subseq(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4 {
bb.a:
  %i.a = load i32, ptr @ett_zvt_tlv_subseq, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.188)
  %i.c = trunc i32 %2 to i16
  %i.d = tail call fastcc i32 @dissect_zvt_tlv_seq(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %i.c, ptr noundef %3, ptr noundef %i.b, ptr noundef %5)
  ret i32 %i.d
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_permitted_cmd(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_permitted_cmd, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) ; 0 uses
  ret i32 %2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_receipt_type(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_receipt_type, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) ; 0 uses
  ret i32 %2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_receipt_param(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_receipt_parameter, align 4
  %i.b = load i32, ptr @ett_zvt_tlv_receipt, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull @receipt_parameter_flag_fields, i32 noundef 0) ; 0 uses
  ret i32 %2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_characters_per_line(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_characters_per_line, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 68) ; 0 uses
  ret i32 %2
}

; Function Attrs: inlinehint null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_zvt_tlv_receipt_info(ptr noundef %0, i32 noundef %1, i32 noundef returned %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr @hf_zvt_receipt_info, align 4
  %i.b = load i32, ptr @ett_zvt_tlv_receipt, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull @receipt_info_fields, i32 noundef 0) ; 0 uses
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 65543) i32 @dissect_zvt_apdu(ptr noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %1, 2                    ; 3 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e) ; 2 uses
  %i.g = zext i8 %i.f to i16
  %i.h = icmp eq i8 %i.f, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i32 %1, 3
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0102 = phi i16 [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.0101 = phi i32 [ 3, %bb.c ], [ 1, %bb.b ]     ; 3 uses
  %i.k = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.l = add nuw nsw i32 %.0101, 2
  %i.m = zext i16 %.0102 to i32                   ; 5 uses
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = icmp ult i32 %i.k, %i.n
  br i1 %i.o, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr @ett_zvt_apdu, align 4
  %i.q = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef -1, i32 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.192) ; 8 uses
  %i.r = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  switch i8 %i.r, label %bb.l [
    i8 -124, label %bb.f
    i8 -128, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = icmp eq i8 %i.r, -128
  %i.t = load i32, ptr @hf_zvt_ccrc, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = getelementptr i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.s, ptr @.str.193, ptr @.str.194
  call void @col_append_sep_str(ptr noundef %i.w, i32 noundef 25, ptr noundef null, ptr noundef nonnull %i.x)
  %i.y = add nuw nsw i32 %1, 1
  %i.z = load i32, ptr @hf_zvt_aprc, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load ptr, ptr @transactions, align 8
  %i.ac = getelementptr i8, ptr %2, i64 20        ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = call ptr @wmem_tree_lookup32_le(ptr noundef %i.ab, i32 noundef %i.ad) ; 7 uses
  %.not114 = icmp eq ptr %i.ae, null
  br i1 %.not114, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %.pre = load i32, ptr %i.ac, align 4            ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  store i32 %.pre, ptr %i.af, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %i.ag, %.pre
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = load i32, ptr @hf_zvt_resp_to, align 4
  %i.ak = load i32, ptr %i.ae, align 4
  %i.al = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.aj, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.ak) ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.an, null
  br i1 %.not5.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.an, i64 28     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, 2
  store i32 %i.aq, ptr %i.ao, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @hf_zvt_ctrl, align 4
  %i.as = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.q, i32 noundef %i.ar, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.at = getelementptr i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %2, i64 416
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i16, ptr %i.a, align 2
  %i.ay = zext i16 %i.ax to i32
  %i.az = call ptr @val_to_str(ptr noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull @ctrl_field, ptr noundef nonnull @.str.195)
  call void @col_append_sep_str(ptr noundef %i.au, i32 noundef 25, ptr noundef null, ptr noundef %i.az)
  %i.ba = getelementptr i8, ptr %2, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 53
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = and i16 %i.bd, 8
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr @transactions, align 8
  %i.bg = getelementptr i8, ptr %2, i64 20        ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = call ptr @wmem_tree_lookup32(ptr noundef %i.bf, i32 noundef %i.bh) ; 8 uses
  %.not112 = icmp eq ptr %i.bi, null
  br i1 %.not112, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load i32, ptr %i.bg, align 4
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %i.bi, i64 4
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %.not113 = icmp eq i32 %i.bn, 0
  br i1 %.not113, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr @hf_zvt_resp_in, align 4
  %i.bp = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.bo, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.bn) ; 2 uses
  %.not.i119 = icmp eq ptr %i.bp, null
  br i1 %.not.i119, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not5.i120 = icmp eq ptr %i.br, null
  br i1 %.not5.i120, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr i8, ptr %i.br, i64 28     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = or i32 %i.bt, 2
  store i32 %i.bu, ptr %i.bs, align 4
  br label %.critedge

bb.s:                                             ; preds = %bb.l
  %i.bv = call ptr @wmem_file_scope()
  %i.bw = call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.bv, i64 noundef 12) #8 ; 5 uses
  %i.bx = getelementptr i8, ptr %2, i64 20
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  store i32 0, ptr %i.bz, align 4
  %i.ca = load i16, ptr %i.a, align 2
  %i.cb = getelementptr i8, ptr %i.bw, i64 8
  store i16 %i.ca, ptr %i.cb, align 4
  %i.cc = load ptr, ptr @transactions, align 8
  call void @wmem_tree_insert32(ptr noundef %i.cc, i32 noundef %i.by, ptr noundef %i.bw)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %bb.f, %bb.s, %bb.o, %bb.n, %bb.m, %bb.h
  %.0 = phi ptr [ %i.bw, %bb.s ], [ %i.ae, %bb.h ], [ null, %bb.f ], [ %i.ae, %bb.k ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ], [ null, %bb.m ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ], [ %i.bi, %bb.p ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ] ; 5 uses
  %i.cd = load ptr, ptr @apdu_table, align 8
  %i.ce = load i16, ptr %i.a, align 2
  %i.cf = zext i16 %i.ce to i64
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = call ptr @g_hash_table_lookup(ptr noundef %i.cd, ptr noundef %i.cg) ; 3 uses
  %i.ci = load i32, ptr @hf_zvt_len, align 4
  %i.cj = call ptr @proto_tree_add_uint(ptr noundef %i.q, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.e, i32 noundef %.0101, i32 noundef %i.m)
  %.not115 = icmp eq ptr %i.ch, null              ; 2 uses
  br i1 %.not115, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i32, ptr %i.ck, align 4            ; 3 uses
  %.not116 = icmp ne i32 %i.cl, -1
  %i.cm = icmp ugt i32 %i.cl, %i.m
  %or.cond = and i1 %.not116, %i.cm
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.cj, ptr noundef nonnull @ei_invalid_apdu_len, ptr noundef nonnull @.str.196, i32 noundef %i.cl) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.critedge
  %i.co = add nuw nsw i32 %.0101, %i.e            ; 3 uses
  %.not.i122 = icmp eq ptr %.0, null
  br i1 %.not.i122, label %zvt_set_addresses.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr @apdu_table, align 8
  %i.cq = getelementptr i8, ptr %.0, i64 8
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = zext i16 %i.cr to i64
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = call ptr @g_hash_table_lookup(ptr noundef %i.cp, ptr noundef %i.ct) ; 3 uses
  %.not17.i = icmp eq ptr %i.cu, null
  br i1 %.not17.i, label %zvt_set_addresses.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load i32, ptr %.0, align 4
  %i.cw = getelementptr i8, ptr %2, i64 20
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr i8, ptr %.0, i64 4
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %bb.z, label %zvt_set_addresses.exit

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr i8, ptr %i.cu, i64 8
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %.thread21.i, label %.thread.sink.split.i

bb.aa:                                            ; preds = %bb.x
  %i.df = getelementptr i8, ptr %i.cu, i64 8
  %i.dg = load i32, ptr %i.df, align 8
  switch i32 %i.dg, label %zvt_set_addresses.exit [
    i32 1, label %.thread.sink.split.i
    i32 2, label %.thread21.i
  ]

.thread21.i:                                      ; preds = %bb.aa, %bb.z
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %.thread21.i, %bb.aa, %bb.z
  %.sink29.i = phi i32 [ 3, %.thread21.i ], [ 4, %bb.z ], [ 4, %bb.aa ]
  %.str.197.sink.i = phi ptr [ @.str.198, %.thread21.i ], [ @.str.197, %bb.z ], [ @.str.197, %bb.aa ]
  %.sink.i = phi i32 [ 4, %.thread21.i ], [ 3, %bb.z ], [ 3, %bb.aa ]
  %.str.198.sink.i = phi ptr [ @.str.197, %.thread21.i ], [ @.str.198, %bb.z ], [ @.str.198, %bb.aa ]
  %i.dh = getelementptr i8, ptr %2, i64 208
  store i32 7, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %2, i64 212
  store i32 %.sink29.i, ptr %i.di, align 4
  %i.dj = getelementptr i8, ptr %2, i64 216
  store ptr %.str.197.sink.i, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %2, i64 224
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %2, i64 232
  store i32 7, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %2, i64 236
  store i32 %.sink.i, ptr %i.dm, align 4
  %i.dn = getelementptr i8, ptr %2, i64 240
  store ptr %.str.198.sink.i, ptr %i.dn, align 8
  %i.do = getelementptr i8, ptr %2, i64 248
  store ptr null, ptr %i.do, align 8
  br label %zvt_set_addresses.exit

zvt_set_addresses.exit:                           ; preds = %bb.v, %bb.w, %bb.y, %bb.aa, %.thread.sink.split.i
  %.not117 = icmp eq i16 %.0102, 0
  br i1 %.not117, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %zvt_set_addresses.exit
  br i1 %.not115, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr i8, ptr %i.ch, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not118 = icmp eq ptr %i.dq, null
  br i1 %.not118, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void %i.dq(ptr noundef %0, i32 noundef %i.co, i16 noundef zeroext %.0102, ptr noundef %2, ptr noundef %i.q, ptr noundef %.0)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dr = load i32, ptr @hf_zvt_data, align 4
  %i.ds = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.dr, ptr noundef %0, i32 noundef %i.co, i32 noundef %i.m, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %zvt_set_addresses.exit
  %i.dt = load ptr, ptr %i.b, align 8
  %4 = sub nsw i32 %i.m, %1
  %5 = add nsw i32 %4, %i.co                      ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.dt, i32 noundef %5)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.d, %bb.a, %bb.af
  %.099.a = phi i32 [ %5, %bb.af ], [ -1, %bb.a ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.099.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65541) i32 @get_zvt_message_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 2
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.a) ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @tvb_captured_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.e = icmp ugt i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %2, 3
  %i.g = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.f)
  %i.h = zext i16 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 5
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = zext i8 %i.b to i32
  %i.k = add nuw nsw i32 %i.j, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{null}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
end_hunk_0
