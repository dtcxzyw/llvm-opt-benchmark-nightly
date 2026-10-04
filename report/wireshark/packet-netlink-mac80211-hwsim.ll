Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-netlink-mac80211-hwsim?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
%struct._value_string_ext = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.netlink_mac80211_hwsim_info_t = type { ptr }

@proto_register_netlink_mac80211_hwsim.hf = internal global [7 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_mac80211_hwsim_attr_value, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_attr_value16, %struct._header_field_info { ptr @.str, ptr @.str.2, i32 5, i32 5, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_attr_value32, %struct._header_field_info { ptr @.str, ptr @.str.3, i32 7, i32 5, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_attr_value64, %struct._header_field_info { ptr @.str, ptr @.str.4, i32 11, i32 5, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_radio_name, %struct._header_field_info { ptr @.str.5, ptr @.str.6, i32 27, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_commands, %struct._header_field_info { ptr @.str.7, ptr @.str.8, i32 4, i32 513, ptr @ws_mac80211_hwsim_commands_vals_ext, i64 0, ptr @.str.9, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_mac80211_hwsim_attrs, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 5, i32 513, ptr @ws_mac80211_hwsim_attrs_vals_ext, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_mac80211_hwsim_attr_value = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Attribute Value\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"mac80211_hwsim.attr_value\00", align 1
@hf_mac80211_hwsim_attr_value16 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mac80211_hwsim.attr_value16\00", align 1
@hf_mac80211_hwsim_attr_value32 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"mac80211_hwsim.attr_value32\00", align 1
@hf_mac80211_hwsim_attr_value64 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"mac80211_hwsim.attr_value64\00", align 1
@hf_mac80211_hwsim_radio_name = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Radio Name\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"mac80211_hwsim.radio_name\00", align 1
@hf_mac80211_hwsim_commands = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"mac80211_hwsim.cmd\00", align 1
@ws_mac80211_hwsim_commands_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 12, ptr @ws_mac80211_hwsim_commands_vals, ptr @.str.16, ptr null }, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Generic Netlink Command\00", align 1
@hf_mac80211_hwsim_attrs = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Attribute Type\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"mac80211_hwsim.attr_type\00", align 1
@ws_mac80211_hwsim_attrs_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 30, ptr @ws_mac80211_hwsim_attrs_vals, ptr @.str.30, ptr null }, align 8
@proto_register_netlink_mac80211_hwsim.ett = internal global [5 x ptr] [ptr @ett_mac80211_hwsim, ptr @ett_mac80211_hwsim_frame, ptr @ett_mac80211_hwsim_tag, ptr @ett_mac80211_hwsim_commands, ptr @ett_mac80211_hwsim_attrs], align 16
@ett_mac80211_hwsim = internal global i32 0, align 4
@ett_mac80211_hwsim_frame = internal global i32 0, align 4
@ett_mac80211_hwsim_tag = internal global i32 0, align 4
@ett_mac80211_hwsim_commands = internal global i32 0, align 4
@ett_mac80211_hwsim_attrs = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Linux mac80211_hwsim Netlink\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"mac80211_hwsim\00", align 1
@proto_netlink_mac80211_hwsim = internal unnamed_addr global i32 0, align 4
@netlink_mac80211_hwsim_handle = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"genl.family\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"MAC80211_HWSIM\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ws_mac80211_hwsim_commands_vals\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"HWSIM_CMD_UNSPEC\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"HWSIM_CMD_REGISTER\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"HWSIM_CMD_FRAME\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"HWSIM_CMD_TX_INFO_FRAME\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"HWSIM_CMD_NEW_RADIO\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"HWSIM_CMD_DEL_RADIO\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"HWSIM_CMD_GET_RADIO\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"HWSIM_CMD_ADD_MAC_ADDR\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"HWSIM_CMD_DEL_MAC_ADDR\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"HWSIM_CMD_START_PMSR\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"HWSIM_CMD_ABORT_PMSR\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"HWSIM_CMD_REPORT_PMSR\00", align 1
@ws_mac80211_hwsim_commands_vals = internal constant [13 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.23 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.24 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.25 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.26 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.28 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [29 x i8] c"ws_mac80211_hwsim_attrs_vals\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"HWSIM_ATTR_UNSPEC\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"HWSIM_ATTR_RECEIVER\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"HWSIM_ATTR_TRANSMITTER\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"HWSIM_ATTR_FRAME\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"HWSIM_ATTR_FLAGS\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"HWSIM_ATTR_RX_RATE\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"HWSIM_ATTR_SIGNAL\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"HWSIM_ATTR_TX_INFO\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"HWSIM_ATTR_COOKIE\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"HWSIM_ATTR_ATTR_CHANNELS\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"HWSIM_ATTR_RADIO_ID\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"HWSIM_ATTR_REG_HINT_ALPHA2\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"HWSIM_ATTR_REG_CUSTOM_REG\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"HWSIM_ATTR_REG_STRICT_REG\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"HWSIM_ATTR_SUPPORT_P2P_DEVICE\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"HWSIM_ATTR_USE_CHANCTX\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"HWSIM_ATTR_DESTROY_RADIO_ON_CLOSE\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"HWSIM_ATTR_RADIO_NAME\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"HWSIM_ATTR_NO_VIF\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"HWSIM_ATTR_FREQ\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"HWSIM_ATTR_PAD\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"HWSIM_ATTR_TX_INFO_FLAGS\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"HWSIM_ATTR_PERM_ADDR\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"HWSIM_ATTR_IFTYPE_SUPPORT\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"HWSIM_ATTR_CIPHER_SUPPORT\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"HWSIM_ATTR_MLO_SUPPORT\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"HWSIM_ATTR_PMSR_SUPPORT\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"HWSIM_ATTR_PMSR_REQUEST\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"HWSIM_ATTR_PMSR_RESULT\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"HWSIM_ATTR_MULTI_RADIO\00", align 1
@ws_mac80211_hwsim_attrs_vals = internal constant [31 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.31 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.33 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.36 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.37 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.38 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.39 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.41 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.45 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.47 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.62 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"epan/dissectors/packet-netlink-mac80211-hwsim.c\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"genl_info\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_netlink_mac80211_hwsim() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) ; 2 uses
  store i32 %i.a, ptr @proto_netlink_mac80211_hwsim, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_netlink_mac80211_hwsim.hf, i32 noundef 7)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_netlink_mac80211_hwsim.ett, i32 noundef 5)
  %i.b = load i32, ptr @proto_netlink_mac80211_hwsim, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef nonnull @.str.13, ptr noundef nonnull @dissect_netlink_mac80211_hwsim, i32 noundef %i.b)
  store ptr %i.c, ptr @netlink_mac80211_hwsim_handle, align 8
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
define internal i32 @dissect_netlink_mac80211_hwsim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.netlink_mac80211_hwsim_info_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 229, ptr noundef nonnull @.str.64) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.13)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load ptr, ptr %3, align 8
  %i.e = load i32, ptr @hf_mac80211_hwsim_commands, align 4
  %i.f = tail call i32 @dissect_genl_header(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.d, i32 noundef %i.e) ; 4 uses
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.f)
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %4, align 8
  %i.h = load i32, ptr @proto_netlink_mac80211_hwsim, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.f, i32 noundef -1, i32 noundef 0)
  %i.j = load i32, ptr @ett_mac80211_hwsim, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr @hf_mac80211_hwsim_attrs, align 4
  %i.m = load i32, ptr @ett_mac80211_hwsim_attrs, align 4
  %i.n = load ptr, ptr %3, align 8
  %i.o = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull %4, ptr noundef %i.n, ptr noundef %i.k, i32 noundef %i.f, ptr noundef nonnull @dissect_mac80211_hwsim_attrs)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_netlink_mac80211_hwsim() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @netlink_mac80211_hwsim_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_genl_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_netlink_attributes_to_end(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_mac80211_hwsim_attrs(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = add i32 %6, %5                           ; 2 uses
  %i.b = icmp slt i32 %5, %i.a
  br i1 %i.b, label %dissect_value.exit.a, label %dissect_mac80211_hwsim_generic.exit

dissect_value.exit.a:                             ; preds = %bb.a
  %7 = and i32 %4, 16383
  %.not20.i = icmp eq i32 %7, 17
  br i1 %.not20.i, label %dissect_mac80211_hwsim_generic.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %dissect_value.exit.a
  switch i32 %6, label %bb.e [
    i32 0, label %dissect_mac80211_hwsim_generic.exit
    i32 2, label %dissect_mac80211_hwsim_generic.exit.sink.split
    i32 4, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %dissect_mac80211_hwsim_generic.exit.sink.split

bb.d:                                             ; preds = %bb.b
  br label %dissect_mac80211_hwsim_generic.exit.sink.split

bb.e:                                             ; preds = %bb.b
  br label %dissect_mac80211_hwsim_generic.exit.sink.split

dissect_mac80211_hwsim_generic.exit.sink.split:   ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %dissect_value.exit.a
  %hf_mac80211_hwsim_attr_value32.sink.i.sink = phi ptr [ @hf_mac80211_hwsim_radio_name, %dissect_value.exit.a ], [ @hf_mac80211_hwsim_attr_value32, %bb.c ], [ @hf_mac80211_hwsim_attr_value, %bb.e ], [ @hf_mac80211_hwsim_attr_value64, %bb.d ], [ @hf_mac80211_hwsim_attr_value16, %bb.b ]
  %i.c = load i32, ptr %hf_mac80211_hwsim_attr_value32.sink.i.sink, align 4
  %i.d = getelementptr i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.c, ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef %i.e) ; 0 uses
  br label %dissect_mac80211_hwsim_generic.exit

dissect_mac80211_hwsim_generic.exit:              ; preds = %dissect_mac80211_hwsim_generic.exit.sink.split, %bb.a, %bb.b
  %.1 = phi i32 [ %5, %bb.b ], [ %5, %bb.a ], [ %i.a, %dissect_mac80211_hwsim_generic.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
