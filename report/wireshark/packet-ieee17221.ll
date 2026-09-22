Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee17221?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_17221_aem:bb.a
  %i.qy = load i32, ptr @hf_aem_avb_offset_scaled_log_variance, align 4
  %i.qz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.qy, ptr noundef %0, i32 noundef 88, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ra = load i32, ptr @hf_aem_avb_clock_accuracy, align 4
  %i.rb = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ra, ptr noundef %0, i32 noundef 90, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rc = load i32, ptr @hf_aem_avb_priority2, align 4
  %i.rd = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rc, ptr noundef %0, i32 noundef 91, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.re = load i32, ptr @hf_aem_avb_domain_number, align 4
  %i.rf = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.re, ptr noundef %0, i32 noundef 92, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rg = load i32, ptr @hf_aem_avb_log_sync_interval, align 4
  %i.rh = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rg, ptr noundef %0, i32 noundef 93, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.m:                                             ; preds = %bb.a
  %i.ri = load i32, ptr @hf_aem_clock_source_name, align 4
  %i.rj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ri, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.rk = load i32, ptr @hf_aem_clock_source_name_string, align 4
  %i.rl = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rk, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rm = load i32, ptr @hf_aem_clock_source_flags, align 4
  %i.rn = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rm, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ro = load i32, ptr @hf_aem_clock_source_type, align 4
  %i.rp = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ro, ptr noundef %0, i32 noundef 72, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rq = load i32, ptr @hf_aecp_clock_source_id, align 4
  %i.rr = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rq, ptr noundef %0, i32 noundef 74, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.rs = load i32, ptr @hf_aem_clock_source_location_type, align 4
  %i.rt = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rs, ptr noundef %0, i32 noundef 82, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ru = load i32, ptr @hf_aem_clock_source_location_id, align 4
  %i.rv = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ru, ptr noundef %0, i32 noundef 84, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.n:                                             ; preds = %bb.a
  %i.rw = load i32, ptr @hf_aem_mappings_offset, align 4
  %i.rx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.rw, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ry = load i32, ptr @hf_aem_number_of_mappings, align 4
  %i.rz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ry, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sa = load i32, ptr @hf_aem_mappings, align 4
  %i.sb = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.sa, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.sc = load i32, ptr @ett_aem_mappings, align 4
  %i.sd = tail call ptr @proto_item_add_subtree(ptr noundef %i.sb, i32 noundef %i.sc) ; 4 uses
  %i.se = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %i.sf = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6) ; 2 uses
  %i.sg = zext i16 %i.sf to i32                   ; 2 uses
  %i.sh = shl nuw nsw i32 %i.sg, 3
  tail call void @proto_item_set_len(ptr noundef %i.sb, i32 noundef %i.sh)
  %.not29 = icmp eq i16 %i.sf, 0
  br i1 %.not29, label %dissect_17221_ctrl_val.exit, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %bb.n
  %i.si = zext i16 %i.se to i32
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %.317 = phi i32 [ %i.su, %.lr.ph18 ], [ %i.si, %.lr.ph18.preheader ] ; 5 uses
  %.367516 = phi i32 [ %i.sv, %.lr.ph18 ], [ 0, %.lr.ph18.preheader ]
  %i.sj = load i32, ptr @hf_aem_mapping_stream_index, align 4
  %i.sk = tail call ptr @proto_tree_add_item(ptr noundef %i.sd, i32 noundef %i.sj, ptr noundef %0, i32 noundef %.317, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sl = add nuw nsw i32 %.317, 2
  %i.sm = load i32, ptr @hf_aem_mapping_stream_channel, align 4
  %i.sn = tail call ptr @proto_tree_add_item(ptr noundef %i.sd, i32 noundef %i.sm, ptr noundef %0, i32 noundef %i.sl, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.so = add nuw nsw i32 %.317, 4
  %i.sp = load i32, ptr @hf_aem_mapping_cluster_offset, align 4
  %i.sq = tail call ptr @proto_tree_add_item(ptr noundef %i.sd, i32 noundef %i.sp, ptr noundef %0, i32 noundef %i.so, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sr = add nuw nsw i32 %.317, 6
  %i.ss = load i32, ptr @hf_aem_mapping_cluster_channel, align 4
  %i.st = tail call ptr @proto_tree_add_item(ptr noundef %i.sd, i32 noundef %i.ss, ptr noundef %0, i32 noundef %i.sr, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.su = add nuw nsw i32 %.317, 8
  %i.sv = add nuw nsw i32 %.367516, 1             ; 2 uses
  %exitcond43.not = icmp eq i32 %i.sv, %i.sg
  br i1 %exitcond43.not, label %dissect_17221_ctrl_val.exit, label %.lr.ph18, !llvm.loop !12

bb.o:                                             ; preds = %bb.a
  %i.sw = load i32, ptr @hf_aem_configuration_name, align 4
  %i.sx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.sw, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.sy = load i32, ptr @hf_aem_configuration_name_string, align 4
  %i.sz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.sy, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ta = load i32, ptr @hf_aem_signal_type, align 4
  %i.tb = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ta, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tc = load i32, ptr @hf_aem_signal_index, align 4
  %i.td = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tc, ptr noundef %0, i32 noundef 72, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.te = load i32, ptr @hf_aem_signal_output, align 4
  %i.tf = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.te, ptr noundef %0, i32 noundef 74, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tg = load i32, ptr @hf_aem_path_latency, align 4
  %i.th = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tg, ptr noundef %0, i32 noundef 76, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ti = load i32, ptr @hf_aem_block_latency, align 4
  %i.tj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ti, ptr noundef %0, i32 noundef 80, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.tk = load i32, ptr @hf_aem_channel_count, align 4
  %i.tl = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tk, ptr noundef %0, i32 noundef 84, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tm = load i32, ptr @hf_aem_am824_label, align 4
  %i.tn = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tm, ptr noundef %0, i32 noundef 86, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.p:                                             ; preds = %bb.a
  %i.to = load i32, ptr @hf_aem_object_name, align 4
  %i.tp = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.to, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.tq = load i32, ptr @hf_aem_localized_description, align 4
  %i.tr = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tq, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ts = load i32, ptr @hf_aem_block_latency, align 4
  %i.tt = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ts, ptr noundef %0, i32 noundef 70, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.tu = load i32, ptr @hf_aem_control_latency, align 4
  %i.tv = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tu, ptr noundef %0, i32 noundef 74, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.tw = load i32, ptr @hf_aem_control_domain, align 4
  %i.tx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.tw, ptr noundef %0, i32 noundef 78, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ty = load i32, ptr @hf_aem_control_value_type, align 4
  %i.tz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ty, ptr noundef %0, i32 noundef 80, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ua = load i32, ptr @hf_aem_control_type, align 4
  %i.ub = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ua, ptr noundef %0, i32 noundef 82, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.uc = load i32, ptr @hf_aem_reset_time, align 4
  %i.ud = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.uc, ptr noundef %0, i32 noundef 90, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ue = load i32, ptr @hf_aem_values_offset, align 4
  %i.uf = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ue, ptr noundef %0, i32 noundef 94, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ug = load i32, ptr @hf_aem_number_of_values, align 4
  %i.uh = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ug, ptr noundef %0, i32 noundef 96, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ui = load i32, ptr @hf_aem_signal_type, align 4
  %i.uj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ui, ptr noundef %0, i32 noundef 98, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uk = load i32, ptr @hf_aem_signal_index, align 4
  %i.ul = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.uk, ptr noundef %0, i32 noundef 100, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.um = load i32, ptr @hf_aem_signal_output, align 4
  %i.un = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.um, ptr noundef %0, i32 noundef 102, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uo = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 80) ; 4 uses
  %i.up = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 96) ; 5 uses
  %i.uq = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 94) ; 9 uses
  %i.ur = load i32, ptr @hf_aem_ctrl_vals, align 4
  %i.us = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ur, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.ut = load i32, ptr @ett_aem_ctrl_vals, align 4
  %i.uu = tail call ptr @proto_item_add_subtree(ptr noundef %i.us, i32 noundef %i.ut) ; 14 uses
  switch i16 %i.uo, label %get_ctrl_ref_vals.exit.i [
    i16 0, label %bb.q
    i16 10, label %bb.q
    i16 21, label %bb.q
    i16 1, label %bb.r
    i16 11, label %bb.r
    i16 22, label %bb.r
    i16 2, label %bb.s
    i16 12, label %bb.s
    i16 23, label %bb.s
    i16 3, label %bb.t
    i16 13, label %bb.t
    i16 24, label %bb.t
    i16 4, label %bb.u
    i16 14, label %bb.u
    i16 25, label %bb.u
    i16 5, label %bb.v
    i16 15, label %bb.v
    i16 26, label %bb.v
    i16 8, label %bb.w
    i16 18, label %bb.w
    i16 29, label %bb.w
    i16 6, label %bb.x
    i16 16, label %bb.x
    i16 27, label %bb.x
    i16 7, label %bb.y
    i16 17, label %bb.y
    i16 28, label %bb.y
    i16 9, label %bb.z
    i16 19, label %bb.z
    i16 30, label %bb.z
    i16 32, label %dissect_17221_ctrl_val.exit
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.uv = load i32, ptr @hf_aem_ctrl_int8, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.uw = load i32, ptr @hf_aem_ctrl_uint8, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.s:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.ux = load i32, ptr @hf_aem_ctrl_int16, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.t:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.uy = load i32, ptr @hf_aem_ctrl_uint16, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.u:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.uz = load i32, ptr @hf_aem_ctrl_int32, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.v:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.va = load i32, ptr @hf_aem_ctrl_uint32, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.w:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.vb = load i32, ptr @hf_aem_ctrl_float, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.x:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.vc = load i32, ptr @hf_aem_ctrl_int64, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.y:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.vd = load i32, ptr @hf_aem_ctrl_uint64, align 4
  br label %get_ctrl_ref_vals.exit.i

bb.z:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.ve = load i32, ptr @hf_aem_ctrl_double, align 4
  br label %get_ctrl_ref_vals.exit.i

get_ctrl_ref_vals.exit.i:                         ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i = phi i32 [ %i.ve, %bb.z ], [ %i.uv, %bb.q ], [ %i.uw, %bb.r ], [ %i.ux, %bb.s ], [ %i.uy, %bb.t ], [ %i.uz, %bb.u ], [ %i.va, %bb.v ], [ %i.vb, %bb.w ], [ %i.vc, %bb.x ], [ %i.vd, %bb.y ], [ -1, %bb.p ] ; 8 uses
  %.sroa.13.0.i.i = phi i64 [ 8, %bb.z ], [ 1, %bb.q ], [ 1, %bb.r ], [ 2, %bb.s ], [ 2, %bb.t ], [ 4, %bb.u ], [ 4, %bb.v ], [ 4, %bb.w ], [ 8, %bb.x ], [ 8, %bb.y ], [ 0, %bb.p ] ; 3 uses
  %i.vf = icmp ult i16 %i.uo, 10
  br i1 %i.vf, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %get_ctrl_ref_vals.exit.i
  %i.vg = zext i16 %i.up to i32
  %.not137.i = icmp eq i16 %i.up, 0
  br i1 %.not137.i, label %dissect_17221_ctrl_val.exit, label %.lr.ph136.i

.lr.ph136.i:                                      ; preds = %.preheader.i
  %2 = trunc nuw nsw i64 %.sroa.13.0.i.i to i32   ; 5 uses
  %i.vh = trunc nuw nsw i64 %.sroa.13.0.i.i to i16 ; 5 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph136.i
  %.0135.i = phi i16 [ %i.uq, %.lr.ph136.i ], [ %i.we, %bb.aa ] ; 2 uses
  %.0112134.i = phi i32 [ 0, %.lr.ph136.i ], [ %i.wf, %bb.aa ]
  %i.vi = zext i16 %.0135.i to i32
  %i.vj = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.vi, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.vk = add i16 %.0135.i, %i.vh                 ; 2 uses
  %i.vl = zext i16 %i.vk to i32
  %i.vm = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.vl, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.vn = add i16 %i.vk, %i.vh                    ; 2 uses
  %i.vo = zext i16 %i.vn to i32
  %i.vp = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.vo, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.vq = add i16 %i.vn, %i.vh                    ; 2 uses
  %i.vr = zext i16 %i.vq to i32
  %i.vs = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.vr, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.vt = add i16 %i.vq, %i.vh                    ; 2 uses
  %i.vu = zext i16 %i.vt to i32
  %i.vv = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.vu, i32 noundef %2, i32 noundef 0) ; 0 uses
  %i.vw = add i16 %i.vt, %i.vh                    ; 3 uses
  %i.vx = load i32, ptr @hf_aem_unit, align 4
  %i.vy = zext i16 %i.vw to i32
  %i.vz = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.vx, ptr noundef %0, i32 noundef %i.vy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.wa = add i16 %i.vw, 2
  %i.wb = load i32, ptr @hf_aem_string_ref, align 4
  %i.wc = zext i16 %i.wa to i32
  %i.wd = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.wb, ptr noundef %0, i32 noundef %i.wc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.we = add i16 %i.vw, 4
  %i.wf = add nuw nsw i32 %.0112134.i, 1          ; 2 uses
  %exitcond140.not.i = icmp eq i32 %i.wf, %i.vg
  br i1 %exitcond140.not.i, label %dissect_17221_ctrl_val.exit, label %bb.aa, !llvm.loop !13

bb.ab:                                            ; preds = %get_ctrl_ref_vals.exit.i
  %i.wg = icmp ult i16 %i.uo, 20
  br i1 %i.wg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.wh = zext i16 %i.uq to i32
  %3 = trunc nuw nsw i64 %.sroa.13.0.i.i to i32   ; 3 uses
  %i.wi = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.wh, i32 noundef %3, i32 noundef 0) ; 0 uses
  %i.wj = add i16 %i.uq, 2
  %i.wk = zext i16 %i.wj to i32
  %i.wl = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.wk, i32 noundef %3, i32 noundef 0) ; 0 uses
  %i.wm = add i16 %i.uq, 4                        ; 2 uses
  %i.wn = zext i16 %i.up to i32
  %.not.i = icmp eq i16 %i.up, 0
  br i1 %.not.i, label %.thread127.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %.1133.i = phi i16 [ %i.wq, %.lr.ph.i ], [ %i.wm, %bb.ac ] ; 2 uses
  %.1113132.i = phi i32 [ %i.wr, %.lr.ph.i ], [ 0, %bb.ac ]
  %i.wo = zext i16 %.1133.i to i32
  %i.wp = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %.sroa.0.0.i.i, ptr noundef %0, i32 noundef %i.wo, i32 noundef %3, i32 noundef 0) ; 0 uses
  %i.wq = add i16 %.1133.i, 2                     ; 2 uses
  %i.wr = add nuw nsw i32 %.1113132.i, 1          ; 2 uses
  %exitcond139.not.i = icmp eq i32 %i.wr, %i.wn
  br i1 %exitcond139.not.i, label %.thread127.sink.split.i, label %.lr.ph.i, !llvm.loop !14

bb.ad:                                            ; preds = %bb.ab
  switch i16 %i.uo, label %dissect_17221_ctrl_val.exit [
    i16 20, label %.thread127.sink.split.i
    i16 21, label %.preheader128.i
    i16 -2, label %bb.af
  ]

.preheader128.i:                                  ; preds = %bb.ad
  %i.ws = zext i16 %i.up to i32
  %i.wt = mul nuw nsw i32 %i.ws, 3
  %i.wu = add nuw nsw i32 %i.wt, 11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader128.i
  %.2131.i = phi i16 [ %i.uq, %.preheader128.i ], [ %i.wy, %bb.ae ] ; 2 uses
  %.2114130.i = phi i32 [ 0, %.preheader128.i ], [ %i.wz, %bb.ae ] ; 2 uses
  %i.wv = load i32, ptr @hf_aem_ctrl_float, align 4
  %i.ww = zext i16 %.2131.i to i32
  %i.wx = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.wv, ptr noundef %0, i32 noundef %i.ww, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wy = add i16 %.2131.i, 4
  %i.wz = add nuw nsw i32 %.2114130.i, 1
  %exitcond.not.i = icmp eq i32 %.2114130.i, %i.wu
  br i1 %exitcond.not.i, label %dissect_17221_ctrl_val.exit, label %bb.ae, !llvm.loop !15

bb.af:                                            ; preds = %bb.ad
  %i.xa = load i32, ptr @hf_aem_guid, align 4
  %i.xb = zext i16 %i.uq to i32
  %i.xc = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.xa, ptr noundef %0, i32 noundef %i.xb, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.xd = add i16 %i.uq, 8
  %i.xe = zext i16 %i.xd to i32                   ; 2 uses
  %i.xf = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.xe)
  %i.xg = load i32, ptr @hf_aem_blob_size, align 4
  %i.xh = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.xg, ptr noundef %0, i32 noundef %i.xe, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xi = add i16 %i.uq, 12
  br label %.thread127.sink.split.i

.thread127.sink.split.i:                          ; preds = %.lr.ph.i, %bb.af, %bb.ad, %bb.ac
  %hf_aem_unit.sink.i = phi ptr [ @hf_aem_unit, %bb.ac ], [ @hf_aem_binary_blob, %bb.af ], [ @hf_aem_string, %bb.ad ], [ @hf_aem_unit, %.lr.ph.i ]
  %.1.lcssa.sink.i = phi i16 [ %i.wm, %bb.ac ], [ %i.xi, %bb.af ], [ %i.uq, %bb.ad ], [ %i.wq, %.lr.ph.i ]
  %.sink143.i = phi i32 [ 2, %bb.ac ], [ %i.xf, %bb.af ], [ -1, %bb.ad ], [ 2, %.lr.ph.i ]
  %i.xj = load i32, ptr %hf_aem_unit.sink.i, align 4
  %i.xk = zext i16 %.1.lcssa.sink.i to i32
  %i.xl = tail call ptr @proto_tree_add_item(ptr noundef %i.uu, i32 noundef %i.xj, ptr noundef %0, i32 noundef %i.xk, i32 noundef %.sink143.i, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.ag:                                            ; preds = %bb.a
  %i.xm = load i32, ptr @hf_aem_object_name, align 4
  %i.xn = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xm, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.xo = load i32, ptr @hf_aem_localized_description, align 4
  %i.xp = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xo, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xq = load i32, ptr @hf_aem_block_latency, align 4
  %i.xr = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xq, ptr noundef %0, i32 noundef 70, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xs = load i32, ptr @hf_aem_control_latency, align 4
  %i.xt = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xs, ptr noundef %0, i32 noundef 74, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.xu = load i32, ptr @hf_aem_control_domain, align 4
  %i.xv = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xu, ptr noundef %0, i32 noundef 78, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.ah:                                            ; preds = %bb.a
  %i.xw = load i32, ptr @hf_aem_object_name, align 4
  %i.xx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xw, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.xy = load i32, ptr @hf_aem_localized_description, align 4
  %i.xz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.xy, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ya = load i32, ptr @hf_aem_block_latency, align 4
  %i.yb = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ya, ptr noundef %0, i32 noundef 70, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yc = load i32, ptr @hf_aem_control_latency, align 4
  %i.yd = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yc, ptr noundef %0, i32 noundef 74, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ye = load i32, ptr @hf_aem_control_domain, align 4
  %i.yf = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ye, ptr noundef %0, i32 noundef 78, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.ai:                                            ; preds = %bb.a
  %i.yg = load i32, ptr @hf_aem_object_name, align 4
  %i.yh = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yg, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.yi = load i32, ptr @hf_aem_localized_description, align 4
  %i.yj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yi, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yk = load i32, ptr @hf_aem_block_latency, align 4
  %i.yl = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yk, ptr noundef %0, i32 noundef 70, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ym = load i32, ptr @hf_aem_control_latency, align 4
  %i.yn = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ym, ptr noundef %0, i32 noundef 74, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.yo = load i32, ptr @hf_aem_control_domain, align 4
  %i.yp = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yo, ptr noundef %0, i32 noundef 78, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.aj:                                            ; preds = %bb.a
  %i.yq = load i32, ptr @hf_aem_locale_identifier, align 4
  %i.yr = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yq, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.ys = load i32, ptr @hf_aem_number_of_strings, align 4
  %i.yt = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ys, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yu = load i32, ptr @hf_aem_base_strings, align 4
  %i.yv = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yu, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.ak:                                            ; preds = %bb.a
  %i.yw = load i32, ptr @hf_aem_signals_count, align 4
  %i.yx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yw, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yy = load i32, ptr @hf_aem_signals_offset, align 4
  %i.yz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.yy, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.za = load i32, ptr @hf_aem_sources, align 4
  %i.zb = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.za, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.zc = load i32, ptr @ett_aem_sources, align 4
  %i.zd = tail call ptr @proto_item_add_subtree(ptr noundef %i.zb, i32 noundef %i.zc) ; 2 uses
  %i.ze = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.zf = zext i16 %i.ze to i32                   ; 2 uses
  %i.zg = shl nuw nsw i32 %i.zf, 2
  tail call void @proto_item_set_len(ptr noundef %i.zb, i32 noundef %i.zg)
  %.not28 = icmp eq i16 %i.ze, 0
  br i1 %.not28, label %dissect_17221_ctrl_val.exit, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.ak, %.lr.ph13
  %.512 = phi i32 [ %i.zm, %.lr.ph13 ], [ 6, %bb.ak ] ; 3 uses
  %.567711 = phi i32 [ %i.zn, %.lr.ph13 ], [ 0, %bb.ak ]
  %i.zh = load i32, ptr @hf_aem_signal_type, align 4
  %i.zi = tail call ptr @proto_tree_add_item(ptr noundef %i.zd, i32 noundef %i.zh, ptr noundef %0, i32 noundef %.512, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zj = add nuw nsw i32 %.512, 2
  %i.zk = load i32, ptr @hf_aem_signal_index, align 4
  %i.zl = tail call ptr @proto_tree_add_item(ptr noundef %i.zd, i32 noundef %i.zk, ptr noundef %0, i32 noundef %i.zj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zm = add nuw nsw i32 %.512, 4
  %i.zn = add nuw nsw i32 %.567711, 1             ; 2 uses
  %exitcond41.not = icmp eq i32 %i.zn, %i.zf
  br i1 %exitcond41.not, label %dissect_17221_ctrl_val.exit, label %.lr.ph13, !llvm.loop !16

bb.al:                                            ; preds = %bb.a
  %i.zo = load i32, ptr @hf_aem_memory_object_type, align 4
  %i.zp = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zo, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zq = load i32, ptr @hf_aem_target_descriptor_type, align 4
  %i.zr = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zq, ptr noundef %0, i32 noundef 72, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zs = load i32, ptr @hf_aem_target_descriptor_id, align 4
  %i.zt = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zs, ptr noundef %0, i32 noundef 74, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zu = load i32, ptr @hf_aem_object_name, align 4
  %i.zv = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zu, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.zw = load i32, ptr @hf_aem_localized_description, align 4
  %i.zx = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zw, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zy = load i32, ptr @hf_aem_start_address, align 4
  %i.zz = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.zy, ptr noundef %0, i32 noundef 76, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aaa = load i32, ptr @hf_aem_length, align 4
  %i.aab = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aaa, ptr noundef %0, i32 noundef 84, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

bb.am:                                            ; preds = %bb.a
  %i.aac = load i32, ptr @hf_aem_object_name, align 4
  %i.aad = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aac, ptr noundef %0, i32 noundef 4, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.aae = load i32, ptr @hf_aem_localized_description, align 4
  %i.aaf = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aae, ptr noundef %0, i32 noundef 68, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aag = load i32, ptr @hf_aem_clock_source_index, align 4
  %i.aah = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aag, ptr noundef %0, i32 noundef 70, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aai = load i32, ptr @hf_aem_clock_sources_offset, align 4
  %i.aaj = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aai, ptr noundef %0, i32 noundef 72, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aak = load i32, ptr @hf_aem_clock_sources_count, align 4
  %i.aal = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aak, ptr noundef %0, i32 noundef 74, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aam = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 74) ; 2 uses
  %i.aan = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 72)
  %i.aao = zext i16 %i.aan to i32                 ; 2 uses
  %i.aap = load i32, ptr @hf_aem_clock_sources_array, align 4
  %i.aaq = zext i16 %i.aam to i32                 ; 2 uses
  %i.aar = shl nuw nsw i32 %i.aaq, 1
  %i.aas = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aap, ptr noundef %0, i32 noundef %i.aao, i32 noundef %i.aar, i32 noundef 0)
  %i.aat = load i32, ptr @ett_aem_clock_sources, align 4
  %i.aau = tail call ptr @proto_item_add_subtree(ptr noundef %i.aas, i32 noundef %i.aat)
  %.not = icmp eq i16 %i.aam, 0
  br i1 %.not, label %dissect_17221_ctrl_val.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am, %.lr.ph
  %.610 = phi i32 [ %i.aax, %.lr.ph ], [ %i.aao, %bb.am ] ; 2 uses
  %.66789 = phi i32 [ %i.aay, %.lr.ph ], [ 0, %bb.am ]
  %i.aav = load i32, ptr @hf_aem_clock_sources, align 4
  %i.aaw = tail call ptr @proto_tree_add_item(ptr noundef %i.aau, i32 noundef %i.aav, ptr noundef %0, i32 noundef %.610, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aax = add nuw nsw i32 %.610, 2
  %i.aay = add nuw nsw i32 %.66789, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aay, %i.aaq
  br i1 %exitcond.not, label %dissect_17221_ctrl_val.exit, label %.lr.ph, !llvm.loop !17

bb.an:                                            ; preds = %bb.a
  %i.aaz = load i32, ptr @hf_aem_unknown_descriptor, align 4
  %i.aba = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.abb = add i32 %i.aba, -4
  %i.abc = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aaz, ptr noundef %0, i32 noundef 4, i32 noundef %i.abb, i32 noundef 0) ; 0 uses
  br label %dissect_17221_ctrl_val.exit

dissect_17221_ctrl_val.exit:                      ; preds = %.lr.ph, %.lr.ph13, %bb.ae, %bb.aa, %.lr.ph18, %.lr.ph21, %bb.e, %.lr.ph27, %.preheader.preheader, %bb.am, %bb.ak, %bb.n, %bb.g, %bb.d, %bb.c, %.thread127.sink.split.i, %bb.ad, %.preheader.i, %bb.p, %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_17221_stream_format(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_aem_stream_format, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0)
  %i.c = load i32, ptr @ett_aem_stream_format, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 13 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.f = load i32, ptr @hf_aem_sf_version, align 4
end_hunk_0
