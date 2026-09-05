Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211-radiotap?download=true
inline.NumInlined: 34
inline.NumDeleted: 25
begin_hunk_0_@dissect_radiotap:bb.a
    i16 66, label %.thread910.sink.split
    i16 44, label %.thread910.sink.split
    i16 22, label %.thread910.sink.split
    i16 11, label %.thread910.sink.split
    i16 4, label %.thread910.sink.split
    i16 2, label %.thread910.sink.split
  ]

thread-pre-split:                                 ; preds = %bb.og
  switch i32 %.pr.pre, label %.thread908 [
    i32 4, label %.thread910
    i32 7, label %bb.oq
  ]

.thread910.sink.split:                            ; preds = %bb.on, %bb.on, %bb.on, %bb.on, %bb.on, %bb.on, %bb.oi, %bb.oi, %bb.oi, %bb.oi, %bb.oi, %bb.oi
  store i32 4, ptr %i.m, align 8
  br label %.thread910

.thread910:                                       ; preds = %.thread910.sink.split, %bb.oh, %thread-pre-split
  %i.bbm = trunc nuw i8 %.5 to i1
  %i.bbn = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.bbo = load i8, ptr %i.bbn, align 4           ; 2 uses
  br i1 %i.bbm, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %.thread910
  %i.bbp = or i8 %i.bbo, 1
  store i8 %i.bbp, ptr %i.bbn, align 4
  %i.bbq = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.bbr = lshr i8 %.4901, 1
  %.lobit840 = and i8 %i.bbr, 1
  store i8 %.lobit840, ptr %i.bbq, align 1
  br label %.thread908

bb.op:                                            ; preds = %.thread910
  %i.bbs = and i8 %i.bbo, -2
  store i8 %i.bbs, ptr %i.bbn, align 4
  br label %.thread908

bb.oq:                                            ; preds = %bb.oh, %thread-pre-split
  %i.bbt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bbu = load i8, ptr %i.bbt, align 4           ; 2 uses
  %i.bbv = and i8 %i.bbu, 4
  %i.bbw = icmp eq i8 %i.bbv, 0
  %i.bbx = trunc nuw i8 %.5 to i1
  %or.cond79 = select i1 %i.bbw, i1 %i.bbx, i1 false
  br i1 %or.cond79, label %bb.or, label %.thread908

bb.or:                                            ; preds = %bb.oq
  %i.bby = or disjoint i8 %i.bbu, 4
  store i8 %i.bby, ptr %i.bbt, align 4
  %.not839 = icmp sgt i8 %.4901, -1
  %i.bbz = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  %i.bca = load i8, ptr %i.bbz, align 4           ; 2 uses
  br i1 %.not839, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.bcb = or i8 %i.bca, 1
  store i8 %i.bcb, ptr %i.bbz, align 4
  br label %.thread908

bb.ot:                                            ; preds = %bb.or
  %i.bcc = and i8 %i.bca, -2
  store i8 %i.bcc, ptr %i.bbz, align 4
  br label %.thread908

.thread908:                                       ; preds = %bb.oh, %bb.oj, %bb.om, %bb.ol, %bb.on, %bb.oi, %bb.oq, %bb.ot, %bb.os, %bb.oo, %bb.op, %thread-pre-split
  %i.bcd = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.s) ; 5 uses
  %.not841 = icmp eq ptr %.4895, null
  br i1 %.not841, label %proto_item_set_hidden.exit, label %bb.ou

bb.ou:                                            ; preds = %.thread908
  %i.bce = call i32 @tvb_captured_length(ptr noundef %i.bcd) ; 2 uses
  %i.bcf = call i32 @tvb_reported_length(ptr noundef %i.bcd)
  %i.bcg = load i32, ptr %5, align 8
  %i.bch = call i32 @llvm.smax.i32(i32 %i.bcg, i32 0) ; 2 uses
  %.not842 = icmp uge i32 %i.bce, %i.bcf
  %i.bci = icmp ugt i32 %i.bce, %i.bch
  %or.cond846 = select i1 %.not842, i1 %i.bci, i1 false
  br i1 %or.cond846, label %bb.ov, label %bb.pa

bb.ov:                                            ; preds = %bb.ou
  %i.bcj = call i32 @tvb_captured_length(ptr noundef %i.bcd)
  %i.bck = sub i32 %i.bcj, %i.bch
  %i.bcl = call i32 @crc32_802_tvb(ptr noundef %i.bcd, i32 noundef %i.bck) ; 2 uses
  %i.bcm = icmp eq i32 %i.bcl, %.4883
  br i1 %i.bcm, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.4895, ptr noundef nonnull @.str.1284)
  br label %proto_item_set_hidden.exit

bb.ox:                                            ; preds = %bb.ov
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.4895, ptr noundef nonnull @.str.1285, i32 noundef %i.bcl)
  %i.bcn = load i32, ptr @hf_radiotap_fcs_bad, align 4
  %i.bco = call ptr @proto_tree_add_boolean(ptr noundef %.0768, i32 noundef %i.bcn, ptr noundef %0, i32 noundef %.4889, i32 noundef 4, i64 noundef 1) ; 2 uses
  %.not.i870 = icmp eq ptr %i.bco, null
  br i1 %.not.i870, label %proto_item_set_hidden.exit, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bcp = getelementptr i8, ptr %i.bco, i64 40
  %i.bcq = load ptr, ptr %i.bcp, align 8          ; 2 uses
  %.not5.i871 = icmp eq ptr %i.bcq, null
  br i1 %.not5.i871, label %proto_item_set_hidden.exit, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bcr = getelementptr i8, ptr %i.bcq, i64 28   ; 2 uses
  %i.bcs = load i32, ptr %i.bcr, align 4
  %i.bct = or i32 %i.bcs, 1
  store i32 %i.bct, ptr %i.bcr, align 4
  br label %proto_item_set_hidden.exit

bb.pa:                                            ; preds = %bb.ou
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.4895, ptr noundef nonnull @.str.1286)
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.oz, %bb.oy, %bb.ox, %bb.pa, %bb.ow, %.thread908
  %i.bcu = load ptr, ptr @ieee80211_radio_handle, align 8
  %i.bcv = call i32 @call_dissector_with_data(ptr noundef %i.bcu, ptr noundef %i.bcd, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) ; 0 uses
  %i.bcw = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.pb

bb.pb:                                            ; preds = %proto_item_set_hidden.exit, %bb.of, %bb.d
  %.0 = phi i32 [ %i.ai, %bb.d ], [ %i.bcw, %proto_item_set_hidden.exit ], [ %i.bba, %bb.of ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_radiotap() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_radiotap, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1116, i32 noundef %i.a)
  store ptr %i.b, ptr @ieee80211_radio_handle, align 8
  %i.c = load i32, ptr @proto_radiotap, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1105, i32 noundef %i.c) ; 2 uses
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1117, i32 noundef 23, ptr noundef %i.d)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.1118, i32 noundef 803, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_radiotap, align 4
  %i.f = tail call ptr @create_capture_dissector_handle(ptr noundef nonnull @capture_radiotap, i32 noundef %i.e)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.1117, i32 noundef 23, ptr noundef %i.f)
  %i.g = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.1119)
  store ptr %i.g, ptr @ieee80211_cap_handle, align 8
  %i.h = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.1120)
  store ptr %i.h, ptr @ieee80211_datapad_cap_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @create_capture_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @capture_radiotap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = add i32 %1, 8                            ; 3 uses
  %i.b = icmp ugt i32 %1, -9
  %.not = icmp ugt i32 %i.a, %2
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2
  %.val = load i16, ptr %i.c, align 1             ; 3 uses
  %i.d = zext i16 %.val to i32                    ; 2 uses
  %i.e = add i32 %1, %i.d                         ; 2 uses
  %i.f = icmp ule i32 %i.e, %1
  %.not75 = icmp ugt i32 %i.e, %2
  %or.cond83 = or i1 %i.f, %.not75
  %i.g = icmp slt i32 %2, %i.d
  %or.cond86 = or i1 %i.g, %or.cond83
  %i.h = icmp ult i16 %.val, 8
  %or.cond87 = or i1 %i.h, %or.cond86
  br i1 %or.cond87, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 1              ; 3 uses
  %i.k = add i16 %.val, -8                        ; 2 uses
  %.not7692 = icmp sgt i32 %i.j, -1
  br i1 %.not7692, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.06294 = phi i16 [ %i.q, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.06393 = phi i32 [ %7, %bb.d ], [ %i.a, %bb.c ] ; 4 uses
  %5 = zext i16 %.06294 to i32
  %i.l = add i32 %.06393, %5                      ; 2 uses
  %i.m = icmp ugt i32 %i.l, %.06393
  %i.n = icmp ult i32 %i.l, 5
  %or.cond84 = and i1 %i.m, %i.n
  br i1 %or.cond84, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %6 = sext i32 %.06393 to i64
  %i.o = getelementptr i8, ptr %0, i64 %6
  %i.p = load i32, ptr %i.o, align 1
  %7 = add i32 %.06393, 4                         ; 2 uses
  %i.q = add i16 %.06294, -4                      ; 2 uses
  %.not76 = icmp sgt i32 %i.p, -1
  br i1 %.not76, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.063.lcssa = phi i32 [ %i.a, %bb.c ], [ %7, %bb.d ] ; 3 uses
  %.062.lcssa = phi i16 [ %i.k, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = and i32 %i.j, 1
  %.not77 = icmp eq i32 %i.r, 0
  br i1 %.not77, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = and i32 %.063.lcssa, 7                   ; 2 uses
  %.not78 = icmp eq i32 %i.s, 0                   ; 2 uses
  %i.t = sub nuw nsw i32 8, %i.s                  ; 2 uses
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = select i1 %.not78, i16 0, i16 %i.u
  %.1 = sub i16 %.062.lcssa, %i.v                 ; 2 uses
  %i.w = icmp ult i16 %.1, 8
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = select i1 %.not78, i32 0, i32 %i.t
  %.164 = add i32 %.063.lcssa, 8
  %i.y = add i32 %.164, %i.x
  %i.z = add i16 %.1, -8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.265 = phi i32 [ %i.y, %bb.f ], [ %.063.lcssa, %._crit_edge ] ; 3 uses
  %.2 = phi i16 [ %i.z, %bb.f ], [ %.062.lcssa, %._crit_edge ] ; 2 uses
  %i.aa = and i32 %i.j, 2
  %.not79 = icmp eq i32 %i.aa, 0
  br i1 %.not79, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ne i16 %.2, 0
  %or.cond85.not = icmp ult i32 %.265, %2
  %or.cond89 = select i1 %i.ab, i1 %or.cond85.not, i1 false
  br i1 %or.cond89, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %.265 to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 32
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.critedge, label %.loopexit.sink.split

.critedge:                                        ; preds = %bb.g, %bb.i
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.i, %.critedge
  %ieee80211_cap_handle.sink = phi ptr [ @ieee80211_cap_handle, %.critedge ], [ @ieee80211_datapad_cap_handle, %bb.i ]
  %i.ah = load ptr, ptr %ieee80211_cap_handle.sink, align 8
  %i.ai = zext i16 %.2 to i32
  %i.aj = add i32 %.265, %i.ai
  %i.ak = tail call zeroext i1 @call_capture_dissector(ptr noundef %i.ah, ptr noundef %0, i32 noundef %i.aj, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ %i.ak, %.loopexit.sink.split ], [ false, %bb.e ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @find_capture_dissector(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #3

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_radiotap_iterator_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_radiotap_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_manuf_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare float @ieee80211_htrate(i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @add_tlv_items(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, -4
  %i.b = load i32, ptr @hf_radiotap_tlv_type, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %1, i32 noundef %i.a, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.d = add i32 %2, -2
  %i.e = load i32, ptr @hf_radiotap_tlv_datalen, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %i.d, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @crc32_802_tvb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_letoh64(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_mhz_to_chan(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @ieee80211_mhz_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
end_hunk_0
