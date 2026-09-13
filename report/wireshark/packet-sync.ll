Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sync?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.unit_name_string = type { ptr, ptr }
%struct.expert_field = type { i32, i32 }

@proto_register_sync.hf_sync = internal global [10 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_sync_type, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 4, i32 1, ptr @sync_type_vals, i64 240, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_spare4, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 4, i32 1, ptr null, i64 15, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_timestamp, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 5, i32 4097, ptr @units_milliseconds, i64 0, ptr @.str.6, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_packet_nr, %struct._header_field_info { ptr @.str.7, ptr @.str.8, i32 5, i32 1, ptr null, i64 0, ptr @.str.9, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_elapsed_octet_ctr, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 7, i32 1, ptr null, i64 0, ptr @.str.12, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_total_nr_of_packet, %struct._header_field_info { ptr @.str.13, ptr @.str.14, i32 6, i32 1, ptr null, i64 0, ptr @.str.15, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_total_nr_of_octet, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 11, i32 1, ptr null, i64 0, ptr @.str.18, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_header_crc, %struct._header_field_info { ptr @.str.19, ptr @.str.20, i32 4, i32 2, ptr null, i64 252, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_payload_crc, %struct._header_field_info { ptr @.str.21, ptr @.str.22, i32 5, i32 2, ptr null, i64 1023, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sync_length_of_packet, %struct._header_field_info { ptr @.str.23, ptr @.str.24, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_sync_type = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PDU Type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sync.type\00", align 1
@hf_sync_spare4 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Spare\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sync.spare\00", align 1
@hf_sync_timestamp = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Timestamp\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sync.timestamp\00", align 1
@units_milliseconds = external constant %struct.unit_name_string, align 8
@.str.6 = private unnamed_addr constant [107 x i8] c"Relative time value for the starting time of a synchronisation sequence within the synchronisation period.\00", align 1
@hf_sync_packet_nr = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Packet Number\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sync.packet_nr\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"Number of elapsed SYNC PDUs cumulatively within the synchronisation sequence.\00", align 1
@hf_sync_elapsed_octet_ctr = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Elapsed Octet Counter\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"sync.elapsed_octet_ctr\00", align 1
@.str.12 = private unnamed_addr constant [86 x i8] c"Number of elapsed cumulative octets cumulatively within one synchronisation sequence.\00", align 1
@hf_sync_total_nr_of_packet = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Total Number of Packet\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"sync.total_nr_of_packet\00", align 1
@.str.15 = private unnamed_addr constant [95 x i8] c"Cumulatively the number of the packets for the MBMS service within one synchronisation period.\00", align 1
@hf_sync_total_nr_of_octet = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"Total Number of Octet\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"sync.total_nr_of_octet\00", align 1
@.str.18 = private unnamed_addr constant [94 x i8] c"Cumulatively the number of the octets for the MBMS service within one synchronisation period.\00", align 1
@hf_sync_header_crc = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"Header CRC\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"sync.header_crc\00", align 1
@hf_sync_payload_crc = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Payload CRC\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"sync.payload_crc\00", align 1
@hf_sync_length_of_packet = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"Length of Packet\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"sync.length_of_packet\00", align 1
@proto_register_sync.ett_sync_array = internal global [1 x ptr] [ptr @ett_sync], align 8
@ett_sync = internal global i32 0, align 4
@proto_register_sync.ei = internal global [2 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_sync_pdu_type2, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.25, i32 83886080, i32 6291456, ptr @.str.26, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_sync_type, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.27, i32 150994944, i32 6291456, ptr @.str.28, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_sync_pdu_type2 = internal global %struct.expert_field zeroinitializer, align 4
@.str.25 = private unnamed_addr constant [15 x i8] c"sync.pdu_type2\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"SYNC PDU type 2 unsupported\00", align 1
@ei_sync_type = internal global %struct.expert_field zeroinitializer, align 4
@.str.27 = private unnamed_addr constant [18 x i8] c"sync.type.unknown\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Unknown SYNC PDU type\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"MBMS synchronisation protocol\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"SYNC\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@proto_sync = internal unnamed_addr global i32 0, align 4
@sync_handle = internal unnamed_addr global ptr null, align 8
@.str.32 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@ip_handle = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Synchronisation frame without payload\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"User data with synchronisation frame for uncompressed headers\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"User data with synchronisation frame for compressed headers\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Synchronisation frame with Length of Packets\00", align 1
@sync_type_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.36 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.37 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [23 x i8] c" [Calculated CRC 0x%x]\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Length of Packet %u : %hu\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_sync() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) ; 2 uses
  store i32 %i.a, ptr @proto_sync, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_sync.hf_sync, i32 noundef 10)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_sync.ett_sync_array, i32 noundef 1)
  %i.b = load i32, ptr @proto_sync, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_sync.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_sync, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.31, ptr noundef nonnull @dissect_sync, i32 noundef %i.d)
  store ptr %i.e, ptr @sync_handle, align 8
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
define internal i32 @dissect_sync(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = lshr i8 %i.a, 4                          ; 2 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef nonnull @.str.30)
  %i.f = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 25, ptr noundef nonnull @.str.29)
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 3)
  %i.h = add i16 %i.g, 1                          ; 4 uses
  %i.i = load i32, ptr @proto_sync, align 4
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i8 %i.c, 1
  %.not = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not, i32 32, i32 52
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.l = zext i16 %i.h to i32                     ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = uitofp i16 %i.h to double
  %i.p = fmul nnan double %i.o, 1.500000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.l, -1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double 1.500000e+00, double 2.000000e+00)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi double [ %i.p, %bb.e ], [ %i.s, %bb.f ]
  %i.u = fptosi double %i.t to i16
  %4 = sext i16 %i.u to i32
  %5 = add nsw i32 %4, 19
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.h ], [ %5, %bb.g ], [ %i.k, %bb.c ], [ 11, %bb.b ], [ 17, %bb.a ]
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef %.sink, i32 noundef 0) ; 2 uses
  %i.w = load i32, ptr @ett_sync, align 4
  %i.x = tail call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.w) ; 20 uses
  %i.y = load i32, ptr @hf_sync_type, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.aa = load i32, ptr @hf_sync_spare4, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aa, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 10
  %i.af = load i32, ptr @hf_sync_timestamp, align 4
  %i.ag = tail call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.af, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef %i.ae) ; 0 uses
  %i.ah = load i32, ptr @hf_sync_packet_nr, align 4
  %i.ai = zext i16 %i.h to i32                    ; 5 uses
  %i.aj = tail call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.ah, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr @hf_sync_elapsed_octet_ctr, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ak, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef 0) ; 0 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr @hf_sync_total_nr_of_packet, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.am, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_sync_total_nr_of_octet, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ao, ptr noundef %0, i32 noundef 12, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_sync_header_crc, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aq, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.as = load i32, ptr @hf_sync_header_crc, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.as, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0)
  %i.au = load i32, ptr @hf_sync_payload_crc, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.au, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aw = tail call zeroext i16 @crc6_compute_tvb(ptr noundef %0, i32 noundef 9)
  %i.ax = zext i16 %i.aw to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.at, ptr noundef nonnull @.str.39, i32 noundef %i.ax)
  %i.ay = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 11)
  %i.az = load ptr, ptr @ip_handle, align 8
  %i.ba = tail call i32 @call_dissector(ptr noundef %i.az, ptr noundef %i.ay, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.bb = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.v, ptr noundef nonnull @ei_sync_pdu_type2) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.i
  %i.bc = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 9)
  %i.bd = load i32, ptr @hf_sync_total_nr_of_packet, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.bd, ptr noundef %0, i32 noundef 9, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_sync_total_nr_of_octet, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.bf, ptr noundef %0, i32 noundef 12, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_sync_header_crc, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.bh, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_sync_payload_crc, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.bj, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bl = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.bm = icmp sgt i32 %i.bl, 19
  br i1 %i.bm, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not156 = icmp ne i32 %i.bc, 0
  %i.bn = and i32 %i.ai, 1
  %i.bo = icmp eq i32 %i.bn, 0
  %or.cond = and i1 %i.bo, %.not156
  %i.bp = icmp ugt i16 %i.h, 1                    ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader158

.preheader158:                                    ; preds = %bb.n
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %bb.n
  br i1 %i.bp, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %.preheader, %.lr.ph163
  %.0162 = phi i32 [ %i.cc, %.lr.ph163 ], [ 1, %.preheader ] ; 3 uses
  %.0152161 = phi i32 [ %i.cd, %.lr.ph163 ], [ 19, %.preheader ] ; 4 uses
  %i.bq = shl nuw nsw i32 %.0152161, 3            ; 2 uses
  %i.br = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.bq, i32 noundef 12, i32 noundef 0)
  %i.bs = add nuw nsw i32 %i.bq, 12
  %i.bt = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.bs, i32 noundef 12, i32 noundef 0)
  %i.bu = load i32, ptr @hf_sync_length_of_packet, align 4
  %i.bv = zext i16 %i.br to i32                   ; 2 uses
  %i.bw = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.bu, ptr noundef %0, i32 noundef %.0152161, i32 noundef 2, i32 noundef %i.bv, ptr noundef nonnull @.str.40, i32 noundef %.0162, i32 noundef %i.bv) ; 0 uses
  %i.bx = load i32, ptr @hf_sync_length_of_packet, align 4
  %i.by = add nuw nsw i32 %.0152161, 1
  %i.bz = zext i16 %i.bt to i32                   ; 2 uses
  %i.ca = add nuw nsw i32 %.0162, 1
  %i.cb = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.by, i32 noundef 2, i32 noundef %i.bz, ptr noundef nonnull @.str.40, i32 noundef %i.ca, i32 noundef %i.bz) ; 0 uses
  %i.cc = add nuw nsw i32 %.0162, 2               ; 2 uses
  %i.cd = add nuw nsw i32 %.0152161, 3
  %i.ce = icmp samesign ult i32 %i.cc, %i.ai
  br i1 %i.ce, label %.lr.ph163, label %.loopexit, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader158, %.lr.ph
  %.1160 = phi i32 [ %i.cr, %.lr.ph ], [ 1, %.preheader158 ] ; 3 uses
  %.1153159 = phi i32 [ %i.cs, %.lr.ph ], [ 19, %.preheader158 ] ; 4 uses
  %i.cf = shl nuw nsw i32 %.1153159, 3            ; 2 uses
  %i.cg = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.cf, i32 noundef 12, i32 noundef 0)
  %i.ch = add nuw nsw i32 %i.cf, 12
  %i.ci = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.ch, i32 noundef 12, i32 noundef 0)
  %i.cj = load i32, ptr @hf_sync_length_of_packet, align 4
  %i.ck = zext i16 %i.cg to i32                   ; 2 uses
  %i.cl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.1153159, i32 noundef 2, i32 noundef %i.ck, ptr noundef nonnull @.str.40, i32 noundef %.1160, i32 noundef %i.ck) ; 0 uses
  %i.cm = load i32, ptr @hf_sync_length_of_packet, align 4
  %i.cn = add nuw nsw i32 %.1153159, 1
  %i.co = zext i16 %i.ci to i32                   ; 2 uses
  %i.cp = add nuw nsw i32 %.1160, 1
  %i.cq = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cn, i32 noundef 2, i32 noundef %i.co, ptr noundef nonnull @.str.40, i32 noundef %i.cp, i32 noundef %i.co) ; 0 uses
  %i.cr = add nuw nsw i32 %.1160, 2               ; 2 uses
  %i.cs = add nuw nsw i32 %.1153159, 3            ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cr, %i.ai
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %.preheader158
  %.1153.lcssa = phi i32 [ 19, %.preheader158 ], [ %i.cs, %.lr.ph ] ; 3 uses
  %i.cu = shl i32 %.1153.lcssa, 3
  %i.cv = tail call zeroext i16 @tvb_get_bits16(ptr noundef %0, i32 noundef %i.cu, i32 noundef 12, i32 noundef 0)
  %i.cw = load i32, ptr @hf_sync_length_of_packet, align 4
  %i.cx = zext i16 %i.cv to i32                   ; 2 uses
  %i.cy = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.cw, ptr noundef %0, i32 noundef %.1153.lcssa, i32 noundef 2, i32 noundef %i.cx, ptr noundef nonnull @.str.40, i32 noundef %i.ai, i32 noundef %i.cx) ; 0 uses
  %i.cz = add i32 %.1153.lcssa, 1
  %i.da = load i32, ptr @hf_sync_spare4, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.i
  %i.dc = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.z, ptr noundef nonnull @ei_sync_type) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph163, %.preheader, %._crit_edge, %bb.m, %bb.o, %bb.l, %bb.k, %bb.j
  %i.dd = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.dd
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_sync() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_sync, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.32, i32 noundef %i.a)
  store ptr %i.b, ptr @ip_handle, align 8
  %i.c = load ptr, ptr @sync_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.33, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc6_compute_tvb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_bits16(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_0
