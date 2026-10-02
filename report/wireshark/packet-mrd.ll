Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mrd?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._value_string = type { i32, ptr }
%struct.unit_name_string = type { ptr, ptr }
%struct.expert_field = type { i32, i32 }

@proto_register_mrd.hf = internal global [11 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_type, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 4, i32 2, ptr @mrd_types, i64 0, ptr @.str.2, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_checksum, %struct._header_field_info { ptr @.str.3, ptr @.str.4, i32 5, i32 2, ptr null, i64 0, ptr @.str.5, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_checksum_status, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 4, i32 0, ptr @proto_checksum_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_advint, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 4, i32 4097, ptr @units_seconds, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_numopts, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 5, i32 1, ptr null, i64 0, ptr @.str.12, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_options, %struct._header_field_info { ptr @.str.13, ptr @.str.14, i32 0, i32 0, ptr null, i64 0, ptr @.str.15, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_option, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 4, i32 1, ptr @mrd_options, i64 0, ptr @.str.18, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_option_len, %struct._header_field_info { ptr @.str.19, ptr @.str.20, i32 4, i32 1, ptr null, i64 0, ptr @.str.21, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_qi, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 5, i32 1, ptr null, i64 0, ptr @.str.24, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_rv, %struct._header_field_info { ptr @.str.25, ptr @.str.26, i32 5, i32 1, ptr null, i64 0, ptr @.str.27, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_option_bytes, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 30, i32 0, ptr null, i64 0, ptr @.str.30, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_type = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mrd.type\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MRDISC Packet Type\00", align 1
@hf_checksum = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Checksum\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mrd.checksum\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"MRDISC Checksum\00", align 1
@hf_checksum_status = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Checksum Status\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"mrd.checksum.status\00", align 1
@proto_checksum_vals = external constant [0 x %struct._value_string], align 8
@hf_advint = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Advertising Interval\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"mrd.adv_int\00", align 1
@units_seconds = external constant %struct.unit_name_string, align 8
@hf_numopts = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Number Of Options\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"mrd.num_opts\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"MRDISC Number Of Options\00", align 1
@hf_options = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"mrd.options\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"MRDISC Options\00", align 1
@hf_option = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"mrd.option\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"MRDISC Option Type\00", align 1
@hf_option_len = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mrd.opt_len\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"MRDISC Option Length\00", align 1
@hf_qi = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"Query Interval\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"mrd.query_int\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"MRDISC Query Interval\00", align 1
@hf_rv = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"Robustness Variable\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"mrd.rob_var\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"MRDISC Robustness Variable\00", align 1
@hf_option_bytes = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"mrd.option_data\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"MRDISC Unknown Option Data\00", align 1
@proto_register_mrd.ett = internal global [2 x ptr] [ptr @ett_mrd, ptr @ett_options], align 16
@ett_mrd = internal global i32 0, align 4
@ett_options = internal global i32 0, align 4
@proto_register_mrd.ei = internal global [3 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_checksum, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.31, i32 16777216, i32 8388608, ptr @.str.32, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_mrd_type_deprecated, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.33, i32 234881024, i32 4194304, ptr @.str.34, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_mrd_dest_not_local, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.35, i32 150994944, i32 6291456, ptr @.str.36, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_checksum = internal global %struct.expert_field zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [17 x i8] c"mrd.bad_checksum\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Bad checksum\00", align 1
@ei_mrd_type_deprecated = internal global %struct.expert_field zeroinitializer, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"mrd.type.deprecated\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"Draft 06 or earlier type (IANA unassigned)\00", align 1
@ei_mrd_dest_not_local = internal global %struct.expert_field zeroinitializer, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"mrd.dest.not_local\00", align 1
@.str.36 = private unnamed_addr constant [76 x i8] c"Destination address must be in the local network control block (224.0.0/24)\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Multicast Router Discovery\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"MRD\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"mrd\00", align 1
@proto_mrd = internal unnamed_addr global i32 0, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"mrdisc\00", align 1
@mrd_handle = internal unnamed_addr global ptr null, align 8
@.str.41 = private unnamed_addr constant [10 x i8] c"igmp.type\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Multicast Router Advertisement\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Multicast Router Solicitation\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Multicast Router Termination\00", align 1
@mrd_types = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@mrd_options = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.25 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.47 = private unnamed_addr constant [20 x i8] c"Unknown Type:0x%02x\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Option: %s == %d\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"unknown %x\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Option: unknown\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mrd() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) ; 2 uses
  store i32 %i.a, ptr @proto_mrd, align 4
  tail call void @proto_register_alias(i32 noundef %i.a, ptr noundef nonnull @.str.40)
  %i.b = load i32, ptr @proto_mrd, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef nonnull @proto_register_mrd.hf, i32 noundef 11)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_mrd.ett, i32 noundef 2)
  %i.c = load i32, ptr @proto_mrd, align 4
  %i.d = tail call ptr @expert_register_protocol(i32 noundef %i.c)
  tail call void @expert_register_field_array(ptr noundef %i.d, ptr noundef nonnull @proto_register_mrd.ei, i32 noundef 3)
  %i.e = load i32, ptr @proto_mrd, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef nonnull @.str.39, ptr noundef nonnull @dissect_mrd, i32 noundef %i.e)
  store ptr %i.f, ptr @mrd_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_alias(i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal noundef i32 @dissect_mrd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.38)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_mrd, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.f = load i32, ptr @ett_mrd, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 12 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext i8 %i.h to i32                      ; 2 uses
  %i.m = tail call ptr @val_to_str(ptr noundef %i.k, i32 noundef %i.l, ptr noundef nonnull @mrd_types, ptr noundef nonnull @.str.47)
  tail call void @col_add_str(ptr noundef %i.i, i32 noundef 25, ptr noundef %i.m)
  %i.n = load i32, ptr @hf_type, align 4
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.l) ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 232
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %1, i64 240
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %4 = load i8, ptr %i.t, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %i.t, i64 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %i.t, i64 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %i.u = icmp eq i32 %16, -536870912
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = tail call ptr @proto_tree_add_expert(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_mrd_dest_not_local, ptr noundef %0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  switch i8 %i.h, label %dissect_mrd_mra_old.exit [
    i8 36, label %bb.e
    i8 48, label %bb.j
    i8 37, label %bb.k
    i8 38, label %bb.k
    i8 49, label %bb.l
    i8 50, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_mrd_type_deprecated) ; 0 uses
  %i.x = load i32, ptr @hf_advint, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.x, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_checksum, align 4
  %i.aa = load i32, ptr @hf_checksum_status, align 4
  tail call void @igmp_checksum(ptr noundef %i.g, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @ei_checksum, ptr noundef %1, i32 noundef 0)
  %i.ab = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6) ; 3 uses
  %i.ac = load i32, ptr @hf_numopts, align 4
  %i.ad = zext i16 %i.ab to i32
  %i.ae = tail call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ac, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef %i.ad) ; 0 uses
  %.not72.i = icmp eq i16 %i.ab, 0
  br i1 %.not72.i, label %dissect_mrd_mra_old.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.in.i = phi i16 [ %i.af, %bb.i ], [ %i.ab, %bb.e ]
  %.06973.i = phi i32 [ %.1.i, %bb.i ], [ 8, %bb.e ] ; 6 uses
  %i.af = add i16 %.in.i, -1                      ; 2 uses
  %i.ag = load i32, ptr @hf_options, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.06973.i, i32 noundef -1, i32 noundef 0) ; 5 uses
  %i.ai = load i32, ptr @ett_options, align 4
  %i.aj = tail call ptr @proto_item_add_subtree(ptr noundef %i.ah, i32 noundef %i.ai) ; 3 uses
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06973.i) ; 2 uses
  %i.al = load i32, ptr @hf_option, align 4
  %i.am = zext i8 %i.ak to i32
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %i.aj, i32 noundef %i.al, ptr noundef %0, i32 noundef %.06973.i, i32 noundef 1, i32 noundef %i.am) ; 0 uses
  %i.ao = add i32 %.06973.i, 1                    ; 2 uses
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ao)
  %i.aq = load i32, ptr @hf_option_len, align 4
  %i.ar = zext i8 %i.ap to i32                    ; 3 uses
  %i.as = tail call ptr @proto_tree_add_uint(ptr noundef %i.aj, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef %i.ar) ; 0 uses
  %i.at = add i32 %.06973.i, 2                    ; 4 uses
  switch i8 %i.ak, label %bb.h [
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = tail call ptr @val_to_str(ptr noundef %i.au, i32 noundef 1, ptr noundef nonnull @mrd_options, ptr noundef nonnull @.str.49)
  %i.aw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.at)
  %i.ax = zext i16 %i.aw to i32
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ah, ptr noundef nonnull @.str.48, ptr noundef %i.av, i32 noundef %i.ax)
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ay = load ptr, ptr %i.j, align 8
  %i.az = tail call ptr @val_to_str(ptr noundef %i.ay, i32 noundef 2, ptr noundef nonnull @mrd_options, ptr noundef nonnull @.str.49)
  %i.ba = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.at)
  %i.bb = zext i16 %i.ba to i32
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ah, ptr noundef nonnull @.str.48, ptr noundef %i.az, i32 noundef %i.bb)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ah, ptr noundef nonnull @.str.50)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %hf_option_bytes.sink.i = phi ptr [ @hf_option_bytes, %bb.h ], [ @hf_rv, %bb.g ], [ @hf_qi, %bb.f ]
  %i.bc = load i32, ptr %hf_option_bytes.sink.i, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i32 noundef 0) ; 0 uses
  %.1.i = add i32 %i.at, %i.ar                    ; 3 uses
  %i.be = sub i32 %.1.i, %.06973.i
  tail call void @proto_item_set_len(ptr noundef %i.ah, i32 noundef %i.be)
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %dissect_mrd_mra_old.exit, label %.lr.ph.i, !llvm.loop !6

bb.j:                                             ; preds = %bb.d
  %i.bf = load i32, ptr @hf_advint, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bf, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_checksum, align 4
  %i.bi = load i32, ptr @hf_checksum_status, align 4
  tail call void @igmp_checksum(ptr noundef %i.g, ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull @ei_checksum, ptr noundef %1, i32 noundef 0)
  %i.bj = load i32, ptr @hf_qi, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bj, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bl = load i32, ptr @hf_rv, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bl, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_mrd_mra_old.exit

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.bn = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_mrd_type_deprecated) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.d
  %i.bo = load i32, ptr @hf_checksum, align 4
  %i.bp = load i32, ptr @hf_checksum_status, align 4
  tail call void @igmp_checksum(ptr noundef %i.g, ptr noundef %0, i32 noundef %i.bo, i32 noundef %i.bp, ptr noundef nonnull @ei_checksum, ptr noundef %1, i32 noundef 0)
  br label %dissect_mrd_mra_old.exit

dissect_mrd_mra_old.exit:                         ; preds = %bb.i, %bb.e, %bb.l, %bb.j, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 4, %bb.l ], [ 8, %bb.j ], [ 8, %bb.e ], [ %.1.i, %bb.i ] ; 2 uses
  tail call void @proto_item_set_end(ptr noundef %i.g, ptr noundef %0, i32 noundef %.0)
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mrd() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 36, ptr noundef %i.a)
  %i.b = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 37, ptr noundef %i.b)
  %i.c = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 38, ptr noundef %i.c)
  %i.d = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 48, ptr noundef %i.d)
  %i.e = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 49, ptr noundef %i.e)
  %i.f = load ptr, ptr @mrd_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.41, i32 noundef 50, ptr noundef %i.f)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @igmp_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

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
