Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-packetbb?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 1
begin_hunk_0
@hf_packetbb_tlv_mprwillingness_flooding = internal global i32 0, align 4
@.str.118 = private unnamed_addr constant [9 x i8] c"Flooding\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"packetbb.tlv.mprwillingnessflooding\00", align 1
@hf_packetbb_tlv_mprwillingness_routing = internal global i32 0, align 4
@.str.120 = private unnamed_addr constant [8 x i8] c"Routing\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"packetbb.tlv.mprwillingnessrouting\00", align 1
@hf_packetbb_tlv_contseqnum = internal global i32 0, align 4
@.str.122 = private unnamed_addr constant [24 x i8] c"Content sequence number\00", align 1
@.str.123 = private unnamed_addr constant [24 x i8] c"packetbb.tlv.contseqnum\00", align 1
@hf_packetbb_tlv_linkmetric_flags_linkin = internal global i32 0, align 4
@.str.124 = private unnamed_addr constant [14 x i8] c"Incoming link\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"packetbb.tlv.linkmetriclinkin\00", align 1
@hf_packetbb_tlv_linkmetric_flags_linkout = internal global i32 0, align 4
@.str.126 = private unnamed_addr constant [14 x i8] c"Outgoing link\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"packetbb.tlv.linkmetriclinkout\00", align 1
@hf_packetbb_tlv_linkmetric_flags_neighin = internal global i32 0, align 4
@.str.128 = private unnamed_addr constant [18 x i8] c"Incoming neighbor\00", align 1
@.str.129 = private unnamed_addr constant [31 x i8] c"packetbb.tlv.linkmetricneighin\00", align 1
@hf_packetbb_tlv_linkmetric_flags_neighout = internal global i32 0, align 4
@.str.130 = private unnamed_addr constant [18 x i8] c"Outgoing neighbor\00", align 1
@.str.131 = private unnamed_addr constant [32 x i8] c"packetbb.tlv.linkmetricneighout\00", align 1
@hf_packetbb_tlv_linkmetric_value = internal global i32 0, align 4
@.str.132 = private unnamed_addr constant [12 x i8] c"Link metric\00", align 1
@.str.133 = private unnamed_addr constant [29 x i8] c"packetbb.tlv.linkmetricvalue\00", align 1
@hf_packetbb_tlv_mpr = internal global i32 0, align 4
@.str.134 = private unnamed_addr constant [17 x i8] c"Multipoint Relay\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"packetbb.tlv.mpr\00", align 1
@hf_packetbb_tlv_nbraddrtype = internal global i32 0, align 4
@.str.136 = private unnamed_addr constant [22 x i8] c"Neighbor address type\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"packetbb.tlv.nbraddrtype\00", align 1
@hf_packetbb_tlv_gateway = internal global i32 0, align 4
@.str.138 = private unnamed_addr constant [8 x i8] c"Gateway\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"packetbb.tlv.gateway\00", align 1
@ett_packetbb = internal global i32 0, align 4
@ett_packetbb_header = internal global i32 0, align 4
@ett_packetbb_header_flags = internal global i32 0, align 4
@ett_packetbb_msgheader = internal global i32 0, align 4
@ett_packetbb_msgheader_flags = internal global i32 0, align 4
@ett_packetbb_addr = internal global i32 0, align 4
@ett_packetbb_addr_flags = internal global i32 0, align 4
@ett_packetbb_addr_value = internal global i32 0, align 4
@ett_packetbb_tlvblock = internal global i32 0, align 4
@ett_packetbb_tlv_flags = internal global i32 0, align 4
@ett_packetbb_tlv_value = internal global i32 0, align 4
@ett_packetbb_tlv_mprwillingness = internal global i32 0, align 4
@ett_packetbb_tlv_linkmetric = internal global i32 0, align 4
@__const.proto_register_packetbb.ett_base = private unnamed_addr constant [13 x ptr] [ptr @ett_packetbb, ptr @ett_packetbb_header, ptr @ett_packetbb_header_flags, ptr @ett_packetbb_msgheader, ptr @ett_packetbb_msgheader_flags, ptr @ett_packetbb_addr, ptr @ett_packetbb_addr_flags, ptr @ett_packetbb_addr_value, ptr @ett_packetbb_tlvblock, ptr @ett_packetbb_tlv_flags, ptr @ett_packetbb_tlv_value, ptr @ett_packetbb_tlv_mprwillingness, ptr @ett_packetbb_tlv_linkmetric], align 16
@proto_register_packetbb.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_packetbb_error, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.140, i32 150994944, i32 6291456, ptr @.str.141, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_packetbb_error = internal global %struct.expert_field zeroinitializer, align 4
@.str.140 = private unnamed_addr constant [15 x i8] c"packetbb.error\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"ERROR!\00", align 1
@proto_register_packetbb.ett = internal global [525 x ptr] zeroinitializer, align 16
@ett_packetbb_msg = internal global [256 x i32] zeroinitializer, align 16
@ett_packetbb_tlv = internal global [256 x i32] zeroinitializer, align 16
@.str.142 = private unnamed_addr constant [18 x i8] c"PacketBB Protocol\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"PacketBB\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"packetbb\00", align 1
@proto_packetbb = internal unnamed_addr global i32 0, align 4
@.str.145 = private unnamed_addr constant [13 x i8] c"HELLO (NHDP)\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"TC (OLSRv2)\00", align 1
@msgheader_type_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@pkttlv_type_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@msgtlv_type_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@addrtlv_type_vals = internal constant [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.106 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.151 = private unnamed_addr constant [8 x i8] c"THIS_IF\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"OTHER_IF\00", align 1
@localif_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.154 = private unnamed_addr constant [5 x i8] c"LOST\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"SYMMETRIC\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"HEARD\00", align 1
@linkstatus_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@otherneigh_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.159 = private unnamed_addr constant [9 x i8] c"FLOODING\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"ROUTING\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"FLOOD_ROUTE\00", align 1
@mpr_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.163 = private unnamed_addr constant [11 x i8] c"ORIGINATOR\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"ROUTABLE\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"ROUTABLE_ORIG\00", align 1
@nbraddrtype_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dissect_pbb_header.flags = internal constant [3 x ptr] [ptr @hf_packetbb_header_flags_phasseqnum, ptr @hf_packetbb_header_flags_phastlv, ptr null], align 16
@dissect_pbb_tlvblock.flags = internal constant [7 x ptr] [ptr @hf_packetbb_tlv_flags_hastypext, ptr @hf_packetbb_tlv_flags_hassingleindex, ptr @hf_packetbb_tlv_flags_hasmultiindex, ptr @hf_packetbb_tlv_flags_hasvalue, ptr @hf_packetbb_tlv_flags_hasextlen, ptr @hf_packetbb_tlv_flags_hasmultivalue, ptr null], align 16
@.str.167 = private unnamed_addr constant [39 x i8] c"Not enough octets for minimal tlvblock\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"Not enough octets for tlvblock\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"%d (implicit)\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"0 (implicit)\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c" (t=%d,l=%d): %s\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"Unknown Type (%d)\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c" (%d TLVs)\00", align 1
@dissect_pbb_tlvvalue.mprwillingness_values = internal constant [3 x ptr] [ptr @hf_packetbb_tlv_mprwillingness_flooding, ptr @hf_packetbb_tlv_mprwillingness_routing, ptr null], align 16
@.str.174 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.175 = private unnamed_addr constant [45 x i8] c"Not enough octets for minimal message header\00", align 1
@.str.176 = private unnamed_addr constant [30 x i8] c"Not enough octets for message\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@dissect_pbb_addressblock.flags = internal constant [6 x ptr] [ptr @hf_packetbb_addr_flags_hashead, ptr @hf_packetbb_addr_flags_hasfulltail, ptr @hf_packetbb_addr_flags_haszerotail, ptr @hf_packetbb_addr_flags_hassingleprelen, ptr @hf_packetbb_addr_flags_hasmultiprelen, ptr null], align 16
@.str.179 = private unnamed_addr constant [50 x i8] c"Not enough octets for minimal addressblock header\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"Not enough octets for addressblock head\00", align 1
@.str.184 = private unnamed_addr constant [32 x i8] c"address head length is too long\00", align 1
@.str.185 = private unnamed_addr constant [40 x i8] c"Not enough octets for addressblock tail\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"address tail length is too long\00", align 1
@.str.187 = private unnamed_addr constant [36 x i8] c"Not enough octets for address block\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c" (%d addresses)\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@switch.table.dissect_packetbb = private unnamed_addr constant [13 x i8] c"\00\03\02\03\03\03\03\03\03\03\03\03\01", align 1
@switch.table.dissect_packetbb.1 = private unnamed_addr constant [13 x ptr] [ptr @hf_packetbb_msgheader_origaddripv4, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrmac, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddrcustom, ptr @hf_packetbb_msgheader_origaddripv6], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_packetbb() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @packetbb_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_packetbb() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @proto_register_packetbb.ett, ptr noundef nonnull align 16 dereferenceable(104) @__const.proto_register_packetbb.ett_base, i64 noundef 104, i1 noundef false) #5
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv9 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next10.3, %bb.b ] ; 6 uses
  %indvars.iv = phi i64 [ 13, %bb.a ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %i.a = getelementptr [4 x i8], ptr @ett_packetbb_msg, i64 %indvars.iv9
  %i.b = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr [4 x i8], ptr @ett_packetbb_tlv, i64 %indvars.iv9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %indvars.iv.next10 = or disjoint i64 %indvars.iv9, 1 ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @ett_packetbb_msg, i64 %indvars.iv.next10
  %i.g = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr [4 x i8], ptr @ett_packetbb_tlv, i64 %indvars.iv.next10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.i = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %indvars.iv.next10.1 = or disjoint i64 %indvars.iv9, 2 ; 2 uses
  %i.k = getelementptr [4 x i8], ptr @ett_packetbb_msg, i64 %indvars.iv.next10.1
  %i.l = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next.1
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr [4 x i8], ptr @ett_packetbb_tlv, i64 %indvars.iv.next10.1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.n = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next.1
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %indvars.iv.next10.2 = or disjoint i64 %indvars.iv9, 3 ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @ett_packetbb_msg, i64 %indvars.iv.next10.2
  %i.q = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next.2
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr [4 x i8], ptr @ett_packetbb_tlv, i64 %indvars.iv.next10.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8
  %i.s = getelementptr [8 x i8], ptr @proto_register_packetbb.ett, i64 %indvars.iv.next.2
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %indvars.iv.next10.3 = add nuw nsw i64 %indvars.iv9, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next10.3, 256
  br i1 %exitcond.not.3, label %bb.c, label %bb.b, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144) ; 2 uses
  store i32 %i.u, ptr @proto_packetbb, align 4
  %i.v = tail call ptr @register_dissector(ptr noundef nonnull @.str.144, ptr noundef nonnull @dissect_packetbb, i32 noundef %i.u)
  store ptr %i.v, ptr @packetbb_handle, align 8
  %i.w = load i32, ptr @proto_packetbb, align 4
  tail call void @proto_register_field_array(i32 noundef %i.w, ptr noundef nonnull @proto_register_packetbb.hf, i32 noundef 77)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_packetbb.ett, i32 noundef 525)
  %i.x = load i32, ptr @proto_packetbb, align 4
  %i.y = tail call ptr @expert_register_protocol(i32 noundef %i.x)
  tail call void @expert_register_field_array(ptr noundef %i.y, ptr noundef nonnull @proto_register_packetbb.ei, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_packetbb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 11 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %4 = and i32 %i.d, 8
  %.not = icmp eq i32 %4, 0
  %spec.select = select i1 %.not, i32 1, i32 3    ; 5 uses
  %i.e = and i32 %i.d, 4
  %.not34 = icmp eq i32 %i.e, 0                   ; 3 uses
  %i.f = add nuw nsw i32 %spec.select, 2          ; 2 uses
  %.1 = select i1 %.not34, i32 %spec.select, i32 %i.f
  %.0 = select i1 %.not34, i32 0, i32 %spec.select
  %i.g = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.h = icmp ult i32 %i.g, %.1
  br i1 %i.h, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %spec.select)
  %i.j = zext i16 %i.i to i32
  %i.k = add nuw nsw i32 %i.f, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.k, %bb.c ], [ %spec.select, %bb.b ] ; 3 uses
  %i.l = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.m = icmp ult i32 %i.l, %.2
  br i1 %i.m, label %bb.bs, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 35, ptr noundef nonnull @.str.144)
  %i.p = load ptr, ptr %i.n, align 8
  tail call void @col_clear(ptr noundef %i.p, i32 noundef 25)
  %i.q = load i32, ptr @proto_packetbb, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.s = load i32, ptr @ett_packetbb, align 4
  %i.t = tail call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s) ; 5 uses
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.v = load i32, ptr @hf_packetbb_header, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef range(i32 1, 65541) %.2, i32 noundef 0)
  %i.x = load i32, ptr @ett_packetbb_header, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 3 uses
  %i.z = load i32, ptr @hf_packetbb_version, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_packetbb_header_flags, align 4
  %i.ac = load i32, ptr @ett_packetbb_header_flags, align 4
  %i.ad = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull @dissect_pbb_header.flags, i32 noundef 0) ; 0 uses
  %i.ae = zext i8 %i.u to i32                     ; 2 uses
  %i.af = and i32 %i.ae, 8
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr @hf_packetbb_seqnr, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ag, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = and i32 %i.ae, 4
  %.not19.i = icmp eq i32 %i.ai, 0
  br i1 %.not19.i, label %dissect_pbb_header.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.ak = tail call fastcc i32 @dissect_pbb_tlvblock(ptr noundef %0, ptr noundef %1, ptr noundef %i.t, i32 noundef range(i32 0, 4) %.0, i32 noundef %i.aj, i8 noundef signext 0, i32 noundef 0)
  br label %dissect_pbb_header.exit

dissect_pbb_header.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ak, %bb.h ], [ %.2, %bb.g ] ; 2 uses
  %i.al = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.am = icmp ult i32 %.0.i, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %dissect_pbb_header.exit
  %i.an = getelementptr i8, ptr %1, i64 416
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %dissect_pbb_message.exit
  %.03238 = phi i32 [ %.0.i, %.lr.ph ], [ %.0135.i, %dissect_pbb_message.exit ] ; 12 uses
  %i.ao = call i32 @tvb_reported_length(ptr noundef %0)
  %i.ap = sub i32 %i.ao, %.03238
  %i.aq = icmp ult i32 %i.ap, 6
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.t, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %.03238, ptr noundef nonnull @.str.175) ; 0 uses
  %i.as = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_message.exit

bb.k:                                             ; preds = %bb.i
  %i.at = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.03238) ; 2 uses
  %i.au = add nuw i32 %.03238, 1                  ; 7 uses
  %i.av = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au) ; 3 uses
  %i.aw = add i32 %.03238, 2                      ; 2 uses
  %i.ax = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aw) ; 2 uses
  %i.ay = zext i8 %i.av to i32                    ; 5 uses
  %i.az = and i32 %i.ay, 15                       ; 4 uses
  %i.ba = add nuw nsw i32 %i.az, 1                ; 10 uses
  %i.bb = trunc nuw nsw i32 %i.ba to i8           ; 2 uses
  %switch.tableidx = add nsw i32 %i.az, -3        ; 2 uses
  %i.bc = icmp ult i32 %switch.tableidx, 13
  br i1 %i.bc, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %bb.k
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_packetbb, i64 %i.bd
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %switch.lookup
  %.0.i35 = phi i8 [ %switch.load, %switch.lookup ], [ 3, %bb.k ] ; 2 uses
  %i.be = zext i16 %i.ax to i32                   ; 2 uses
  %i.bf = trunc i32 %.03238 to i16
  %i.bg = add i16 %i.ax, %i.bf
  %i.bh = and i32 %i.ay, 64                       ; 2 uses
  %.not141.i = icmp eq i32 %i.bh, 0
  %i.bi = and i32 %i.ay, 32                       ; 2 uses
  %.not142.i = icmp eq i32 %i.bi, 0
  %i.bj = and i32 %i.ay, 16                       ; 2 uses
  %.not143.i = icmp eq i32 %i.bj, 0
  %i.bk = call i32 @tvb_reported_length(ptr noundef %0)
  %i.bl = sub i32 %i.bk, %.03238
  %i.bm = icmp ult i32 %i.bl, %i.be
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.t, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %.03238, ptr noundef nonnull @.str.176) ; 0 uses
  %i.bo = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_message.exit

bb.n:                                             ; preds = %bb.l
  %.not.i36 = icmp sgt i8 %i.av, -1               ; 2 uses
  %i.bp = add nuw nsw i32 %i.az, 5
  %spec.select.i = select i1 %.not.i36, i32 4, i32 %i.bp
  %i.bq = lshr exact i32 %i.bh, 6
  %i.br = lshr exact i32 %i.bi, 5
  %i.bs = lshr exact i32 %i.bj, 3
  %.1.i = add nuw nsw i32 %i.br, %i.bq
  %.2.i = add nuw nsw i32 %.1.i, %i.bs
  %.3.i = add nuw nsw i32 %.2.i, %spec.select.i
  %i.bt = load i32, ptr @hf_packetbb_msg, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.bt, ptr noundef %0, i32 noundef %.03238, i32 noundef %i.be, i32 noundef 0) ; 2 uses
  %i.bv = zext i8 %i.at to i32
  %i.bw = call ptr @val_to_str_const(i32 noundef %i.bv, ptr noundef nonnull @msgheader_type_vals, ptr noundef nonnull @.str.178)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bu, ptr noundef nonnull @.str.177, ptr noundef %i.bw)
  %i.bx = zext i8 %i.at to i64
  %i.by = getelementptr [4 x i8], ptr @ett_packetbb_msg, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = call ptr @proto_item_add_subtree(ptr noundef %i.bu, i32 noundef %i.bz) ; 13 uses
  %i.cb = load i32, ptr @hf_packetbb_msgheader, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.ca, i32 noundef %i.cb, ptr noundef %0, i32 noundef %.03238, i32 noundef %.3.i, i32 noundef 0)
  %i.cd = load i32, ptr @ett_packetbb_msgheader, align 4
  %i.ce = call ptr @proto_item_add_subtree(ptr noundef %i.cc, i32 noundef %i.cd) ; 8 uses
  %i.cf = load i32, ptr @hf_packetbb_msgheader_type, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.cf, ptr noundef %0, i32 noundef %.03238, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_packetbb_msgheader_flags, align 4
  %i.ci = and i32 %i.ay, 248
  %i.cj = call ptr @proto_tree_add_uint(ptr noundef %i.ce, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %i.ci)
  %i.ck = load i32, ptr @ett_packetbb_msgheader_flags, align 4
  %i.cl = call ptr @proto_item_add_subtree(ptr noundef %i.cj, i32 noundef %i.ck) ; 4 uses
  %i.cm = load i32, ptr @hf_packetbb_msgheader_flags_mhasorig, align 4
  %i.cn = zext i8 %i.av to i64                    ; 4 uses
  %i.co = call ptr @proto_tree_add_boolean(ptr noundef %i.cl, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i64 noundef %i.cn) ; 0 uses
  %i.cp = load i32, ptr @hf_packetbb_msgheader_flags_mhashoplimit, align 4
  %i.cq = call ptr @proto_tree_add_boolean(ptr noundef %i.cl, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i64 noundef %i.cn) ; 0 uses
  %i.cr = load i32, ptr @hf_packetbb_msgheader_flags_mhashopcount, align 4
  %i.cs = call ptr @proto_tree_add_boolean(ptr noundef %i.cl, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i64 noundef %i.cn) ; 0 uses
  %i.ct = load i32, ptr @hf_packetbb_msgheader_flags_mhasseqnr, align 4
  %i.cu = call ptr @proto_tree_add_boolean(ptr noundef %i.cl, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i64 noundef %i.cn) ; 0 uses
  %i.cv = load i32, ptr @hf_packetbb_msgheader_addresssize, align 4
  %i.cw = call ptr @proto_tree_add_uint(ptr noundef %i.ce, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %i.ba) ; 0 uses
  %i.cx = load i32, ptr @hf_packetbb_msgheader_size, align 4
  %i.cy = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cz = add i32 %.03238, 4                      ; 3 uses
  br i1 %.not.i36, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %switch.tableidx56 = add nsw i32 %i.az, -3      ; 2 uses
  %i.da = icmp ult i32 %switch.tableidx56, 13
  br i1 %i.da, label %switch.lookup57, label %bb.p

switch.lookup57:                                  ; preds = %bb.o
  %i.db = zext nneg i32 %switch.tableidx56 to i64
  %switch.gep58 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_packetbb.1, i64 %i.db
  %switch.load59 = load ptr, ptr %switch.gep58, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup57
  %hf_packetbb_msgheader_origaddrcustom.sink.i = phi ptr [ %switch.load59, %switch.lookup57 ], [ @hf_packetbb_msgheader_origaddrcustom, %bb.o ]
  %i.dc = load i32, ptr %hf_packetbb_msgheader_origaddrcustom.sink.i, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.cz, i32 noundef %i.ba, i32 noundef 0) ; 0 uses
  %i.de = add i32 %i.ba, %i.cz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0131.i = phi i32 [ %i.de, %bb.p ], [ %i.cz, %bb.n ] ; 3 uses
  br i1 %.not141.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i32, ptr @hf_packetbb_msgheader_hoplimit, align 4
  %i.dg = add i32 %.0131.i, 1
  %i.dh = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.df, ptr noundef %0, i32 noundef %.0131.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1132.i = phi i32 [ %i.dg, %bb.r ], [ %.0131.i, %bb.q ] ; 3 uses
end_hunk_0
