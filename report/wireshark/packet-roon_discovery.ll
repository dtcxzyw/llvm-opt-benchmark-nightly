Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-roon_discovery?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
begin_hunk_0
@hf_roon_disco_tid = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"roon_disco.tid\00", align 1
@hf_roon_disco_user_id = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"UserID\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"roon_disco.user_id\00", align 1
@hf_roon_disco_unique_id = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"roon_disco.unique_id\00", align 1
@hf_roon_disco_code_signing_keys = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [18 x i8] c"Code Signing Keys\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"roon_disco.code_signing_keys\00", align 1
@hf_roon_disco_resp_in = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"Response frame\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"roon_disco.resp_in\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"The frame number of the corresponding response\00", align 1
@hf_roon_disco_no_resp = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [17 x i8] c"No response seen\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"roon_disco.no_resp\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"No corresponding response frame was seen\00", align 1
@hf_roon_disco_resp_to = internal global i32 0, align 4
@.str.54 = private unnamed_addr constant [14 x i8] c"Request frame\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"roon_disco.resp_to\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"The frame number of the corresponding request\00", align 1
@hf_roon_disco_resptime = internal global i32 0, align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"Response time\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"roon_disco.resptime\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"The time between the request and the response, in ms\00", align 1
@proto_register_roon_discover.ett = internal global [1 x ptr] [ptr @ett_roon_discover], align 8
@ett_roon_discover = internal global i32 0, align 4
@.str.60 = private unnamed_addr constant [15 x i8] c"Roon Discovery\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"RoonDisco\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"roon_disco\00", align 1
@proto_roon_discover = internal unnamed_addr global i32 0, align 4
@roon_discover_handle = internal unnamed_addr global ptr null, align 8
@roon_tap = internal unnamed_addr global i32 0, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"SOOD\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Reply\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"Query\00", align 1
@roon_disco_string_fields = internal constant [24 x %struct.roon_map] [%struct.roon_map { ptr @.str.72, ptr @.str.75, ptr @hf_roon_disco_tid }, %struct.roon_map { ptr @.str.76, ptr @.str.46, ptr @hf_roon_disco_code_signing_keys }, %struct.roon_map { ptr @.str.77, ptr @.str, ptr @hf_roon_disco_config_version }, %struct.roon_map { ptr @.str.78, ptr @.str.8, ptr @hf_roon_disco_device_class }, %struct.roon_map { ptr @.str.79, ptr @.str.6, ptr @hf_roon_disco_device_type }, %struct.roon_map { ptr @.str.80, ptr @.str.4, ptr @hf_roon_disco_direction }, %struct.roon_map { ptr @.str.81, ptr @.str.2, ptr @hf_roon_disco_display_version }, %struct.roon_map { ptr @.str.82, ptr @.str.10, ptr @hf_roon_disco_http_port }, %struct.roon_map { ptr @.str.83, ptr @.str.12, ptr @hf_roon_disco_https_port }, %struct.roon_map { ptr @.str.84, ptr @.str.16, ptr @hf_roon_disco_machine_id }, %struct.roon_map { ptr @.str.85, ptr @.str.18, ptr @hf_roon_disco_machine_name }, %struct.roon_map { ptr @.str.86, ptr @.str.87, ptr @hf_roon_disco_marker }, %struct.roon_map { ptr @.str.88, ptr @.str.89, ptr @hf_roon_disco_name }, %struct.roon_map { ptr @.str.90, ptr @.str.24, ptr @hf_roon_disco_os_version }, %struct.roon_map { ptr @.str.91, ptr @.str.26, ptr @hf_roon_disco_protocol_hash }, %struct.roon_map { ptr @.str.92, ptr @.str.28, ptr @hf_roon_disco_protocol_version }, %struct.roon_map { ptr @.str.68, ptr @.str.30, ptr @hf_roon_disco_query_service_id }, %struct.roon_map { ptr @.str.93, ptr @.str.32, ptr @hf_roon_disco_raat_version }, %struct.roon_map { ptr @.str.67, ptr @.str.94, ptr @hf_roon_disco_service_id }, %struct.roon_map { ptr @.str.95, ptr @.str.36, ptr @hf_roon_disco_tcp_port }, %struct.roon_map { ptr @.str.96, ptr @.str.38, ptr @hf_roon_disco_tcp_port_v2 }, %struct.roon_map { ptr @.str.97, ptr @.str.44, ptr @hf_roon_disco_unique_id }, %struct.roon_map { ptr @.str.98, ptr @.str.42, ptr @hf_roon_disco_user_id }, %struct.roon_map zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [11 x i8] c"service_id\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"query_service_id\00", align 1
@roon_service_ids = internal constant [7 x %struct.roon_uuid_map] [%struct.roon_uuid_map { ptr @.str.99, ptr @.str.100 }, %struct.roon_uuid_map { ptr @.str.101, ptr @.str.102 }, %struct.roon_uuid_map { ptr @.str.103, ptr @.str.104 }, %struct.roon_uuid_map { ptr @.str.105, ptr @.str.106 }, %struct.roon_uuid_map { ptr @.str.107, ptr @.str.108 }, %struct.roon_uuid_map { ptr @.str.71, ptr @.str.60 }, %struct.roon_uuid_map zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [21 x i8] c"Unknown Roon Service\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"d7634b85-8190-470f-aa51-6cb5538dc1b9\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"_tid\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"TransactionID\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"code_signing_keys\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"config_version\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"device_class\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"display_version\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"http_port\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"https_port\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"machine_id\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"machine_name\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"marker\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"Discovery Marker\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Host Name\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"os_version\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"protocol_hash\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"protocol_version\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"raat_version\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"ServiceID\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"tcp_port\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"tcp_port_v2\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"unique_id\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"user_id\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"00720724-5143-4a9b-abac-0e50cba674bb\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Roon API Client\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"5a955bb8-9673-4f8d-9437-4c6b7b18fba8\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"Roon Endpoint\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"5e2042ad-9bc5-4508-be92-ff68f19bdc93\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"Roon RATT\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"b39fcfbc-17de-46c8-81ad-82a910747be0\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Roon New Client\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"d52b2cb7-02c5-48fc-981b-a10f0aadd93b\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Roon Server\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"is_dev\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"%.3f ms\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c" [response to %u]\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c" [reply in %u]\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_roon_discover() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) ; 2 uses
  store i32 %i.a, ptr @proto_roon_discover, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_roon_discover.hf, i32 noundef 28)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_roon_discover.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_roon_discover, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef nonnull @.str.62, ptr noundef nonnull @dissect_roon_discover, i32 noundef %i.b)
  store ptr %i.c, ptr @roon_discover_handle, align 8
  %i.d = tail call i32 @register_tap(ptr noundef nonnull @.str.62)
  store i32 %i.d, ptr @roon_tap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_roon_discover(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 96
  br i1 %i.b, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = icmp ult i32 %i.c, 6
  br i1 %i.d, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @tvb_get_string_enc(ptr noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.64, ptr noundef %i.g) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.i = tail call signext i16 @tvb_get_int16(ptr noundef %0, i32 noundef 4, i32 noundef 0)
  switch i16 %i.i, label %bb.y [
    i16 594, label %bb.e
    i16 593, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.098 = phi i1 [ true, %bb.e ], [ false, %bb.d ] ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.61)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = load i32, ptr @proto_roon_discover, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = load i32, ptr @ett_roon_discover, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 7 uses
  %i.q = load i32, ptr @hf_roon_disco_marker, align 4
  %i.r = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str.64) ; 0 uses
  %i.s = load i32, ptr @hf_roon_disco_direction, align 4
  %spec.select206 = select i1 %.098, ptr @.str.65, ptr @.str.66 ; 3 uses
  %i.t = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %spec.select206) ; 0 uses
  %i.u = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.v = icmp ugt i32 %i.u, 6
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f
  %i.w = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.w, i32 noundef 25, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef nonnull %spec.select206)
  br label %bb.x

._crit_edge:                                      ; preds = %roon_map_name.exit136.thread
  %i.x = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.x, i32 noundef 25, ptr noundef nonnull @.str.74, ptr noundef %.194, ptr noundef nonnull %spec.select206)
  %.not99 = icmp eq ptr %.297, null
  br i1 %.not99, label %bb.x, label %bb.t

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %roon_map_name.exit136.thread
  %.090170 = phi i32 [ %i.cu, %roon_map_name.exit136.thread ], [ 6, %bb.f ] ; 7 uses
  %.091169 = phi i1 [ %.2, %roon_map_name.exit136.thread ], [ false, %bb.f ] ; 4 uses
  %.093168 = phi ptr [ %.194, %roon_map_name.exit136.thread ], [ null, %bb.f ] ; 3 uses
  %.095167 = phi ptr [ %.297, %roon_map_name.exit136.thread ], [ null, %bb.f ] ; 4 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.090170)
  %i.z = add nuw i32 %.090170, 1
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = zext i8 %i.y to i32                     ; 3 uses
  %i.ac = tail call ptr @tvb_get_string_enc(ptr noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef 0) ; 7 uses
  %i.ad = add i32 %.090170, 2
  %i.ae = add i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = add i32 %i.ae, 1
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = zext i8 %i.af to i32                    ; 2 uses
  %i.aj = tail call ptr @tvb_get_string_enc(ptr noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef 0) ; 8 uses
  %i.ak = add nuw nsw i32 %i.ab, 3
  %i.al = add nuw nsw i32 %i.ak, %i.ai            ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.i
  %.021.i.i = phi i64 [ %.1.i.i, %bb.i ], [ 23, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.am = add i64 %.01620.i.i, %.021.i.i          ; 2 uses
  %i.an = lshr i64 %i.am, 1                       ; 3 uses
  %i.ao = mul i64 %i.an, 24                       ; 2 uses
  %i.ap = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef %i.aq) #6 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %.not.i5.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i5.i, label %roon_map_name.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nuw i64 %i.an, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.at, %bb.h ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.h ], [ %i.an, %.lr.ph.i.i ] ; 2 uses
  %i.au = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.au, label %.lr.ph.i.i, label %.lr.ph.i.i128, !llvm.loop !6

roon_map_name.exit:                               ; preds = %bb.g
  %i.av = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ao
  %.not.i = icmp eq ptr %i.av, null
  %4 = and i64 %i.am, 4611686018427387902
  %.not100 = icmp eq i64 %4, 46
  %or.cond = or i1 %.not100, %.not.i
  br i1 %or.cond, label %.lr.ph.i.i128, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %roon_map_name.exit, %bb.l
  %.021.i.i109 = phi i64 [ %.1.i.i113, %bb.l ], [ 23, %roon_map_name.exit ] ; 2 uses
  %.01620.i.i110 = phi i64 [ %.117.i.i112, %bb.l ], [ 0, %roon_map_name.exit ] ; 2 uses
  %i.aw = add i64 %.01620.i.i110, %.021.i.i109
  %i.ax = lshr i64 %i.aw, 1                       ; 3 uses
  %i.ay = mul i64 %i.ax, 24                       ; 2 uses
  %i.az = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef %i.ba) #6 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i108
  %.not.i5.i111 = icmp eq i32 %i.bb, 0
  br i1 %.not.i5.i111, label %bsearch.exit.i114, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nuw i64 %i.ax, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i108
  %.117.i.i112 = phi i64 [ %i.bd, %bb.k ], [ %.01620.i.i110, %.lr.ph.i.i108 ] ; 2 uses
  %.1.i.i113 = phi i64 [ %.021.i.i109, %bb.k ], [ %i.ax, %.lr.ph.i.i108 ] ; 2 uses
  %i.be = icmp ult i64 %.117.i.i112, %.1.i.i113
  br i1 %i.be, label %.lr.ph.i.i108, label %roon_map_value.exit, !llvm.loop !6

bsearch.exit.i114:                                ; preds = %bb.j
  %i.bf = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ay ; 2 uses
  %.not.i115 = icmp eq ptr %i.bf, null
  br i1 %.not.i115, label %roon_map_value.exit, label %bb.m

bb.m:                                             ; preds = %bsearch.exit.i114
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %roon_map_value.exit

roon_map_value.exit:                              ; preds = %bb.l, %bsearch.exit.i114, %bb.m
  %i.bi = phi ptr [ %i.bh, %bb.m ], [ null, %bsearch.exit.i114 ], [ null, %bb.l ] ; 2 uses
  %i.bj = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(11) @.str.67) #6
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i116.preheader, label %bb.n

bb.n:                                             ; preds = %roon_map_value.exit
  %i.bl = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(17) @.str.68) #6
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i116.preheader, label %bb.s

.lr.ph.i.i116.preheader:                          ; preds = %bb.n, %roon_map_value.exit
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %bb.q
  %.021.i.i117 = phi i64 [ %.1.i.i121, %bb.q ], [ 6, %.lr.ph.i.i116.preheader ] ; 2 uses
  %.01620.i.i118 = phi i64 [ %.117.i.i120, %bb.q ], [ 0, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.bn = add i64 %.01620.i.i118, %.021.i.i117
  %i.bo = lshr i64 %i.bn, 1                       ; 3 uses
  %i.bp = shl i64 %i.bo, 4                        ; 2 uses
  %i.bq = getelementptr i8, ptr @roon_service_ids, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 16
  %i.bs = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.aj, ptr noundef %i.br) ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i116
  %.not.i.i119 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i119, label %bsearch.exit.i122, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = add nuw i64 %i.bo, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i116
  %.117.i.i120 = phi i64 [ %i.bu, %bb.p ], [ %.01620.i.i118, %.lr.ph.i.i116 ] ; 2 uses
  %.1.i.i121 = phi i64 [ %.021.i.i117, %bb.p ], [ %i.bo, %.lr.ph.i.i116 ] ; 2 uses
  %i.bv = icmp ult i64 %.117.i.i120, %.1.i.i121
  br i1 %i.bv, label %.lr.ph.i.i116, label %roon_map_uuid.exit, !llvm.loop !6

bsearch.exit.i122:                                ; preds = %bb.o
  %i.bw = getelementptr i8, ptr @roon_service_ids, i64 %i.bp ; 2 uses
  %.not.i123 = icmp eq ptr %i.bw, null
  br i1 %.not.i123, label %roon_map_uuid.exit, label %bb.r

bb.r:                                             ; preds = %bsearch.exit.i122
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  br label %roon_map_uuid.exit

roon_map_uuid.exit:                               ; preds = %bb.q, %bsearch.exit.i122, %bb.r
  %i.bz = phi ptr [ %i.by, %bb.r ], [ null, %bsearch.exit.i122 ], [ null, %bb.q ] ; 2 uses
  %.not102 = icmp eq ptr %i.bz, null
  %i.ca = select i1 %.not102, ptr @.str.69, ptr %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.bi, align 4
  %i.cc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %i.p, i32 noundef %i.cb, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, ptr noundef %i.aj, ptr noundef nonnull @.str.70, ptr noundef %i.aj, ptr noundef nonnull %i.ca) ; 0 uses
  %i.cd = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.71)
  %i.ce = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %i.ce, i1 true, i1 %.091169
  br label %roon_map_name.exit136.thread

bb.s:                                             ; preds = %bb.n
  %i.cf = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(5) @.str.72) #6
  %i.cg = icmp eq i32 %i.cf, 0
  %spec.select103 = select i1 %i.cg, ptr %i.aj, ptr %.095167
  %i.ch = load i32, ptr %i.bi, align 4
  %i.ci = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.ch, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, ptr noundef %i.aj) ; 0 uses
  br label %roon_map_name.exit136.thread

.lr.ph.i.i128:                                    ; preds = %bb.i, %roon_map_name.exit
  %i.cj = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef nonnull dereferenceable(7) @.str.109) #6
  %.not.i5.i131 = icmp eq i32 %i.cj, 0
  br i1 %.not.i5.i131, label %.lr.ph.i.i141, label %roon_map_name.exit136.thread

.lr.ph.i.i141:                                    ; preds = %.lr.ph.i.i128
  %i.ck = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef nonnull dereferenceable(7) @.str.109) #6
  %.not.i5.i144 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not.i5.i144, ptr @hf_roon_disco_is_dev, ptr null
  %i.cm = load i8, ptr %i.aj, align 1
  %.not174 = icmp eq i8 %i.cm, 48
  br i1 %.not174, label %sub_1, label %roon_map_value.exit149.tail

sub_1:                                            ; preds = %.lr.ph.i.i141
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = zext i1 %i.cp to i64
  br label %roon_map_value.exit149.tail

roon_map_value.exit149.tail:                      ; preds = %.lr.ph.i.i141, %sub_1
  %i.cr = phi i64 [ 1, %.lr.ph.i.i141 ], [ %i.cq, %sub_1 ]
  %i.cs = load i32, ptr %i.cl, align 4
  %i.ct = tail call ptr @proto_tree_add_boolean(ptr noundef %i.p, i32 noundef %i.cs, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, i64 noundef %i.cr) ; 0 uses
  br label %roon_map_name.exit136.thread

roon_map_name.exit136.thread:                     ; preds = %.lr.ph.i.i128, %roon_map_value.exit149.tail, %bb.s, %roon_map_uuid.exit
  %.297 = phi ptr [ %.095167, %roon_map_uuid.exit ], [ %spec.select103, %bb.s ], [ %.095167, %roon_map_value.exit149.tail ], [ %.095167, %.lr.ph.i.i128 ] ; 5 uses
  %.194 = phi ptr [ %i.ca, %roon_map_uuid.exit ], [ %.093168, %bb.s ], [ %.093168, %roon_map_value.exit149.tail ], [ %.093168, %.lr.ph.i.i128 ] ; 2 uses
  %.2 = phi i1 [ %spec.select, %roon_map_uuid.exit ], [ %.091169, %bb.s ], [ %.091169, %roon_map_value.exit149.tail ], [ %.091169, %.lr.ph.i.i128 ] ; 2 uses
  %i.cu = add i32 %i.al, %.090170                 ; 2 uses
  %i.cv = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.cw = icmp ult i32 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.preheader, label %._crit_edge, !llvm.loop !7

bb.t:                                             ; preds = %._crit_edge
  %i.cx = tail call ptr @ascii_strdown_inplace(ptr noundef nonnull %.297) ; 0 uses
  br i1 %.098, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = tail call fastcc ptr @transaction_end(ptr noundef %1, ptr noundef %i.p, ptr noundef %.297)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cz = tail call fastcc ptr @transaction_start(ptr noundef %1, ptr noundef %i.p, ptr noundef %.297, i1 noundef zeroext %.2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi ptr [ %i.cy, %bb.u ], [ %i.cz, %bb.v ]
  %i.da = load i32, ptr @roon_tap, align 4
  tail call void @tap_queue_packet(i32 noundef %i.da, ptr noundef %1, ptr noundef %.0)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %bb.w, %._crit_edge
  %i.db = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.db, %bb.x ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_roon_discover() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @roon_discover_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.63, i32 noundef 9003, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare signext i16 @tvb_get_int16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ascii_strdown_inplace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @transaction_end(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 19 uses
  %4 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #6
  %i.e = tail call i32 @wmem_strong_hash(ptr noundef nonnull %2, i64 noundef %i.d)
  store i32 %i.e, ptr %i.a, align 4
  %i.f = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %0, i64 232
  %i.i = getelementptr i8, ptr %0, i64 284
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.j)
  %i.l = getelementptr i8, ptr %0, i64 288
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 292
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call ptr @find_conversation(i32 noundef %i.g, ptr noundef null, ptr noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 0) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @proto_roon_discover, align 4
  %i.s = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.p, i32 noundef %i.r) ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 53
  %i.x = load i16, ptr %i.w, align 1
  %i.y = and i16 %i.x, 8
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 1, ptr %3, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = call ptr @wmem_tree_lookup32_array(ptr noundef %i.ac, ptr noundef nonnull %3) ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.ad, i64 4      ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4
  %.not47 = icmp eq i32 %i.ag, 0
  br i1 %.not47, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e
  %i.ah = load i32, ptr %i.f, align 4
  store i32 %i.ah, ptr %i.af, align 4
  store i32 1, ptr %3, align 16
  store ptr %i.a, ptr %i.z, align 8
  store i32 1, ptr %i.aa, align 16
  store ptr %i.b, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0
