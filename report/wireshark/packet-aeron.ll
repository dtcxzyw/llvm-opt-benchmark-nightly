Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aeron?download=true
inline.NumInlined: 130
inline.NumDeleted: 49
begin_hunk_0
@.str.265 = private unnamed_addr constant [8 x i8] c"%u (RX)\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"%u (KA)\00", align 1
@dissect_aeron_heartbeat.flags = internal constant [3 x ptr] [ptr @hf_aeron_heartbeat_flags_b, ptr @hf_aeron_heartbeat_flags_e, ptr null], align 16
@.str.267 = private unnamed_addr constant [47 x i8] c"Heartbeat Frame: Term 0x%x, Ofs %u, Len %u(%d)\00", align 1
@dissect_aeron_data.flags = internal constant [4 x ptr] [ptr @hf_aeron_data_flags_b, ptr @hf_aeron_data_flags_e, ptr @hf_aeron_data_flags_s, ptr null], align 16
@.str.268 = private unnamed_addr constant [42 x i8] c"Data Frame: Term 0x%x, Ofs %u, Len %u(%d)\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.270 = private unnamed_addr constant [31 x i8] c"epan/dissectors/packet-aeron.c\00", align 1
@.str.271 = private unnamed_addr constant [34 x i8] c"accum_len == (size_t) msg->length\00", align 1
@.str.272 = private unnamed_addr constant [22 x i8] c"last_frame_found == 1\00", align 1
@.str.273 = private unnamed_addr constant [20 x i8] c"finfo != ((void*)0)\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"Reassembled Data\00", align 1
@.str.275 = private unnamed_addr constant [37 x i8] c"%u Reassembled Fragments (%u bytes):\00", align 1
@.str.276 = private unnamed_addr constant [37 x i8] c"Frame: %u, payload: %u-%u (%u bytes)\00", align 1
@.str.277 = private unnamed_addr constant [9 x i8] c" #%u(%u)\00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c", #%u(%u)\00", align 1
@.str.279 = private unnamed_addr constant [37 x i8] c"NAK Frame: Term 0x%x, Ofs %u, Len %u\00", align 1
@.str.280 = private unnamed_addr constant [24 x i8] c"NAK offset %u length %u\00", align 1
@dissect_aeron_sm.flags = internal constant [2 x ptr] [ptr @hf_aeron_sm_flags_s, ptr null], align 16
@.str.281 = private unnamed_addr constant [70 x i8] c"Status Message: Term 0x%x, ConsumptionOfs %u, RcvWindow %u, RcvID %lu\00", align 1
@dissect_aeron_rtt.flags = internal constant [2 x ptr] [ptr @hf_aeron_rtt_flags_r, ptr null], align 16
@.str.282 = private unnamed_addr constant [37 x i8] c"RTT Message: Stream ID %u, RcvID %lu\00", align 1
@.str.283 = private unnamed_addr constant [80 x i8] c"Setup Frame: InitTerm 0x%x, ActiveTerm 0x%x, TermLen %u, Ofs %u, MTU %u, TTL %u\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_aeron() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.222, ptr noundef @.str.223, ptr noundef @.str.224) ; 2 uses
  store i32 %i.a, ptr @proto_aeron, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_aeron.hf, i32 noundef 116)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_aeron.ett, i32 noundef 18)
  %i.b = load i32, ptr @proto_aeron, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_aeron.ei, i32 noundef 19)
  %i.d = load i32, ptr @proto_aeron, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null) ; 4 uses
  %i.f = load i32, ptr @proto_aeron, align 4
  %i.g = tail call ptr @register_heur_dissector_list_with_description(ptr noundef @.str.225, ptr noundef @.str.226, i32 noundef %i.f)
  store ptr %i.g, ptr @aeron_heuristic_subdissector_list, align 8
  %i.h = load i32, ptr @proto_aeron, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef @.str.224, ptr noundef @dissect_aeron, i32 noundef %i.h)
  store ptr %i.i, ptr @aeron_dissector_handle, align 8
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.227, ptr noundef @.str.228, ptr noundef @.str.229, ptr noundef @aeron_sequence_analysis)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.230, ptr noundef @.str.231, ptr noundef @.str.232, ptr noundef @aeron_stream_analysis)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.233, ptr noundef @.str.234, ptr noundef @.str.235, ptr noundef @aeron_reassemble_fragments)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.236, ptr noundef @.str.237, ptr noundef @.str.238, ptr noundef @aeron_use_heuristic_subdissectors)
  tail call void @register_init_routine(ptr noundef @aeron_channel_id_init)
  %i.j = tail call ptr @wmem_epan_scope()
  %i.k = tail call ptr @wmem_file_scope()
  %i.l = tail call ptr @wmem_tree_new_autoreset(ptr noundef %i.j, ptr noundef %i.k)
  store ptr %i.l, ptr @aeron_frame_info_tree, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aeron(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.aeron_packet_info_t, align 8 ; 12 uses
  %5 = alloca %struct.aeron_packet_info_t, align 8 ; 15 uses
  %6 = alloca %struct.aeron_packet_info_t, align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.aeron_packet_info_t, align 8 ; 15 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %struct.aeron_packet_info_t, align 8 ; 13 uses
  %9 = alloca %struct.aeron_packet_info_t, align 8 ; 12 uses
  %i.e = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 6)
  %i.h = tail call fastcc ptr @aeron_setup_conversation_info(ptr noundef %1, i16 noundef zeroext %i.g) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8          ; 16 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef @.str.223)
  %i.k = load ptr, ptr %i.i, align 8
  tail call void @col_clear(ptr noundef %i.k, i32 noundef 25)
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call ptr @wmem_strbuf_new(ptr noundef %i.n, ptr noundef @.str.251) ; 2 uses
  %i.p = getelementptr i8, ptr %i.h, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.val.i = load i32, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val22.i = load ptr, ptr %i.r, align 8         ; 4 uses
  switch i32 %.val.i, label %bb.h [
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp eq ptr %.val22.i, null
  br i1 %.not8.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %.val22.i, align 1
  %i.t = and i8 %i.s, -16
  %i.u = icmp eq i8 %i.t, -32
  br i1 %i.u, label %aeron_format_transport_uri.exit, label %bb.h

bb.f:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val22.i, null
  br i1 %.not.i.i, label %aeron_is_address_multicast.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.val22.i, align 1
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %aeron_format_transport_uri.exit, label %aeron_is_address_multicast.exit.i

aeron_is_address_multicast.exit.i:                ; preds = %bb.g, %bb.f
  br label %aeron_format_transport_uri.exit

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %aeron_format_transport_uri.exit

aeron_format_transport_uri.exit:                  ; preds = %bb.e, %bb.g, %aeron_is_address_multicast.exit.i, %bb.h
  %.str.254.sink.i = phi ptr [ @.str.254, %aeron_is_address_multicast.exit.i ], [ @.str.255, %bb.h ], [ @.str.252, %bb.g ], [ @.str.253, %bb.e ]
  %i.x = tail call ptr @address_to_str(ptr noundef %i.n, ptr noundef %i.q)
  %i.y = getelementptr i8, ptr %i.h, i64 18
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.o, ptr noundef nonnull %.str.254.sink.i, ptr noundef %i.x, i32 noundef %i.aa)
  %i.ab = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.o)
  tail call void @col_add_str(ptr noundef %i.l, i32 noundef 25, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.i, align 8
  tail call void @col_set_fence(ptr noundef %i.ac, i32 noundef 25)
  %i.ad = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.ae = load i32, ptr @proto_aeron, align 4
  %i.af = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.222) ; 3 uses
  %i.ag = load i32, ptr @ett_aeron, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 8 uses
  %i.ai = icmp sgt i32 %i.ad, 0
  br i1 %i.ai, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %aeron_format_transport_uri.exit
  %i.aj = getelementptr i8, ptr %1, i64 20        ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ar = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 50
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 50
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 50 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 50
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 50
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %dissect_aeron_rtt.exit.thread166
  %.0104195 = phi i32 [ %i.ad, %.lr.ph ], [ %i.aad, %dissect_aeron_rtt.exit.thread166 ]
  %.0105189 = phi i32 [ 0, %.lr.ph ], [ %i.aac, %dissect_aeron_rtt.exit.thread166 ] ; 86 uses
  %.0108188 = phi i32 [ 0, %.lr.ph ], [ %i.aab, %dissect_aeron_rtt.exit.thread166 ] ; 4 uses
  %i.ce = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0105189)
  %i.cf = call i32 @tvb_skip_uint8(ptr noundef %0, i32 noundef %.0105189, i32 noundef %i.ce, i8 noundef zeroext 0)
  %i.cg = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = load i8, ptr @aeron_sequence_analysis, align 1, !range !6, !noundef !7
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.k, label %aeron_frame_info_add.exit

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.cl = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.cm = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.ck, i64 noundef 32) #12 ; 6 uses
  %i.cn = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.ck, i64 noundef 8) #12 ; 3 uses
  store i32 %i.cl, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  store i32 %.0105189, ptr %i.co, align 4
  store i32 2, ptr %i.cm, align 8
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  store ptr %i.cn, ptr %i.cp, align 8
  %i.cq = getelementptr i8, ptr %i.cm, i64 16
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.cm, i64 24
  store ptr null, ptr %i.cr, align 8
  %i.cs = load ptr, ptr @aeron_frame_info_tree, align 8
  %i.ct = call ptr @wmem_tree_lookup32_array(ptr noundef %i.cs, ptr noundef %i.cm) ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.l, label %aeron_frame_info_add.exit

bb.l:                                             ; preds = %bb.k
  %i.cv = call ptr @wmem_file_scope()
  %i.cw = call noalias dereferenceable_or_null(80) ptr @wmem_alloc0(ptr noundef %i.cv, i64 noundef 80) #12 ; 5 uses
  store i32 %i.cl, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  store i32 %.0105189, ptr %i.cx, align 4
  %i.cy = load i8, ptr @aeron_sequence_analysis, align 1, !range !6, !noundef !7
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = load i8, ptr @aeron_stream_analysis, align 1, !range !6
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dc = call ptr @wmem_file_scope()
  %i.dd = call ptr @wmem_list_new(ptr noundef %i.dc)
  %i.de = getelementptr i8, ptr %i.cw, i64 64
  store ptr %i.dd, ptr %i.de, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.df = load ptr, ptr @aeron_frame_info_tree, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.df, ptr noundef %i.cm, ptr noundef %i.cw)
  br label %aeron_frame_info_add.exit

aeron_frame_info_add.exit:                        ; preds = %bb.n, %bb.k, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ %i.cw, %bb.n ], [ %i.ct, %bb.k ] ; 28 uses
  %i.dg = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0105189)
  %i.dh = add i32 %.0105189, 5                    ; 14 uses
  %i.di = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh)
  %i.dj = add i32 %.0105189, 6                    ; 9 uses
  %i.dk = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.dj) ; 2 uses
  %i.dl = call fastcc ptr @aeron_setup_conversation_info(ptr noundef %1, i16 noundef zeroext %i.dk) ; 7 uses
  switch i16 %i.dk, label %.thread [
    i16 0, label %bb.o
    i16 1, label %bb.z
    i16 2, label %bb.cb
    i16 3, label %bb.ch
    i16 6, label %bb.dd
    i16 4, label %bb.di
    i16 5, label %bb.dn
  ]

bb.o:                                             ; preds = %aeron_frame_info_add.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.dm = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0105189) ; 5 uses
  %i.dn = add i32 %i.dm, 31                       ; 2 uses
  %i.do = and i32 %i.dn, -32                      ; 5 uses
  %i.dp = icmp slt i32 %i.dn, 0
  br i1 %i.dp, label %dissect_aeron_pad.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = add i32 %.0105189, 8                    ; 2 uses
  %i.dr = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dq) ; 4 uses
  %i.ds = add i32 %.0105189, 12                   ; 2 uses
  %i.dt = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ds)
  %i.du = load i32, ptr %i.aj, align 4
  %i.dv = call fastcc ptr @aeron_transport_add(ptr noundef readonly %i.dl, i32 noundef %i.dt, i32 noundef %i.du) ; 5 uses
  %i.dw = add i32 %.0105189, 16                   ; 2 uses
  %i.dx = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dw) ; 2 uses
  %i.dy = add i32 %.0105189, 20                   ; 2 uses
  %i.dz = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.dy) ; 4 uses
  %i.ea = add nsw i32 %i.dm, -24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i8 noundef 0, i64 noundef 32, i1 noundef false) #13
  store i32 %i.dx, ptr %i.by, align 4
  store i32 %i.dz, ptr %i.bz, align 8
  store i32 %i.dr, ptr %i.ca, align 4
  store i32 7, ptr %9, align 8
  store i32 %i.dm, ptr %i.cb, align 8
  store i32 %i.ea, ptr %i.cc, align 4
  %i.eb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh)
  store i8 %i.eb, ptr %i.cd, align 2
  %i.ec = call fastcc i32 @aeron_frame_info_setup(ptr noundef %1, ptr noundef %i.dv, ptr noundef nonnull %9, ptr noundef %.0)
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %dissect_aeron_pad.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = call ptr @val_to_str_const(i32 noundef 0, ptr noundef @aeron_frame_type, ptr noundef @.str.257) ; 3 uses
  %i.ef = load i8, ptr @aeron_sequence_analysis, align 1, !range !6, !noundef !7
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load i8, ptr @aeron_stream_analysis, align 1, !range !6
  %i.ei = trunc nuw i8 %i.eh to i1
  %or.cond.i.i = select i1 %i.eg, i1 %i.ei, i1 false
  %i.ej = icmp ne ptr %.0, null
  %or.cond3.i.i = and i1 %i.ej, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr i8, ptr %.0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.el, null
  br i1 %.not.i.i116, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = load i32, ptr %i.el, align 4
  %i.en = and i32 %i.em, 32
  %.not41.i.i = icmp eq i32 %i.en, 0
  %i.eo = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %.not41.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.eo, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.259, ptr noundef %i.ee)
  br label %aeron_info_stream_progress_report.exit.i

bb.u:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.eo, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.260, ptr noundef %i.ee, i32 noundef %i.dz, i32 noundef %i.dr)
  br label %aeron_info_stream_progress_report.exit.i

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.ep = load ptr, ptr %i.i, align 8
  call void @col_append_sep_str(ptr noundef %i.ep, i32 noundef 25, ptr noundef @.str.258, ptr noundef %i.ee)
  br label %aeron_info_stream_progress_report.exit.i

aeron_info_stream_progress_report.exit.i:         ; preds = %bb.v, %bb.u, %bb.t
  %i.eq = load i32, ptr @hf_aeron_pad, align 4
  %i.er = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.ah, i32 noundef %i.eq, ptr noundef %0, i32 noundef %.0105189, i32 noundef -1, ptr noundef @.str.256, i32 noundef %i.dz, i32 noundef %i.dr, i32 noundef %i.dm, i32 noundef %i.do) ; 2 uses
  %i.es = load i32, ptr @ett_aeron_pad, align 4
  %i.et = call ptr @proto_item_add_subtree(ptr noundef %i.er, i32 noundef %i.es) ; 12 uses
  %i.eu = load i32, ptr @hf_aeron_channel_id, align 4
  %i.ev = load i64, ptr %i.dv, align 8
  %i.ew = call ptr @proto_tree_add_uint64(ptr noundef %i.et, i32 noundef %i.eu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.ev) ; 2 uses
  %.not.i91.i = icmp eq ptr %i.ew, null
  br i1 %.not.i91.i, label %proto_item_set_generated.exit.i, label %bb.w

bb.w:                                             ; preds = %aeron_info_stream_progress_report.exit.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ey, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr i8, ptr %i.ey, i64 28     ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = or i32 %i.fa, 2
  store i32 %i.fb, ptr %i.ez, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.x, %bb.w, %aeron_info_stream_progress_report.exit.i
  %i.fc = load i32, ptr @hf_aeron_pad_frame_length, align 4
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fc, ptr noundef %0, i32 noundef %.0105189, i32 noundef 4, i32 noundef -2147483648)
  %i.fe = load i32, ptr @hf_aeron_pad_version, align 4
  %i.ff = add i32 %.0105189, 4
  %i.fg = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.ff, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fh = load i32, ptr @hf_aeron_pad_flags, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.dh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.fj = load i32, ptr @hf_aeron_pad_type, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fj, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fl = load i32, ptr @hf_aeron_pad_term_offset, align 4
  %i.fm = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fl, ptr noundef %0, i32 noundef %i.dq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fn = getelementptr i8, ptr %i.dv, i64 8
  %.val.i114 = load ptr, ptr %i.fn, align 8
  call fastcc void @aeron_next_offset_report(ptr noundef %0, ptr noundef %i.et, ptr %.val.i114, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.dr, i32 noundef %i.do)
  %i.fo = load i32, ptr @hf_aeron_pad_session_id, align 4
  %i.fp = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fo, ptr noundef %0, i32 noundef %i.ds, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fq = load i32, ptr @hf_aeron_pad_stream_id, align 4
  %i.fr = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.dw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fs = load i32, ptr @hf_aeron_pad_term_id, align 4
  %i.ft = call ptr @proto_tree_add_item(ptr noundef %i.et, i32 noundef %i.fs, ptr noundef %0, i32 noundef %i.dy, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  call fastcc void @aeron_sequence_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.et, ptr noundef %i.dv, ptr noundef nonnull %9, ptr noundef %.0)
  call fastcc void @aeron_stream_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.et, ptr noundef %i.dv, ptr noundef %.0)
  call void @proto_item_set_len(ptr noundef %i.er, i32 noundef %i.do)
  %i.fu = icmp ult i32 %i.dm, 24
  br i1 %i.fu, label %bb.y, label %dissect_aeron_pad.exit

bb.y:                                             ; preds = %proto_item_set_generated.exit.i
  %i.fv = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.fd, ptr noundef @ei_aeron_analysis_invalid_pad_length) ; 0 uses
  %i.fw = sub nsw i32 0, %i.do
  br label %dissect_aeron_pad.exit

dissect_aeron_pad.exit:                           ; preds = %bb.o, %bb.p, %proto_item_set_generated.exit.i, %bb.y
  %.0.i115 = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.fw, %bb.y ], [ %i.do, %proto_item_set_generated.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %dissect_aeron_rtt.exit

bb.z:                                             ; preds = %aeron_frame_info_add.exit
  %i.fx = icmp eq i32 %i.dg, 0
  %i.fy = icmp eq i8 %i.di, -64
  %or.cond = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.fz = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0105189) ; 3 uses
  %i.ga = add i32 %.0105189, 8                    ; 2 uses
  %i.gb = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ga) ; 3 uses
  %i.gc = add i32 %.0105189, 12                   ; 2 uses
  %i.gd = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.gc)
  %i.ge = load i32, ptr %i.aj, align 4
  %i.gf = call fastcc ptr @aeron_transport_add(ptr noundef readonly %i.dl, i32 noundef %i.gd, i32 noundef %i.ge) ; 4 uses
  %i.gg = add i32 %.0105189, 16                   ; 2 uses
  %i.gh = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.gg)
  %i.gi = add i32 %.0105189, 20                   ; 2 uses
  %i.gj = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.gi) ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i8 noundef 0, i64 noundef 32, i1 noundef false) #13
  store i32 %i.gh, ptr %i.bq, align 4
  store i32 %i.gj, ptr %i.br, align 8
  store i32 %i.gb, ptr %i.bs, align 4
  store i32 7, ptr %8, align 8
  store i32 %i.fz, ptr %i.bt, align 8
  store i32 0, ptr %i.bu, align 4
  store i16 1, ptr %i.bv, align 8
  %i.gk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh)
  store i8 %i.gk, ptr %i.bw, align 2
  %i.gl = call fastcc i32 @aeron_frame_info_setup(ptr noundef %1, ptr noundef %i.gf, ptr noundef nonnull %8, ptr noundef %.0)
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %dissect_aeron_heartbeat.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = call ptr @val_to_str_const(i32 noundef 1, ptr noundef @aeron_frame_type, ptr noundef @.str.257) ; 3 uses
  %i.go = load i8, ptr @aeron_sequence_analysis, align 1, !range !6, !noundef !7
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = load i8, ptr @aeron_stream_analysis, align 1, !range !6
  %i.gr = trunc nuw i8 %i.gq to i1
  %or.cond.i.i117 = select i1 %i.gp, i1 %i.gr, i1 false
  %i.gs = icmp ne ptr %.0, null
  %or.cond3.i.i118 = and i1 %i.gs, %or.cond.i.i117
  br i1 %or.cond3.i.i118, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr i8, ptr %.0, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i123, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = and i32 %i.gv, 32
  %.not41.i.i124 = icmp eq i32 %i.gw, 0
  %i.gx = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %.not41.i.i124, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.gx, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.259, ptr noundef %i.gn)
  br label %aeron_info_stream_progress_report.exit.i119

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.gx, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.260, ptr noundef %i.gn, i32 noundef %i.gj, i32 noundef %i.gb)
  br label %aeron_info_stream_progress_report.exit.i119

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.gy = load ptr, ptr %i.i, align 8
  call void @col_append_sep_str(ptr noundef %i.gy, i32 noundef 25, ptr noundef @.str.258, ptr noundef %i.gn)
  br label %aeron_info_stream_progress_report.exit.i119

aeron_info_stream_progress_report.exit.i119:      ; preds = %bb.ag, %bb.af, %bb.ae
  %i.gz = load i32, ptr @hf_aeron_heartbeat, align 4
  %i.ha = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.ah, i32 noundef %i.gz, ptr noundef %0, i32 noundef %.0105189, i32 noundef -1, ptr noundef @.str.267, i32 noundef %i.gj, i32 noundef %i.gb, i32 noundef %i.fz, i32 noundef 24) ; 2 uses
  %i.hb = load i32, ptr @ett_aeron_data, align 4
  %i.hc = call ptr @proto_item_add_subtree(ptr noundef %i.ha, i32 noundef %i.hb) ; 11 uses
  %i.hd = load i32, ptr @hf_aeron_channel_id, align 4
  %i.he = load i64, ptr %i.gf, align 8
  %i.hf = call ptr @proto_tree_add_uint64(ptr noundef %i.hc, i32 noundef %i.hd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.he) ; 2 uses
  %.not.i79.i = icmp eq ptr %i.hf, null
  br i1 %.not.i79.i, label %proto_item_set_generated.exit.i121, label %bb.ah

bb.ah:                                            ; preds = %aeron_info_stream_progress_report.exit.i119
  %i.hg = getelementptr i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8            ; 2 uses
  %.not5.i.i120 = icmp eq ptr %i.hh, null
  br i1 %.not5.i.i120, label %proto_item_set_generated.exit.i121, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = getelementptr i8, ptr %i.hh, i64 28     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = or i32 %i.hj, 2
  store i32 %i.hk, ptr %i.hi, align 4
  br label %proto_item_set_generated.exit.i121

proto_item_set_generated.exit.i121:               ; preds = %bb.ai, %bb.ah, %aeron_info_stream_progress_report.exit.i119
  %i.hl = load i32, ptr @hf_aeron_heartbeat_frame_length, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.hl, ptr noundef %0, i32 noundef %.0105189, i32 noundef 4, i32 noundef -2147483648)
  %i.hn = load i32, ptr @hf_aeron_heartbeat_version, align 4
  %i.ho = add i32 %.0105189, 4
  %i.hp = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.hn, ptr noundef %0, i32 noundef %i.ho, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.hq = load i32, ptr @hf_aeron_heartbeat_flags, align 4
  %i.hr = load i32, ptr @ett_aeron_data_flags, align 4
  %i.hs = call ptr @proto_tree_add_bitmask(ptr noundef %i.hc, ptr noundef %0, i32 noundef %i.dh, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef @dissect_aeron_heartbeat.flags, i32 noundef -2147483648) ; 0 uses
  %i.ht = load i32, ptr @hf_aeron_heartbeat_type, align 4
  %i.hu = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.ht, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.hv = load i32, ptr @hf_aeron_heartbeat_term_offset, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.hv, ptr noundef %0, i32 noundef %i.ga, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hx = load i32, ptr @hf_aeron_heartbeat_session_id, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.gc, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hz = load i32, ptr @hf_aeron_heartbeat_stream_id, align 4
  %i.ia = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.gg, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ib = load i32, ptr @hf_aeron_heartbeat_term_id, align 4
  %i.ic = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.gi, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  call fastcc void @aeron_sequence_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.hc, ptr noundef %i.gf, ptr noundef nonnull %8, ptr noundef %.0)
  call fastcc void @aeron_stream_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.hc, ptr noundef %i.gf, ptr noundef %.0)
  call void @proto_item_set_len(ptr noundef %i.ha, i32 noundef 24)
  %.not.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i, label %dissect_aeron_heartbeat.exit, label %bb.aj

bb.aj:                                            ; preds = %proto_item_set_generated.exit.i121
  %i.id = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hm, ptr noundef @ei_aeron_analysis_invalid_data_length) ; 0 uses
  br label %dissect_aeron_heartbeat.exit

dissect_aeron_heartbeat.exit:                     ; preds = %bb.aa, %proto_item_set_generated.exit.i121, %bb.aj
  %.0.i122 = phi i32 [ 0, %bb.aa ], [ -24, %bb.aj ], [ 24, %proto_item_set_generated.exit.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %dissect_aeron_rtt.exit

bb.ak:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ie = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0105189) ; 7 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ig = add i32 %i.ie, 31                       ; 2 uses
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %dissect_aeron_data.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = and i32 %i.ig, 2147483616               ; 2 uses
  %i.ij = add nsw i32 %i.ie, -32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.ik = phi i32 [ %i.ij, %bb.am ], [ 0, %bb.ak ] ; 6 uses
  %.0128.i = phi i32 [ %i.ii, %bb.am ], [ 32, %bb.ak ] ; 4 uses
  %.0127.i = phi i32 [ %i.ii, %bb.am ], [ 0, %bb.ak ]
  %i.il = add i32 %.0105189, 8                    ; 2 uses
  %i.im = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.il) ; 8 uses
  %i.in = add i32 %.0105189, 12                   ; 2 uses
  %i.io = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.in)
  %i.ip = load i32, ptr %i.aj, align 4
  %i.iq = call fastcc ptr @aeron_transport_add(ptr noundef readonly %i.dl, i32 noundef %i.io, i32 noundef %i.ip) ; 5 uses
  %i.ir = add i32 %.0105189, 16                   ; 2 uses
  %i.is = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ir) ; 3 uses
  %i.it = add i32 %.0105189, 20                   ; 2 uses
  %i.iu = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.it) ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 noundef 0, i64 noundef 32, i1 noundef false) #13
  store i32 %i.is, ptr %i.bi, align 4
  store i32 %i.iu, ptr %i.bj, align 8
  store i32 %i.im, ptr %i.bk, align 4
  store i32 7, ptr %7, align 8
  store i32 %i.ie, ptr %i.bl, align 8
  store i32 %i.ik, ptr %i.bm, align 4
  store i16 1, ptr %i.bn, align 8
  %i.iv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh) ; 4 uses
  store i8 %i.iv, ptr %i.bo, align 2
  %i.iw = call fastcc i32 @aeron_frame_info_setup(ptr noundef %1, ptr noundef %i.iq, ptr noundef nonnull %7, ptr noundef %.0)
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %dissect_aeron_data.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iy = call ptr @val_to_str_const(i32 noundef 1, ptr noundef @aeron_frame_type, ptr noundef @.str.257) ; 3 uses
  %i.iz = load i8, ptr @aeron_sequence_analysis, align 1, !range !6, !noundef !7
  %i.ja = trunc nuw i8 %i.iz to i1
  %i.jb = load i8, ptr @aeron_stream_analysis, align 1, !range !6
  %i.jc = trunc nuw i8 %i.jb to i1
  %or.cond.i.i125 = select i1 %i.ja, i1 %i.jc, i1 false
  %i.jd = icmp ne ptr %.0, null                   ; 2 uses
  %or.cond3.i.i126 = and i1 %i.jd, %or.cond.i.i125
  br i1 %or.cond3.i.i126, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.je = getelementptr i8, ptr %.0, i64 40
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i133, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = and i32 %i.jg, 32
  %.not41.i.i134 = icmp eq i32 %i.jh, 0
  %i.ji = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %.not41.i.i134, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ji, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.259, ptr noundef %i.iy)
  br label %aeron_info_stream_progress_report.exit.i127

bb.as:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ji, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.260, ptr noundef %i.iy, i32 noundef %i.iu, i32 noundef %i.im)
  br label %aeron_info_stream_progress_report.exit.i127

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.jj = load ptr, ptr %i.i, align 8
  call void @col_append_sep_str(ptr noundef %i.jj, i32 noundef 25, ptr noundef @.str.258, ptr noundef %i.iy)
  br label %aeron_info_stream_progress_report.exit.i127

aeron_info_stream_progress_report.exit.i127:      ; preds = %bb.at, %bb.as, %bb.ar
  %i.jk = load i32, ptr @hf_aeron_data, align 4
  %i.jl = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.ah, i32 noundef %i.jk, ptr noundef %0, i32 noundef %.0105189, i32 noundef -1, ptr noundef @.str.268, i32 noundef %i.iu, i32 noundef %i.im, i32 noundef %i.ie, i32 noundef %.0128.i) ; 2 uses
  %i.jm = load i32, ptr @ett_aeron_data, align 4
  %i.jn = call ptr @proto_item_add_subtree(ptr noundef %i.jl, i32 noundef %i.jm) ; 16 uses
  %i.jo = load i32, ptr @hf_aeron_channel_id, align 4
  %i.jp = load i64, ptr %i.iq, align 8
  %i.jq = call ptr @proto_tree_add_uint64(ptr noundef %i.jn, i32 noundef %i.jo, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.jp) ; 2 uses
  %.not.i137.i = icmp eq ptr %i.jq, null
  br i1 %.not.i137.i, label %proto_item_set_generated.exit.i129, label %bb.au

bb.au:                                            ; preds = %aeron_info_stream_progress_report.exit.i127
  %i.jr = getelementptr i8, ptr %i.jq, i64 40
  %i.js = load ptr, ptr %i.jr, align 8            ; 2 uses
  %.not5.i.i128 = icmp eq ptr %i.js, null
  br i1 %.not5.i.i128, label %proto_item_set_generated.exit.i129, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr i8, ptr %i.js, i64 28     ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = or i32 %i.ju, 2
  store i32 %i.jv, ptr %i.jt, align 4
  br label %proto_item_set_generated.exit.i129

proto_item_set_generated.exit.i129:               ; preds = %bb.av, %bb.au, %aeron_info_stream_progress_report.exit.i127
  %i.jw = load i32, ptr @hf_aeron_data_frame_length, align 4
  %i.jx = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.jw, ptr noundef %0, i32 noundef %.0105189, i32 noundef 4, i32 noundef -2147483648)
  %i.jy = load i32, ptr @hf_aeron_data_version, align 4
  %i.jz = add i32 %.0105189, 4
  %i.ka = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.jy, ptr noundef %0, i32 noundef %i.jz, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.kb = load i32, ptr @hf_aeron_data_flags, align 4
  %i.kc = load i32, ptr @ett_aeron_data_flags, align 4
  %i.kd = call ptr @proto_tree_add_bitmask(ptr noundef %i.jn, ptr noundef %0, i32 noundef %i.dh, i32 noundef %i.kb, i32 noundef %i.kc, ptr noundef @dissect_aeron_data.flags, i32 noundef -2147483648) ; 0 uses
  %i.ke = load i32, ptr @hf_aeron_data_type, align 4
  %i.kf = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.ke, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.kg = load i32, ptr @hf_aeron_data_term_offset, align 4
  %i.kh = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.kg, ptr noundef %0, i32 noundef %i.il, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ki = getelementptr i8, ptr %i.iq, i64 8      ; 2 uses
  %.val.i130 = load ptr, ptr %i.ki, align 8
  call fastcc void @aeron_next_offset_report(ptr noundef %0, ptr noundef %i.jn, ptr %.val.i130, i32 noundef %i.is, i32 noundef %i.iu, i32 noundef %i.im, i32 noundef %.0127.i)
  %i.kj = load i32, ptr @hf_aeron_data_session_id, align 4
  %i.kk = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.kj, ptr noundef %0, i32 noundef %i.in, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.kl = load i32, ptr @hf_aeron_data_stream_id, align 4
  %i.km = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.kl, ptr noundef %0, i32 noundef %i.ir, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.kn = load i32, ptr @hf_aeron_data_term_id, align 4
  %i.ko = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.kn, ptr noundef %0, i32 noundef %i.it, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.kp = load i32, ptr @hf_aeron_data_reserved_value, align 4
  %i.kq = add i32 %.0105189, 24
  %i.kr = call ptr @proto_tree_add_item(ptr noundef %i.jn, i32 noundef %i.kp, ptr noundef %0, i32 noundef %i.kq, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %.not.i131 = icmp eq i32 %i.ik, 0
  br i1 %.not.i131, label %bb.bz, label %bb.aw

bb.aw:                                            ; preds = %proto_item_set_generated.exit.i129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ks = load i8, ptr @aeron_reassemble_fragments, align 1, !range !6, !noundef !7
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.ax, label %aeron_msg_process.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ku = load ptr, ptr %i.ar, align 8
  %i.kv = getelementptr i8, ptr %i.ku, i64 53
  %i.kw = load i16, ptr %i.kv, align 1
  %i.kx = and i16 %i.kw, 8
  %i.ky = icmp ne i16 %i.kx, 0
  %.not.i138.i = icmp ugt i8 %i.iv, -65
  %or.cond140.i = select i1 %i.ky, i1 true, i1 %.not.i138.i
  br i1 %or.cond140.i, label %aeron_msg_process.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i = load ptr, ptr %i.ki, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.is, ptr %i.c, align 4
  %i.kz = call ptr @wmem_map_lookup(ptr noundef %.val.i.i, ptr noundef nonnull %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not46.i.i = icmp eq ptr %i.kz, null
  br i1 %.not46.i.i, label %aeron_msg_process.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.la = getelementptr i8, ptr %i.kz, i64 8
  %.val55.i.i = load ptr, ptr %i.la, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.iu, ptr %i.b, align 4
  %i.lb = call ptr @wmem_map_lookup(ptr noundef %.val55.i.i, ptr noundef nonnull %i.b) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not47.i.i = icmp eq ptr %i.lb, null
  br i1 %.not47.i.i, label %aeron_msg_process.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not48.i.i = icmp sgt i8 %i.iv, -1
  %i.lc = getelementptr i8, ptr %i.lb, i64 16     ; 2 uses
  %.val56.i.i = load ptr, ptr %i.lc, align 8
  %i.ld = call ptr @wmem_tree_lookup32_le(ptr noundef %.val56.i.i, i32 noundef %i.im) ; 6 uses
  %.not49.i.i = icmp eq ptr %i.ld, null           ; 2 uses
  br i1 %.not48.i.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not49.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.le = getelementptr i8, ptr %i.ld, i64 24
  %i.lf = load i32, ptr %i.le, align 8
  %.not52.i.i = icmp eq i32 %i.lf, %i.im
  br i1 %.not52.i.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lg = call fastcc ptr @aeron_term_msg_add(ptr noundef %i.lb, ptr noundef readonly %1, ptr noundef nonnull readonly %7)
  br label %bb.bh

bb.be:                                            ; preds = %bb.ba
  br i1 %.not49.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lh = getelementptr i8, ptr %i.ld, i64 28
  %i.li = load i32, ptr %i.lh, align 4
  %i.lj = icmp eq i32 %i.li, %i.im
  br i1 %i.lj, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lk = call fastcc ptr @aeron_msg_fragment_find(ptr noundef %i.ld, ptr noundef nonnull readonly %7)
  %.not50.i.i = icmp eq ptr %i.lk, null
  br i1 %.not50.i.i, label %bb.bh, label %aeron_msg_process.exit.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.139.i.i = phi ptr [ %i.lg, %bb.bd ], [ null, %bb.bg ], [ %i.ld, %bb.bf ], [ null, %bb.be ], [ %i.ld, %bb.bc ] ; 2 uses
  %i.ll = call ptr @wmem_file_scope()
  %i.lm = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.ll, i64 noundef 32) #12 ; 9 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  store i32 %i.im, ptr %i.ln, align 8
  %i.lo = getelementptr i8, ptr %i.lm, i64 12
  store i32 %i.ie, ptr %i.lo, align 4
  %i.lp = getelementptr i8, ptr %i.lm, i64 16
  store i32 %i.ik, ptr %i.lp, align 8
  %i.lq = load i32, ptr %i.aj, align 4
  %i.lr = getelementptr i8, ptr %i.lm, i64 20
  store i32 %i.lq, ptr %i.lr, align 4
  %i.ls = getelementptr i8, ptr %i.lm, i64 24
  store i32 %.0105189, ptr %i.ls, align 8
  %i.lt = call ptr @wmem_file_scope()
  %i.lu = add i32 %.0105189, 32
  %i.lv = zext i32 %i.ik to i64
  %i.lw = call ptr @tvb_memdup(ptr noundef %i.lt, ptr noundef %0, i32 noundef %i.lu, i64 noundef %i.lv)
  store ptr %i.lw, ptr %i.lm, align 8
  %i.lx = getelementptr i8, ptr %i.lm, i64 28
  store i8 %i.iv, ptr %i.lx, align 4
  %i.ly = icmp eq ptr %.139.i.i, null
  br i1 %i.ly, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lz = getelementptr i8, ptr %i.lb, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  call void @wmem_list_append(ptr noundef %i.ma, ptr noundef %i.lm)
  br label %.critedge.i.i

bb.bj:                                            ; preds = %bb.bh
  call fastcc void @aeron_msg_fragment_add(ptr noundef nonnull %.139.i.i, ptr noundef %i.lm)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bj, %bb.bi
  %i.mb = getelementptr i8, ptr %i.lb, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = call i32 @wmem_list_count(ptr noundef %i.mc)
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %aeron_msg_process.exit.i, label %bb.bk

bb.bk:                                            ; preds = %.critedge.i.i
  %i.mf = load ptr, ptr %i.lc, align 8
  %i.mg = call zeroext i1 @wmem_tree_foreach(ptr noundef %i.mf, ptr noundef @aeron_msg_process_orphan_fragments_msg_cb, ptr noundef nonnull %i.lb) ; 0 uses
  br label %aeron_msg_process.exit.i

aeron_msg_process.exit.i:                         ; preds = %bb.bk, %.critedge.i.i, %bb.bg, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %10 = load i8, ptr %i.bo, align 2
  %i.mh = icmp ugt i8 %10, -65                    ; 2 uses
  br i1 %i.jd, label %bb.bl, label %bb.bv

bb.bl:                                            ; preds = %aeron_msg_process.exit.i
  %i.mi = getelementptr i8, ptr %.0, i64 72
  %i.mj = load i32, ptr %i.mi, align 8
  %i.mk = and i32 %i.mj, 4
  %.not135.i = icmp eq i32 %i.mk, 0
  br i1 %.not135.i, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = getelementptr i8, ptr %.0, i64 56       ; 2 uses
  %.val136.i = load ptr, ptr %i.ml, align 8       ; 5 uses
  %i.mm = icmp eq ptr %.val136.i, null
  br i1 %i.mm, label %dissect_aeron_reassembled_data.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mn = getelementptr i8, ptr %.val136.i, i64 16 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mo, ptr noundef @.str.274) ; 0 uses
  %i.mq = load i32, ptr @hf_aeron_data_reassembly, align 4
  %i.mr = load ptr, ptr %i.mn, align 8            ; 2 uses
  %i.ms = call i32 @tvb_reported_length_remaining(ptr noundef %i.mr, i32 noundef 0)
  %i.mt = getelementptr i8, ptr %.val136.i, i64 40
  %i.mu = load i32, ptr %i.mt, align 8
  %i.mv = getelementptr i8, ptr %.val136.i, i64 32
  %i.mw = load i32, ptr %i.mv, align 8
  %i.mx = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.jn, i32 noundef %i.mq, ptr noundef %i.mr, i32 noundef 0, i32 noundef %i.ms, ptr noundef @.str.275, i32 noundef %i.mu, i32 noundef %i.mw) ; 4 uses
  %i.my = load i32, ptr @ett_aeron_data_reassembly, align 4
  %i.mz = call ptr @proto_item_add_subtree(ptr noundef %i.mx, i32 noundef %i.my)
  %i.na = load ptr, ptr %.val136.i, align 8
  %i.nb = call ptr @wmem_list_head(ptr noundef %i.na) ; 2 uses
  %.not1.i.i = icmp eq ptr %i.nb, null
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bn, %bb.br
  %.04.i.i = phi i32 [ %.1.i.i, %bb.br ], [ 0, %bb.bn ] ; 5 uses
  %.0353.i.i = phi i1 [ %.136.i.i, %bb.br ], [ true, %bb.bn ] ; 2 uses
  %.0372.i.i = phi ptr [ %i.nv, %bb.br ], [ %i.nb, %bb.bn ] ; 2 uses
  %i.nc = call ptr @wmem_list_frame_data(ptr noundef nonnull %.0372.i.i) ; 3 uses
  %.not40.i.i = icmp eq ptr %i.nc, null
  br i1 %.not40.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i
  %i.nd = load i32, ptr @hf_aeron_data_reassembly_fragment, align 4
  %i.ne = load ptr, ptr %i.mn, align 8
  %i.nf = getelementptr i8, ptr %i.nc, i64 16     ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 8            ; 3 uses
  %i.nh = getelementptr i8, ptr %i.nc, i64 20     ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4            ; 2 uses
  %i.nj = add i32 %.04.i.i, -1
  %i.nk = add i32 %i.nj, %i.ng
  %i.nl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.mz, i32 noundef %i.nd, ptr noundef %i.ne, i32 noundef %.04.i.i, i32 noundef %i.ng, i32 noundef %i.ni, ptr noundef @.str.276, i32 noundef %i.ni, i32 noundef %.04.i.i, i32 noundef %i.nk, i32 noundef %i.ng) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nm = getelementptr i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not5.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.no = getelementptr i8, ptr %i.nn, i64 28     ; 2 uses
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = or i32 %i.np, 2
  store i32 %i.nq, ptr %i.no, align 4
  br label %proto_item_set_generated.exit.i.i

proto_item_set_generated.exit.i.i:                ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.nr = load i32, ptr %i.nh, align 4
  %i.ns = load i32, ptr %i.nf, align 8
  %.str.277..str.278.i.i = select i1 %.0353.i.i, ptr @.str.277, ptr @.str.278
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mx, ptr noundef nonnull %.str.277..str.278.i.i, i32 noundef %i.nr, i32 noundef %i.ns)
  %i.nt = load i32, ptr %i.nf, align 8
  %i.nu = add i32 %i.nt, %.04.i.i
  br label %bb.br

bb.br:                                            ; preds = %proto_item_set_generated.exit.i.i, %.lr.ph.i.i
  %.136.i.i = phi i1 [ false, %proto_item_set_generated.exit.i.i ], [ %.0353.i.i, %.lr.ph.i.i ]
  %.1.i.i = phi i32 [ %i.nu, %proto_item_set_generated.exit.i.i ], [ %.04.i.i, %.lr.ph.i.i ]
  %i.nv = call ptr @wmem_list_frame_next(ptr noundef nonnull %.0372.i.i) ; 2 uses
  %.not.i139.i = icmp eq ptr %i.nv, null
  br i1 %.not.i139.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bn
  %.not.i41.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i41.i.i, label %dissect_aeron_reassembled_data.exit.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i
  %i.nw = getelementptr i8, ptr %i.mx, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8            ; 2 uses
  %.not5.i42.i.i = icmp eq ptr %i.nx, null
  br i1 %.not5.i42.i.i, label %dissect_aeron_reassembled_data.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ny = getelementptr i8, ptr %i.nx, i64 28     ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = or i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  br label %dissect_aeron_reassembled_data.exit.i

dissect_aeron_reassembled_data.exit.i:            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i, %bb.bm
  %i.ob = load ptr, ptr %i.ml, align 8
  %i.oc = getelementptr i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bl
  %i.oe = add i32 %.0105189, 32
  %i.of = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.oe, i32 noundef %i.ik)
  br label %bb.bw

bb.bv:                                            ; preds = %aeron_msg_process.exit.i
  %i.og = add i32 %.0105189, 32
  %i.oh = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.og, i32 noundef %i.ik)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %dissect_aeron_reassembled_data.exit.i
  %.0126.i = phi ptr [ %i.od, %dissect_aeron_reassembled_data.exit.i ], [ %i.of, %bb.bu ], [ %i.oh, %bb.bv ] ; 2 uses
  %.1.i = phi i1 [ true, %dissect_aeron_reassembled_data.exit.i ], [ %i.mh, %bb.bu ], [ %i.mh, %bb.bv ]
  %i.oi = load i8, ptr @aeron_use_heuristic_subdissectors, align 1, !range !6
  %i.oj = trunc nuw i8 %i.oi to i1
  %or.cond.i132 = select i1 %.1.i, i1 %i.oj, i1 false
  br i1 %or.cond.i132, label %bb.bx, label %.critedge.i

bb.bx:                                            ; preds = %bb.bw
  %i.ok = load ptr, ptr @aeron_heuristic_subdissector_list, align 8
  %i.ol = call zeroext i1 @dissector_try_heuristic(ptr noundef %i.ok, ptr noundef %.0126.i, ptr noundef %1, ptr noundef %i.jn, ptr noundef nonnull %i.d, ptr noundef null)
  br i1 %i.ol, label %bb.by, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bx, %bb.bw
  %i.om = call i32 @call_data_dissector(ptr noundef %.0126.i, ptr noundef %1, ptr noundef %i.jn) ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %.critedge.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %proto_item_set_generated.exit.i129
  call fastcc void @aeron_sequence_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.jn, ptr noundef %i.iq, ptr noundef nonnull %7, ptr noundef %.0)
  call fastcc void @aeron_stream_report(ptr noundef %0, ptr noundef %1, ptr noundef %i.jn, ptr noundef %i.iq, ptr noundef %.0)
  call void @proto_item_set_len(ptr noundef %i.jl, i32 noundef %.0128.i)
  %i.on = add i32 %i.ie, -1
  %or.cond3.i = icmp ult i32 %i.on, 31
  br i1 %or.cond3.i, label %bb.ca, label %dissect_aeron_data.exit

bb.ca:                                            ; preds = %bb.bz
  %i.oo = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.jx, ptr noundef @ei_aeron_analysis_invalid_data_length) ; 0 uses
  %i.op = sub nsw i32 0, %.0128.i
  br label %dissect_aeron_data.exit

dissect_aeron_data.exit:                          ; preds = %bb.al, %bb.an, %bb.bz, %bb.ca
  %.0130.i = phi i32 [ 0, %bb.al ], [ %i.op, %bb.ca ], [ 0, %bb.an ], [ %.0128.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %dissect_aeron_rtt.exit

bb.cb:                                            ; preds = %aeron_frame_info_add.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.oq = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0105189) ; 4 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %dissect_aeron_nak.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.os = add i32 %.0105189, 8                    ; 2 uses
  %i.ot = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.os)
  %i.ou = load i32, ptr %i.aj, align 4
  %i.ov = call fastcc ptr @aeron_transport_add(ptr noundef readonly %i.dl, i32 noundef %i.ot, i32 noundef %i.ou) ; 3 uses
  %i.ow = add i32 %.0105189, 12                   ; 2 uses
  %i.ox = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ow)
  %i.oy = add i32 %.0105189, 16                   ; 2 uses
  %i.oz = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.oy) ; 2 uses
  %i.pa = add i32 %.0105189, 20                   ; 2 uses
  %i.pb = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.pa) ; 3 uses
  %i.pc = add i32 %.0105189, 24                   ; 2 uses
  %i.pd = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.pc) ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i8 noundef 0, i64 noundef 48, i1 noundef false) #13
  store i32 %i.ox, ptr %i.bc, align 4
  store i32 %i.oz, ptr %i.bb, align 8
  store i32 3, ptr %6, align 8
  store i32 %i.pb, ptr %i.bd, align 8
  store i32 %i.pd, ptr %i.be, align 4
  store i16 2, ptr %i.bf, align 8
  %i.pe = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dh)
  store i8 %i.pe, ptr %i.bg, align 2
  %i.pf = call fastcc i32 @aeron_frame_info_setup(ptr noundef %1, ptr noundef %i.ov, ptr noundef nonnull %6, ptr noundef %.0)
  %i.pg = icmp slt i32 %i.pf, 0
  br i1 %i.pg, label %dissect_aeron_nak.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ph = load ptr, ptr %i.i, align 8
  call void @col_append_sep_str(ptr noundef %i.ph, i32 noundef 25, ptr noundef @.str.258, ptr noundef @.str.185)
  %i.pi = load i32, ptr @hf_aeron_nak, align 4
  %i.pj = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.ah, i32 noundef %i.pi, ptr noundef %0, i32 noundef %.0105189, i32 noundef -1, ptr noundef @.str.279, i32 noundef %i.oz, i32 noundef %i.pb, i32 noundef %i.pd) ; 2 uses
  %i.pk = load i32, ptr @ett_aeron_nak, align 4
  %i.pl = call ptr @proto_item_add_subtree(ptr noundef %i.pj, i32 noundef %i.pk) ; 11 uses
  %i.pm = load i32, ptr @hf_aeron_channel_id, align 4
  %i.pn = load i64, ptr %i.ov, align 8
  %i.po = call ptr @proto_tree_add_uint64(ptr noundef %i.pl, i32 noundef %i.pm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.pn) ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.po, null
  br i1 %.not.i.i135, label %proto_item_set_generated.exit.i137, label %bb.ce
end_hunk_0
