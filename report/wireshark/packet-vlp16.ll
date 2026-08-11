inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.unit_name_string = type { ptr, ptr }
%struct.expert_field = type { i32, i32 }

@proto_register_vlp16.hf_vlp16_data = internal global [7 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_vlp16_data_block_id, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_rotational_position, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_laser_distance, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_laser_intensity, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_gps_timestamp, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 7, i32 4097, ptr @units_microseconds, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_factory_field1, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 4, i32 2, ptr @vlp16_factory_field1_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_data_factory_field2, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 4, i32 2, ptr @vlp16_factory_field2_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_vlp16_data_block_id = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Block Identifier\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"vlp16_data.block_id\00", align 1
@hf_vlp16_data_rotational_position = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Rotational Position\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vlp16_data.rotational_position\00", align 1
@hf_vlp16_data_laser_distance = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vlp16_data.laser.distance\00", align 1
@hf_vlp16_data_laser_intensity = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"vlp16_data.laser.intensity\00", align 1
@hf_vlp16_data_gps_timestamp = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"GPS Timestamp\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"vlp16_data.gps_timestamp\00", align 1
@units_microseconds = external constant %struct.unit_name_string, align 8
@hf_vlp16_data_factory_field1 = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Factory Field1\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vlp16_data.factory_field1\00", align 1
@hf_vlp16_data_factory_field2 = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Factory Field2\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vlp16_data.factory_field2\00", align 1
@proto_register_vlp16.hf_vlp16_position = internal global [8 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_vlp16_position_zero_data, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_gyro, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 23, i32 4096, ptr @vlp16_deg_s, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_temp, %struct._header_field_info { ptr @.str.18, ptr @.str.19, i32 23, i32 4096, ptr @units_degree_celsius, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_accelx, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 23, i32 4096, ptr @vlp16_accel, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_accely, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 23, i32 4096, ptr @vlp16_accel, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_gps_timestamp, %struct._header_field_info { ptr @.str.8, ptr @.str.24, i32 7, i32 4097, ptr @units_microseconds, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_sentence, %struct._header_field_info { ptr @.str.25, ptr @.str.26, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_vlp16_position_unused, %struct._header_field_info { ptr @.str.27, ptr @.str.28, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_vlp16_position_zero_data = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"Zero data\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"vlp16_position.zero_data\00", align 1
@hf_vlp16_position_gyro = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"Gyro\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"vlp16_position.position.gyro\00", align 1
@vlp16_deg_s = internal constant %struct.unit_name_string { ptr @.str.45, ptr null }, align 8
@hf_vlp16_position_temp = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"Temperature\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"vlp16_position.position.temp\00", align 1
@units_degree_celsius = external constant %struct.unit_name_string, align 8
@hf_vlp16_position_accelx = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"Accel X\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"vlp16_position.position.accelx\00", align 1
@vlp16_accel = internal constant %struct.unit_name_string { ptr @.str.46, ptr null }, align 8
@hf_vlp16_position_accely = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"Accel Y\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"vlp16_position.position.accely\00", align 1
@hf_vlp16_position_gps_timestamp = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"vlp16_position.gps_timestamp\00", align 1
@hf_vlp16_position_sentence = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"Sentence\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"vlp16_position.sentence\00", align 1
@hf_vlp16_position_unused = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"vlp16_position.unused\00", align 1
@proto_register_vlp16.ett_vlp16data = internal global [5 x ptr] [ptr @ett_vlp16_data, ptr @ett_vlp16_data_firing, ptr @ett_vlp16_data_firing_item, ptr @ett_vlp16_data_laser_returns, ptr @ett_vlp16_data_laser_return_item], align 16
@ett_vlp16_data = internal global i32 0, align 4
@ett_vlp16_data_firing = internal global i32 0, align 4
@ett_vlp16_data_firing_item = internal global i32 0, align 4
@ett_vlp16_data_laser_returns = internal global i32 0, align 4
@ett_vlp16_data_laser_return_item = internal global i32 0, align 4
@proto_register_vlp16.ett_vlp16position = internal global [2 x ptr] [ptr @ett_vlp16_position, ptr @ett_vlp16_position_item], align 16
@ett_vlp16_position = internal global i32 0, align 4
@ett_vlp16_position_item = internal global i32 0, align 4
@proto_register_vlp16.ei_vlp16_position = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_vlp16_position_zero_data, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.29, i32 150994944, i32 8388608, ptr @.str.30, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_vlp16_position_zero_data = internal global %struct.expert_field zeroinitializer, align 4
@.str.29 = private unnamed_addr constant [34 x i8] c"vlp16_position.zero_data.not_zero\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"Not all bytes of zero data have value 0\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"VLP-16 Data Protocol\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"VLP-16 Data\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"vlp16_data\00", align 1
@proto_vlp16_data = internal unnamed_addr global i32 0, align 4
@.str.34 = private unnamed_addr constant [25 x i8] c"VLP-16 Position Protocol\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"VLP-16 Position\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"vlp16_position\00", align 1
@proto_vlp16_position = internal unnamed_addr global i32 0, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Strongest Return\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Last Return\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Dual Return\00", align 1
@vlp16_factory_field1_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.38 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.39 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [8 x i8] c"HDL-32E\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"VLP-16\00", align 1
@vlp16_factory_field2_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [6 x i8] c"deg/s\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Firing Data\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"Firing %d\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Laser Returns\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Laser Return %d\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"Position %d\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_vlp16() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
  store i32 %i.a, ptr @proto_vlp16_data, align 4
  %i.b = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
  store i32 %i.b, ptr @proto_vlp16_position, align 4
  %i.c = load i32, ptr @proto_vlp16_data, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_vlp16.hf_vlp16_data, i32 noundef 7)
  %i.d = load i32, ptr @proto_vlp16_position, align 4
  tail call void @proto_register_field_array(i32 noundef %i.d, ptr noundef nonnull @proto_register_vlp16.hf_vlp16_position, i32 noundef 8)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_vlp16.ett_vlp16data, i32 noundef 5)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_vlp16.ett_vlp16position, i32 noundef 2)
  %i.e = load i32, ptr @proto_vlp16_position, align 4
  %i.f = tail call ptr @expert_register_protocol(i32 noundef %i.e)
  tail call void @expert_register_field_array(ptr noundef %i.f, ptr noundef nonnull @proto_register_vlp16.ei_vlp16_position, i32 noundef 1)
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

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_vlp16() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_vlp16_data, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_vlp16_data, i32 noundef %i.a)
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.37, ptr noundef %i.b)
  %i.c = load i32, ptr @proto_vlp16_position, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_vlp16_position, i32 noundef %i.c)
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.37, ptr noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_vlp16_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.32)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_vlp16_data, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_vlp16_data, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 4 uses
  %i.h = load i32, ptr @ett_vlp16_data_firing, align 4
  %i.i = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1200, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.47)
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.j = load i32, ptr @hf_vlp16_data_gps_timestamp, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 1200, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.l = load i32, ptr @hf_vlp16_data_factory_field1, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %0, i32 noundef 1204, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.n = load i32, ptr @hf_vlp16_data_factory_field2, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.n, ptr noundef %0, i32 noundef 1205, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret i32 1206

bb.c:                                             ; preds = %bb.a, %bb.d
  %.05156 = phi i32 [ 1, %bb.a ], [ %i.z, %bb.d ] ; 2 uses
  %.05255 = phi i32 [ 0, %bb.a ], [ %i.ah, %bb.d ] ; 4 uses
  %i.p = load i32, ptr @ett_vlp16_data_firing_item, align 4
  %i.q = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.05255, i32 noundef 100, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef %.05156) ; 3 uses
  %i.r = load i32, ptr @hf_vlp16_data_block_id, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %0, i32 noundef %.05255, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.t = add nuw nsw i32 %.05255, 2
  %i.u = load i32, ptr @hf_vlp16_data_rotational_position, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.w = add nuw nsw i32 %.05255, 4               ; 2 uses
  %i.x = load i32, ptr @ett_vlp16_data_laser_returns, align 4
  %i.y = tail call ptr @proto_tree_add_subtree(ptr noundef %i.q, ptr noundef %0, i32 noundef %i.w, i32 noundef 96, i32 noundef %i.x, ptr noundef null, ptr noundef nonnull @.str.49)
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.z = add nuw nsw i32 %.05156, 1               ; 2 uses
  %exitcond57.not = icmp eq i32 %i.z, 13
  br i1 %exitcond57.not, label %bb.b, label %bb.c, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.e
  %.054 = phi i32 [ 1, %bb.c ], [ %i.ai, %bb.e ]  ; 2 uses
  %.153 = phi i32 [ %i.w, %bb.c ], [ %i.ah, %bb.e ] ; 4 uses
  %i.aa = load i32, ptr @ett_vlp16_data_laser_return_item, align 4
  %i.ab = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.y, ptr noundef %0, i32 noundef %.153, i32 noundef 3, i32 noundef %i.aa, ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef %.054) ; 2 uses
  %i.ac = load i32, ptr @hf_vlp16_data_laser_distance, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef %0, i32 noundef %.153, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ae = add nuw nsw i32 %.153, 2
  %i.af = load i32, ptr @hf_vlp16_data_laser_intensity, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ah = add nuw nsw i32 %.153, 3                ; 2 uses
  %i.ai = add nuw nsw i32 %.054, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, 33
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !8
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_vlp16_position(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.35)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_vlp16_position, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_vlp16_position, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 9 uses
  %i.h = load i32, ptr @hf_vlp16_position_zero_data, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 14, i32 noundef 0)
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %.not.1 = icmp eq i8 %i.k, 0
  br i1 %.not.1, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %.not.2 = icmp eq i8 %i.l, 0
  br i1 %.not.2, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %.not.3 = icmp eq i8 %i.m, 0
  br i1 %.not.3, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %.not.4 = icmp eq i8 %i.n, 0
  br i1 %.not.4, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %.not.5 = icmp eq i8 %i.o, 0
  br i1 %.not.5, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %.not.6 = icmp eq i8 %i.p, 0
  br i1 %.not.6, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %.not.7 = icmp eq i8 %i.q, 0
  br i1 %.not.7, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 8)
  %.not.8 = icmp eq i8 %i.r, 0
  br i1 %.not.8, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 9)
  %.not.9 = icmp eq i8 %i.s, 0
  br i1 %.not.9, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 10)
  %.not.10 = icmp eq i8 %i.t, 0
  br i1 %.not.10, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 11)
  %.not.11 = icmp eq i8 %i.u, 0
  br i1 %.not.11, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 12)
  %.not.12 = icmp eq i8 %i.v, 0
  br i1 %.not.12, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 13)
  %.not.13 = icmp eq i8 %i.w, 0
  br i1 %.not.13, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.x = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.i, ptr noundef nonnull @ei_vlp16_position_zero_data) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o
  %i.y = load i32, ptr @ett_vlp16_position_item, align 4
  %i.z = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef 14, i32 noundef 8, i32 noundef %i.y, ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 1) ; 4 uses
  %i.aa = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 14)
  %i.ab = and i16 %i.aa, 4095                     ; 2 uses
  %i.ac = lshr i16 %i.ab, 11
  %i.ad = mul nuw nsw i16 %i.ac, -4096
  %i.ae = or disjoint i16 %i.ad, %i.ab
  %i.af = uitofp i16 %i.ae to double
  %i.ag = fmul nnan double %i.af, f0x3FB9003EEA209AAA
  %i.ah = load i32, ptr @hf_vlp16_position_gyro, align 4
  %i.ai = tail call ptr @proto_tree_add_double(ptr noundef %i.z, i32 noundef %i.ah, ptr noundef %0, i32 noundef 14, i32 noundef 2, double noundef %i.ag) ; 0 uses
  %i.aj = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 16)
  %i.ak = and i16 %i.aj, 4095                     ; 2 uses
  %i.al = lshr i16 %i.ak, 11
  %i.am = mul nuw nsw i16 %i.al, -4096
  %i.an = or disjoint i16 %i.am, %i.ak
  %i.ao = uitofp i16 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double 1.453000e-01, double 2.500000e+01)
  %i.aq = load i32, ptr @hf_vlp16_position_temp, align 4
  %i.ar = tail call ptr @proto_tree_add_double(ptr noundef %i.z, i32 noundef %i.aq, ptr noundef %0, i32 noundef 16, i32 noundef 2, double noundef %i.ap) ; 0 uses
  %i.as = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 18)
  %i.at = and i16 %i.as, 4095                     ; 2 uses
  %i.au = lshr i16 %i.at, 11
  %i.av = mul nuw nsw i16 %i.au, -4096
  %i.aw = or disjoint i16 %i.av, %i.at
  %i.ax = uitofp i16 %i.aw to double
  %i.ay = fmul nnan double %i.ax, 1.221000e-03
  %i.az = load i32, ptr @hf_vlp16_position_accelx, align 4
  %i.ba = tail call ptr @proto_tree_add_double(ptr noundef %i.z, i32 noundef %i.az, ptr noundef %0, i32 noundef 18, i32 noundef 2, double noundef %i.ay) ; 0 uses
  %i.bb = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 20)
  %i.bc = and i16 %i.bb, 4095                     ; 2 uses
  %i.bd = lshr i16 %i.bc, 11
  %i.be = mul nuw nsw i16 %i.bd, -4096
  %i.bf = or disjoint i16 %i.be, %i.bc
  %i.bg = uitofp i16 %i.bf to double
  %i.bh = fmul nnan double %i.bg, 1.221000e-03
  %i.bi = load i32, ptr @hf_vlp16_position_accely, align 4
  %i.bj = tail call ptr @proto_tree_add_double(ptr noundef %i.z, i32 noundef %i.bi, ptr noundef %0, i32 noundef 20, i32 noundef 2, double noundef %i.bh) ; 0 uses
  %i.bk = load i32, ptr @ett_vlp16_position_item, align 4
  %i.bl = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef 22, i32 noundef 8, i32 noundef %i.bk, ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 2) ; 4 uses
  %i.bm = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 22)
  %i.bn = and i16 %i.bm, 4095                     ; 2 uses
  %i.bo = lshr i16 %i.bn, 11
  %i.bp = mul nuw nsw i16 %i.bo, -4096
  %i.bq = or disjoint i16 %i.bp, %i.bn
  %i.br = uitofp i16 %i.bq to double
  %i.bs = fmul nnan double %i.br, f0x3FB9003EEA209AAA
  %i.bt = load i32, ptr @hf_vlp16_position_gyro, align 4
  %i.bu = tail call ptr @proto_tree_add_double(ptr noundef %i.bl, i32 noundef %i.bt, ptr noundef %0, i32 noundef 22, i32 noundef 2, double noundef %i.bs) ; 0 uses
  %i.bv = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 24)
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %i.bx = lshr i16 %i.bw, 11
  %i.by = mul nuw nsw i16 %i.bx, -4096
  %i.bz = or disjoint i16 %i.by, %i.bw
  %i.ca = uitofp i16 %i.bz to double
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double 1.453000e-01, double 2.500000e+01)
  %i.cc = load i32, ptr @hf_vlp16_position_temp, align 4
  %i.cd = tail call ptr @proto_tree_add_double(ptr noundef %i.bl, i32 noundef %i.cc, ptr noundef %0, i32 noundef 24, i32 noundef 2, double noundef %i.cb) ; 0 uses
  %i.ce = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 26)
  %i.cf = and i16 %i.ce, 4095                     ; 2 uses
  %i.cg = lshr i16 %i.cf, 11
  %i.ch = mul nuw nsw i16 %i.cg, -4096
  %i.ci = or disjoint i16 %i.ch, %i.cf
  %i.cj = uitofp i16 %i.ci to double
  %i.ck = fmul nnan double %i.cj, 1.221000e-03
  %i.cl = load i32, ptr @hf_vlp16_position_accelx, align 4
  %i.cm = tail call ptr @proto_tree_add_double(ptr noundef %i.bl, i32 noundef %i.cl, ptr noundef %0, i32 noundef 26, i32 noundef 2, double noundef %i.ck) ; 0 uses
  %i.cn = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 28)
  %i.co = and i16 %i.cn, 4095                     ; 2 uses
  %i.cp = lshr i16 %i.co, 11
  %i.cq = mul nuw nsw i16 %i.cp, -4096
  %i.cr = or disjoint i16 %i.cq, %i.co
  %i.cs = uitofp i16 %i.cr to double
  %i.ct = fmul nnan double %i.cs, 1.221000e-03
  %i.cu = load i32, ptr @hf_vlp16_position_accely, align 4
  %i.cv = tail call ptr @proto_tree_add_double(ptr noundef %i.bl, i32 noundef %i.cu, ptr noundef %0, i32 noundef 28, i32 noundef 2, double noundef %i.ct) ; 0 uses
  %i.cw = load i32, ptr @ett_vlp16_position_item, align 4
  %i.cx = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.g, ptr noundef %0, i32 noundef 30, i32 noundef 8, i32 noundef %i.cw, ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 3) ; 4 uses
  %i.cy = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 30)
  %i.cz = and i16 %i.cy, 4095                     ; 2 uses
  %i.da = lshr i16 %i.cz, 11
  %i.db = mul nuw nsw i16 %i.da, -4096
  %i.dc = or disjoint i16 %i.db, %i.cz
  %i.dd = uitofp i16 %i.dc to double
  %i.de = fmul nnan double %i.dd, f0x3FB9003EEA209AAA
  %i.df = load i32, ptr @hf_vlp16_position_gyro, align 4
  %i.dg = tail call ptr @proto_tree_add_double(ptr noundef %i.cx, i32 noundef %i.df, ptr noundef %0, i32 noundef 30, i32 noundef 2, double noundef %i.de) ; 0 uses
  %i.dh = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 32)
  %i.di = and i16 %i.dh, 4095                     ; 2 uses
  %i.dj = lshr i16 %i.di, 11
  %i.dk = mul nuw nsw i16 %i.dj, -4096
  %i.dl = or disjoint i16 %i.dk, %i.di
  %i.dm = uitofp i16 %i.dl to double
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double 1.453000e-01, double 2.500000e+01)
  %i.do = load i32, ptr @hf_vlp16_position_temp, align 4
  %i.dp = tail call ptr @proto_tree_add_double(ptr noundef %i.cx, i32 noundef %i.do, ptr noundef %0, i32 noundef 32, i32 noundef 2, double noundef %i.dn) ; 0 uses
  %i.dq = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 34)
  %i.dr = and i16 %i.dq, 4095                     ; 2 uses
  %i.ds = lshr i16 %i.dr, 11
  %i.dt = mul nuw nsw i16 %i.ds, -4096
  %i.du = or disjoint i16 %i.dt, %i.dr
  %i.dv = uitofp i16 %i.du to double
  %i.dw = fmul nnan double %i.dv, 1.221000e-03
  %i.dx = load i32, ptr @hf_vlp16_position_accelx, align 4
end_hunk_0
