Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-x11?download=true
inline.NumInlined: 1773
inline.NumDeleted: 949
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 137
begin_hunk_0_@xinputXIListProperties_Reply:bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xinputXIGetProperty_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15499)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_unused, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15500, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_type, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 4                          ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_bytes_after, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = add i32 %i.aa, 4                        ; 2 uses
  store i32 %i.ab, ptr %2, align 4
  %i.ac = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ab, i32 noundef %4) ; 9 uses
  %i.ad = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_num_items, align 4
  %i.ae = load i32, ptr %2, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ag = load i32, ptr %2, align 4
  %i.ah = add i32 %i.ag, 4
  store i32 %i.ah, ptr %2, align 4
  %i.ai = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_format, align 4
  %i.aj = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ai, i32 noundef %4)
  %i.ak = load i32, ptr @hf_x11_unused, align 4
  %i.al = load i32, ptr %2, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.al, i32 noundef 11, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = add i32 %i.an, 11                       ; 4 uses
  store i32 %i.ao, ptr %2, align 4
  %trunc = trunc nuw i32 %i.aj to i8
  switch i8 %trunc, label %pad_to_4_bytes.exit [
    i8 8, label %bb.b
    i8 16, label %bb.d
    i8 32, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.ap = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_8Bits_data8, align 4
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1) ; 2 uses
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef %spec.store.select.i, i32 noundef %4) ; 0 uses
  %i.ar = load i32, ptr %2, align 4
  %i.as = add i32 %i.ar, %spec.store.select.i     ; 3 uses
  store i32 %i.as, ptr %2, align 4
  %i.at = sub i32 0, %i.as
  %i.au = and i32 %i.at, 3                        ; 3 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %pad_to_4_bytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = load i32, ptr @hf_x11_unused, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.as, i32 noundef %i.au, i32 noundef 0) ; 0 uses
  br label %pad_to_4_bytes.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ax = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_16Bits_data16, align 4
  %i.ay = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_16Bits_data16_item, align 4
  %i.az = shl i32 %i.ac, 1                        ; 2 uses
  %i.ba = or i32 %i.az, %i.ac
  %.not.i72 = icmp sgt i32 %i.ba, -1
  %spec.store.select.i73 = select i1 %.not.i72, i32 %i.az, i32 2147483647
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.ao, i32 noundef %spec.store.select.i73, i32 noundef %4)
  %i.bc = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.bd = tail call ptr @proto_item_add_subtree(ptr noundef %i.bb, i32 noundef %i.bc)
  %.not1415.i = icmp eq i32 %i.ac, 0
  %.pre = load i32, ptr %2, align 4               ; 2 uses
  br i1 %.not1415.i, label %listOfCard16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.be = phi i32 [ %i.bi, %.lr.ph.i ], [ %.pre, %bb.d ]
  %.016.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.bf = add i32 %.016.i, -1                     ; 2 uses
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.be, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bh = load i32, ptr %2, align 4
  %i.bi = add i32 %i.bh, 2                        ; 3 uses
  store i32 %i.bi, ptr %2, align 4
  %.not14.i = icmp eq i32 %i.bf, 0
  br i1 %.not14.i, label %listOfCard16.exit, label %.lr.ph.i, !llvm.loop !0

listOfCard16.exit:                                ; preds = %.lr.ph.i, %bb.d
  %i.bj = phi i32 [ %.pre, %bb.d ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %i.bk = sub i32 0, %i.bj
  %i.bl = and i32 %i.bk, 3                        ; 3 uses
  %.not.i74 = icmp eq i32 %i.bl, 0
  br i1 %.not.i74, label %pad_to_4_bytes.exit, label %bb.e

bb.e:                                             ; preds = %listOfCard16.exit
  %i.bm = load i32, ptr @hf_x11_unused, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0) ; 0 uses
  br label %pad_to_4_bytes.exit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.bo = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_32Bits_data32, align 4
  %i.bp = load i32, ptr @hf_x11_xinput_XIGetProperty_reply_32Bits_data32_item, align 4
  %i.bq = icmp ugt i32 %i.ac, 1073741823
  %i.br = shl nuw i32 %i.ac, 2
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 2147483647)
  %spec.store.select.i76 = select i1 %i.bq, i32 2147483647, i32 %i.bs
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.ao, i32 noundef %spec.store.select.i76, i32 noundef %4)
  %i.bu = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.bv = tail call ptr @proto_item_add_subtree(ptr noundef %i.bt, i32 noundef %i.bu)
  %.not14.i77 = icmp eq i32 %i.ac, 0
  br i1 %.not14.i77, label %pad_to_4_bytes.exit, label %.lr.ph.preheader.i78

.lr.ph.preheader.i78:                             ; preds = %bb.f
  %.pre.i79 = load i32, ptr %2, align 4
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80, %.lr.ph.preheader.i78
  %i.bw = phi i32 [ %i.ca, %.lr.ph.i80 ], [ %.pre.i79, %.lr.ph.preheader.i78 ]
  %.015.i = phi i32 [ %i.bx, %.lr.ph.i80 ], [ %i.ac, %.lr.ph.preheader.i78 ]
  %i.bx = add i32 %.015.i, -1                     ; 2 uses
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bw, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bz = load i32, ptr %2, align 4
  %i.ca = add i32 %i.bz, 4                        ; 2 uses
  store i32 %i.ca, ptr %2, align 4
  %.not.i81 = icmp eq i32 %i.bx, 0
  br i1 %.not.i81, label %pad_to_4_bytes.exit, label %.lr.ph.i80, !llvm.loop !1

pad_to_4_bytes.exit.sink.split:                   ; preds = %bb.c, %bb.e
  %.sink85 = phi i32 [ %i.bl, %bb.e ], [ %i.au, %bb.c ]
  %i.cb = load i32, ptr %2, align 4
  %i.cc = add i32 %i.cb, %.sink85
  store i32 %i.cc, ptr %2, align 4
  br label %pad_to_4_bytes.exit

pad_to_4_bytes.exit:                              ; preds = %.lr.ph.i80, %pad_to_4_bytes.exit.sink.split, %bb.f, %listOfCard16.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xinputXIGetSelectedEvents_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15501)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_unused, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15502, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.t, i32 noundef %4)
  %i.v = zext i16 %i.u to i32
  %i.w = load i32, ptr @hf_x11_xinput_XIGetSelectedEvents_reply_num_masks, align 4
  %i.x = load i32, ptr %2, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.z = load i32, ptr %2, align 4
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  store i32 %i.aa, ptr %2, align 4
  %i.ab = load i32, ptr @hf_x11_unused, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 22, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr %2, align 4
  %i.ae = add i32 %i.ad, 22
  store i32 %i.ae, ptr %2, align 4
  tail call fastcc void @struct_xinput_EventMask(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.v)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dispatch_xkb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr @hf_x11_xkb_extension_minor, align 4
  %i.c = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = load i32, ptr @hf_x11_request_length, align 4
  %i.e = load i32, ptr %2, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef %4, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %2, align 4
  %i.h = add i32 %i.g, 2
  store i32 %i.h, ptr %2, align 4
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %requestLength.exit

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.f, ptr noundef @.str.1578)
  %i.k = load i32, ptr @hf_x11_request_length, align 4
  %i.l = load i32, ptr %2, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef %4, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i32, ptr %2, align 4
  %i.o = add i32 %i.n, 4
  store i32 %i.o, ptr %2, align 4
  br label %requestLength.exit

requestLength.exit:                               ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %1, i64 416
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr @val_to_str(ptr noundef %i.s, i32 noundef %i.c, ptr noundef @xkb_extension_minor, ptr noundef @.str.1464)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.q, i32 noundef 25, ptr noundef @.str.14950, ptr noundef %i.t)
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %xkbSelectEvents.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.ab
    i8 6, label %bb.ac
    i8 7, label %bb.ad
    i8 8, label %bb.ae
    i8 9, label %bb.af
    i8 10, label %bb.av
    i8 11, label %bb.aw
    i8 12, label %bb.ax
    i8 13, label %bb.ay
    i8 14, label %bb.az
    i8 15, label %bb.ba
    i8 16, label %bb.bb
    i8 17, label %bb.bc
    i8 18, label %bb.bd
    i8 21, label %bb.by
    i8 22, label %bb.bz
    i8 23, label %bb.ca
    i8 24, label %bb.cb
    i8 25, label %bb.cc
    i8 101, label %bb.cd
  ]

bb.c:                                             ; preds = %requestLength.exit
  %i.u = load i32, ptr @hf_x11_xkb_UseExtension_wantedMajor, align 4
  %i.v = load i32, ptr %2, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.v, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.x = load i32, ptr %2, align 4
  %i.y = add i32 %i.x, 2                          ; 2 uses
  store i32 %i.y, ptr %2, align 4
  %i.z = load i32, ptr @hf_x11_xkb_UseExtension_wantedMinor, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ab = load i32, ptr %2, align 4
  %i.ac = add i32 %i.ab, 2
  store i32 %i.ac, ptr %2, align 4
  br label %xkbSelectEvents.exit

bb.d:                                             ; preds = %requestLength.exit
  %i.ad = load i32, ptr @hf_x11_xkb_SelectEvents_deviceSpec, align 4
  %i.ae = load i32, ptr %2, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ae, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ag = load i32, ptr %2, align 4
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  store i32 %i.ah, ptr %2, align 4
  %i.ai = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ah, i32 noundef %4)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = load i32, ptr %2, align 4
  %i.al = load i32, ptr @hf_x11_xkb_SelectEvents_affectWhich, align 4
  %i.am = load i32, ptr @ett_x11_rectangle, align 4
  %i.an = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am, ptr noundef @xkbSelectEvents.affectWhich_bits, i32 noundef %4) ; 0 uses
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, 2                        ; 2 uses
  store i32 %i.ap, ptr %2, align 4
  %i.aq = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ap, i32 noundef %4)
  %i.ar = load i32, ptr %2, align 4
  %i.as = load i32, ptr @hf_x11_xkb_SelectEvents_clear, align 4
  %i.at = load i32, ptr @ett_x11_rectangle, align 4
  %i.au = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, ptr noundef @xkbSelectEvents.clear_bits, i32 noundef %4) ; 0 uses
  %i.av = load i32, ptr %2, align 4
  %i.aw = add i32 %i.av, 2                        ; 2 uses
  store i32 %i.aw, ptr %2, align 4
  %i.ax = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.aw, i32 noundef %4)
  %i.ay = load i32, ptr %2, align 4
  %i.az = load i32, ptr @hf_x11_xkb_SelectEvents_selectAll, align 4
  %i.ba = load i32, ptr @ett_x11_rectangle, align 4
  %i.bb = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef @xkbSelectEvents.selectAll_bits, i32 noundef %4) ; 0 uses
  %i.bc = load i32, ptr %2, align 4
  %i.bd = add i32 %i.bc, 2                        ; 2 uses
  store i32 %i.bd, ptr %2, align 4
  %i.be = load i32, ptr @hf_x11_xkb_SelectEvents_affectMap, align 4
  %i.bf = load i32, ptr @ett_x11_rectangle, align 4
  %i.bg = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, ptr noundef @xkbSelectEvents.affectMap_bits, i32 noundef %4) ; 0 uses
  %i.bh = load i32, ptr %2, align 4
  %i.bi = add i32 %i.bh, 2                        ; 2 uses
  store i32 %i.bi, ptr %2, align 4
  %i.bj = load i32, ptr @hf_x11_xkb_SelectEvents_map, align 4
  %i.bk = load i32, ptr @ett_x11_rectangle, align 4
  %i.bl = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef @xkbSelectEvents.map_bits, i32 noundef %4) ; 0 uses
  %i.bm = load i32, ptr %2, align 4
  %i.bn = add i32 %i.bm, 2                        ; 3 uses
  store i32 %i.bn, ptr %2, align 4
  %.demorgan181.i = or i16 %i.ax, %i.aq
  %.demorgan.i = zext i16 %.demorgan181.i to i32
  %i.bo = xor i32 %.demorgan.i, -1
  %i.bp = and i32 %i.bo, %i.aj                    ; 11 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load i32, ptr @hf_x11_xkb_SelectEvents_NewKeyboardNotify_affectNewKeyboard, align 4
  %i.bs = load i32, ptr @ett_x11_rectangle, align 4
  %i.bt = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.br, i32 noundef %i.bs, ptr noundef @xkbSelectEvents.affectNewKeyboard_bits, i32 noundef %4) ; 0 uses
  %i.bu = load i32, ptr %2, align 4
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  store i32 %i.bv, ptr %2, align 4
  %i.bw = load i32, ptr @hf_x11_xkb_SelectEvents_NewKeyboardNotify_newKeyboardDetails, align 4
  %i.bx = load i32, ptr @ett_x11_rectangle, align 4
  %i.by = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef @xkbSelectEvents.newKeyboardDetails_bits, i32 noundef %4) ; 0 uses
  %i.bz = load i32, ptr %2, align 4
  %i.ca = add i32 %i.bz, 2                        ; 2 uses
  store i32 %i.ca, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cb = phi i32 [ %i.ca, %bb.e ], [ %i.bn, %bb.d ] ; 2 uses
  %i.cc = and i32 %i.bp, 4
  %.not182.i = icmp eq i32 %i.cc, 0
  br i1 %.not182.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load i32, ptr @hf_x11_xkb_SelectEvents_StateNotify_affectState, align 4
  %i.ce = load i32, ptr @ett_x11_rectangle, align 4
  %i.cf = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.ce, ptr noundef @xkbSelectEvents.affectState_bits, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %2, align 4
  %i.ch = add i32 %i.cg, 2                        ; 2 uses
  store i32 %i.ch, ptr %2, align 4
  %i.ci = load i32, ptr @hf_x11_xkb_SelectEvents_StateNotify_stateDetails, align 4
  %i.cj = load i32, ptr @ett_x11_rectangle, align 4
  %i.ck = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, ptr noundef @xkbSelectEvents.stateDetails_bits, i32 noundef %4) ; 0 uses
  %i.cl = load i32, ptr %2, align 4
  %i.cm = add i32 %i.cl, 2                        ; 2 uses
  store i32 %i.cm, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ %i.cb, %bb.f ] ; 2 uses
  %i.co = and i32 %i.bp, 8
  %.not183.i = icmp eq i32 %i.co, 0
  br i1 %.not183.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = load i32, ptr @hf_x11_xkb_SelectEvents_ControlsNotify_affectCtrls, align 4
  %i.cq = load i32, ptr @ett_x11_rectangle, align 4
  %i.cr = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef @xkbSelectEvents.affectCtrls_bits, i32 noundef %4) ; 0 uses
  %i.cs = load i32, ptr %2, align 4
  %i.ct = add i32 %i.cs, 4                        ; 2 uses
  store i32 %i.ct, ptr %2, align 4
  %i.cu = load i32, ptr @hf_x11_xkb_SelectEvents_ControlsNotify_ctrlDetails, align 4
  %i.cv = load i32, ptr @ett_x11_rectangle, align 4
  %i.cw = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef @xkbSelectEvents.ctrlDetails_bits, i32 noundef %4) ; 0 uses
  %i.cx = load i32, ptr %2, align 4
  %i.cy = add i32 %i.cx, 4                        ; 2 uses
  store i32 %i.cy, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cz = phi i32 [ %i.cy, %bb.i ], [ %i.cn, %bb.h ] ; 2 uses
  %i.da = and i32 %i.bp, 16
  %.not184.i = icmp eq i32 %i.da, 0
  br i1 %.not184.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load i32, ptr @hf_x11_xkb_SelectEvents_IndicatorStateNotify_affectIndicatorState, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.cz, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.dd = load i32, ptr %2, align 4
  %i.de = add i32 %i.dd, 4                        ; 2 uses
  store i32 %i.de, ptr %2, align 4
  %i.df = load i32, ptr @hf_x11_xkb_SelectEvents_IndicatorStateNotify_indicatorStateDetails, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.dh = load i32, ptr %2, align 4
  %i.di = add i32 %i.dh, 4                        ; 2 uses
end_hunk_0
begin_hunk_1_@dispatch_xkb:bb.a
bb.cb:                                            ; preds = %requestLength.exit
  %i.avn = load i32, ptr @hf_x11_xkb_GetDeviceInfo_deviceSpec, align 4
  %i.avo = load i32, ptr %2, align 4
  %i.avp = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.avn, ptr noundef %0, i32 noundef %i.avo, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.avq = load i32, ptr %2, align 4
  %i.avr = add i32 %i.avq, 2                      ; 2 uses
  store i32 %i.avr, ptr %2, align 4
  %i.avs = load i32, ptr @hf_x11_xkb_GetDeviceInfo_wanted, align 4
  %i.avt = load i32, ptr @ett_x11_rectangle, align 4
  %i.avu = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.avr, i32 noundef %i.avs, i32 noundef %i.avt, ptr noundef @xkbGetDeviceInfo.wanted_bits, i32 noundef %4) ; 0 uses
  %i.avv = load i32, ptr %2, align 4
  %i.avw = add i32 %i.avv, 2                      ; 2 uses
  store i32 %i.avw, ptr %2, align 4
  %i.avx = load i32, ptr @hf_x11_xkb_GetDeviceInfo_allButtons, align 4
  %i.avy = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.avx, ptr noundef %0, i32 noundef %i.avw, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.avz = load i32, ptr %2, align 4
  %i.awa = add i32 %i.avz, 1                      ; 2 uses
  store i32 %i.awa, ptr %2, align 4
  %i.awb = load i32, ptr @hf_x11_xkb_GetDeviceInfo_firstButton, align 4
  %i.awc = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.awb, ptr noundef %0, i32 noundef %i.awa, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.awd = load i32, ptr %2, align 4
  %i.awe = add i32 %i.awd, 1                      ; 2 uses
  store i32 %i.awe, ptr %2, align 4
  %i.awf = load i32, ptr @hf_x11_xkb_GetDeviceInfo_nButtons, align 4
  %i.awg = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.awf, ptr noundef %0, i32 noundef %i.awe, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.awh = load i32, ptr %2, align 4
  %i.awi = add i32 %i.awh, 1                      ; 2 uses
  store i32 %i.awi, ptr %2, align 4
  %i.awj = load i32, ptr @hf_x11_unused, align 4
  %i.awk = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.awj, ptr noundef %0, i32 noundef %i.awi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awl = load i32, ptr %2, align 4
  %i.awm = add i32 %i.awl, 1
  store i32 %i.awm, ptr %2, align 4
  %i.awn = load i32, ptr @hf_x11_xkb_GetDeviceInfo_ledClass, align 4
  %i.awo = call fastcc i32 @field16(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.awn, i32 noundef %4) ; 0 uses
  %i.awp = load i32, ptr @hf_x11_xkb_GetDeviceInfo_ledID, align 4
  %i.awq = call fastcc i32 @field16(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.awp, i32 noundef %4) ; 0 uses
  br label %xkbSelectEvents.exit

bb.cc:                                            ; preds = %requestLength.exit
  %i.awr = load i32, ptr @hf_x11_xkb_SetDeviceInfo_deviceSpec, align 4
  %i.aws = load i32, ptr %2, align 4
  %i.awt = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.awr, ptr noundef %0, i32 noundef %i.aws, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.awu = load i32, ptr %2, align 4
  %i.awv = add i32 %i.awu, 2                      ; 2 uses
  store i32 %i.awv, ptr %2, align 4
  %i.aww = load i32, ptr @hf_x11_xkb_SetDeviceInfo_firstBtn, align 4
  %i.awx = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aww, ptr noundef %0, i32 noundef %i.awv, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.awy = load i32, ptr %2, align 4
  %i.awz = add i32 %i.awy, 1                      ; 2 uses
  store i32 %i.awz, ptr %2, align 4
  %i.axa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.awz)
  %i.axb = zext i8 %i.axa to i32
  %i.axc = load i32, ptr @hf_x11_xkb_SetDeviceInfo_nBtns, align 4
  %i.axd = load i32, ptr %2, align 4
  %i.axe = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.axc, ptr noundef %0, i32 noundef %i.axd, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.axf = load i32, ptr %2, align 4
  %i.axg = add i32 %i.axf, 1                      ; 2 uses
  store i32 %i.axg, ptr %2, align 4
  %i.axh = load i32, ptr @hf_x11_xkb_SetDeviceInfo_change, align 4
  %i.axi = load i32, ptr @ett_x11_rectangle, align 4
  %i.axj = call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.axg, i32 noundef %i.axh, i32 noundef %i.axi, ptr noundef @xkbSetDeviceInfo.change_bits, i32 noundef %4) ; 0 uses
  %i.axk = load i32, ptr %2, align 4
  %i.axl = add i32 %i.axk, 2                      ; 2 uses
  store i32 %i.axl, ptr %2, align 4
  %i.axm = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.axl, i32 noundef %4)
  %i.axn = zext i16 %i.axm to i32
  %i.axo = load i32, ptr @hf_x11_xkb_SetDeviceInfo_nDeviceLedFBs, align 4
  %i.axp = load i32, ptr %2, align 4
  %i.axq = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.axo, ptr noundef %0, i32 noundef %i.axp, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.axr = load i32, ptr %2, align 4
  %i.axs = add i32 %i.axr, 2
  store i32 %i.axs, ptr %2, align 4
  call fastcc void @struct_xkb_Action(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.axb)
  call fastcc void @struct_xkb_DeviceLedInfo(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.axn)
  br label %xkbSelectEvents.exit

bb.cd:                                            ; preds = %requestLength.exit
  %i.axt = load i32, ptr %2, align 4
  %i.axu = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.axt, i32 noundef %4)
  %i.axv = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_msgLength, align 4
  %i.axw = load i32, ptr %2, align 4
  %i.axx = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.axv, ptr noundef %0, i32 noundef %i.axw, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.axy = load i32, ptr %2, align 4
  %i.axz = add i32 %i.axy, 2                      ; 2 uses
  store i32 %i.axz, ptr %2, align 4
  %i.aya = load i32, ptr @hf_x11_unused, align 4
  %i.ayb = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aya, ptr noundef %0, i32 noundef %i.axz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ayc = load i32, ptr %2, align 4
  %i.ayd = add i32 %i.ayc, 2                      ; 2 uses
  store i32 %i.ayd, ptr %2, align 4
  %i.aye = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_affectFlags, align 4
  %i.ayf = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aye, ptr noundef %0, i32 noundef %i.ayd, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ayg = load i32, ptr %2, align 4
  %i.ayh = add i32 %i.ayg, 4                      ; 2 uses
  store i32 %i.ayh, ptr %2, align 4
  %i.ayi = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_flags, align 4
  %i.ayj = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ayi, ptr noundef %0, i32 noundef %i.ayh, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ayk = load i32, ptr %2, align 4
  %i.ayl = add i32 %i.ayk, 4                      ; 2 uses
  store i32 %i.ayl, ptr %2, align 4
  %i.aym = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_affectCtrls, align 4
  %i.ayn = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aym, ptr noundef %0, i32 noundef %i.ayl, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ayo = load i32, ptr %2, align 4
  %i.ayp = add i32 %i.ayo, 4                      ; 2 uses
  store i32 %i.ayp, ptr %2, align 4
  %i.ayq = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_ctrls, align 4
  %i.ayr = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ayq, ptr noundef %0, i32 noundef %i.ayp, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ays = load i32, ptr %2, align 4
  %i.ayt = add i32 %i.ays, 4                      ; 2 uses
  store i32 %i.ayt, ptr %2, align 4
  %i.ayu = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_message, align 4
  %i.ayv = call i16 @llvm.umax.i16(i16 %i.axu, i16 1)
  %i.ayw = zext i16 %i.ayv to i32                 ; 2 uses
  %i.ayx = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ayu, ptr noundef %0, i32 noundef %i.ayt, i32 noundef %i.ayw, i32 noundef %4) ; 0 uses
  %i.ayy = load i32, ptr %2, align 4
  %i.ayz = add i32 %i.ayy, %i.ayw
  store i32 %i.ayz, ptr %2, align 4
  br label %xkbSelectEvents.exit

xkbSelectEvents.exit:                             ; preds = %.lr.ph.i267.i, %bb.bx, %bb.bw, %bb.au, %bb.at, %bb.y, %bb.x, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.c, %requestLength.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KeySymMap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %listOfCard32.exit
  %.036 = phi i32 [ %i.ap, %listOfCard32.exit ], [ 0, %bb.a ]
  %i.a = load i32, ptr @hf_x11_struct_xkb_KeySymMap, align 4
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = add i32 %i.b, 6
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.c, i32 noundef %3)
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 2
  %i.g = add nuw nsw i32 %i.f, 8
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.g, i32 noundef 0)
  %i.i = load i32, ptr @ett_x11_rectangle, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 5 uses
  %i.k = load i32, ptr @hf_x11_struct_xkb_KeySymMap_kt_index, align 4
  %i.l = load i32, ptr %1, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 4                          ; 2 uses
  store i32 %i.o, ptr %1, align 4
  %i.p = load i32, ptr @hf_x11_struct_xkb_KeySymMap_groupInfo, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %1, align 4
  %i.t = load i32, ptr @hf_x11_struct_xkb_KeySymMap_width, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.v = load i32, ptr %1, align 4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %1, align 4
  %i.x = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.w, i32 noundef %3) ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = load i32, ptr @hf_x11_struct_xkb_KeySymMap_nSyms, align 4
  %i.aa = load i32, ptr %1, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.aa, i32 noundef 2, i32 noundef %3) ; 0 uses
  %i.ac = load i32, ptr %1, align 4
  %i.ad = add i32 %i.ac, 2                        ; 2 uses
  store i32 %i.ad, ptr %1, align 4
  %i.ae = load i32, ptr @hf_x11_struct_xkb_KeySymMap_syms, align 4
  %i.af = load i32, ptr @hf_x11_struct_xkb_KeySymMap_syms_item, align 4
  %i.ag = shl nuw nsw i32 %i.y, 2
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %3)
  %i.ai = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.aj = tail call ptr @proto_item_add_subtree(ptr noundef %i.ah, i32 noundef %i.ai)
  %.not14.i = icmp eq i16 %i.x, 0
  br i1 %.not14.i, label %listOfCard32.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %.pre.i = load i32, ptr %1, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.ak = phi i32 [ %i.ao, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.015.i = phi i32 [ %i.al, %.lr.ph.i ], [ %i.y, %.lr.ph.preheader.i ]
  %i.al = add nsw i32 %.015.i, -1                 ; 2 uses
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.an = load i32, ptr %1, align 4
  %i.ao = add i32 %i.an, 4                        ; 2 uses
  store i32 %i.ao, ptr %1, align 4
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %listOfCard32.exit, label %.lr.ph.i, !llvm.loop !1

listOfCard32.exit:                                ; preds = %.lr.ph.i, %.lr.ph
  %i.ap = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %listOfCard32.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_Action(ptr noundef %0, ptr nofree noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0144 = phi i32 [ %i.la, %.lr.ph ], [ 0, %bb.a ]
  %.0142143 = phi i32 [ %i.kz, %.lr.ph ], [ %i.a, %bb.a ] ; 40 uses
  %i.b = load i32, ptr @hf_x11_union_xkb_Action, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 22 uses
  store i32 %.0142143, ptr %1, align 4
  %i.f = load i32, ptr @hf_x11_struct_xkb_SANoAction, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.h = load i32, ptr @ett_x11_rectangle, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 2 uses
  %i.j = load i32, ptr @hf_x11_struct_xkb_SANoAction_type, align 4
  %i.k = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.i, i32 noundef %i.j, i32 noundef %3) ; 0 uses
  %i.l = load i32, ptr @hf_x11_unused, align 4
  %i.m = load i32, ptr %1, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 7, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  tail call fastcc void @struct_xkb_SASetMods(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3)
  store i32 %.0142143, ptr %1, align 4
  tail call fastcc void @struct_xkb_SASetMods(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3)
  store i32 %.0142143, ptr %1, align 4
  tail call fastcc void @struct_xkb_SASetMods(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3)
  store i32 %.0142143, ptr %1, align 4
  %5 = load i32, ptr @hf_x11_struct_xkb_SASetGroup, align 4
  %6 = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %5, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %7 = load i32, ptr @ett_x11_rectangle, align 4
  %8 = tail call ptr @proto_item_add_subtree(ptr noundef %6, i32 noundef %7) ; 4 uses
  %9 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_type, align 4
  %10 = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef %9, i32 noundef %3) ; 0 uses
  %11 = load i32, ptr %1, align 4
  %12 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_flags, align 4
  %13 = load i32, ptr @ett_x11_rectangle, align 4
  %14 = tail call ptr @proto_tree_add_bitmask(ptr noundef %8, ptr noundef %0, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef @struct_xkb_SASetGroup.flags_bits, i32 noundef %3) ; 0 uses
  %15 = load i32, ptr %1, align 4
  %16 = add i32 %15, 1                            ; 2 uses
  store i32 %16, ptr %1, align 4
  %17 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_group, align 4
  %18 = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %17, ptr noundef %0, i32 noundef %16, i32 noundef 1, i32 noundef %3) ; 0 uses
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %19, 1                            ; 2 uses
  store i32 %20, ptr %1, align 4
  %21 = load i32, ptr @hf_x11_unused, align 4
  %22 = tail call ptr @proto_tree_add_item(ptr noundef %8, i32 noundef %21, ptr noundef %0, i32 noundef %20, i32 noundef 5, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %23 = load i32, ptr @hf_x11_struct_xkb_SASetGroup, align 4
  %24 = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %23, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %25 = load i32, ptr @ett_x11_rectangle, align 4
  %26 = tail call ptr @proto_item_add_subtree(ptr noundef %24, i32 noundef %25) ; 4 uses
  %27 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_type, align 4
  %28 = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef %27, i32 noundef %3) ; 0 uses
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_flags, align 4
  %31 = load i32, ptr @ett_x11_rectangle, align 4
  %32 = tail call ptr @proto_tree_add_bitmask(ptr noundef %26, ptr noundef %0, i32 noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef @struct_xkb_SASetGroup.flags_bits, i32 noundef %3) ; 0 uses
  %33 = load i32, ptr %1, align 4
  %34 = add i32 %33, 1                            ; 2 uses
  store i32 %34, ptr %1, align 4
  %35 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_group, align 4
  %36 = tail call ptr @proto_tree_add_item(ptr noundef %26, i32 noundef %35, ptr noundef %0, i32 noundef %34, i32 noundef 1, i32 noundef %3) ; 0 uses
  %37 = load i32, ptr %1, align 4
  %38 = add i32 %37, 1                            ; 2 uses
  store i32 %38, ptr %1, align 4
  %39 = load i32, ptr @hf_x11_unused, align 4
  %40 = tail call ptr @proto_tree_add_item(ptr noundef %26, i32 noundef %39, ptr noundef %0, i32 noundef %38, i32 noundef 5, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %41 = load i32, ptr @hf_x11_struct_xkb_SASetGroup, align 4
  %42 = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %41, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %43 = load i32, ptr @ett_x11_rectangle, align 4
  %44 = tail call ptr @proto_item_add_subtree(ptr noundef %42, i32 noundef %43) ; 4 uses
  %45 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_type, align 4
  %46 = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %44, i32 noundef %45, i32 noundef %3) ; 0 uses
  %47 = load i32, ptr %1, align 4
  %48 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_flags, align 4
  %49 = load i32, ptr @ett_x11_rectangle, align 4
  %50 = tail call ptr @proto_tree_add_bitmask(ptr noundef %44, ptr noundef %0, i32 noundef %47, i32 noundef %48, i32 noundef %49, ptr noundef @struct_xkb_SASetGroup.flags_bits, i32 noundef %3) ; 0 uses
  %51 = load i32, ptr %1, align 4
  %52 = add i32 %51, 1                            ; 2 uses
  store i32 %52, ptr %1, align 4
  %53 = load i32, ptr @hf_x11_struct_xkb_SASetGroup_group, align 4
  %54 = tail call ptr @proto_tree_add_item(ptr noundef %44, i32 noundef %53, ptr noundef %0, i32 noundef %52, i32 noundef 1, i32 noundef %3) ; 0 uses
  %55 = load i32, ptr %1, align 4
  %56 = add i32 %55, 1                            ; 2 uses
  store i32 %56, ptr %1, align 4
  %57 = load i32, ptr @hf_x11_unused, align 4
  %58 = tail call ptr @proto_tree_add_item(ptr noundef %44, i32 noundef %57, ptr noundef %0, i32 noundef %56, i32 noundef 5, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.o = load i32, ptr @hf_x11_struct_xkb_SAMovePtr, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.q = load i32, ptr @ett_x11_rectangle, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 7 uses
  %i.s = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_type, align 4
  %i.t = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.r, i32 noundef %i.s, i32 noundef %3) ; 0 uses
  %i.u = load i32, ptr %1, align 4
  %i.v = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_flags, align 4
  %i.w = load i32, ptr @ett_x11_rectangle, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, ptr noundef @struct_xkb_SAMovePtr.flags_bits, i32 noundef %3) ; 0 uses
  %i.y = load i32, ptr %1, align 4
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %1, align 4
  %i.aa = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_xHigh, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ac = load i32, ptr %1, align 4
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %1, align 4
  %i.ae = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_xLow, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ag = load i32, ptr %1, align 4
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %1, align 4
  %i.ai = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_yHigh, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ak = load i32, ptr %1, align 4
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %1, align 4
  %i.am = load i32, ptr @hf_x11_struct_xkb_SAMovePtr_yLow, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ao = load i32, ptr %1, align 4
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %1, align 4
  %i.aq = load i32, ptr @hf_x11_unused, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.as = load i32, ptr @hf_x11_struct_xkb_SAPtrBtn, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.as, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.au = load i32, ptr @ett_x11_rectangle, align 4
  %i.av = tail call ptr @proto_item_add_subtree(ptr noundef %i.at, i32 noundef %i.au) ; 5 uses
  %i.aw = load i32, ptr @hf_x11_struct_xkb_SAPtrBtn_type, align 4
  %i.ax = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.av, i32 noundef %i.aw, i32 noundef %3) ; 0 uses
  %i.ay = load i32, ptr @hf_x11_struct_xkb_SAPtrBtn_flags, align 4
  %i.az = load i32, ptr %1, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.av, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.az, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bb = load i32, ptr %1, align 4
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %1, align 4
  %i.bd = load i32, ptr @hf_x11_struct_xkb_SAPtrBtn_count, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.av, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bc, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bf = load i32, ptr %1, align 4
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %1, align 4
  %i.bh = load i32, ptr @hf_x11_struct_xkb_SAPtrBtn_button, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.av, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bg, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bj = load i32, ptr %1, align 4
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %1, align 4
  %i.bl = load i32, ptr @hf_x11_unused, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.av, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bk, i32 noundef 4, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.bn = load i32, ptr @hf_x11_struct_xkb_SALockPtrBtn, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.bp = load i32, ptr @ett_x11_rectangle, align 4
  %i.bq = tail call ptr @proto_item_add_subtree(ptr noundef %i.bo, i32 noundef %i.bp) ; 5 uses
  %i.br = load i32, ptr @hf_x11_struct_xkb_SALockPtrBtn_type, align 4
  %i.bs = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.bq, i32 noundef %i.br, i32 noundef %3) ; 0 uses
  %i.bt = load i32, ptr @hf_x11_struct_xkb_SALockPtrBtn_flags, align 4
  %i.bu = load i32, ptr %1, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bu, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bw = load i32, ptr %1, align 4
  %i.bx = add i32 %i.bw, 1                        ; 2 uses
  store i32 %i.bx, ptr %1, align 4
  %i.by = load i32, ptr @hf_x11_unused, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ca = load i32, ptr %1, align 4
  %i.cb = add i32 %i.ca, 1                        ; 2 uses
  store i32 %i.cb, ptr %1, align 4
  %i.cc = load i32, ptr @hf_x11_struct_xkb_SALockPtrBtn_button, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.cb, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ce = load i32, ptr %1, align 4
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %1, align 4
  %i.cg = load i32, ptr @hf_x11_unused, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 4, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.ci = load i32, ptr @hf_x11_struct_xkb_SASetPtrDflt, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ci, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.ck = load i32, ptr @ett_x11_rectangle, align 4
  %i.cl = tail call ptr @proto_item_add_subtree(ptr noundef %i.cj, i32 noundef %i.ck) ; 5 uses
  %i.cm = load i32, ptr @hf_x11_struct_xkb_SASetPtrDflt_type, align 4
  %i.cn = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.cl, i32 noundef %i.cm, i32 noundef %3) ; 0 uses
  %i.co = load i32, ptr %1, align 4
  %i.cp = load i32, ptr @hf_x11_struct_xkb_SASetPtrDflt_flags, align 4
  %i.cq = load i32, ptr @ett_x11_rectangle, align 4
  %i.cr = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef @struct_xkb_SASetPtrDflt.flags_bits, i32 noundef %3) ; 0 uses
  %i.cs = load i32, ptr %1, align 4
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  store i32 %i.ct, ptr %1, align 4
  %i.cu = load i32, ptr @hf_x11_struct_xkb_SASetPtrDflt_affect, align 4
  %i.cv = load i32, ptr @ett_x11_rectangle, align 4
  %i.cw = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef @struct_xkb_SASetPtrDflt.affect_bits, i32 noundef %3) ; 0 uses
  %i.cx = load i32, ptr %1, align 4
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cy, ptr %1, align 4
  %i.cz = load i32, ptr @hf_x11_struct_xkb_SASetPtrDflt_value, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.db = load i32, ptr %1, align 4
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.dc, ptr %1, align 4
  %i.dd = load i32, ptr @hf_x11_unused, align 4
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.dc, i32 noundef 4, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.df = load i32, ptr @hf_x11_struct_xkb_SAIsoLock, align 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.df, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.dh = load i32, ptr @ett_x11_rectangle, align 4
  %i.di = tail call ptr @proto_item_add_subtree(ptr noundef %i.dg, i32 noundef %i.dh) ; 8 uses
  %i.dj = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_type, align 4
  %i.dk = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.di, i32 noundef %i.dj, i32 noundef %3) ; 0 uses
  %i.dl = load i32, ptr %1, align 4
  %i.dm = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_flags, align 4
  %i.dn = load i32, ptr @ett_x11_rectangle, align 4
  %i.do = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn, ptr noundef @struct_xkb_SAIsoLock.flags_bits, i32 noundef %3) ; 0 uses
  %i.dp = load i32, ptr %1, align 4
  %i.dq = add i32 %i.dp, 1                        ; 2 uses
  store i32 %i.dq, ptr %1, align 4
  %i.dr = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_mask, align 4
  %i.ds = load i32, ptr @ett_x11_rectangle, align 4
  %i.dt = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef @struct_xkb_SAIsoLock.mask_bits, i32 noundef %3) ; 0 uses
  %i.du = load i32, ptr %1, align 4
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  store i32 %i.dv, ptr %1, align 4
  %i.dw = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_realMods, align 4
  %i.dx = load i32, ptr @ett_x11_rectangle, align 4
  %i.dy = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef @struct_xkb_SAIsoLock.realMods_bits, i32 noundef %3) ; 0 uses
  %i.dz = load i32, ptr %1, align 4
  %i.ea = add i32 %i.dz, 1                        ; 2 uses
  store i32 %i.ea, ptr %1, align 4
  %i.eb = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_group, align 4
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %i.di, i32 noundef %i.eb, ptr noundef %0, i32 noundef %i.ea, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ed = load i32, ptr %1, align 4
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  store i32 %i.ee, ptr %1, align 4
  %i.ef = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_affect, align 4
  %i.eg = load i32, ptr @ett_x11_rectangle, align 4
  %i.eh = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.ee, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef @struct_xkb_SAIsoLock.affect_bits, i32 noundef %3) ; 0 uses
  %i.ei = load i32, ptr %1, align 4
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  store i32 %i.ej, ptr %1, align 4
  %i.ek = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_vmodsHigh, align 4
  %i.el = load i32, ptr @ett_x11_rectangle, align 4
  %i.em = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.ej, i32 noundef %i.ek, i32 noundef %i.el, ptr noundef @struct_xkb_SAIsoLock.vmodsHigh_bits, i32 noundef %3) ; 0 uses
  %i.en = load i32, ptr %1, align 4
  %i.eo = add i32 %i.en, 1                        ; 2 uses
  store i32 %i.eo, ptr %1, align 4
  %i.ep = load i32, ptr @hf_x11_struct_xkb_SAIsoLock_vmodsLow, align 4
  %i.eq = load i32, ptr @ett_x11_rectangle, align 4
  %i.er = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.di, ptr noundef %0, i32 noundef %i.eo, i32 noundef %i.ep, i32 noundef %i.eq, ptr noundef @struct_xkb_SAIsoLock.vmodsLow_bits, i32 noundef %3) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.es = load i32, ptr @hf_x11_struct_xkb_SATerminate, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.es, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.eu = load i32, ptr @ett_x11_rectangle, align 4
  %i.ev = tail call ptr @proto_item_add_subtree(ptr noundef %i.et, i32 noundef %i.eu) ; 2 uses
  %i.ew = load i32, ptr @hf_x11_struct_xkb_SATerminate_type, align 4
  %i.ex = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.ev, i32 noundef %i.ew, i32 noundef %3) ; 0 uses
  %i.ey = load i32, ptr @hf_x11_unused, align 4
  %i.ez = load i32, ptr %1, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %i.ev, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ez, i32 noundef 7, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  %i.fb = load i32, ptr @hf_x11_struct_xkb_SASwitchScreen, align 4
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.fb, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.fd = load i32, ptr @ett_x11_rectangle, align 4
  %i.fe = tail call ptr @proto_item_add_subtree(ptr noundef %i.fc, i32 noundef %i.fd) ; 4 uses
  %i.ff = load i32, ptr @hf_x11_struct_xkb_SASwitchScreen_type, align 4
  %i.fg = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.fe, i32 noundef %i.ff, i32 noundef %3) ; 0 uses
  %i.fh = load i32, ptr @hf_x11_struct_xkb_SASwitchScreen_flags, align 4
  %i.fi = load i32, ptr %1, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %i.fe, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.fi, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.fk = load i32, ptr %1, align 4
  %i.fl = add i32 %i.fk, 1                        ; 2 uses
  store i32 %i.fl, ptr %1, align 4
  %i.fm = load i32, ptr @hf_x11_struct_xkb_SASwitchScreen_newScreen, align 4
  %i.fn = tail call ptr @proto_tree_add_item(ptr noundef %i.fe, i32 noundef %i.fm, ptr noundef %0, i32 noundef %i.fl, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.fo = load i32, ptr %1, align 4
  %i.fp = add i32 %i.fo, 1                        ; 2 uses
  store i32 %i.fp, ptr %1, align 4
  %i.fq = load i32, ptr @hf_x11_unused, align 4
  %i.fr = tail call ptr @proto_tree_add_item(ptr noundef %i.fe, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.fp, i32 noundef 5, i32 noundef 0) ; 0 uses
  store i32 %.0142143, ptr %1, align 4
  tail call fastcc void @struct_xkb_SASetControls(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3)
  store i32 %.0142143, ptr %1, align 4
  tail call fastcc void @struct_xkb_SASetControls(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3)
  store i32 %.0142143, ptr %1, align 4
  %i.fs = load i32, ptr @hf_x11_struct_xkb_SAActionMessage, align 4
  %i.ft = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.fs, ptr noundef %0, i32 noundef %.0142143, i32 noundef 8, i32 noundef 0)
  %i.fu = load i32, ptr @ett_x11_rectangle, align 4
  %i.fv = tail call ptr @proto_item_add_subtree(ptr noundef %i.ft, i32 noundef %i.fu) ; 3 uses
  %i.fw = load i32, ptr @hf_x11_struct_xkb_SAActionMessage_type, align 4
  %i.fx = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.fv, i32 noundef %i.fw, i32 noundef %3) ; 0 uses
end_hunk_1
begin_hunk_2_@struct_xkb_SetExplicit:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.o, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.016 = phi i32 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_SetExplicit, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 2, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_SetExplicit_keycode, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_SetExplicit_explicit, align 4
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @struct_xkb_SetExplicit.explicit_bits, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %1, align 4
  %i.p = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KeyModMap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.o, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.016 = phi i32 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_KeyModMap, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 2, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_KeyModMap_keycode, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_KeyModMap_mods, align 4
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @struct_xkb_KeyModMap.mods_bits, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %1, align 4
  %i.p = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KeyVModMap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.s, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.020 = phi i32 [ %i.t, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_KeyVModMap, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 4, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 3 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_KeyVModMap_keycode, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_unused, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr %1, align 4
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %1, align 4
  %i.o = load i32, ptr @hf_x11_struct_xkb_KeyVModMap_vmods, align 4
  %i.p = load i32, ptr @ett_x11_rectangle, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef @struct_xkb_KeyVModMap.vmods_bits, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = add i32 %i.r, 2                          ; 2 uses
  store i32 %i.s, ptr %1, align 4
  %i.t = add nuw nsw i32 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KTSetMapEntry(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65026) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.t, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.021 = phi i32 [ %i.u, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_KTSetMapEntry, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 4, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 3 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_KTSetMapEntry_level, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_KTSetMapEntry_realMods, align 4
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @struct_xkb_KTSetMapEntry.realMods_bits, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %1, align 4
  %i.p = load i32, ptr @hf_x11_struct_xkb_KTSetMapEntry_virtualMods, align 4
  %i.q = load i32, ptr @ett_x11_rectangle, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef @struct_xkb_KTSetMapEntry.virtualMods_bits, i32 noundef %3) ; 0 uses
  %i.s = load i32, ptr %1, align 4
  %i.t = add i32 %i.s, 2                          ; 2 uses
  store i32 %i.t, ptr %1, align 4
  %i.u = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_SASetMods(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_x11_struct_xkb_SASetMods, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 8, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 7 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_SASetMods_type, align 4
  %i.g = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %3) ; 0 uses
  %i.h = load i32, ptr %1, align 4
  %i.i = load i32, ptr @hf_x11_struct_xkb_SASetMods_flags, align 4
  %i.j = load i32, ptr @ett_x11_rectangle, align 4
  %i.k = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.j, ptr noundef @struct_xkb_SASetMods.flags_bits, i32 noundef %3) ; 0 uses
  %i.l = load i32, ptr %1, align 4
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %1, align 4
  %i.n = load i32, ptr @hf_x11_struct_xkb_SASetMods_mask, align 4
  %i.o = load i32, ptr @ett_x11_rectangle, align 4
  %i.p = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef @struct_xkb_SASetMods.mask_bits, i32 noundef %3) ; 0 uses
  %i.q = load i32, ptr %1, align 4
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %1, align 4
  %i.s = load i32, ptr @hf_x11_struct_xkb_SASetMods_realMods, align 4
  %i.t = load i32, ptr @ett_x11_rectangle, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef @struct_xkb_SASetMods.realMods_bits, i32 noundef %3) ; 0 uses
  %i.v = load i32, ptr %1, align 4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %1, align 4
  %i.x = load i32, ptr @hf_x11_struct_xkb_SASetMods_vmodsHigh, align 4
  %i.y = load i32, ptr @ett_x11_rectangle, align 4
  %i.z = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, ptr noundef @struct_xkb_SASetMods.vmodsHigh_bits, i32 noundef %3) ; 0 uses
  %i.aa = load i32, ptr %1, align 4
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %1, align 4
  %i.ac = load i32, ptr @hf_x11_struct_xkb_SASetMods_vmodsLow, align 4
  %i.ad = load i32, ptr @ett_x11_rectangle, align 4
  %i.ae = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef @struct_xkb_SASetMods.vmodsLow_bits, i32 noundef %3) ; 0 uses
  %i.af = load i32, ptr %1, align 4
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %1, align 4
  %i.ah = load i32, ptr @hf_x11_unused, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr %1, align 4
  %i.ak = add i32 %i.aj, 2
  store i32 %i.ak, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_SASetControls(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_x11_struct_xkb_SASetControls, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 8, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 5 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_SASetControls_type, align 4
  %i.g = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %3) ; 0 uses
  %i.h = load i32, ptr @hf_x11_unused, align 4
  %i.i = load i32, ptr %1, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr %1, align 4
  %i.l = add i32 %i.k, 3                          ; 2 uses
  store i32 %i.l, ptr %1, align 4
  %i.m = load i32, ptr @hf_x11_struct_xkb_SASetControls_boolCtrlsHigh, align 4
  %i.n = load i32, ptr @ett_x11_rectangle, align 4
  %i.o = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n, ptr noundef @struct_xkb_SASetControls.boolCtrlsHigh_bits, i32 noundef %3) ; 0 uses
  %i.p = load i32, ptr %1, align 4
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %1, align 4
  %i.r = load i32, ptr @hf_x11_struct_xkb_SASetControls_boolCtrlsLow, align 4
  %i.s = load i32, ptr @ett_x11_rectangle, align 4
  %i.t = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s, ptr noundef @struct_xkb_SASetControls.boolCtrlsLow_bits, i32 noundef %3) ; 0 uses
  %i.u = load i32, ptr %1, align 4
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %1, align 4
  %i.w = load i32, ptr @hf_x11_unused, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr %1, align 4
  %i.z = add i32 %i.y, 2
  store i32 %i.z, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_SymInterpret(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.al, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.034 = phi i32 [ %i.am, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_SymInterpret, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 16, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 6 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_SymInterpret_sym, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 4                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_SymInterpret_mods, align 4
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @struct_xkb_SymInterpret.mods_bits, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %1, align 4
  %i.p = load i32, ptr @hf_x11_struct_xkb_SymInterpret_match, align 4
  %i.q = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.p, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = load i32, ptr @hf_x11_struct_xkb_SymInterpret_virtualMod, align 4
  %i.t = load i32, ptr @ett_x11_rectangle, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef @struct_xkb_SymInterpret.virtualMod_bits, i32 noundef %3) ; 0 uses
  %i.v = load i32, ptr %1, align 4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %1, align 4
  %i.x = load i32, ptr @hf_x11_struct_xkb_SymInterpret_flags, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.z = load i32, ptr %1, align 4
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.aa, ptr %1, align 4
  %i.ab = load i32, ptr @hf_x11_struct_xkb_SIAction, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 8, i32 noundef 0)
  %i.ad = load i32, ptr @ett_x11_rectangle, align 4
  %i.ae = tail call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr @hf_x11_struct_xkb_SIAction_type, align 4
  %i.ag = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %3) ; 0 uses
  %i.ah = load i32, ptr @hf_x11_struct_xkb_SIAction_data, align 4
  %i.ai = load i32, ptr %1, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ai, i32 noundef 7, i32 noundef %3) ; 0 uses
  %i.ak = load i32, ptr %1, align 4
  %i.al = add i32 %i.ak, 7                        ; 2 uses
  store i32 %i.al, ptr %1, align 4
  %i.am = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_ModDef(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65026) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.u, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.021 = phi i32 [ %i.v, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_ModDef, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 4, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 3 uses
  %i.f = load i32, ptr %1, align 4
  %i.g = load i32, ptr @hf_x11_struct_xkb_ModDef_mask, align 4
  %i.h = load i32, ptr @ett_x11_rectangle, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, ptr noundef @struct_xkb_ModDef.mask_bits, i32 noundef %3) ; 0 uses
  %i.j = load i32, ptr %1, align 4
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %1, align 4
  %i.l = load i32, ptr @hf_x11_struct_xkb_ModDef_realMods, align 4
  %i.m = load i32, ptr @ett_x11_rectangle, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, ptr noundef @struct_xkb_ModDef.realMods_bits, i32 noundef %3) ; 0 uses
  %i.o = load i32, ptr %1, align 4
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %1, align 4
  %i.q = load i32, ptr @hf_x11_struct_xkb_ModDef_vmods, align 4
  %i.r = load i32, ptr @ett_x11_rectangle, align 4
  %i.s = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, ptr noundef @struct_xkb_ModDef.vmods_bits, i32 noundef %3) ; 0 uses
  %i.t = load i32, ptr %1, align 4
  %i.u = add i32 %i.t, 2                          ; 2 uses
  store i32 %i.u, ptr %1, align 4
  %i.v = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_IndicatorMap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.ah, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.042 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_IndicatorMap, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 12, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 8 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_flags, align 4
  %i.g = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %3) ; 0 uses
  %i.h = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_whichGroups, align 4
  %i.i = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.h, i32 noundef %3) ; 0 uses
  %i.j = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_groups, align 4
  %i.k = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.j, i32 noundef %3) ; 0 uses
  %i.l = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_whichMods, align 4
  %i.m = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.l, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_mods, align 4
  %i.p = load i32, ptr @ett_x11_rectangle, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef @struct_xkb_IndicatorMap.mods_bits, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %1, align 4
  %i.t = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_realMods, align 4
  %i.u = load i32, ptr @ett_x11_rectangle, align 4
  %i.v = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u, ptr noundef @struct_xkb_IndicatorMap.realMods_bits, i32 noundef %3) ; 0 uses
  %i.w = load i32, ptr %1, align 4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %1, align 4
  %i.y = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_vmods, align 4
  %i.z = load i32, ptr @ett_x11_rectangle, align 4
  %i.aa = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, ptr noundef @struct_xkb_IndicatorMap.vmods_bits, i32 noundef %3) ; 0 uses
  %i.ab = load i32, ptr %1, align 4
  %i.ac = add i32 %i.ab, 2                        ; 2 uses
  store i32 %i.ac, ptr %1, align 4
  %i.ad = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_ctrls, align 4
  %i.ae = load i32, ptr @ett_x11_rectangle, align 4
  %i.af = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef @struct_xkb_IndicatorMap.ctrls_bits, i32 noundef %3) ; 0 uses
  %i.ag = load i32, ptr %1, align 4
  %i.ah = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.ah, ptr %1, align 4
  %i.ai = add nuw nsw i32 %.042, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

end_hunk_2
begin_hunk_3_@xkbGetState_Reply:bb.a
  %i.cc = load i32, ptr %2, align 4
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %2, align 4
  %i.ce = load i32, ptr @hf_x11_xkb_GetState_reply_ptrBtnState, align 4
  %i.cf = load i32, ptr @ett_x11_rectangle, align 4
  %i.cg = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.cf, ptr noundef @xkbGetState_Reply.ptrBtnState_bits, i32 noundef %4) ; 0 uses
  %i.ch = load i32, ptr %2, align 4
  %i.ci = add i32 %i.ch, 2                        ; 2 uses
  store i32 %i.ci, ptr %2, align 4
  %i.cj = load i32, ptr @hf_x11_unused, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.ci, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cl = load i32, ptr %2, align 4
  %i.cm = add i32 %i.cl, 6
  store i32 %i.cm, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbGetControls_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15520)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_GetControls_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15521, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysDfltBtn, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr @hf_x11_xkb_GetControls_reply_numGroups, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %2, align 4
  %i.ac = load i32, ptr @hf_x11_xkb_GetControls_reply_groupsWrap, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ae = load i32, ptr %2, align 4
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %2, align 4
  %i.ag = load i32, ptr @hf_x11_xkb_GetControls_reply_internalModsMask, align 4
  %i.ah = load i32, ptr @ett_x11_rectangle, align 4
  %i.ai = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef @xkbGetControls_Reply.internalModsMask_bits, i32 noundef %4) ; 0 uses
  %i.aj = load i32, ptr %2, align 4
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %2, align 4
  %i.al = load i32, ptr @hf_x11_xkb_GetControls_reply_ignoreLockModsMask, align 4
  %i.am = load i32, ptr @ett_x11_rectangle, align 4
  %i.an = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am, ptr noundef @xkbGetControls_Reply.ignoreLockModsMask_bits, i32 noundef %4) ; 0 uses
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %2, align 4
  %i.aq = load i32, ptr @hf_x11_xkb_GetControls_reply_internalModsRealMods, align 4
  %i.ar = load i32, ptr @ett_x11_rectangle, align 4
  %i.as = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef @xkbGetControls_Reply.internalModsRealMods_bits, i32 noundef %4) ; 0 uses
  %i.at = load i32, ptr %2, align 4
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr %2, align 4
  %i.av = load i32, ptr @hf_x11_xkb_GetControls_reply_ignoreLockModsRealMods, align 4
  %i.aw = load i32, ptr @ett_x11_rectangle, align 4
  %i.ax = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef @xkbGetControls_Reply.ignoreLockModsRealMods_bits, i32 noundef %4) ; 0 uses
  %i.ay = load i32, ptr %2, align 4
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %2, align 4
  %i.ba = load i32, ptr @hf_x11_unused, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.az, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bc = load i32, ptr %2, align 4
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %2, align 4
  %i.be = load i32, ptr @hf_x11_xkb_GetControls_reply_internalModsVmods, align 4
  %i.bf = load i32, ptr @ett_x11_rectangle, align 4
  %i.bg = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, ptr noundef @xkbGetControls_Reply.internalModsVmods_bits, i32 noundef %4) ; 0 uses
  %i.bh = load i32, ptr %2, align 4
  %i.bi = add i32 %i.bh, 2                        ; 2 uses
  store i32 %i.bi, ptr %2, align 4
  %i.bj = load i32, ptr @hf_x11_xkb_GetControls_reply_ignoreLockModsVmods, align 4
  %i.bk = load i32, ptr @ett_x11_rectangle, align 4
  %i.bl = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef @xkbGetControls_Reply.ignoreLockModsVmods_bits, i32 noundef %4) ; 0 uses
  %i.bm = load i32, ptr %2, align 4
  %i.bn = add i32 %i.bm, 2                        ; 2 uses
  store i32 %i.bn, ptr %2, align 4
  %i.bo = load i32, ptr @hf_x11_xkb_GetControls_reply_repeatDelay, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bn, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bq = load i32, ptr %2, align 4
  %i.br = add i32 %i.bq, 2                        ; 2 uses
  store i32 %i.br, ptr %2, align 4
  %i.bs = load i32, ptr @hf_x11_xkb_GetControls_reply_repeatInterval, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bs, ptr noundef %0, i32 noundef %i.br, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bu = load i32, ptr %2, align 4
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  store i32 %i.bv, ptr %2, align 4
  %i.bw = load i32, ptr @hf_x11_xkb_GetControls_reply_slowKeysDelay, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bv, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.by = load i32, ptr %2, align 4
  %i.bz = add i32 %i.by, 2                        ; 2 uses
  store i32 %i.bz, ptr %2, align 4
  %i.ca = load i32, ptr @hf_x11_xkb_GetControls_reply_debounceDelay, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cc = load i32, ptr %2, align 4
  %i.cd = add i32 %i.cc, 2                        ; 2 uses
  store i32 %i.cd, ptr %2, align 4
  %i.ce = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysDelay, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.cd, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %2, align 4
  %i.ch = add i32 %i.cg, 2                        ; 2 uses
  store i32 %i.ch, ptr %2, align 4
  %i.ci = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysInterval, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ck = load i32, ptr %2, align 4
  %i.cl = add i32 %i.ck, 2                        ; 2 uses
  store i32 %i.cl, ptr %2, align 4
  %i.cm = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysTimeToMax, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.co = load i32, ptr %2, align 4
  %i.cp = add i32 %i.co, 2                        ; 2 uses
  store i32 %i.cp, ptr %2, align 4
  %i.cq = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysMaxSpeed, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cq, ptr noundef %0, i32 noundef %i.cp, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cs = load i32, ptr %2, align 4
  %i.ct = add i32 %i.cs, 2                        ; 2 uses
  store i32 %i.ct, ptr %2, align 4
  %i.cu = load i32, ptr @hf_x11_xkb_GetControls_reply_mouseKeysCurve, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ct, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cw = load i32, ptr %2, align 4
  %i.cx = add i32 %i.cw, 2                        ; 2 uses
  store i32 %i.cx, ptr %2, align 4
  %i.cy = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXOption, align 4
  %i.cz = load i32, ptr @ett_x11_rectangle, align 4
  %i.da = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.cx, i32 noundef %i.cy, i32 noundef %i.cz, ptr noundef @xkbGetControls_Reply.accessXOption_bits, i32 noundef %4) ; 0 uses
  %i.db = load i32, ptr %2, align 4
  %i.dc = add i32 %i.db, 2                        ; 2 uses
  store i32 %i.dc, ptr %2, align 4
  %i.dd = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXTimeout, align 4
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.dc, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.df = load i32, ptr %2, align 4
  %i.dg = add i32 %i.df, 2                        ; 2 uses
  store i32 %i.dg, ptr %2, align 4
  %i.dh = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXTimeoutOptionsMask, align 4
  %i.di = load i32, ptr @ett_x11_rectangle, align 4
  %i.dj = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dh, i32 noundef %i.di, ptr noundef @xkbGetControls_Reply.accessXTimeoutOptionsMask_bits, i32 noundef %4) ; 0 uses
  %i.dk = load i32, ptr %2, align 4
  %i.dl = add i32 %i.dk, 2                        ; 2 uses
  store i32 %i.dl, ptr %2, align 4
  %i.dm = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXTimeoutOptionsValues, align 4
  %i.dn = load i32, ptr @ett_x11_rectangle, align 4
  %i.do = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn, ptr noundef @xkbGetControls_Reply.accessXTimeoutOptionsValues_bits, i32 noundef %4) ; 0 uses
  %i.dp = load i32, ptr %2, align 4
  %i.dq = add i32 %i.dp, 2                        ; 2 uses
  store i32 %i.dq, ptr %2, align 4
  %i.dr = load i32, ptr @hf_x11_unused, align 4
  %i.ds = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dr, ptr noundef %0, i32 noundef %i.dq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dt = load i32, ptr %2, align 4
  %i.du = add i32 %i.dt, 2                        ; 2 uses
  store i32 %i.du, ptr %2, align 4
  %i.dv = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXTimeoutMask, align 4
  %i.dw = load i32, ptr @ett_x11_rectangle, align 4
  %i.dx = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dw, ptr noundef @xkbGetControls_Reply.accessXTimeoutMask_bits, i32 noundef %4) ; 0 uses
  %i.dy = load i32, ptr %2, align 4
  %i.dz = add i32 %i.dy, 4                        ; 2 uses
  store i32 %i.dz, ptr %2, align 4
  %i.ea = load i32, ptr @hf_x11_xkb_GetControls_reply_accessXTimeoutValues, align 4
  %i.eb = load i32, ptr @ett_x11_rectangle, align 4
  %i.ec = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.dz, i32 noundef %i.ea, i32 noundef %i.eb, ptr noundef @xkbGetControls_Reply.accessXTimeoutValues_bits, i32 noundef %4) ; 0 uses
  %i.ed = load i32, ptr %2, align 4
  %i.ee = add i32 %i.ed, 4                        ; 2 uses
  store i32 %i.ee, ptr %2, align 4
  %i.ef = load i32, ptr @hf_x11_xkb_GetControls_reply_enabledControls, align 4
  %i.eg = load i32, ptr @ett_x11_rectangle, align 4
  %i.eh = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ee, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef @xkbGetControls_Reply.enabledControls_bits, i32 noundef %4) ; 0 uses
  %i.ei = load i32, ptr %2, align 4
  %i.ej = add i32 %i.ei, 4                        ; 2 uses
  store i32 %i.ej, ptr %2, align 4
  %i.ek = load i32, ptr @hf_x11_xkb_GetControls_reply_perKeyRepeat, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.ej, i32 noundef 32, i32 noundef %4) ; 0 uses
  %i.em = load i32, ptr %2, align 4
  %i.en = add i32 %i.em, 32
  store i32 %i.en, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbGetMap_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15522)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_GetMap_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15523, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_unused, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 2                          ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr @hf_x11_xkb_GetMap_reply_minKeyCode, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %2, align 4
  %i.ac = load i32, ptr @hf_x11_xkb_GetMap_reply_maxKeyCode, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ae = load i32, ptr %2, align 4
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %2, align 4
  %i.ag = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.af, i32 noundef %4)
  %i.ah = zext i16 %i.ag to i32                   ; 8 uses
  %i.ai = load i32, ptr %2, align 4
  %i.aj = load i32, ptr @hf_x11_xkb_GetMap_reply_present, align 4
  %i.ak = load i32, ptr @ett_x11_rectangle, align 4
  %i.al = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef @xkbGetMap_Reply.present_bits, i32 noundef %4) ; 0 uses
  %i.am = load i32, ptr %2, align 4
  %i.an = add i32 %i.am, 2                        ; 2 uses
  store i32 %i.an, ptr %2, align 4
  %i.ao = load i32, ptr @hf_x11_xkb_GetMap_reply_firstType, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.aq = load i32, ptr %2, align 4
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %2, align 4
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ar)
  %i.at = load i32, ptr @hf_x11_xkb_GetMap_reply_nTypes, align 4
  %i.au = load i32, ptr %2, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.aw = load i32, ptr %2, align 4
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %2, align 4
  %i.ay = load i32, ptr @hf_x11_xkb_GetMap_reply_totalTypes, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ba = load i32, ptr %2, align 4
  %i.bb = add i32 %i.ba, 1                        ; 2 uses
  store i32 %i.bb, ptr %2, align 4
  %i.bc = load i32, ptr @hf_x11_xkb_GetMap_reply_firstKeySym, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.be = load i32, ptr %2, align 4
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %2, align 4
  %i.bg = load i32, ptr @hf_x11_xkb_GetMap_reply_totalSyms, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bi = load i32, ptr %2, align 4
  %i.bj = add i32 %i.bi, 2                        ; 2 uses
  store i32 %i.bj, ptr %2, align 4
  %i.bk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bj)
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i32, ptr @hf_x11_xkb_GetMap_reply_nKeySyms, align 4
  %i.bn = load i32, ptr %2, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bn, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bp = load i32, ptr %2, align 4
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %2, align 4
  %i.br = load i32, ptr @hf_x11_xkb_GetMap_reply_firstKeyAction, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bt = load i32, ptr %2, align 4
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  store i32 %i.bu, ptr %2, align 4
  %i.bv = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.bu, i32 noundef %4)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = load i32, ptr @hf_x11_xkb_GetMap_reply_totalActions, align 4
  %i.by = load i32, ptr %2, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.by, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ca = load i32, ptr %2, align 4
  %i.cb = add i32 %i.ca, 2                        ; 2 uses
  store i32 %i.cb, ptr %2, align 4
  %i.cc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cb)
  %i.cd = load i32, ptr @hf_x11_xkb_GetMap_reply_nKeyActions, align 4
  %i.ce = load i32, ptr %2, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.ce, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %2, align 4
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 %i.ch, ptr %2, align 4
  %i.ci = load i32, ptr @hf_x11_xkb_GetMap_reply_firstKeyBehavior, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ck = load i32, ptr %2, align 4
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %2, align 4
  %i.cm = load i32, ptr @hf_x11_xkb_GetMap_reply_nKeyBehaviors, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.co = load i32, ptr %2, align 4
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %2, align 4
  %i.cq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cp)
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i32, ptr @hf_x11_xkb_GetMap_reply_totalKeyBehaviors, align 4
  %i.ct = load i32, ptr %2, align 4
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cv = load i32, ptr %2, align 4
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cw, ptr %2, align 4
  %i.cx = load i32, ptr @hf_x11_xkb_GetMap_reply_firstKeyExplicit, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cw, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cz = load i32, ptr %2, align 4
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.da, ptr %2, align 4
  %i.db = load i32, ptr @hf_x11_xkb_GetMap_reply_nKeyExplicit, align 4
  %i.dc = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.da, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dd = load i32, ptr %2, align 4
  %i.de = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.de, ptr %2, align 4
  %i.df = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.de)
  %i.dg = zext i8 %i.df to i32
  %i.dh = load i32, ptr @hf_x11_xkb_GetMap_reply_totalKeyExplicit, align 4
  %i.di = load i32, ptr %2, align 4
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.di, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dk = load i32, ptr %2, align 4
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  store i32 %i.dl, ptr %2, align 4
  %i.dm = load i32, ptr @hf_x11_xkb_GetMap_reply_firstModMapKey, align 4
  %i.dn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.dl, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.do = load i32, ptr %2, align 4
  %i.dp = add i32 %i.do, 1                        ; 2 uses
  store i32 %i.dp, ptr %2, align 4
  %i.dq = load i32, ptr @hf_x11_xkb_GetMap_reply_nModMapKeys, align 4
  %i.dr = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dq, ptr noundef %0, i32 noundef %i.dp, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ds = load i32, ptr %2, align 4
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %2, align 4
  %i.du = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dt)
  %i.dv = zext i8 %i.du to i32
  %i.dw = load i32, ptr @hf_x11_xkb_GetMap_reply_totalModMapKeys, align 4
  %i.dx = load i32, ptr %2, align 4
  %i.dy = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.dx, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dz = load i32, ptr %2, align 4
  %i.ea = add i32 %i.dz, 1                        ; 2 uses
  store i32 %i.ea, ptr %2, align 4
  %i.eb = load i32, ptr @hf_x11_xkb_GetMap_reply_firstVModMapKey, align 4
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.eb, ptr noundef %0, i32 noundef %i.ea, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ed = load i32, ptr %2, align 4
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  store i32 %i.ee, ptr %2, align 4
  %i.ef = load i32, ptr @hf_x11_xkb_GetMap_reply_nVModMapKeys, align 4
  %i.eg = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.ee, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.eh = load i32, ptr %2, align 4
  %i.ei = add i32 %i.eh, 1                        ; 2 uses
  store i32 %i.ei, ptr %2, align 4
  %i.ej = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ei)
  %i.ek = zext i8 %i.ej to i32
  %i.el = load i32, ptr @hf_x11_xkb_GetMap_reply_totalVModMapKeys, align 4
  %i.em = load i32, ptr %2, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.em, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.eo = load i32, ptr %2, align 4
  %i.ep = add i32 %i.eo, 1                        ; 2 uses
  store i32 %i.ep, ptr %2, align 4
  %i.eq = load i32, ptr @hf_x11_unused, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.ep, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr %2, align 4
  %i.et = add i32 %i.es, 1                        ; 2 uses
  store i32 %i.et, ptr %2, align 4
  %i.eu = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.et, i32 noundef %4)
  %i.ev = load i32, ptr %2, align 4
  %i.ew = load i32, ptr @hf_x11_xkb_GetMap_reply_virtualMods, align 4
  %i.ex = load i32, ptr @ett_x11_rectangle, align 4
  %i.ey = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef %i.ex, ptr noundef @xkbGetMap_Reply.virtualMods_bits, i32 noundef %4) ; 0 uses
  %i.ez = load i32, ptr %2, align 4
  %i.fa = add i32 %i.ez, 2
  store i32 %i.fa, ptr %2, align 4
  %i.fb = and i32 %i.ah, 1
  %.not = icmp eq i32 %i.fb, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fc = zext i8 %i.as to i32
  tail call fastcc void @struct_xkb_KeyType(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.fc)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.fd = and i32 %i.ah, 2
end_hunk_3
begin_hunk_4_@xkbGetNames_Reply:bb.a
  br i1 %exitcond.not.i, label %struct_xkb_KeyName.exit, label %.lr.ph.i256, !llvm.loop !7

struct_xkb_KeyName.exit:                          ; preds = %.lr.ph.i256, %listOfCard32.exit252
  %i.ib = and i32 %i.u, 1024
  %.not218 = icmp eq i32 %i.ib, 0
  br i1 %.not218, label %bb.t, label %bb.s

bb.s:                                             ; preds = %struct_xkb_KeyName.exit
  tail call fastcc void @struct_xkb_KeyAlias(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.cd)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %struct_xkb_KeyName.exit
  %i.ic = and i32 %i.u, 8192
  %.not219 = icmp eq i32 %i.ic, 0
  br i1 %.not219, label %listOfCard32.exit264, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.id = load i32, ptr @hf_x11_xkb_GetNames_reply_RGNames_radioGroupNames, align 4
  %i.ie = load i32, ptr @hf_x11_xkb_GetNames_reply_RGNames_radioGroupNames_item, align 4
  %i.if = shl nuw nsw i32 %i.bw, 2
  %i.ig = load i32, ptr %2, align 4
  %i.ih = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.id, ptr noundef %0, i32 noundef %i.ig, i32 noundef %i.if, i32 noundef %4)
  %i.ii = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.ij = tail call ptr @proto_item_add_subtree(ptr noundef %i.ih, i32 noundef %i.ii)
  %.not14.i258 = icmp eq i8 %i.bv, 0
  br i1 %.not14.i258, label %listOfCard32.exit264, label %.lr.ph.preheader.i259

.lr.ph.preheader.i259:                            ; preds = %bb.u
  %.pre.i260 = load i32, ptr %2, align 4
  br label %.lr.ph.i261

.lr.ph.i261:                                      ; preds = %.lr.ph.i261, %.lr.ph.preheader.i259
  %i.ik = phi i32 [ %i.io, %.lr.ph.i261 ], [ %.pre.i260, %.lr.ph.preheader.i259 ]
  %.015.i262 = phi i32 [ %i.il, %.lr.ph.i261 ], [ %i.bw, %.lr.ph.preheader.i259 ]
  %i.il = add nsw i32 %.015.i262, -1              ; 2 uses
  %i.im = tail call ptr @proto_tree_add_item(ptr noundef %i.ij, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.ik, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.in = load i32, ptr %2, align 4
  %i.io = add i32 %i.in, 4                        ; 2 uses
  store i32 %i.io, ptr %2, align 4
  %.not.i263 = icmp eq i32 %i.il, 0
  br i1 %.not.i263, label %listOfCard32.exit264, label %.lr.ph.i261, !llvm.loop !1

listOfCard32.exit264:                             ; preds = %.lr.ph.i261, %bb.u, %bb.t
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbPerClientFlags_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15534)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_PerClientFlags_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15535, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xkb_PerClientFlags_reply_supported, align 4
  %i.v = load i32, ptr @ett_x11_rectangle, align 4
  %i.w = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef @xkbPerClientFlags_Reply.supported_bits, i32 noundef %4) ; 0 uses
  %i.x = load i32, ptr %2, align 4
  %i.y = add i32 %i.x, 4                          ; 2 uses
  store i32 %i.y, ptr %2, align 4
  %i.z = load i32, ptr @hf_x11_xkb_PerClientFlags_reply_value, align 4
  %i.aa = load i32, ptr @ett_x11_rectangle, align 4
  %i.ab = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef @xkbPerClientFlags_Reply.value_bits, i32 noundef %4) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = add i32 %i.ac, 4                        ; 2 uses
  store i32 %i.ad, ptr %2, align 4
  %i.ae = load i32, ptr @hf_x11_xkb_PerClientFlags_reply_autoCtrls, align 4
  %i.af = load i32, ptr @ett_x11_rectangle, align 4
  %i.ag = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef @xkbPerClientFlags_Reply.autoCtrls_bits, i32 noundef %4) ; 0 uses
  %i.ah = load i32, ptr %2, align 4
  %i.ai = add i32 %i.ah, 4                        ; 2 uses
  store i32 %i.ai, ptr %2, align 4
  %i.aj = load i32, ptr @hf_x11_xkb_PerClientFlags_reply_autoCtrlsValues, align 4
  %i.ak = load i32, ptr @ett_x11_rectangle, align 4
  %i.al = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef @xkbPerClientFlags_Reply.autoCtrlsValues_bits, i32 noundef %4) ; 0 uses
  %i.am = load i32, ptr %2, align 4
  %i.an = add i32 %i.am, 4                        ; 2 uses
  store i32 %i.an, ptr %2, align 4
  %i.ao = load i32, ptr @hf_x11_unused, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr %2, align 4
  %i.ar = add i32 %i.aq, 8
  store i32 %i.ar, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbListComponents_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15536)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_ListComponents_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15537, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.t, i32 noundef %4)
  %i.v = zext i16 %i.u to i32
  %i.w = load i32, ptr @hf_x11_xkb_ListComponents_reply_nKeymaps, align 4
  %i.x = load i32, ptr %2, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.z = load i32, ptr %2, align 4
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  store i32 %i.aa, ptr %2, align 4
  %i.ab = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.aa, i32 noundef %4)
  %i.ac = zext i16 %i.ab to i32
  %i.ad = load i32, ptr @hf_x11_xkb_ListComponents_reply_nKeycodes, align 4
  %i.ae = load i32, ptr %2, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ae, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ag = load i32, ptr %2, align 4
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  store i32 %i.ah, ptr %2, align 4
  %i.ai = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ah, i32 noundef %4)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = load i32, ptr @hf_x11_xkb_ListComponents_reply_nTypes, align 4
  %i.al = load i32, ptr %2, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = add i32 %i.an, 2                        ; 2 uses
  store i32 %i.ao, ptr %2, align 4
  %i.ap = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ao, i32 noundef %4)
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load i32, ptr @hf_x11_xkb_ListComponents_reply_nCompatMaps, align 4
  %i.as = load i32, ptr %2, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.as, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.au = load i32, ptr %2, align 4
  %i.av = add i32 %i.au, 2                        ; 2 uses
  store i32 %i.av, ptr %2, align 4
  %i.aw = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.av, i32 noundef %4)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i32, ptr @hf_x11_xkb_ListComponents_reply_nSymbols, align 4
  %i.az = load i32, ptr %2, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.az, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bb = load i32, ptr %2, align 4
  %i.bc = add i32 %i.bb, 2                        ; 2 uses
  store i32 %i.bc, ptr %2, align 4
  %i.bd = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.bc, i32 noundef %4)
  %i.be = zext i16 %i.bd to i32
  %i.bf = load i32, ptr @hf_x11_xkb_ListComponents_reply_nGeometries, align 4
  %i.bg = load i32, ptr %2, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bi = load i32, ptr %2, align 4
  %i.bj = add i32 %i.bi, 2                        ; 2 uses
  store i32 %i.bj, ptr %2, align 4
  %i.bk = load i32, ptr @hf_x11_xkb_ListComponents_reply_extra, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bm = load i32, ptr %2, align 4
  %i.bn = add i32 %i.bm, 2                        ; 2 uses
  store i32 %i.bn, ptr %2, align 4
  %i.bo = load i32, ptr @hf_x11_unused, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bn, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr %2, align 4
  %i.br = add i32 %i.bq, 10
  store i32 %i.br, ptr %2, align 4
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.v)
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.ac)
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.aj)
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.aq)
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.ax)
  tail call fastcc void @struct_xkb_Listing(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.be)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbGetKbdByName_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15538)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15539, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_minKeyCode, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_maxKeyCode, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %2, align 4
  %i.ac = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_loaded, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ae = load i32, ptr %2, align 4
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %2, align 4
  %i.ag = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_newKeyboard, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ai = load i32, ptr %2, align 4
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %2, align 4
  %i.ak = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_found, align 4
  %i.al = load i32, ptr @ett_x11_rectangle, align 4
  %i.am = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, ptr noundef @xkbGetKbdByName_Reply.found_bits, i32 noundef %4) ; 0 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = add i32 %i.an, 2                        ; 2 uses
  store i32 %i.ao, ptr %2, align 4
  %i.ap = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ao, i32 noundef %4)
  %i.aq = zext i16 %i.ap to i32                   ; 5 uses
  %i.ar = load i32, ptr %2, align 4
  %i.as = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_reported, align 4
  %i.at = load i32, ptr @ett_x11_rectangle, align 4
  %i.au = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, ptr noundef @xkbGetKbdByName_Reply.reported_bits, i32 noundef %4) ; 0 uses
  %i.av = load i32, ptr %2, align 4
  %i.aw = add i32 %i.av, 2                        ; 2 uses
  store i32 %i.aw, ptr %2, align 4
  %i.ax = load i32, ptr @hf_x11_unused, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr %2, align 4
  %i.ba = add i32 %i.az, 16                       ; 2 uses
  store i32 %i.ba, ptr %2, align 4
  %i.bb = and i32 %i.aq, 13
  %or.cond739 = icmp eq i32 %i.bb, 0
  br i1 %or.cond739, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_getmap_type, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.ba, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.be = load i32, ptr %2, align 4
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %2, align 4
  %i.bg = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_typeDeviceID, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bi = load i32, ptr %2, align 4
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %2, align 4
  %i.bk = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_getmap_sequence, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bm = load i32, ptr %2, align 4
  %i.bn = add i32 %i.bm, 2                        ; 2 uses
  store i32 %i.bn, ptr %2, align 4
  %i.bo = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_getmap_length, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bn, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bq = load i32, ptr %2, align 4
  %i.br = add i32 %i.bq, 4                        ; 2 uses
  store i32 %i.br, ptr %2, align 4
  %i.bs = load i32, ptr @hf_x11_unused, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bs, ptr noundef %0, i32 noundef %i.br, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bu = load i32, ptr %2, align 4
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  store i32 %i.bv, ptr %2, align 4
  %i.bw = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_typeMinKeyCode, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bv, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.by = load i32, ptr %2, align 4
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.bz, ptr %2, align 4
  %i.ca = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_typeMaxKeyCode, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cc = load i32, ptr %2, align 4
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %2, align 4
  %i.ce = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.cd, i32 noundef %4)
  %i.cf = zext i16 %i.ce to i32                   ; 8 uses
  %i.cg = load i32, ptr %2, align 4
  %i.ch = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_present, align 4
  %i.ci = load i32, ptr @ett_x11_rectangle, align 4
  %i.cj = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.cg, i32 noundef %i.ch, i32 noundef %i.ci, ptr noundef @xkbGetKbdByName_Reply.present_bits, i32 noundef %4) ; 0 uses
  %i.ck = load i32, ptr %2, align 4
  %i.cl = add i32 %i.ck, 2                        ; 2 uses
  store i32 %i.cl, ptr %2, align 4
  %i.cm = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_firstType, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.co = load i32, ptr %2, align 4
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %2, align 4
  %i.cq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cp)
  %i.cr = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_nTypes, align 4
  %i.cs = load i32, ptr %2, align 4
  %i.ct = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cu = load i32, ptr %2, align 4
  %i.cv = add i32 %i.cu, 1                        ; 2 uses
  store i32 %i.cv, ptr %2, align 4
  %i.cw = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_totalTypes, align 4
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cv, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.cy = load i32, ptr %2, align 4
  %i.cz = add i32 %i.cy, 1                        ; 2 uses
  store i32 %i.cz, ptr %2, align 4
  %i.da = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_firstKeySym, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dc = load i32, ptr %2, align 4
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %2, align 4
  %i.de = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_totalSyms, align 4
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.dd, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.dg = load i32, ptr %2, align 4
  %i.dh = add i32 %i.dg, 2                        ; 2 uses
  store i32 %i.dh, ptr %2, align 4
  %i.di = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh)
  %i.dj = zext i8 %i.di to i32
  %i.dk = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_nKeySyms, align 4
  %i.dl = load i32, ptr %2, align 4
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dk, ptr noundef %0, i32 noundef %i.dl, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dn = load i32, ptr %2, align 4
  %i.do = add i32 %i.dn, 1                        ; 2 uses
  store i32 %i.do, ptr %2, align 4
  %i.dp = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_firstKeyAction, align 4
  %i.dq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dp, ptr noundef %0, i32 noundef %i.do, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.dr = load i32, ptr %2, align 4
  %i.ds = add i32 %i.dr, 1                        ; 2 uses
  store i32 %i.ds, ptr %2, align 4
  %i.dt = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ds, i32 noundef %4)
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_totalActions, align 4
  %i.dw = load i32, ptr %2, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.dw, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.dy = load i32, ptr %2, align 4
  %i.dz = add i32 %i.dy, 2                        ; 2 uses
  store i32 %i.dz, ptr %2, align 4
  %i.ea = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dz)
  %i.eb = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_nKeyActions, align 4
  %i.ec = load i32, ptr %2, align 4
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.eb, ptr noundef %0, i32 noundef %i.ec, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ee = load i32, ptr %2, align 4
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %2, align 4
  %i.eg = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_firstKeyBehavior, align 4
  %i.eh = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.ef, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ei = load i32, ptr %2, align 4
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  store i32 %i.ej, ptr %2, align 4
  %i.ek = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_nKeyBehaviors, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.ej, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.em = load i32, ptr %2, align 4
  %i.en = add i32 %i.em, 1                        ; 2 uses
  store i32 %i.en, ptr %2, align 4
  %i.eo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.en)
  %i.ep = zext i8 %i.eo to i32
  %i.eq = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_totalKeyBehaviors, align 4
  %i.er = load i32, ptr %2, align 4
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.er, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.et = load i32, ptr %2, align 4
  %i.eu = add i32 %i.et, 1                        ; 2 uses
  store i32 %i.eu, ptr %2, align 4
  %i.ev = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_firstKeyExplicit, align 4
  %i.ew = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ev, ptr noundef %0, i32 noundef %i.eu, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ex = load i32, ptr %2, align 4
  %i.ey = add i32 %i.ex, 1                        ; 2 uses
  store i32 %i.ey, ptr %2, align 4
  %i.ez = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_nKeyExplicit, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ez, ptr noundef %0, i32 noundef %i.ey, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.fb = load i32, ptr %2, align 4
  %i.fc = add i32 %i.fb, 1                        ; 2 uses
  store i32 %i.fc, ptr %2, align 4
  %i.fd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fc)
  %i.fe = zext i8 %i.fd to i32
  %i.ff = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Types_totalKeyExplicit, align 4
end_hunk_4
begin_hunk_5_@xkbGetKbdByName_Reply:bb.a
listOfCard32.exit784:                             ; preds = %.lr.ph.i781, %bb.ao, %listOfCard32.exit776
  %i.ut = and i32 %i.my, 512
  %.not735 = icmp eq i32 %i.ut, 0
  %.not.i785 = icmp eq i8 %i.om, 0
  %or.cond797 = select i1 %.not735, i1 true, i1 %.not.i785
  br i1 %or.cond797, label %struct_xkb_KeyName.exit, label %.lr.ph.preheader.i786

.lr.ph.preheader.i786:                            ; preds = %listOfCard32.exit784
  %.pre.i787 = load i32, ptr %2, align 4
  br label %.lr.ph.i788

.lr.ph.i788:                                      ; preds = %.lr.ph.i788, %.lr.ph.preheader.i786
  %i.uu = phi i32 [ %i.vd, %.lr.ph.i788 ], [ %.pre.i787, %.lr.ph.preheader.i786 ]
  %.010.i = phi i32 [ %i.ve, %.lr.ph.i788 ], [ 0, %.lr.ph.preheader.i786 ]
  %i.uv = load i32, ptr @hf_x11_struct_xkb_KeyName, align 4
  %i.uw = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.uv, ptr noundef %0, i32 noundef %i.uu, i32 noundef 4, i32 noundef 0)
  %i.ux = load i32, ptr @ett_x11_rectangle, align 4
  %i.uy = tail call ptr @proto_item_add_subtree(ptr noundef %i.uw, i32 noundef %i.ux)
  %i.uz = load i32, ptr @hf_x11_struct_xkb_KeyName_name, align 4
  %i.va = load i32, ptr %2, align 4
  %i.vb = tail call ptr @proto_tree_add_item(ptr noundef %i.uy, i32 noundef %i.uz, ptr noundef %0, i32 noundef %i.va, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.vc = load i32, ptr %2, align 4
  %i.vd = add i32 %i.vc, 4                        ; 2 uses
  store i32 %i.vd, ptr %2, align 4
  %i.ve = add nuw nsw i32 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ve, %i.on
  br i1 %exitcond.not.i, label %struct_xkb_KeyName.exit, label %.lr.ph.i788, !llvm.loop !7

struct_xkb_KeyName.exit:                          ; preds = %.lr.ph.i788, %listOfCard32.exit784
  %i.vf = and i32 %i.my, 1024
  %.not736 = icmp eq i32 %i.vf, 0
  br i1 %.not736, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %struct_xkb_KeyName.exit
  tail call fastcc void @struct_xkb_KeyAlias(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.ph)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %struct_xkb_KeyName.exit
  %i.vg = and i32 %i.my, 8192
  %.not737 = icmp eq i32 %i.vg, 0
  br i1 %.not737, label %listOfCard32.exit796, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.vh = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_KeyNames_RGNames_radioGroupNames, align 4
  %i.vi = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_KeyNames_RGNames_radioGroupNames_item, align 4
  %i.vj = shl nuw nsw i32 %i.pa, 2
  %i.vk = load i32, ptr %2, align 4
  %i.vl = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.vh, ptr noundef %0, i32 noundef %i.vk, i32 noundef %i.vj, i32 noundef %4)
  %i.vm = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.vn = tail call ptr @proto_item_add_subtree(ptr noundef %i.vl, i32 noundef %i.vm)
  %.not14.i790 = icmp eq i8 %i.oz, 0
  br i1 %.not14.i790, label %listOfCard32.exit796, label %.lr.ph.preheader.i791

.lr.ph.preheader.i791:                            ; preds = %bb.ar
  %.pre.i792 = load i32, ptr %2, align 4
  br label %.lr.ph.i793

.lr.ph.i793:                                      ; preds = %.lr.ph.i793, %.lr.ph.preheader.i791
  %i.vo = phi i32 [ %i.vs, %.lr.ph.i793 ], [ %.pre.i792, %.lr.ph.preheader.i791 ]
  %.015.i794 = phi i32 [ %i.vp, %.lr.ph.i793 ], [ %i.pa, %.lr.ph.preheader.i791 ]
  %i.vp = add nsw i32 %.015.i794, -1              ; 2 uses
  %i.vq = tail call ptr @proto_tree_add_item(ptr noundef %i.vn, i32 noundef %i.vi, ptr noundef %0, i32 noundef %i.vo, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.vr = load i32, ptr %2, align 4
  %i.vs = add i32 %i.vr, 4                        ; 2 uses
  store i32 %i.vs, ptr %2, align 4
  %.not.i795 = icmp eq i32 %i.vp, 0
  br i1 %.not.i795, label %listOfCard32.exit796, label %.lr.ph.i793, !llvm.loop !1

listOfCard32.exit796:                             ; preds = %.lr.ph.i793, %bb.ar, %bb.aq, %bb.w
  %i.vt = and i32 %i.aq, 64
  %.not738 = icmp eq i32 %i.vt, 0
  br i1 %.not738, label %bb.at, label %bb.as

bb.as:                                            ; preds = %listOfCard32.exit796
  %i.vu = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_geometry_type, align 4
  %i.vv = load i32, ptr %2, align 4
  %i.vw = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.vu, ptr noundef %0, i32 noundef %i.vv, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.vx = load i32, ptr %2, align 4
  %i.vy = add i32 %i.vx, 1                        ; 2 uses
  store i32 %i.vy, ptr %2, align 4
  %i.vz = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_geometryDeviceID, align 4
  %i.wa = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.vz, ptr noundef %0, i32 noundef %i.vy, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.wb = load i32, ptr %2, align 4
  %i.wc = add i32 %i.wb, 1                        ; 2 uses
  store i32 %i.wc, ptr %2, align 4
  %i.wd = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_geometry_sequence, align 4
  %i.we = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wd, ptr noundef %0, i32 noundef %i.wc, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.wf = load i32, ptr %2, align 4
  %i.wg = add i32 %i.wf, 2                        ; 2 uses
  store i32 %i.wg, ptr %2, align 4
  %i.wh = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_geometry_length, align 4
  %i.wi = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wh, ptr noundef %0, i32 noundef %i.wg, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.wj = load i32, ptr %2, align 4
  %i.wk = add i32 %i.wj, 4                        ; 2 uses
  store i32 %i.wk, ptr %2, align 4
  %i.wl = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_name, align 4
  %i.wm = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wl, ptr noundef %0, i32 noundef %i.wk, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.wn = load i32, ptr %2, align 4
  %i.wo = add i32 %i.wn, 4                        ; 2 uses
  store i32 %i.wo, ptr %2, align 4
  %i.wp = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_geometryFound, align 4
  %i.wq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wp, ptr noundef %0, i32 noundef %i.wo, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.wr = load i32, ptr %2, align 4
  %i.ws = add i32 %i.wr, 1                        ; 2 uses
  store i32 %i.ws, ptr %2, align 4
  %i.wt = load i32, ptr @hf_x11_unused, align 4
  %i.wu = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wt, ptr noundef %0, i32 noundef %i.ws, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.wv = load i32, ptr %2, align 4
  %i.ww = add i32 %i.wv, 1                        ; 2 uses
  store i32 %i.ww, ptr %2, align 4
  %i.wx = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_widthMM, align 4
  %i.wy = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.wx, ptr noundef %0, i32 noundef %i.ww, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.wz = load i32, ptr %2, align 4
  %i.xa = add i32 %i.wz, 2                        ; 2 uses
  store i32 %i.xa, ptr %2, align 4
  %i.xb = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_heightMM, align 4
  %i.xc = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xb, ptr noundef %0, i32 noundef %i.xa, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xd = load i32, ptr %2, align 4
  %i.xe = add i32 %i.xd, 2                        ; 2 uses
  store i32 %i.xe, ptr %2, align 4
  %i.xf = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nProperties, align 4
  %i.xg = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xf, ptr noundef %0, i32 noundef %i.xe, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xh = load i32, ptr %2, align 4
  %i.xi = add i32 %i.xh, 2                        ; 2 uses
  store i32 %i.xi, ptr %2, align 4
  %i.xj = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nColors, align 4
  %i.xk = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xj, ptr noundef %0, i32 noundef %i.xi, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xl = load i32, ptr %2, align 4
  %i.xm = add i32 %i.xl, 2                        ; 2 uses
  store i32 %i.xm, ptr %2, align 4
  %i.xn = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nShapes, align 4
  %i.xo = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xn, ptr noundef %0, i32 noundef %i.xm, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xp = load i32, ptr %2, align 4
  %i.xq = add i32 %i.xp, 2                        ; 2 uses
  store i32 %i.xq, ptr %2, align 4
  %i.xr = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nSections, align 4
  %i.xs = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xr, ptr noundef %0, i32 noundef %i.xq, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xt = load i32, ptr %2, align 4
  %i.xu = add i32 %i.xt, 2                        ; 2 uses
  store i32 %i.xu, ptr %2, align 4
  %i.xv = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nDoodads, align 4
  %i.xw = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xv, ptr noundef %0, i32 noundef %i.xu, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.xx = load i32, ptr %2, align 4
  %i.xy = add i32 %i.xx, 2                        ; 2 uses
  store i32 %i.xy, ptr %2, align 4
  %i.xz = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_nKeyAliases, align 4
  %i.ya = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.xz, ptr noundef %0, i32 noundef %i.xy, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.yb = load i32, ptr %2, align 4
  %i.yc = add i32 %i.yb, 2                        ; 2 uses
  store i32 %i.yc, ptr %2, align 4
  %i.yd = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_baseColorNdx, align 4
  %i.ye = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.yd, ptr noundef %0, i32 noundef %i.yc, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.yf = load i32, ptr %2, align 4
  %i.yg = add i32 %i.yf, 1                        ; 2 uses
  store i32 %i.yg, ptr %2, align 4
  %i.yh = load i32, ptr @hf_x11_xkb_GetKbdByName_reply_Geometry_labelColorNdx, align 4
  %i.yi = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.yh, ptr noundef %0, i32 noundef %i.yg, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.yj = load i32, ptr %2, align 4
  %i.yk = add i32 %i.yj, 1                        ; 3 uses
  store i32 %i.yk, ptr %2, align 4
  %i.yl = load i32, ptr @hf_x11_struct_xkb_CountedString16, align 4
  %i.ym = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.yk, i32 noundef %4)
  %i.yn = zext i16 %i.ym to i32
  %i.yo = add nuw nsw i32 %i.yn, 5
  %i.yp = and i32 %i.yo, 131068
  %i.yq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.yl, ptr noundef %0, i32 noundef %i.yk, i32 noundef %i.yp, i32 noundef 0)
  %i.yr = load i32, ptr @ett_x11_rectangle, align 4
  %i.ys = tail call ptr @proto_item_add_subtree(ptr noundef %i.yq, i32 noundef %i.yr) ; 3 uses
  %i.yt = load i32, ptr %2, align 4
  %i.yu = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.yt, i32 noundef %4)
  %i.yv = zext i16 %i.yu to i32                   ; 3 uses
  %i.yw = load i32, ptr @hf_x11_struct_xkb_CountedString16_length, align 4
  %i.yx = load i32, ptr %2, align 4
  %i.yy = tail call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.yw, ptr noundef %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.yz = load i32, ptr %2, align 4
  %i.za = add i32 %i.yz, 2                        ; 2 uses
  store i32 %i.za, ptr %2, align 4
  %i.zb = load i32, ptr @hf_x11_struct_xkb_CountedString16_string, align 4
  %i.zc = tail call i32 @llvm.umax.i32(i32 %i.yv, i32 1) ; 2 uses
  %i.zd = tail call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zb, ptr noundef %0, i32 noundef %i.za, i32 noundef %i.zc, i32 noundef %4) ; 0 uses
  %i.ze = load i32, ptr %2, align 4
  %i.zf = add i32 %i.ze, %i.zc                    ; 2 uses
  store i32 %i.zf, ptr %2, align 4
  %i.zg = load i32, ptr @hf_x11_struct_xkb_CountedString16_alignment_pad, align 4
  %i.zh = add nuw nsw i32 %i.yv, 5
  %i.zi = and i32 %i.zh, 131068
  %reass.sub.i = sub nsw i32 %i.zi, %i.yv
  %i.zj = tail call i32 @llvm.smax.i32(i32 %reass.sub.i, i32 3)
  %spec.store.select.i28.i = add nsw i32 %i.zj, -2 ; 2 uses
  %i.zk = tail call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zg, ptr noundef %0, i32 noundef %i.zf, i32 noundef %spec.store.select.i28.i, i32 noundef %4) ; 0 uses
  %i.zl = load i32, ptr %2, align 4
  %i.zm = add i32 %i.zl, %spec.store.select.i28.i
  store i32 %i.zm, ptr %2, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %listOfCard32.exit796
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbGetDeviceInfo_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15344)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_deviceID, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15541, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_present, align 4
  %i.v = load i32, ptr @ett_x11_rectangle, align 4
  %i.w = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef @xkbGetDeviceInfo_Reply.present_bits, i32 noundef %4) ; 0 uses
  %i.x = load i32, ptr %2, align 4
  %i.y = add i32 %i.x, 2                          ; 2 uses
  store i32 %i.y, ptr %2, align 4
  %i.z = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_supported, align 4
  %i.aa = load i32, ptr @ett_x11_rectangle, align 4
  %i.ab = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef @xkbGetDeviceInfo_Reply.supported_bits, i32 noundef %4) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = add i32 %i.ac, 2                        ; 2 uses
  store i32 %i.ad, ptr %2, align 4
  %i.ae = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_unsupported, align 4
  %i.af = load i32, ptr @ett_x11_rectangle, align 4
  %i.ag = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef @xkbGetDeviceInfo_Reply.unsupported_bits, i32 noundef %4) ; 0 uses
  %i.ah = load i32, ptr %2, align 4
  %i.ai = add i32 %i.ah, 2                        ; 2 uses
  store i32 %i.ai, ptr %2, align 4
  %i.aj = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ai, i32 noundef %4)
  %i.ak = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_nDeviceLedFBs, align 4
  %i.al = load i32, ptr %2, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = add i32 %i.an, 2                        ; 2 uses
  store i32 %i.ao, ptr %2, align 4
  %i.ap = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_firstBtnWanted, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.ar = load i32, ptr %2, align 4
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %2, align 4
  %i.at = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_nBtnsWanted, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.as, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.av = load i32, ptr %2, align 4
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %2, align 4
  %i.ax = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_firstBtnRtrn, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.az = load i32, ptr %2, align 4
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %2, align 4
  %i.bb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ba)
  %i.bc = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_nBtnsRtrn, align 4
  %i.bd = load i32, ptr %2, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bf = load i32, ptr %2, align 4
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %2, align 4
  %i.bh = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_totalBtns, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bg, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bj = load i32, ptr %2, align 4
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %2, align 4
  %i.bl = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_hasOwnState, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.bn = load i32, ptr %2, align 4
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %2, align 4
  %i.bp = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_dfltKbdFB, align 4
  %i.bq = tail call fastcc i32 @field16(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.bp, i32 noundef %4) ; 0 uses
  %i.br = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_dfltLedFB, align 4
  %i.bs = tail call fastcc i32 @field16(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.br, i32 noundef %4) ; 0 uses
  %i.bt = load i32, ptr @hf_x11_unused, align 4
  %i.bu = load i32, ptr %2, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = load i32, ptr %2, align 4
  %i.bx = add i32 %i.bw, 2                        ; 2 uses
  store i32 %i.bx, ptr %2, align 4
  %i.by = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_devType, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bx, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ca = load i32, ptr %2, align 4
  %i.cb = add i32 %i.ca, 4                        ; 2 uses
  store i32 %i.cb, ptr %2, align 4
  %i.cc = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.cb, i32 noundef %4)
  %i.cd = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_nameLen, align 4
  %i.ce = load i32, ptr %2, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.ce, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %2, align 4
  %i.ch = add i32 %i.cg, 2                        ; 2 uses
  store i32 %i.ch, ptr %2, align 4
  %i.ci = load i32, ptr @hf_x11_xkb_GetDeviceInfo_reply_name, align 4
  %i.cj = tail call i16 @llvm.umax.i16(i16 %i.cc, i16 1)
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %4) ; 0 uses
  %i.cm = load i32, ptr %2, align 4
  %i.cn = add i32 %i.cm, %i.ck                    ; 3 uses
  store i32 %i.cn, ptr %2, align 4
  %i.co = sub i32 0, %i.cn
  %i.cp = and i32 %i.co, 3                        ; 3 uses
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %pad_to_4_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cq = load i32, ptr @hf_x11_unused, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cq, ptr noundef %0, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr %2, align 4
  %i.ct = add i32 %i.cs, %i.cp
  store i32 %i.ct, ptr %2, align 4
  br label %pad_to_4_bytes.exit

pad_to_4_bytes.exit:                              ; preds = %bb.a, %bb.b
  %i.cu = zext i8 %i.bb to i32
  %i.cv = zext i16 %i.aj to i32
  tail call fastcc void @struct_xkb_Action(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.cu)
  tail call fastcc void @struct_xkb_DeviceLedInfo(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.cv)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbSetDebuggingFlags_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.15542)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_unused, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef @.str.15543, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_reply_currentFlags, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 4                          ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_reply_currentCtrls, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.aa = load i32, ptr %2, align 4
  %i.ab = add i32 %i.aa, 4                        ; 2 uses
  store i32 %i.ab, ptr %2, align 4
  %i.ac = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_reply_supportedFlags, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ae = load i32, ptr %2, align 4
  %i.af = add i32 %i.ae, 4                        ; 2 uses
  store i32 %i.af, ptr %2, align 4
  %i.ag = load i32, ptr @hf_x11_xkb_SetDebuggingFlags_reply_supportedCtrls, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ai = load i32, ptr %2, align 4
  %i.aj = add i32 %i.ai, 4                        ; 2 uses
  store i32 %i.aj, ptr %2, align 4
  %i.ak = load i32, ptr @hf_x11_unused, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr %2, align 4
  %i.an = add i32 %i.am, 8
  store i32 %i.an, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KeyType(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %struct_xkb_KTMapEntry.exit
  %.058 = phi i32 [ %i.cj, %struct_xkb_KTMapEntry.exit ], [ 0, %bb.a ]
  %i.a = load i32, ptr @hf_x11_struct_xkb_KeyType, align 4
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = add i32 %i.b, 5
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.c)
  %i.e = zext i8 %i.d to i32
end_hunk_5
