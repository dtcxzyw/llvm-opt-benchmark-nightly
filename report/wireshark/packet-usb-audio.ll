inline.NumInlined: 22
inline.NumDeleted: 13
begin_hunk_0_@base_volume:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.850) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i32 %1 to i16
  %i.d = sitofp i16 %i.c to double
  %i.e = fmul nnan double %i.d, 3.906250e-03
  %i.f = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.851, double noundef %i.e) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

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
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_usb_audio_bulk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #1 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 40         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.646)
  %i.g = tail call i32 @tvb_reported_length(ptr noundef %0) ; 6 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 6
  %i.j = load i16, ptr %i.i, align 2
  %cond = icmp eq i16 %i.j, 3
  br i1 %cond, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 25, ptr noundef nonnull @.str.852)
  %i.l = sdiv i32 %i.g, 4
  %i.m = icmp sgt i32 %i.g, 3
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %.not.i = icmp eq ptr %2, null
  %i.n = getelementptr i8, ptr %1, i64 272        ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %dissect_usb_midi_event.exit
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %dissect_usb_midi_event.exit ]
  %.02124 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %dissect_usb_midi_event.exit ] ; 11 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02124) ; 3 uses
  %i.p = lshr i8 %i.o, 4                          ; 2 uses
  %i.q = and i8 %i.o, 15                          ; 4 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr @proto_usb_audio, align 4
  %i.s = zext nneg i8 %i.q to i32
  %i.t = tail call ptr @try_val_to_str(i32 noundef %i.s, ptr noundef nonnull @code_index_vals)
  %i.u = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %.02124, i32 noundef 4, ptr noundef nonnull @.str.853, ptr noundef %i.t)
  %i.v = load i32, ptr @ett_usb_audio, align 4
  %i.w = tail call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 7 uses
  %i.x = load i32, ptr @hf_midi_cable_number, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef %.02124, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_midi_code_index, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.z, ptr noundef %0, i32 noundef %.02124, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %.critedge.i
    i8 1, label %.critedge.i
    i8 5, label %get_midi_event_size.exit.i
    i8 15, label %get_midi_event_size.exit.i
    i8 2, label %bb.g
    i8 6, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 3, label %.critedge.i
    i8 4, label %.critedge.i
    i8 7, label %.critedge.i
    i8 8, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 11, label %.critedge.i
    i8 14, label %.critedge.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %get_midi_event_size.exit.i

default.unreachable:                              ; preds = %bb.f
  unreachable

get_midi_event_size.exit.i:                       ; preds = %bb.g, %bb.f, %bb.f
  %.0.i.i = phi i32 [ 2, %bb.g ], [ 1, %bb.f ], [ 1, %bb.f ] ; 4 uses
  %i.ab = or disjoint i32 %.02124, 1              ; 3 uses
  %i.ac = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.ab, i32 noundef %.0.i.i)
  %i.ad = load i32, ptr @hf_midi_event, align 4
  %i.ae = tail call ptr @proto_tree_add_bytes(ptr noundef %i.w, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ab, i32 noundef %.0.i.i, ptr noundef %i.ac) ; 0 uses
  %i.af = xor i32 %.0.i.i, 3                      ; 2 uses
  %i.ag = add nuw i32 %.0.i.i, %i.ab              ; 2 uses
  %i.ah = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.af)
  %i.ai = load i32, ptr @hf_midi_padding, align 4
  %i.aj = tail call ptr @proto_tree_add_bytes(ptr noundef %i.w, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.af, ptr noundef %i.ah) ; 0 uses
  br label %bb.h

.critedge.i:                                      ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ak = or disjoint i32 %.02124, 1              ; 2 uses
  %i.al = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.ak, i32 noundef 3)
  %i.am = load i32, ptr @hf_midi_event, align 4
  %i.an = tail call ptr @proto_tree_add_bytes(ptr noundef %i.w, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.ak, i32 noundef 3, ptr noundef %i.al) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %get_midi_event_size.exit.i, %bb.e
  %.066.i = phi ptr [ null, %bb.e ], [ %i.w, %get_midi_event_size.exit.i ], [ %i.w, %.critedge.i ]
  %i.ao = load i8, ptr %i.n, align 8, !range !6, !noundef !7
  %i.ap = and i8 %i.o, 12
  %spec.select.i.i = icmp eq i8 %i.ap, 4
  br i1 %spec.select.i.i, label %bb.i, label %dissect_usb_midi_event.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.n, align 8
  %i.aq = icmp eq i8 %i.q, 4                      ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = or disjoint i32 %.02124, 1
  %i.as = zext nneg i8 %i.p to i32
  %i.at = tail call ptr @fragment_add_seq_next(ptr noundef nonnull @midi_data_reassembly_table, ptr noundef %0, i32 noundef %i.ar, ptr noundef %1, i32 noundef %i.as, ptr noundef null, i32 noundef 3, i1 noundef zeroext true)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = zext nneg i8 %i.q to i32
  %i.av = or disjoint i32 %.02124, 1
  %i.aw = zext nneg i8 %i.p to i32
  %i.ax = add nsw i32 %i.au, -4
  %i.ay = tail call ptr @fragment_add_seq_next(ptr noundef nonnull @midi_data_reassembly_table, ptr noundef %0, i32 noundef %i.av, ptr noundef %1, i32 noundef %i.aw, ptr noundef null, i32 noundef %i.ax, i1 noundef zeroext false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %i.at, %bb.j ], [ %i.ay, %bb.k ]
  %i.az = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.011.in.i.i = phi i32 [ %.02124, %bb.l ], [ %.011.i.i, %bb.n ]
  %.011.i.i = add i32 %.011.in.i.i, 4             ; 3 uses
  %.not.not.not.i.not.i = icmp slt i32 %.011.i.i, %i.az
  br i1 %.not.not.not.i.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.011.i.i)
  %i.bb = and i8 %i.ba, 12
  %spec.select.i.i.i = icmp eq i8 %i.bb, 4
  br i1 %spec.select.i.i.i, label %dissect_usb_midi_event.exit, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bc = or disjoint i32 %.02124, 1
  %i.bd = tail call ptr @process_reassembled_data(ptr noundef %0, i32 noundef %i.bc, ptr noundef %1, ptr noundef nonnull @.str.854, ptr noundef %.0.i, ptr noundef nonnull @sysex_msg_frag_items, ptr noundef null, ptr noundef %.066.i) ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8
  %.str.856..str.855.i = select i1 %i.aq, ptr @.str.856, ptr @.str.855
  tail call void @col_append_str(ptr noundef %i.be, i32 noundef 25, ptr noundef nonnull %.str.856..str.855.i)
  %.not74.i = icmp eq ptr %i.bd, null
  br i1 %.not74.i, label %dissect_usb_midi_event.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @midi_sysex_handle, align 8
  %i.bg = tail call i32 @call_dissector(ptr noundef %i.bf, ptr noundef nonnull %i.bd, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %dissect_usb_midi_event.exit

dissect_usb_midi_event.exit:                      ; preds = %bb.n, %bb.h, %bb.o, %bb.p
  store i8 %i.ao, ptr %i.n, align 8
  %i.bh = add nuw nsw i32 %.02124, 4
  %i.bi = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.l
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !8

bb.q:                                             ; preds = %bb.c
  %i.bj = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_usb_audio_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef %i.g) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %dissect_usb_midi_event.exit, %bb.d, %bb.q, %bb.a, %bb.b
  %.022 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.g, %bb.q ], [ %i.g, %bb.d ], [ %i.g, %dissect_usb_midi_event.exit ]
  ret i32 %.022
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 256) i32 @dissect_usb_audio_descriptor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread250, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 40         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not236 = icmp eq ptr %i.c, null
  br i1 %.not236, label %.thread250, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = load i16, ptr %i.d, align 4
  %.not237 = icmp eq i16 %i.e, 1
  br i1 %.not237, label %bb.d, label %.thread250

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 6 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  switch i8 %i.g, label %.thread250 [
    i8 36, label %bb.e
    i8 37, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc(ptr noundef %i.i, i64 noundef 48) #8 ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(48) %i.j, ptr noundef nonnull align 1 dereferenceable(48) %3, i64 noundef 48, i1 noundef false) #7
  %i.k = getelementptr i8, ptr %i.j, i64 40       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 10
  %i.n = load i8, ptr %i.m, align 2
  %i.o = tail call ptr @get_usb_iface_conv_info(ptr noundef %1, i8 noundef zeroext %i.n) ; 3 uses
  store ptr %i.o, ptr %i.k, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 6
  %i.q = load i16, ptr %i.p, align 2
  switch i16 %i.q, label %.thread250 [
    i16 1, label %bb.f
    i16 2, label %bb.r
    i16 3, label %bb.z
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = zext i8 %i.f to i32                      ; 11 uses
  %i.s = load i32, ptr @ett_usb_audio_desc, align 4
  %i.t = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.857) ; 21 uses
  %i.u = call ptr @dissect_usb_descriptor_header(ptr noundef %i.t, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @aud_descriptor_type_vals_ext) ; 0 uses
  %i.v = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.w = load i32, ptr @hf_ac_if_desc_subtype, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.y = zext i8 %i.v to i32
  %i.z = call ptr @try_val_to_str_ext(i32 noundef %i.y, ptr noundef nonnull @ac_subtype_vals_ext) ; 2 uses
  %.not240 = icmp eq ptr %i.z, null
  br i1 %.not240, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aa, ptr noundef nonnull @.str.858, ptr noundef nonnull %i.z)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  switch i8 %i.v, label %bb.ai [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 10, label %bb.o
    i8 11, label %bb.p
    i8 9, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = call fastcc i32 @dissect_ac_if_hdr_body(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.j)
  %i.ac = add i32 %i.ab, 3
  br label %bb.ai

bb.j:                                             ; preds = %bb.h
  %i.ad = call fastcc i32 @dissect_ac_if_input_terminal(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.j)
  %i.ae = add nuw nsw i32 %i.ad, 3
  br label %bb.ai

bb.k:                                             ; preds = %bb.h
  %i.af = call fastcc i32 @dissect_ac_if_output_terminal(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.j)
  %i.ag = add nuw nsw i32 %i.af, 3
  br label %bb.ai

bb.l:                                             ; preds = %bb.h
  %i.ah = call fastcc i32 @dissect_ac_if_mixed_unit(ptr noundef %0, ptr noundef %i.t)
  %i.ai = add i32 %i.ah, 3
  br label %bb.ai

bb.m:                                             ; preds = %bb.h
  %i.aj = call fastcc i32 @dissect_ac_if_selector_unit(ptr noundef %0, ptr noundef %1, ptr noundef %i.t, ptr noundef %i.j)
  %i.ak = add i32 %i.aj, 3
  br label %bb.ai

bb.n:                                             ; preds = %bb.h
  %i.al = call fastcc i32 @dissect_ac_if_feature_unit(ptr noundef %0, ptr noundef %1, ptr noundef %i.t, ptr noundef %i.j, i8 noundef zeroext %i.f)
  %i.am = add i32 %i.al, 3
  br label %bb.ai

bb.o:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val, i64 53
  %.val.val = load i16, ptr %i.ao, align 1
  call fastcc void @dissect_ac_if_clock_source(ptr noundef %0, i16 %.val.val, ptr noundef %i.t, ptr noundef %i.j)
  br label %bb.ai

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %1, i64 80
  %.val241 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.val241, i64 53
  %.val241.val = load i16, ptr %i.aq, align 1
  %i.ar = call fastcc i32 @dissect_ac_if_clock_selector(ptr noundef %0, i16 %.val241.val, ptr noundef %i.t, ptr noundef %i.j)
  %i.as = add i32 %i.ar, 3
  br label %bb.ai

bb.q:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %1, i64 80
  %.val242 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.val242, i64 53
  %.val242.val = load i16, ptr %i.au, align 1
  %i.av = call fastcc i32 @dissect_ac_if_extension_unit(ptr noundef %0, i16 %.val242.val, ptr noundef %i.t, ptr noundef %i.j)
  %i.aw = add i32 %i.av, 3
  br label %bb.ai

bb.r:                                             ; preds = %bb.e
  %i.ax = zext i8 %i.f to i32                     ; 4 uses
  %i.ay = load i32, ptr @ett_usb_audio_desc, align 4
  %i.az = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.859) ; 7 uses
  %i.ba = call ptr @dissect_usb_descriptor_header(ptr noundef %i.az, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @aud_descriptor_type_vals_ext) ; 0 uses
  %i.bb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.bc = load i32, ptr @hf_as_if_desc_subtype, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %i.az, i32 noundef %i.bc, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.be = zext i8 %i.bb to i32
  %i.bf = call ptr @try_val_to_str_ext(i32 noundef %i.be, ptr noundef nonnull @as_subtype_vals_ext) ; 2 uses
  %.not239 = icmp eq ptr %i.bf, null
  br i1 %.not239, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bg, ptr noundef nonnull @.str.858, ptr noundef nonnull %i.bf)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  switch i8 %i.bb, label %bb.ai [
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %1, i64 80
  %.val243 = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %.val243, i64 53
  %.val243.val = load i16, ptr %i.bi, align 1
  %i.bj = call fastcc i32 @dissect_as_if_general_body(ptr noundef %0, i16 %.val243.val, ptr noundef %i.az, ptr noundef %i.j)
  %i.bk = add nuw nsw i32 %i.bj, 3
  br label %bb.ai

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %i.o, i64 8
  %.0227.val.val = load i16, ptr %i.bl, align 8
  %i.bm = call fastcc i32 @dissect_as_if_format_type_body(ptr noundef %0, ptr noundef %1, ptr noundef %i.az, i16 %.0227.val.val)
  %i.bn = add i32 %i.bm, 3
  br label %bb.ai

bb.w:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.b, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 6
  %i.bq = load i16, ptr %i.bp, align 2
  switch i16 %i.bq, label %.thread250 [
    i16 2, label %bb.x
    i16 3, label %bb.ag
  ]

bb.x:                                             ; preds = %bb.w
  %i.br = zext i8 %i.f to i32                     ; 3 uses
  %i.bs = load i32, ptr @ett_usb_audio_desc, align 4
  %i.bt = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.br, i32 noundef %i.bs, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.860) ; 5 uses
  %i.bu = call ptr @dissect_usb_descriptor_header(ptr noundef %i.bt, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @aud_descriptor_type_vals_ext) ; 0 uses
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.bw = load i32, ptr @hf_as_ep_desc_subtype, align 4
end_hunk_0
begin_hunk_1_@dissect_ac_if_selector_unit:bb.a
  %.038 = phi i32 [ %i.bf, %bb.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.038
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ac_if_feature_unit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr i8, ptr %3, i64 40         ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i16, ptr %i.d, align 8
  switch i16 %i.e, label %bb.r [
    i16 0, label %bb.b
    i16 32, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 53
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.c, label %set_entity_type.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @wmem_file_scope()
  %i.p = tail call noalias noundef dereferenceable_or_null(1024) ptr @wmem_alloc(ptr noundef %i.o, i64 noundef 1024) #8 ; 4 uses
  store i32 1, ptr %i.p, align 4
  %scevgep.i.i = getelementptr nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %scevgep.i.i, i8 0, i64 1020, i1 false)
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.p, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 40
  store i32 2, ptr %i.t, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.l, i64 40
  %i.v = load i32, ptr %i.u, align 8
  %.not10.i = icmp eq i32 %i.v, 2
  br i1 %.not10.i, label %bb.f, label %set_entity_type.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.d ]
  %.not11.i = icmp eq i8 %i.k, 0
  br i1 %.not11.i, label %set_entity_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext i8 %i.k to i64
  %i.x = getelementptr [4 x i8], ptr %.0.i, i64 %i.w
  store i32 8, ptr %i.x, align 4
  br label %set_entity_type.exit

set_entity_type.exit:                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %i.y = load i32, ptr @hf_ac_if_fu_unitid, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.aa = load i32, ptr @hf_ac_if_fu_sourceid, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load i16, ptr %i.ad, align 8
  switch i16 %i.ae, label %.loopexit [
    i16 0, label %bb.h
    i16 32, label %bb.p
  ]

bb.h:                                             ; preds = %set_entity_type.exit
  %i.af = load i32, ptr @hf_ac_if_fu_controlsize, align 4
  %i.ag = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.ah = load i8, ptr %i.a, align 1              ; 3 uses
  %.not105 = icmp eq i8 %i.ah, 0                  ; 2 uses
  br i1 %.not105, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = zext i8 %4 to i16
  %.lhs.trunc = add nsw i16 %i.ai, -7
  %.rhs.trunc = zext i8 %i.ah to i16
  %i.aj = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.aj to i32
  %i.ak = add nsw i32 %.sext, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = phi i32 [ %i.ak, %bb.i ], [ 0, %bb.h ]  ; 4 uses
  %i.am = add nsw i32 %i.al, 1
  %i.an = zext i8 %i.ah to i32
  %i.ao = mul nsw i32 %i.am, %i.an                ; 2 uses
  %i.ap = add nsw i32 %i.ao, 7
  %i.aq = zext i8 %4 to i32                       ; 3 uses
  %i.ar = icmp ne i32 %i.ap, %i.aq
  %i.as = icmp slt i32 %i.al, 0
  %or.cond = or i1 %i.as, %i.ar
  %or.cond4 = or i1 %.not105, %or.cond
  br i1 %or.cond4, label %bb.k, label %.peel.begin

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.aq, -6
  %i.au = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_usb_audio_invalid_feature_unit_length, ptr noundef %0, i32 noundef 6, i32 noundef %i.at) ; 0 uses
  %i.av = add nsw i32 %i.aq, -3
  br label %bb.r

.peel.begin:                                      ; preds = %bb.j
  %i.aw = load i32, ptr @hf_ac_if_fu_controls, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef 6, i32 noundef %i.ao, i32 noundef 0)
  %i.ay = load i32, ptr @ett_ac_if_fu_controls, align 4
  %i.az = call ptr @proto_item_add_subtree(ptr noundef %i.ax, i32 noundef %i.ay) ; 4 uses
  %i.ba = load i32, ptr @hf_ac_if_fu_control, align 4
  %i.bb = load i32, ptr @ett_ac_if_fu_controls0, align 4
  %i.bc = call ptr @proto_tree_add_bitmask(ptr noundef %i.az, ptr noundef %0, i32 noundef 6, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull @dissect_ac_if_feature_unit.fu_controls0, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.bc, ptr noundef nonnull @.str.872, ptr noundef nonnull @.str.873, i32 noundef 0)
  %i.bd = load i8, ptr %i.a, align 1              ; 2 uses
  %i.be = icmp ugt i8 %i.bd, 1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.peel.begin
  %i.bf = load i32, ptr @hf_ac_if_fu_control, align 4
  %i.bg = load i32, ptr @ett_ac_if_fu_controls1, align 4
  %i.bh = call ptr @proto_tree_add_bitmask(ptr noundef %i.az, ptr noundef %0, i32 noundef 7, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef nonnull @dissect_ac_if_feature_unit.fu_controls1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.bh, ptr noundef nonnull @.str.875, ptr noundef nonnull @.str.873, i32 noundef 0)
  %.pre = load i8, ptr %i.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.begin
  %i.bi = phi i8 [ %.pre, %bb.l ], [ %i.bd, %.peel.begin ]
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bj, 6                ; 2 uses
  %exitcond117.peel.not = icmp eq i32 %i.al, 0
  br i1 %exitcond117.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.m, %bb.o
  %.0113 = phi i32 [ %i.bx, %bb.o ], [ 1, %bb.m ] ; 4 uses
  %.0100112 = phi i32 [ %i.bw, %bb.o ], [ %i.bk, %bb.m ] ; 3 uses
  %i.bl = load i32, ptr @hf_ac_if_fu_control, align 4
  %i.bm = load i32, ptr @ett_ac_if_fu_controls0, align 4
  %i.bn = call ptr @proto_tree_add_bitmask(ptr noundef %i.az, ptr noundef %0, i32 noundef %.0100112, i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef nonnull @dissect_ac_if_feature_unit.fu_controls0, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.bn, ptr noundef nonnull @.str.872, ptr noundef nonnull @.str.874, i32 noundef %.0113)
  %i.bo = load i8, ptr %i.a, align 1              ; 2 uses
  %i.bp = icmp ugt i8 %i.bo, 1
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.peel.next
  %i.bq = add i32 %.0100112, 1
  %i.br = load i32, ptr @hf_ac_if_fu_control, align 4
  %i.bs = load i32, ptr @ett_ac_if_fu_controls1, align 4
  %i.bt = call ptr @proto_tree_add_bitmask(ptr noundef %i.az, ptr noundef %0, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bs, ptr noundef nonnull @dissect_ac_if_feature_unit.fu_controls1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.bt, ptr noundef nonnull @.str.875, ptr noundef nonnull @.str.874, i32 noundef %.0113)
  %.pre119 = load i8, ptr %i.a, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next
  %i.bu = phi i8 [ %.pre119, %bb.n ], [ %i.bo, %.peel.next ]
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %.0100112, %i.bv                ; 2 uses
  %i.bx = add nuw nsw i32 %.0113, 1
  %exitcond117.not = icmp eq i32 %.0113, %i.al
  br i1 %exitcond117.not, label %.loopexit, label %.peel.next, !llvm.loop !14

bb.p:                                             ; preds = %set_entity_type.exit
  %i.by = zext i8 %4 to i32                       ; 3 uses
  %i.bz = zext i8 %4 to i16
  %.lhs.trunc107 = add nsw i16 %i.bz, -6
  %i.ca = sdiv i16 %.lhs.trunc107, 4
  %.sext108 = sext i16 %i.ca to i32               ; 2 uses
  %i.cb = shl nsw i32 %.sext108, 2                ; 2 uses
  %i.cc = add nsw i32 %i.cb, 6
  %i.cd = icmp ne i32 %i.cc, %i.by
  %i.ce = icmp ult i8 %4, 10
  %or.cond6 = or i1 %i.ce, %i.cd
  br i1 %or.cond6, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.cf = add nsw i32 %i.by, -5
  %i.cg = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_usb_audio_invalid_feature_unit_length, ptr noundef %0, i32 noundef 5, i32 noundef %i.cf) ; 0 uses
  %i.ch = add nsw i32 %i.by, -3
  br label %bb.r

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.ci = load i32, ptr @hf_ac_if_fu_controls_v2, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ci, ptr noundef %0, i32 noundef 5, i32 noundef %i.cb, i32 noundef 0)
  %i.ck = load i32, ptr @ett_ac_if_fu_controls_v2, align 4
  %i.cl = tail call ptr @proto_item_add_subtree(ptr noundef %i.cj, i32 noundef %i.ck) ; 2 uses
  %i.cm = load i32, ptr @hf_ac_if_fu_control_v2, align 4
  %i.cn = load i32, ptr @ett_ac_if_fu_control_v2, align 4
  %i.co = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef 5, i32 noundef %i.cm, i32 noundef %i.cn, ptr noundef nonnull @dissect_ac_if_feature_unit.v2_fu_controls, i32 noundef -2147483648)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.co, ptr noundef nonnull @.str.872, ptr noundef nonnull @.str.873, i32 noundef 0)
  %exitcond.peel.not = icmp ult i8 %4, 14
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1111 = phi i32 [ %i.ct, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.1101110 = phi i32 [ %i.cs, %.lr.ph ], [ 9, %.lr.ph.preheader ] ; 2 uses
  %i.cp = load i32, ptr @hf_ac_if_fu_control_v2, align 4
  %i.cq = load i32, ptr @ett_ac_if_fu_control_v2, align 4
  %i.cr = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %.1101110, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull @dissect_ac_if_feature_unit.v2_fu_controls, i32 noundef -2147483648)
  tail call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.cr, ptr noundef nonnull @.str.872, ptr noundef nonnull @.str.874, i32 noundef %.1111)
  %i.cs = add nuw nsw i32 %.1101110, 4            ; 2 uses
  %i.ct = add nuw nsw i32 %.1111, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %.sext108
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %.lr.ph.preheader, %bb.m, %set_entity_type.exit
  %.2 = phi i32 [ 5, %set_entity_type.exit ], [ %i.bw, %bb.o ], [ %i.bk, %bb.m ], [ 9, %.lr.ph.preheader ], [ %i.cs, %.lr.ph ] ; 2 uses
  %i.cu = load i32, ptr @hf_ac_if_fu_ifeature, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cu, ptr noundef %0, i32 noundef %.2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cw = add i32 %.2, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit, %bb.q, %bb.k
  %.099 = phi i32 [ %i.av, %bb.k ], [ %i.cw, %.loopexit ], [ %i.ch, %bb.q ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.099
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ac_if_clock_source(ptr noundef %0, i16 %.80.val.53.val, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = and i16 %.80.val.53.val, 8
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %set_entity_type.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = tail call noalias noundef dereferenceable_or_null(1024) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 1024) #8 ; 4 uses
  store i32 1, ptr %i.h, align 4
  %scevgep.i.i = getelementptr nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %scevgep.i.i, i8 0, i64 1020, i1 false)
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 40
  store i32 2, ptr %i.l, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %.not10.i = icmp eq i32 %i.n, 2
  br i1 %.not10.i, label %bb.e, label %set_entity_type.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %i.h, %bb.c ]
  %.not11.i = icmp eq i8 %i.b, 0
  br i1 %.not11.i, label %set_entity_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext i8 %i.b to i64
  %i.p = getelementptr [4 x i8], ptr %.0.i, i64 %i.o
  store i32 2, ptr %i.p, align 4
  br label %set_entity_type.exit

set_entity_type.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.q = load i32, ptr @hf_ac_if_clksrc_id, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.q, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr @hf_ac_if_clksrc_attr, align 4
  %i.t = load i32, ptr @ett_ac_if_clksrc_attr, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef 4, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @dissect_ac_if_clock_source.cs_attributes, i32 noundef -2147483648) ; 0 uses
  %i.v = load i32, ptr @hf_ac_if_clksrc_controls, align 4
  %i.w = load i32, ptr @ett_ac_if_clksrc_controls, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef 5, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull @dissect_ac_if_clock_source.cs_controls, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr @hf_ac_if_clksrc_assocterminal, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.aa = load i32, ptr @hf_ac_if_clksrc_clocksource, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aa, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, -1) i32 @dissect_ac_if_clock_selector(ptr noundef %0, i16 %.80.val.53.val, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = and i16 %.80.val.53.val, 8
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %set_entity_type.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = tail call noalias noundef dereferenceable_or_null(1024) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 1024) #8 ; 4 uses
  store i32 1, ptr %i.h, align 4
  %scevgep.i.i = getelementptr nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %scevgep.i.i, i8 0, i64 1020, i1 false)
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 40
  store i32 2, ptr %i.l, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 40
  %i.n = load i32, ptr %i.m, align 8
  %.not10.i = icmp eq i32 %i.n, 2
  br i1 %.not10.i, label %bb.e, label %set_entity_type.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %i.h, %bb.c ]
  %.not11.i = icmp eq i8 %i.b, 0
  br i1 %.not11.i, label %set_entity_type.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext i8 %i.b to i64
  %i.p = getelementptr [4 x i8], ptr %.0.i, i64 %i.o
  store i32 3, ptr %i.p, align 4
  br label %set_entity_type.exit

set_entity_type.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.q = load i32, ptr @hf_ac_if_clksel_id, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.q, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr @hf_ac_if_clksel_nrpins, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %.not311 = icmp eq i8 %i.u, 0
  br i1 %.not311, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %set_entity_type.exit, %.lr.ph
  %.03 = phi i8 [ %i.x, %.lr.ph ], [ %i.u, %set_entity_type.exit ]
  %.0302 = phi i32 [ %i.y, %.lr.ph ], [ 5, %set_entity_type.exit ] ; 2 uses
  %i.v = load i32, ptr @hf_ac_if_clksel_sourceid, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %.0302, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.x = add i8 %.03, -1                          ; 2 uses
  %i.y = add nuw nsw i32 %.0302, 1                ; 2 uses
  %.not31 = icmp eq i8 %i.x, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %set_entity_type.exit
  %.030.lcssa = phi i32 [ 5, %set_entity_type.exit ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.z = load i32, ptr @hf_ac_if_clksel_controls, align 4
  %i.aa = load i32, ptr @ett_ac_if_clksel_controls, align 4
  %i.ab = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef %.030.lcssa, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @dissect_ac_if_clock_selector.cs_controls, i32 noundef -2147483648) ; 0 uses
  %i.ac = add i32 %.030.lcssa, 1
  %i.ad = load i32, ptr @hf_ac_if_clksel_clockselector, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.af = add i32 %.030.lcssa, -1
  ret i32 %i.af
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 6, 5) i32 @dissect_ac_if_extension_unit(ptr noundef %0, i16 %.80.val.53.val, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = and i16 %.80.val.53.val, 8
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %set_entity_type.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = tail call noalias noundef dereferenceable_or_null(1024) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 1024) #8 ; 4 uses
  store i32 1, ptr %i.h, align 4
  %scevgep.i.i = getelementptr nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %scevgep.i.i, i8 0, i64 1020, i1 false)
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 40
  store i32 2, ptr %i.l, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 40
end_hunk_1
