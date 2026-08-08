inline.NumInlined: 28
inline.NumDeleted: 22
begin_hunk_0
@.str.364 = private unnamed_addr constant [10 x i8] c"Appletalk\00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"Service Family\00", align 1
@.str.366 = private unnamed_addr constant [20 x i8] c"IPv4 Service Family\00", align 1
@.str.367 = private unnamed_addr constant [20 x i8] c"IPv6 Service Family\00", align 1
@eigrp_afi2string = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.361 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.362 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.363 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.364 }, { i32, [4 x i8], ptr } { i32 16384, [4 x i8] zeroinitializer, ptr @.str.365 }, { i32, [4 x i8], ptr } { i32 16385, [4 x i8] zeroinitializer, ptr @.str.366 }, { i32, [4 x i8], ptr } { i32 16386, [4 x i8] zeroinitializer, ptr @.str.367 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.369 = private unnamed_addr constant [18 x i8] c"NO-OP for padding\00", align 1
@.str.370 = private unnamed_addr constant [14 x i8] c"Scaled Metric\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"Admin Tag\00", align 1
@.str.372 = private unnamed_addr constant [10 x i8] c"Community\00", align 1
@.str.373 = private unnamed_addr constant [18 x i8] c"Non-Active energy\00", align 1
@.str.374 = private unnamed_addr constant [14 x i8] c"Active energy\00", align 1
@eigrp_attr_opcode2string = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.369 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.370 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.371 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.372 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.373 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.374 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.376 = private unnamed_addr constant [21 x i8] c"Capabilities Manager\00", align 1
@.str.377 = private unnamed_addr constant [23 x i8] c"Unified Communications\00", align 1
@.str.378 = private unnamed_addr constant [20 x i8] c"Performance Routing\00", align 1
@eigrp_saf_srv2string = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.376 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.377 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.378 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.380 = private unnamed_addr constant [22 x i8] c"Attached Service Data\00", align 1
@.str.381 = private unnamed_addr constant [21 x i8] c"Trimmed Service Data\00", align 1
@eigrp_saf_type2string = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.380 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.381 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.383 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"%u-%u\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.386 = private unnamed_addr constant [20 x i8] c"EIGRP_EXTCOMM_EIGRP\00", align 1
@.str.387 = private unnamed_addr constant [18 x i8] c"EIGRP_EXTCOMM_VRR\00", align 1
@.str.388 = private unnamed_addr constant [18 x i8] c"EIGRP_EXTCOMM_DAD\00", align 1
@.str.389 = private unnamed_addr constant [19 x i8] c"EIGRP_EXTCOMM_VRHB\00", align 1
@.str.390 = private unnamed_addr constant [19 x i8] c"EIGRP_EXTCOMM_SRLM\00", align 1
@.str.391 = private unnamed_addr constant [18 x i8] c"EIGRP_EXTCOMM_SAR\00", align 1
@.str.392 = private unnamed_addr constant [18 x i8] c"EIGRP_EXTCOMM_RPM\00", align 1
@.str.393 = private unnamed_addr constant [24 x i8] c"EIGRP_EXTCOMM_SOO_ASFMT\00", align 1
@.str.394 = private unnamed_addr constant [25 x i8] c"EIGRP_EXTCOMM_SOO_ADRFMT\00", align 1
@eigrp_metric_comm_type_vals = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 34816, [4 x i8] zeroinitializer, ptr @.str.386 }, { i32, [4 x i8], ptr } { i32 34822, [4 x i8] zeroinitializer, ptr @.str.387 }, { i32, [4 x i8], ptr } { i32 34817, [4 x i8] zeroinitializer, ptr @.str.388 }, { i32, [4 x i8], ptr } { i32 34818, [4 x i8] zeroinitializer, ptr @.str.389 }, { i32, [4 x i8], ptr } { i32 34819, [4 x i8] zeroinitializer, ptr @.str.390 }, { i32, [4 x i8], ptr } { i32 34820, [4 x i8] zeroinitializer, ptr @.str.391 }, { i32, [4 x i8], ptr } { i32 34821, [4 x i8] zeroinitializer, ptr @.str.392 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.393 }, { i32, [4 x i8], ptr } { i32 259, [4 x i8] zeroinitializer, ptr @.str.394 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.396 = private unnamed_addr constant [24 x i8] c"Unknown OpCode (0x%04x)\00", align 1
@.str.397 = private unnamed_addr constant [12 x i8] c"Cisco EIGRP\00", align 1
@eigrp_flag_fields = internal constant [5 x ptr] [ptr @hf_eigrp_flags_init, ptr @hf_eigrp_flags_condrecv, ptr @hf_eigrp_flags_restart, ptr @hf_eigrp_flags_eot, ptr null], align 16
@.str.398 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.399 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.400 = private unnamed_addr constant [21 x i8] c"Unknown TLV (0x%04x)\00", align 1
@.str.401 = private unnamed_addr constant [27 x i8] c"Unknown TLV Group (0x%04x)\00", align 1
@.str.402 = private unnamed_addr constant [17 x i8] c"(Address-Family)\00", align 1
@.str.403 = private unnamed_addr constant [17 x i8] c"(Service-Family)\00", align 1
@.str.404 = private unnamed_addr constant [13 x i8] c"(Multi-Cast)\00", align 1
@eigrp_vrid2string = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.402 }, { i32, [4 x i8], ptr } { i32 32768, [4 x i8] zeroinitializer, ptr @.str.403 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.404 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.406 = private unnamed_addr constant [29 x i8] c"Unknown Generic TLV (0x%04x)\00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c": Peer Termination\00", align 1
@.str.408 = private unnamed_addr constant [20 x i8] c"Invalid auth len %u\00", align 1
@.str.409 = private unnamed_addr constant [21 x i8] c"Invalid auth type %u\00", align 1
@.str.410 = private unnamed_addr constant [16 x i8] c"IPX Address: %s\00", align 1
@.str.411 = private unnamed_addr constant [14 x i8] c": EIGRP=%u.%u\00", align 1
@.str.412 = private unnamed_addr constant [12 x i8] c", TLV=%u.%u\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@eigrp_stub_flag_fields = internal constant [7 x ptr] [ptr @hf_eigrp_stub_flags_connected, ptr @hf_eigrp_stub_flags_static, ptr @hf_eigrp_stub_flags_summary, ptr @hf_eigrp_stub_flags_redist, ptr @hf_eigrp_stub_flags_leakmap, ptr @hf_eigrp_stub_flags_recvonly, ptr null], align 16
@.str.414 = private unnamed_addr constant [8 x i8] c"%d TIDs\00", align 1
@.str.415 = private unnamed_addr constant [14 x i8] c"External Data\00", align 1
@.str.416 = private unnamed_addr constant [15 x i8] c"External Flags\00", align 1
@.str.417 = private unnamed_addr constant [40 x i8] c"Invalid prefix length %u, must be <= 32\00", align 1
@.str.418 = private unnamed_addr constant [13 x i8] c"  %c   %s/%u\00", align 1
@.str.419 = private unnamed_addr constant [36 x i8] c": Cable range= %u-%u, Router ID= %u\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c": %u-%u\00", align 1
@.str.421 = private unnamed_addr constant [9 x i8] c"  =   %s\00", align 1
@.str.422 = private unnamed_addr constant [41 x i8] c"Invalid prefix length %u, must be <= 128\00", align 1
@.str.423 = private unnamed_addr constant [12 x i8] c"Wide Metric\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.425 = private unnamed_addr constant [11 x i8] c"Attributes\00", align 1
@.str.426 = private unnamed_addr constant [13 x i8] c"SAF Service \00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.428 = private unnamed_addr constant [9 x i8] c"%c %u:%u\00", align 1
@.str.429 = private unnamed_addr constant [13 x i8] c"Reachability\00", align 1
@.str.430 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.431 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1
@.str.432 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_eigrp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.313, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.314) ; 2 uses
  store i32 %i.a, ptr @proto_eigrp, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.314, ptr noundef nonnull @dissect_eigrp, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @proto_eigrp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_eigrp.hf, i32 noundef 128)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_eigrp.ett, i32 noundef 12)
  %i.d = load i32, ptr @proto_eigrp, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_eigrp.ei, i32 noundef 12)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @eigrp_fmt_version(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = and i32 %i.a, 255
  %i.c = and i32 %1, 255
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.383, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @eigrp_fmt_cable_range(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %1, 65535
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.384, i32 noundef %i.a, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @eigrp_fmt_nexthop_address(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %1, 65535
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.385, i32 noundef %i.a, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_eigrp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.i = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef nonnull @.str.1)
  %i.k = load ptr, ptr %i.i, align 8
  tail call void @col_clear(ptr noundef %i.k, i32 noundef 25)
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 12)
  %i.o = icmp eq i8 %i.l, 5
  %i.p = icmp ne i32 %i.n, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  %spec.store.select2 = select i1 %or.cond, i32 8, i32 %i.m ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = getelementptr i8, ptr %1, i64 416        ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @val_to_str(ptr noundef %i.s, i32 noundef %spec.store.select2, ptr noundef nonnull @eigrp_opcode2string, ptr noundef nonnull @.str.396)
  tail call void @col_add_str(ptr noundef %i.q, i32 noundef 25, ptr noundef %i.t)
  %i.u = load i32, ptr @proto_eigrp, align 4
  %i.v = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.397)
  %i.w = load i32, ptr @ett_eigrp, align 4
  %i.x = tail call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.w) ; 11 uses
  %i.y = load i32, ptr @hf_eigrp_version, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_eigrp_opcode, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aa, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ad = load i32, ptr @hf_eigrp_checksum, align 4
  %i.ae = load i32, ptr @hf_eigrp_checksum_status, align 4
  %i.af = tail call zeroext i16 @ip_checksum_tvb(ptr noundef %0, i32 noundef 0, i32 noundef %i.ac)
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call ptr @proto_tree_add_checksum(ptr noundef %i.x, ptr noundef %0, i32 noundef 2, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull @ei_eigrp_checksum_bad, ptr noundef %1, i32 noundef %i.ag, i32 noundef 0, i32 noundef 5) ; 0 uses
  %i.ai = load i32, ptr @hf_eigrp_flags, align 4
  %i.aj = load i32, ptr @ett_eigrp_flags, align 4
  %i.ak = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.x, ptr noundef %0, i32 noundef 4, i32 noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull @eigrp_flag_fields, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_eigrp_sequence, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.al, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_eigrp_acknowledge, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.an, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_eigrp_vrid, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ap, ptr noundef %0, i32 noundef 16, i32 noundef 2, i32 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8
  %i.ar = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 16)
  %i.as = and i16 %i.ar, -32767
  %i.at = zext i16 %i.as to i32
  %i.au = tail call ptr @val_to_str_const(i32 noundef %i.at, ptr noundef nonnull @eigrp_vrid2string, ptr noundef nonnull @.str.399)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef nonnull @.str.398, ptr noundef %i.au)
  %i.av = load i32, ptr @hf_eigrp_as, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.av, ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef 0) ; 0 uses
  %cond = icmp eq i32 %spec.store.select2, 6
  br i1 %cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ax = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 20)
  %.not120 = icmp eq i32 %i.ax, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr @ipxsap_handle, align 8
  %i.az = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 20)
  %i.ba = tail call i32 @call_dissector(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %1, ptr noundef %i.x) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %dissect_eigrp_general_tlv.exit
  %.0121 = phi i32 [ %i.nx, %dissect_eigrp_general_tlv.exit ], [ 20, %.preheader ] ; 13 uses
  %i.bb = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0121) ; 2 uses
  %i.bc = icmp eq i16 %i.bb, 245
  %spec.store.select = select i1 %i.bc, i16 8, i16 %i.bb ; 10 uses
  %i.bd = add i32 %.0121, 2                       ; 2 uses
  %i.be = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bd) ; 2 uses
  %i.bf = zext i16 %i.be to i32                   ; 9 uses
  %i.bg = icmp ult i16 %i.be, 4
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bh = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.x, ptr noundef %1, ptr noundef nonnull @ei_eigrp_tlv_len, ptr noundef %0, i32 noundef %.0121) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.bi = load i32, ptr @ett_eigrp_tlv, align 4
  %i.bj = load ptr, ptr %i.r, align 8
  %i.bk = zext i16 %spec.store.select to i32      ; 3 uses
  %i.bl = call ptr @val_to_str(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull @eigrp_tlv2string, ptr noundef nonnull @.str.400)
  %i.bm = call ptr @proto_tree_add_subtree(ptr noundef %i.x, ptr noundef %0, i32 noundef %.0121, i32 noundef %i.bf, i32 noundef %i.bi, ptr noundef nonnull %i.h, ptr noundef %i.bl) ; 72 uses
  %i.bn = load i32, ptr @hf_eigrp_tlv_type, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.0121, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_eigrp_tlv_len, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bd, i32 noundef 2, i32 noundef 0) ; 0 uses
  %trunc = and i16 %spec.store.select, -16
  %i.br = load ptr, ptr %i.h, align 8             ; 23 uses
  switch i16 %trunc, label %bb.cf [
    i16 0, label %bb.e
    i16 256, label %bb.ad
    i16 512, label %bb.af
    i16 768, label %bb.ak
    i16 1024, label %bb.am
    i16 1536, label %bb.ao
    i16 240, label %bb.bv
  ]

bb.e:                                             ; preds = %bb.d
  %i.bs = add i32 %.0121, 4
  %i.bt = add nsw i32 %i.bf, -4
  %i.bu = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.bs, i32 noundef %i.bt) ; 39 uses
  switch i16 %spec.store.select, label %bb.ac [
    i16 1, label %bb.f
    i16 2, label %bb.h
    i16 3, label %bb.p
    i16 4, label %bb.x
    i16 5, label %bb.y
    i16 6, label %bb.z
    i16 7, label %bb.aa
    i16 8, label %bb.ab
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.bv = load i32, ptr @hf_eigrp_par_k1, align 4
  %i.bw = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.bm, i32 noundef %i.bv, ptr noundef %i.bu, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.bx = load i32, ptr @hf_eigrp_par_k2, align 4
  %i.by = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.bm, i32 noundef %i.bx, ptr noundef %i.bu, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.bz = load i32, ptr @hf_eigrp_par_k3, align 4
  %i.ca = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.bm, i32 noundef %i.bz, ptr noundef %i.bu, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.cb = load i32, ptr @hf_eigrp_par_k4, align 4
  %i.cc = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.bm, i32 noundef %i.cb, ptr noundef %i.bu, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.cd = load i32, ptr @hf_eigrp_par_k5, align 4
  %i.ce = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.bm, i32 noundef %i.cd, ptr noundef %i.bu, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  %i.cf = load i32, ptr @hf_eigrp_par_k6, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.cf, ptr noundef %i.bu, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_eigrp_par_holdtime, align 4
  %i.ci = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ch, ptr noundef %i.bu, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cj = load i8, ptr %i.c, align 1
  %i.ck = icmp eq i8 %i.cj, -1
  %i.cl = load i8, ptr %i.d, align 1
  %i.cm = icmp eq i8 %i.cl, -1
  %or.cond.i.i = select i1 %i.ck, i1 %i.cm, i1 false
  %i.cn = load i8, ptr %i.e, align 1
  %i.co = icmp eq i8 %i.cn, -1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.co, i1 false
  %i.cp = load i8, ptr %i.f, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.cq, i1 false
  %i.cr = load i8, ptr %i.g, align 1
  %i.cs = icmp eq i8 %i.cr, -1
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.cs, i1 false
  br i1 %or.cond11.i.i, label %bb.g, label %dissect_eigrp_parameter.exit.i

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.407)
  %i.ct = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.br, ptr noundef nonnull @ei_eigrp_peer_termination) ; 0 uses
  br label %dissect_eigrp_parameter.exit.i

dissect_eigrp_parameter.exit.i:                   ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %dissect_eigrp_general_tlv.exit

bb.h:                                             ; preds = %bb.e
  %i.cu = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bu, i32 noundef 0) ; 2 uses
  %i.cv = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bu, i32 noundef 2) ; 4 uses
  %i.cw = zext i16 %i.cu to i32                   ; 2 uses
  %i.cx = call ptr @val_to_str_const(i32 noundef %i.cw, ptr noundef nonnull @eigrp_auth2string, ptr noundef nonnull @.str.399)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.398, ptr noundef %i.cx)
  %i.cy = load i32, ptr @hf_eigrp_auth_type, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.cy, ptr noundef %i.bu, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  %i.da = load i32, ptr @hf_eigrp_auth_len, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.da, ptr noundef %i.bu, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.dc = load i32, ptr @hf_eigrp_auth_keyid, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dc, ptr noundef %i.bu, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.de = load i32, ptr @hf_eigrp_auth_keyseq, align 4
  %i.df = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.de, ptr noundef %i.bu, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dg = load i32, ptr @hf_eigrp_nullpad, align 4
  %i.dh = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dg, ptr noundef %i.bu, i32 noundef 12, i32 noundef 8, i32 noundef 0) ; 0 uses
  switch i16 %i.cu, label %bb.o [
    i16 2, label %bb.i
    i16 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %.not42.i.i = icmp eq i16 %i.cv, 16
  br i1 %.not42.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = zext i16 %i.cv to i32
  %i.dj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.db, ptr noundef nonnull @ei_eigrp_auth_len, ptr noundef nonnull @.str.408, i32 noundef %i.di) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.k:                                             ; preds = %bb.i
  %i.dk = load i32, ptr @hf_eigrp_auth_digest, align 4
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dk, ptr noundef %i.bu, i32 noundef 20, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.l:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i16 %i.cv, 32
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = zext i16 %i.cv to i32
  %i.dn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.db, ptr noundef nonnull @ei_eigrp_auth_len, ptr noundef nonnull @.str.408, i32 noundef %i.dm) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.n:                                             ; preds = %bb.l
  %i.do = load i32, ptr @hf_eigrp_auth_digest, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.do, ptr noundef %i.bu, i32 noundef 20, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.o:                                             ; preds = %bb.h
  %i.dq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cz, ptr noundef nonnull @ei_eigrp_auth_type, ptr noundef nonnull @.str.409, i32 noundef %i.cw) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.p:                                             ; preds = %bb.e
  %i.dr = call i32 @tvb_reported_length_remaining(ptr noundef %i.bu, i32 noundef 0)
  %.not32.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not32.i.i, label %dissect_eigrp_general_tlv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.w
  %.033.i.i = phi i32 [ %i.ej, %bb.w ], [ 0, %bb.p ] ; 3 uses
  %i.ds = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bu, i32 noundef %.033.i.i) ; 2 uses
  %i.dt = load i32, ptr @hf_eigrp_seq_addrlen, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dt, ptr noundef %i.bu, i32 noundef %.033.i.i, i32 noundef 1, i32 noundef 0)
  %i.dv = add i32 %.033.i.i, 1                    ; 5 uses
  %i.dw = call i32 @tvb_reported_length_remaining(ptr noundef %i.bu, i32 noundef %i.dv)
  %i.dx = zext i8 %i.ds to i32                    ; 5 uses
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.dz = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.br, ptr noundef nonnull @ei_eigrp_tlv_trunc) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.r:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.ds, label %bb.v [
    i8 4, label %bb.s
    i8 10, label %bb.t
    i8 16, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ea = load i32, ptr @hf_eigrp_seq_ipv4addr, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ea, ptr noundef %i.bu, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 0) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ec = load i32, ptr @hf_eigrp_ipx_address, align 4
  %i.ed = load ptr, ptr %i.r, align 8
  %i.ee = call ptr @tvb_address_to_str(ptr noundef %i.ed, ptr noundef %i.bu, i32 noundef 4, i32 noundef 1)
  %i.ef = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.bm, i32 noundef %i.ec, ptr noundef %i.bu, i32 noundef %i.dv, i32 noundef %i.dx, ptr noundef null, ptr noundef nonnull @.str.410, ptr noundef %i.ee) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.eg = load i32, ptr @hf_eigrp_seq_ipv6addr, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.eg, ptr noundef %i.bu, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 0) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ei = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.du, ptr noundef nonnull @ei_eigrp_seq_addrlen) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ej = add i32 %i.dv, %i.dx                    ; 2 uses
  %i.ek = call i32 @tvb_reported_length_remaining(ptr noundef %i.bu, i32 noundef %i.ej)
  %.not.i27.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i27.i, label %dissect_eigrp_general_tlv.exit, label %.lr.ph.i.i, !llvm.loop !6

bb.x:                                             ; preds = %bb.e
  %i.el = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bu, i32 noundef 0)
  %i.em = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bu, i32 noundef 1)
  %i.en = load i32, ptr @hf_eigrp_release, align 4
  %i.eo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.en, ptr noundef %i.bu, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ep = zext i8 %i.el to i32
  %i.eq = zext i8 %i.em to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.411, i32 noundef %i.ep, i32 noundef %i.eq)
  %i.er = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bu, i32 noundef 2)
  %i.es = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bu, i32 noundef 3)
  %i.et = load i32, ptr @hf_eigrp_tlv_version, align 4
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.et, ptr noundef %i.bu, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ev = zext i8 %i.er to i32
  %i.ew = zext i8 %i.es to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.412, i32 noundef %i.ev, i32 noundef %i.ew)
  br label %dissect_eigrp_general_tlv.exit

bb.y:                                             ; preds = %bb.e
  %i.ex = load i32, ptr @hf_eigrp_next_mcast_seq, align 4
  %i.ey = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ex, ptr noundef %i.bu, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ez = call i32 @tvb_get_ntohl(ptr noundef %i.bu, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.413, i32 noundef %i.ez)
  br label %dissect_eigrp_general_tlv.exit

bb.z:                                             ; preds = %bb.e
  %i.fa = load i32, ptr @hf_eigrp_stub_flags, align 4
  %i.fb = load i32, ptr @ett_eigrp_stub_flags, align 4
  %i.fc = call ptr @proto_tree_add_bitmask(ptr noundef %i.bm, ptr noundef %i.bu, i32 noundef 0, i32 noundef %i.fa, i32 noundef %i.fb, ptr noundef nonnull @eigrp_stub_flag_fields, i32 noundef 0) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.aa:                                            ; preds = %bb.e
  %i.fd = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.br, ptr noundef nonnull @ei_eigrp_peer_termination_graceful) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.ab:                                            ; preds = %bb.e
  %i.fe = load i32, ptr @hf_eigrp_tidlist_flags, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fe, ptr noundef %i.bu, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fg = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bu, i32 noundef 2)
  %i.fh = lshr i16 %i.fg, 1                       ; 3 uses
  %i.fi = load i32, ptr @hf_eigrp_tidlist_len, align 4
  %i.fj = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fi, ptr noundef %i.bu, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fk = zext nneg i16 %i.fh to i32              ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = load i32, ptr @ett_eigrp_tidlist, align 4
  %i.fn = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bm, ptr noundef %i.bu, i32 noundef 4, i32 noundef %i.fl, i32 noundef %i.fm, ptr noundef null, ptr noundef nonnull @.str.414, i32 noundef %i.fk)
  %.not21.i.i = icmp eq i16 %i.fh, 0
  br i1 %.not21.i.i, label %dissect_eigrp_general_tlv.exit, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.ab, %.lr.ph.i28.i
  %.023.i.i = phi i16 [ %i.fr, %.lr.ph.i28.i ], [ %i.fh, %bb.ab ]
  %.02022.i.i = phi i32 [ %i.fq, %.lr.ph.i28.i ], [ 4, %bb.ab ] ; 2 uses
  %i.fo = load i32, ptr @hf_eigrp_tidlist_tid, align 4
  %i.fp = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %i.fo, ptr noundef %i.bu, i32 noundef %.02022.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fq = add nuw nsw i32 %.02022.i.i, 2
  %i.fr = add nsw i16 %.023.i.i, -1               ; 2 uses
  %.not.i29.i = icmp eq i16 %i.fr, 0
  br i1 %.not.i29.i, label %dissect_eigrp_general_tlv.exit, label %.lr.ph.i28.i, !llvm.loop !8

bb.ac:                                            ; preds = %bb.e
  %i.fs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.br, ptr noundef nonnull @ei_eigrp_tlv_type, ptr noundef nonnull @.str.406, i32 noundef %i.bk) ; 0 uses
  br label %dissect_eigrp_general_tlv.exit

bb.ad:                                            ; preds = %bb.d
  %i.ft = add i32 %.0121, 4
  %i.fu = add nsw i32 %i.bf, -4
  %i.fv = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ft, i32 noundef %i.fu) ; 4 uses
  %i.fw = load i32, ptr @hf_eigrp_ipv4_nexthop, align 4
  %i.fx = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fw, ptr noundef %i.fv, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fy = and i16 %spec.store.select, 15
  %i.fz = icmp eq i16 %i.fy, 3
  br i1 %i.fz, label %bb.ae, label %dissect_eigrp_ipv4_tlv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ga = call fastcc i32 @dissect_eigrp_extdata(ptr noundef %i.bm, ptr noundef %i.fv, i32 noundef 4)
  br label %dissect_eigrp_ipv4_tlv.exit

dissect_eigrp_ipv4_tlv.exit:                      ; preds = %bb.ad, %bb.ae
  %.0.i = phi i32 [ %i.ga, %bb.ae ], [ 4, %bb.ad ]
  %i.gb = call fastcc i32 @dissect_eigrp_legacy_metric(ptr noundef %i.bm, ptr noundef %i.fv, i32 noundef %.0.i)
  call fastcc void @dissect_eigrp_ipv4_addrs(ptr noundef %i.br, ptr noundef %i.bm, ptr noundef %i.fv, ptr noundef %1, i32 noundef %i.gb)
  br label %dissect_eigrp_general_tlv.exit

bb.af:                                            ; preds = %bb.d
  %i.gc = add i32 %.0121, 4
  %i.gd = add nsw i32 %i.bf, -4
  %i.ge = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.gc, i32 noundef %i.gd) ; 11 uses
  %i.gf = icmp eq i16 %spec.store.select, 516
  br i1 %i.gf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gg = load i32, ptr @hf_eigrp_appletalk_cable_range, align 4
  %i.gh = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gg, ptr noundef %i.ge, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gi = load i32, ptr @hf_eigrp_atalk_routerid, align 4
  %i.gj = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gi, ptr noundef %i.ge, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gk = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.ge, i32 noundef 0)
  %i.gl = zext i16 %i.gk to i32
  %i.gm = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.ge, i32 noundef 2)
  %i.gn = zext i16 %i.gm to i32
  %i.go = call i32 @tvb_get_ntohl(ptr noundef %i.ge, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.419, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.go)
  br label %dissect_eigrp_general_tlv.exit

bb.ah:                                            ; preds = %bb.af
  %i.gp = load i32, ptr @hf_eigrp_nexthop_address, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gp, ptr noundef %i.ge, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gr = and i16 %spec.store.select, 15
  %i.gs = icmp eq i16 %i.gr, 3
  br i1 %i.gs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gt = call fastcc i32 @dissect_eigrp_extdata(ptr noundef %i.bm, ptr noundef %i.ge, i32 noundef 4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i113 = phi i32 [ %i.gt, %bb.ai ], [ 4, %bb.ah ]
  %i.gu = call fastcc i32 @dissect_eigrp_legacy_metric(ptr noundef %i.bm, ptr noundef %i.ge, i32 noundef %.0.i113)
  %i.gv = load i32, ptr @hf_eigrp_cable_range, align 4
  %i.gw = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gv, ptr noundef %i.ge, i32 noundef %i.gu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gx = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.ge, i32 noundef 36)
  %i.gy = zext i16 %i.gx to i32
  %i.gz = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.ge, i32 noundef 38)
  %i.ha = zext i16 %i.gz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.420, i32 noundef %i.gy, i32 noundef %i.ha)
  br label %dissect_eigrp_general_tlv.exit

bb.ak:                                            ; preds = %bb.d
  %i.hb = add i32 %.0121, 4
  %i.hc = add nsw i32 %i.bf, -4
  %i.hd = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.hb, i32 noundef %i.hc) ; 6 uses
  %i.he = load i32, ptr @hf_eigrp_ipx_nexthop_net, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.he, ptr noundef %i.hd, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hg = load i32, ptr @hf_eigrp_ipx_nexthop_host, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hg, ptr noundef %i.hd, i32 noundef 4, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.hi = and i16 %spec.store.select, 15
  %i.hj = icmp eq i16 %i.hi, 3
  br i1 %i.hj, label %bb.al, label %dissect_eigrp_ipx_tlv.exit

bb.al:                                            ; preds = %bb.ak
  %i.hk = call fastcc i32 @dissect_eigrp_ipx_extdata(ptr noundef %i.bm, ptr noundef %i.hd, i32 noundef 10)
  br label %dissect_eigrp_ipx_tlv.exit

dissect_eigrp_ipx_tlv.exit:                       ; preds = %bb.ak, %bb.al
  %.0.i114 = phi i32 [ %i.hk, %bb.al ], [ 10, %bb.ak ]
  %i.hl = call fastcc i32 @dissect_eigrp_legacy_metric(ptr noundef %i.bm, ptr noundef %i.hd, i32 noundef %.0.i114) ; 2 uses
  %i.hm = load i32, ptr @hf_eigrp_ipx_dest, align 4
  %i.hn = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hm, ptr noundef %i.hd, i32 noundef %i.hl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ho = load ptr, ptr %i.r, align 8
  %i.hp = call i32 @tvb_get_ntohl(ptr noundef %i.hd, i32 noundef %i.hl)
  %i.hq = call ptr @ipxnet_to_str_punct(ptr noundef %i.ho, i32 noundef %i.hp, i8 noundef signext 32)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.421, ptr noundef %i.hq)
  br label %dissect_eigrp_general_tlv.exit

bb.am:                                            ; preds = %bb.d
  %i.hr = add i32 %.0121, 4
  %i.hs = add nsw i32 %i.bf, -4
  %i.ht = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.hr, i32 noundef %i.hs) ; 4 uses
  %i.hu = load i32, ptr @hf_eigrp_ipv6_nexthop, align 4
  %i.hv = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hu, ptr noundef %i.ht, i32 noundef 0, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.hw = and i16 %spec.store.select, 15
  %i.hx = icmp eq i16 %i.hw, 3
  br i1 %i.hx, label %bb.an, label %dissect_eigrp_ipv6_tlv.exit

bb.an:                                            ; preds = %bb.am
  %i.hy = call fastcc i32 @dissect_eigrp_extdata(ptr noundef %i.bm, ptr noundef %i.ht, i32 noundef 16)
  br label %dissect_eigrp_ipv6_tlv.exit

dissect_eigrp_ipv6_tlv.exit:                      ; preds = %bb.am, %bb.an
  %.0.i115 = phi i32 [ %i.hy, %bb.an ], [ 16, %bb.am ]
  %i.hz = call fastcc i32 @dissect_eigrp_legacy_metric(ptr noundef %i.bm, ptr noundef %i.ht, i32 noundef %.0.i115)
  call fastcc void @dissect_eigrp_ipv6_addrs(ptr noundef %i.br, ptr noundef %i.bm, ptr noundef %i.ht, ptr noundef %1, i32 noundef %i.hz)
  br label %dissect_eigrp_general_tlv.exit

bb.ao:                                            ; preds = %bb.d
  %i.ia = add i32 %.0121, 4
  %i.ib = add nsw i32 %i.bf, -4
  %i.ic = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ia, i32 noundef %i.ib) ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.id = load i32, ptr @hf_eigrp_tid, align 4
  %i.ie = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.id, ptr noundef %i.ic, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.if = load i32, ptr @hf_eigrp_afi, align 4
  %i.ig = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.bm, i32 noundef %i.if, ptr noundef %i.ic, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ih = load i32, ptr @hf_eigrp_routerid, align 4
  %i.ii = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ih, ptr noundef %i.ic, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ij = load i32, ptr @ett_eigrp_tlv_metric, align 4
  %i.ik = call ptr @proto_tree_add_subtree(ptr noundef %i.bm, ptr noundef %i.ic, i32 noundef 8, i32 noundef 24, i32 noundef %i.ij, ptr noundef null, ptr noundef nonnull @.str.423) ; 12 uses
  %i.il = call ptr @tvb_new_subset_length(ptr noundef %i.ic, i32 noundef 8, i32 noundef 24) ; 16 uses
  %i.im = call zeroext i8 @tvb_get_uint8(ptr noundef %i.il, i32 noundef 0) ; 2 uses
  %i.in = load i32, ptr @hf_eigrp_metric_offset, align 4
  %i.io = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.in, ptr noundef %i.il, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ip = load i32, ptr @hf_eigrp_metric_priority, align 4
  %i.iq = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.ip, ptr noundef %i.il, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ir = load i32, ptr @hf_eigrp_metric_rel, align 4
  %i.is = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.ir, ptr noundef %i.il, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.it = load i32, ptr @hf_eigrp_metric_load, align 4
  %i.iu = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.it, ptr noundef %i.il, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iv = load i32, ptr @hf_eigrp_metric_mtu, align 4
  %i.iw = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.iv, ptr noundef %i.il, i32 noundef 4, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ix = load i32, ptr @hf_eigrp_metric_hopcount, align 4
  %i.iy = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.ix, ptr noundef %i.il, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iz = call i64 @tvb_get_ntoh64(ptr noundef %i.il, i32 noundef 8)
  %i.ja = lshr i64 %i.iz, 16                      ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 281474976710655
  %i.jc = load i32, ptr @hf_eigrp_metric_delay, align 4 ; 2 uses
  br i1 %i.jb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jd = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %i.ik, i32 noundef %i.jc, ptr noundef %i.il, i32 noundef 8, i32 noundef 6, i64 noundef 281474976710655, ptr noundef nonnull @.str.424) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.je = call ptr @proto_tree_add_uint64(ptr noundef %i.ik, i32 noundef %i.jc, ptr noundef %i.il, i32 noundef 8, i32 noundef 6, i64 noundef %i.ja) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jf = call i64 @tvb_get_ntoh64(ptr noundef %i.il, i32 noundef 14)
  %i.jg = lshr i64 %i.jf, 16                      ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 281474976710655
  %i.ji = load i32, ptr @hf_eigrp_metric_bandwidth, align 4 ; 2 uses
  br i1 %i.jh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jj = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %i.ik, i32 noundef %i.ji, ptr noundef %i.il, i32 noundef 14, i32 noundef 6, i64 noundef 281474976710655, ptr noundef nonnull @.str.424) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.jk = call ptr @proto_tree_add_uint64(ptr noundef %i.ik, i32 noundef %i.ji, ptr noundef %i.il, i32 noundef 14, i32 noundef 6, i64 noundef %i.jg) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jl = load i32, ptr @hf_eigrp_metric_reserved, align 4
  %i.jm = call ptr @proto_tree_add_item(ptr noundef %i.ik, i32 noundef %i.jl, ptr noundef %i.il, i32 noundef 20, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jn = load i32, ptr @ett_eigrp_metric_flags, align 4
  %i.jo = call ptr @proto_tree_add_subtree(ptr noundef %i.ik, ptr noundef %i.il, i32 noundef 22, i32 noundef 2, i32 noundef %i.jn, ptr noundef null, ptr noundef nonnull @.str.17) ; 4 uses
  %i.jp = call ptr @tvb_new_subset_length(ptr noundef %i.il, i32 noundef 22, i32 noundef 2) ; 4 uses
  %i.jq = load i32, ptr @hf_eigrp_metric_flags_srcwd, align 4
end_hunk_0
