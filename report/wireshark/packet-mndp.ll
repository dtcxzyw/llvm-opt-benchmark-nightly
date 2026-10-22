Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mndp?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }

@proto_register_mndp.hf = internal global [16 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_mndp_tlv_type, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_tlv_length, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_tlv_data, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_header_unknown, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_header_seqno, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_mac, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 29, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_softwareid, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_version, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_identity, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_uptime, %struct._header_field_info { ptr @.str.18, ptr @.str.19, i32 25, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_platform, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_board, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_unpack, %struct._header_field_info { ptr @.str.24, ptr @.str.25, i32 4, i32 1, ptr @mndp_unpack_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_ipv6address, %struct._header_field_info { ptr @.str.26, ptr @.str.27, i32 33, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_interfacename, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mndp_ipv4address, %struct._header_field_info { ptr @.str.30, ptr @.str.31, i32 32, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_mndp_tlv_type = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TlvType\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mndp.tlv.type\00", align 1
@hf_mndp_tlv_length = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"TlvLength\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mndp.tlv.length\00", align 1
@hf_mndp_tlv_data = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"TlvData\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mndp.tlv.data\00", align 1
@hf_mndp_header_unknown = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Header Unknown\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"mndp.header.unknown\00", align 1
@hf_mndp_header_seqno = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"SeqNo\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mndp.header.seqno\00", align 1
@hf_mndp_mac = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"MAC-Address\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"mndp.mac\00", align 1
@hf_mndp_softwareid = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"Software-ID\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"mndp.softwareid\00", align 1
@hf_mndp_version = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"mndp.version\00", align 1
@hf_mndp_identity = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"mndp.identity\00", align 1
@hf_mndp_uptime = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"Uptime\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"mndp.uptime\00", align 1
@hf_mndp_platform = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"Platform\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"mndp.platform\00", align 1
@hf_mndp_board = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"Board\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"mndp.board\00", align 1
@hf_mndp_unpack = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"Unpack\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"mndp.unpack\00", align 1
@hf_mndp_ipv6address = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"IPv6-Address\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"mndp.ipv6address\00", align 1
@hf_mndp_interfacename = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [15 x i8] c"Interface name\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"mndp.interfacename\00", align 1
@hf_mndp_ipv4address = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"IPv4-Address\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"mndp.ipv4address\00", align 1
@proto_register_mndp.ett = internal global [2 x ptr] [ptr @ett_mndp, ptr @ett_mndp_tlv_header], align 16
@ett_mndp = internal global i32 0, align 4
@ett_mndp_tlv_header = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [37 x i8] c"Mikrotik Neighbor Discovery Protocol\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"MNDP\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"mndp\00", align 1
@proto_mndp = internal unnamed_addr global i32 0, align 4
@mndp_handle = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"MNDP over UDP\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"mndp_udp\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@mndp_unpack_vals = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.39 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [15 x i8] c"T %d, L %d: %s\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"epan/dissectors/packet-mndp.c\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"newoffset > offset\00", align 1
@mndp_body_tlv_vals = internal unnamed_addr constant [12 x { i32, [4 x i8], ptr, ptr, ptr, ptr }] [{ i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @hf_mndp_mac, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.16, ptr @hf_mndp_identity, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.14, ptr @hf_mndp_version, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.20, ptr @hf_mndp_platform, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.18, ptr @hf_mndp_uptime, ptr null, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.12, ptr @hf_mndp_softwareid, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.22, ptr @hf_mndp_board, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.24, ptr @hf_mndp_unpack, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.26, ptr @hf_mndp_ipv6address, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.28, ptr @hf_mndp_interfacename, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.30, ptr @hf_mndp_ipv4address, ptr null, ptr null }, { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mndp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.32, ptr noundef @.str.33, ptr noundef @.str.34) ; 2 uses
  store i32 %i.a, ptr @proto_mndp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_mndp.hf, i32 noundef 16)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_mndp.ett, i32 noundef 2)
  %i.b = load i32, ptr @proto_mndp, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef @.str.34, ptr noundef @dissect_mndp_static, i32 noundef %i.b)
  store ptr %i.c, ptr @mndp_handle, align 8
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
define internal range(i32 4, 1) i32 @dissect_mndp_static(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @test_mndp(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @dissect_mndp(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mndp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mndp_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.35, i32 noundef 5678, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_mndp, align 4
  tail call void @heur_dissector_add(ptr noundef @.str.36, ptr noundef @dissect_mndp_heur, ptr noundef @.str.37, ptr noundef @.str.38, i32 noundef %i.b, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_mndp_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @test_mndp(ptr noundef %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @dissect_mndp(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @test_mndp(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 8
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 4, i32 noundef 0)
  %.not = icmp eq i16 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 6, i32 noundef 0)
  %.not20 = icmp eq i16 %i.d, 6
  br i1 %.not20, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 8)
  %i.f = icmp ult i32 %i.e, 6
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 14)
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 14)
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 4, 0) i32 @dissect_mndp(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.33)
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.d = load i32, ptr @proto_mndp, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_mndp, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 14 uses
  %i.h = load i32, ptr @hf_mndp_header_unknown, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_mndp_header_seqno, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = icmp ugt i32 %i.c, 4
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %dissect_tlv.exit
  %.020 = phi i32 [ 4, %.lr.ph ], [ %.057.i, %dissect_tlv.exit ] ; 27 uses
  %i.n = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.020) ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 14 uses
  %i.p = add i32 %.020, 2                         ; 2 uses
  %i.q = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.p) ; 2 uses
  %i.r = zext i16 %i.q to i32                     ; 17 uses
  %i.s = add nuw nsw i32 %i.r, 4                  ; 12 uses
  %i.t = load i32, ptr @ett_mndp_tlv_header, align 4 ; 12 uses
  switch i16 %i.n, label %switch.hole_check25 [
    i16 1, label %extval_to_str_idx.exit.thread.i
    i16 5, label %extval_to_str_idx.exit.thread6.i
    i16 7, label %extval_to_str_idx.exit.thread8.i
    i16 8, label %extval_to_str_idx.exit.thread10.i
    i16 10, label %extval_to_str_idx.exit.thread12.i
    i16 11, label %extval_to_str_idx.exit.thread14.i
    i16 12, label %extval_to_str_idx.exit.thread16.i
    i16 14, label %switch.hole_check
    i16 15, label %switch.lookup
    i16 16, label %match_strextval_idx.exit.thread.i.i
    i16 17, label %extval_to_str_idx.exit.i.a
  ]

extval_to_str_idx.exit.thread.i:                  ; preds = %bb.b
  %3 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.10) ; 2 uses
  %4 = load i32, ptr @hf_mndp_tlv_type, align 4
  %5 = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread6.i:                 ; preds = %bb.b
  %6 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.16) ; 2 uses
  %7 = load i32, ptr @hf_mndp_tlv_type, align 4
  %8 = tail call ptr @proto_tree_add_item(ptr noundef %6, i32 noundef %7, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread8.i:                 ; preds = %bb.b
  %9 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.14) ; 2 uses
  %10 = load i32, ptr @hf_mndp_tlv_type, align 4
  %11 = tail call ptr @proto_tree_add_item(ptr noundef %9, i32 noundef %10, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread10.i:                ; preds = %bb.b
  %12 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.20) ; 2 uses
  %13 = load i32, ptr @hf_mndp_tlv_type, align 4
  %14 = tail call ptr @proto_tree_add_item(ptr noundef %12, i32 noundef %13, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread12.i:                ; preds = %bb.b
  %15 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.18) ; 2 uses
  %16 = load i32, ptr @hf_mndp_tlv_type, align 4
  %17 = tail call ptr @proto_tree_add_item(ptr noundef %15, i32 noundef %16, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread14.i:                ; preds = %bb.b
  %18 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.12) ; 2 uses
  %19 = load i32, ptr @hf_mndp_tlv_type, align 4
  %20 = tail call ptr @proto_tree_add_item(ptr noundef %18, i32 noundef %19, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.thread16.i:                ; preds = %bb.b
  %21 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.22) ; 2 uses
  %22 = load i32, ptr @hf_mndp_tlv_type, align 4
  %23 = tail call ptr @proto_tree_add_item(ptr noundef %21, i32 noundef %22, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

switch.hole_check:                                ; preds = %bb.b
  %24 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.24) ; 2 uses
  %25 = load i32, ptr @hf_mndp_tlv_type, align 4
  %26 = tail call ptr @proto_tree_add_item(ptr noundef %24, i32 noundef %25, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

switch.lookup:                                    ; preds = %bb.b
  %27 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.26) ; 2 uses
  %28 = load i32, ptr @hf_mndp_tlv_type, align 4
  %29 = tail call ptr @proto_tree_add_item(ptr noundef %27, i32 noundef %28, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

match_strextval_idx.exit.thread.i.i:              ; preds = %bb.b
  %30 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.28) ; 2 uses
  %31 = load i32, ptr @hf_mndp_tlv_type, align 4
  %32 = tail call ptr @proto_tree_add_item(ptr noundef %30, i32 noundef %31, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

extval_to_str_idx.exit.i.a:                       ; preds = %bb.b
  %i.u = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef @.str.30) ; 2 uses
  %i.v = load i32, ptr @hf_mndp_tlv_type, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  br label %switch.lookup26

switch.hole_check25:                              ; preds = %bb.b
  %33 = load ptr, ptr %i.m, align 8
  %34 = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %33, ptr noundef @.str.42, i32 noundef range(i32 0, 65536) %i.o)
  %35 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef @.str.41, i32 noundef %i.o, i32 noundef %i.r, ptr noundef %34) ; 2 uses
  %36 = load i32, ptr @hf_mndp_tlv_type, align 4
  %37 = tail call ptr @proto_tree_add_item(ptr noundef %35, i32 noundef %36, ptr noundef %0, i32 noundef %.020, i32 noundef 2, i32 noundef 0)
  %38 = load ptr, ptr %i.m, align 8
  %39 = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %38, ptr noundef @.str.42, i32 noundef range(i32 0, 65536) %i.o)
  br label %switch.lookup26

switch.lookup26:                                  ; preds = %switch.hole_check25, %extval_to_str_idx.exit.i.a, %match_strextval_idx.exit.thread.i.i, %switch.lookup, %switch.hole_check, %extval_to_str_idx.exit.thread16.i, %extval_to_str_idx.exit.thread14.i, %extval_to_str_idx.exit.thread12.i, %extval_to_str_idx.exit.thread10.i, %extval_to_str_idx.exit.thread8.i, %extval_to_str_idx.exit.thread6.i, %extval_to_str_idx.exit.thread.i
  %40 = phi ptr [ %37, %switch.hole_check25 ], [ %32, %match_strextval_idx.exit.thread.i.i ], [ %14, %extval_to_str_idx.exit.thread10.i ], [ %5, %extval_to_str_idx.exit.thread.i ], [ %29, %switch.lookup ], [ %8, %extval_to_str_idx.exit.thread6.i ], [ %i.w, %extval_to_str_idx.exit.i.a ], [ %26, %switch.hole_check ], [ %23, %extval_to_str_idx.exit.thread16.i ], [ %20, %extval_to_str_idx.exit.thread14.i ], [ %17, %extval_to_str_idx.exit.thread12.i ], [ %11, %extval_to_str_idx.exit.thread8.i ]
  %41 = phi ptr [ %35, %switch.hole_check25 ], [ %30, %match_strextval_idx.exit.thread.i.i ], [ %12, %extval_to_str_idx.exit.thread10.i ], [ %3, %extval_to_str_idx.exit.thread.i ], [ %27, %switch.lookup ], [ %6, %extval_to_str_idx.exit.thread6.i ], [ %i.u, %extval_to_str_idx.exit.i.a ], [ %24, %switch.hole_check ], [ %21, %extval_to_str_idx.exit.thread16.i ], [ %18, %extval_to_str_idx.exit.thread14.i ], [ %15, %extval_to_str_idx.exit.thread12.i ], [ %9, %extval_to_str_idx.exit.thread8.i ] ; 4 uses
  %.not.i = phi i1 [ true, %switch.hole_check25 ], [ false, %match_strextval_idx.exit.thread.i.i ], [ false, %extval_to_str_idx.exit.thread10.i ], [ false, %extval_to_str_idx.exit.thread.i ], [ false, %switch.lookup ], [ false, %extval_to_str_idx.exit.thread6.i ], [ false, %extval_to_str_idx.exit.i.a ], [ false, %switch.hole_check ], [ false, %extval_to_str_idx.exit.thread16.i ], [ false, %extval_to_str_idx.exit.thread14.i ], [ false, %extval_to_str_idx.exit.thread12.i ], [ false, %extval_to_str_idx.exit.thread8.i ]
  %.04.i = phi i64 [ 4294967295, %switch.hole_check25 ], [ 9, %match_strextval_idx.exit.thread.i.i ], [ 3, %extval_to_str_idx.exit.thread10.i ], [ 0, %extval_to_str_idx.exit.thread.i ], [ 8, %switch.lookup ], [ 1, %extval_to_str_idx.exit.thread6.i ], [ 10, %extval_to_str_idx.exit.i.a ], [ 7, %switch.hole_check ], [ 6, %extval_to_str_idx.exit.thread16.i ], [ 5, %extval_to_str_idx.exit.thread14.i ], [ 4, %extval_to_str_idx.exit.thread12.i ], [ 2, %extval_to_str_idx.exit.thread8.i ]
  %.0.i74.i = phi ptr [ %39, %switch.hole_check25 ], [ @.str.28, %match_strextval_idx.exit.thread.i.i ], [ @.str.20, %extval_to_str_idx.exit.thread10.i ], [ @.str.10, %extval_to_str_idx.exit.thread.i ], [ @.str.26, %switch.lookup ], [ @.str.16, %extval_to_str_idx.exit.thread6.i ], [ @.str.30, %extval_to_str_idx.exit.i.a ], [ @.str.24, %switch.hole_check ], [ @.str.22, %extval_to_str_idx.exit.thread16.i ], [ @.str.12, %extval_to_str_idx.exit.thread14.i ], [ @.str.18, %extval_to_str_idx.exit.thread12.i ], [ @.str.14, %extval_to_str_idx.exit.thread8.i ]
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %40, ptr noundef @.str.43, ptr noundef %.0.i74.i)
  %42 = load i32, ptr @hf_mndp_tlv_length, align 4
  %43 = tail call ptr @proto_tree_add_item(ptr noundef %41, i32 noundef %42, ptr noundef %0, i32 noundef %i.p, i32 noundef 2, i32 noundef 0) ; 0 uses
  %44 = add i32 %.020, 4                          ; 5 uses
  %.not.i74.i = icmp eq i16 %i.q, 0
  br i1 %.not.i74.i, label %dissect_tlv.exit, label %45

45:                                               ; preds = %switch.lookup26
  %46 = add i32 %44, %i.r                         ; 4 uses
  br i1 %.not.i, label %match_strextval_idx.exit.thread.i76.i, label %extval_to_str_idx.exit86.i

match_strextval_idx.exit.thread.i76.i:            ; preds = %45
  %47 = load i32, ptr @hf_mndp_tlv_data, align 4
  %48 = tail call ptr @proto_tree_add_item(ptr noundef %41, i32 noundef %47, ptr noundef %0, i32 noundef %44, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  br label %dissect_tlv.exit

extval_to_str_idx.exit86.i:                       ; preds = %45
  %49 = getelementptr [40 x i8], ptr @mndp_body_tlv_vals, i64 %.04.i ; 4 uses
  %50 = getelementptr i8, ptr %49, i64 24
  %51 = load ptr, ptr %50, align 8                ; 2 uses
  %i.x = icmp eq ptr %51, null                    ; 2 uses
  br i1 %i.x, label %bb.c, label %.thread28.i

bb.c:                                             ; preds = %extval_to_str_idx.exit86.i
  %52 = getelementptr i8, ptr %49, i64 32
  %53 = load ptr, ptr %52, align 8
  %cond3.i = icmp eq ptr %53, null
  br i1 %cond3.i, label %.thread28.i, label %bb.d

.thread28.i:                                      ; preds = %bb.c, %extval_to_str_idx.exit86.i
  br label %bb.d

bb.d:                                             ; preds = %.thread28.i, %bb.c
  %.027.i = phi i32 [ 0, %.thread28.i ], [ 1, %bb.c ]
  %54 = getelementptr i8, ptr %49, i64 16
  %55 = load ptr, ptr %54, align 8                ; 2 uses
  %.not68.i = icmp eq ptr %55, null               ; 2 uses
  %hf_mndp_tlv_data..i = select i1 %.not68.i, ptr @hf_mndp_tlv_data, ptr %55
  %..027.i = select i1 %.not68.i, i32 0, i32 %.027.i
  %56 = load i32, ptr %hf_mndp_tlv_data..i, align 4
  %57 = tail call ptr @proto_tree_add_item(ptr noundef %41, i32 noundef %56, ptr noundef %0, i32 noundef %44, i32 noundef %i.r, i32 noundef %..027.i) ; 0 uses
  br i1 %i.x, label %dissect_tlv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %58 = getelementptr i8, ptr %49, i64 32
  br label %59

59:                                               ; preds = %.sink.split.i, %.preheader.i
  %.058.i = phi i32 [ %62, %.sink.split.i ], [ %44, %.preheader.i ] ; 3 uses
  %60 = icmp ult i32 %.058.i, %46
  br i1 %60, label %.sink.split.i, label %dissect_tlv.exit

.sink.split.i:                                    ; preds = %59
  %61 = load ptr, ptr %58, align 8
  %62 = tail call i32 %51(ptr noundef %0, ptr noundef %1, ptr noundef %41, i32 noundef %.058.i, i32 noundef %i.r, ptr noundef %61), !inline_history !6 ; 2 uses
  %63 = icmp ugt i32 %62, %.058.i
  br i1 %63, label %59, label %64, !llvm.loop !7

64:                                               ; preds = %.sink.split.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.44, ptr noundef @.str.45, i32 noundef 192, ptr noundef @.str.46) #3
  unreachable

dissect_tlv.exit:                                 ; preds = %59, %switch.lookup26, %match_strextval_idx.exit.thread.i76.i, %bb.d
  %.057.i = phi i32 [ %44, %switch.lookup26 ], [ %46, %match_strextval_idx.exit.thread.i76.i ], [ %46, %bb.d ], [ %46, %59 ] ; 3 uses
  %i.y = icmp ult i32 %.057.i, %i.c
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %dissect_tlv.exit, %bb.a
  %.0.lcssa = phi i32 [ 4, %bb.a ], [ %.057.i, %dissect_tlv.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{null}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
