Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-matter?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
@hf_matter_tlv_elem = internal global i32 0, align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"TLV Element\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"matter.tlv\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"Matter-TLV Element\00", align 1
@hf_matter_tlv_elem_control = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [13 x i8] c"Control Byte\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"matter.tlv.control\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Matter-TLV Control Byte\00", align 1
@hf_matter_tlv_elem_control_tag_format = internal global i32 0, align 4
@.str.95 = private unnamed_addr constant [11 x i8] c"Tag Format\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"matter.tlv.control.tag\00", align 1
@hf_matter_tlv_elem_control_element_type = internal global i32 0, align 4
@.str.97 = private unnamed_addr constant [13 x i8] c"Element Type\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"matter.tlv.control.element\00", align 1
@hf_matter_tlv_elem_tag = internal global i32 0, align 4
@.str.99 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"matter.tlv.tag\00", align 1
@hf_matter_tlv_elem_length = internal global i32 0, align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"matter.tlv.length\00", align 1
@hf_matter_tlv_elem_value_int = internal global i32 0, align 4
@.str.103 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"matter.tlv.value_int\00", align 1
@hf_matter_tlv_elem_value_uint = internal global i32 0, align 4
@.str.105 = private unnamed_addr constant [22 x i8] c"matter.tlv.value_uint\00", align 1
@hf_matter_tlv_elem_value_bytes = internal global i32 0, align 4
@.str.106 = private unnamed_addr constant [23 x i8] c"matter.tlv.value_bytes\00", align 1
@proto_register_matter.ett = internal global [7 x ptr] [ptr @ett_matter, ptr @ett_message_flags, ptr @ett_security_flags, ptr @ett_payload, ptr @ett_exchange_flags, ptr @ett_matter_tlv, ptr @ett_matter_tlv_control], align 16
@ett_matter = internal global i32 0, align 4
@ett_message_flags = internal global i32 0, align 4
@ett_security_flags = internal global i32 0, align 4
@ett_payload = internal global i32 0, align 4
@ett_exchange_flags = internal global i32 0, align 4
@ett_matter_tlv = internal global i32 0, align 4
@ett_matter_tlv_control = internal global i32 0, align 4
@proto_register_matter.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_matter_tlv_unsupported_control, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.107, i32 83886080, i32 6291456, ptr @.str.108, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_matter_tlv_unsupported_control = internal global %struct.expert_field zeroinitializer, align 4
@.str.107 = private unnamed_addr constant [31 x i8] c"matter.tlv.control.unsupported\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"Unsupported Matter-TLV control byte\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Matter\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"matter\00", align 1
@proto_matter = internal unnamed_addr global i32 0, align 4
@matter_handle = internal unnamed_addr global ptr null, align 8
@.str.111 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Not present\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"64-bit Node ID\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"16-bit Group ID\00", align 1
@dsiz_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.113 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.116 = private unnamed_addr constant [16 x i8] c"Unicast Session\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"Group Session\00", align 1
@session_type_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.119 = private unnamed_addr constant [29 x i8] c"Anonymous Tag Form, 0 octets\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"Context-specific Tag Form, 1 octet\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"Common Profile Tag Form, 2 octets\00", align 1
@.str.122 = private unnamed_addr constant [34 x i8] c"Common Profile Tag Form, 4 octets\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"Implicit Profile Tag Form, 2 octets\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"Implicit Profile Tag Form, 4 octets\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"Fully-qualified Tag Form, 6 octets\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"Fully-qualified Tag Form, 8 octets\00", align 1
@matter_tlv_tag_format_vals = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.120 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.121 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.123 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.125 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.128 = private unnamed_addr constant [30 x i8] c"Signed Integer, 1-octet value\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"Signed Integer, 2-octet value\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"Signed Integer, 4-octet value\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"Signed Integer, 8-octet value\00", align 1
@.str.132 = private unnamed_addr constant [32 x i8] c"Unsigned Integer, 1-octet value\00", align 1
@.str.133 = private unnamed_addr constant [32 x i8] c"Unsigned Integer, 2-octet value\00", align 1
@.str.134 = private unnamed_addr constant [32 x i8] c"Unsigned Integer, 4-octet value\00", align 1
@.str.135 = private unnamed_addr constant [32 x i8] c"Unsigned Integer, 8-octet value\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"Boolean False\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"Boolean True\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"Floating Point Number, 4-octet value\00", align 1
@.str.139 = private unnamed_addr constant [37 x i8] c"Floating Point Number, 8-octet value\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"UTF-8 String, 1-octet length\00", align 1
@.str.141 = private unnamed_addr constant [29 x i8] c"UTF-8 String, 2-octet length\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"UTF-8 String, 4-octet length\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"UTF-8 String, 8-octet length\00", align 1
@.str.144 = private unnamed_addr constant [29 x i8] c"Octet String, 1-octet length\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"Octet String, 2-octet length\00", align 1
@.str.146 = private unnamed_addr constant [29 x i8] c"Octet String, 4-octet length\00", align 1
@.str.147 = private unnamed_addr constant [29 x i8] c"Octet String, 8-octet length\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"Structure\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"End of Container\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@matter_tlv_elem_type_vals = internal constant [33 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.129 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.139 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.147 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dissect_matter.message_flag_fields = internal constant [4 x ptr] [ptr @hf_message_version, ptr @hf_message_has_source, ptr @hf_message_dsiz, ptr null], align 16
@dissect_matter.message_secflag_fields = internal constant [5 x ptr] [ptr @hf_message_flag_privacy, ptr @hf_message_flag_control, ptr @hf_message_flag_extensions, ptr @hf_message_session_type, ptr null], align 16
@.str.155 = private unnamed_addr constant [18 x i8] c"Unsecured Session\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"Unicast Session [0x%04x]\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"Group Session [0x%04x]\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"Encrypted Headers\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c": Counter=%u\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c" Src=0x%016lx\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c" Dest=0x%016lx\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c" Group=0x%04x\00", align 1
@.str.163 = private unnamed_addr constant [17 x i8] c"Protocol Payload\00", align 1
@.str.164 = private unnamed_addr constant [29 x i8] c"Encrypted Payload (%u bytes)\00", align 1
@dissect_matter_payload.exchange_flag_fields = internal constant [6 x ptr] [ptr @hf_payload_flag_initiator, ptr @hf_payload_flag_ack, ptr @hf_payload_flag_reliability, ptr @hf_payload_flag_secured_extensions, ptr @hf_payload_flag_vendor, ptr null], align 16
@.str.165 = private unnamed_addr constant [15 x i8] c" AckCounter=%u\00", align 1
@.str.166 = private unnamed_addr constant [31 x i8] c"Application payload (%u bytes)\00", align 1
@dissect_matter_tlv.elem_sizes = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@.str.167 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_matter() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) ; 2 uses
  store i32 %i.a, ptr @proto_matter, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.110, ptr noundef nonnull @dissect_matter, i32 noundef %i.a)
  store ptr %i.b, ptr @matter_handle, align 8
  %i.c = load i32, ptr @proto_matter, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.90, ptr noundef nonnull @dissect_matter_tlv, i32 noundef %i.c) ; 0 uses
  %i.e = load i32, ptr @proto_matter, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_matter.hf, i32 noundef 40)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_matter.ett, i32 noundef 7)
  %i.f = load i32, ptr @proto_matter, align 4
  %i.g = tail call ptr @expert_register_protocol(i32 noundef %i.f)
  tail call void @expert_register_field_array(ptr noundef %i.g, ptr noundef nonnull @proto_register_matter.ei, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_matter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 0, ptr %i.c, align 4
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.i = icmp ult i32 %i.h, 8
  br i1 %i.i, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8          ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.109)
  %i.l = load i32, ptr @proto_matter, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.n = load i32, ptr @ett_matter, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 11 uses
  %i.p = load i32, ptr @hf_message_flags, align 4
  %i.q = load i32, ptr @ett_message_flags, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @dissect_matter.message_flag_fields, i32 noundef -2147483648) ; 0 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i8 %i.s, 3                           ; 2 uses
  %i.v = load i32, ptr @hf_message_session_id, align 4
  %i.w = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.v, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.x = load i32, ptr @hf_message_security_flags, align 4
  %i.y = load i32, ptr @ett_security_flags, align 4
  %i.z = call ptr @proto_tree_add_bitmask(ptr noundef %i.o, ptr noundef %0, i32 noundef 3, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @dissect_matter.message_secflag_fields, i32 noundef -2147483648) ; 0 uses
  %i.aa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.ab = and i8 %i.aa, 3                         ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0                     ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false     ; 2 uses
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.j, align 8
  call void @col_set_str(ptr noundef %i.ag, i32 noundef 25, ptr noundef nonnull @.str.155)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.j, align 8
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ah, i32 noundef 25, ptr noundef nonnull @.str.156, i32 noundef %i.ad)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp eq i8 %i.ab, 1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.j, align 8
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.aj, i32 noundef 25, ptr noundef nonnull @.str.157, i32 noundef %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c
  %.not = icmp sgt i8 %i.aa, -1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %4 = shl nuw nsw i32 %i.t, 1
  %5 = and i32 %4, 8                              ; 3 uses
  %spec.select = or disjoint i32 %5, 4
  switch i8 %i.u, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw nsw i32 %5, 12
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = or disjoint i32 %5, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.191 = phi i32 [ %i.ak, %bb.j ], [ %i.al, %bb.k ], [ %spec.select, %bb.i ] ; 2 uses
  %i.am = load i32, ptr @hf_message_privacy_header, align 4
  %i.an = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.o, i32 noundef %i.am, ptr noundef %0, i32 noundef 4, i32 noundef %.191, ptr noundef null, ptr noundef nonnull @.str.158) ; 0 uses
  %i.ao = add nuw nsw i32 %.191, 4
  br label %bb.s

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.ap = load i32, ptr @hf_message_counter, align 4
  %i.aq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.ap, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.ar = load ptr, ptr %i.j, align 8
  %i.as = load i32, ptr %i.d, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ar, i32 noundef 25, ptr noundef nonnull @.str.159, i32 noundef %i.as)
  %i.at = and i32 %i.t, 4
  %.not95 = icmp eq i32 %i.at, 0
  br i1 %.not95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  %i.au = load i32, ptr @hf_message_src_id, align 4
  %i.av = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.o, i32 noundef %i.au, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.aw = load ptr, ptr %i.j, align 8
  %i.ax = load i64, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aw, i32 noundef 25, ptr noundef nonnull @.str.160, i64 noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.089 = phi i32 [ 16, %bb.n ], [ 8, %bb.m ]     ; 5 uses
  switch i8 %i.u, label %bb.r [
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  %i.ay = load i32, ptr @hf_message_dest_node_id, align 4
  %i.az = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.o, i32 noundef %i.ay, ptr noundef %0, i32 noundef %.089, i32 noundef 8, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.ba = load ptr, ptr %i.j, align 8
  %i.bb = load i64, ptr %i.f, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ba, i32 noundef 25, ptr noundef nonnull @.str.161, i64 noundef %i.bb)
  %i.bc = add nuw nsw i32 %.089, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  %i.bd = load i32, ptr @hf_message_dest_group_id, align 4
  %i.be = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.bd, ptr noundef %0, i32 noundef %.089, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.bf = load ptr, ptr %i.j, align 8
  %i.bg = load i32, ptr %i.g, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bf, i32 noundef 25, ptr noundef nonnull @.str.162, i32 noundef %i.bg)
  %i.bh = or disjoint i32 %.089, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.1 = phi i32 [ %i.bc, %bb.p ], [ %i.bh, %bb.q ], [ %.089, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %.2 = phi i32 [ %i.ao, %bb.l ], [ %.1, %bb.r ]  ; 7 uses
  br i1 %i.af, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr @hf_payload, align 4
  %i.bj = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.o, i32 noundef %i.bi, ptr noundef %0, i32 noundef %.2, i32 noundef -1, ptr noundef nonnull @.str.163)
  %i.bk = load i32, ptr @ett_payload, align 4
  %i.bl = call ptr @proto_item_add_subtree(ptr noundef %i.bj, i32 noundef %i.bk) ; 9 uses
  %i.bm = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2) ; 11 uses
  %i.bn = load i32, ptr @hf_payload_exchange_flags, align 4
  %i.bo = load i32, ptr @ett_exchange_flags, align 4
  %i.bp = call ptr @proto_tree_add_bitmask(ptr noundef %i.bl, ptr noundef %i.bm, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef nonnull @dissect_matter_payload.exchange_flag_fields, i32 noundef -2147483648) ; 0 uses
  %i.bq = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bm, i32 noundef 0)
  %i.br = load i32, ptr @hf_payload_protocol_opcode, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.br, ptr noundef %i.bm, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bt = load i32, ptr @hf_payload_exchange_id, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bt, ptr noundef %i.bm, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bv = zext i8 %i.bq to i32                    ; 3 uses
  %i.bw = and i32 %i.bv, 16
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr @hf_payload_protocol_vendor_id, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bx, ptr noundef %i.bm, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ 6, %bb.u ], [ 4, %bb.t ]      ; 3 uses
  %i.bz = load i32, ptr @hf_payload_protocol_id, align 4
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bz, ptr noundef %i.bm, i32 noundef %.0.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cb = add nuw nsw i32 %.0.i, 2                ; 2 uses
  %i.cc = and i32 %i.bv, 2
  %.not47.i = icmp eq i32 %i.cc, 0
  br i1 %.not47.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.cd = load i32, ptr @hf_payload_ack_counter, align 4
  %i.ce = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bl, i32 noundef %i.cd, ptr noundef %i.bm, i32 noundef %i.cb, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.cf = load ptr, ptr %i.j, align 8
  %i.cg = load i32, ptr %i.a, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cf, i32 noundef 25, ptr noundef nonnull @.str.165, i32 noundef %i.cg)
  %i.ch = add nuw nsw i32 %.0.i, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i = phi i32 [ %i.ch, %bb.w ], [ %i.cb, %bb.v ] ; 3 uses
  %i.ci = and i32 %i.bv, 8
  %.not48.i = icmp eq i32 %i.ci, 0
  br i1 %.not48.i, label %dissect_matter_payload.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 0, ptr %i.b, align 4
  %i.cj = load i32, ptr @hf_payload_secured_ext_length, align 4
  %i.ck = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bl, i32 noundef %i.cj, ptr noundef %i.bm, i32 noundef %.1.i, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.cl = add nuw nsw i32 %.1.i, 2                ; 2 uses
  %i.cm = load i32, ptr @hf_payload_secured_ext, align 4
  %i.cn = load i32, ptr %i.b, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.cm, ptr noundef %i.bm, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr %i.b, align 4
  %i.cq = add i32 %i.cp, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %dissect_matter_payload.exit

dissect_matter_payload.exit:                      ; preds = %bb.x, %bb.y
  %.2.i = phi i32 [ %i.cq, %bb.y ], [ %.1.i, %bb.x ] ; 3 uses
  %i.cr = call i32 @tvb_reported_length_remaining(ptr noundef %i.bm, i32 noundef %.2.i) ; 3 uses
  %i.cs = load i32, ptr @hf_payload_application, align 4
  %i.ct = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.bl, i32 noundef %i.cs, ptr noundef %i.bm, i32 noundef %.2.i, i32 noundef %i.cr, ptr noundef null, ptr noundef nonnull @.str.166, i32 noundef %i.cr) ; 0 uses
  %i.cu = add i32 %.2.i, %.2
  %i.cv = add i32 %i.cu, %i.cr
  br label %bb.aa

bb.z:                                             ; preds = %bb.s
  %i.cw = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.2)
  %i.cx = add i32 %i.cw, -16                      ; 3 uses
  %i.cy = load i32, ptr @hf_payload, align 4
  %i.cz = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.o, i32 noundef %i.cy, ptr noundef %0, i32 noundef %.2, i32 noundef %i.cx, ptr noundef nonnull @.str.164, i32 noundef %i.cx) ; 0 uses
  %i.da = load i32, ptr @hf_payload_mic, align 4
  %i.db = add i32 %i.cx, %.2
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.db, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %dissect_matter_payload.exit, %bb.z, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.cv, %dissect_matter_payload.exit ], [ %.2, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_matter_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = load i32, ptr @hf_matter_tlv_elem_tag, align 4
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.063 = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.not83 = icmp eq i32 %i.e, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.06582 = phi i32 [ %.267, %bb.k ], [ 0, %bb.c ] ; 8 uses
  %i.g = load i32, ptr @hf_matter_tlv_elem, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %.06582, i32 noundef 1, i32 noundef 0) ; 4 uses
  %i.i = load i32, ptr @ett_matter_tlv, align 4
  %i.j = call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 0, ptr %i.b, align 4
  %i.k = load i32, ptr @hf_matter_tlv_elem_control, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %.06582, i32 noundef 1, i32 noundef 0)
  %i.m = load i32, ptr @ett_matter_tlv_control, align 4
  %i.n = call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 3 uses
  %i.o = load i32, ptr @hf_matter_tlv_elem_control_tag_format, align 4
  %i.p = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef %.06582, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.q = load i32, ptr @hf_matter_tlv_elem_control_element_type, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.q, ptr noundef %0, i32 noundef %.06582, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = add nuw i32 %.06582, 1                   ; 4 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = call ptr @val_to_str_const(i32 noundef %i.t, ptr noundef nonnull @matter_tlv_elem_type_vals, ptr noundef nonnull @.str.168)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.167, ptr noundef %i.u)
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
end_hunk_0
