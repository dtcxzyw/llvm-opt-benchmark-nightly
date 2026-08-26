Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp?download=true
inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0
@intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_879 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.47 = private unnamed_addr constant [94 x i8] c"drm_WARN_ON(intel_encoder_is_tc(encoder) && ((&(display)->info.__runtime_info)->ip.ver) < 30)\00", align 1
@intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_880 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.48 = private unnamed_addr constant [112 x i8] c"drm_WARN_ON((display->platform.valleyview || display->platform.cherryview) && port != PORT_B && port != PORT_C)\00", align 1
@intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_881 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.49 = private unnamed_addr constant [40 x i8] c"Adding %s connector on [ENCODER:%d:%s]\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"eDP\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@intel_dp_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr null, ptr null, ptr @intel_dp_force, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @intel_dp_connector_register, ptr @intel_dp_connector_unregister, ptr @intel_connector_destroy, ptr @intel_digital_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr @intel_digital_connector_atomic_set_property, ptr @intel_digital_connector_atomic_get_property, ptr null, ptr @intel_dp_oob_hotplug_event, ptr null }, align 8
@intel_dp_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @intel_dp_get_modes, ptr @intel_dp_detect, ptr @intel_dp_mode_valid, ptr null, ptr null, ptr null, ptr @intel_dp_connector_atomic_check, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.52 = private unnamed_addr constant [29 x i8] c"HDCP init failed, skipping.\0A\00", align 1
@.str.53 = private unnamed_addr constant [76 x i8] c"[CONNECTOR:%d:%s] Unsupported slice count (min: %d, sink supported: %*pbl)\0A\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"Unsupported slice width %d by DP DSC Sink device\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Input DSC BPC forced to %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"Cannot force DSC BPC:%d, due to DSC BPC limits\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"Forcing DSC fractional bpp\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"drm_WARN_ON(!is_power_of_2(bpp_step_x16))\00", align 1
@align_max_compressed_bpp_x16.__UNIQUE_ID_addressable___SCK__WARN_trap_792 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.59 = private unnamed_addr constant [36 x i8] c"DSC Sink Line Buffer Depth invalid\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"output_format\00", align 1
@intel_dp_dsc_sink_min_compressed_bpp.__UNIQUE_ID_addressable___SCK__WARN_trap_787 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@align_min_compressed_bpp_x16.__UNIQUE_ID_addressable___SCK__WARN_trap_788 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.61 = private unnamed_addr constant [82 x i8] c"[CONNECTOR:%d:%s] Decreasing link max bpp to %d.%04d due to DSC throughput quirk\0A\00", align 1
@intel_dp_dsc_max_sink_compressed_bppx16.__UNIQUE_ID_addressable___SCK__WARN_trap_786 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.62 = private unnamed_addr constant [48 x i8] c"clamping bpp for eDP panel to BIOS-provided %i\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.65 = private unnamed_addr constant [90 x i8] c"[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d sink-align:%d-%d)\0A\00", align 1
@.str.66 = private unnamed_addr constant [154 x i8] c"[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp %d.%04d max link_bpp %d.%04d\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.69 = private unnamed_addr constant [76 x i8] c"YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\0A\00", align 1
@intel_dp_sink_format_valid.__UNIQUE_ID_addressable___SCK__WARN_trap_764 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.71 = private unnamed_addr constant [32 x i8] c"Cannot force DSC output format\0A\00", align 1
@.str.72 = private unnamed_addr constant [57 x i8] c"drm_WARN_ON(!source_can_output(intel_dp, output_format))\00", align 1
@intel_dp_output_format.__UNIQUE_ID_addressable___SCK__WARN_trap_760 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@source_can_output.__UNIQUE_ID_addressable___SCK__WARN_trap_758 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@dfp_can_convert.__UNIQUE_ID_addressable___SCK__WARN_trap_759 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.74 = private unnamed_addr constant [32 x i8] c"DSC required but not available\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"Try DSC (fallback=%s, joiner=%s, force=%s)\0A\00", align 1
@.str.76 = private unnamed_addr constant [101 x i8] c"DP lane count %d clock %d bpp input %d compressed %d.%04d HDR %s link rate required %d available %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [69 x i8] c"drm_WARN_ON(vsc->bpc == 6 && vsc->pixelformat != DP_PIXELFORMAT_RGB)\00", align 1
@intel_dp_compute_vsc_colorimetry.__UNIQUE_ID_addressable___SCK__WARN_trap_831 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.78 = private unnamed_addr constant [40 x i8] c"couldn't set HDR metadata in infoframe\0A\00", align 1
@.str.79 = private unnamed_addr constant [95 x i8] c"drm_WARN_ON((for_get_ref && !new_conn_state->crtc) || (!for_get_ref && !old_conn_state->crtc))\00", align 1
@intel_dp_dsc_aux_ref_count.__UNIQUE_ID_addressable___SCK__WARN_trap_842 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.80 = private unnamed_addr constant [49 x i8] c"Failed to %s sink compression passthrough state\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Failed to %s sink decompression state\0A\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__const.intel_dp_init_source_oui.oui = private unnamed_addr constant [3 x i8] c"\00\AA\01", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Failed to read source OUI\0A\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Failed to write source OUI\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"PCON max rate = %d Gbps\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"Sink max rate from EDID = %d Gbps\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"MAX_FRL_BW_MASK = %u\0A\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"FRL_TRAINED_MASK = %u\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"FRL trained with : %d Gbps\0A\00", align 1
@intel_dp_pcon_get_frl_mask.bw_gbps = internal unnamed_addr constant [6 x i32] [i32 9, i32 18, i32 24, i32 32, i32 40, i32 48], align 16
@.str.89 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"Could not read DSC DPCD register 0x%x Error: %pe\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"DSC DPCD: %*ph\0A\00", align 1
@.str.93 = private unnamed_addr constant [96 x i8] c"[drm] *ERROR* [CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD with no link rates, using defaults\0A\00", align 1
@intel_dp_set_dpcd_sink_rates.quirk_rates = internal unnamed_addr constant [3 x i32] [i32 162000, i32 270000, i32 324000], align 4
@.str.94 = private unnamed_addr constant [96 x i8] c"[drm] *ERROR* [CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD max lane count (%d), using default\0A\00", align 1
@.str.95 = private unnamed_addr constant [70 x i8] c"drm_WARN_ON(!intel_dp->num_source_rates || !intel_dp->num_sink_rates)\00", align 1
@intel_dp_set_common_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_738 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.96 = private unnamed_addr constant [45 x i8] c"drm_WARN_ON(intel_dp->num_common_rates == 0)\00", align 1
@intel_dp_set_common_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_739 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.97 = private unnamed_addr constant [70 x i8] c"drm_WARN_ON(!is_power_of_2(intel_dp_max_common_lane_count(intel_dp)))\00", align 1
@intel_dp_link_config_init.__UNIQUE_ID_addressable___SCK__WARN_trap_735 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.98 = private unnamed_addr constant [307 x i8] c"drm_WARN_ON(intel_dp->num_common_rates * num_common_lane_configs > (sizeof(intel_dp->link.configs) / sizeof((intel_dp->link.configs)[0]) + ((int)sizeof(struct {_Static_assert(!(!(!__builtin_types_compatible_p(typeof((intel_dp->link.configs)), typeof(&(intel_dp->link.configs)[0])))), \22must be array\22);}))))\00", align 1
@intel_dp_link_config_init.__UNIQUE_ID_addressable___SCK__WARN_trap_736 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@intel_write_dp_sdp.__UNIQUE_ID_addressable___SCK__WARN_trap_859 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.99 = private unnamed_addr constant [21 x i8] c"drm_WARN_ON(len < 0)\00", align 1
@intel_write_dp_sdp.__UNIQUE_ID_addressable___SCK__WARN_trap_860 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.100 = private unnamed_addr constant [52 x i8] c"buffer size is smaller than hdr metadata infoframe\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"wrong static hdr metadata size\0A\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Failed to unpack DP VSC SDP\0A\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"sdp->db[17] & 0x7\00", align 1
@intel_dp_vsc_sdp_unpack.__UNIQUE_ID_addressable___SCK__WARN_trap_861 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.104 = private unnamed_addr constant [48 x i8] c"Failed to unpack DP HDR Metadata Infoframe SDP\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"Failed to unpack DP AS SDP\0A\00", align 1
@.str.106 = private unnamed_addr constant [96 x i8] c"drm_WARN_ON(!wait_for_completion_timeout(&conn_state->commit->hw_done, msecs_to_jiffies(5000)))\00", align 1
@wait_for_connector_hw_done.__UNIQUE_ID_addressable___SCK__WARN_trap_866 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.107 = private unnamed_addr constant [45 x i8] c"[ENCODER:%d:%s] retraining link (forced %s)\0A\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"[ENCODER:%d:%s] link retraining failed: %pe\0A\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"[ENCODER:%d:%s] %s link not ok, retraining\0A\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"128b/132b\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"8b/10b\00", align 1
@might_resched.__UNIQUE_ID_addressable___SCK__might_resched_56 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.112 = private unnamed_addr constant [44 x i8] c"failed to get ESI - device may have failed\0A\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"DPRX ESI: %4ph\0A\00", align 1
@.str.114 = private unnamed_addr constant [56 x i8] c"drm_WARN_ON(ack[1] & ~((1 << 2) | (1 << 4) | (1 << 5)))\00", align 1
@intel_dp_check_mst_status.__UNIQUE_ID_addressable___SCK__WARN_trap_863 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.115 = private unnamed_addr constant [56 x i8] c"drm_WARN_ON(ack[3] & ~((1 << 0) | (1 << 1) | (1 << 5)))\00", align 1
@intel_dp_check_mst_status.__UNIQUE_ID_addressable___SCK__WARN_trap_864 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.116 = private unnamed_addr constant [19 x i8] c"Failed to ack ESI\0A\00", align 1
@.str.117 = private unnamed_addr constant [44 x i8] c"DPRX ESI not clearing, device may be stuck\0A\00", align 1
@.str.118 = private unnamed_addr constant [117 x i8] c"drm_WARN_ON(irq_mask & ~(((1 << 0) | (1 << 1) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 0) | (1 << 1) | (1 << 5))))\00", align 1
@intel_dp_handle_link_service_irq.__UNIQUE_ID_addressable___SCK__WARN_trap_869 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.119 = private unnamed_addr constant [65 x i8] c"[CONNECTOR:%d:%s][ENCODER:%d:%s] Allowing connected off request\0A\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\0A\00", align 1
@.str.121 = private unnamed_addr constant [58 x i8] c"drm_WARN_ON(irq_mask & ~((1 << 1) | (1 << 2) | (1 << 6)))\00", align 1
@intel_dp_handle_device_service_irq.__UNIQUE_ID_addressable___SCK__WARN_trap_868 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.122 = private unnamed_addr constant [29 x i8] c"Sink specific irq unhandled\0A\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"[CONNECTOR:%d:%s] VRR capable: %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [93 x i8] c"[CONNECTOR:%d:%s] DFP max bpc %d, max dotclock %d, TMDS clock %d-%d, PCON Max FRL BW %dGbps\0A\00", align 1
@.str.126 = private unnamed_addr constant [49 x i8] c"[drm] *ERROR* Failed to read DPCD register 0x%x\0A\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"PCON ENCODER DSC DPCD: %*ph\0A\00", align 1
@.str.128 = private unnamed_addr constant [105 x i8] c"[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"registering %s bus for %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [81 x i8] c"drm_WARN_ON(!drm_modeset_is_locked(&display->drm->mode_config.connection_mutex))\00", align 1
@intel_dp_detect.__UNIQUE_ID_addressable___SCK__WARN_trap_875 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.131 = private unnamed_addr constant [39 x i8] c"drm_WARN_ON(intel_dp_is_edp(intel_dp))\00", align 1
@intel_dp_detect_dpcd.__UNIQUE_ID_addressable___SCK__WARN_trap_872 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.132 = private unnamed_addr constant [35 x i8] c"Broken DP branch device, ignoring\0A\00", align 1
@.str.133 = private unnamed_addr constant [77 x i8] c"[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s -> enable: %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"SST w/ sideband messaging\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"SST\00", align 1
@.str.137 = private unnamed_addr constant [42 x i8] c"MST device may have disappeared %d vs %d\0A\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"source rates: %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"sink rates: %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"common rates: %s\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i64, align 8
@.str.141 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"drm_WARN_ON(transcoders != 0)\00", align 1
@intel_modeset_affected_transcoders.__UNIQUE_ID_addressable___SCK__WARN_trap_877 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.145 = private unnamed_addr constant [89 x i8] c"drm_WARN_ON(!((((display)->pch_type) == PCH_IBX) || (((display)->pch_type) == PCH_CPT)))\00", align 1
@intel_edp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_878 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.146 = private unnamed_addr constant [46 x i8] c"[drm] LVDS was detected, not registering eDP\0A\00", align 1
@.str.147 = private unnamed_addr constant [51 x i8] c"[drm] [ENCODER:%d:%s] unusable PPS, disabling eDP\0A\00", align 1
@.str.148 = private unnamed_addr constant [67 x i8] c"[drm] [ENCODER:%d:%s] failed to retrieve link info, disabling eDP\0A\00", align 1
@.str.149 = private unnamed_addr constant [50 x i8] c"[drm] [ENCODER:%d:%s] HPD is down, disabling eDP\0A\00", align 1
@.str.150 = private unnamed_addr constant [61 x i8] c"[drm] [ENCODER:%d:%s] VGA converter detected, disabling eDP\0A\00", align 1
@.str.151 = private unnamed_addr constant [39 x i8] c"[CONNECTOR:%d:%s] Using OpRegion EDID\0A\00", align 1
@.str.152 = private unnamed_addr constant [78 x i8] c"[drm] [ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\0A\00", align 1
@.str.153 = private unnamed_addr constant [40 x i8] c"drm_WARN_ON(intel_dp->dpcd[0x000] != 0)\00", align 1
@intel_edp_init_dpcd.__UNIQUE_ID_addressable___SCK__WARN_trap_857 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.154 = private unnamed_addr constant [16 x i8] c"eDP DPCD: %*ph\0A\00", align 1
@.str.155 = private unnamed_addr constant [62 x i8] c"Unable to read eDP supported link rates, using default rates\0A\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"[drm] *ERROR* Failed to read MSO cap\0A\00", align 1
@.str.157 = private unnamed_addr constant [45 x i8] c"[drm] *ERROR* Invalid MSO link count cap %u\0A\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"Sink MSO %ux%u configuration, pixel overlap %u\0A\00", align 1
@.str.159 = private unnamed_addr constant [48 x i8] c"[drm] *ERROR* No source MSO support, disabling\0A\00", align 1
@.str.160 = private unnamed_addr constant [91 x i8] c"[CONNECTOR:%d:%s] using generated MSO mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@intel_dp_set_source_rates.bmg_rates = internal constant [11 x i32] [i32 162000, i32 216000, i32 243000, i32 270000, i32 324000, i32 432000, i32 540000, i32 675000, i32 810000, i32 1000000, i32 1350000], align 16
@intel_dp_set_source_rates.mtl_rates = internal constant [11 x i32] [i32 162000, i32 216000, i32 243000, i32 270000, i32 324000, i32 432000, i32 540000, i32 675000, i32 810000, i32 1000000, i32 2000000], align 16
@intel_dp_set_source_rates.icl_rates = internal constant [10 x i32] [i32 162000, i32 216000, i32 270000, i32 324000, i32 432000, i32 540000, i32 648000, i32 810000, i32 1000000, i32 1350000], align 16
@intel_dp_set_source_rates.bxt_rates = internal constant [7 x i32] [i32 162000, i32 216000, i32 243000, i32 270000, i32 324000, i32 432000, i32 540000], align 16
@intel_dp_set_source_rates.skl_rates = internal constant [6 x i32] [i32 162000, i32 216000, i32 270000, i32 324000, i32 432000, i32 540000], align 16
@intel_dp_set_source_rates.hsw_rates = internal constant [3 x i32] [i32 162000, i32 270000, i32 540000], align 4
@intel_dp_set_source_rates.g4x_rates = internal constant [2 x i32] [i32 162000, i32 270000], align 4
@.str.161 = private unnamed_addr constant [66 x i8] c"drm_WARN_ON(intel_dp->source_rates || intel_dp->num_source_rates)\00", align 1
@intel_dp_set_source_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_729 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.162 = private unnamed_addr constant [37 x i8] c"guardband %d < min sdp guardband %d\0A\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_modinfo_693, ptr @align_max_compressed_bpp_x16.__UNIQUE_ID_addressable___SCK__WARN_trap_792, ptr @align_min_compressed_bpp_x16.__UNIQUE_ID_addressable___SCK__WARN_trap_788, ptr @dfp_can_convert.__UNIQUE_ID_addressable___SCK__WARN_trap_759, ptr @intel_dp_check_mst_status.__UNIQUE_ID_addressable___SCK__WARN_trap_863, ptr @intel_dp_check_mst_status.__UNIQUE_ID_addressable___SCK__WARN_trap_864, ptr @intel_dp_common_rate.__UNIQUE_ID_addressable___SCK__WARN_trap_701, ptr @intel_dp_compute_min_hblank.__UNIQUE_ID_addressable___SCK__WARN_trap_835, ptr @intel_dp_compute_vsc_colorimetry.__UNIQUE_ID_addressable___SCK__WARN_trap_831, ptr @intel_dp_configure_protocol_converter.__UNIQUE_ID_addressable___SCK__WARN_trap_855, ptr @intel_dp_configure_protocol_converter.__UNIQUE_ID_addressable___SCK__WARN_trap_856, ptr @intel_dp_connector_sync_state.__UNIQUE_ID_addressable___SCK__WARN_trap_876, ptr @intel_dp_detect.__UNIQUE_ID_addressable___SCK__WARN_trap_875, ptr @intel_dp_detect_dpcd.__UNIQUE_ID_addressable___SCK__WARN_trap_872, ptr @intel_dp_dsc_aux_ref_count.__UNIQUE_ID_addressable___SCK__WARN_trap_842, ptr @intel_dp_dsc_max_sink_compressed_bppx16.__UNIQUE_ID_addressable___SCK__WARN_trap_786, ptr @intel_dp_dsc_sink_min_compressed_bpp.__UNIQUE_ID_addressable___SCK__WARN_trap_787, ptr @intel_dp_get_active_pipes.__UNIQUE_ID_addressable___SCK__WARN_trap_867, ptr @intel_dp_handle_device_service_irq.__UNIQUE_ID_addressable___SCK__WARN_trap_868, ptr @intel_dp_handle_link_service_irq.__UNIQUE_ID_addressable___SCK__WARN_trap_869, ptr @intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_879, ptr @intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_880, ptr @intel_dp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_881, ptr @intel_dp_link_config_get.__UNIQUE_ID_addressable___SCK__WARN_trap_737, ptr @intel_dp_link_config_init.__UNIQUE_ID_addressable___SCK__WARN_trap_735, ptr @intel_dp_link_config_init.__UNIQUE_ID_addressable___SCK__WARN_trap_736, ptr @intel_dp_max_lane_count.__UNIQUE_ID_addressable___SCK__WARN_trap_717, ptr @intel_dp_output_format.__UNIQUE_ID_addressable___SCK__WARN_trap_760, ptr @intel_dp_rate_select.__UNIQUE_ID_addressable___SCK__WARN_trap_765, ptr @intel_dp_set_common_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_738, ptr @intel_dp_set_common_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_739, ptr @intel_dp_set_source_rates.__UNIQUE_ID_addressable___SCK__WARN_trap_729, ptr @intel_dp_sink_disable_decompression.__UNIQUE_ID_addressable___SCK__WARN_trap_844, ptr @intel_dp_sink_enable_decompression.__UNIQUE_ID_addressable___SCK__WARN_trap_843, ptr @intel_dp_sink_format_valid.__UNIQUE_ID_addressable___SCK__WARN_trap_764, ptr @intel_dp_vsc_sdp_unpack.__UNIQUE_ID_addressable___SCK__WARN_trap_861, ptr @intel_edp_init_connector.__UNIQUE_ID_addressable___SCK__WARN_trap_878, ptr @intel_edp_init_dpcd.__UNIQUE_ID_addressable___SCK__WARN_trap_857, ptr @intel_modeset_affected_transcoders.__UNIQUE_ID_addressable___SCK__WARN_trap_877, ptr @intel_read_dp_sdp.__UNIQUE_ID_addressable___SCK__WARN_trap_862, ptr @intel_write_dp_sdp.__UNIQUE_ID_addressable___SCK__WARN_trap_859, ptr @intel_write_dp_sdp.__UNIQUE_ID_addressable___SCK__WARN_trap_860, ptr @might_resched.__UNIQUE_ID_addressable___SCK__might_resched_56, ptr @source_can_output.__UNIQUE_ID_addressable___SCK__WARN_trap_758, ptr @wait_for_connector_hw_done.__UNIQUE_ID_addressable___SCK__WARN_trap_866], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @intel_dp_is_edp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -352
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @intel_dp_is_uhbr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1320
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 999999
  ret i1 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 10, 33) i32 @intel_dp_link_symbol_size(i32 noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %0, 999999
  %i.b = select i1 %i.a, i32 32, i32 10
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -214748364, 214748365) i32 @intel_dp_link_symbol_clock(i32 noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = mul i32 %0, 10                           ; 2 uses
  %i.b = icmp sgt i32 %0, 999999                  ; 2 uses
  %i.c = select i1 %i.b, i32 16, i32 5            ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  %i.e = sub nsw i32 0, %i.c
  %.pn.p = select i1 %i.d, i32 %i.c, i32 %i.e
  %.pn = add i32 %.pn.p, %i.a                     ; 2 uses
  %1 = sdiv i32 %.pn, 32
  %i.f = sdiv i32 %.pn, 10
  %2 = select i1 %i.b, i32 %1, i32 %i.f
  ret i32 %2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_dp_common_rate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -504
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %.critedge20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = load i32, ptr %i.f, align 4
  %.not32 = icmp slt i32 %1, %i.g
  br i1 %.not32, label %.critedge, label %.critedge20, !prof !10

.critedge20:                                      ; preds = %bb.c, %bb.d
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %.critedge20
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %.critedge20, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %.critedge20 ]
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #15 ; 0 uses
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 342, i32 2321, i64 16) #16, !srcloc !11
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.n, null
  br i1 %.not.i24, label %__drm_to_dev.exit25, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit25

__drm_to_dev.exit25:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #15
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i26 = icmp eq ptr %i.s, null
  br i1 %.not.i26, label %__drm_to_dev.exit27, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit25
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit27

__drm_to_dev.exit27:                              ; preds = %__drm_to_dev.exit25, %bb.g
  %i.v = phi ptr [ %i.u, %bb.g ], [ null, %__drm_to_dev.exit25 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i28 = icmp eq ptr %i.x, null
  br i1 %.not.i28, label %bb.h, label %dev_name.exit31

bb.h:                                             ; preds = %__drm_to_dev.exit27
  %.val.i30 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit31

dev_name.exit31:                                  ; preds = %__drm_to_dev.exit27, %bb.h
  %.0.i29 = phi ptr [ %.val.i30, %bb.h ], [ %i.x, %__drm_to_dev.exit27 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %i.r, ptr noundef %.0.i29, ptr noundef nonnull @.str.1) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !12
  br label %bb.i

.critedge:                                        ; preds = %bb.d
  %i.y = getelementptr i8, ptr %0, i64 160
  %i.z = zext nneg i32 %1 to i64
  %i.aa = getelementptr [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit31, %.critedge
  %.0 = phi i32 [ %i.ab, %.critedge ], [ 162000, %dev_name.exit31 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_dp_max_common_rate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, -1
  %i.d = tail call i32 @intel_dp_common_rate(ptr noundef %0, i32 noundef %i.c) #17
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 256) i32 @intel_dp_max_source_lane_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @intel_bios_dp_max_lane_count(ptr noundef %i.b) #15 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 4180
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.f)
  %.0 = select i1 %.not, i32 %i.f, i32 %i.g
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_bios_dp_max_lane_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i32 @intel_dp_max_common_lane_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 1, 5) i32 @intel_dp_max_lane_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 244
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %forced_lane_count.exit

forced_lane_count.exit:                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 192
  %.val = load i32, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp slt i32 %i.b, %.val
  %i.d = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %spec.select = select i1 %.not.i, i32 %i.d, i32 %.val
  br label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 228
  %i.f = load i32, ptr %i.e, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %forced_lane_count.exit, %bb.b
  %.013 = phi i32 [ %spec.select, %forced_lane_count.exit ], [ %i.f, %bb.b ] ; 5 uses
  switch i32 %.013, label %bb.c [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %select.unfold
  %i.g = sext i32 %.013 to i64
  %i.h = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 411, i32 2321, i64 16) #16, !srcloc !13
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.h, ptr noundef nonnull @.str.4, i64 noundef %i.g) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !14
  br label %bb.d

bb.d:                                             ; preds = %select.unfold, %select.unfold, %select.unfold, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ %.013, %select.unfold ], [ %.013, %select.unfold ], [ %.013, %select.unfold ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 1000000, -2147483648) i32 @intel_dp_link_bw_overhead(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %5, -14
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "718: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 718b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 718) #16, !srcloc !15
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.2, i32 430, i32 2305, i64 16) #16, !srcloc !16
  tail call void asm sideeffect "719: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 719b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 719) #16, !srcloc !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp sgt i32 %0, 999999
  %i.c = or i64 %5, 2
  %spec.select = select i1 %i.b, i64 %i.c, i64 %5 ; 2 uses
  %.not24 = icmp eq i32 %3, 0
  %i.d = or i64 %spec.select, 16
  %.1 = select i1 %.not24, i64 %spec.select, i64 %i.d ; 2 uses
  %i.e = tail call i32 @drm_dp_bw_overhead(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %.1) #15
  %i.f = and i64 %.1, 8
  %.not25 = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not25, i32 1000000, i32 1028530
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g)
end_hunk_0
