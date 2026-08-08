inline.NumInlined: 11
inline.NumDeleted: 9
begin_hunk_0
@PES_sequence = internal constant [3 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_prefix, i32 0, i32 0, ptr @dissect_mpeg_pes_OCTET_STRING_SIZE_3 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_stream, i32 0, i32 0, ptr @dissect_mpeg_pes_T_stream }, %struct._per_sequence_t zeroinitializer], align 16
@Picture_sequence = internal constant [4 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_temporal_sequence_number, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_10 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_frame_type, i32 0, i32 0, ptr @dissect_mpeg_pes_T_frame_type }, %struct._per_sequence_t { ptr @hf_mpeg_pes_vbv_delay, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_16 }, %struct._per_sequence_t zeroinitializer], align 16
@Sequence_header_sequence = internal constant [11 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_horizontal_size, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_12 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_vertical_size, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_12 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_aspect_ratio, i32 0, i32 0, ptr @dissect_mpeg_pes_T_aspect_ratio }, %struct._per_sequence_t { ptr @hf_mpeg_pes_frame_rate, i32 0, i32 0, ptr @dissect_mpeg_pes_T_frame_rate }, %struct._per_sequence_t { ptr @hf_mpeg_pes_bit_rate, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_18 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_one, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_vbv_buffer_size, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_10 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_constrained_parameters_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_load_intra_quantiser_matrix, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_load_non_intra_quantiser_matrix, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t zeroinitializer], align 16
@T_frame_rate_value_map = internal constant [9 x i32] [i32 0, i32 23976, i32 24000, i32 25000, i32 29970, i32 30000, i32 50000, i32 59940, i32 60000], align 16
@Sequence_extension_sequence = internal constant [13 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_0001, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_4 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_profile_and_level, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_255 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_progressive_sequence, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_chroma_format, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_3 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_horizontal_size_extension, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_3 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_vertical_size_extension, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_3 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_bit_rate_extension, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_12 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_one, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_vbv_buffer_size_extension, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_255 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_low_delay, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_frame_rate_extension_n, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_3 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_frame_rate_extension_d, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_3 }, %struct._per_sequence_t zeroinitializer], align 16
@Group_of_pictures_sequence = internal constant [10 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_drop_frame_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_hour, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_32 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_minute, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_64 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_one, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_second, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_64 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_frame, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_64 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_closed_gop, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_broken_gop, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_zero, i32 0, i32 0, ptr @dissect_mpeg_pes_BIT_STRING_SIZE_5 }, %struct._per_sequence_t zeroinitializer], align 16
@Stream_sequence = internal constant [18 x %struct._per_sequence_t] [%struct._per_sequence_t { ptr @hf_mpeg_pes_length, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_65535 }, %struct._per_sequence_t { ptr @hf_mpeg_pes_must_be_one, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_stream_must_be_zero, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_scrambling_control, i32 0, i32 0, ptr @dissect_mpeg_pes_T_scrambling_control }, %struct._per_sequence_t { ptr @hf_mpeg_pes_priority, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_data_alignment, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_copyright, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_original, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_pts_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_dts_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_escr_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_es_rate_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_dsm_trick_mode_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_additional_copy_info_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_crc_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_extension_flag, i32 0, i32 0, ptr @dissect_mpeg_pes_BOOLEAN }, %struct._per_sequence_t { ptr @hf_mpeg_pes_header_data_length, i32 0, i32 0, ptr @dissect_mpeg_pes_INTEGER_0_255 }, %struct._per_sequence_t zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mpeg_pes() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188) ; 2 uses
  store i32 %i.a, ptr @proto_mpeg, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.188, ptr noundef nonnull @dissect_mpeg, i32 noundef %i.a)
  store ptr %i.b, ptr @mpeg_handle, align 8
  %i.c = load i32, ptr @proto_mpeg, align 4
  %i.d = tail call ptr @register_heur_dissector_list_with_description(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, i32 noundef %i.c)
  store ptr %i.d, ptr @heur_subdissector_list, align 8
  %i.e = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.192) ; 2 uses
  store i32 %i.e, ptr @proto_mpeg_pes, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_mpeg_pes.hf, i32 noundef 83)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_mpeg_pes.ett, i32 noundef 9)
  %i.f = load i32, ptr @proto_mpeg_pes, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.192, ptr noundef nonnull @dissect_mpeg_pes, i32 noundef %i.f) ; 0 uses
  %i.h = load i32, ptr @proto_mpeg_pes, align 4
  %i.i = tail call ptr @expert_register_protocol(i32 noundef %i.h)
  tail call void @expert_register_field_array(ptr noundef %i.i, ptr noundef nonnull @proto_register_mpeg_pes.ei_pes, i32 noundef 1)
  %i.j = load i32, ptr @proto_mpeg_pes, align 4
  %i.k = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.193, i32 noundef %i.j, i32 noundef 4, i32 noundef 2)
  store ptr %i.k, ptr @stream_type_table, align 8
  %i.l = tail call i32 @register_tap(ptr noundef nonnull @.str.194)
  store i32 %i.l, ptr @mpeg_pes_follow_tap, align 4
  %i.m = load i32, ptr @proto_mpeg_pes, align 4
  tail call void @register_follow_stream(i32 noundef %i.m, ptr noundef nonnull @.str.194, ptr noundef nonnull @mp2t_follow_conv_filter, ptr noundef nonnull @mp2t_follow_index_filter, ptr noundef nonnull @udp_follow_address_filter, ptr noundef nonnull @udp_port_to_display, ptr noundef nonnull @follow_tvb_tap_listener, ptr noundef nonnull @mp2t_get_stream_count, ptr noundef nonnull @mp2t_get_sub_stream_id)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mpeg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = load ptr, ptr @heur_subdissector_list, align 8
  %i.c = call zeroext i1 @dissector_try_heuristic(ptr noundef %i.b, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef nonnull @.str.187)
  %i.f = load ptr, ptr %i.d, align 8
  call void @col_clear(ptr noundef %i.f, i32 noundef 25)
  %i.g = load i32, ptr @proto_mpeg, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mpeg_pes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.nstime_t, align 8           ; 5 uses
  %5 = alloca %struct._asn1_ctx_t, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.a = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  br i1 %i.a, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef nonnull @.str.191)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.e, i32 noundef 25)
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 8 uses
  %i.g = zext i8 %i.f to i32
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @val_to_str(ptr noundef %i.j, i32 noundef %i.g, ptr noundef nonnull @mpeg_pes_T_stream_vals, ptr noundef nonnull @.str.293)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull @.str.292, ptr noundef %i.k)
  %i.l = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.m = trunc i64 %i.l to i32
  call void @asn1_ctx_init(ptr noundef nonnull %5, i32 noundef 1, i1 noundef zeroext true, ptr noundef %1)
  %i.n = load i32, ptr @proto_mpeg_pes, align 4
  %i.o = load i32, ptr @ett_mpeg_pes_PES, align 4
  %i.p = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @PES_sequence) ; 19 uses
  call void @increment_dissection_depth(ptr noundef %1)
  switch i8 %i.f, label %bb.l [
    i8 0, label %bb.d
    i8 -77, label %bb.e
    i8 -75, label %bb.f
    i8 -72, label %bb.g
    i8 -70, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.r = lshr i8 %i.q, 3
  %i.s = and i8 %i.r, 7
  %i.t = zext nneg i8 %i.s to i32
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = call ptr @val_to_str(ptr noundef %i.v, i32 noundef %i.t, ptr noundef nonnull @mpeg_pes_T_frame_type_vals, ptr noundef nonnull @.str.294)
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.292, ptr noundef %i.w)
  %i.x = load i32, ptr @hf_mpeg_video_picture, align 4
  %i.y = load i32, ptr @ett_mpeg_pes_Picture, align 4
  %i.z = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @Picture_sequence)
  %i.aa = load i32, ptr @hf_mpeg_video_data, align 4
  %i.ab = lshr i32 %i.z, 3
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ab, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.ad = load i32, ptr @hf_mpeg_video_sequence_header, align 4
  %i.ae = load i32, ptr @ett_mpeg_pes_Sequence_header, align 4
  %i.af = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull @Sequence_header_sequence) ; 2 uses
  %i.ag = load i32, ptr @hf_mpeg_video_quantization_matrix, align 4
  %i.ah = lshr i32 %i.af, 3
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %i.af, 512
  %i.ak = lshr i32 %i.aj, 3
  %i.al = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ak)
  %i.am = call i32 @dissect_mpeg_pes(ptr noundef %i.al, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %bb.al

bb.f:                                             ; preds = %bb.c
  %i.an = load i32, ptr @hf_mpeg_video_sequence_extension, align 4
  %i.ao = load i32, ptr @ett_mpeg_pes_Sequence_extension, align 4
  %i.ap = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef nonnull @Sequence_extension_sequence)
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.aq)
  %i.as = call i32 @dissect_mpeg_pes(ptr noundef %i.ar, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %bb.al

bb.g:                                             ; preds = %bb.c
  %i.at = load i32, ptr @hf_mpeg_video_group_of_pictures, align 4
  %i.au = load i32, ptr @ett_mpeg_pes_Group_of_pictures, align 4
  %i.av = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.at, i32 noundef %i.au, ptr noundef nonnull @Group_of_pictures_sequence)
  %i.aw = lshr i32 %i.av, 3
  %i.ax = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.aw)
  %i.ay = call i32 @dissect_mpeg_pes(ptr noundef %i.ax, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %bb.al

bb.h:                                             ; preds = %bb.c
  %i.az = lshr i32 %i.p, 3                        ; 2 uses
  %i.ba = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.az)
  %.mask = and i8 %i.ba, -64
  %i.bb = icmp eq i8 %.mask, 64
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr @hf_mpeg_pes_pack_header, align 4
  %i.bd = sdiv i32 %i.p, 8                        ; 3 uses
  %i.be = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef 10, i32 noundef 0)
  %i.bf = load i32, ptr @ett_mpeg_pes_pack_header, align 4
  %i.bg = call ptr @proto_item_add_subtree(ptr noundef %i.be, i32 noundef %i.bf) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.bh = call i64 @tvb_get_ntoh48(ptr noundef %0, i32 noundef range(i32 -268435456, 268435456) %i.bd) ; 4 uses
  %i.bi = lshr i64 %i.bh, 13
  %i.bj = and i64 %i.bi, 7516192768
  %i.bk = lshr i64 %i.bh, 12
  %i.bl = and i64 %i.bk, 1073709056
  %i.bm = or disjoint i64 %i.bj, %i.bl
  %i.bn = lshr i64 %i.bh, 11
  %i.bo = and i64 %i.bn, 32767
  %i.bp = or disjoint i64 %i.bm, %i.bo
  %i.bq = lshr i64 %i.bh, 1
  %i.br = and i64 %i.bq, 511
  %i.bs = mul nuw nsw i64 %i.bp, 300
  %i.bt = add nuw nsw i64 %i.bs, %i.br            ; 2 uses
  %i.bu = urem i64 %i.bt, 27000000
  %i.bv = udiv i64 %i.bt, 27000000
  store i64 %i.bv, ptr %4, align 8
  %i.bw = mul nuw nsw i64 %i.bu, 1000
  %i.bx = udiv i64 %i.bw, 27
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = load i32, ptr @hf_mpeg_pes_scr, align 4
  %i.cb = call ptr @proto_tree_add_time(ptr noundef %i.bg, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bd, i32 noundef 6, ptr noundef nonnull %4) ; 0 uses
  %i.cc = add i32 %i.p, 48
  %i.cd = sdiv i32 %i.cc, 8                       ; 2 uses
  %i.ce = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.cd)
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = mul i32 %i.cf, 50
  %i.ch = load i32, ptr @hf_mpeg_pes_program_mux_rate, align 4
  %i.ci = call ptr @proto_tree_add_uint(ptr noundef %i.bg, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.cd, i32 noundef 3, i32 noundef %i.cg) ; 0 uses
  %i.cj = add i32 %i.p, 72
  %i.ck = sdiv i32 %i.cj, 8                       ; 2 uses
  %i.cl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ck)
  %i.cm = and i8 %i.cl, 7                         ; 2 uses
  %i.cn = load i32, ptr @hf_mpeg_pes_stuffing_length, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.bg, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ck, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i, label %dissect_mpeg_pes_pack_header.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = add i32 %i.p, 80
  %i.cq = zext nneg i8 %i.cm to i32
  %i.cr = load i32, ptr @hf_mpeg_pes_stuffing, align 4
  %i.cs = sdiv i32 %i.cp, 8
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.bg, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef %i.cq, i32 noundef 0) ; 0 uses
  br label %dissect_mpeg_pes_pack_header.exit

dissect_mpeg_pes_pack_header.exit:                ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.cu = load i32, ptr @hf_mpeg_pes_data, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.az, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.l:                                             ; preds = %bb.c
  %i.cw = and i8 %i.f, -5
  %or.cond = icmp eq i8 %i.cw, -69
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = lshr i32 %i.p, 3                        ; 2 uses
  %i.cy = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.cx)
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i32, ptr @hf_mpeg_pes_length, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dc = add i32 %i.p, 16
  %i.dd = load i32, ptr @hf_mpeg_pes_data, align 4
  %i.de = lshr i32 %i.dc, 3
  %i.df = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.de, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.n:                                             ; preds = %bb.l
  %i.dg = icmp eq i8 %i.f, -66
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = lshr i32 %i.p, 3                        ; 2 uses
  %i.di = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.dh)
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i32, ptr @hf_mpeg_pes_length, align 4
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dk, ptr noundef %0, i32 noundef %i.dh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dm = add i32 %i.p, 16
  %i.dn = load i32, ptr @hf_mpeg_pes_padding, align 4
  %i.do = lshr i32 %i.dm, 3
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dn, ptr noundef %0, i32 noundef %i.do, i32 noundef %i.dj, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.p:                                             ; preds = %bb.n
  %i.dq = icmp eq i8 %i.f, -67                    ; 2 uses
  %i.dr = icmp ugt i8 %i.f, -65
  %or.cond3 = or i1 %i.dq, %i.dr
  br i1 %or.cond3, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.ds = lshr i32 %i.p, 3                        ; 2 uses
  %i.dt = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ds) ; 2 uses
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.dw = icmp slt i8 %i.dv, -64
  br i1 %i.dw, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.dx = load i32, ptr @hf_mpeg_pes_extension, align 4
  %i.dy = load i32, ptr @ett_mpeg_pes_Stream, align 4
  %i.dz = call i32 @dissect_per_sequence(ptr noundef %0, i32 noundef %i.p, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %i.dx, i32 noundef %i.dy, ptr noundef nonnull @Stream_sequence) ; 4 uses
  %.not179 = icmp eq i16 %i.dt, 0
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = sub i32 %i.dz, %i.p
  %i.eb = lshr i32 %i.ea, 3
  %.neg188 = add nuw nsw i32 %i.du, 2
  %i.ec = sub nsw i32 %.neg188, %i.eb
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %trunc = trunc i64 %i.l to i8
  switch i8 %trunc, label %.thread [
    i8 50, label %bb.w
    i8 33, label %bb.w
  ]

bb.v:                                             ; preds = %bb.t
  %i.ed = and i8 %i.f, -16
  %or.cond8.not = icmp eq i8 %i.ed, -32
  br i1 %or.cond8.not, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.u, %bb.v
  %i.ee = sdiv i32 %i.p, 8
  %i.ef = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_mpeg_pes_length_zero, ptr noundef %0, i32 noundef %i.ee, i32 noundef 2) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.u, %.thread, %bb.v, %bb.s
  %.0173 = phi i32 [ %i.ec, %bb.s ], [ 0, %bb.u ], [ 0, %.thread ], [ 0, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.eg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 8) ; 2 uses
  %.not180 = icmp eq i8 %i.eg, 0
  br i1 %.not180, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = zext i8 %i.eg to i32                    ; 3 uses
  %i.ei = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %i.ej = zext i8 %i.ei to i32
  %i.ek = lshr i32 %i.dz, 3
  %i.el = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ek, i32 noundef %i.eh)
  call fastcc void @dissect_mpeg_pes_header_data(ptr noundef %i.el, ptr noundef %2, i32 noundef %i.ej)
  %i.em = shl nuw nsw i32 %i.eh, 3
  %i.en = add i32 %i.em, %i.dz                    ; 2 uses
  %.not181 = icmp eq i32 %.0173, 0
  %i.eo = sub nsw i32 %.0173, %i.eh
  br i1 %.not181, label %.thread184, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2 = phi i32 [ %i.eo, %bb.x ], [ %.0173, %bb.w ] ; 2 uses
  %.0171 = phi i32 [ %i.en, %bb.x ], [ %i.dz, %bb.w ] ; 2 uses
  %i.ep = icmp eq i32 %.2, 0
  br i1 %i.ep, label %.thread184, label %bb.z

.thread184:                                       ; preds = %bb.x, %bb.y
  %.0171187 = phi i32 [ %.0171, %bb.y ], [ %i.en, %bb.x ]
  %i.eq = lshr i32 %.0171187, 3
  %i.er = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.eq)
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.es = lshr i32 %.0171, 3
  %i.et = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.es, i32 noundef %.2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread184
  %.0172 = phi ptr [ %i.er, %.thread184 ], [ %i.et, %bb.z ] ; 7 uses
  %i.eu = load i32, ptr @mpeg_pes_follow_tap, align 4
  %i.ev = call zeroext i1 @have_tap_listener(i32 noundef %i.eu)
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = load i32, ptr @mpeg_pes_follow_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.ew, ptr noundef %1, ptr noundef %.0172)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ex = load ptr, ptr @stream_type_table, align 8
  %i.ey = and i32 %i.m, 255
  %i.ez = call i32 @dissector_try_uint_with_data(ptr noundef %i.ex, i32 noundef %i.ey, ptr noundef %.0172, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef null)
  %.not182 = icmp eq i32 %i.ez, 0
  br i1 %.not182, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.fa = call i32 @tvb_get_ntoh24(ptr noundef %.0172, i32 noundef 0)
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = call i32 @dissect_mpeg_pes(ptr noundef %.0172, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.fd = call zeroext i8 @tvb_get_uint8(ptr noundef %.0172, i32 noundef 0)
  %i.fe = icmp eq i8 %i.fd, -1
  br i1 %i.fe, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ff = call i32 @dissect_mpeg(ptr noundef %.0172, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.fg = load i32, ptr @hf_mpeg_pes_data, align 4
  %i.fh = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fg, ptr noundef %.0172, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.q
  %i.fi = load i32, ptr @hf_mpeg_pes_length, align 4
  %i.fj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fi, ptr noundef %0, i32 noundef %i.ds, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fk = add i32 %i.p, 16
  %i.fl = load i32, ptr @hf_mpeg_pes_data, align 4
  %i.fm = lshr i32 %i.fk, 3
  %i.fn = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fl, ptr noundef %0, i32 noundef %i.fm, i32 noundef %i.du, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.aj:                                            ; preds = %bb.p
  %.not178 = icmp eq i8 %i.f, -71
  br i1 %.not178, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = load i32, ptr @hf_mpeg_pes_data, align 4
  %i.fp = lshr i32 %i.p, 3
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fo, ptr noundef %0, i32 noundef %i.fp, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ae, %bb.ah, %bb.ag, %bb.ac, %bb.e, %bb.g, %bb.m, %bb.ak, %bb.aj, %bb.o, %dissect_mpeg_pes_pack_header.exit, %bb.k, %bb.f, %bb.d
  call void @decrement_dissection_depth(ptr noundef %1)
  %i.fr = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %bb.a, %bb.al
  %.0 = phi i32 [ 0, %bb.a ], [ %i.fr, %bb.al ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_follow_stream(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @mp2t_follow_conv_filter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare ptr @mp2t_follow_index_filter(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare ptr @udp_follow_address_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare ptr @udp_port_to_display(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @follow_tvb_tap_listener(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @mp2t_get_stream_count() #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @mp2t_get_sub_stream_id(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mpeg_pes() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mpeg_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.195, i32 noundef 96, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_mpeg_pes, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.188, ptr noundef nonnull @dissect_mpeg_pes_heur, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.196, i32 noundef %i.b, i32 noundef 1)
  %i.c = load i32, ptr @proto_mpeg_pes, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.197, i32 noundef %i.c)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 27, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_mpeg_pes, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.198, i32 noundef %i.e)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 36, ptr noundef %i.f)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @dissect_mpeg_pes_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @dissect_mpeg_pes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @asn1_ctx_init(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_mpeg_pes_header_data(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 5 uses
  %4 = alloca %struct.nstime_t, align 8           ; 5 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.a = load i32, ptr @hf_mpeg_pes_header_data, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @ett_mpeg_pes_header_data, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 12 uses
  %.not = icmp samesign ult i32 %2, 128
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.e = tail call i64 @tvb_get_ntoh40(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.f, 7516192768
  %i.h = lshr i64 %i.e, 2
  %i.i = and i64 %i.h, 1073709056
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = lshr i64 %i.e, 1
  %i.l = and i64 %i.k, 32767
  %i.m = or disjoint i64 %i.j, %i.l               ; 2 uses
  %i.n = urem i64 %i.m, 90000
  %i.o = udiv i64 %i.m, 90000
  store i64 %i.o, ptr %3, align 8
  %i.p = mul nuw nsw i64 %i.n, 100000
  %i.q = udiv i64 %i.p, 9
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.r, ptr %i.s, align 8
  %i.t = load i32, ptr @hf_mpeg_pes_pts, align 4
  %i.u = call ptr @proto_tree_add_time(ptr noundef %i.d, i32 noundef %i.t, ptr noundef %0, i32 noundef 0, i32 noundef 5, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 5, %bb.b ], [ 0, %bb.a ]        ; 4 uses
  %i.v = and i32 %2, 64
  %.not122 = icmp eq i32 %i.v, 0
  br i1 %.not122, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.w = call i64 @tvb_get_ntoh40(ptr noundef %0, i32 noundef range(i32 0, 6) %.0) ; 3 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 7516192768
  %i.z = lshr i64 %i.w, 2
  %i.aa = and i64 %i.z, 1073709056
  %i.ab = or disjoint i64 %i.y, %i.aa
  %i.ac = lshr i64 %i.w, 1
  %i.ad = and i64 %i.ac, 32767
  %i.ae = or disjoint i64 %i.ab, %i.ad            ; 2 uses
  %i.af = urem i64 %i.ae, 90000
  %i.ag = udiv i64 %i.ae, 90000
  store i64 %i.ag, ptr %4, align 8
  %i.ah = mul nuw nsw i64 %i.af, 100000
  %i.ai = udiv i64 %i.ah, 9
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = load i32, ptr @hf_mpeg_pes_dts, align 4
  %i.am = call ptr @proto_tree_add_time(ptr noundef %i.d, i32 noundef %i.al, ptr noundef %0, i32 noundef %.0, i32 noundef 5, ptr noundef nonnull %4) ; 0 uses
  %i.an = add nuw nsw i32 %.0, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.an, %bb.d ], [ %.0, %bb.c ]  ; 4 uses
  %i.ao = and i32 %2, 32
  %.not123 = icmp eq i32 %i.ao, 0
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.ap = call i64 @tvb_get_ntoh48(ptr noundef %0, i32 noundef range(i32 -268435456, 268435456) %.1) ; 4 uses
  %i.aq = lshr i64 %i.ap, 13
  %i.ar = and i64 %i.aq, 7516192768
  %i.as = lshr i64 %i.ap, 12
  %i.at = and i64 %i.as, 1073709056
  %i.au = or disjoint i64 %i.ar, %i.at
  %i.av = lshr i64 %i.ap, 11
  %i.aw = and i64 %i.av, 32767
  %i.ax = or disjoint i64 %i.au, %i.aw
  %i.ay = lshr i64 %i.ap, 1
  %i.az = and i64 %i.ay, 511
  %i.ba = mul nuw nsw i64 %i.ax, 300
  %i.bb = add nuw nsw i64 %i.ba, %i.az            ; 2 uses
  %i.bc = urem i64 %i.bb, 27000000
  %i.bd = udiv i64 %i.bb, 27000000
  store i64 %i.bd, ptr %5, align 8
  %i.be = mul nuw nsw i64 %i.bc, 1000
  %i.bf = udiv i64 %i.be, 27
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = load i32, ptr @hf_mpeg_pes_escr, align 4
  %i.bj = call ptr @proto_tree_add_time(ptr noundef %i.d, i32 noundef %i.bi, ptr noundef %0, i32 noundef %.1, i32 noundef 6, ptr noundef nonnull %5) ; 0 uses
  %i.bk = add nuw nsw i32 %.1, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.bk, %bb.f ], [ %.1, %bb.e ]  ; 4 uses
  %i.bl = and i32 %2, 16
  %.not124 = icmp eq i32 %i.bl, 0
  br i1 %.not124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.2)
  %i.bn = lshr i16 %i.bm, 1
  %i.bo = and i16 %i.bn, 16383
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bp, 50
  %i.br = load i32, ptr @hf_mpeg_pes_es_rate, align 4
  %i.bs = call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.br, ptr noundef %0, i32 noundef %.2, i32 noundef 3, i32 noundef %i.bq) ; 0 uses
  %i.bt = add nuw nsw i32 %.2, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %i.bt, %bb.h ], [ %.2, %bb.g ]  ; 10 uses
  %i.bu = and i32 %2, 8
  %.not125 = icmp eq i32 %i.bu, 0
  br i1 %.not125, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3) ; 2 uses
  %i.bw = load i32, ptr @hf_mpeg_pes_dsm_trick_mode, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.bw, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0)
  %i.by = load i32, ptr @ett_mpeg_pes_trick_mode, align 4
  %i.bz = call ptr @proto_item_add_subtree(ptr noundef %i.bx, i32 noundef %i.by) ; 6 uses
  %i.ca = zext i8 %i.bv to i32                    ; 5 uses
  %i.cb = lshr i8 %i.bv, 5                        ; 2 uses
  %i.cc = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_control, align 4
  %i.cd = zext nneg i8 %i.cb to i32
  %i.ce = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.cd) ; 0 uses
  switch i8 %i.cb, label %bb.n [
    i8 3, label %bb.k
    i8 0, label %bb.k
    i8 4, label %bb.l
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.cf = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_field_id, align 4
  %i.cg = lshr i32 %i.ca, 3
  %i.ch = and i32 %i.cg, 3
  %i.ci = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.cf, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.ch) ; 0 uses
  %i.cj = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_intra_slice_refresh, align 4
  %i.ck = lshr i32 %i.ca, 2
  %i.cl = and i32 %i.ck, 1
  %i.cm = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.cl) ; 0 uses
  %i.cn = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_frequency_truncation, align 4
  %i.co = and i32 %i.ca, 3
  %i.cp = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.cn, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.co) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.cq = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_rep_cntrl, align 4
  %i.cr = and i32 %i.ca, 31
  %i.cs = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.cq, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.cr) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ct = load i32, ptr @hf_mpeg_pes_dsm_trick_mode_field_id, align 4
  %i.cu = lshr i32 %i.ca, 3
  %i.cv = and i32 %i.cu, 3
  %i.cw = call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.ct, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.cv) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %i.cx = add nuw nsw i32 %.3, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.4 = phi i32 [ %i.cx, %bb.n ], [ %.3, %bb.i ]  ; 3 uses
  %i.cy = and i32 %2, 4
  %.not126 = icmp eq i32 %i.cy, 0
  br i1 %.not126, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = load i32, ptr @hf_mpeg_pes_copy_info, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.cz, ptr noundef %0, i32 noundef %.4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.db = add nuw nsw i32 %.4, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i32 [ %i.db, %bb.p ], [ %.4, %bb.o ]  ; 3 uses
  %i.dc = and i32 %2, 2
  %.not127 = icmp eq i32 %i.dc, 0
  br i1 %.not127, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load i32, ptr @hf_mpeg_pes_crc, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.dd, ptr noundef %0, i32 noundef %.5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.df = add nuw nsw i32 %.5, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.6 = phi i32 [ %i.df, %bb.r ], [ %.5, %bb.q ]  ; 4 uses
  %i.dg = and i32 %2, 1
  %.not128 = icmp eq i32 %i.dg, 0
  br i1 %.not128, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.6) ; 2 uses
  %i.di = zext i8 %i.dh to i32                    ; 4 uses
  %i.dj = load i32, ptr @hf_mpeg_pes_extension_flags, align 4
  %i.dk = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.dj, ptr noundef %0, i32 noundef %.6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dl = add nuw nsw i32 %.6, 1                  ; 2 uses
  %.not129 = icmp sgt i8 %i.dh, -1
  br i1 %.not129, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = load i32, ptr @hf_mpeg_pes_private_data, align 4
  %i.dn = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.dl, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.do = add nuw nsw i32 %.6, 17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.7 = phi i32 [ %i.do, %bb.u ], [ %i.dl, %bb.t ] ; 3 uses
  %i.dp = and i32 %i.di, 64
  %.not130 = icmp eq i32 %i.dp, 0
  br i1 %.not130, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = load i32, ptr @hf_mpeg_pes_pack_length, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.dq, ptr noundef %0, i32 noundef %.7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ds = add nuw nsw i32 %.7, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.8 = phi i32 [ %i.ds, %bb.w ], [ %.7, %bb.v ]  ; 3 uses
  %i.dt = and i32 %i.di, 32
  %.not131 = icmp eq i32 %i.dt, 0
  br i1 %.not131, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = load i32, ptr @hf_mpeg_pes_sequence, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.du, ptr noundef %0, i32 noundef %.8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dw = add nuw nsw i32 %.8, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.9 = phi i32 [ %i.dw, %bb.y ], [ %.8, %bb.x ]  ; 4 uses
  %i.dx = and i32 %i.di, 16
  %.not132 = icmp eq i32 %i.dx, 0
  br i1 %.not132, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.9)
  %i.dz = zext i16 %i.dy to i32                   ; 2 uses
  %i.ea = load i32, ptr @hf_mpeg_pes_pstd_buffer, align 4
  %i.eb = and i32 %i.dz, 8192
  %.not133 = icmp eq i32 %i.eb, 0
  %i.ec = and i32 %i.dz, 511
  %i.ed = select i1 %.not133, i32 7, i32 10
  %i.ee = shl nuw nsw i32 %i.ec, %i.ed
  %i.ef = call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.ea, ptr noundef %0, i32 noundef %.9, i32 noundef 2, i32 noundef %i.ee) ; 0 uses
  %i.eg = add nuw nsw i32 %.9, 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.10 = phi i32 [ %i.eg, %bb.aa ], [ %.9, %bb.z ]
  %i.eh = and i32 %i.di, 1
  %.not134 = icmp eq i32 %i.eh, 0
  br i1 %.not134, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load i32, ptr @hf_mpeg_pes_extension2, align 4
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ei, ptr noundef %0, i32 noundef %.10, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.s
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @have_tap_listener(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

end_hunk_0
