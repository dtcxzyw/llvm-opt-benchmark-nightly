Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cigi?download=true
inline.NumInlined: 53
inline.NumDeleted: 32
begin_hunk_0_@dissect_cigi_pdu:bb.a
    i8 106, label %bb.bn
    i8 107, label %bb.bo
    i8 108, label %bb.bp
    i8 109, label %bb.bq
    i8 110, label %bb.br
    i8 111, label %bb.bs
    i8 112, label %bb.bt
    i8 113, label %bb.bu
    i8 114, label %bb.bv
    i8 115, label %bb.bw
    i8 116, label %bb.bx
    i8 117, label %bb.by
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bl:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bm:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bn:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bp:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bq:                                            ; preds = %bb.bj
  br label %bb.ca

bb.br:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bs:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bu:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bj
  br label %bb.ca

bb.by:                                            ; preds = %bb.bj
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bj
  %i.cy = icmp ugt i8 %i.cd, -56
  %hf_cigi3_user_defined.hf_cigi_unknown.i = select i1 %i.cy, ptr @hf_cigi3_user_defined, ptr @hf_cigi_unknown
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.0147.shrunk.i = phi i8 [ 16, %bb.bj ], [ %.mux.i, %bb.z ], [ %i.cg, %bb.bz ], [ %i.cg, %bb.by ], [ 24, %bb.ab ], [ 32, %bb.ac ], [ 16, %bb.ad ], [ 32, %bb.ae ], [ 16, %bb.af ], [ 32, %bb.ag ], [ 16, %bb.ah ], [ 32, %bb.ai ], [ 48, %bb.aj ], [ 56, %bb.ak ], [ 24, %bb.al ], [ 32, %bb.am ], [ 8, %bb.an ], [ 32, %bb.ao ], [ 24, %bb.ap ], [ 8, %bb.aq ], [ 24, %bb.ar ], [ 24, %bb.as ], [ 32, %bb.at ], [ 40, %bb.au ], [ 48, %bb.av ], [ 32, %bb.aw ], [ 64, %bb.ax ], [ 56, %bb.ay ], [ 8, %bb.az ], [ 32, %bb.ba ], [ 56, %bb.bb ], [ %i.cg, %bb.bc ], [ %i.cg, %bb.bd ], [ %i.cg, %bb.be ], [ 8, %bb.bf ], [ 40, %bb.bg ], [ 32, %bb.bh ], [ 48, %bb.aa ], [ %.mux157.i, %bb.bi ], [ 16, %bb.bx ], [ 40, %bb.bk ], [ 16, %bb.bl ], [ 56, %bb.bm ], [ 24, %bb.bn ], [ 48, %bb.bo ], [ 48, %bb.bp ], [ 32, %bb.bq ], [ 8, %bb.br ], [ 16, %bb.bs ], [ 8, %bb.bt ], [ 16, %bb.bu ], [ 16, %bb.bv ], [ 8, %bb.bw ]
  %.0146.in.i = phi ptr [ @hf_cigi3_hat_hot_response, %bb.bj ], [ @hf_cigi3_ig_control, %bb.z ], [ %hf_cigi3_user_defined.hf_cigi_unknown.i, %bb.bz ], [ @hf_cigi3_image_generator_message, %bb.by ], [ @hf_cigi3_conformal_clamped_entity_control, %bb.ab ], [ @hf_cigi3_component_control, %bb.ac ], [ @hf_cigi3_short_component_control, %bb.ad ], [ @hf_cigi3_articulated_part_control, %bb.ae ], [ @hf_cigi3_short_articulated_part_control, %bb.af ], [ @hf_cigi3_rate_control, %bb.ag ], [ @hf_cigi3_celestial_sphere_control, %bb.ah ], [ @hf_cigi3_atmosphere_control, %bb.ai ], [ @hf_cigi3_environmental_region_control, %bb.aj ], [ @hf_cigi3_weather_control, %bb.ak ], [ @hf_cigi3_maritime_surface_conditions_control, %bb.al ], [ @hf_cigi3_wave_control, %bb.am ], [ @hf_cigi3_terrestrial_surface_conditions_control, %bb.an ], [ @hf_cigi3_view_control, %bb.ao ], [ @hf_cigi3_sensor_control, %bb.ap ], [ @hf_cigi3_motion_tracker_control, %bb.aq ], [ @hf_cigi3_earth_reference_model_definition, %bb.ar ], [ @hf_cigi3_trajectory_definition, %bb.as ], [ @hf_cigi3_view_definition, %bb.at ], [ @hf_cigi3_collision_detection_segment_definition, %bb.au ], [ @hf_cigi3_collision_detection_volume_definition, %bb.av ], [ @hf_cigi3_hat_hot_request, %bb.aw ], [ @hf_cigi3_line_of_sight_segment_request, %bb.ax ], [ @hf_cigi3_line_of_sight_vector_request, %bb.ay ], [ @hf_cigi3_position_request, %bb.az ], [ @hf_cigi3_environmental_conditions_request, %bb.ba ], [ @hf_cigi3_3_symbol_surface_definition, %bb.bb ], [ @hf_cigi3_3_symbol_text_definition, %bb.bc ], [ @hf_cigi3_3_symbol_circle_definition, %bb.bd ], [ @hf_cigi3_3_symbol_line_definition, %bb.be ], [ @hf_cigi3_3_symbol_clone, %bb.bf ], [ @hf_cigi3_3_symbol_control, %bb.bg ], [ @hf_cigi3_3_short_symbol_control, %bb.bh ], [ @hf_cigi3_entity_control, %bb.aa ], [ %hf_cigi3_2_start_of_frame.mux.i, %bb.bi ], [ @hf_cigi3_event_notification, %bb.bx ], [ @hf_cigi3_hat_hot_extended_response, %bb.bk ], [ @hf_cigi3_line_of_sight_response, %bb.bl ], [ @hf_cigi3_line_of_sight_extended_response, %bb.bm ], [ @hf_cigi3_sensor_response, %bb.bn ], [ @hf_cigi3_sensor_extended_response, %bb.bo ], [ @hf_cigi3_position_response, %bb.bp ], [ @hf_cigi3_weather_conditions_response, %bb.bq ], [ @hf_cigi3_aerosol_concentration_response, %bb.br ], [ @hf_cigi3_maritime_surface_conditions_response, %bb.bs ], [ @hf_cigi3_terrestrial_surface_conditions_response, %bb.bt ], [ @hf_cigi3_collision_detection_segment_notification, %bb.bu ], [ @hf_cigi3_collision_detection_volume_notification, %bb.bv ], [ @hf_cigi3_animation_stop_notification, %bb.bw ]
  %.0147.i = zext i8 %.0147.shrunk.i to i32       ; 4 uses
  %.0146.i = load i32, ptr %.0146.in.i, align 4
  %i.cz = tail call ptr @val_to_str_ext_const(i32 noundef %i.ce, ptr noundef @cigi3_packet_id_vals_ext, ptr noundef @.str.20)
  %i.da = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.aj, i32 noundef %.0146.i, ptr noundef %0, i32 noundef %.0148.i, i32 noundef %.0147.i, ptr noundef @.str.2892, ptr noundef %i.cz, i32 noundef %.0147.i)
  %i.db = load i32, ptr @ett_cigi, align 4
  %i.dc = tail call ptr @proto_item_add_subtree(ptr noundef %i.da, i32 noundef %i.db) ; 5 uses
  %i.dd = load i32, ptr @hf_cigi3_packet_id, align 4
  %.b153.i = load i1, ptr @cigi_byte_order, align 4
  %i.de = select i1 %.b153.i, i32 -2147483648, i32 0
  %i.df = tail call ptr @proto_tree_add_item(ptr noundef %i.dc, i32 noundef %i.dd, ptr noundef %0, i32 noundef %.0148.i, i32 noundef 1, i32 noundef %i.de) ; 0 uses
  %i.dg = load i32, ptr @hf_cigi_packet_size, align 4
  %.b.i = load i1, ptr @cigi_byte_order, align 4
  %i.dh = select i1 %.b.i, i32 -2147483648, i32 0
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.dc, i32 noundef %i.dg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 1, i32 noundef %i.dh)
  %i.dj = icmp ult i8 %i.cg, 2
  br i1 %i.dj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.dk = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.di, ptr noundef @ei_cigi_invalid_len) ; 0 uses
  br label %cigi3_add_tree.exit

bb.cc:                                            ; preds = %bb.ca
  %i.dl = add i32 %.0148.i, 2                     ; 2 uses
  %i.dm = add nsw i32 %.0147.i, -2
  %i.dn = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.dl, i32 noundef %i.dm) ; 3 uses
  %i.do = load ptr, ptr @cigi3_packet_id_table, align 8
  %i.dp = tail call i32 @dissector_try_uint_with_data(ptr noundef %i.do, i32 noundef %i.ce, ptr noundef %i.dn, ptr noundef %1, ptr noundef %i.dc, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.dr = tail call i32 @tvb_reported_length_remaining(ptr noundef %i.dn, i32 noundef 0) ; 2 uses
  %i.ds = load i32, ptr @hf_cigi_data, align 4
  %i.dt = tail call ptr @proto_tree_add_item(ptr noundef %i.dc, i32 noundef %i.ds, ptr noundef %i.dn, i32 noundef 0, i32 noundef %i.dr, i32 noundef 0) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0145.i = phi i32 [ %i.dr, %bb.cd ], [ %i.dp, %bb.cc ]
  %i.du = add i32 %.0145.i, %i.dl                 ; 2 uses
  %i.dv = sub i32 %i.du, %.0148.i                 ; 2 uses
  %.not.i98 = icmp eq i32 %i.dv, %.0147.i
  br i1 %.not.i98, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.ce
  %i.dw = tail call ptr @proto_tree_add_expert(ptr noundef %i.dc, ptr noundef %1, ptr noundef @ei_cigi_invalid_len, ptr noundef %0, i32 noundef %.0148.i, i32 noundef %i.dv) ; 0 uses
  br label %cigi3_add_tree.exit

bb.cf:                                            ; preds = %proto_item_set_hidden.exit97
  %i.dx = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.er, %bb.cf
  %.0142.i = phi i32 [ 0, %bb.cf ], [ %i.fm, %bb.er ] ; 9 uses
  %i.dy = icmp ult i32 %.0142.i, %i.dx
  br i1 %i.dy, label %bb.ch, label %cigi3_add_tree.exit

bb.ch:                                            ; preds = %bb.cg
  %i.dz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0142.i)
  %i.ea = icmp ugt i16 %i.dz, 255                 ; 2 uses
  %..i = select i1 %i.ea, i32 -2147483648, i32 0
  store i1 %i.ea, ptr @cigi_byte_order, align 4
  %i.eb = add i32 %.0142.i, 2                     ; 2 uses
  %i.ec = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.eb, i32 noundef %..i) ; 5 uses
  %i.ed = zext i16 %i.ec to i32                   ; 2 uses
  %.b147.i = load i1, ptr @cigi_byte_order, align 4
  %i.ee = select i1 %.b147.i, i32 -2147483648, i32 0
  %i.ef = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.0142.i, i32 noundef %i.ee) ; 10 uses
  %i.eg = add i16 %i.ec, 1
  %or.cond.i99 = icmp ult i16 %i.eg, 2
  %i.eh = load i32, ptr @global_cigi_version, align 4
  %i.ei = icmp eq i32 %i.eh, 0
  %or.cond3.i100 = select i1 %or.cond.i99, i1 %i.ei, i1 false
  br i1 %or.cond3.i100, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.ej = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.ek = zext i8 %i.ej to i32
  store i32 %i.ek, ptr @cigi_version, align 4
  %i.el = icmp eq i16 %i.ef, 24
  br i1 %i.el, label %bb.cj, label %.sink.split.i104

bb.cj:                                            ; preds = %bb.ci
  %i.em = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %i.en = lshr i8 %i.em, 4
  %i.eo = zext nneg i8 %i.en to i32
  br label %.sink.split.i104

.sink.split.i104:                                 ; preds = %bb.cj, %bb.ci
  %.sink.i105 = phi i32 [ %i.eo, %bb.cj ], [ 0, %bb.ci ]
  store i32 %.sink.i105, ptr @cigi_minor_version, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split.i104, %bb.ch
  switch i16 %i.ec, label %bb.el [
    i16 0, label %bb.en
    i16 1, label %.fold.split.i
    i16 2, label %bb.cl
    i16 3, label %bb.cm
    i16 4, label %bb.cn
    i16 5, label %bb.co
    i16 6, label %bb.cp
    i16 7, label %bb.cq
    i16 8, label %bb.cr
    i16 9, label %bb.cs
    i16 10, label %bb.ct
    i16 11, label %bb.cu
    i16 12, label %bb.cv
    i16 13, label %bb.cw
    i16 14, label %bb.cx
    i16 15, label %bb.cy
    i16 16, label %bb.cz
    i16 17, label %bb.da
    i16 18, label %bb.db
    i16 19, label %bb.dc
    i16 20, label %bb.dd
    i16 21, label %bb.de
    i16 22, label %bb.df
    i16 23, label %bb.dg
    i16 24, label %bb.dh
    i16 25, label %bb.di
    i16 26, label %bb.dj
    i16 27, label %bb.dk
    i16 28, label %bb.dl
    i16 29, label %bb.dm
    i16 30, label %bb.dn
    i16 31, label %bb.do
    i16 32, label %bb.dp
    i16 33, label %bb.dq
    i16 34, label %bb.dr
    i16 35, label %bb.ds
    i16 36, label %bb.dt
    i16 37, label %bb.du
    i16 38, label %bb.dv
    i16 -1, label %.fold.split172.i
    i16 4095, label %.fold.split151.i
    i16 4094, label %bb.dw
    i16 4093, label %bb.dx
    i16 4092, label %bb.dy
    i16 4091, label %bb.dz
    i16 4090, label %bb.ea
    i16 4089, label %bb.eb
    i16 4088, label %bb.ec
    i16 4087, label %bb.ed
    i16 4086, label %bb.ee
    i16 4085, label %bb.ef
    i16 4084, label %bb.eg
    i16 4083, label %bb.eh
    i16 4082, label %bb.ei
    i16 4081, label %bb.ej
    i16 4080, label %bb.ek
  ]

bb.cl:                                            ; preds = %bb.ck
  br label %bb.en

bb.cm:                                            ; preds = %bb.ck
  br label %bb.en

bb.cn:                                            ; preds = %bb.ck
  br label %bb.en

bb.co:                                            ; preds = %bb.ck
  br label %bb.en

bb.cp:                                            ; preds = %bb.ck
  br label %bb.en

bb.cq:                                            ; preds = %bb.ck
  br label %bb.en

bb.cr:                                            ; preds = %bb.ck
  br label %bb.en

bb.cs:                                            ; preds = %bb.ck
  br label %bb.en

bb.ct:                                            ; preds = %bb.ck
  br label %bb.en

bb.cu:                                            ; preds = %bb.ck
  br label %bb.en

bb.cv:                                            ; preds = %bb.ck
  br label %bb.en

bb.cw:                                            ; preds = %bb.ck
  br label %bb.en

bb.cx:                                            ; preds = %bb.ck
  br label %bb.en

bb.cy:                                            ; preds = %bb.ck
  br label %bb.en

bb.cz:                                            ; preds = %bb.ck
  br label %bb.en

bb.da:                                            ; preds = %bb.ck
  br label %bb.en

bb.db:                                            ; preds = %bb.ck
  br label %bb.en

bb.dc:                                            ; preds = %bb.ck
  br label %bb.en

bb.dd:                                            ; preds = %bb.ck
  br label %bb.en

bb.de:                                            ; preds = %bb.ck
  br label %bb.en

bb.df:                                            ; preds = %bb.ck
  br label %bb.en

bb.dg:                                            ; preds = %bb.ck
  br label %bb.en

bb.dh:                                            ; preds = %bb.ck
  br label %bb.en

bb.di:                                            ; preds = %bb.ck
  br label %bb.en

bb.dj:                                            ; preds = %bb.ck
  br label %bb.en

bb.dk:                                            ; preds = %bb.ck
  br label %bb.en

bb.dl:                                            ; preds = %bb.ck
  br label %bb.en

bb.dm:                                            ; preds = %bb.ck
  br label %bb.en

bb.dn:                                            ; preds = %bb.ck
  br label %bb.en

bb.do:                                            ; preds = %bb.ck
  br label %bb.en

bb.dp:                                            ; preds = %bb.ck
  br label %bb.en

bb.dq:                                            ; preds = %bb.ck
  br label %bb.en

bb.dr:                                            ; preds = %bb.ck
  br label %bb.en

bb.ds:                                            ; preds = %bb.ck
  br label %bb.en

bb.dt:                                            ; preds = %bb.ck
  br label %bb.en

bb.du:                                            ; preds = %bb.ck
  br label %bb.en

bb.dv:                                            ; preds = %bb.ck
  br label %bb.en

bb.dw:                                            ; preds = %bb.ck
  br label %bb.en

bb.dx:                                            ; preds = %bb.ck
  br label %bb.en

bb.dy:                                            ; preds = %bb.ck
  br label %bb.en

bb.dz:                                            ; preds = %bb.ck
  br label %bb.en

bb.ea:                                            ; preds = %bb.ck
  br label %bb.en

bb.eb:                                            ; preds = %bb.ck
  br label %bb.en

bb.ec:                                            ; preds = %bb.ck
  br label %bb.en

bb.ed:                                            ; preds = %bb.ck
  br label %bb.en

bb.ee:                                            ; preds = %bb.ck
  br label %bb.en

bb.ef:                                            ; preds = %bb.ck
  br label %bb.en

bb.eg:                                            ; preds = %bb.ck
  br label %bb.en

bb.eh:                                            ; preds = %bb.ck
  br label %bb.en

bb.ei:                                            ; preds = %bb.ck
  br label %bb.en

bb.ej:                                            ; preds = %bb.ck
  br label %bb.en

bb.ek:                                            ; preds = %bb.ck
  br label %bb.en

bb.el:                                            ; preds = %bb.ck
  %i.ep = icmp slt i16 %i.ec, 0
  br i1 %i.ep, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.eq = icmp samesign ugt i16 %i.ec, 4095
  %hf_cigi4_registered.hf_cigi_unknown.i = select i1 %i.eq, ptr @hf_cigi4_registered, ptr @hf_cigi_unknown
  br label %bb.en

.fold.split.i:                                    ; preds = %bb.ck
  br label %bb.en

.fold.split151.i:                                 ; preds = %bb.ck
  br label %bb.en

.fold.split172.i:                                 ; preds = %bb.ck
  br label %bb.en

bb.en:                                            ; preds = %.fold.split172.i, %.fold.split151.i, %.fold.split.i, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %.0141.shrunk.i = phi i16 [ %i.ef, %bb.el ], [ 24, %bb.ck ], [ 32, %bb.cl ], [ 40, %bb.cm ], [ 24, %bb.cn ], [ 32, %bb.co ], [ 24, %bb.cp ], [ 32, %bb.cq ], [ 24, %bb.cr ], [ 32, %bb.cs ], [ 48, %bb.ct ], [ 72, %bb.cu ], [ 24, %bb.cv ], [ 32, %bb.cw ], [ 16, %bb.cx ], [ 40, %bb.cy ], [ 32, %bb.cz ], [ 16, %bb.da ], [ 24, %bb.db ], [ 32, %bb.dc ], [ 40, %bb.dd ], [ 40, %bb.de ], [ 48, %bb.df ], [ 40, %bb.dg ], [ 72, %bb.dh ], [ 64, %bb.di ], [ 8, %bb.dj ], [ 32, %bb.dk ], [ 64, %bb.dl ], [ %i.ef, %bb.dm ], [ %i.ef, %bb.dn ], [ %i.ef, %bb.do ], [ 16, %bb.dp ], [ 48, %bb.dq ], [ 24, %bb.dr ], [ %i.ef, %bb.ds ], [ %i.ef, %bb.dt ], [ 16, %bb.du ], [ 16, %bb.dv ], [ %i.ef, %bb.em ], [ 16, %.fold.split151.i ], [ 40, %bb.dw ], [ 24, %bb.dx ], [ 64, %bb.dy ], [ 24, %bb.dz ], [ 56, %bb.ea ], [ 48, %bb.eb ], [ 32, %bb.ec ], [ 16, %bb.ed ], [ 24, %bb.ee ], [ 16, %bb.ef ], [ 24, %bb.eg ], [ 16, %bb.eh ], [ 8, %bb.ei ], [ 24, %bb.ej ], [ %i.ef, %bb.ek ], [ 48, %.fold.split.i ], [ 24, %.fold.split172.i ]
  %.0140.in.i = phi ptr [ @hf_cigi4_locally_defined, %bb.el ], [ @hf_cigi3_ig_control, %bb.ck ], [ @hf_cigi4_conformal_clamped_entity_position, %bb.cl ], [ @hf_cigi3_component_control, %bb.cm ], [ @hf_cigi3_short_component_control, %bb.cn ], [ @hf_cigi3_articulated_part_control, %bb.co ], [ @hf_cigi3_short_articulated_part_control, %bb.cp ], [ @hf_cigi4_velocity_control, %bb.cq ], [ @hf_cigi3_celestial_sphere_control, %bb.cr ], [ @hf_cigi3_atmosphere_control, %bb.cs ], [ @hf_cigi3_environmental_region_control, %bb.ct ], [ @hf_cigi3_weather_control, %bb.cu ], [ @hf_cigi3_maritime_surface_conditions_control, %bb.cv ], [ @hf_cigi3_wave_control, %bb.cw ], [ @hf_cigi3_terrestrial_surface_conditions_control, %bb.cx ], [ @hf_cigi3_view_control, %bb.cy ], [ @hf_cigi3_sensor_control, %bb.cz ], [ @hf_cigi3_motion_tracker_control, %bb.da ], [ @hf_cigi3_earth_reference_model_definition, %bb.db ], [ @hf_cigi4_acceleration_control, %bb.dc ], [ @hf_cigi3_view_definition, %bb.dd ], [ @hf_cigi3_collision_detection_segment_definition, %bb.de ], [ @hf_cigi3_collision_detection_volume_definition, %bb.df ], [ @hf_cigi3_hat_hot_request, %bb.dg ], [ @hf_cigi3_line_of_sight_segment_request, %bb.dh ], [ @hf_cigi3_line_of_sight_vector_request, %bb.di ], [ @hf_cigi3_position_request, %bb.dj ], [ @hf_cigi3_environmental_conditions_request, %bb.dk ], [ @hf_cigi3_3_symbol_surface_definition, %bb.dl ], [ @hf_cigi3_3_symbol_text_definition, %bb.dm ], [ @hf_cigi3_3_symbol_circle_definition, %bb.dn ], [ @hf_cigi4_symbol_polygon_definition, %bb.do ], [ @hf_cigi3_3_symbol_clone, %bb.dp ], [ @hf_cigi3_3_symbol_control, %bb.dq ], [ @hf_cigi3_3_short_symbol_control, %bb.dr ], [ @hf_cigi4_symbol_circle_textured_definition, %bb.ds ], [ @hf_cigi4_symbol_polygon_textured_definition, %bb.dt ], [ @hf_cigi4_entity_control, %bb.du ], [ @hf_cigi4_animation_control, %bb.dv ], [ %hf_cigi4_registered.hf_cigi_unknown.i, %bb.em ], [ @hf_cigi3_hat_hot_response, %.fold.split151.i ], [ @hf_cigi3_hat_hot_extended_response, %bb.dw ], [ @hf_cigi3_line_of_sight_response, %bb.dx ], [ @hf_cigi3_line_of_sight_extended_response, %bb.dy ], [ @hf_cigi3_sensor_response, %bb.dz ], [ @hf_cigi3_sensor_extended_response, %bb.ea ], [ @hf_cigi3_position_response, %bb.eb ], [ @hf_cigi3_weather_conditions_response, %bb.ec ], [ @hf_cigi3_aerosol_concentration_response, %bb.ed ], [ @hf_cigi3_maritime_surface_conditions_response, %bb.ee ], [ @hf_cigi3_terrestrial_surface_conditions_response, %bb.ef ], [ @hf_cigi3_collision_detection_segment_notification, %bb.eg ], [ @hf_cigi3_collision_detection_volume_notification, %bb.eh ], [ @hf_cigi3_animation_stop_notification, %bb.ei ], [ @hf_cigi3_event_notification, %bb.ej ], [ @hf_cigi3_image_generator_message, %bb.ek ], [ @hf_cigi4_entity_position, %.fold.split.i ], [ @hf_cigi4_start_of_frame, %.fold.split172.i ]
  %.0141.i = zext i16 %.0141.shrunk.i to i32      ; 4 uses
  %.0140.i = load i32, ptr %.0140.in.i, align 4
  %i.er = tail call ptr @val_to_str_ext_const(i32 noundef %i.ed, ptr noundef @cigi4_packet_id_vals_ext, ptr noundef @.str.20)
  %i.es = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.aj, i32 noundef %.0140.i, ptr noundef %0, i32 noundef %.0142.i, i32 noundef %.0141.i, ptr noundef @.str.2892, ptr noundef %i.er, i32 noundef %.0141.i)
  %i.et = load i32, ptr @ett_cigi, align 4
  %i.eu = tail call ptr @proto_item_add_subtree(ptr noundef %i.es, i32 noundef %i.et) ; 5 uses
  %i.ev = load i32, ptr @hf_cigi4_packet_size, align 4
  %.b146.i = load i1, ptr @cigi_byte_order, align 4
  %i.ew = select i1 %.b146.i, i32 -2147483648, i32 0
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %i.eu, i32 noundef %i.ev, ptr noundef %0, i32 noundef %.0142.i, i32 noundef 2, i32 noundef %i.ew)
  %i.ey = icmp ult i16 %i.ef, 4
  br i1 %i.ey, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ez = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ex, ptr noundef @ei_cigi_invalid_len) ; 0 uses
  br label %cigi3_add_tree.exit

bb.ep:                                            ; preds = %bb.en
  %i.fa = load i32, ptr @hf_cigi4_packet_id, align 4
  %.b.i101 = load i1, ptr @cigi_byte_order, align 4
  %i.fb = select i1 %.b.i101, i32 -2147483648, i32 0
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %i.eu, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.eb, i32 noundef 2, i32 noundef %i.fb) ; 0 uses
  %i.fd = add i32 %.0142.i, 4                     ; 2 uses
  %i.fe = add nsw i32 %.0141.i, -4
  %i.ff = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.fd, i32 noundef %i.fe) ; 3 uses
  %i.fg = load ptr, ptr @cigi4_packet_id_table, align 8
  %i.fh = tail call i32 @dissector_try_uint_with_data(ptr noundef %i.fg, i32 noundef %i.ed, ptr noundef %i.ff, ptr noundef %1, ptr noundef %i.eu, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.fj = tail call i32 @tvb_reported_length_remaining(ptr noundef %i.ff, i32 noundef 0) ; 2 uses
  %i.fk = load i32, ptr @hf_cigi_data, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.eu, i32 noundef %i.fk, ptr noundef %i.ff, i32 noundef 0, i32 noundef %i.fj, i32 noundef 0) ; 0 uses
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0139.i = phi i32 [ %i.fj, %bb.eq ], [ %i.fh, %bb.ep ]
  %i.fm = add i32 %.0139.i, %i.fd                 ; 2 uses
  %i.fn = sub i32 %i.fm, %.0142.i                 ; 2 uses
  %.not.i102 = icmp eq i32 %i.fn, %.0141.i
  br i1 %.not.i102, label %bb.cg, label %.thread.i103

.thread.i103:                                     ; preds = %bb.er
  %i.fo = tail call ptr @proto_tree_add_expert(ptr noundef %i.eu, ptr noundef %1, ptr noundef @ei_cigi_invalid_len, ptr noundef %0, i32 noundef %.0142.i, i32 noundef %i.fn) ; 0 uses
  br label %cigi3_add_tree.exit

bb.es:                                            ; preds = %proto_item_set_hidden.exit97
  %i.fp = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not.i106 = icmp eq i32 %i.fp, 0
  br i1 %.not.i106, label %cigi3_add_tree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.es, %bb.ex
  %.04549.i = phi i32 [ %i.gu, %bb.ex ], [ 0, %bb.es ] ; 6 uses
  %i.fq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.04549.i) ; 3 uses
  %i.fr = add nuw i32 %.04549.i, 1                ; 2 uses
  %i.fs = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fr) ; 2 uses
  %i.ft = zext i8 %i.fs to i32                    ; 4 uses
  %i.fu = icmp ult i8 %i.fs, 2
  br i1 %i.fu, label %cigi3_add_tree.exit, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i
  %i.fv = icmp eq i8 %i.fq, 1
  %i.fw = icmp eq i8 %i.fq, 101
  %or.cond.i107 = or i1 %i.fv, %i.fw
  %i.fx = load i32, ptr @global_cigi_version, align 4
  %i.fy = icmp eq i32 %i.fx, 0
  %or.cond3.i108 = select i1 %or.cond.i107, i1 %i.fy, i1 false
  br i1 %or.cond3.i108, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.fz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.ga = zext i8 %i.fz to i32
  store i32 %i.ga, ptr @cigi_version, align 4
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.gb = load i32, ptr @hf_cigi_unknown, align 4
  %i.gc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.aj, i32 noundef %i.gb, ptr noundef %0, i32 noundef %.04549.i, i32 noundef %i.ft, ptr noundef @.str.2893, i32 noundef %i.ft)
  %i.gd = load i32, ptr @ett_cigi, align 4
  %i.ge = tail call ptr @proto_item_add_subtree(ptr noundef %i.gc, i32 noundef %i.gd) ; 4 uses
  %i.gf = load i32, ptr @hf_cigi_packet_id, align 4
  %.b48.i = load i1, ptr @cigi_byte_order, align 4
  %i.gg = select i1 %.b48.i, i32 -2147483648, i32 0
  %i.gh = tail call ptr @proto_tree_add_item(ptr noundef %i.ge, i32 noundef %i.gf, ptr noundef %0, i32 noundef %.04549.i, i32 noundef 1, i32 noundef %i.gg) ; 0 uses
  %i.gi = load i32, ptr @hf_cigi_packet_size, align 4
  %.b47.i = load i1, ptr @cigi_byte_order, align 4
  %i.gj = select i1 %.b47.i, i32 -2147483648, i32 0
  %i.gk = tail call ptr @proto_tree_add_item(ptr noundef %i.ge, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.fr, i32 noundef 1, i32 noundef %i.gj) ; 0 uses
  %i.gl = add i32 %.04549.i, 2                    ; 2 uses
  %i.gm = add nsw i32 %i.ft, -2
  switch i8 %i.fq, label %bb.ex [
    i8 101, label %bb.ew
    i8 1, label %bb.ew
  ]

bb.ew:                                            ; preds = %bb.ev, %bb.ev
  %i.gn = load i32, ptr @hf_cigi_version, align 4
  %.b.i109 = load i1, ptr @cigi_byte_order, align 4
  %i.go = select i1 %.b.i109, i32 -2147483648, i32 0
  %i.gp = tail call ptr @proto_tree_add_item(ptr noundef %i.ge, i32 noundef %i.gn, ptr noundef %0, i32 noundef %i.gl, i32 noundef 1, i32 noundef %i.go) ; 0 uses
  %i.gq = add i32 %.04549.i, 3
  %i.gr = add nsw i32 %i.ft, -3
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.1.i = phi i32 [ %i.gq, %bb.ew ], [ %i.gl, %bb.ev ] ; 2 uses
  %.0.i = phi i32 [ %i.gr, %bb.ew ], [ %i.gm, %bb.ev ] ; 2 uses
  %i.gs = load i32, ptr @hf_cigi_data, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.ge, i32 noundef %i.gs, ptr noundef %0, i32 noundef %.1.i, i32 noundef %.0.i, i32 noundef 0) ; 0 uses
  %i.gu = add i32 %.0.i, %.1.i                    ; 2 uses
  %i.gv = icmp ult i32 %i.gu, %i.fp
  br i1 %i.gv, label %.lr.ph.i, label %cigi3_add_tree.exit, !llvm.loop !13

cigi3_add_tree.exit:                              ; preds = %bb.cg, %bb.u, %bb.ex, %.lr.ph.i, %bb.es, %.thread.i103, %bb.eo, %.thread.i, %bb.cb, %bb.s, %bb.g
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @address_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cigi2_add_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %cigi2_add_image_generator_message.exit, %bb.a
  %.0159 = phi i32 [ 0, %bb.a ], [ %.1, %cigi2_add_image_generator_message.exit ] ; 192 uses
  %i.b = icmp ult i32 %.0159, %i.a
  br i1 %i.b, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0159) ; 7 uses
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw i32 %.0159, 1                    ; 3 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e) ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = icmp eq i8 %i.c, 1                       ; 2 uses
  %i.i = icmp eq i8 %i.c, 101                     ; 2 uses
  %or.cond = or i1 %i.h, %i.i
  %i.j = load i32, ptr @global_cigi_version, align 4
  %i.k = icmp eq i32 %i.j, 0
  %or.cond3 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.m = zext i8 %i.l to i32
  store i32 %i.m, ptr @cigi_version, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  br i1 %i.h, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add i8 %i.c, -2              ; 4 uses
  %i.n = icmp ult i8 %switch.tableidx, 43
  br i1 %i.n, label %switch.hole_check, label %bb.g

bb.g:                                             ; preds = %switch.hole_check, %bb.f
  br i1 %i.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
