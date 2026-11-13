Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipmi-chassis?download=true
begin_hunk_0
@rq02.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_02_cctrl, ptr null], align 16
@rq04.byte2 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_04_perm_on, ptr null], align 16
@.str.287 = private unnamed_addr constant [8 x i8] c"Flags: \00", align 1
@rq05.byte1 = internal constant [3 x ptr] [ptr @hf_ipmi_chs_05_flags_fpl, ptr @hf_ipmi_chs_05_flags_intrusion, ptr null], align 16
@rq06.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_06_rq_policy, ptr null], align 16
@rs06.byte1 = internal constant [4 x ptr] [ptr @hf_ipmi_chs_06_rs_policy_support_powerup, ptr @hf_ipmi_chs_06_rs_policy_support_restore, ptr @hf_ipmi_chs_06_rs_policy_support_poweroff, ptr null], align 16
@.str.288 = private unnamed_addr constant [31 x i8] c"Power Restore Policy support: \00", align 1
@rs07.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_07_cause, ptr null], align 16
@boot_options = internal unnamed_addr constant [8 x %struct.anon] [%struct.anon { ptr @bootopt_00, ptr @.str }, %struct.anon { ptr @bootopt_01, ptr @.str.2 }, %struct.anon { ptr @bootopt_02, ptr @.str.291 }, %struct.anon { ptr @bootopt_03, ptr @.str.292 }, %struct.anon { ptr @bootopt_04, ptr @.str.293 }, %struct.anon { ptr @bootopt_05, ptr @.str.294 }, %struct.anon { ptr @bootopt_06, ptr @.str.295 }, %struct.anon { ptr @bootopt_07, ptr @.str.296 }], align 16
@.str.289 = private unnamed_addr constant [44 x i8] c"Boot option parameter selector: %s (0x%02x)\00", align 1
@.str.290 = private unnamed_addr constant [19 x i8] c"Parameter data: %s\00", align 1
@.str.291 = private unnamed_addr constant [23 x i8] c"Service Partition Scan\00", align 1
@.str.292 = private unnamed_addr constant [33 x i8] c"BMC boot flag valid bit clearing\00", align 1
@.str.293 = private unnamed_addr constant [22 x i8] c"Boot info acknowledge\00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"Boot flags\00", align 1
@.str.295 = private unnamed_addr constant [20 x i8] c"Boot initiator info\00", align 1
@.str.296 = private unnamed_addr constant [23 x i8] c"Boot initiator mailbox\00", align 1
@bootopt_00.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_bo00_sip, ptr null], align 16
@bootopt_02.byte1 = internal constant [3 x ptr] [ptr @hf_ipmi_chs_bo02_request, ptr @hf_ipmi_chs_bo02_discovered, ptr null], align 16
@.str.297 = private unnamed_addr constant [25 x i8] c"Service partition scan: \00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"Not discovered\00", align 1
@bootopt_03.byte1 = internal constant [6 x ptr] [ptr @hf_ipmi_chs_bo03_pef, ptr @hf_ipmi_chs_bo03_cctrl_timeout, ptr @hf_ipmi_chs_bo03_wd_timeout, ptr @hf_ipmi_chs_bo03_softreset, ptr @hf_ipmi_chs_bo03_powerup, ptr null], align 16
@.str.299 = private unnamed_addr constant [38 x i8] c"BMC boot flag valid, don't clear on: \00", align 1
@bootopt_04.byte2 = internal constant [6 x ptr] [ptr @hf_ipmi_chs_bo04_bootinit_ack_oem, ptr @hf_ipmi_chs_bo04_bootinit_ack_sms, ptr @hf_ipmi_chs_bo04_bootinit_ack_os, ptr @hf_ipmi_chs_bo04_bootinit_ack_osloader, ptr @hf_ipmi_chs_bo04_bootinit_ack_bios, ptr null], align 16
@.str.300 = private unnamed_addr constant [34 x i8] c"Boot Initiator Acknowledge data: \00", align 1
@bootopt_05.byte1 = internal constant [4 x ptr] [ptr @hf_ipmi_chs_bo05_bootflags_valid, ptr @hf_ipmi_chs_bo05_permanent, ptr @hf_ipmi_chs_bo05_boottype, ptr null], align 16
@bootopt_05.byte2 = internal constant [6 x ptr] [ptr @hf_ipmi_chs_bo05_cmos_clear, ptr @hf_ipmi_chs_bo05_lock_kbd, ptr @hf_ipmi_chs_bo05_bootdev, ptr @hf_ipmi_chs_bo05_screen_blank, ptr @hf_ipmi_chs_bo05_lockout_reset, ptr null], align 16
@bootopt_05.byte3 = internal constant [7 x ptr] [ptr @hf_ipmi_chs_bo05_lockout_poweroff, ptr @hf_ipmi_chs_bo05_bios_verbosity, ptr @hf_ipmi_chs_bo05_progress_traps, ptr @hf_ipmi_chs_bo05_pwd_bypass, ptr @hf_ipmi_chs_bo05_lock_sleep, ptr @hf_ipmi_chs_bo05_console_redirection, ptr null], align 16
@bootopt_05.byte4 = internal constant [3 x ptr] [ptr @hf_ipmi_chs_bo05_bios_shared_override, ptr @hf_ipmi_chs_bo05_bios_muxctl_override, ptr null], align 16
@bootopt_06.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_bo06_chan_num, ptr null], align 16
@.str.301 = private unnamed_addr constant [24 x i8] c"Parameter not supported\00", align 1
@.str.302 = private unnamed_addr constant [98 x i8] c"Attempt to set the 'set in progress' value (in parameter #0) when not in the 'set complete' state\00", align 1
@.str.303 = private unnamed_addr constant [37 x i8] c"Attempt to write read-only parameter\00", align 1
@cc08 = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.302 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.303 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@rs09.byte1 = internal constant [2 x ptr] [ptr @hf_ipmi_chs_09_rs_param_version, ptr null], align 16
@cc09 = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_ipmi_chassis() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_ipmi, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_ipmi_chassis.hf, i32 noundef 99)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_ipmi_chassis.ett, i32 noundef 24)
  tail call void @ipmi_register_netfn_cmdtab(i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef @cmd_chassis, i32 noundef 13)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @ipmi_fmt_channel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @ipmi_fmt_1s_1based(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ipmi_register_netfn_cmdtab(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs00(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_00_capflags, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.281, ptr noundef @.str.282, i32 noundef %i.a, ptr noundef @rs00.byte1, i32 noundef -2147483648, i32 noundef 8) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_00_fru_dev_addr, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_chs_00_sdr_dev_addr, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ipmi_chs_00_sel_dev_addr, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = load i32, ptr @hf_ipmi_chs_00_sm_dev_addr, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = icmp ugt i32 %i.k, 4
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_ipmi_chs_00_bridge_dev_addr, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs01(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_01_pwr_state, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.283, ptr noundef null, i32 noundef %i.a, ptr noundef @rs01.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @ett_ipmi_chs_01_last_event, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef @.str.284, ptr noundef null, i32 noundef %i.c, ptr noundef @rs01.byte2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @ett_ipmi_chs_01_misc, align 4
  %i.f = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef 1, ptr noundef @.str.285, ptr noundef null, i32 noundef %i.e, ptr noundef @rs01.byte3, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.h = icmp ugt i32 %i.g, 3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @ett_ipmi_chs_01_fpb, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef @.str.286, ptr noundef null, i32 noundef %i.i, ptr noundef @rs01.byte4, i32 noundef -2147483648, i32 noundef 8) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq02(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_02_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @rq02.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq04(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ipmi_chs_04_ival, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @ett_ipmi_chs_04_byte2, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef @.str.287, ptr noundef @.str.282, i32 noundef %i.f, ptr noundef @rq04.byte2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq05(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_05_flags, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.281, ptr noundef @.str.282, i32 noundef %i.a, ptr noundef @rq05.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_05_fru_dev_addr, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_chs_05_sdr_dev_addr, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ipmi_chs_05_sel_dev_addr, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = load i32, ptr @hf_ipmi_chs_05_sm_dev_addr, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = icmp ugt i32 %i.k, 5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_ipmi_chs_05_bridge_dev_addr, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq06(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_06_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @rq06.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs06(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_06_policy_support, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef @.str.288, ptr noundef @.str.282, i32 noundef %i.a, ptr noundef @rs06.byte1, i32 noundef -2147483648, i32 noundef 8) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs07(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_07_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @rs07.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_07_chan, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq08(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = and i8 %i.a, 127                         ; 4 uses
  %3 = zext nneg i8 %i.b to i64                   ; 2 uses
  %i.c = icmp samesign ult i8 %i.b, 8             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr [16 x i8], ptr @boot_options, i64 %3
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i8 %i.b, 95
  %.str.20..str.194 = select i1 %i.g, ptr @.str.20, ptr @.str.194
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %.str.20..str.194, %bb.c ] ; 3 uses
  %i.h = load i32, ptr @ett_ipmi_chs_08_byte1, align 4
  %i.i = zext nneg i8 %i.b to i32                 ; 3 uses
  %i.j = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.h, ptr noundef null, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.i) ; 2 uses
  %i.k = load i32, ptr @hf_ipmi_chs_08_valid, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_ipmi_chs_08_selector, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.j, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.i, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.i) ; 0 uses
  %i.o = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %4 = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 1)
  %5 = getelementptr [16 x i8], ptr @boot_options, i64 %3
  %6 = load ptr, ptr %5, align 16
  tail call void %6(ptr noundef %1, ptr noundef %4, ptr noundef %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load i32, ptr @hf_ipmi_chs_08_data, align 4
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 1, i32 noundef -1, ptr noundef @.str.290, ptr noundef %.0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rq09(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = and i8 %i.a, 127                         ; 4 uses
  %i.c = icmp samesign ult i8 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr [16 x i8], ptr @boot_options, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i8 %i.b, 95
  %.str.20..str.194 = select i1 %i.h, ptr @.str.20, ptr @.str.194
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %.str.20..str.194, %bb.c ] ; 2 uses
  %i.i = load i32, ptr @ett_ipmi_chs_09_rq_byte1, align 4
  %i.j = zext nneg i8 %i.b to i32                 ; 3 uses
  %i.k = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.i, ptr noundef null, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.j)
  %i.l = load i32, ptr @hf_ipmi_chs_09_rq_param_select, align 4
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.j, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.j) ; 0 uses
  %i.n = load i32, ptr @hf_ipmi_chs_09_rq_set_select, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.p = load i32, ptr @hf_ipmi_chs_09_rq_block_select, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs09(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.b = and i8 %i.a, 127                         ; 4 uses
  %3 = zext nneg i8 %i.b to i64                   ; 2 uses
  %i.c = icmp samesign ult i8 %i.b, 8             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr [16 x i8], ptr @boot_options, i64 %3
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i8 %i.b, 95
  %.str.20..str.194 = select i1 %i.g, ptr @.str.20, ptr @.str.194
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %.str.20..str.194, %bb.c ] ; 2 uses
  %i.h = load i32, ptr @ett_ipmi_chs_09_rs_byte1, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.h, ptr noundef @rs09.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @ett_ipmi_chs_09_rs_byte2, align 4
  %i.k = zext nneg i8 %i.b to i32                 ; 3 uses
  %i.l = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.j, ptr noundef null, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.k) ; 2 uses
  %i.m = load i32, ptr @hf_ipmi_chs_09_rs_valid, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr @hf_ipmi_chs_09_rs_param_select, align 4
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.k, ptr noundef @.str.289, ptr noundef %.0, i32 noundef %i.k) ; 0 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %4 = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 2)
  %5 = getelementptr [16 x i8], ptr @boot_options, i64 %3
  %6 = load ptr, ptr %5, align 16
  tail call void %6(ptr noundef %1, ptr noundef %4, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr @hf_ipmi_chs_09_rs_param_data, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 2, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @ipmi_notimpl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rs0f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_chs_0f_minpercnt, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_0f_counter, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_00(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_bo00_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @bootopt_00.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_01(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_chs_bo01_spsel, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_02(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_bo02_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef @.str.297, ptr noundef @.str.298, i32 noundef %i.a, ptr noundef @bootopt_02.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_03(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_bo03_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef @.str.299, ptr noundef @.str.282, i32 noundef %i.a, ptr noundef @bootopt_03.byte1, i32 noundef -2147483648, i32 noundef 8) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_04(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_chs_bo04_write_mask, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @ett_ipmi_chs_bo04_byte2, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef @.str.300, ptr noundef @.str.282, i32 noundef %i.c, ptr noundef @bootopt_04.byte2, i32 noundef -2147483648, i32 noundef 8) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_05(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_bo05_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @bootopt_05.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @ett_ipmi_chs_bo05_byte2, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.c, ptr noundef @bootopt_05.byte2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @ett_ipmi_chs_bo05_byte3, align 4
  %i.f = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 2, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.e, ptr noundef @bootopt_05.byte3, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @ett_ipmi_chs_bo05_byte4, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 3, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.g, ptr noundef @bootopt_05.byte4, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ipmi_chs_bo05_byte5, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_06(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_ipmi_chs_bo06_byte1, align 4
  %i.b = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef %i.a, ptr noundef @bootopt_06.byte1, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_bo06_session_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %1, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ipmi_chs_bo06_bootinfo_timestamp, align 4
  tail call void @ipmi_add_timestamp(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, ptr noundef %1, i32 noundef 5)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @bootopt_07(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_ipmi_chs_bo07_block_selector, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ipmi_chs_bo07_block_data, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %1, i32 noundef 1, i32 noundef -1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @ipmi_add_timestamp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
end_hunk_0
