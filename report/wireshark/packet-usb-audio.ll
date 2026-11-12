Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-usb-audio?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
begin_hunk_0_@dissect_ms_if_midi_out_body:bb.a
  %i.d = load i32, ptr @hf_ms_if_midi_out_bjackid, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.f = load i32, ptr @hf_ms_if_midi_out_bnrinputpins, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %.pr = load i8, ptr %i.a, align 1
  %.not1 = icmp eq i8 %.pr, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi i32 [ %i.m, %.lr.ph ], [ 6, %bb.a ]  ; 3 uses
  %i.h = load i32, ptr @hf_ms_if_midi_out_basourceid, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %.02, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.j = or disjoint i32 %.02, 1
  %i.k = load i32, ptr @hf_ms_if_midi_out_basourcepin, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = add i32 %.02, 2                          ; 2 uses
  %i.n = load i8, ptr %i.a, align 1
  %i.o = add i8 %i.n, -1                          ; 2 uses
  store i8 %i.o, ptr %i.a, align 1
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 6, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = load i32, ptr @hf_ms_if_midi_out_ijack, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %.0.lcssa, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.r = add i32 %.0.lcssa, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_ms_if_midi_element_body(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = load i32, ptr @hf_ms_if_midi_element_belementid, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ms_if_midi_element_bnrinputpins, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %.pr = load i8, ptr %i.a, align 1
  %.not5 = icmp eq i8 %.pr, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0556 = phi i32 [ %i.l, %.lr.ph ], [ 5, %bb.a ] ; 3 uses
  %i.g = load i32, ptr @hf_ms_if_midi_element_basourceid, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %.0556, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = add i32 %.0556, 1
  %i.j = load i32, ptr @hf_ms_if_midi_element_basourcepin, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.l = add i32 %.0556, 2                        ; 2 uses
  %i.m = load i8, ptr %i.a, align 1
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.a, align 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i32 [ 5, %bb.a ], [ %i.l, %.lr.ph ] ; 7 uses
  %i.o = load i32, ptr @hf_ms_if_midi_element_bnroutputpins, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.o, ptr noundef %0, i32 noundef %.055.lcssa, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.q = add i32 %.055.lcssa, 1
  %i.r = load i32, ptr @hf_ms_if_midi_element_binterminallink, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.t = add i32 %.055.lcssa, 2
  %i.u = load i32, ptr @hf_ms_if_midi_element_boutterminallink, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.w = add i32 %.055.lcssa, 3
  %i.x = load i32, ptr @hf_ms_if_midi_element_belcapssize, align 4
  %i.y = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.z = add i32 %.055.lcssa, 4                   ; 3 uses
  %i.aa = load i32, ptr %i.b, align 4             ; 2 uses
  %.not57 = icmp eq i32 %i.aa, 0
  br i1 %.not57, label %._crit_edge10, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i32, ptr @hf_ms_if_midi_element_caps, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef 0) ; 2 uses
  %i.ad = load i32, ptr @ett_ms_if_midi_element_caps1, align 4
  %i.ae = call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.ad)
  %i.af = load i32, ptr @hf_ms_if_midi_element_cap1, align 4
  %i.ag = load i32, ptr @ett_ms_if_midi_element_caps1, align 4
  %i.ah = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef @dissect_ms_if_midi_element_body.el_caps_1, i32 noundef -2147483648) ; 0 uses
  %i.ai = add i32 %.055.lcssa, 5                  ; 2 uses
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.b, align 4
  %.not58 = icmp eq i32 %i.ak, 0
  br i1 %.not58, label %._crit_edge10, label %.thread

.thread:                                          ; preds = %bb.b
  %i.al = load i32, ptr @ett_ms_if_midi_element_caps2, align 4
  %i.am = call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.al)
  %i.an = load i32, ptr @hf_ms_if_midi_element_cap2, align 4
  %i.ao = load i32, ptr @ett_ms_if_midi_element_caps2, align 4
  %i.ap = call ptr @proto_tree_add_bitmask(ptr noundef %i.am, ptr noundef %0, i32 noundef %i.ai, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef @dissect_ms_if_midi_element_body.el_caps_2, i32 noundef -2147483648) ; 0 uses
  %i.aq = add i32 %.055.lcssa, 6                  ; 2 uses
  %i.ar = load i32, ptr %i.b, align 4
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.b, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.thread, %.lr.ph9
  %.38 = phi i32 [ %i.aw, %.lr.ph9 ], [ %i.aq, %.thread ] ; 2 uses
  %i.au = load i32, ptr @hf_ms_if_midi_element_cap3_rsv, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.au, ptr noundef %0, i32 noundef %.38, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.aw = add i32 %.38, 1                         ; 2 uses
  %i.ax = load i32, ptr %i.b, align 4
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4
  %.not59 = icmp eq i32 %i.ay, 0
  br i1 %.not59, label %._crit_edge10, label %.lr.ph9, !llvm.loop !23

._crit_edge10:                                    ; preds = %.lr.ph9, %._crit_edge, %bb.b, %.thread
  %.3.lcssa = phi i32 [ %i.aq, %.thread ], [ %i.ai, %bb.b ], [ %i.z, %._crit_edge ], [ %i.aw, %.lr.ph9 ] ; 2 uses
  %i.az = load i32, ptr @hf_ms_if_midi_element_ielement, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.az, ptr noundef %0, i32 noundef %.3.lcssa, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bb = add i32 %.3.lcssa, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.bb
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_ms_ep_general_body(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr @hf_ms_ep_gen_numjacks, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %.pr = load i8, ptr %i.a, align 1
  %.not1 = icmp eq i8 %.pr, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi i32 [ %i.f, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %i.d = load i32, ptr @hf_ms_ep_gen_baassocjackid, align 4
  %i.e = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %.02, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.f = add i32 %.02, 1
  %i.g = load i8, ptr %i.a, align 1
  %i.h = add i8 %i.g, -1                          ; 2 uses
  store i8 %i.h, ptr %i.a, align 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = add i32 %.02, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_prepend_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_v1_control(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %3, i64 32         ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 28
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 31
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.b, label %get_addressed_entity_type.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 32
  %4 = load i16, ptr %i.i, align 4
  %5 = lshr i16 %4, 8
  %6 = zext nneg i16 %5 to i64
  %i.j = getelementptr i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %get_addressed_entity_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val.i, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %.not6.i.i = icmp eq i32 %i.n, 2
  br i1 %.not6.i.i, label %bb.d, label %get_addressed_entity_type.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr [4 x i8], ptr %i.l, i64 %6
  %i.p = load i32, ptr %i.o, align 4
  br label %get_addressed_entity_type.exit

get_addressed_entity_type.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.q = getelementptr i8, ptr %i.d, i64 29
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = tail call ptr @try_val_to_str_ext(i32 noundef %i.s, ptr noundef @v1_brequest_vals_ext) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %get_addressed_entity_type.exit
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @col_set_str(ptr noundef %i.v, i32 noundef 25, ptr noundef nonnull %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %get_addressed_entity_type.exit
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 30
  %7 = load i16, ptr %i.x, align 2
  %8 = lshr i16 %7, 8                             ; 2 uses
  %9 = zext nneg i16 %8 to i32
  switch i32 %.0.i, label %.thread88 [
    i32 7, label %bb.g
    i32 8, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @col_append_str(ptr noundef %i.z, i32 noundef 25, ptr noundef @.str.882)
  br label %.thread88

bb.h:                                             ; preds = %bb.f
  store ptr @hf_wvalue_channel_number, ptr %i.a, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @hf_wvalue_fu_cs_v1, ptr %i.aa, align 8
  %trunc = trunc nuw i16 %8 to i8
  switch i8 %trunc, label %.fold.split [
    i8 1, label %bb.j
    i8 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

.fold.split:                                      ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.fold.split, %bb.i, %bb.h
  %.060.ph = phi ptr [ @.str.881, %.fold.split ], [ @.str.885, %bb.i ], [ @.str.884, %bb.h ] ; 2 uses
  %.not70.ph = phi i1 [ true, %.fold.split ], [ false, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.059.ph = phi ptr [ null, %.fold.split ], [ @hf_parameter_wvolume, %bb.i ], [ @hf_parameter_bmute, %bb.h ] ; 2 uses
  %.0.ph = phi i32 [ undef, %.fold.split ], [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.ab = tail call ptr @try_val_to_str(i32 noundef %9, ptr noundef @v1_fu_cs_vals) ; 2 uses
  %.not67 = icmp eq ptr %i.ab, null
  br i1 %.not67, label %.thread88, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ad, i32 noundef 25, ptr noundef @.str.886, ptr noundef nonnull %i.ab)
  br label %.thread88

.thread88:                                        ; preds = %bb.g, %bb.f, %bb.k, %bb.j
  %.not68 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ]
  %.0608097 = phi ptr [ %.060.ph, %bb.j ], [ %.060.ph, %bb.k ], [ @.str.883, %bb.g ], [ @.str.881, %bb.f ]
  %.not708296 = phi i1 [ %.not70.ph, %bb.j ], [ %.not70.ph, %bb.k ], [ false, %bb.g ], [ true, %bb.f ]
  %.0598495 = phi ptr [ %.059.ph, %bb.j ], [ %.059.ph, %bb.k ], [ @hf_parameter_bselector, %bb.g ], [ null, %bb.f ]
  %.08694 = phi i32 [ %.0.ph, %bb.j ], [ %.0.ph, %bb.k ], [ 1, %bb.g ], [ undef, %bb.f ] ; 2 uses
  %i.ae = getelementptr i8, ptr %3, i64 20        ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.r

bb.l:                                             ; preds = %.thread88
  %i.ah = load i32, ptr @hf_brequest_v1, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.aj = load i32, ptr @hf_wvalue, align 4       ; 2 uses
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr @ett_wvalue, align 4
  %i.al = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.a, i32 noundef -2147483648) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648)
  %.not69 = icmp eq i32 %.0.i, 7
  br i1 %.not69, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.am, ptr noundef @ei_usb_audio_undecoded) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.val = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr i8, ptr %.val, i64 28
  %.val.val = load i8, ptr %i.ao, align 4
  %i.ap = and i8 %.val.val, 31
  switch i8 %i.ap, label %dissect_windex_and_wlength.exit [
    i8 1, label %.sink.split.i
    i8 2, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.p
  %dissect_windex_and_wlength.windex_endpoint.sink.i = phi ptr [ @dissect_windex_and_wlength.windex_endpoint, %bb.q ], [ @dissect_windex_and_wlength.windex_interface, %bb.p ]
  %i.aq = load i32, ptr @hf_windex, align 4
  %i.ar = load i32, ptr @ett_windex, align 4
  %i.as = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 3, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull %dissect_windex_and_wlength.windex_endpoint.sink.i, i32 noundef -2147483648) ; 0 uses
  br label %dissect_windex_and_wlength.exit

dissect_windex_and_wlength.exit:                  ; preds = %bb.p, %.sink.split.i
  %i.at = load i32, ptr @hf_wlength, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %dissect_windex_and_wlength.exit, %.thread88
  %.062 = phi i32 [ 7, %dissect_windex_and_wlength.exit ], [ 0, %.thread88 ] ; 6 uses
  %i.av = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 34
  %i.ax = load i16, ptr %i.aw, align 2
  %.not.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i, label %has_data_stage.exit.thread, label %has_data_stage.exit

has_data_stage.exit:                              ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.av, i64 28
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, -128
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i8, ptr %i.ae, align 4, !range !6, !noundef !7
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bd, i32 0, i32 128
  %i.bf = icmp eq i32 %i.be, %i.bb
  br i1 %i.bf, label %bb.s, label %has_data_stage.exit.thread

bb.s:                                             ; preds = %has_data_stage.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bg = load i32, ptr @ett_parameter_block, align 4
  %i.bh = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.062, i32 noundef -1, i32 noundef %i.bg, ptr noundef nonnull %i.b, ptr noundef %.0608097)
  br i1 %.not708296, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %.0598495, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %0, i32 noundef %.062, i32 noundef %.08694, i32 noundef -2147483648) ; 0 uses
  %i.bk = add i32 %.062, %.08694
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %i.bk, %bb.t ], [ %.062, %bb.s ] ; 4 uses
  %i.bl = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.1)
  %.not71 = icmp eq i32 %i.bl, 0
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bm, ptr noundef @ei_usb_audio_undecoded) ; 0 uses
  %i.bo = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.1)
  %i.bp = add i32 %i.bo, %.1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2 = phi i32 [ %i.bp, %bb.v ], [ %.1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %has_data_stage.exit.thread

has_data_stage.exit.thread:                       ; preds = %bb.r, %bb.w, %has_data_stage.exit
  %.3 = phi i32 [ %.2, %bb.w ], [ %.062, %has_data_stage.exit ], [ %.062, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_v2_control(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr i8, ptr %3, i64 32         ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 29
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = tail call ptr @try_val_to_str_ext(i32 noundef %i.h, ptr noundef @v2_brequest_vals_ext) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.k, i32 noundef 25, ptr noundef @.str.886, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %3, i64 20         ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @hf_brequest_v2, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]        ; 6 uses
  %i.q = add i8 %i.g, -1
  %or.cond = icmp ult i8 %i.q, 2
  br i1 %or.cond, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 28
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 31
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %bb.g, label %get_addressed_entity_type.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.r, i64 32
  %4 = load i16, ptr %i.w, align 4
  %5 = lshr i16 %4, 8
  %6 = zext nneg i16 %5 to i64
  %i.x = getelementptr i8, ptr %3, i64 40
  %.val.i.i = load ptr, ptr %i.x, align 8         ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %get_addressed_entity_type.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.val.i.i, i64 40
  %i.ab = load i32, ptr %i.aa, align 8
  %.not6.i.i.i = icmp eq i32 %i.ab, 2
  br i1 %.not6.i.i.i, label %get_addressed_entity_type.exit.i, label %get_addressed_entity_type.exit.thread.i

get_addressed_entity_type.exit.thread.i:          ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef align 16 dereferenceable(24) @__const.dissect_v2_control_cur_range.wvalue_fields, i64 24, i1 false)
  br label %.thread137.i

get_addressed_entity_type.exit.i:                 ; preds = %bb.h
  %i.ac = getelementptr [4 x i8], ptr %i.z, i64 %6
  %i.ad = load i32, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef align 16 dereferenceable(24) @__const.dissect_v2_control_cur_range.wvalue_fields, i64 24, i1 false)
  %i.ae = getelementptr i8, ptr %i.r, i64 30
  %i.af = load i16, ptr %i.ae, align 2            ; 4 uses
  %i.ag = lshr i16 %i.af, 8                       ; 5 uses
  %i.ah = zext nneg i16 %i.ag to i32
  switch i32 %i.ad, label %.thread137.i [
    i32 1, label %bb.i
    i32 2, label %bb.o
    i32 3, label %bb.r
  ]

bb.i:                                             ; preds = %get_addressed_entity_type.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @hf_wvalue_interface_cs, ptr %i.ai, align 8
  %i.aj = and i16 %i.af, 255
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.r, i64 29
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %trunc.i = trunc nuw i16 %i.ag to i8
  switch i8 %trunc.i, label %bb.t [
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  br label %bb.t

bb.n:                                             ; preds = %bb.k
  br label %bb.t

bb.o:                                             ; preds = %get_addressed_entity_type.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @hf_wvalue_clksrc_cs, ptr %i.ao, align 8
  %i.ap = icmp eq i16 %i.ag, 1
  %.mask117.i = and i16 %i.af, 255
  %i.aq = icmp eq i16 %.mask117.i, 0
  %or.cond.i = and i1 %i.ap, %i.aq
  br i1 %or.cond.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp eq i16 %i.ag, 2
  br i1 %i.ar, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br label %bb.t

bb.r:                                             ; preds = %get_addressed_entity_type.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @hf_wvalue_clksel_cs, ptr %i.as, align 8
  %i.at = icmp eq i16 %i.ag, 1
  %.mask.i = and i16 %i.af, 255
  %i.au = icmp eq i16 %.mask.i, 0
  %or.cond5.i = and i1 %i.at, %i.au
  br i1 %or.cond5.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0112.ph.i = phi ptr [ @v2_clksrc_cs_vals, %bb.o ], [ @v2_clksel_cs_vals, %bb.s ], [ @v2_clksrc_cs_vals, %bb.p ], [ @v2_clksrc_cs_vals, %bb.q ], [ @v2_clksel_cs_vals, %bb.r ], [ @v2_interface_cs_vals, %bb.i ], [ @v2_interface_cs_vals, %bb.j ], [ @v2_interface_cs_vals, %bb.n ], [ @v2_interface_cs_vals, %bb.m ], [ @v2_interface_cs_vals, %bb.l ], [ @v2_interface_cs_vals, %bb.k ]
  %.ph.i = phi i1 [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.n ], [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ] ; 2 uses
  %.0111.ph.i = phi i32 [ 3, %bb.o ], [ 1, %bb.s ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %bb.r ], [ 0, %bb.i ], [ 0, %bb.j ], [ 3, %bb.n ], [ 4, %bb.m ], [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.not120.ph.i = phi i1 [ false, %bb.o ], [ false, %bb.s ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.n ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %.0110.ph.i = phi ptr [ @.str.889, %bb.o ], [ @.str.891, %bb.s ], [ null, %bb.p ], [ @.str.890, %bb.q ], [ null, %bb.r ], [ null, %bb.i ], [ null, %bb.j ], [ @.str.888, %bb.n ], [ null, %bb.m ], [ @.str.887, %bb.l ], [ null, %bb.k ] ; 2 uses
  %i.av = tail call ptr @try_val_to_str(i32 noundef %i.ah, ptr noundef nonnull %.0112.ph.i) ; 2 uses
  %.not119.i = icmp eq ptr %i.av, null
  br i1 %.not119.i, label %.thread137.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ax, i32 noundef 25, ptr noundef @.str.886, ptr noundef nonnull %i.av)
  br label %.thread137.i

.thread137.i:                                     ; preds = %bb.u, %bb.t, %get_addressed_entity_type.exit.i, %get_addressed_entity_type.exit.thread.i
  %i.ay = phi i1 [ %.ph.i, %bb.t ], [ %.ph.i, %bb.u ], [ false, %get_addressed_entity_type.exit.thread.i ], [ false, %get_addressed_entity_type.exit.i ]
  %.0111131144.i = phi i32 [ %.0111.ph.i, %bb.t ], [ %.0111.ph.i, %bb.u ], [ 0, %get_addressed_entity_type.exit.thread.i ], [ 0, %get_addressed_entity_type.exit.i ]
  %.not120133143.i = phi i1 [ %.not120.ph.i, %bb.t ], [ %.not120.ph.i, %bb.u ], [ true, %get_addressed_entity_type.exit.thread.i ], [ true, %get_addressed_entity_type.exit.i ]
  %.0110135142.i = phi ptr [ %.0110.ph.i, %bb.t ], [ %.0110.ph.i, %bb.u ], [ null, %get_addressed_entity_type.exit.thread.i ], [ null, %get_addressed_entity_type.exit.i ]
  %i.az = load i8, ptr %i.l, align 4, !range !6, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.thread137.i
  %i.bb = load i32, ptr @hf_wvalue, align 4
  %i.bc = load i32, ptr @ett_wvalue, align 4
  %i.bd = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef range(i32 0, 2) %.0, i32 noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef -2147483648)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bd, ptr noundef @ei_usb_audio_undecoded) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bi = or disjoint i32 %.0, 2
  %.val.i = load ptr, ptr %i.d, align 8
  %i.bj = getelementptr i8, ptr %.val.i, i64 28
  %.val.val.i = load i8, ptr %i.bj, align 4
  %i.bk = and i8 %.val.val.i, 31
  switch i8 %i.bk, label %dissect_windex_and_wlength.exit.i [
    i8 1, label %.sink.split.i.i
    i8 2, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.y, %bb.x
  %dissect_windex_and_wlength.windex_endpoint.sink.i.i = phi ptr [ @dissect_windex_and_wlength.windex_endpoint, %bb.y ], [ @dissect_windex_and_wlength.windex_interface, %bb.x ]
  %i.bl = load i32, ptr @hf_windex, align 4
  %i.bm = load i32, ptr @ett_windex, align 4
  %i.bn = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef range(i32 2, 4) %i.bi, i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef nonnull %dissect_windex_and_wlength.windex_endpoint.sink.i.i, i32 noundef -2147483648) ; 0 uses
  br label %dissect_windex_and_wlength.exit.i

dissect_windex_and_wlength.exit.i:                ; preds = %.sink.split.i.i, %bb.x
  %i.bo = or disjoint i32 %.0, 4
  %i.bp = load i32, ptr @hf_wlength, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.br = or disjoint i32 %.0, 6
  br label %bb.z

bb.z:                                             ; preds = %dissect_windex_and_wlength.exit.i, %.thread137.i
  %.0113.i = phi i32 [ %i.br, %dissect_windex_and_wlength.exit.i ], [ %.0, %.thread137.i ] ; 11 uses
  %i.bs = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 34
  %i.bu = load i16, ptr %i.bt, align 2
  %.not.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i, label %dissect_v2_control_cur_range.exit, label %has_data_stage.exit.i

has_data_stage.exit.i:                            ; preds = %bb.z
  %i.bv = getelementptr i8, ptr %i.bs, i64 28
  %i.bw = load i8, ptr %i.bv, align 4
  %i.bx = and i8 %i.bw, -128
  %i.by = zext i8 %i.bx to i32
  %i.bz = load i8, ptr %i.l, align 4, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.ca, i32 0, i32 128
  %i.cc = icmp eq i32 %i.cb, %i.by
  br i1 %i.cc, label %bb.aa, label %dissect_v2_control_cur_range.exit

bb.aa:                                            ; preds = %has_data_stage.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  switch i32 %.0111131144.i, label %bb.ae [
    i32 1, label %bb.ab
    i32 4, label %bb.ad
    i32 3, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i32, ptr @hf_parameter_bcur, align 4
  %i.ce = load i32, ptr @hf_parameter_bmin, align 4
  %i.cf = load i32, ptr @hf_parameter_bmax, align 4
  %i.cg = load i32, ptr @hf_parameter_bres, align 4
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.ch = load i32, ptr @hf_parameter_dcur, align 4
  %i.ci = load i32, ptr @hf_parameter_dmin, align 4
  %i.cj = load i32, ptr @hf_parameter_dmax, align 4
  %i.ck = load i32, ptr @hf_parameter_dres, align 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.cl = load i32, ptr @hf_parameter_bcontrolsize, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0109.i = phi ptr [ @.str.894, %bb.ac ], [ @.str.892, %bb.ab ], [ @.str.895, %bb.ad ], [ @.str.896, %bb.aa ]
  %.not121.i = phi i1 [ false, %bb.ac ], [ false, %bb.ab ], [ true, %bb.ad ], [ true, %bb.aa ] ; 2 uses
  %.0108.i = phi i32 [ 4, %bb.ac ], [ 1, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.aa ] ; 10 uses
  %.0107.i = phi i32 [ %i.ch, %bb.ac ], [ %i.cd, %bb.ab ], [ %i.cl, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %.0106.i = phi i32 [ %i.ci, %bb.ac ], [ %i.ce, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.0105.i = phi i32 [ %i.cj, %bb.ac ], [ %i.cf, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.0104.i = phi i32 [ %i.ck, %bb.ac ], [ %i.cg, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %i.cm = load i32, ptr @ett_parameter_block, align 4
  %i.cn = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0113.i, i32 noundef -1, i32 noundef %i.cm, ptr noundef nonnull %i.b, ptr noundef nonnull %.0109.i) ; 7 uses
  br i1 %.not120133143.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.co, ptr noundef @.str.858, ptr noundef %.0110135142.i)
  br label %bb.ag

end_hunk_0
