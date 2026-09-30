Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_helper?download=true
inline.NumInlined: 307
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
@__UNIQUE_ID_addressable_drm_dp_max_dprx_data_rate_803 = internal global ptr @drm_dp_max_dprx_data_rate, section ".discard.addressable", align 8
@.str.81 = private unnamed_addr constant [12 x i8] c"DRM_UT_CORE\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"DRM_UT_DRIVER\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"DRM_UT_KMS\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"DRM_UT_PRIME\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"DRM_UT_ATOMIC\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"DRM_UT_VBL\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"DRM_UT_STATE\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"DRM_UT_LEASE\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"DRM_UT_DP\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"DRM_UT_DRMRES\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"%s: failed rd interval read\0A\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"%s: invalid AUX interval 0x%02x\0A\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"%s: invalid AUX interval 0x%02x (max 4)\0A\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"%s: Too many retries, giving up. First error: %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"%s: 0x%05x AUX %s (ret=%3d) %*ph\0A\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"%s: 0x%05x AUX %s (ret=%3d)\0A\00", align 1
@might_resched.__UNIQUE_ID_addressable___SCK__might_resched_13 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.99 = private unnamed_addr constant [57 x i8] c"%s: Extended DPCD rev less than base DPCD rev (%d > %d)\0A\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"%s: Base DPCD: %*ph\0A\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"%s: Get CRC failed after retrying: %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"%s: Failed to get a CRC: %d\0A\00", align 1
@drm_dp_i2c_do_msg.rs_ = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.drm_dp_i2c_do_msg = private unnamed_addr constant [18 x i8] c"drm_dp_i2c_do_msg\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"%s: transaction timed out\0A\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"%s: transaction failed: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"%s: native nack (result=%d, size=%zu)\0A\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"%s: native defer\0A\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"[drm] *ERROR* %s: invalid native reply %#04x\0A\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"%s: I2C nack (result=%d, size=%zu)\0A\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"%s: I2C defer\0A\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"[drm] *ERROR* %s: invalid I2C reply %#04x\0A\00", align 1
@.str.114 = private unnamed_addr constant [33 x i8] c"%s: Too many retries, giving up\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i64, align 8
@.str.115 = private unnamed_addr constant [57 x i8] c"%s: Partial I2C reply: requested %zu bytes got %d bytes\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@dpcd_quirk_list = internal constant [12 x { [3 x i8], [6 x i8], i8, [2 x i8], i32 }] [{ [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\22\B9", [6 x i8] zeroinitializer, i8 1, [2 x i8] zeroinitializer, i32 1 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\22\B9", [6 x i8] c"sivarT", i8 0, [2 x i8] zeroinitializer, i32 1 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\10\FA", [6 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer, i32 2 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] zeroinitializer, [6 x i8] c"CH7511", i8 0, [2 x i8] zeroinitializer, i32 4 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\90\CC$", [6 x i8] zeroinitializer, i8 1, [2 x i8] zeroinitializer, i32 8 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\E0L", [6 x i8] c"Dp1.4\00", i8 1, [2 x i8] zeroinitializer, i32 8 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\90\CC$", [6 x i8] zeroinitializer, i8 1, [2 x i8] zeroinitializer, i32 32 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\0C\E7", [6 x i8] zeroinitializer, i8 0, [2 x i8] zeroinitializer, i32 32 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\00\10\FA", [6 x i8] c"eD\15eba", i8 0, [2 x i8] zeroinitializer, i32 16 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\90\CC$", [6 x i8] c"SYNAS\22", i8 1, [2 x i8] zeroinitializer, i32 64 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\90\CC$", [6 x i8] c"SYNAS1", i8 1, [2 x i8] zeroinitializer, i32 64 }, { [3 x i8], [6 x i8], i8, [2 x i8], i32 } { [3 x i8] c"\90\CC$", [6 x i8] c"SYNAS3", i8 1, [2 x i8] zeroinitializer, i32 64 }], align 16
@.str.117 = private unnamed_addr constant [71 x i8] c"%s: %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d quirks 0x%04x\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"Audio_TimeStamp\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"Audio_Stream\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"Extension\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"Audio_CopyManagement\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"ISRC\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"VSC\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"PPS\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"VSC_EXT_VESA\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"VSC_EXT_CEA\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"Adaptive-Sync\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"YUV444\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"YUV422\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"YUV420\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"Y_ONLY\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"BT.601\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"DICOM PS3.14\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"Custom Color Profile\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"Wide Fixed\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"BT.709\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"Wide Float\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"xvYCC 601\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"OpRGB\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"xvYCC 709\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"DCI-P3\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"sYCC 601\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"Custom Profile\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"OpYCC 601\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"BT.2020 RGB\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"BT.2020 CYCC\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"BT.2020 YCC\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"VESA range\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"CTA range\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"Not defined\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"Photo\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.161 = private unnamed_addr constant [67 x i8] c"[drm] *ERROR* %s: Failed to read eDP display control register: %d\0A\00", align 1
@.str.162 = private unnamed_addr constant [68 x i8] c"[drm] *ERROR* %s: Failed to write eDP display control register: %d\0A\00", align 1
@.str.163 = private unnamed_addr constant [45 x i8] c"%s: Failed to read pwmgen bit count cap: %d\0A\00", align 1
@.str.164 = private unnamed_addr constant [49 x i8] c"%s: Failed to read pwmgen bit count cap min: %d\0A\00", align 1
@.str.165 = private unnamed_addr constant [49 x i8] c"%s: Failed to read pwmgen bit count cap max: %d\0A\00", align 1
@.str.166 = private unnamed_addr constant [58 x i8] c"%s: Invalid pwmgen bit count cap min/max returned: %d %d\0A\00", align 1
@.str.167 = private unnamed_addr constant [58 x i8] c"%s: Driver defined backlight frequency (%d) out of range\0A\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"%s: Using backlight frequency from driver (%dHz)\0A\00", align 1
@.str.169 = private unnamed_addr constant [39 x i8] c"%s: Failed to read backlight mode: %d\0A\00", align 1
@.str.170 = private unnamed_addr constant [40 x i8] c"%s: Failed to read backlight level: %d\0A\00", align 1
@dp_aux_bl_ops = internal constant { i32, [4 x i8], ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @dp_aux_backlight_update_status, ptr null, ptr null }, align 8
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_cds_interlane_align_done_655, ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_eq_interlane_align_done_654, ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_lane_channel_eq_done_652, ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_lane_symbol_locked_653, ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_link_training_failed_656, ptr @__UNIQUE_ID_addressable_drm_dp_128b132b_read_aux_rd_interval_659, ptr @__UNIQUE_ID_addressable_drm_dp_as_sdp_log_760, ptr @__UNIQUE_ID_addressable_drm_dp_as_sdp_supported_761, ptr @__UNIQUE_ID_addressable_drm_dp_aux_init_728, ptr @__UNIQUE_ID_addressable_drm_dp_aux_register_731, ptr @__UNIQUE_ID_addressable_drm_dp_aux_unregister_732, ptr @__UNIQUE_ID_addressable_drm_dp_bw_channel_coding_efficiency_802, ptr @__UNIQUE_ID_addressable_drm_dp_bw_code_to_link_rate_669, ptr @__UNIQUE_ID_addressable_drm_dp_bw_overhead_801, ptr @__UNIQUE_ID_addressable_drm_dp_channel_eq_ok_646, ptr @__UNIQUE_ID_addressable_drm_dp_clock_recovery_ok_647, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_420_passthrough_698, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_444_to_420_conversion_699, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_debug_703, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_id_702, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_is_tmds_690, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_is_type_689, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_max_bpc_697, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_max_dotclock_694, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_max_tmds_clock_695, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_min_tmds_clock_696, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_mode_701, ptr @__UNIQUE_ID_addressable_drm_dp_downstream_rgb_to_ycbcr_conversion_700, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_clear_payload_687, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_poll_act_handled_688, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_probe_675, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_read_680, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_read_link_status_682, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_read_phy_link_status_683, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_set_powered_676, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_set_probe_678, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_write_681, ptr @__UNIQUE_ID_addressable_drm_dp_dpcd_write_payload_686, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_branch_max_line_width_747, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_branch_max_overall_throughput_746, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_bpp_incr_739, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_line_buf_depth_743, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_max_slice_count_742, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_max_slice_throughput_745, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_slice_count_mask_741, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_sink_supported_input_bpcs_744, ptr @__UNIQUE_ID_addressable_drm_dp_dsc_slice_count_to_mask_740, ptr @__UNIQUE_ID_addressable_drm_dp_dump_lttpr_desc_738, ptr @__UNIQUE_ID_addressable_drm_dp_get_adjust_request_pre_emphasis_650, ptr @__UNIQUE_ID_addressable_drm_dp_get_adjust_request_voltage_649, ptr @__UNIQUE_ID_addressable_drm_dp_get_adjust_tx_ffe_preset_651, ptr @__UNIQUE_ID_addressable_drm_dp_get_pcon_max_frl_bw_765, ptr @__UNIQUE_ID_addressable_drm_dp_get_phy_test_pattern_757, ptr @__UNIQUE_ID_addressable_drm_dp_link_power_down_685, ptr @__UNIQUE_ID_addressable_drm_dp_link_power_up_684, ptr @__UNIQUE_ID_addressable_drm_dp_link_rate_to_bw_code_668, ptr @__UNIQUE_ID_addressable_drm_dp_link_symbol_cycles_798, ptr @__UNIQUE_ID_addressable_drm_dp_link_train_channel_eq_delay_661, ptr @__UNIQUE_ID_addressable_drm_dp_link_train_clock_recovery_delay_660, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_count_750, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_init_753, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_link_train_channel_eq_delay_666, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_link_train_clock_recovery_delay_665, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_max_lane_count_754, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_max_link_rate_751, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_pre_emphasis_level_3_supported_756, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_set_transparent_mode_752, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_voltage_swing_level_3_supported_755, ptr @__UNIQUE_ID_addressable_drm_dp_lttpr_wake_timeout_setup_667, ptr @__UNIQUE_ID_addressable_drm_dp_max_dprx_data_rate_803, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_convert_rgb_to_ycbcr_782, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_dsc_bpp_incr_778, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_dsc_max_slice_width_777, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_dsc_max_slices_776, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_enc_is_dsc_1_2_775, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_frl_configure_1_768, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_frl_configure_2_769, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_frl_enable_771, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_frl_prepare_766, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_hdmi_frl_link_error_count_774, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_hdmi_link_active_772, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_hdmi_link_mode_773, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_is_frl_ready_767, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_pps_default_779, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_pps_override_buf_780, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_pps_override_param_781, ptr @__UNIQUE_ID_addressable_drm_dp_pcon_reset_frl_config_770, ptr @__UNIQUE_ID_addressable_drm_dp_phy_name_664, ptr @__UNIQUE_ID_addressable_drm_dp_post_lt_adj_req_in_progress_648, ptr @__UNIQUE_ID_addressable_drm_dp_psr_setup_time_733, ptr @__UNIQUE_ID_addressable_drm_dp_read_channel_eq_delay_658, ptr @__UNIQUE_ID_addressable_drm_dp_read_clock_recovery_delay_657, ptr @__UNIQUE_ID_addressable_drm_dp_read_desc_736, ptr @__UNIQUE_ID_addressable_drm_dp_read_downstream_info_693, ptr @__UNIQUE_ID_addressable_drm_dp_read_dpcd_caps_692, ptr @__UNIQUE_ID_addressable_drm_dp_read_lttpr_common_caps_748, ptr @__UNIQUE_ID_addressable_drm_dp_read_lttpr_phy_caps_749, ptr @__UNIQUE_ID_addressable_drm_dp_read_sink_count_707, ptr @__UNIQUE_ID_addressable_drm_dp_read_sink_count_cap_706, ptr @__UNIQUE_ID_addressable_drm_dp_remote_aux_init_727, ptr @__UNIQUE_ID_addressable_drm_dp_send_real_edid_checksum_691, ptr @__UNIQUE_ID_addressable_drm_dp_set_phy_test_pattern_758, ptr @__UNIQUE_ID_addressable_drm_dp_set_subconnector_property_705, ptr @__UNIQUE_ID_addressable_drm_dp_start_crc_734, ptr @__UNIQUE_ID_addressable_drm_dp_stop_crc_735, ptr @__UNIQUE_ID_addressable_drm_dp_subconnector_type_704, ptr @__UNIQUE_ID_addressable_drm_dp_vsc_sdp_log_759, ptr @__UNIQUE_ID_addressable_drm_dp_vsc_sdp_pack_764, ptr @__UNIQUE_ID_addressable_drm_dp_vsc_sdp_supported_762, ptr @__UNIQUE_ID_addressable_drm_edp_backlight_disable_785, ptr @__UNIQUE_ID_addressable_drm_edp_backlight_enable_784, ptr @__UNIQUE_ID_addressable_drm_edp_backlight_init_796, ptr @__UNIQUE_ID_addressable_drm_edp_backlight_set_level_783, ptr @__UNIQUE_ID_addressable_drm_panel_dp_aux_backlight_797, ptr @__UNIQUE_ID_modinfo_708, ptr @__UNIQUE_ID_modinfo_709, ptr @__UNIQUE_ID_modinfo_713, ptr @__UNIQUE_ID_modinfo_714, ptr @__param_dp_aux_i2c_speed_khz, ptr @__param_dp_aux_i2c_transfer_size, ptr @drm_debug_classes, ptr @drm_dp_dump_lttpr_desc.__UNIQUE_ID_addressable___SCK__WARN_trap_737, ptr @drm_dp_vsc_sdp_pack.__UNIQUE_ID_addressable___SCK__WARN_trap_763, ptr @might_resched.__UNIQUE_ID_addressable___SCK__might_resched_13], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @drm_dp_channel_eq_ok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.09 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.f = lshr i32 %.09, 1
  %i.g = shl i32 %.09, 2
  %i.h = and i32 %i.g, 4
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = lshr i32 %i.l, %i.h
  %i.n = and i32 %i.m, 7
  %.not = icmp eq i32 %i.n, 7                     ; 2 uses
  %i.o = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.o, %1
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not, %.lr.ph ]
  ret i1 %.08
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @drm_dp_clock_recovery_ok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.b = lshr i32 %.07, 1
  %i.c = shl i32 %.07, 2
  %i.d = and i32 %i.c, 4
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 1, %i.d
  %i.j = and i32 %i.i, %i.h
  %.not = icmp ne i32 %i.j, 0                     ; 2 uses
  %i.k = add nuw nsw i32 %.07, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.k, %1
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_post_lt_adj_req_in_progress(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext range(i8 0, 4) i8 @drm_dp_get_adjust_request_voltage(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = shl i32 %1, 2
  %i.c = and i32 %i.b, 4
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = lshr i32 %i.h, %i.c
  %i.j = trunc nuw i32 %i.i to i8
  %i.k = and i8 %i.j, 3
  ret i8 %i.k
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext range(i8 0, 25) i8 @drm_dp_get_adjust_request_pre_emphasis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = ashr i32 %1, 1
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 4
  %4 = or disjoint i32 %3, 2
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = load i8, ptr %i.d, align 1
  %5 = zext i8 %i.e to i32
  %6 = lshr i32 %5, %4
  %.tr = trunc nuw nsw i32 %6 to i8
  %i.f = shl i8 %.tr, 3
  %i.g = and i8 %i.f, 24
  ret i8 %i.g
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext range(i8 0, 16) i8 @drm_dp_get_adjust_tx_ffe_preset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = shl i32 %1, 2
  %i.c = and i32 %i.b, 4
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = lshr i32 %i.h, %i.c
  %i.j = trunc nuw i32 %i.i to i8
  %i.k = and i8 %i.j, 15
  ret i8 %i.k
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @drm_dp_128b132b_lane_channel_eq_done(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.010 = phi i32 [ %i.n, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.e = lshr i32 %.010, 1
  %i.f = shl i32 %.010, 2
  %i.g = and i32 %i.f, 4
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 2, %i.g
  %i.m = and i32 %i.l, %i.k
  %.not9.not = icmp ne i32 %i.m, 0                ; 2 uses
  %i.n = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp ne i32 %i.n, %1
  %or.cond.not = select i1 %.not9.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not9.not, %.lr.ph ]
  ret i1 %.08
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @drm_dp_128b132b_lane_symbol_locked(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.b = lshr i32 %.07, 1
  %i.c = shl i32 %.07, 2
  %i.d = and i32 %i.c, 4
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 4, %i.d
  %i.j = and i32 %i.i, %i.h
  %.not.not = icmp ne i32 %i.j, 0                 ; 2 uses
  %i.k = add nuw nsw i32 %.07, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.k, %1
  %or.cond.not = select i1 %.not.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_128b132b_eq_interlane_align_done(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 4
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_128b132b_cds_interlane_align_done(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_128b132b_link_training_failed(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 16
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_dp_read_clock_recovery_delay(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__read_delay(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext true) #17, !srcloc !24
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__read_delay(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !annotation !14
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.j, label %.thread28

bb.d:                                             ; preds = %bb.b
  br i1 %4, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp ugt i8 %i.c, 19
  br i1 %i.d, label %bb.j, label %.thread

bb.f:                                             ; preds = %bb.a
  %.not = xor i1 %4, true
  %brmerge = or i1 %3, %.not
  br i1 %brmerge, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %__128b132b_channel_eq_delay_us.mux = select i1 %3, ptr @__128b132b_channel_eq_delay_us, ptr @__8b10b_channel_eq_delay_us ; 2 uses
  %.mux = select i1 %3, i32 982994, i32 982992
  %i.e = mul i32 %2, 80
  %i.f = add i32 %i.e, %.mux                      ; 3 uses
  %i.g = icmp ult i32 %i.f, 15
  br i1 %i.g, label %.thread, label %.thread28

.thread:                                          ; preds = %bb.e, %bb.d, %bb.g
  %.02027 = phi i32 [ %i.f, %bb.g ], [ 14, %bb.d ], [ 14, %bb.e ]
  %.02126 = phi ptr [ %__128b132b_channel_eq_delay_us.mux, %bb.g ], [ @__8b10b_channel_eq_delay_us, %bb.d ], [ @__8b10b_clock_recovery_delay_us, %bb.e ]
  %i.h = zext nneg i32 %.02027 to i64
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  store i8 %i.j, ptr %i.a, align 1
  br label %drm_dp_dpcd_read_byte.exit.thread34

.thread28:                                        ; preds = %bb.c, %bb.g
  %.02032 = phi i32 [ %i.f, %bb.g ], [ 8726, %bb.c ] ; 2 uses
  %.02131 = phi ptr [ %__128b132b_channel_eq_delay_us.mux, %bb.g ], [ @__128b132b_channel_eq_delay_us, %bb.c ] ; 2 uses
  %i.k = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %.02032, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.h, label %drm_dp_dpcd_read_byte.exit

bb.h:                                             ; preds = %.thread28
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread34

drm_dp_dpcd_read_byte.exit:                       ; preds = %.thread28
  %i.n = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %.02032, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread34

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.h, %drm_dp_dpcd_read_byte.exit
  %i.p = getelementptr i8, ptr %0, i64 1080
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.i

bb.i:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %drm_dp_dpcd_read_byte.exit.thread, %bb.i
  %i.t = phi ptr [ %i.s, %bb.i ], [ null, %drm_dp_dpcd_read_byte.exit.thread ]
  %i.u = load ptr, ptr %0, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.t, i32 noundef 2, ptr noundef nonnull @.str.91, ptr noundef %i.u) #19
  br label %bb.j

drm_dp_dpcd_read_byte.exit.thread34:              ; preds = %bb.h, %drm_dp_dpcd_read_byte.exit, %.thread
end_hunk_0
