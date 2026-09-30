Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-chdlc?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
@.str.42 = private unnamed_addr constant [12 x i8] c"Reliability\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"slarp.reliability\00", align 1
@proto_register_slarp.ett = internal global [1 x ptr] [ptr @ett_slarp], align 8
@ett_slarp = internal global i32 0, align 4
@proto_register_slarp.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_slarp_reliability, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.44, i32 117440512, i32 8388608, ptr @.str.45, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_slarp_reliability = internal global %struct.expert_field zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [26 x i8] c"slarp.reliability.invalid\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Reliability must be 0xFFFF\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Cisco SLARP\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"slarp\00", align 1
@proto_slarp = internal unnamed_addr global i32 0, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"Unicast\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Multicast\00", align 1
@chdlc_address_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 143, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [4 x i8] c"DTE\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"DCE\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Reply\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Line keepalive\00", align 1
@slarp_ptype_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [21 x i8] c"%s, from %s, mask %s\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"Unknown (%d)\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"%s, outgoing sequence %u, returned sequence %u\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"Unknown packet type 0x%08X\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @chdlctype(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -2
  %i.b = zext i16 %1 to i32                       ; 2 uses
  %i.c = tail call ptr @proto_tree_add_uint(ptr noundef %6, i32 noundef %7, ptr noundef %2, i32 noundef %i.a, i32 noundef 2, i32 noundef %i.b) ; 0 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3)
  %i.e = icmp ne i16 %1, -258
  %i.f = add i8 %i.d, 127
  %i.g = icmp ult i8 %i.f, 3
  %or.cond5 = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_chdlc_clns_padding, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %6, i32 noundef %i.h, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add i32 %3, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.j, %bb.b ], [ %3, %bb.a ]
  %i.k = tail call ptr @tvb_new_subset_remaining(ptr noundef %2, i32 noundef %.sink) ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @call_dissector(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %4, ptr noundef %5) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.n, i32 noundef 35, ptr noundef nonnull @.str.13, i32 noundef %i.b)
  %i.o = tail call i32 @call_data_dissector(ptr noundef %i.k, ptr noundef %4, ptr noundef %5) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_chdlc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) ; 2 uses
  store i32 %i.a, ptr @proto_chdlc, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_chdlc.hf, i32 noundef 4)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_chdlc.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_chdlc, align 4
  %i.c = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.25, i32 noundef %i.b, i32 noundef 5, i32 noundef 2)
  store ptr %i.c, ptr @subdissector_table, align 8
  %i.d = load i32, ptr @proto_chdlc, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.24, ptr noundef nonnull @dissect_chdlc, i32 noundef %i.d)
  store ptr %i.e, ptr @chdlc_handle, align 8
  %i.f = load i32, ptr @proto_chdlc, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef null)
  tail call void @prefs_register_enum_preference(ptr noundef %i.g, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @chdlc_fcs_decode, ptr noundef nonnull @fcs_options, i1 noundef zeroext false)
  %i.h = load i32, ptr @proto_chdlc, align 4
  %i.i = tail call ptr @register_capture_dissector(ptr noundef nonnull @.str.24, ptr noundef nonnull @capture_chdlc, i32 noundef %i.h) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_chdlc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.23)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = getelementptr i8, ptr %1, i64 356
  %i.e = load i32, ptr %i.d, align 4
  %i.f = load ptr, ptr %i.a, align 8
  switch i32 %i.e, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.str.53.sink30 = phi ptr [ @.str.53, %bb.c ], [ @.str.52, %bb.b ], [ @.str.51, %bb.a ]
  %.str.53.sink = phi ptr [ @.str.53, %bb.c ], [ @.str.51, %bb.b ], [ @.str.52, %bb.a ]
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 20, ptr noundef nonnull %.str.53.sink30)
  %i.g = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 18, ptr noundef nonnull %.str.53.sink)
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr @proto_chdlc, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.k = load i32, ptr @ett_chdlc, align 4
  %i.l = tail call ptr @proto_item_add_subtree(ptr noundef %i.j, i32 noundef %i.k) ; 3 uses
  %i.m = load i32, ptr @hf_chdlc_addr, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_chdlc_control, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]  ; 2 uses
  %i.q = load i32, ptr @chdlc_fcs_decode, align 4
  %i.r = tail call ptr @decode_fcs(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i32 noundef %i.q, i32 noundef 2) ; 0 uses
  %i.s = load ptr, ptr @subdissector_table, align 8
  %i.t = zext i16 %i.h to i32
  %i.u = tail call ptr @dissector_get_uint_handle(ptr noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr @hf_chdlc_proto, align 4
  tail call void @chdlctype(ptr noundef %i.u, i16 noundef zeroext %i.h, ptr noundef %0, i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef %.0, i32 noundef %i.v)
  %i.w = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.w
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_capture_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @capture_chdlc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = add i32 %1, 4                            ; 2 uses
  %i.b = icmp ugt i32 %1, -5
  %.not = icmp ugt i32 %i.a, %2
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %1, 2
  %i.d = sext i32 %i.c to i64
  %5 = getelementptr i8, ptr %0, i64 %i.d         ; 2 uses
  %.val = load i8, ptr %5, align 1
  %i.e = getelementptr i8, ptr %5, i64 1
  %.val14 = load i8, ptr %i.e, align 1
  %6 = zext i8 %.val to i16
  %7 = shl nuw i16 %6, 8
  %8 = zext i8 %.val14 to i16
  %9 = or disjoint i16 %7, %8
  %cond = icmp eq i16 %9, 2048
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @ip_cap_handle, align 8
  %i.g = tail call zeroext i1 @call_capture_dissector(ptr noundef %i.f, ptr noundef %0, i32 noundef %i.a, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.g, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_chdlc() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @chdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.29, i32 noundef 28, ptr noundef %i.a)
  %i.b = load ptr, ptr @chdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.29, i32 noundef 40, ptr noundef %i.b)
  %i.c = load ptr, ptr @chdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.30, i32 noundef 208, ptr noundef %i.c)
  %i.d = load ptr, ptr @chdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.31, i32 noundef 6, ptr noundef %i.d)
  %i.e = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.24)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.29, i32 noundef 28, ptr noundef %i.e)
  %i.f = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.32)
  store ptr %i.f, ptr @ip_cap_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_capture_dissector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_slarp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) ; 2 uses
  store i32 %i.a, ptr @proto_slarp, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.47, ptr noundef nonnull @dissect_slarp, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @proto_slarp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_slarp.hf, i32 noundef 6)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_slarp.ett, i32 noundef 1)
  %i.d = load i32, ptr @proto_slarp, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_slarp.ei, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_slarp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.3)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0) ; 5 uses
  %i.e = load i32, ptr @proto_slarp, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 14, i32 noundef 0)
  %i.g = load i32, ptr @ett_slarp, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 9 uses
  switch i32 %i.d, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = tail call i32 @tvb_get_ipv4(ptr noundef %0, i32 noundef 4)
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @val_to_str(ptr noundef %i.l, i32 noundef %i.d, ptr noundef nonnull @slarp_ptype_vals, ptr noundef nonnull @.str.59)
  %i.n = tail call ptr @get_hostname(i32 noundef %i.i)
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = tail call ptr @tvb_address_to_str(ptr noundef %i.o, ptr noundef %0, i32 noundef 2, i32 noundef 8)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.j, i32 noundef 25, ptr noundef nonnull @.str.58, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.p)
  %.not51 = icmp eq ptr %2, null
  br i1 %.not51, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @hf_slarp_ptype, align 4
  %i.r = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.d) ; 0 uses
  %i.s = load i32, ptr @hf_slarp_address, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_slarp_netmask, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.u, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.w = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.x = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8) ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %1, i64 416
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @val_to_str(ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull @slarp_ptype_vals, ptr noundef nonnull @.str.59)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.y, i32 noundef 25, ptr noundef nonnull @.str.60, ptr noundef %i.ab, i32 noundef %i.w, i32 noundef %i.x)
  %i.ac = load i32, ptr @hf_slarp_ptype, align 4
  %i.ad = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 2) ; 0 uses
  %i.ae = load i32, ptr @hf_slarp_mysequence, align 4
  %i.af = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.ae, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.w) ; 0 uses
  %i.ag = load i32, ptr @hf_slarp_yoursequence, align 4
  %i.ah = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.ag, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef %i.x) ; 0 uses
  %i.ai = load i32, ptr @hf_slarp_reliability, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ai, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0)
  %i.ak = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 12)
  %.not = icmp eq i16 %i.ak, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aj, ptr noundef nonnull @ei_slarp_reliability) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.am, i32 noundef 25, ptr noundef nonnull @.str.61, i32 noundef %i.d)
  %i.an = load i32, ptr @hf_slarp_ptype, align 4
  %i.ao = tail call ptr @proto_tree_add_uint(ptr noundef %i.h, i32 noundef %i.an, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.d) ; 0 uses
  %i.ap = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 4)
  %i.aq = tail call i32 @call_data_dissector(ptr noundef %i.ap, ptr noundef %1, ptr noundef %i.h) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.f
  %i.ar = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ar
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_slarp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_dissector(ptr noundef nonnull @.str.47)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.19, i32 noundef 32821, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @decode_fcs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_uint_handle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @call_capture_dissector(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @get_hostname(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
end_hunk_0
