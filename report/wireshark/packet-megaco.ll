Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-megaco?download=true
inline.NumInlined: 117
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_megaco() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180) ; 2 uses
  store i32 %i.a, ptr @proto_megaco, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.180, ptr noundef nonnull @dissect_megaco_text, i32 noundef %i.a)
  store ptr %i.b, ptr @megaco_text_handle, align 8
  %i.c = load i32, ptr @proto_megaco, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_megaco.hf, i32 noundef 63)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_megaco.ett, i32 noundef 27)
  %i.d = load i32, ptr @proto_megaco, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_megaco.ei, i32 noundef 10)
  %i.f = load i32, ptr @proto_megaco, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef null) ; 3 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, ptr noundef nonnull @global_megaco_raw_text)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef nonnull @global_megaco_dissect_tree)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, ptr noundef nonnull @keep_persistent_data)
  %i.h = tail call i32 @register_tap(ptr noundef nonnull @.str.180)
  store i32 %i.h, ptr @megaco_tap, align 4
  tail call void @ws_mempbrk_compile(ptr noundef nonnull @pbrk_whitespace, ptr noundef nonnull @.str.190)
  tail call void @ws_mempbrk_compile(ptr noundef nonnull @pbrk_braces, ptr noundef nonnull @.str.191)
  %i.i = load i32, ptr @proto_megaco, align 4
  tail call void @register_rtd_table(i32 noundef %i.i, ptr noundef null, i32 noundef 1, i32 noundef 12, ptr noundef nonnull @megaco_message_type, ptr noundef nonnull @megacostat_packet, ptr noundef nonnull @megacostat_filtercheck)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @megaco_fmt_content(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, -3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @val_to_str_const(i32 noundef %1, ptr noundef nonnull @megaco_context_vals, ptr noundef nonnull @.str.204)
  %i.b = tail call i64 @g_strlcpy(ptr noundef %0, ptr noundef %i.a, i64 noundef 240) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.205, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_megaco_text(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 11 uses
  %i.o = alloca i32, align 4                      ; 27 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 37 uses
  %i.s = alloca i32, align 4                      ; 43 uses
  %i.t = alloca i32, align 4                      ; 55 uses
  %i.u = alloca i32, align 4                      ; 10 uses
  %i.v = alloca i32, align 4                      ; 11 uses
  %i.w = alloca i32, align 4                      ; 7 uses
  %i.x = alloca i32, align 4                      ; 54 uses
  %i.y = alloca i32, align 4                      ; 13 uses
  %i.z = alloca i32, align 4                      ; 15 uses
  %i.aa = alloca ptr, align 8                     ; 26 uses
  %i.ab = alloca [15 x i8], align 1               ; 3 uses
  %i.ac = alloca [30 x i8], align 16              ; 5 uses
  %i.ad = alloca i32, align 4                     ; 9 uses
  %i.ae = alloca i32, align 4                     ; 28 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %i.ag = alloca i32, align 4                     ; 10 uses
  %i.ah = alloca i32, align 4                     ; 8 uses
  %i.ai = alloca i32, align 4                     ; 12 uses
  %i.aj = alloca i8, align 1                      ; 4 uses
  %i.ak = alloca i8, align 1                      ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 7 uses
  %i.an = alloca i32, align 4                     ; 6 uses
  %i.ao = alloca i32, align 4                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #9
  store i32 0, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #9
  store i32 0, ptr %i.ai, align 4
  %i.ap = tail call i32 @tvb_reported_length(ptr noundef %0) ; 20 uses
  %i.aq = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 0)
  %i.ar = icmp eq i32 %i.aq, 8611843
  %i.as = load ptr, ptr @h248_otp_handle, align 8 ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = tail call i32 @call_dissector(ptr noundef nonnull %i.as, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.av = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.c:                                             ; preds = %bb.a
  %i.aw = tail call i32 @tvb_raw_offset(ptr noundef %0)
  %i.ax = load i8, ptr @keep_persistent_data, align 1, !range !6, !noundef !7
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = tail call ptr @gcp_msg(ptr noundef %1, i32 noundef %i.aw, i1 noundef zeroext %i.ay) ; 9 uses
  %i.ba = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %.not1231 = icmp eq i32 %i.ba, 0
  br i1 %.not1231, label %megaco_tvb_skip_wsp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = load ptr, ptr @g_ascii_table, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %bb.e ] ; 3 uses
  %i.bc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.07.i)
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr [2 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = and i16 %i.bf, 256
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %megaco_tvb_skip_wsp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = add i32 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.ba
  br i1 %exitcond.not.i, label %megaco_tvb_skip_wsp.exit, label %bb.d, !llvm.loop !8

megaco_tvb_skip_wsp.exit:                         ; preds = %bb.d, %bb.e, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %.07.i, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.t, align 4
  %i.bi = call i32 @tvb_get_raw_bytes_as_stringz(ptr noundef %0, i32 noundef %.0.lcssa.i, i32 noundef 15, ptr noundef nonnull %i.ab)
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %megaco_tvb_skip_wsp.exit
  %i.bj = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.g:                                             ; preds = %megaco_tvb_skip_wsp.exit
  %i.bk = load i32, ptr %i.t, align 4
  %i.bl = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %i.bk, ptr noundef nonnull @.str.290, i64 noundef 14)
  %i.bm = icmp eq i32 %i.bl, 0
  %.old = load i32, ptr %i.t, align 4             ; 4 uses
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.old, ptr noundef nonnull @.str.291, i64 noundef 2)
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = load i32, ptr %i.t, align 4             ; 3 uses
  %i.bq = icmp ult i32 %i.bp, %i.ap
  %or.cond936 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond936, label %.lr.ph.preheader, label %.loopexit779

bb.i:                                             ; preds = %bb.g
  %.old935 = icmp ult i32 %.old, %i.ap
  br i1 %.old935, label %.lr.ph.preheader, label %.loopexit779

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.h
  %.0563920.ph = phi i32 [ %.old, %bb.i ], [ %i.bp, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %.0563920 = phi i32 [ %.pre1086, %.lr.ph._crit_edge ], [ %.0563920.ph, %.lr.ph.preheader ] ; 2 uses
  %i.br = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0563920) ; 2 uses
  store i8 %i.br, ptr %i.af, align 1
  %.pre1086 = add i32 %.0563920, 1                ; 5 uses
  switch i8 %i.br, label %.lr.ph._crit_edge [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.bs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.pre1086)
  switch i8 %i.bs, label %bb.k [
    i8 32, label %.lr.ph._crit_edge
    i8 13, label %.lr.ph._crit_edge
    i8 10, label %.lr.ph._crit_edge
  ]

bb.k:                                             ; preds = %bb.j
  store i32 %.pre1086, ptr %i.t, align 4
  br label %.loopexit779

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.j, %bb.j, %bb.j
  %exitcond.not = icmp eq i32 %.pre1086, %i.ap
  br i1 %exitcond.not, label %.loopexit779.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit779.loopexit:                            ; preds = %.lr.ph._crit_edge
  %.pre = load i32, ptr %i.t, align 4
  br label %.loopexit779

.loopexit779:                                     ; preds = %.loopexit779.loopexit, %bb.i, %bb.k, %bb.h
  %i.bt = phi i32 [ %.pre, %.loopexit779.loopexit ], [ %.old, %bb.i ], [ %.pre1086, %bb.k ], [ %i.bp, %bb.h ]
  %i.bu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bt)
  %i.bv = icmp eq i8 %i.bu, 33                    ; 2 uses
  %i.bw = load i32, ptr %i.t, align 4
  %i.bx = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %i.bw, ptr noundef nonnull @.str.179, i64 noundef 6)
  %i.by = icmp eq i32 %i.bx, 0
  %or.cond17 = select i1 %i.by, i1 true, i1 %i.bv
  br i1 %or.cond17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #9
  %i.bz = load ptr, ptr @data_handle, align 8
  %i.ca = call i32 @get_ber_identifier(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) ; 0 uses
  %i.cb = load i8, ptr %i.aj, align 1
  %i.cc = icmp eq i8 %i.cb, 0
  %i.cd = load i8, ptr %i.ak, align 1, !range !6
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond19 = select i1 %i.cc, i1 %i.ce, i1 false
  %i.cf = load i32, ptr %i.al, align 4
  %i.cg = icmp eq i32 %i.cf, 16
  %or.cond21 = select i1 %or.cond19, i1 %i.cg, i1 false
  %i.ch = load ptr, ptr @h248_handle, align 8
  %spec.select = select i1 %or.cond21, ptr %i.ch, ptr %i.bz
  %i.ci = call i32 @call_dissector(ptr noundef %spec.select, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.cj = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #9
  br label %bb.jk

bb.m:                                             ; preds = %.loopexit779
  %i.ck = getelementptr i8, ptr %1, i64 8         ; 25 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @col_set_str(ptr noundef %i.cl, i32 noundef 35, ptr noundef nonnull @.str.179)
  %i.cm = getelementptr i8, ptr %1, i64 276
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = and i8 %i.cn, 1
  %.not631 = icmp eq i8 %i.co, 0
  br i1 %.not631, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = load i32, ptr @exported_pdu_tap, align 4
  %i.cq = call zeroext i1 @have_tap_listener(i32 noundef %i.cp)
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef nonnull @.str.180, i16 noundef zeroext 12) ; 4 uses
  %i.cs = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  store i32 %i.cs, ptr %i.ct, align 8
  %i.cu = call i32 @tvb_reported_length(ptr noundef %0)
  %i.cv = getelementptr i8, ptr %i.cr, i64 20
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %i.cr, i64 24
  store ptr %0, ptr %i.cw, align 8
  %i.cx = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.cx, ptr noundef %1, ptr noundef %i.cr)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cy = load i32, ptr @proto_megaco, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cy, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 4 uses
  %i.da = load i32, ptr @ett_megaco, align 4
  %i.db = call ptr @proto_item_add_subtree(ptr noundef %i.cz, i32 noundef %i.da) ; 22 uses
  %i.dc = call zeroext i1 @tvb_find_uint8_remaining(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 47, ptr noundef nonnull %i.r)
  br i1 %i.dc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cz, ptr noundef nonnull @ei_megaco_parse_error, ptr noundef nonnull @.str.292) ; 0 uses
  %i.de = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.r:                                             ; preds = %bb.p
  %i.df = load i32, ptr @hf_megaco_start, align 4
  %i.dg = load i32, ptr %i.r, align 4             ; 2 uses
  %i.dh = add i32 %i.dg, 1
  %i.di = getelementptr i8, ptr %1, i64 416       ; 17 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call ptr @tvb_get_string_enc(ptr noundef %i.dj, ptr noundef %0, i32 noundef 0, i32 noundef %i.dg, i32 noundef 2)
  %i.dl = call ptr @proto_tree_add_string(ptr noundef %i.db, i32 noundef %i.df, ptr noundef %0, i32 noundef 0, i32 noundef %i.dh, ptr noundef %i.dk) ; 2 uses
  %i.dm = load i8, ptr @global_megaco_dissect_tree, align 1, !range !6, !noundef !7
  %i.dn = trunc nuw i8 %i.dm to i1
  %.not.i.i = icmp eq ptr %i.dl, null
  %or.cond.i = select i1 %i.dn, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %megaco_tree_add_string.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr i8, ptr %i.dl, i64 40
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dp, null
  br i1 %.not5.i.i, label %megaco_tree_add_string.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr i8, ptr %i.dp, i64 28     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = or i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4
  br label %megaco_tree_add_string.exit

megaco_tree_add_string.exit:                      ; preds = %bb.r, %bb.s, %bb.t
  %i.dt = load i32, ptr %i.r, align 4             ; 2 uses
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.r, align 4
  %i.dv = add i32 %i.dt, 2                        ; 2 uses
  store i32 %i.dv, ptr %i.s, align 4
  %i.dw = load ptr, ptr @g_ascii_table, align 8   ; 33 uses
  %i.dx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dv)
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr [2 x i8], ptr %i.dw, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 8
  %.not632 = icmp eq i16 %i.eb, 0
  %.pre1069 = load i32, ptr %i.s, align 4         ; 2 uses
  br i1 %.not632, label %bb.v, label %bb.u

bb.u:                                             ; preds = %megaco_tree_add_string.exit
  %i.ec = add i32 %.pre1069, 1                    ; 2 uses
  store i32 %i.ec, ptr %i.s, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %megaco_tree_add_string.exit
  %i.ed = phi i32 [ %i.ec, %bb.u ], [ %.pre1069, %megaco_tree_add_string.exit ]
  %i.ee = load i32, ptr @hf_megaco_version, align 4
  %i.ef = load i32, ptr %i.r, align 4             ; 3 uses
  %i.eg = sub i32 %i.ed, %i.ef                    ; 2 uses
  %i.eh = load ptr, ptr %i.di, align 8
  %i.ei = call ptr @tvb_get_string_enc(ptr noundef %i.eh, ptr noundef %0, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef 2)
  %i.ej = call ptr @proto_tree_add_string(ptr noundef %i.db, i32 noundef %i.ee, ptr noundef %0, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef %i.ei) ; 2 uses
  %i.ek = load i8, ptr @global_megaco_dissect_tree, align 1, !range !6, !noundef !7
  %i.el = trunc nuw i8 %i.ek to i1
  %.not.i.i669 = icmp eq ptr %i.ej, null
  %or.cond.i670 = select i1 %i.el, i1 true, i1 %.not.i.i669
  br i1 %or.cond.i670, label %megaco_tree_add_string.exit672, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr i8, ptr %i.ej, i64 40
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not5.i.i671 = icmp eq ptr %i.en, null
  br i1 %.not5.i.i671, label %megaco_tree_add_string.exit672, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr i8, ptr %i.en, i64 28     ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = or i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4
  br label %megaco_tree_add_string.exit672

megaco_tree_add_string.exit672:                   ; preds = %bb.v, %bb.w, %bb.x
  %i.er = load i32, ptr %i.s, align 4             ; 4 uses
  store i32 %i.er, ptr %i.r, align 4
  %i.es = call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.et = icmp ult i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph.i674, label %megaco_tvb_skip_wsp.exit678

.lr.ph.i674:                                      ; preds = %megaco_tree_add_string.exit672, %bb.y
  %.07.i675 = phi i32 [ %i.ez, %bb.y ], [ %i.er, %megaco_tree_add_string.exit672 ] ; 3 uses
  %i.eu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.07.i675)
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr [2 x i8], ptr %i.dw, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = and i16 %i.ex, 256
  %.not.i676 = icmp eq i16 %i.ey, 0
  br i1 %.not.i676, label %megaco_tvb_skip_wsp.exit678, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i674
  %i.ez = add i32 %.07.i675, 1                    ; 2 uses
  %exitcond.not.i677 = icmp eq i32 %i.ez, %i.es
  br i1 %exitcond.not.i677, label %megaco_tvb_skip_wsp.exit678, label %.lr.ph.i674, !llvm.loop !8

megaco_tvb_skip_wsp.exit678:                      ; preds = %.lr.ph.i674, %bb.y, %megaco_tree_add_string.exit672
  %.0.lcssa.i673 = phi i32 [ %i.er, %megaco_tree_add_string.exit672 ], [ %.07.i675, %.lr.ph.i674 ], [ %i.es, %bb.y ] ; 4 uses
  store i32 %.0.lcssa.i673, ptr %i.s, align 4
  %i.fa = load i32, ptr %i.r, align 4
  %i.fb = icmp eq i32 %i.fa, %.0.lcssa.i673
  br i1 %i.fb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %megaco_tvb_skip_wsp.exit678
  %i.fc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cz, ptr noundef nonnull @ei_megaco_parse_error, ptr noundef nonnull @.str.293) ; 0 uses
  %i.fd = load i32, ptr %i.s, align 4
  br label %bb.jk

bb.aa:                                            ; preds = %megaco_tvb_skip_wsp.exit678
  store i32 %.0.lcssa.i673, ptr %i.r, align 4
  %i.fe = call zeroext i1 @tvb_ws_mempbrk_uint8_length(ptr noundef %0, i32 noundef %.0.lcssa.i673, i32 noundef %i.ap, ptr noundef nonnull @pbrk_whitespace, ptr noundef nonnull %i.s, ptr noundef nonnull %i.af)
  br i1 %i.fe, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cz, ptr noundef nonnull @ei_megaco_parse_error, ptr noundef nonnull @.str.294) ; 0 uses
  %i.fg = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.ac:                                            ; preds = %bb.aa
end_hunk_0
