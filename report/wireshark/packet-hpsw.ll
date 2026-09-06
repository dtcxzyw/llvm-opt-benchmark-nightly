Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-hpsw?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.expert_field = type { i32, i32 }

@proto_register_hpsw.hf = internal global [20 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_hpsw_version, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 4, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_type, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 4, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_tlvtype, %struct._header_field_info { ptr @.str.2, ptr @.str.4, i32 4, i32 2, ptr @hpsw_tlv_type_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_tlvlength, %struct._header_field_info { ptr @.str.5, ptr @.str.6, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_device_name, %struct._header_field_info { ptr @.str.7, ptr @.str.8, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_device_version, %struct._header_field_info { ptr @.str, ptr @.str.9, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_config_name, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_root_mac_addr, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 29, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_ip_addr, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 32, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_field_6, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 5, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_domain, %struct._header_field_info { ptr @.str.18, ptr @.str.19, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_field_8, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 5, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_field_9, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 5, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_field_10, %struct._header_field_info { ptr @.str.24, ptr @.str.25, i32 7, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_neighbor_mac_addr, %struct._header_field_info { ptr @.str.26, ptr @.str.27, i32 29, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_field_12, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 4, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_own_mac_addr, %struct._header_field_info { ptr @.str.30, ptr @.str.31, i32 29, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_device_id, %struct._header_field_info { ptr @.str.32, ptr @.str.33, i32 29, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_device_id_data, %struct._header_field_info { ptr @.str.34, ptr @.str.35, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hpsw_data, %struct._header_field_info { ptr @.str.34, ptr @.str.36, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_hpsw_version = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hpsw.version\00", align 1
@hf_hpsw_type = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hpsw.type\00", align 1
@hf_hpsw_tlvtype = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"hpsw.tlv_type\00", align 1
@hf_hpsw_tlvlength = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"hpsw.tlv_len\00", align 1
@hf_hpsw_device_name = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Device Name\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"hpsw.device_name\00", align 1
@hf_hpsw_device_version = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"hpsw.device_version\00", align 1
@hf_hpsw_config_name = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"Config Name\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"hpsw.config_name\00", align 1
@hf_hpsw_root_mac_addr = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Root MAC Addr\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"hpsw.root_mac_addr\00", align 1
@hf_hpsw_ip_addr = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"IP Addr\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"hpsw.ip_addr\00", align 1
@hf_hpsw_field_6 = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"Field 6\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"hpsw.field_6\00", align 1
@hf_hpsw_domain = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"hpsw.domain\00", align 1
@hf_hpsw_field_8 = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"Field 8\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"hpsw.field_8\00", align 1
@hf_hpsw_field_9 = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"Field 9\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"hpsw.field_9\00", align 1
@hf_hpsw_field_10 = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"Field 10\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"hpsw.field_10\00", align 1
@hf_hpsw_neighbor_mac_addr = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"MAC Addr\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"hpsw.neighbor_mac_addr\00", align 1
@hf_hpsw_field_12 = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"Field 12\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"hpsw.field_12\00", align 1
@hf_hpsw_own_mac_addr = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"Own MAC Addr\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"hpsw.own_mac_addr\00", align 1
@hf_hpsw_device_id = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"Device ID\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"hpsw.device_id\00", align 1
@hf_hpsw_device_id_data = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"hpsw.device_id_data\00", align 1
@hf_hpsw_data = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"hpsw.data\00", align 1
@proto_register_hpsw.ett = internal global [2 x ptr] [ptr @ett_hpsw, ptr @ett_hpsw_tlv], align 16
@ett_hpsw = internal global i32 0, align 4
@ett_hpsw_tlv = internal global i32 0, align 4
@proto_register_hpsw.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_hpsw_tlvlength_bad, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.37, i32 150994944, i32 6291456, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_hpsw_tlvlength_bad = internal global %struct.expert_field zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"hpsw.tlv_len.bad\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Bad length\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"HP Switch Protocol\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"HPSW\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"hpsw\00", align 1
@proto_hpsw = internal unnamed_addr global i32 0, align 4
@hpsw_handle = internal unnamed_addr global ptr null, align 8
@.str.42 = private unnamed_addr constant [12 x i8] c"hpext.dxsap\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"Neighbors\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"2nd MAC Addr\00", align 1
@hpsw_tlv_type_vals = internal constant [15 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.10 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.12 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.14 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.24 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.28 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.46 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Unknown TLV type: 0x%02x\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Root MAC Addr: Bad length %u\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"IP Addr: Bad length %u\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Field 6: Bad length %u\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Field 8: Bad length %u\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Field 9: Bad length %u\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Field 10: Bad length %u\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Number of neighbor MAC Addresses: %u\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Neighbors: Bad length %u\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Field 12: Bad length %u\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Device ID: Bad length %u\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Own MAC Addr: Bad length %u\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_hpsw() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) ; 2 uses
  store i32 %i.a, ptr @proto_hpsw, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_hpsw.hf, i32 noundef 20)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_hpsw.ett, i32 noundef 2)
  %i.b = load i32, ptr @proto_hpsw, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_hpsw.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_hpsw, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.41, ptr noundef nonnull @dissect_hpsw, i32 noundef %i.d)
  store ptr %i.e, ptr @hpsw_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_hpsw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.46)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.39)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.e = load i32, ptr @proto_hpsw, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.g = load i32, ptr @ett_hpsw, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 3 uses
  %i.i = load i32, ptr @hf_hpsw_version, align 4
  %i.j = zext i8 %i.d to i32
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.j) ; 0 uses
  %i.l = load i32, ptr @hf_hpsw_type, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %.not53 = icmp eq i32 %i.n, 0
  br i1 %.not53, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.04954 = phi i32 [ 2, %.lr.ph ], [ %i.cn, %.loopexit ] ; 6 uses
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.04954) ; 2 uses
  %i.q = add i32 %.04954, 1                       ; 2 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.q) ; 14 uses
  %i.s = zext i8 %i.r to i32                      ; 20 uses
  %i.t = icmp eq i8 %i.r, 0
  br i1 %i.t, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %.04954, 2                       ; 17 uses
  %i.v = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %i.w = icmp ult i32 %i.v, %i.s
  br i1 %i.w, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.s, 2
  %i.y = load i32, ptr @ett_hpsw_tlv, align 4
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = zext i8 %i.p to i32                     ; 2 uses
  %i.ab = tail call ptr @val_to_str(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @hpsw_tlv_type_vals, ptr noundef nonnull @.str.47)
  %i.ac = tail call ptr @proto_tree_add_subtree(ptr noundef %i.h, ptr noundef %0, i32 noundef %.04954, i32 noundef %i.x, i32 noundef %i.y, ptr noundef null, ptr noundef %i.ab) ; 19 uses
  %i.ad = load i32, ptr @hf_hpsw_tlvtype, align 4
  %i.ae = tail call ptr @proto_tree_add_uint(ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef %0, i32 noundef %.04954, i32 noundef 1, i32 noundef %i.aa) ; 0 uses
  %i.af = load i32, ptr @hf_hpsw_tlvlength, align 4
  %i.ag = tail call ptr @proto_tree_add_uint(ptr noundef %i.ac, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef %i.s) ; 10 uses
  switch i8 %i.p, label %bb.am [
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.k
    i8 6, label %bb.n
    i8 7, label %bb.q
    i8 8, label %bb.r
    i8 9, label %bb.u
    i8 10, label %bb.x
    i8 11, label %bb.aa
    i8 12, label %bb.ad
    i8 13, label %bb.ag
    i8 14, label %bb.aj
  ]

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr @hf_hpsw_device_name, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.u, i32 noundef range(i32 1, 256) %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aj = load i32, ptr @hf_hpsw_device_version, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.u, i32 noundef range(i32 1, 256) %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.al = load i32, ptr @hf_hpsw_config_name, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.u, i32 noundef range(i32 1, 256) %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.an = icmp eq i8 %i.r, 6
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr @hf_hpsw_root_mac_addr, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.u, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.51, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.d
  %i.ar = icmp eq i8 %i.r, 4
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr @hf_hpsw_ip_addr, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.au = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.52, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.d
  %i.av = icmp eq i8 %i.r, 2
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr @hf_hpsw_field_6, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ay = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.53, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.d
  %i.az = load i32, ptr @hf_hpsw_domain, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.u, i32 noundef range(i32 1, 256) %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %bb.d
  %i.bb = icmp eq i8 %i.r, 2
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = load i32, ptr @hf_hpsw_field_8, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.be = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.55, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.d
  %i.bf = icmp eq i8 %i.r, 2
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bg = load i32, ptr @hf_hpsw_field_9, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bi = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.56, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.d
  %i.bj = icmp eq i8 %i.r, 4
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bk = load i32, ptr @hf_hpsw_field_10, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.bm = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.57, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.d
  %i.bn = urem i8 %i.r, 6
  %i.bo = udiv i8 %i.r, 6
  %.not.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.zext128.i = zext nneg i8 %i.bo to i32         ; 2 uses
  %i.bp = tail call ptr @proto_tree_get_parent(ptr noundef %i.ac)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bp, ptr noundef nonnull @.str.58, i32 noundef %.zext128.i)
  %.not126129.i = icmp ult i8 %i.r, 6
  br i1 %.not126129.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.0131.i = phi i32 [ %i.bt, %.lr.ph.i ], [ %.zext128.i, %bb.ab ]
  %.0124130.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %i.u, %bb.ab ] ; 2 uses
  %i.bq = load i32, ptr @hf_hpsw_neighbor_mac_addr, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bq, ptr noundef %0, i32 noundef %.0124130.i, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bs = add i32 %.0124130.i, 6
  %i.bt = add nsw i32 %.0131.i, -1                ; 2 uses
  %.not126.i = icmp eq i32 %i.bt, 0
  br i1 %.not126.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !6

bb.ac:                                            ; preds = %bb.aa
  %i.bu = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.59, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.ad:                                            ; preds = %bb.d
  %i.bv = icmp eq i8 %i.r, 1
  br i1 %i.bv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i32, ptr @hf_hpsw_field_12, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.by = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.60, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.ag:                                            ; preds = %bb.d
  %i.bz = icmp ugt i8 %i.r, 6
  br i1 %i.bz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load i32, ptr @hf_hpsw_device_id, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.u, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_hpsw_device_id_data, align 4
  %i.cd = add i32 %.04954, 8
  %i.ce = add nsw i32 %i.s, -6
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.cg = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.61, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.aj:                                            ; preds = %bb.d
  %i.ch = icmp eq i8 %i.r, 6
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ci = load i32, ptr @hf_hpsw_own_mac_addr, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.u, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_hpsw_tlvlength_bad, ptr noundef nonnull @.str.62, i32 noundef range(i32 1, 256) %i.s) ; 0 uses
  br label %.loopexit

bb.am:                                            ; preds = %bb.d
  %i.cl = load i32, ptr @hf_hpsw_data, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %i.ac, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.u, i32 noundef range(i32 1, 256) %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.cn = add i32 %i.u, %i.s                      ; 2 uses
  %i.co = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.cn)
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %.loopexit, %bb.c, %bb.b, %bb.a
  %i.cp = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.cp
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_hpsw() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hpsw_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.42, i32 noundef 1571, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
end_hunk_0
