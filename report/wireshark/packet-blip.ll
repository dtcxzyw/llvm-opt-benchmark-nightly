Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-blip?download=true
inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0
%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._value_string_ext = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.expert_field = type { i32, i32 }
%struct._val64_string = type { i64, ptr }

@proto_register_blip.hf = internal global [7 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_blip_message_number, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 11, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_frame_flags, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 4, i32 514, ptr @flag_combos_ext, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_properties_length, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 11, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_properties, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_message_body, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_ack_size, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 11, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_blip_checksum, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_blip_message_number = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Message Number\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"blip.messagenum\00", align 1
@hf_blip_frame_flags = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Frame Flags\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"blip.frameflags\00", align 1
@flag_combos_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 16, ptr @flag_combos, ptr @.str.26, ptr null }, align 8
@hf_blip_properties_length = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Properties Length\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"blip.propslength\00", align 1
@hf_blip_properties = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"blip.props\00", align 1
@hf_blip_message_body = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Message Body\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"blip.messagebody\00", align 1
@hf_blip_ack_size = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"ACK num bytes\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"blip.numackbytes\00", align 1
@hf_blip_checksum = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"Checksum\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"blip.checksum\00", align 1
@proto_register_blip.ett = internal global [1 x ptr] [ptr @ett_blip], align 8
@ett_blip = internal global i32 0, align 4
@proto_register_blip.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_blip_decompress_buffer_error, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.14, i32 83886080, i32 6291456, ptr @.str.15, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_blip_decompress_buffer_error = internal global %struct.expert_field zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"blip.decompress_buffer_error\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Decompression error\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"BLIP Couchbase Mobile\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"BLIP\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"blip\00", align 1
@proto_blip = internal unnamed_addr global i32 0, align 4
@blip_handle = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"max_uncompressed_size\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Maximum uncompressed message size (Kb)\00", align 1
@.str.21 = private unnamed_addr constant [187 x i8] c"The maximum size of the buffer for uncompressed messages. If a message is larger than this, then the packet containing the message, as well as subsequent packets, will fail to decompress\00", align 1
@max_uncompressed_size = internal global i32 64, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"ws.protocol\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"BLIP_3+CBMobile_4\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"BLIP_3+CBMobile_3\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"BLIP_3+CBMobile_2\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"flag_combos\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Compressed\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Urgent\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Compressed|Urgent\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"NoReply\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Compressed|NoReply\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Urgent|NoReply\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Compressed|Urgent|NoReply\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"MoreComing\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Compressed|MoreComing\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Urgent|MoreComing\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Compressed|Urgent|MoreComing\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"NoReply|MoreComing\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Compressed|NoReply|MoreComing\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Urgent|NoReply|MoreComing\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Compressed|Urgent|NoReply|MoreComing\00", align 1
@flag_combos = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.28 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.29 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.30 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.31 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.33 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.36 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.37 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.38 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.39 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.41 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"#%lu\00", align 1
@msg_types = internal constant [6 x %struct._val64_string] [%struct._val64_string { i64 0, ptr @.str.46 }, %struct._val64_string { i64 1, ptr @.str.47 }, %struct._val64_string { i64 2, ptr @.str.48 }, %struct._val64_string { i64 4, ptr @.str.49 }, %struct._val64_string { i64 5, ptr @.str.50 }, %struct._val64_string zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"MSG\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"RPY\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"ACKMSG\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ACKRPY\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"%s:%u:%u:%lu\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"<Error decompressing data>\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"Unable to decompress message, got zlib error %d\00", align 1
@.str.54 = private unnamed_addr constant [84 x i8] c"Unable to decompress message, buffer too small (%u Kb).  Please adjust in settings.\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Decompressed Payload\00", align 1
@decompress.size_overflow = internal unnamed_addr global i1 false, align 1
@decompress.trailer = internal global [4 x i8] c"\00\00\FF\FF", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.57 = private unnamed_addr constant [56 x i8] c"Unable to create INFLATE context to decompress messages\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_blip() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  store i32 %i.a, ptr @proto_blip, align 4
  %i.b = tail call ptr @expert_register_protocol(i32 noundef %i.a)
  %i.c = load i32, ptr @proto_blip, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_blip.hf, i32 noundef 7)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_blip.ett, i32 noundef 1)
  tail call void @expert_register_field_array(ptr noundef %i.b, ptr noundef nonnull @proto_register_blip.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_blip, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.18, ptr noundef nonnull @dissect_blip, i32 noundef %i.d)
  store ptr %i.e, ptr @blip_handle, align 8
  %i.f = load i32, ptr @proto_blip, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef null)
  tail call void @prefs_register_uint_preference(ptr noundef %i.g, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 10, ptr noundef nonnull @max_uncompressed_size)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_blip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.17)
  %i.g = load ptr, ptr %i.e, align 8
  tail call void @col_clear(ptr noundef %i.g, i32 noundef 25)
  %i.h = load i32, ptr @proto_blip, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.j = load i32, ptr @ett_blip, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.l = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.b, i32 noundef 2) ; 4 uses
  %i.m = load i32, ptr @hf_blip_message_number, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef %i.l, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.o = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %i.l, i32 noundef 10, ptr noundef nonnull %i.c, i32 noundef 2) ; 2 uses
  %i.p = load i64, ptr %i.c, align 8
  %i.q = load i32, ptr @hf_blip_frame_flags, align 4
  %i.r = trunc i64 %i.p to i32
  %i.s = and i32 %i.r, 248
  %i.t = call ptr @proto_tree_add_uint(ptr noundef %i.k, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.s) ; 0 uses
  %i.u = add i32 %i.o, %i.l                       ; 13 uses
  %i.v = load i64, ptr %i.c, align 8
  %i.w = and i64 %i.v, 7
  %i.x = call ptr @val64_to_str_const(i64 noundef %i.w, ptr noundef nonnull @msg_types, ptr noundef nonnull @.str.45)
  %i.y = getelementptr i8, ptr %1, i64 416        ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i64, ptr %i.b, align 8
  %i.ab = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.z, ptr noundef nonnull @.str.44, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = call noalias ptr (ptr, ptr, ...) @wmem_strconcat(ptr noundef %i.ac, ptr noundef %i.x, ptr noundef %i.ab, ptr noundef null)
  %i.ae = load ptr, ptr %i.e, align 8
  call void @col_add_str(ptr noundef %i.ae, i32 noundef 25, ptr noundef %i.ad)
  %i.af = load i64, ptr %i.c, align 8
  %i.ag = and i64 %i.af, 6
  %switch.i = icmp eq i64 %i.ag, 4
  br i1 %switch.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ah = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %i.u, i32 noundef 10, ptr noundef nonnull %i.a, i32 noundef 2)
  %i.ai = load i32, ptr @hf_blip_ack_size, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.ah, i32 noundef 2) ; 0 uses
  %i.ak = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.al = call fastcc ptr @get_blip_conversation(ptr noundef %1) ; 2 uses
  %i.am = load i64, ptr %i.c, align 8
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = and i64 %i.am, 7
  %i.ap = call ptr @val64_to_str_const(i64 noundef %i.ao, ptr noundef nonnull @msg_types, ptr noundef nonnull @.str.45)
  %i.aq = load ptr, ptr %i.y, align 8
  %i.ar = getelementptr i8, ptr %1, i64 288       ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %1, i64 292       ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.aq, ptr noundef nonnull @.str.51, ptr noundef %i.ap, i32 noundef %i.as, i32 noundef %i.au, i64 noundef %i.an) ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8
  %i.ax = call ptr @wmem_map_lookup(ptr noundef %i.aw, ptr noundef %i.av) ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr i8, ptr %1, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %.not13.i = icmp eq i32 %i.bb, %i.az
  br label %is_first_frame_in_msg.exit

bb.e:                                             ; preds = %bb.c
  %i.bc = call ptr @wmem_file_scope()
  %i.bd = call noalias ptr @wmem_strdup(ptr noundef %i.bc, ptr noundef %i.av)
  %i.be = load ptr, ptr %i.al, align 8
  %i.bf = getelementptr i8, ptr %1, i64 20
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = call ptr @wmem_map_insert(ptr noundef %i.be, ptr noundef %i.bd, ptr noundef %i.bi) ; 0 uses
  br label %is_first_frame_in_msg.exit

is_first_frame_in_msg.exit:                       ; preds = %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.e ], [ %.not13.i, %bb.d ]
  %i.bk = load i64, ptr %i.c, align 8
  %i.bl = and i64 %i.bk, 8
  %.not.i96 = icmp ne i64 %i.bl, 0                ; 2 uses
  br i1 %.not.i96, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %is_first_frame_in_msg.exit
  %i.bm = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.bn = add i32 %i.bm, -4                       ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 53
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = and i16 %i.br, 8
  %.not.i97 = icmp eq i16 %i.bs, 0
  br i1 %.not.i97, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = call ptr @wmem_file_scope()
  %i.bu = load i32, ptr @proto_blip, align 4
  %i.bv = call ptr @p_get_proto_data(ptr noundef %i.bt, ptr noundef %1, i32 noundef %i.bu, i32 noundef 0) ; 6 uses
  %.not114.i = icmp eq ptr %i.bv, null
  br i1 %.not114.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = load i32, ptr @hf_blip_message_body, align 4
  %i.bx = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.by = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.bx, ptr noundef nonnull @.str.52) ; 0 uses
  br label %decompress.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.bz = load i32, ptr %i.bv, align 8
  %.not115.i = icmp eq i32 %i.bz, 0
  br i1 %.not115.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr @hf_blip_message_body, align 4
  %i.cb = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.cc = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.cb, ptr noundef nonnull @.str.52) ; 2 uses
  %i.cd = load i32, ptr %i.bv, align 8
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr i8, ptr %i.bv, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cc, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.53, i32 noundef %i.cg) ; 0 uses
  br label %decompress.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ci = load i32, ptr @max_uncompressed_size, align 4
  %i.cj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cc, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.54, i32 noundef %i.ci) ; 0 uses
  br label %decompress.exit.thread

bb.m:                                             ; preds = %bb.i
  %i.ck = getelementptr i8, ptr %i.bv, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr i8, ptr %i.bv, i64 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.cl, i32 noundef %i.co, i32 noundef %i.co) ; 2 uses
  %i.cq = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.cp, ptr noundef nonnull @.str.55) ; 0 uses
  br label %decompress.exit

bb.n:                                             ; preds = %bb.f
  %i.cr = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.bn)
  %i.cs = call fastcc ptr @get_blip_conversation(ptr noundef %1)
  %i.ct = load i32, ptr %i.ar, align 8
  %i.cu = shl i32 %i.ct, 16
  %i.cv = load i32, ptr %i.at, align 4
  %i.cw = or i32 %i.cu, %i.cv
  %i.cx = getelementptr i8, ptr %i.cs, i64 8      ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = zext i32 %i.cw to i64
  %i.da = inttoptr i64 %i.cz to ptr               ; 2 uses
  %i.db = call ptr @wmem_map_lookup(ptr noundef %i.cy, ptr noundef %i.da) ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %bb.o, label %get_decompress_stream.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dc = call ptr @wmem_file_scope()
  %i.dd = call noalias dereferenceable_or_null(112) ptr @wmem_alloc0(ptr noundef %i.dc, i64 noundef 112) #9 ; 3 uses
  %i.de = load ptr, ptr %i.cx, align 8
  %i.df = call ptr @wmem_map_insert(ptr noundef %i.de, ptr noundef %i.da, ptr noundef %i.dd) ; 0 uses
  %i.dg = call ptr @wmem_file_scope()
  %i.dh = call i32 @wmem_register_callback(ptr noundef %i.dg, ptr noundef nonnull @z_stream_destroy_cb, ptr noundef %i.dd) ; 0 uses
  br label %get_decompress_stream.exit.i

get_decompress_stream.exit.i:                     ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %i.dd, %bb.o ], [ %i.db, %bb.n ] ; 10 uses
  %i.di = getelementptr i8, ptr %.0.i.i, i64 24   ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %.not110.i = icmp eq ptr %i.dj, null
  br i1 %.not110.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %get_decompress_stream.exit.i
  %i.dk = getelementptr i8, ptr %.0.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %i.dl = call i32 @inflateInit2_(ptr noundef %.0.i.i, i32 noundef -15, ptr noundef nonnull @.str.56, i32 noundef 112)
  %.not111.i = icmp eq i32 %i.dl, 0
  br i1 %.not111.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.di, align 8
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.57) #10
  unreachable

bb.r:                                             ; preds = %bb.p, %get_decompress_stream.exit.i
  %i.dm = load i32, ptr @max_uncompressed_size, align 4
  %i.dn = shl i32 %i.dm, 10                       ; 2 uses
  %i.do = load ptr, ptr %i.y, align 8
  %i.dp = zext i32 %i.dn to i64
  %i.dq = call noalias ptr @wmem_alloc(ptr noundef %i.do, i64 noundef %i.dp) #9 ; 2 uses
  store ptr %i.cr, ptr %.0.i.i, align 8
  %i.dr = getelementptr i8, ptr %.0.i.i, i64 8    ; 2 uses
  store i32 %i.bn, ptr %i.dr, align 8
  store ptr %i.dq, ptr %i.di, align 8
  %i.ds = getelementptr i8, ptr %.0.i.i, i64 32
  store i32 %i.dn, ptr %i.ds, align 8
  %i.dt = getelementptr i8, ptr %.0.i.i, i64 40   ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = call i32 @inflate(ptr noundef %.0.i.i, i32 noundef 0) ; 4 uses
  %.not112.i = icmp eq i32 %i.dv, 0
  br i1 %.not112.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load i32, ptr @hf_blip_message_body, align 4
  %i.dx = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.dy = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.dx, ptr noundef nonnull @.str.52) ; 2 uses
  %i.dz = call ptr @wmem_file_scope()
  %i.ea = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.dz, i64 noundef 24) #9 ; 4 uses
  %.b.i = load i1, ptr @decompress.size_overflow, align 1
  %i.eb = icmp eq i32 %i.dv, -3
  %or.cond.i = and i1 %i.eb, %.b.i
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.ea, align 8
  %i.ec = load i32, ptr @max_uncompressed_size, align 4
  %i.ed = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.dy, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.54, i32 noundef %i.ec) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 1, ptr %i.ea, align 8
  %i.ee = getelementptr i8, ptr %i.ea, i64 4
  store i32 %i.dv, ptr %i.ee, align 4
  %i.ef = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.dy, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.53, i32 noundef %i.dv) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eg = call ptr @wmem_file_scope()
  %i.eh = load i32, ptr @proto_blip, align 4
  call void @p_add_proto_data(ptr noundef %i.eg, ptr noundef %1, i32 noundef %i.eh, i32 noundef 0, ptr noundef %i.ea)
  br label %decompress.exit.thread

bb.w:                                             ; preds = %bb.r
  store ptr @decompress.trailer, ptr %.0.i.i, align 8
  store i32 4, ptr %i.dr, align 8
  %i.ei = call i32 @inflate(ptr noundef %.0.i.i, i32 noundef 2) ; 4 uses
  %.not113.i = icmp eq i32 %i.ei, 0
  br i1 %.not113.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = load i32, ptr @hf_blip_message_body, align 4
  %i.ek = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.el = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.ek, ptr noundef nonnull @.str.52) ; 2 uses
  %i.em = call ptr @wmem_file_scope()
  %i.en = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.em, i64 noundef 24) #9 ; 4 uses
  %i.eo = icmp eq i32 %i.ei, -5
  br i1 %i.eo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 2, ptr %i.en, align 8
  store i1 true, ptr @decompress.size_overflow, align 1
  %i.ep = load i32, ptr @max_uncompressed_size, align 4
  %i.eq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.el, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.54, i32 noundef %i.ep) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 1, ptr %i.en, align 8
  %i.er = getelementptr i8, ptr %i.en, i64 4
  store i32 %i.ei, ptr %i.er, align 4
  %i.es = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.el, ptr noundef nonnull @ei_blip_decompress_buffer_error, ptr noundef nonnull @.str.53, i32 noundef %i.ei) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.et = call ptr @wmem_file_scope()
  %i.eu = load i32, ptr @proto_blip, align 4
  call void @p_add_proto_data(ptr noundef %i.et, ptr noundef %1, i32 noundef %i.eu, i32 noundef 0, ptr noundef %i.en)
  br label %decompress.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.ev = load i64, ptr %i.dt, align 8
  %i.ew = sub i64 %i.ev, %i.du                    ; 3 uses
  %i.ex = call ptr @wmem_file_scope()
  %i.ey = call ptr @wmem_memdup(ptr noundef %i.ex, ptr noundef %i.dq, i64 noundef %i.ew) #11 ; 2 uses
  %i.ez = trunc i64 %i.ew to i32                  ; 2 uses
  %i.fa = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ey, i32 noundef %i.ez, i32 noundef %i.ez) ; 2 uses
  %i.fb = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.fa, ptr noundef nonnull @.str.55) ; 0 uses
  %i.fc = call ptr @wmem_file_scope()
  %i.fd = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.fc, i64 noundef 24) #9 ; 3 uses
end_hunk_0
