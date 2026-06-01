inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0
@PicParSet = common dso_local local_unnamed_addr global [256 x ptr] zeroinitializer, align 16
@input = external local_unnamed_addr global ptr, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@__const.GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@__const.GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external local_unnamed_addr global ptr, align 8
@log2_max_frame_num_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@Co_located = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"GeneratePictureParameterSet: slice_group_id\00", align 1
@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external local_unnamed_addr global [6 x [16 x i16]], align 16
@ScalingList4x4 = external local_unnamed_addr global [6 x [16 x i16]], align 16
@UseDefaultScalingMatrix4x4Flag = external local_unnamed_addr global [6 x i16], align 2
@ScalingList8x8input = external local_unnamed_addr global [2 x [64 x i16]], align 16
@ScalingList8x8 = external local_unnamed_addr global [2 x [64 x i16]], align 16
@UseDefaultScalingMatrix8x8Flag = external local_unnamed_addr global [2 x i16], align 2
@.str.21 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Empty Message\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_type_byte\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"SEI: ff_byte\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_size_byte\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"SEI: uuid_iso_iec_11578\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"SEI: user_data_payload_byte\00", align 1
@color_formats = common dso_local local_unnamed_addr global i32 0, align 4
@top_pic = common dso_local local_unnamed_addr global ptr null, align 8
@bottom_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_1 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_2 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_3 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_si = common dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_sub_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@PicPos = common dso_local local_unnamed_addr global ptr null, align 8
@me_tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@me_time = common dso_local local_unnamed_addr global i64 0, align 8
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_com = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_com = common dso_local local_unnamed_addr global ptr null, align 8
@direct_ref_idx = common dso_local local_unnamed_addr global ptr null, align 8
@direct_pdir = common dso_local local_unnamed_addr global ptr null, align 8
@pixel_map = common dso_local local_unnamed_addr global ptr null, align 8
@refresh_map = common dso_local local_unnamed_addr global ptr null, align 8
@intras = common dso_local local_unnamed_addr global i32 0, align 4
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@rddata_top_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@WriteNALU = common dso_local local_unnamed_addr global ptr null, align 8
@seiHasBufferingPeriod_info = common dso_local local_unnamed_addr global i32 0, align 4
@seiBufferingPeriod = common dso_local local_unnamed_addr global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common dso_local local_unnamed_addr global i32 0, align 4
@seiPicTiming = common dso_local local_unnamed_addr global %struct.pictiming_information_struct zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.88 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@str = private unnamed_addr constant [48 x i8] c"Parset.c: slice_group_map_type invalid, default\00", align 1
@str.1 = private unnamed_addr constant [75 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\00", align 1
@str.2 = private unnamed_addr constant [57 x i8] c"VUI: writing Sequence Parameter VUI to signal RGB format\00", align 1
@switch.table.GeneratePic_parameter_set_rbsp = private unnamed_addr constant [23 x i64] [i64 212, i64 208, i64 208, i64 208, i64 208, i64 212, i64 208, i64 208, i64 208, i64 208, i64 208, i64 212, i64 208, i64 208, i64 208, i64 208, i64 208, i64 208, i64 208, i64 208, i64 208, i64 208, i64 212], align 8

; Function Attrs: nounwind uwtable
define dso_local void @GenerateParameterSets() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @AllocSPS() #11            ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) @PicParSet, i8 0, i64 2048, i1 false), !tbaa !8
  tail call void @GenerateSequenceParameterSet(ptr noundef %i.a, i32 poison)
  %i.b = load ptr, ptr @input, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1576
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %.not = icmp eq i32 %i.d, 0
  %i.e = tail call ptr @AllocPPS() #11            ; 3 uses
  store ptr %i.e, ptr @PicParSet, align 16, !tbaa !8
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @AllocPPS() #11
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 8), align 8, !tbaa !8
  %i.g = tail call ptr @AllocPPS() #11
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 16), align 16, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = icmp ugt i32 %i.i, 99
  %i.k = load ptr, ptr @PicParSet, align 16, !tbaa !8 ; 2 uses
  %i.l = load ptr, ptr @input, align 8, !tbaa !8  ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 5276
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 5280
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %i.k, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.n, i32 noundef %i.p)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 8), align 8, !tbaa !8
  %i.r = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5276
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 5280
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %i.q, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %i.t, i32 noundef %i.v)
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 16), align 16, !tbaa !8
  %i.x = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5276
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 5280
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef %i.z, i32 noundef %i.ab)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 4136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21
  tail call void @GeneratePictureParameterSet(ptr noundef %i.k, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ad, i32 noundef 0)
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 8), align 8, !tbaa !8
  %i.af = load ptr, ptr @input, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4136
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21
  tail call void @GeneratePictureParameterSet(ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %i.ah, i32 noundef 0)
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PicParSet, i64 16), align 16, !tbaa !8
  %i.aj = load ptr, ptr @input, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4136
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21
  tail call void @GeneratePictureParameterSet(ptr noundef %i.ai, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef %i.al, i32 noundef 0)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !15
  %i.ao = icmp ugt i32 %i.an, 99
  %i.ap = load ptr, ptr @input, align 8, !tbaa !8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2928
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 2932
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 5276
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 5280
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.ax)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4136
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21
  tail call void @GeneratePictureParameterSet(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.az, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  store ptr %i.a, ptr @active_sps, align 8, !tbaa !8
  %i.ba = load ptr, ptr @PicParSet, align 16, !tbaa !8
  store ptr %i.ba, ptr @active_pps, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @AllocSPS() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GenerateSequenceParameterSet(ptr noundef captures(none) initializes((4, 32), (72, 108)) %0, i32 %1) local_unnamed_addr #0 {
switch.edge:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %switch.tableidx = add i32 %i.b, -100           ; 2 uses
  %2 = tail call i32 @llvm.fshl.i32(i32 %switch.tableidx, i32 %switch.tableidx, i32 31) ; 2 uses
  %i.c = icmp ult i32 %2, 23
  %switch.cast = trunc i32 %2 to i23
  %switch.downshift = lshr i23 -4192223, %switch.cast
  %switch.masked = trunc i23 %switch.downshift to i1
  %i.d = select i1 %i.c, i1 %switch.masked, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.i, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !29
  %i.l = icmp eq i32 %i.g, 9
  %i.m = icmp ult i32 %i.b, 100
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %switch.edge
  store i32 11, ptr %i.h, align 4, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %switch.edge, %bb.a
  %.sink = phi i32 [ 1, %bb.a ], [ 0, %switch.edge ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.n, align 4, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5256
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x i32>, ptr %i.p, align 8, !tbaa !4
  %i.s = add nsw <2 x i32> %i.r, splat (i32 -8)
  store <2 x i32> %i.s, ptr %i.q, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5284
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = icmp eq i32 %i.b, 144
  %i.w = and i32 %i.u, 1
  %i.x = select i1 %i.v, i32 %i.w, i32 0
  %i.y = load ptr, ptr @img, align 8, !tbaa !8    ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 15540
  store i32 %i.x, ptr %i.z, align 4, !tbaa !33
  %i.aa = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !50
  %i.ac = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 5088
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 15288 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 15276
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !54
  %i.al = load <4 x i32>, ptr %i.ai, align 4, !tbaa !4
  store <4 x i32> %i.al, ptr %i.aj, align 4, !tbaa !4
  %.not84 = icmp eq i32 %i.ak, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 15292
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !54
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.c, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 0, ptr %i.ax, align 4, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !60
  %.not = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4708
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !61 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %narrow = select i1 %.not, i1 %i.bc, i1 false   ; 3 uses
  %i.bd = zext i1 %narrow to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 3 uses
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 15584
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !64
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = sdiv i32 %i.bj, 16
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 15588
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  %i.br = add nsw i32 %i.bq, %i.bo
  %i.bs = sdiv i32 %i.br, 16
  %not.narrow = xor i1 %narrow, true
  %i.bt = zext i1 %not.narrow to i32
  %i.bu = lshr i32 %i.bs, %i.bt                   ; 2 uses
  %i.bv = add i32 %i.bu, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !68
  %i.bx = icmp ne i32 %i.bb, 0
  %i.by = zext i1 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 2116
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !70
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 5272
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !72
  %.not74 = icmp ne i32 %i.ce, 0
  %.phi.trans.insert93.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre94.pre = load i32, ptr %.phi.trans.insert93.phi.trans.insert, align 8, !tbaa !73 ; 2 uses
  %i.cf = icmp eq i32 %.pre94.pre, 3
  %or.cond115 = select i1 %.not74, i1 %i.cf, i1 false
  br i1 %or.cond115, label %bb.d, label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 1580
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !74
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %._crit_edge105
  %i.ck = phi i32 [ 3, %._crit_edge ], [ %.pre94.pre, %._crit_edge105 ]
  %i.cl = phi i32 [ 1, %._crit_edge ], [ %i.cj, %._crit_edge105 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !75
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !76
  %i.co = shl i32 %i.bl, 4
  %i.cp = add i32 %i.co, 16
  %i.cq = select i1 %narrow, i32 4, i32 5
  %i.cr = shl i32 %i.bu, %i.cq
  %i.cs = tail call ptr @alloc_colocated(i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.by) #11
  store ptr %i.cs, ptr @Co_located, align 8, !tbaa !77
  br i1 %i.d, label %bb.e, label %.loopexit.loopexit85

bb.e:                                             ; preds = %bb.d
  %i.ct = load ptr, ptr @input, align 8, !tbaa !8 ; 10 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 5208
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !79
  %i.cw = and i32 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 5100 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 5212
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = and i32 %i.db, 1
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 5216
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !4
  %i.df = and i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 5220
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = and i32 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 5224
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !4
  %i.dn = and i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 5228
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = and i32 %i.dq, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 5232
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.dv = and i32 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !4
  %i.dx = load i32, ptr %i.cy, align 4, !tbaa !81
  %.not79.6 = icmp eq i32 %i.dx, 0
  br i1 %.not79.6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 5236
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = and i32 %i.dz, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink112 = phi i32 [ %i.ea, %bb.f ], [ 0, %bb.e ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink112, ptr %i.eb, align 4, !tbaa !4
  %i.ec = load i32, ptr %i.cy, align 4, !tbaa !81
  %.not79.7 = icmp eq i32 %i.ec, 0
  br i1 %.not79.7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ct, i64 5240
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !4
  %i.ef = and i32 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !4
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.eh, align 4, !tbaa !4
  br label %.loopexit

.loopexit.loopexit85:                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ei, i8 0, i64 36, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %.loopexit.loopexit85
  %i.ej = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 15584
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !64 ; 3 uses
  %.not75 = icmp eq i32 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 15588
  %i.en = load i32, ptr %i.em, align 4, !tbaa !67 ; 3 uses
  %.not76 = icmp eq i32 %i.en, 0
  %or.cond114 = select i1 %.not75, i1 %.not76, i1 false
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  br i1 %or.cond114, label %bb.m, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  store i32 1, ptr %i.eo, align 4, !tbaa !82
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i32 0, ptr %i.ep, align 4, !tbaa !83
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store i32 0, ptr %i.eq, align 4, !tbaa !84
  %i.er = load i32, ptr %i.cn, align 4, !tbaa !76
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @__const.GenerateSequenceParameterSet.SubWidthC, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4  ; 2 uses
  %i.ev = sdiv i32 %i.el, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !85
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @__const.GenerateSequenceParameterSet.SubHeightC, i64 %i.es
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = load i32, ptr %i.be, align 4, !tbaa !62
  %i.fa = sub i32 2, %i.ez
  %i.fb = mul i32 %i.fa, %i.ey                    ; 2 uses
  %i.fc = udiv i32 %i.en, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !86
  %i.fe = srem i32 %i.el, %i.eu
  %.not77 = icmp eq i32 %i.fe, 0
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit._crit_edge
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #11
  %.pre97 = load ptr, ptr @img, align 8, !tbaa !8
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %.pre97, i64 15588
  %.pre99 = load i32, ptr %.phi.trans.insert98, align 4, !tbaa !67
  %.pre100 = load i32, ptr %i.cn, align 4, !tbaa !76
  %.phi.trans.insert101 = zext i32 %.pre100 to i64
  %.phi.trans.insert102 = getelementptr inbounds nuw [4 x i8], ptr @__const.GenerateSequenceParameterSet.SubHeightC, i64 %.phi.trans.insert101
  %.pre103 = load i32, ptr %.phi.trans.insert102, align 4, !tbaa !4
  %.pre104 = load i32, ptr %i.be, align 4, !tbaa !62
  %.pre107 = sub i32 2, %.pre104
  %.pre109 = mul i32 %.pre107, %.pre103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit._crit_edge
  %.pre-phi110 = phi i32 [ %.pre109, %bb.j ], [ %i.fb, %.loopexit._crit_edge ]
  %i.ff = phi i32 [ %.pre99, %bb.j ], [ %i.en, %.loopexit._crit_edge ]
  %i.fg = urem i32 %i.ff, %.pre-phi110
  %.not78 = icmp eq i32 %i.fg, 0
  br i1 %.not78, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #11
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  store i32 0, ptr %i.eo, align 4, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  ret void
}

declare ptr @AllocPPS() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GeneratePictureParameterSet(ptr noundef captures(none) initializes((4, 64)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
switch.edge:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load ptr, ptr @input, align 8, !tbaa !8  ; 15 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %switch.tableidx = add i32 %i.c, -100           ; 2 uses
  %7 = tail call i32 @llvm.fshl.i32(i32 %switch.tableidx, i32 %switch.tableidx, i32 31) ; 2 uses
  %i.d = icmp ult i32 %7, 23
  %switch.cast = trunc i32 %7 to i23
  %switch.downshift = lshr i23 -4192223, %switch.cast
  %switch.masked = trunc i23 %switch.downshift to i1
  %i.e = select i1 %i.d, i1 %switch.masked, i1 false ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4008
  %i.k = load i32, ptr %i.j, align 8, !tbaa !90
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !91
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %switch.edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 5100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %.fr = freeze i32 %i.p
  %.not = icmp ne i32 %.fr, 0                     ; 2 uses
  %i.q = zext i1 %.not to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 5208
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.v, ptr %i.w, align 4, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 5212
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 5216
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !4
  %i.ae = lshr i32 %i.ad, 1
  %i.af = and i32 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 5220
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 5224
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 5228
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = lshr i32 %i.as, 1
  %i.au = and i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 5232
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4
  %i.ay = lshr i32 %i.ax, 1
  %i.az = and i32 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  br i1 %.not, label %.loopexit98.loopexit, label %.loopexit98.loopexit107

.loopexit98.loopexit:                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 5236
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = lshr i32 %i.bc, 1
  %i.be = and i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 5240
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !4
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  br label %.loopexit98

.loopexit98.loopexit107:                          ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.bl, align 8, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.bm, align 4, !tbaa !4
  br label %.loopexit98

bb.b:                                             ; preds = %switch.edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 5100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i8 0, i64 40, i1 false)
  store i32 0, ptr %i.bo, align 4, !tbaa !81
  br label %.loopexit98

.loopexit98:                                      ; preds = %.loopexit98.loopexit107, %.loopexit98.loopexit, %bb.b
  %i.bp = load ptr, ptr @img, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 15356
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !94
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !95
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 5032
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !97
  %.not88 = icmp eq i32 %i.bu, 0
  br i1 %.not88, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit98
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !68
  %i.by = add i32 %i.bx, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1140
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !65
  %i.cb = add i32 %i.ca, 1
  %i.cc = mul i32 %i.cb, %i.by
  %i.cd = zext i32 %i.cc to i64
  %i.ce = tail call noalias ptr @calloc(i64 noundef %i.cd, i64 noundef 1) #12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !98
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11
  %.pre = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ch = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 5036
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !99 ; 2 uses
  switch i32 %i.cj, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ck, align 8, !tbaa !100
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 5064
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.cp = add i32 %i.cl, 1                        ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.cp, i32 1)
  %wide.trip.count115 = zext i32 %umax to i64     ; 5 uses
  %min.iters.check130 = icmp ult i32 %i.cp, 8
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck128

vector.memcheck128:                               ; preds = %bb.f
  %i.cq = ptrtoaddr ptr %i.cn to i64
  %i.cr = add i64 %i.a, 68
  %i.cs = sub i64 %i.cr, %i.cq
  %diff.check = icmp ult i64 %i.cs, 32
  br i1 %diff.check, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %wide.trip.count115, 4294967288 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index135 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load136 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %wide.load137 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index135 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x i32> %wide.load136, ptr %i.cv, align 4, !tbaa !4
  store <4 x i32> %wide.load137, ptr %i.cw, align 4, !tbaa !4
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.cx, label %middle.block139, label %vector.body134, !llvm.loop !102

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %n.vec133, %wide.trip.count115
  br i1 %cmp.n140, label %.loopexit, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck128, %bb.f, %middle.block139
  %indvars.iv112.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %bb.f ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %xtraiter144 = and i64 %wide.trip.count115, 3   ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %indvars.iv112.prol = phi i64 [ %indvars.iv.next113.prol, %scalar.ph129.prol ], [ %indvars.iv112.ph, %scalar.ph129.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv112.prol
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv112.prol
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next113.prol = add nuw nsw i64 %indvars.iv112.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@GeneratePictureParameterSet:switch.edge
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !119

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cj, ptr %i.ez, align 8, !tbaa !100
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ch, i64 5072
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fc = load <2 x i32>, ptr %i.fa, align 8, !tbaa !4
  store <2 x i32> %i.fc, ptr %i.fb, align 4, !tbaa !4
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 6, ptr %i.fd, align 8, !tbaa !100
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ch, i64 60
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !66
  %i.fg = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 15588
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !67
  %i.fj = add nsw i32 %i.fi, %i.ff
  %i.fk = sdiv i32 %i.fj, 16
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1148
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !62
  %i.fn = sub i32 2, %i.fm
  %i.fo = udiv i32 %i.fk, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !63
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 15584
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !64
  %i.ft = add nsw i32 %i.fs, %i.fq
  %i.fu = sdiv i32 %i.ft, 16
  %i.fv = mul i32 %i.fu, %i.fo
  %i.fw = add i32 %i.fv, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !120
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %.4101 = phi i32 [ 0, %bb.j ], [ %i.gg, %bb.k ] ; 2 uses
  %i.fy = load ptr, ptr @input, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 5056
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !121
  %i.gb = zext i32 %.4101 to i64                  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !122
  %i.ge = load ptr, ptr %i.cf, align 8, !tbaa !98
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !122
  %i.gg = add i32 %.4101, 1                       ; 2 uses
  %i.gh = load i32, ptr %i.fx, align 4, !tbaa !120
  %.not89 = icmp ugt i32 %i.gg, %i.gh
  br i1 %.not89, label %.loopexit, label %bb.k, !llvm.loop !123

bb.l:                                             ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block, %middle.block139, %bb.h, %bb.g, %bb.i, %bb.l, %.loopexit98
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 1148
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !62
  %.not91 = icmp eq i32 %i.gj, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 1132
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !58
  %i.gm = zext i1 %.not91 to i32
  %.sink.in = shl i32 %i.gl, %i.gm
  %.sink = add i32 %.sink.in, -1                  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.sink, ptr %i.gn, align 8, !tbaa !124
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.sink, ptr %i.go, align 4, !tbaa !125
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %3, ptr %i.gp, align 8, !tbaa !126
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %4, ptr %i.gq, align 4, !tbaa !127
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.gr, align 8, !tbaa !128
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.gs, align 4, !tbaa !129
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %5, ptr %i.gt, align 8, !tbaa !130
  %.sink117 = select i1 %i.e, i32 %6, i32 %5
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %5, ptr %i.gu, align 4, !tbaa !131
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %.sink117, ptr %i.gv, align 8, !tbaa !132
  %i.gw = load ptr, ptr @input, align 8, !tbaa !8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4748
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !133
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !134
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 272
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !135
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 5084
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !137
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !138
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @FreeParameterSets() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @PicParSet, i64 %indvars.iv ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @FreePPS(ptr noundef nonnull %i.b) #11
  store ptr null, ptr %i.a, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !139

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr @active_sps, align 8, !tbaa !8
  tail call void @FreeSPS(ptr noundef %i.c) #11
  ret void
}

declare void @FreePPS(ptr noundef) local_unnamed_addr #2

declare void @FreeSPS(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GenerateSeq_parameter_set_NALU() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64000 x i8], align 16            ; 4 uses
  %i.b = tail call ptr @AllocNALU(i32 noundef 64000) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.d = call i32 @GenerateSeq_parameter_set_rbsp(ptr noundef %i.c, ptr noundef nonnull %i.a)
  %i.e = call i32 @RBSPtoNALU(ptr noundef nonnull %i.a, ptr noundef %i.b, i32 noundef %i.d, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  store i32 4, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.b
}

declare ptr @AllocNALU(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GenerateSeq_parameter_set_rbsp(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #12 ; 62 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 8, ptr %i.d, align 4, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %i.f, ptr noundef %i.a) #11 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = tail call i32 @u_1(ptr noundef nonnull @.str.7, i32 noundef %i.i, ptr noundef %i.a) #11 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = tail call i32 @u_1(ptr noundef nonnull @.str.8, i32 noundef %i.l, ptr noundef %i.a) #11 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = tail call i32 @u_1(ptr noundef nonnull @.str.9, i32 noundef %i.o, ptr noundef %i.a) #11 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  %i.s = tail call i32 @u_1(ptr noundef nonnull @.str.10, i32 noundef %i.r, ptr noundef %i.a) #11 ; 0 uses
  %i.t = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26
  %i.w = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %i.v, ptr noundef %i.a) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = tail call i32 @ue_v(ptr noundef nonnull @.str.13, i32 noundef %i.y, ptr noundef %i.a) #11 ; 0 uses
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !15
  %2 = add i32 %i.aa, -100                        ; 2 uses
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  switch i32 %3, label %.loopexit170 [
    i32 0, label %bb.d
    i32 5, label %bb.d
    i32 11, label %bb.d
    i32 22, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.ad = tail call i32 @ue_v(ptr noundef nonnull @.str.14, i32 noundef %i.ac, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ae = load ptr, ptr @img, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 15536
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !145
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @u_1(ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !146
  %i.al = tail call i32 @ue_v(ptr noundef nonnull @.str.16, i32 noundef %i.ak, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.an = load i32, ptr %i.am, align 4, !tbaa !147
  %i.ao = tail call i32 @ue_v(ptr noundef nonnull @.str.17, i32 noundef %i.an, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ap = load ptr, ptr @img, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 15540
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.as = tail call i32 @u_1(ptr noundef nonnull @.str.18, i32 noundef %i.ar, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = tail call i32 @u_1(ptr noundef nonnull @.str.19, i32 noundef %i.au, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !80
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %.loopexit170, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %Scaling_List.exit
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %Scaling_List.exit ] ; 7 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = tail call i32 @u_1(ptr noundef nonnull @.str.20, i32 noundef %i.az, ptr noundef %i.a) #11 ; 0 uses
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !4
  %.not150 = icmp eq i32 %i.bb, 0
  br i1 %.not150, label %Scaling_List.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.bc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr @ScalingList4x4input, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw [32 x i8], ptr @ScalingList4x4, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @UseDefaultScalingMatrix4x4Flag, i64 %indvars.iv ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.048.i = phi i32 [ 8, %bb.j ], [ %.142.i, %.thread.i ]
  %.02947.i = phi i32 [ 8, %bb.j ], [ %i.bx, %.thread.i ] ; 3 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr @ZZ_SCAN, i64 %indvars.iv.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !122
  %.not.i = icmp eq i32 %.048.i, 0
  %.pre.i = zext i8 %.in.i to i64                 ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %.pre.i ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !148
  %i.bi = sext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bi, %.02947.i            ; 5 uses
  %i.bk = icmp sgt i32 %i.bj, 127
  %i.bl = add nsw i32 %i.bj, -256
  %i.bm = icmp slt i32 %i.bj, -128
  %i.bn = add nsw i32 %i.bj, 256
  %spec.select.i = select i1 %i.bm, i32 %i.bn, i32 %i.bj
  %.030.i = select i1 %i.bk, i32 %i.bl, i32 %spec.select.i
  %i.bo = tail call i32 @se_v(ptr noundef nonnull @.str.4, i32 noundef %.030.i, ptr noundef %i.a) #11 ; 0 uses
  %i.bp = load i16, ptr %i.bg, align 2, !tbaa !148
  %.fr.i = freeze i16 %i.bp                       ; 2 uses
  %i.bq = sext i16 %.fr.i to i32                  ; 2 uses
  %i.br = icmp eq i64 %indvars.iv.i, 0
  %i.bs = icmp eq i16 %.fr.i, 0                   ; 2 uses
  %i.bt = and i1 %i.br, %i.bs
  %i.bu = zext i1 %i.bt to i16
  %i.bv = load i16, ptr %i.bf, align 2, !tbaa !148
  %i.bw = or i16 %i.bv, %i.bu
  store i16 %i.bw, ptr %i.bf, align 2, !tbaa !148
  %spec.select44.i = select i1 %i.bs, i32 %.02947.i, i32 %i.bq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.142.i = phi i32 [ %i.bq, %bb.l ], [ 0, %bb.k ]
  %i.bx = phi i32 [ %spec.select44.i, %bb.l ], [ %.02947.i, %bb.k ] ; 2 uses
  %i.by = trunc nsw i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.pre.i
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !148
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %Scaling_List.exit, label %bb.k, !llvm.loop !149

bb.m:                                             ; preds = %bb.i
  %i.ca = add nsw i64 %indvars.iv, -6             ; 3 uses
  %i.cb = getelementptr inbounds nuw [128 x i8], ptr @ScalingList8x8input, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr @ScalingList8x8, i64 %i.ca
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @UseDefaultScalingMatrix8x8Flag, i64 %i.ca ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread.i163, %bb.m
  %indvars.iv.i151 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i166, %.thread.i163 ] ; 3 uses
  %.048.i152 = phi i32 [ 8, %bb.m ], [ %.142.i164, %.thread.i163 ]
  %.02947.i153 = phi i32 [ 8, %bb.m ], [ %i.cv, %.thread.i163 ] ; 3 uses
  %.in.in.i155 = getelementptr inbounds nuw i8, ptr @ZZ_SCAN8, i64 %indvars.iv.i151
  %.in.i156 = load i8, ptr %.in.in.i155, align 1, !tbaa !122
  %.not.i157 = icmp eq i32 %.048.i152, 0
  %.pre.i158 = zext i8 %.in.i156 to i64           ; 2 uses
  br i1 %.not.i157, label %.thread.i163, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %.pre.i158 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !148
  %i.cg = sext i16 %i.cf to i32
  %i.ch = sub nsw i32 %i.cg, %.02947.i153         ; 5 uses
  %i.ci = icmp sgt i32 %i.ch, 127
  %i.cj = add nsw i32 %i.ch, -256
  %i.ck = icmp slt i32 %i.ch, -128
  %i.cl = add nsw i32 %i.ch, 256
  %spec.select.i159 = select i1 %i.ck, i32 %i.cl, i32 %i.ch
  %.030.i160 = select i1 %i.ci, i32 %i.cj, i32 %spec.select.i159
  %i.cm = tail call i32 @se_v(ptr noundef nonnull @.str.4, i32 noundef %.030.i160, ptr noundef %i.a) #11 ; 0 uses
  %i.cn = load i16, ptr %i.ce, align 2, !tbaa !148
  %.fr.i161 = freeze i16 %i.cn                    ; 2 uses
  %i.co = sext i16 %.fr.i161 to i32               ; 2 uses
  %i.cp = icmp eq i64 %indvars.iv.i151, 0
  %i.cq = icmp eq i16 %.fr.i161, 0                ; 2 uses
  %i.cr = and i1 %i.cp, %i.cq
  %i.cs = zext i1 %i.cr to i16
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !148
  %i.cu = or i16 %i.ct, %i.cs
  store i16 %i.cu, ptr %i.cd, align 2, !tbaa !148
  %spec.select44.i162 = select i1 %i.cq, i32 %.02947.i153, i32 %i.co
  br label %.thread.i163

.thread.i163:                                     ; preds = %bb.o, %bb.n
  %.142.i164 = phi i32 [ %i.co, %bb.o ], [ 0, %bb.n ]
  %i.cv = phi i32 [ %spec.select44.i162, %bb.o ], [ %.02947.i153, %bb.n ] ; 2 uses
  %i.cw = trunc nsw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %.pre.i158
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !148
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.i166, 64
  br i1 %exitcond.not.i167, label %Scaling_List.exit, label %bb.n, !llvm.loop !149

Scaling_List.exit:                                ; preds = %.thread.i163, %.thread.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit170, label %bb.h, !llvm.loop !150

.loopexit170:                                     ; preds = %Scaling_List.exit, %bb.c, %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !50
  %i.da = tail call i32 @ue_v(ptr noundef nonnull @.str.21, i32 noundef %i.cz, ptr noundef %i.a) #11 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !53
  %i.dd = tail call i32 @ue_v(ptr noundef nonnull @.str.22, i32 noundef %i.dc, ptr noundef %i.a) #11 ; 0 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !53
  switch i32 %i.de, label %.loopexit [
    i32 0, label %bb.p
    i32 1, label %bb.q
  ]

bb.p:                                             ; preds = %.loopexit170
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = tail call i32 @ue_v(ptr noundef nonnull @.str.23, i32 noundef %i.dg, ptr noundef %i.a) #11 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %.loopexit170
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !151
  %i.dk = tail call i32 @u_1(ptr noundef nonnull @.str.24, i32 noundef %i.dj, ptr noundef %i.a) #11 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !152
  %i.dn = tail call i32 @se_v(ptr noundef nonnull @.str.25, i32 noundef %i.dm, ptr noundef %i.a) #11 ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !153
  %i.dq = tail call i32 @se_v(ptr noundef nonnull @.str.26, i32 noundef %i.dp, ptr noundef %i.a) #11 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !154
  %i.dt = tail call i32 @ue_v(ptr noundef nonnull @.str.27, i32 noundef %i.ds, ptr noundef %i.a) #11 ; 0 uses
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !154
  %.not174 = icmp eq i32 %i.du, 0
  br i1 %.not174, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.r
end_hunk_1
begin_hunk_2_@GenerateSeq_parameter_set_rbsp:bb.a
  %i.gf = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef 2, ptr noundef %i.a) #11 ; 0 uses
  %i.gg = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  br label %GenerateVUISequenceParameters.exit.sink.split

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 1580
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %.not77.i = icmp eq i32 %i.gi, 0
  br i1 %.not77.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = tail call i32 @u_1(ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gk = tail call i32 @u_1(ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gl = tail call i32 @u_1(ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  br label %GenerateVUISequenceParameters.exit.sink.split

bb.ab:                                            ; preds = %bb.z
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

GenerateVUISequenceParameters.exit.sink.split:    ; preds = %bb.y, %bb.aa
  %i.gm = tail call i32 @u_1(ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gn = tail call i32 @u_1(ptr noundef nonnull @.str.87, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.go = tail call i32 @u_1(ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gp = tail call i32 @u_1(ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gq = tail call i32 @u_1(ptr noundef nonnull @.str.90, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  %i.gr = tail call i32 @u_1(ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef %i.a) #11 ; 0 uses
  br label %GenerateVUISequenceParameters.exit

GenerateVUISequenceParameters.exit:               ; preds = %GenerateVUISequenceParameters.exit.sink.split, %bb.v
  tail call void @SODBtoRBSP(ptr noundef %i.a) #11
  %i.gs = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.a) #11
  ret i32 %i.gs
}

declare i32 @RBSPtoNALU(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GeneratePic_parameter_set_NALU(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64000 x i8], align 16            ; 4 uses
  %i.b = tail call ptr @AllocNALU(i32 noundef 64000) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @PicParSet, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = call i32 @GeneratePic_parameter_set_rbsp(ptr noundef %i.e, ptr noundef nonnull %i.a)
  %i.g = call i32 @RBSPtoNALU(ptr noundef nonnull %i.a, ptr noundef %i.b, i32 noundef %i.f, i32 noundef 8, i32 noundef 3, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  store i32 4, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GeneratePic_parameter_set_rbsp(ptr noundef captures(none) initializes((56, 60)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #12 ; 35 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.42) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 8, ptr %i.d, align 4, !tbaa !144
  %i.e = load ptr, ptr @img, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = tail call i32 @ue_v(ptr noundef nonnull @.str.43, i32 noundef %i.j, ptr noundef %i.a) #11 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !87
  %i.n = tail call i32 @ue_v(ptr noundef nonnull @.str.44, i32 noundef %i.m, ptr noundef %i.a) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %i.q = tail call i32 @u_1(ptr noundef nonnull @.str.45, i32 noundef %i.p, ptr noundef %i.a) #11 ; 0 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !95
  %i.s = tail call i32 @u_1(ptr noundef nonnull @.str.46, i32 noundef %i.r, ptr noundef %i.a) #11 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = tail call i32 @ue_v(ptr noundef nonnull @.str.47, i32 noundef %i.u, ptr noundef %i.a) #11 ; 0 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !97
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.loopexit182, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !100
  %i.z = tail call i32 @ue_v(ptr noundef nonnull @.str.48, i32 noundef %i.y, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !100
  switch i32 %i.aa, label %.loopexit182 [
    i32 0, label %.preheader
    i32 2, label %.preheader183
    i32 3, label %bb.g
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

.preheader183:                                    ; preds = %bb.d
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !97
  %.not195 = icmp eq i32 %i.ab, 0
  br i1 %.not195, label %.loopexit182, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader183
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %.0153190 = phi i32 [ 0, %.preheader ], [ %i.aj, %bb.e ] ; 2 uses
  %i.af = zext i32 %.0153190 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = tail call i32 @ue_v(ptr noundef nonnull @.str.49, i32 noundef %i.ah, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.aj = add i32 %.0153190, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !97
  %.not161 = icmp ugt i32 %i.aj, %i.ak
  br i1 %.not161, label %.loopexit182, label %bb.e, !llvm.loop !157

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = tail call i32 @ue_v(ptr noundef nonnull @.str.50, i32 noundef %i.am, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = tail call i32 @ue_v(ptr noundef nonnull @.str.51, i32 noundef %i.ap, ptr noundef nonnull %i.a) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.t, align 4, !tbaa !97
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.f, label %.loopexit182, !llvm.loop !158

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.av = load i32, ptr %i.au, align 4, !tbaa !159
  %i.aw = tail call i32 @u_1(ptr noundef nonnull @.str.52, i32 noundef %i.av, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !160
  %i.az = tail call i32 @ue_v(ptr noundef nonnull @.str.53, i32 noundef %i.ay, ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %.loopexit182

bb.h:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !97  ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, 3
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 2)
  %.0152 = select i1 %i.bb, i32 3, i32 %spec.select
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !120
  %i.be = tail call i32 @ue_v(ptr noundef nonnull @.str.54, i32 noundef %i.bd, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.2155186 = phi i32 [ 0, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !98
  %i.bh = zext i32 %.2155186 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !122
  %i.bk = zext i8 %i.bj to i32
  %i.bl = tail call i32 @u_v(i32 noundef %.0152, ptr noundef nonnull @.str.55, i32 noundef %i.bk, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.bm = add i32 %.2155186, 1                    ; 2 uses
  %i.bn = load i32, ptr %i.bc, align 4, !tbaa !120
  %.not160 = icmp ugt i32 %i.bm, %i.bn
  br i1 %.not160, label %.loopexit182, label %bb.i, !llvm.loop !161

.loopexit182:                                     ; preds = %bb.i, %bb.f, %bb.e, %.preheader183, %bb.d, %bb.g, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !124
  %i.bq = tail call i32 @ue_v(ptr noundef nonnull @.str.56, i32 noundef %i.bp, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !125
  %i.bt = tail call i32 @ue_v(ptr noundef nonnull @.str.57, i32 noundef %i.bs, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !126
  %i.bw = tail call i32 @u_1(ptr noundef nonnull @.str.58, i32 noundef %i.bv, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !127
  %i.bz = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %i.by, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !128
  %i.cc = tail call i32 @se_v(ptr noundef nonnull @.str.60, i32 noundef %i.cb, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !129
  %i.cf = tail call i32 @se_v(ptr noundef nonnull @.str.61, i32 noundef %i.ce, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cg = load ptr, ptr @input, align 8, !tbaa !8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !24
  %2 = add i32 %i.ch, -100                        ; 2 uses
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31) ; 3 uses
  %4 = icmp ult i32 %3, 23
  br i1 %4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit182
  %5 = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GeneratePic_parameter_set_rbsp, i64 %5
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit182, %bb.j
  %.sink211 = phi i64 [ %switch.load, %bb.j ], [ 208, %.loopexit182 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sink211
  %.sink = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.cj = tail call i32 @se_v(ptr noundef nonnull @.str.62, i32 noundef %.sink, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !134
  %i.cm = tail call i32 @u_1(ptr noundef nonnull @.str.63, i32 noundef %i.cl, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !136
  %i.cp = tail call i32 @u_1(ptr noundef nonnull @.str.64, i32 noundef %i.co, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !138
  %i.cs = tail call i32 @u_1(ptr noundef nonnull @.str.65, i32 noundef %i.cr, ptr noundef nonnull %i.a) #11 ; 0 uses
  switch i32 %3, label %bb.v [
    i32 22, label %bb.l
    i32 11, label %bb.l
    i32 5, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !92
  %i.cv = tail call i32 @u_1(ptr noundef nonnull @.str.66, i32 noundef %i.cu, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !93
  %i.cy = tail call i32 @u_1(ptr noundef nonnull @.str.67, i32 noundef %i.cx, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !93
  %.not162 = icmp eq i32 %i.cz, 0
  br i1 %.not162, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = load i32, ptr %i.ct, align 8, !tbaa !92
  %.mask = and i32 %i.da, 2147483647
  %.not196 = icmp eq i32 %.mask, 2147483645
  br i1 %.not196, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph194, %Scaling_List.exit
  %indvars.iv202 = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next203, %Scaling_List.exit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv202 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = tail call i32 @u_1(ptr noundef nonnull @.str.68, i32 noundef %i.dd, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !4
  %.not163 = icmp eq i32 %i.df, 0
  br i1 %.not163, label %Scaling_List.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = icmp samesign ult i64 %indvars.iv202, 6
  br i1 %i.dg, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr @ScalingList4x4input, i64 %indvars.iv202
  %i.di = getelementptr inbounds nuw [32 x i8], ptr @ScalingList4x4, i64 %indvars.iv202
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr @UseDefaultScalingMatrix4x4Flag, i64 %indvars.iv202 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.thread.i, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.048.i = phi i32 [ 8, %bb.p ], [ %.142.i, %.thread.i ]
  %.02947.i = phi i32 [ 8, %bb.p ], [ %i.eb, %.thread.i ] ; 3 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr @ZZ_SCAN, i64 %indvars.iv.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !122
  %.not.i = icmp eq i32 %.048.i, 0
  %.pre.i = zext i8 %.in.i to i64                 ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %.pre.i ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !148
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sub nsw i32 %i.dm, %.02947.i            ; 5 uses
  %i.do = icmp sgt i32 %i.dn, 127
  %i.dp = add nsw i32 %i.dn, -256
  %i.dq = icmp slt i32 %i.dn, -128
  %i.dr = add nsw i32 %i.dn, 256
  %spec.select.i = select i1 %i.dq, i32 %i.dr, i32 %i.dn
  %.030.i = select i1 %i.do, i32 %i.dp, i32 %spec.select.i
  %i.ds = tail call i32 @se_v(ptr noundef nonnull @.str.4, i32 noundef %.030.i, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.dt = load i16, ptr %i.dk, align 2, !tbaa !148
  %.fr.i = freeze i16 %i.dt                       ; 2 uses
  %i.du = sext i16 %.fr.i to i32                  ; 2 uses
  %i.dv = icmp eq i64 %indvars.iv.i, 0
  %i.dw = icmp eq i16 %.fr.i, 0                   ; 2 uses
  %i.dx = and i1 %i.dv, %i.dw
  %i.dy = zext i1 %i.dx to i16
  %i.dz = load i16, ptr %i.dj, align 2, !tbaa !148
  %i.ea = or i16 %i.dz, %i.dy
  store i16 %i.ea, ptr %i.dj, align 2, !tbaa !148
  %spec.select44.i = select i1 %i.dw, i32 %.02947.i, i32 %i.du
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.142.i = phi i32 [ %i.du, %bb.r ], [ 0, %bb.q ]
  %i.eb = phi i32 [ %spec.select44.i, %bb.r ], [ %.02947.i, %bb.q ] ; 2 uses
  %i.ec = trunc nsw i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.pre.i
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !148
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %Scaling_List.exit, label %bb.q, !llvm.loop !149

bb.s:                                             ; preds = %bb.o
  %i.ee = add nsw i64 %indvars.iv202, -6          ; 3 uses
  %i.ef = getelementptr inbounds nuw [128 x i8], ptr @ScalingList8x8input, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [128 x i8], ptr @ScalingList8x8, i64 %i.ee
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @UseDefaultScalingMatrix8x8Flag, i64 %i.ee ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.thread.i176, %bb.s
  %indvars.iv.i164 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i179, %.thread.i176 ] ; 3 uses
  %.048.i165 = phi i32 [ 8, %bb.s ], [ %.142.i177, %.thread.i176 ]
  %.02947.i166 = phi i32 [ 8, %bb.s ], [ %i.ez, %.thread.i176 ] ; 3 uses
  %.in.in.i168 = getelementptr inbounds nuw i8, ptr @ZZ_SCAN8, i64 %indvars.iv.i164
  %.in.i169 = load i8, ptr %.in.in.i168, align 1, !tbaa !122
  %.not.i170 = icmp eq i32 %.048.i165, 0
  %.pre.i171 = zext i8 %.in.i169 to i64           ; 2 uses
  br i1 %.not.i170, label %.thread.i176, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %.pre.i171 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !148
  %i.ek = sext i16 %i.ej to i32
  %i.el = sub nsw i32 %i.ek, %.02947.i166         ; 5 uses
  %i.em = icmp sgt i32 %i.el, 127
  %i.en = add nsw i32 %i.el, -256
  %i.eo = icmp slt i32 %i.el, -128
  %i.ep = add nsw i32 %i.el, 256
  %spec.select.i172 = select i1 %i.eo, i32 %i.ep, i32 %i.el
  %.030.i173 = select i1 %i.em, i32 %i.en, i32 %spec.select.i172
  %i.eq = tail call i32 @se_v(ptr noundef nonnull @.str.4, i32 noundef %.030.i173, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.er = load i16, ptr %i.ei, align 2, !tbaa !148
  %.fr.i174 = freeze i16 %i.er                    ; 2 uses
  %i.es = sext i16 %.fr.i174 to i32               ; 2 uses
  %i.et = icmp eq i64 %indvars.iv.i164, 0
  %i.eu = icmp eq i16 %.fr.i174, 0                ; 2 uses
  %i.ev = and i1 %i.et, %i.eu
  %i.ew = zext i1 %i.ev to i16
  %i.ex = load i16, ptr %i.eh, align 2, !tbaa !148
  %i.ey = or i16 %i.ex, %i.ew
  store i16 %i.ey, ptr %i.eh, align 2, !tbaa !148
  %spec.select44.i175 = select i1 %i.eu, i32 %.02947.i166, i32 %i.es
  br label %.thread.i176

.thread.i176:                                     ; preds = %bb.u, %bb.t
  %.142.i177 = phi i32 [ %i.es, %bb.u ], [ 0, %bb.t ]
  %i.ez = phi i32 [ %spec.select44.i175, %bb.u ], [ %.02947.i166, %bb.t ] ; 2 uses
  %i.fa = trunc nsw i32 %i.ez to i16
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %.pre.i171
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !148
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, 64
  br i1 %exitcond.not.i180, label %Scaling_List.exit, label %bb.t, !llvm.loop !149

Scaling_List.exit:                                ; preds = %.thread.i176, %.thread.i, %bb.n
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.fc = load i32, ptr %i.ct, align 8, !tbaa !92
  %i.fd = shl i32 %i.fc, 1
  %i.fe = add i32 %i.fd, 6
  %i.ff = zext i32 %i.fe to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next203, %i.ff
  br i1 %i.fg, label %bb.n, label %.loopexit, !llvm.loop !162

.loopexit:                                        ; preds = %Scaling_List.exit, %bb.m, %bb.l
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !132
  %i.fj = tail call i32 @se_v(ptr noundef nonnull @.str.69, i32 noundef %i.fi, ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %.loopexit
  tail call void @SODBtoRBSP(ptr noundef nonnull %i.a) #11
  %i.fk = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.a) #11
  ret i32 %i.fk
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @alloc_colocated(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Scaling_List(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %2, 16
  %.in.in.v = select i1 %i.b, ptr @ZZ_SCAN, ptr @ZZ_SCAN8
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.048 = phi i32 [ 8, %.lr.ph ], [ %.142, %.thread ]
  %.02947 = phi i32 [ 8, %.lr.ph ], [ %i.u, %.thread ] ; 3 uses
  %.03146 = phi i32 [ 0, %.lr.ph ], [ %.13240, %.thread ] ; 2 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv
  %.in = load i8, ptr %.in.in, align 1, !tbaa !122 ; 2 uses
  %.not = icmp eq i32 %.048, 0
  %.pre = zext i8 %.in to i64                     ; 2 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pre ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !148
  %i.e = sext i16 %i.d to i32
  %i.f = sub nsw i32 %i.e, %.02947                ; 5 uses
  %i.g = icmp sgt i32 %i.f, 127
  %i.h = add nsw i32 %i.f, -256
  %i.i = icmp slt i32 %i.f, -128
  %i.j = add nsw i32 %i.f, 256
  %spec.select = select i1 %i.i, i32 %i.j, i32 %i.f
  %.030 = select i1 %i.g, i32 %i.h, i32 %spec.select
  %i.k = tail call i32 @se_v(ptr noundef nonnull @.str.4, i32 noundef %.030, ptr noundef %4) #11
  %i.l = add nsw i32 %i.k, %.03146
  %i.m = load i16, ptr %i.c, align 2, !tbaa !148
  %.fr = freeze i16 %i.m                          ; 2 uses
  %i.n = sext i16 %.fr to i32                     ; 2 uses
  %i.o = icmp eq i8 %.in, 0
  %i.p = icmp eq i16 %.fr, 0                      ; 2 uses
  %i.q = and i1 %i.o, %i.p
  %i.r = zext i1 %i.q to i16
  %i.s = load i16, ptr %3, align 2, !tbaa !148
  %i.t = or i16 %i.s, %i.r
  store i16 %i.t, ptr %3, align 2, !tbaa !148
  %spec.select44 = select i1 %i.p, i32 %.02947, i32 %i.n
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.142 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %.13240 = phi i32 [ %i.l, %bb.c ], [ %.03146, %bb.b ] ; 2 uses
  %i.u = phi i32 [ %spec.select44, %bb.c ], [ %.02947, %bb.b ] ; 2 uses
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.pre
  store i16 %i.v, ptr %i.w, align 2, !tbaa !148
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %.13240, %.thread ]
  ret i32 %.031.lcssa
}

declare i32 @se_v(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @u_v(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @u_1(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ue_v(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @SODBtoRBSP(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GenerateSEImessage_NALU() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64000 x i8], align 16            ; 4 uses
  %i.b = tail call ptr @AllocNALU(i32 noundef 64000) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = call i32 @GenerateSEImessage_rbsp(i32 poison, ptr noundef nonnull %i.a)
  %i.d = call i32 @RBSPtoNALU(ptr noundef nonnull %i.a, ptr noundef %i.b, i32 noundef %i.c, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  store i32 4, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GenerateSEImessage_rbsp(i32 %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 7 uses
  %2 = alloca %struct.timeb, align 8              ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #12 ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 8, ptr %i.e, align 4, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.f = load ptr, ptr @input, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1584
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #14 ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.j = call i32 @ftime(ptr noundef nonnull %2) #11 ; 0 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.70, i64 noundef 13, i1 false) #11
  %i.l = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef 5, ptr noundef nonnull %i.b) #11 ; 0 uses
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @input, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1584
  %i.o = and i64 %i.h, 4294967295
  %i.p = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, i64 noundef %i.o) #11 ; 0 uses
  %i.q = add i32 %i.i, 17                         ; 3 uses
  %i.r = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef 5, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.s = icmp ugt i32 %i.q, 254
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.139 = phi i32 [ %i.u, %.lr.ph ], [ %i.q, %bb.d ]
  %i.t = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.72, i32 noundef 255, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.u = add i32 %.139, -255                      ; 3 uses
  %i.v = icmp ugt i32 %i.u, 254
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %.lr.ph, %.thread, %bb.d
  %.1.lcssa = phi i32 [ %i.q, %bb.d ], [ 30, %.thread ], [ %i.u, %.lr.ph ]
  %i.w = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.73, i32 noundef %.1.lcssa, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !164
  %i.z = sext i16 %i.y to i32
  %i.aa = call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef %i.z, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ab = load i64, ptr %2, align 8, !tbaa !167
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, 1000
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !168
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nsw i32 %i.ad, %i.ag
  %i.ai = call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef %i.ah, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.aj = call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef 1382116964, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ak = call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef 1869434195, ptr noundef nonnull %i.b) #11 ; 0 uses
  %char0 = load i8, ptr %i.a, align 16
  %.not = icmp eq i8 %char0, 0
  br i1 %.not, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge, %.lr.ph42
  %i.al = phi i64 [ %i.ar, %.lr.ph42 ], [ 0, %._crit_edge ]
  %.03440 = phi i32 [ %i.aq, %.lr.ph42 ], [ 0, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !122
  %i.ao = sext i8 %i.an to i32
  %i.ap = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.75, i32 noundef %i.ao, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.aq = add i32 %.03440, 1                      ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #14
  %i.at = icmp ugt i64 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph42, label %._crit_edge43, !llvm.loop !169

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  %i.au = call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef nonnull %i.b) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @SODBtoRBSP(ptr noundef nonnull %i.b) #11
  %i.av = load i32, ptr %i.b, align 8, !tbaa !156
  call void @free(ptr noundef nonnull %i.b) #11
  ret i32 %i.av
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @ftime(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 1576}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!16, !5, i64 4}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !5, i64 1160, !5, i64 1164, !5, i64 1168, !5, i64 1172, !5, i64 1176, !5, i64 1180, !17, i64 1184}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !18, i64 84, !5, i64 496, !18, i64 500, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944}
!18 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408}
!19 = !{!11, !5, i64 5276}
!20 = !{!11, !5, i64 5280}
!21 = !{!11, !5, i64 4136}
!22 = !{!11, !5, i64 2928}
!23 = !{!11, !5, i64 2932}
!24 = !{!11, !5, i64 0}
!25 = !{!11, !5, i64 4}
!26 = !{!16, !5, i64 24}
!27 = !{!16, !5, i64 8}
!28 = !{!16, !5, i64 12}
!29 = !{!16, !5, i64 16}
!30 = !{!16, !5, i64 20}
!31 = !{!16, !5, i64 28}
!32 = !{!11, !5, i64 5284}
!33 = !{!34, !5, i64 15540}
!34 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !35, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !36, i64 128, !36, i64 136, !5, i64 144, !38, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !40, i64 14160, !38, i64 14168, !38, i64 14176, !38, i64 14184, !40, i64 14192, !40, i64 14200, !9, i64 14208, !9, i64 14216, !42, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !43, i64 14376, !43, i64 14384, !43, i64 14392, !43, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !46, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !47, i64 15480, !48, i64 15488, !38, i64 15496, !47, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !49, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!35 = !{!"float", !6, i64 0}
!36 = !{!"p2 omnipotent char", !37, i64 0}
!37 = !{!"any p2 pointer", !9, i64 0}
!38 = !{!"p3 int", !39, i64 0}
!39 = !{!"any p3 pointer", !37, i64 0}
!40 = !{!"p4 int", !41, i64 0}
!41 = !{!"any p4 pointer", !39, i64 0}
!42 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!43 = !{!"p6 short", !44, i64 0}
!44 = !{!"any p6 pointer", !45, i64 0}
!45 = !{!"any p5 pointer", !41, i64 0}
!46 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!47 = !{!"p2 double", !37, i64 0}
!48 = !{!"p3 double", !39, i64 0}
!49 = !{!"short", !6, i64 0}
!50 = !{!16, !5, i64 80}
!51 = !{!16, !5, i64 88}
!52 = !{!11, !5, i64 5088}
!53 = !{!16, !5, i64 84}
!54 = !{!34, !5, i64 15288}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!11, !5, i64 32}
!58 = !{!16, !5, i64 1132}
!59 = !{!16, !5, i64 1136}
!60 = !{!11, !5, i64 4704}
!61 = !{!11, !5, i64 4708}
!62 = !{!16, !5, i64 1148}
!63 = !{!11, !5, i64 56}
!64 = !{!34, !5, i64 15584}
!65 = !{!16, !5, i64 1140}
!66 = !{!11, !5, i64 60}
!67 = !{!34, !5, i64 15588}
!68 = !{!16, !5, i64 1144}
!69 = !{!16, !5, i64 1152}
!70 = !{!11, !5, i64 2116}
!71 = !{!16, !5, i64 1156}
!72 = !{!11, !5, i64 5272}
!73 = !{!11, !5, i64 64}
!74 = !{!11, !5, i64 1580}
!75 = !{!16, !5, i64 1180}
!76 = !{!16, !5, i64 32}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTS16colocated_params", !9, i64 0}
!79 = !{!11, !5, i64 5208}
!80 = !{!16, !5, i64 36}
!81 = !{!11, !5, i64 5100}
!82 = !{!16, !5, i64 1160}
!83 = !{!16, !5, i64 1164}
!84 = !{!16, !5, i64 1172}
!85 = !{!16, !5, i64 1168}
!86 = !{!16, !5, i64 1176}
!87 = !{!88, !5, i64 8}
!88 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !6, i64 100, !6, i64 132, !5, i64 164, !5, i64 168, !5, i64 172, !14, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232}
!89 = !{!88, !5, i64 4}
!90 = !{!11, !5, i64 4008}
!91 = !{!88, !5, i64 12}
!92 = !{!88, !5, i64 16}
!93 = !{!88, !5, i64 20}
!94 = !{!34, !5, i64 15356}
!95 = !{!88, !5, i64 56}
!96 = !{!11, !5, i64 5032}
!97 = !{!88, !5, i64 60}
!98 = !{!88, !14, i64 176}
!99 = !{!11, !5, i64 5036}
!100 = !{!88, !5, i64 64}
!101 = !{!11, !13, i64 5064}
!102 = distinct !{!102, !56, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !56, !103}
!108 = !{!11, !13, i64 5040}
!109 = !{!11, !13, i64 5048}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = !{!111, !116}
!116 = distinct !{!116, !112}
!117 = !{!116}
!118 = distinct !{!118, !56, !103, !104}
!119 = distinct !{!119, !56, !103}
!120 = !{!88, !5, i64 172}
!121 = !{!11, !14, i64 5056}
!122 = !{!6, !6, i64 0}
!123 = distinct !{!123, !56}
!124 = !{!88, !5, i64 184}
!125 = !{!88, !5, i64 188}
!126 = !{!88, !5, i64 192}
!127 = !{!88, !5, i64 196}
!128 = !{!88, !5, i64 200}
!129 = !{!88, !5, i64 204}
!130 = !{!88, !5, i64 208}
!131 = !{!88, !5, i64 212}
!132 = !{!88, !5, i64 216}
!133 = !{!11, !5, i64 4748}
!134 = !{!88, !5, i64 220}
!135 = !{!11, !5, i64 272}
!136 = !{!88, !5, i64 224}
!137 = !{!11, !5, i64 5084}
!138 = !{!88, !5, i64 228}
!139 = distinct !{!139, !56}
!140 = !{!141, !5, i64 0}
!141 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24}
!142 = !{!143, !14, i64 32}
!143 = !{!"", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40}
!144 = !{!143, !5, i64 4}
!145 = !{!34, !5, i64 15536}
!146 = !{!16, !5, i64 72}
!147 = !{!16, !5, i64 76}
!148 = !{!49, !49, i64 0}
!149 = distinct !{!149, !56}
!150 = distinct !{!150, !56}
!151 = !{!16, !5, i64 92}
!152 = !{!16, !5, i64 96}
!153 = !{!16, !5, i64 100}
!154 = !{!16, !5, i64 104}
!155 = distinct !{!155, !56}
!156 = !{!143, !5, i64 0}
!157 = distinct !{!157, !56}
!158 = distinct !{!158, !56}
!159 = !{!88, !5, i64 164}
!160 = !{!88, !5, i64 168}
!161 = distinct !{!161, !56}
!162 = distinct !{!162, !56}
!163 = distinct !{!163, !56}
!164 = !{!165, !49, i64 10}
!165 = !{!"timeb", !166, i64 0, !49, i64 8, !49, i64 10, !49, i64 12}
!166 = !{!"long", !6, i64 0}
!167 = !{!165, !166, i64 0}
!168 = !{!165, !49, i64 8}
!169 = distinct !{!169, !56}
end_hunk_2
