inline.NumInlined: 11
inline.NumDeleted: 11
begin_hunk_0_@dissect_xra:bb.a

dissect_ncp.exit:                                 ; preds = %.lr.ph.i76, %bb.al
  %.0.lcssa.i = phi i32 [ 0, %bb.al ], [ %i.ie, %.lr.ph.i76 ]
  %i.ih = load i32, ptr @hf_ncp_crc, align 4
  %i.ii = call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.ih, ptr noundef %i.gz, i32 noundef %.0.lcssa.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.am:                                            ; preds = %bb.ad, %bb.ad
  %i.ij = load i32, ptr %i.e, align 4
  %.not72 = icmp eq i32 %i.ij, 0
  br i1 %.not72, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ik = load ptr, ptr %i.v, align 8
  call void @col_append_str(ptr noundef %i.ik, i32 noundef 25, ptr noundef nonnull @.str.241)
  %i.il = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.t) ; 13 uses
  %i.im = load i32, ptr @proto_segment, align 4
  %i.in = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.im, ptr noundef %i.il, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.163)
  %i.io = load i32, ptr @ett_plc, align 4
  %i.ip = call ptr @proto_item_add_subtree(ptr noundef %i.in, i32 noundef %i.io) ; 8 uses
  %i.iq = load i32, ptr @hf_docsis_segment_pfi, align 4
  %i.ir = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.iq, ptr noundef %i.il, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.is = load i32, ptr @hf_docsis_segment_reserved, align 4
  %i.it = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.is, ptr noundef %i.il, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iu = load i32, ptr @hf_docsis_segment_pointerfield, align 4
  %i.iv = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.iu, ptr noundef %i.il, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.iw = load i32, ptr @hf_docsis_segment_sequencenumber, align 4
  %i.ix = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.iw, ptr noundef %i.il, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.iy = load i32, ptr @hf_docsis_segment_sidclusterid, align 4
  %i.iz = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.iy, ptr noundef %i.il, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ja = load i32, ptr @hf_docsis_segment_request, align 4
  %i.jb = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.ja, ptr noundef %i.il, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jc = call zeroext i16 @crc16_ccitt_tvb(ptr noundef %i.il, i32 noundef 6)
  %i.jd = call zeroext i16 @crc16_ccitt_tvb(ptr noundef %i.il, i32 noundef 6)
  %i.je = call i16 @llvm.fshl.i16(i16 %i.jd, i16 %i.jc, i16 8)
  %i.jf = load i32, ptr @hf_docsis_segment_hcs, align 4
  %i.jg = load i32, ptr @hf_docsis_segment_hcs_status, align 4
  %i.jh = zext i16 %i.je to i32
  %i.ji = call ptr @proto_tree_add_checksum(ptr noundef %i.ip, ptr noundef %i.il, i32 noundef 6, i32 noundef %i.jf, i32 noundef %i.jg, ptr noundef nonnull @ei_docsis_segment_hcs_bad, ptr noundef %1, i32 noundef %i.jh, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.jj = load i32, ptr @hf_docsis_segment_data, align 4
  %i.jk = call i32 @tvb_reported_length_remaining(ptr noundef %i.il, i32 noundef 8)
  %i.jl = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.jj, ptr noundef %i.il, i32 noundef 8, i32 noundef %i.jk, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.ao:                                            ; preds = %bb.ad, %bb.ad
  %i.jm = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.t)
  %i.jn = load ptr, ptr @docsis_handle, align 8   ; 2 uses
  %.not71 = icmp eq ptr %i.jn, null
  br i1 %.not71, label %.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jo = call i32 @call_dissector(ptr noundef nonnull %i.jn, ptr noundef %i.jm, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ad
  %i.jp = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.t)
  %i.jq = load ptr, ptr @docsis_handle, align 8   ; 2 uses
  %.not = icmp eq ptr %i.jq, null
  br i1 %.not, label %.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jr = call i32 @call_dissector(ptr noundef nonnull %i.jq, ptr noundef %i.jp, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.sink.split

bb.as:                                            ; preds = %bb.ad
  %i.js = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.t) ; 5 uses
  %i.jt = load i32, ptr @proto_init_ranging, align 4
  %i.ju = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.jt, ptr noundef %i.js, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.252)
  %i.jv = load i32, ptr @ett_init_ranging, align 4
  %i.jw = call ptr @proto_item_add_subtree(ptr noundef %i.ju, i32 noundef %i.jv) ; 3 uses
  %i.jx = load i32, ptr @hf_xra_init_ranging_mac, align 4
  %i.jy = call ptr @proto_tree_add_item(ptr noundef %i.jw, i32 noundef %i.jx, ptr noundef %i.js, i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jz = load i32, ptr @hf_xra_init_ranging_ds_channel_id, align 4
  %i.ka = call ptr @proto_tree_add_item(ptr noundef %i.jw, i32 noundef %i.jz, ptr noundef %i.js, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kb = load i32, ptr @hf_xra_init_ranging_crc, align 4
  %i.kc = call ptr @proto_tree_add_item(ptr noundef %i.jw, i32 noundef %i.kb, ptr noundef %i.js, i32 noundef 7, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.at:                                            ; preds = %bb.ad
  %i.kd = load i32, ptr @hf_xra_unknown, align 4
  %i.ke = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.kd, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %bb.at, %bb.af, %bb.ae, %bb.am, %bb.ap, %bb.ao, %bb.ar, %bb.aq, %.thread.i, %bb.ag, %dissect_ncp.exit, %bb.an, %bb.as
  %.sink = phi ptr [ %i.fx, %.thread.i ], [ %i.js, %bb.as ], [ %i.il, %bb.an ], [ %i.gz, %dissect_ncp.exit ], [ %0, %bb.at ], [ %i.fx, %bb.ag ], [ %0, %bb.aq ], [ %0, %bb.ar ], [ %0, %bb.ao ], [ %0, %bb.ap ], [ %0, %bb.am ], [ %0, %bb.ae ], [ %0, %bb.af ], [ %i.fx, %bb.ak ]
  %i.kf = call i32 @tvb_captured_length(ptr noundef %.sink)
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %dissect_xra_tlv.exit
  %.0 = phi i32 [ %i.t, %dissect_xra_tlv.exit ], [ %i.kf, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_xra() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_dissector(ptr noundef nonnull @.str.172)
  store ptr %i.a, ptr @docsis_handle, align 8
  %i.b = load ptr, ptr @xra_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.173, i32 noundef 199, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_message_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 16) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load i32, ptr @hf_plc_mb, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.f = load i32, ptr @ett_plc_mb, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 9 uses
  switch i8 %3, label %bb.n [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.h = load i32, ptr @hf_plc_mb_ts_reserved, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_plc_mb_ts_timestamp, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.c)
  %i.l = load i32, ptr @ett_plc_timestamp, align 4
  %i.m = call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 2 uses
  call void @proto_tree_add_bitmask_list(ptr noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @dissect_timestamp_mb.timestamp_parts, i32 noundef 0)
  %i.n = load i64, ptr %i.c, align 8              ; 4 uses
  %i.o = lshr i64 %i.n, 41
  %i.p = mul nuw nsw i64 %i.o, 419430400000
  %i.q = lshr i64 %i.n, 9
  %i.r = and i64 %i.q, 4294967295
  %i.s = mul nuw nsw i64 %i.r, 100000
  %i.t = lshr i64 %i.s, 10
  %i.u = lshr i64 %i.n, 4
  %i.v = and i64 %i.u, 31
  %i.w = mul nuw nsw i64 %i.v, 10000
  %i.x = lshr i64 %i.w, 11
  %i.y = and i64 %i.n, 15
  %i.z = mul nuw nsw i64 %i.y, 10000
  %i.aa = lshr i64 %i.z, 15
  %i.ab = or disjoint i64 %i.aa, %i.p
  %i.ac = add nuw nsw i64 %i.ab, %i.t
  %i.ad = add nuw nsw i64 %i.ac, %i.x             ; 2 uses
  %i.ae = udiv i64 %i.ad, 1000000000
  store i64 %i.ae, ptr %5, align 8
  %i.af = urem i64 %i.ad, 1000000000
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = load i32, ptr @hf_plc_mb_ts_timestamp_formatted, align 4
  %i.aj = call ptr @proto_tree_add_time(ptr noundef %i.m, i32 noundef %i.ai, ptr noundef %0, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %5) ; 0 uses
  %i.ak = load i32, ptr @hf_plc_mb_ts_crc24d, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ak, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.am = load i32, ptr @hf_plc_em_mb, align 4
  %i.an = zext i16 %4 to i32
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef %i.an, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.ap = load i32, ptr @hf_plc_mb_mc_reserved, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ap, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ar = load i32, ptr @hf_plc_mb_mc_pspf_present, align 4
  %i.as = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.g, i32 noundef %i.ar, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.at = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %dissect_message_channel_mb.exit

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr @hf_plc_mb_mc_psp, align 4
  %i.aw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.av, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ax = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ay = zext i16 %4 to i32                      ; 3 uses
  %i.az = add i32 %i.ax, 9                        ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.ay
  br i1 %i.ba, label %.lr.ph.i, label %dissect_message_channel_mb.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bb = add nsw i32 %i.ax, 3
  %i.bc = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bd = phi i32 [ %i.az, %.lr.ph.i ], [ %i.by, %bb.l ]
  %.032.i = phi i32 [ %i.bb, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 6 uses
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.032.i)
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = add nsw i32 %.032.i, 1
  br label %bb.l, !llvm.loop !14

bb.h:                                             ; preds = %bb.f
  %i.bh = add nsw i32 %.032.i, 2
  %i.bi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bh)
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = add nsw i32 %.032.i, 3
  %i.bm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bl)
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 3 uses
  %i.bp = add nuw nsw i32 %i.bo, %i.bd
  %.not.i = icmp samesign ugt i32 %i.bp, %i.ay
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = add nuw nsw i32 %i.bo, 6
  %i.br = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.032.i, i32 noundef %i.bq)
  %i.bs = load ptr, ptr @docsis_handle, align 8   ; 2 uses
  %.not31.i = icmp eq ptr %i.bs, null
  br i1 %.not31.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = call i32 @call_dissector(ptr noundef nonnull %i.bs, ptr noundef %i.br, ptr noundef %1, ptr noundef %i.g) ; 0 uses
  %i.bu = load ptr, ptr %i.bc, align 8
  call void @col_append_str(ptr noundef %i.bu, i32 noundef 25, ptr noundef nonnull @.str.250)
  %i.bv = load ptr, ptr %i.bc, align 8
  call void @col_set_fence(ptr noundef %i.bv, i32 noundef 25)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bw = add i32 %.032.i, 6
  %i.bx = add i32 %i.bw, %i.bo
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.1.i = phi i32 [ %i.bg, %bb.g ], [ %i.bx, %bb.k ] ; 2 uses
  %i.by = add i32 %.1.i, 6                        ; 2 uses
  %i.bz = icmp ult i32 %i.by, %i.ay
  br i1 %i.bz, label %bb.f, label %dissect_message_channel_mb.exit

dissect_message_channel_mb.exit:                  ; preds = %bb.l, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ca = load i32, ptr @hf_plc_trigger_mb, align 4
  %i.cb = zext i16 %4 to i32
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ca, ptr noundef %0, i32 noundef 0, i32 noundef %i.cb, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %dissect_message_channel_mb.exit, %bb.c, %bb.b
  %i.cd = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_add_bitmask_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc16_ccitt_tvb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !7}
end_hunk_0
