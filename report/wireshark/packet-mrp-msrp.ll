inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0
@.str.27 = private unnamed_addr constant [17 x i8] c"mrp-msrp.vlan_id\00", align 1
@hf_msrp_tspec_max_frame_size = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"TSpec Max Frame Size\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"mrp-msrp.tspec_max_frame_size\00", align 1
@hf_msrp_tspec_max_interval_frames = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [25 x i8] c"TSpec Max Frame Interval\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"mrp-msrp.tspec_max_interval_frames\00", align 1
@hf_msrp_priority_and_rank = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"Priority and Rank\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"mrp-msrp.priority_and_rank\00", align 1
@hf_msrp_priority = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"mrp-msrp.priority\00", align 1
@hf_msrp_rank = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"Rank\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"mrp-msrp.rank\00", align 1
@hf_msrp_reserved = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"mrp-msrp.reserved\00", align 1
@hf_msrp_accumulated_latency = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [20 x i8] c"Accumulated Latency\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"mrp-msrp.accumulated_latency\00", align 1
@hf_msrp_failure_bridge_id = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"Failure Bridge ID\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"mrp-msrp.failure_bridge_id\00", align 1
@hf_msrp_failure_code = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [13 x i8] c"Failure Code\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"mrp-msrp.failure_code\00", align 1
@hf_msrp_sr_class_id = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"SR Class ID\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"mrp-msrp.sr_class_id\00", align 1
@hf_msrp_sr_class_priority = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [18 x i8] c"SR Class Priority\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"mrp-msrp.sr_class_priority\00", align 1
@hf_msrp_sr_class_vid = internal global i32 0, align 4
@.str.50 = private unnamed_addr constant [13 x i8] c"SR Class VID\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"mrp-msrp.sr_class_vid\00", align 1
@hf_msrp_three_packed_event = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [16 x i8] c"Attribute Event\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"mrp-msrp.three_packed_event\00", align 1
@hf_msrp_four_packed_event = internal global i32 0, align 4
@.str.54 = private unnamed_addr constant [17 x i8] c"Declaration Type\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"mrp-msrp.four_packed_event\00", align 1
@hf_msrp_end_mark = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"End Mark\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"mrp-msrp.end_mark\00", align 1
@proto_register_mrp_msrp.ett = internal global [7 x ptr] [ptr @ett_msrp, ptr @ett_msg, ptr @ett_attr_list, ptr @ett_vect_attr, ptr @ett_vector_header, ptr @ett_first_value, ptr @ett_priority_and_rank], align 16
@ett_msrp = internal global i32 0, align 4
@ett_msg = internal global i32 0, align 4
@ett_attr_list = internal global i32 0, align 4
@ett_vect_attr = internal global i32 0, align 4
@ett_vector_header = internal global i32 0, align 4
@ett_first_value = internal global i32 0, align 4
@ett_priority_and_rank = internal global i32 0, align 4
@proto_register_mrp_msrp.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_msrp_attribute_type, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.58, i32 150994944, i32 6291456, ptr @.str.59, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_msrp_attribute_type = internal global %struct.expert_field zeroinitializer, align 4
@.str.58 = private unnamed_addr constant [32 x i8] c"mrp-msrp.attribute_type.unknown\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Malformed TCP/IP Status\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Multiple Stream Reservation Protocol\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"MRP-MSRP\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"mrp-msrp\00", align 1
@proto_msrp = internal unnamed_addr global i32 0, align 4
@msrp_handle = internal unnamed_addr global ptr null, align 8
@.str.63 = private unnamed_addr constant [10 x i8] c"ethertype\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Talker Advertise\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Talker Failed\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Listener\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@attribute_type_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.64 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.65 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.66 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.67 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Leave All\00", align 1
@leave_all_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.69 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.70 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.72 = private unnamed_addr constant [16 x i8] c"Traffic Class A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"Traffic Class B\00", align 1
@priority_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.72 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [10 x i8] c"Emergency\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Non-emergency\00", align 1
@rank_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.75 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.76 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.78 = private unnamed_addr constant [11 x i8] c"Reserved-0\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"Reserved-1\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"Reserved-2\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"Reserved-3\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Reserved-4\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"Reserved-5\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Reserved-6\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"Reserved-7\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Reserved-8\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"Reserved-9\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Reserved-10\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Reserved-11\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"Reserved-12\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"Reserved-13\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"Reserved-14\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"Reserved-15\00", align 1
@reserved_vals = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.78 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.79 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.80 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.81 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.82 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.83 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.84 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.85 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.87 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.88 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.89 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.90 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.91 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.92 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.93 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.95 = private unnamed_addr constant [23 x i8] c"Insufficient Bandwidth\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"Insufficient Bridge resources\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"Insufficient Bandwidth for Traffic Class\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"Stream ID in use by another Talker\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"Stream destination_address already in use\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"Stream preempted by higher rank\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"Reported latency has changed\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Egress port in not AVB capable\00", align 1
@.str.103 = private unnamed_addr constant [66 x i8] c"Use a different destination address (i.e. MAC DA hash table full)\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"Out of MSRP resources\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"Out of MMRP resources\00", align 1
@.str.106 = private unnamed_addr constant [71 x i8] c"Cannot store destination_address (i.e. Bridge is out of MAC resources)\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"Requested priority not an SR Class (3.3) priority\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"MaxFrameSize (35.2.2.8.4(a)) is too large for media\00", align 1
@.str.109 = private unnamed_addr constant [55 x i8] c"msrpMaxFanInPorts (35.2.1.4(f)) limit has been reached\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"Changes in FirstValue for a registered StreamID\00", align 1
@.str.111 = private unnamed_addr constant [61 x i8] c"VLAN is blocked on this egress port (Registration Forbidden)\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"VLAN tagging is disabled on this egress port (untagged set)\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"SR class priority mismatch\00", align 1
@failure_vals = internal constant [20 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.95 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.96 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.97 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.99 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.101 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.103 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.105 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.106 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.107 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.109 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.111 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.113 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [11 x i8] c"SR Class A\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"SR Class B\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"SR Class C\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"SR Class D\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"SR Class E\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"SR Class F\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"SR Class G\00", align 1
@sr_class_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.115 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.118 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.120 }, { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.121 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.123 = private unnamed_addr constant [4 x i8] c"New\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"JoinIn\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"JoinMt\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"Mt\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"Lv\00", align 1
@three_packed_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.123 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.125 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.127 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.130 = private unnamed_addr constant [7 x i8] c"Ignore\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"Asking Failed\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"Ready\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"Ready Failed\00", align 1
@four_packed_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.135 = private unnamed_addr constant [10 x i8] c": %s (%d)\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"<Unknown>\00", align 1
@vector_header_fields = internal constant [3 x ptr] [ptr @hf_msrp_leave_all_event, ptr @hf_msrp_number_of_values, ptr null], align 16
@priority_and_rank_fields = internal constant [4 x ptr] [ptr @hf_msrp_priority, ptr @hf_msrp_rank, ptr @hf_msrp_reserved, ptr null], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mrp_msrp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) ; 2 uses
  store i32 %i.a, ptr @proto_msrp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_mrp_msrp.hf, i32 noundef 29)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_mrp_msrp.ett, i32 noundef 7)
  %i.b = load i32, ptr @proto_msrp, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_mrp_msrp.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_msrp, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.62, ptr noundef nonnull @dissect_msrp, i32 noundef %i.d)
  store ptr %i.e, ptr @msrp_handle, align 8
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
define internal i32 @dissect_msrp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.61)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.60)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @proto_msrp, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_msrp, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 3 uses
  %i.h = load i32, ptr @hf_msrp_proto_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %.not141189 = icmp eq i16 %i.j, 0
  br i1 %.not141189, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.b, %._crit_edge
  %.0136191 = phi i32 [ %i.hz, %._crit_edge ], [ 0, %bb.b ] ; 11 uses
  %.0138190 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.k = add i32 %.0136191, 1                     ; 3 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.k) ; 4 uses
  %i.m = add i32 %.0136191, 2                     ; 2 uses
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.m)
  %i.o = add i32 %.0136191, 3                     ; 2 uses
  %i.p = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.o)
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 4                  ; 2 uses
  %i.s = load i32, ptr @hf_msrp_message, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.r, i32 noundef 0)
  %i.u = load i32, ptr @ett_msg, align 4
  %i.v = tail call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u) ; 5 uses
  %i.w = zext i8 %i.l to i32                      ; 2 uses
  %i.x = tail call ptr @val_to_str_const(i32 noundef %i.w, ptr noundef nonnull @attribute_type_vals, ptr noundef nonnull @.str.136)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.v, ptr noundef nonnull @.str.135, ptr noundef %i.x, i32 noundef %i.w)
  %i.y = load i32, ptr @hf_msrp_attribute_type, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_msrp_attribute_length, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_msrp_attribute_list_length, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.o, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_msrp_attribute_list, align 4
  %i.af = add i32 %.0136191, 5                    ; 4 uses
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.af, i32 noundef %i.q, i32 noundef 0)
  %i.ah = load i32, ptr @ett_attr_list, align 4
  %i.ai = tail call ptr @proto_item_add_subtree(ptr noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.aj = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.af)
  %.not142186 = icmp eq i16 %i.aj, 0
  br i1 %.not142186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph194
  %i.ak = zext i8 %i.n to i32                     ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, 2
  %i.am = icmp eq i8 %i.l, 3
  %i.an = icmp eq i8 %i.l, 4
  %i.ao = add i32 %.0136191, 7
  %i.ap = add i32 %.0136191, 41
  %i.aq = add i32 %.0136191, 32
  %i.ar = add i32 %.0136191, 15
  %i.as = add i32 %.0136191, 11
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %dissect_msrp_three_packed_event.exit
  %.0188 = phi i32 [ 0, %.lr.ph ], [ %i.hu, %dissect_msrp_three_packed_event.exit ] ; 8 uses
  %.0188.us = phi i32 [ %.0138190, %.lr.ph ], [ %.2, %dissect_msrp_three_packed_event.exit ]
  %i.at = add i32 %.0188, %i.af                   ; 2 uses
  %i.au = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.at)
  %i.av = and i16 %i.au, 8191                     ; 6 uses
  %i.aw = zext nneg i16 %i.av to i32              ; 17 uses
  %.lhs.trunc.us = add nuw nsw i16 %i.av, 2
  %i.ax = udiv i16 %.lhs.trunc.us, 3
  %.zext.us = zext nneg i16 %i.ax to i32
  %i.ay = add nuw nsw i32 %i.al, %.zext.us
  %i.az = add nuw nsw i32 %i.aw, 3
  %i.ba = lshr i32 %i.az, 2
  %i.bb = select i1 %i.am, i32 %i.ba, i32 0
  %.0137.us = add nuw nsw i32 %i.ay, %i.bb        ; 3 uses
  %i.bc = load i32, ptr @hf_msrp_vector_attribute, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.at, i32 noundef %.0137.us, i32 noundef 0)
  %i.be = load i32, ptr @ett_vect_attr, align 4
  %i.bf = tail call ptr @proto_item_add_subtree(ptr noundef %i.bd, i32 noundef %i.be) ; 18 uses
  %4 = add i32 %.0188, %.0136191                  ; 16 uses
  %5 = add i32 %4, 5
  %i.bg = load i32, ptr @hf_msrp_vector_header, align 4
  %i.bh = load i32, ptr @ett_vector_header, align 4
  %i.bi = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bf, ptr noundef %0, i32 noundef %5, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull @vector_header_fields, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_msrp_first_value, align 4
  %i.bk = add i32 %i.ao, %.0188                   ; 5 uses
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.bf, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.ak, i32 noundef 0)
  %i.bm = load i32, ptr @ett_first_value, align 4
  %i.bn = tail call ptr @proto_item_add_subtree(ptr noundef %i.bl, i32 noundef %i.bm) ; 19 uses
  br i1 %i.an, label %6, label %.lr.ph.split

6:                                                ; preds = %.lr.ph.split.us
  %7 = load i32, ptr @hf_msrp_sr_class_id, align 4
  %8 = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %7, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %9 = load i32, ptr @hf_msrp_sr_class_priority, align 4
  %10 = add i32 %i.bk, 1
  %11 = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %9, ptr noundef %0, i32 noundef %10, i32 noundef 1, i32 noundef 0) ; 0 uses
  %12 = load i32, ptr @hf_msrp_sr_class_vid, align 4
  %13 = add i32 %i.bk, 2
  %14 = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %12, ptr noundef %0, i32 noundef %13, i32 noundef 2, i32 noundef 0) ; 0 uses
  %15 = add i32 %i.as, %.0188                     ; 2 uses
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %dissect_msrp_three_packed_event.exit, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %6, %bb.f
  %.034.i.us = phi i32 [ %i.ch, %bb.f ], [ %15, %6 ] ; 5 uses
  %.02833.i.us = phi i32 [ %.2.i.us, %bb.f ], [ 0, %6 ] ; 2 uses
  %i.bo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.034.i.us) ; 2 uses
  %i.bp = udiv i8 %i.bo, 36                       ; 2 uses
  %i.bq = zext nneg i8 %i.bp to i32
  %.neg.i.us = mul i8 %i.bp, -36
  %i.br = add i8 %.neg.i.us, %i.bo                ; 2 uses
  %i.bs = udiv i8 %i.br, 6                        ; 2 uses
  %.neg32.i.us = mul i8 %i.bs, -6
  %i.bt = add i8 %.neg32.i.us, %i.br
  %i.bu = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.bv = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.bu, ptr noundef %0, i32 noundef %.034.i.us, i32 noundef 1, i32 noundef %i.bq) ; 0 uses
  %i.bw = add nuw nsw i32 %.02833.i.us, 1         ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.aw
  br i1 %i.bx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.by = zext nneg i8 %i.bs to i32
  %i.bz = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.ca = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.bz, ptr noundef %0, i32 noundef %.034.i.us, i32 noundef 1, i32 noundef %i.by) ; 0 uses
  %i.cb = add nuw nsw i32 %.02833.i.us, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.1.i.us = phi i32 [ %i.cb, %bb.c ], [ %i.bw, %.lr.ph.i.us ] ; 3 uses
  %i.cc = icmp samesign ult i32 %.1.i.us, %i.aw
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cd = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.ce = zext i8 %i.bt to i32
  %i.cf = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.cd, ptr noundef %0, i32 noundef %.034.i.us, i32 noundef 1, i32 noundef %i.ce) ; 0 uses
  %i.cg = add nuw nsw i32 %.1.i.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i.us = phi i32 [ %i.cg, %bb.e ], [ %.1.i.us, %bb.d ] ; 2 uses
  %i.ch = add i32 %.034.i.us, 1                   ; 2 uses
  %i.ci = icmp ult i32 %.2.i.us, %i.aw
  br i1 %i.ci, label %.lr.ph.i.us, label %dissect_msrp_three_packed_event.exit, !llvm.loop !6

.lr.ph.split:                                     ; preds = %.lr.ph.split.us
  %i.cj = load i32, ptr @hf_msrp_stream_id, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.bk, i32 noundef 8, i32 noundef 0) ; 0 uses
  switch i8 %i.l, label %bb.ab [
    i8 3, label %bb.g
    i8 1, label %bb.r
    i8 2, label %bb.w
  ]

bb.g:                                             ; preds = %.lr.ph.split
  %i.cl = add i32 %i.ar, %.0188                   ; 2 uses
  %.not.i143 = icmp eq i16 %i.av, 0
  br i1 %.not.i143, label %dissect_msrp_three_packed_event.exit, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.g, %bb.k
  %.034.i145 = phi i32 [ %i.df, %bb.k ], [ %i.cl, %bb.g ] ; 5 uses
  %.02833.i146 = phi i32 [ %.2.i150, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %i.cm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.034.i145) ; 2 uses
  %i.cn = udiv i8 %i.cm, 36                       ; 2 uses
  %i.co = zext nneg i8 %i.cn to i32
  %.neg.i147 = mul i8 %i.cn, -36
  %i.cp = add i8 %.neg.i147, %i.cm                ; 2 uses
  %i.cq = udiv i8 %i.cp, 6                        ; 2 uses
  %.neg32.i148 = mul i8 %i.cq, -6
  %i.cr = add i8 %.neg32.i148, %i.cp
  %i.cs = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.ct = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.cs, ptr noundef %0, i32 noundef %.034.i145, i32 noundef 1, i32 noundef %i.co) ; 0 uses
  %i.cu = add nuw nsw i32 %.02833.i146, 1         ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cu, %i.aw
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i144
  %i.cw = zext nneg i8 %i.cq to i32
  %i.cx = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.cy = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.cx, ptr noundef %0, i32 noundef %.034.i145, i32 noundef 1, i32 noundef %i.cw) ; 0 uses
  %i.cz = add nuw nsw i32 %.02833.i146, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i144
  %.1.i149 = phi i32 [ %i.cz, %bb.h ], [ %i.cu, %.lr.ph.i144 ] ; 3 uses
  %i.da = icmp samesign ult i32 %.1.i149, %i.aw
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.db = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.dc = zext i8 %i.cr to i32
  %i.dd = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.db, ptr noundef %0, i32 noundef %.034.i145, i32 noundef 1, i32 noundef %i.dc) ; 0 uses
  %i.de = add nuw nsw i32 %.1.i149, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.i150 = phi i32 [ %i.de, %bb.j ], [ %.1.i149, %bb.i ] ; 2 uses
  %i.df = add i32 %.034.i145, 1                   ; 2 uses
  %i.dg = icmp ult i32 %.2.i150, %i.aw
  br i1 %i.dg, label %.lr.ph.i144, label %.lr.ph.i154, !llvm.loop !6

.lr.ph.i154:                                      ; preds = %bb.k, %bb.q
  %.036.i = phi i32 [ %i.eh, %bb.q ], [ %i.df, %bb.k ] ; 6 uses
  %.03135.i = phi i32 [ %.3.i, %bb.q ], [ 0, %bb.k ] ; 2 uses
  %i.dh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.036.i) ; 4 uses
  %i.di = lshr i8 %i.dh, 6
  %i.dj = lshr i8 %i.dh, 2
  %i.dk = and i8 %i.dj, 3
  %i.dl = and i8 %i.dh, 3
  %i.dm = load i32, ptr @hf_msrp_four_packed_event, align 4
  %i.dn = zext nneg i8 %i.di to i32
  %i.do = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.dm, ptr noundef %0, i32 noundef %.036.i, i32 noundef 1, i32 noundef %i.dn) ; 0 uses
  %i.dp = add nuw nsw i32 %.03135.i, 1            ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dp, %i.aw
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i154
  %i.dr = lshr i8 %i.dh, 4
  %i.ds = and i8 %i.dr, 3
  %i.dt = load i32, ptr @hf_msrp_four_packed_event, align 4
  %i.du = zext nneg i8 %i.ds to i32
  %i.dv = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.dt, ptr noundef %0, i32 noundef %.036.i, i32 noundef 1, i32 noundef %i.du) ; 0 uses
  %i.dw = add nuw nsw i32 %.03135.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i154
  %.1.i155 = phi i32 [ %i.dw, %bb.l ], [ %i.dp, %.lr.ph.i154 ] ; 3 uses
  %i.dx = icmp samesign ult i32 %.1.i155, %i.aw
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dy = load i32, ptr @hf_msrp_four_packed_event, align 4
  %i.dz = zext nneg i8 %i.dk to i32
  %i.ea = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.dy, ptr noundef %0, i32 noundef %.036.i, i32 noundef 1, i32 noundef %i.dz) ; 0 uses
  %i.eb = add nuw nsw i32 %.1.i155, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.i156 = phi i32 [ %i.eb, %bb.n ], [ %.1.i155, %bb.m ] ; 3 uses
  %i.ec = icmp samesign ult i32 %.2.i156, %i.aw
  br i1 %i.ec, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr @hf_msrp_four_packed_event, align 4
  %i.ee = zext nneg i8 %i.dl to i32
  %i.ef = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.ed, ptr noundef %0, i32 noundef %.036.i, i32 noundef 1, i32 noundef %i.ee) ; 0 uses
  %i.eg = add nuw nsw i32 %.2.i156, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3.i = phi i32 [ %i.eg, %bb.p ], [ %.2.i156, %bb.o ] ; 2 uses
  %i.eh = add i32 %.036.i, 1                      ; 2 uses
  %i.ei = icmp ult i32 %.3.i, %i.aw
  br i1 %i.ei, label %.lr.ph.i154, label %dissect_msrp_three_packed_event.exit, !llvm.loop !8

bb.r:                                             ; preds = %.lr.ph.split
  %i.ej = load i32, ptr @hf_msrp_stream_da, align 4
  %i.ek = add i32 %4, 15
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.ek, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_msrp_vlan_id, align 4
  %i.en = add i32 %4, 21
  %i.eo = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.en, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ep = load i32, ptr @hf_msrp_tspec_max_frame_size, align 4
  %i.eq = add i32 %4, 23
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_msrp_tspec_max_interval_frames, align 4
  %i.et = add i32 %4, 25
  %i.eu = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.et, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ev = add i32 %4, 27
  %i.ew = load i32, ptr @hf_msrp_priority_and_rank, align 4
  %i.ex = load i32, ptr @ett_priority_and_rank, align 4
  %i.ey = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bn, ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef %i.ex, ptr noundef nonnull @priority_and_rank_fields, i32 noundef 0) ; 0 uses
  %i.ez = load i32, ptr @hf_msrp_accumulated_latency, align 4
  %i.fa = add i32 %4, 28
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.ez, ptr noundef %0, i32 noundef %i.fa, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fc = add i32 %i.aq, %.0188                   ; 2 uses
  %.not.i158 = icmp eq i16 %i.av, 0
  br i1 %.not.i158, label %dissect_msrp_three_packed_event.exit, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %bb.r, %bb.v
  %.034.i160 = phi i32 [ %i.fw, %bb.v ], [ %i.fc, %bb.r ] ; 5 uses
  %.02833.i161 = phi i32 [ %.2.i165, %bb.v ], [ 0, %bb.r ] ; 2 uses
  %i.fd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.034.i160) ; 2 uses
  %i.fe = udiv i8 %i.fd, 36                       ; 2 uses
  %i.ff = zext nneg i8 %i.fe to i32
  %.neg.i162 = mul i8 %i.fe, -36
  %i.fg = add i8 %.neg.i162, %i.fd                ; 2 uses
  %i.fh = udiv i8 %i.fg, 6                        ; 2 uses
  %.neg32.i163 = mul i8 %i.fh, -6
  %i.fi = add i8 %.neg32.i163, %i.fg
  %i.fj = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.fk = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.fj, ptr noundef %0, i32 noundef %.034.i160, i32 noundef 1, i32 noundef %i.ff) ; 0 uses
  %i.fl = add nuw nsw i32 %.02833.i161, 1         ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fl, %i.aw
  br i1 %i.fm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i159
  %i.fn = zext nneg i8 %i.fh to i32
  %i.fo = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.fp = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.fo, ptr noundef %0, i32 noundef %.034.i160, i32 noundef 1, i32 noundef %i.fn) ; 0 uses
  %i.fq = add nuw nsw i32 %.02833.i161, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i159
  %.1.i164 = phi i32 [ %i.fq, %bb.s ], [ %i.fl, %.lr.ph.i159 ] ; 3 uses
  %i.fr = icmp samesign ult i32 %.1.i164, %i.aw
  br i1 %i.fr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fs = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.ft = zext i8 %i.fi to i32
  %i.fu = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.fs, ptr noundef %0, i32 noundef %.034.i160, i32 noundef 1, i32 noundef %i.ft) ; 0 uses
  %i.fv = add nuw nsw i32 %.1.i164, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i165 = phi i32 [ %i.fv, %bb.u ], [ %.1.i164, %bb.t ] ; 2 uses
  %i.fw = add i32 %.034.i160, 1                   ; 2 uses
  %i.fx = icmp ult i32 %.2.i165, %i.aw
  br i1 %i.fx, label %.lr.ph.i159, label %dissect_msrp_three_packed_event.exit, !llvm.loop !6

bb.w:                                             ; preds = %.lr.ph.split
  %i.fy = load i32, ptr @hf_msrp_stream_da, align 4
  %i.fz = add i32 %4, 15
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.fz, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.gb = load i32, ptr @hf_msrp_vlan_id, align 4
  %i.gc = add i32 %4, 21
  %i.gd = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.gc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ge = load i32, ptr @hf_msrp_tspec_max_frame_size, align 4
  %i.gf = add i32 %4, 23
  %i.gg = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.ge, ptr noundef %0, i32 noundef %i.gf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gh = load i32, ptr @hf_msrp_tspec_max_interval_frames, align 4
  %i.gi = add i32 %4, 25
  %i.gj = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gk = add i32 %4, 27
  %i.gl = load i32, ptr @hf_msrp_priority_and_rank, align 4
  %i.gm = load i32, ptr @ett_priority_and_rank, align 4
  %i.gn = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bn, ptr noundef %0, i32 noundef %i.gk, i32 noundef %i.gl, i32 noundef %i.gm, ptr noundef nonnull @priority_and_rank_fields, i32 noundef 0) ; 0 uses
  %i.go = load i32, ptr @hf_msrp_accumulated_latency, align 4
  %i.gp = add i32 %4, 28
  %i.gq = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gr = load i32, ptr @hf_msrp_failure_bridge_id, align 4
  %i.gs = add i32 %4, 32
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.gr, ptr noundef %0, i32 noundef %i.gs, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.gu = load i32, ptr @hf_msrp_failure_code, align 4
  %i.gv = add i32 %4, 40
  %i.gw = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gx = add i32 %i.ap, %.0188                   ; 2 uses
  %.not.i168 = icmp eq i16 %i.av, 0
  br i1 %.not.i168, label %dissect_msrp_three_packed_event.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.w, %bb.aa
  %.034.i170 = phi i32 [ %i.hr, %bb.aa ], [ %i.gx, %bb.w ] ; 5 uses
  %.02833.i171 = phi i32 [ %.2.i175, %bb.aa ], [ 0, %bb.w ] ; 2 uses
  %i.gy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.034.i170) ; 2 uses
  %i.gz = udiv i8 %i.gy, 36                       ; 2 uses
  %i.ha = zext nneg i8 %i.gz to i32
  %.neg.i172 = mul i8 %i.gz, -36
  %i.hb = add i8 %.neg.i172, %i.gy                ; 2 uses
  %i.hc = udiv i8 %i.hb, 6                        ; 2 uses
  %.neg32.i173 = mul i8 %i.hc, -6
  %i.hd = add i8 %.neg32.i173, %i.hb
  %i.he = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.hf = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.he, ptr noundef %0, i32 noundef %.034.i170, i32 noundef 1, i32 noundef %i.ha) ; 0 uses
  %i.hg = add nuw nsw i32 %.02833.i171, 1         ; 2 uses
  %i.hh = icmp samesign ult i32 %i.hg, %i.aw
  br i1 %i.hh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i169
  %i.hi = zext nneg i8 %i.hc to i32
  %i.hj = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.hk = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.hj, ptr noundef %0, i32 noundef %.034.i170, i32 noundef 1, i32 noundef %i.hi) ; 0 uses
  %i.hl = add nuw nsw i32 %.02833.i171, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i169
  %.1.i174 = phi i32 [ %i.hl, %bb.x ], [ %i.hg, %.lr.ph.i169 ] ; 3 uses
  %i.hm = icmp samesign ult i32 %.1.i174, %i.aw
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hn = load i32, ptr @hf_msrp_three_packed_event, align 4
  %i.ho = zext i8 %i.hd to i32
  %i.hp = tail call ptr @proto_tree_add_uint(ptr noundef %i.bf, i32 noundef %i.hn, ptr noundef %0, i32 noundef %.034.i170, i32 noundef 1, i32 noundef %i.ho) ; 0 uses
  %i.hq = add nuw nsw i32 %.1.i174, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.i175 = phi i32 [ %i.hq, %bb.z ], [ %.1.i174, %bb.y ] ; 2 uses
  %i.hr = add i32 %.034.i170, 1                   ; 2 uses
  %i.hs = icmp ult i32 %.2.i175, %i.aw
  br i1 %i.hs, label %.lr.ph.i169, label %dissect_msrp_three_packed_event.exit, !llvm.loop !6

bb.ab:                                            ; preds = %.lr.ph.split
  %i.ht = tail call ptr @proto_tree_add_expert(ptr noundef %i.bn, ptr noundef %1, ptr noundef nonnull @ei_msrp_attribute_type, ptr noundef %0, i32 noundef %4, i32 noundef %.0137.us) ; 0 uses
  br label %dissect_msrp_three_packed_event.exit

dissect_msrp_three_packed_event.exit:             ; preds = %bb.aa, %bb.v, %bb.q, %bb.f, %bb.g, %bb.w, %bb.r, %6, %bb.ab
  %.2 = phi i32 [ %i.eh, %bb.q ], [ %.0188.us, %bb.ab ], [ %i.gx, %bb.w ], [ %i.fw, %bb.v ], [ %15, %6 ], [ %i.cl, %bb.g ], [ %i.ch, %bb.f ], [ %i.fc, %bb.r ], [ %i.hr, %bb.aa ] ; 2 uses
  %i.hu = add i32 %.0137.us, %.0188               ; 2 uses
  %i.hv = add i32 %i.hu, %i.af
  %i.hw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.hv)
  %.not142 = icmp eq i16 %i.hw, 0
  br i1 %.not142, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !9

._crit_edge:                                      ; preds = %dissect_msrp_three_packed_event.exit, %.lr.ph194
  %.1.lcssa = phi i32 [ %.0138190, %.lr.ph194 ], [ %.2, %dissect_msrp_three_packed_event.exit ] ; 3 uses
  %i.hx = load i32, ptr @hf_msrp_end_mark, align 4
  %i.hy = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.hx, ptr noundef %0, i32 noundef %.1.lcssa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.hz = add i32 %i.r, %.0136191                 ; 2 uses
  %i.ia = add i32 %i.hz, 1
  %i.ib = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ia)
  %.not141 = icmp eq i16 %i.ib, 0
  br i1 %.not141, label %._crit_edge195.loopexit, label %.lr.ph194, !llvm.loop !10

._crit_edge195.loopexit:                          ; preds = %._crit_edge
  %i.ic = add i32 %.1.lcssa, 2
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %bb.b
  %.0138.lcssa = phi i32 [ 2, %bb.b ], [ %i.ic, %._crit_edge195.loopexit ]
  %i.id = load i32, ptr @hf_msrp_end_mark, align 4
  %i.ie = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.id, ptr noundef %0, i32 noundef %.0138.lcssa, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge195, %bb.a
  %i.if = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.if
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mrp_msrp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @msrp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.63, i32 noundef 8938, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
end_hunk_0
