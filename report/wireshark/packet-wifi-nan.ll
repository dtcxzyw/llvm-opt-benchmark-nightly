Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wifi-nan?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_attr_availability:bb.a
  %i.jw = getelementptr i8, ptr %.lcssa, i64 220
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = icmp eq i32 %i.jx, %i.dt
  br i1 %i.jy, label %channel_number_valid.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jz = getelementptr i8, ptr %.lcssa, i64 224
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = icmp eq i32 %i.ka, %i.dt
  br i1 %i.kb, label %channel_number_valid.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kc = getelementptr i8, ptr %.lcssa, i64 228
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = icmp eq i32 %i.kd, %i.dt
  br i1 %i.ke, label %channel_number_valid.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kf = getelementptr i8, ptr %.lcssa, i64 232
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = icmp eq i32 %i.kg, %i.dt
  br i1 %i.kh, label %channel_number_valid.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ki = getelementptr i8, ptr %.lcssa, i64 236
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = icmp eq i32 %i.kj, %i.dt
  br i1 %i.kk, label %channel_number_valid.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kl = getelementptr i8, ptr %.lcssa, i64 240
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = icmp eq i32 %i.km, %i.dt
  br i1 %i.kn, label %channel_number_valid.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ko = getelementptr i8, ptr %.lcssa, i64 244
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = icmp eq i32 %i.kp, %i.dt
  br i1 %i.kq, label %channel_number_valid.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kr = getelementptr i8, ptr %.lcssa, i64 248
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = icmp eq i32 %i.ks, %i.dt
  br i1 %i.kt, label %channel_number_valid.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ku = getelementptr i8, ptr %.lcssa, i64 252
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = icmp eq i32 %i.kv, %i.dt
  br i1 %i.kw, label %channel_number_valid.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kx = getelementptr i8, ptr %.lcssa, i64 256
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = icmp eq i32 %i.ky, %i.dt
  br i1 %i.kz, label %channel_number_valid.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.la = getelementptr i8, ptr %.lcssa, i64 260
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = icmp eq i32 %i.lb, %i.dt
  br i1 %i.lc, label %channel_number_valid.exit.thread, label %channel_number_valid.exit

channel_number_valid.exit:                        ; preds = %bb.ck
  %i.ld = call ptr @expert_add_info(ptr noundef %4, ptr noundef %i.bz, ptr noundef nonnull @ei_nan_invalid_channel_num_for_op_class) ; 0 uses
  br label %channel_number_valid.exit.thread

channel_number_valid.exit.thread:                 ; preds = %bb.ck, %bb.bv, %bb.be, %bb.br, %bb.bd, %bb.bw, %bb.bc, %bb.bm, %bb.bb, %bb.bx, %bb.ba, %bb.bq, %bb.az, %bb.by, %bb.ay, %bb.bl, %bb.ax, %bb.bz, %bb.aw, %bb.bs, %bb.av, %bb.ca, %bb.au, %bb.bk, %bb.at, %bb.cb, %bb.as, %bb.bo, %bb.ar, %bb.cc, %bb.aq, %bb.bj, %bb.ap, %bb.cd, %bb.ao, %bb.bt, %bb.an, %bb.ce, %bb.am, %bb.bi, %bb.al, %bb.cf, %bb.ak, %bb.bp, %bb.aj, %bb.cg, %bb.ai, %bb.bh, %bb.ah, %bb.ch, %bb.ag, %bb.bu, %bb.af, %bb.ci, %bb.ae, %bb.bg, %bb.ad, %bb.cj, %bb.ac, %bb.bn, %bb.ab, %bb.aa, %bb.bf, %bb.z, %channel_number_valid.exit
  %i.le = phi i32 [ 64, %channel_number_valid.exit ], [ 0, %bb.z ], [ 48, %bb.bv ], [ 31, %bb.be ], [ 44, %bb.br ], [ 30, %bb.bd ], [ 49, %bb.bw ], [ 29, %bb.bc ], [ 39, %bb.bm ], [ 28, %bb.bb ], [ 50, %bb.bx ], [ 27, %bb.ba ], [ 43, %bb.bq ], [ 26, %bb.az ], [ 51, %bb.by ], [ 25, %bb.ay ], [ 38, %bb.bl ], [ 24, %bb.ax ], [ 52, %bb.bz ], [ 23, %bb.aw ], [ 45, %bb.bs ], [ 22, %bb.av ], [ 53, %bb.ca ], [ 21, %bb.au ], [ 37, %bb.bk ], [ 20, %bb.at ], [ 54, %bb.cb ], [ 19, %bb.as ], [ 41, %bb.bo ], [ 18, %bb.ar ], [ 55, %bb.cc ], [ 17, %bb.aq ], [ 36, %bb.bj ], [ 16, %bb.ap ], [ 56, %bb.cd ], [ 15, %bb.ao ], [ 46, %bb.bt ], [ 14, %bb.an ], [ 57, %bb.ce ], [ 13, %bb.am ], [ 35, %bb.bi ], [ 12, %bb.al ], [ 58, %bb.cf ], [ 11, %bb.ak ], [ 42, %bb.bp ], [ 10, %bb.aj ], [ 59, %bb.cg ], [ 9, %bb.ai ], [ 34, %bb.bh ], [ 8, %bb.ah ], [ 60, %bb.ch ], [ 7, %bb.ag ], [ 47, %bb.bu ], [ 6, %bb.af ], [ 61, %bb.ci ], [ 5, %bb.ae ], [ 33, %bb.bg ], [ 4, %bb.ad ], [ 62, %bb.cj ], [ 3, %bb.ac ], [ 40, %bb.bn ], [ 2, %bb.ab ], [ 1, %bb.aa ], [ 32, %bb.bf ], [ 63, %bb.ck ] ; 3 uses
  %i.lf = icmp eq i16 %i.df, 0
  %i.lg = icmp ugt i16 %i.cc, 16639
  %or.cond = or i1 %i.lg, %i.lf
  br i1 %or.cond, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %channel_number_valid.exit.thread
  %i.lh = call ptr @expert_add_info(ptr noundef %4, ptr noundef %i.bz, ptr noundef nonnull @ei_nan_invalid_channel_count) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %channel_number_valid.exit.thread, %bb.cl
  %i.li = add nuw nsw i32 %i.le, %i.dg
  %i.lj = call i32 @llvm.umin.i32(i32 %i.li, i32 64) ; 2 uses
  %i.lk = icmp samesign ugt i32 %i.lj, %i.le
  br i1 %i.lk, label %.lr.ph.preheader, label %.loopexit183

.lr.ph.preheader:                                 ; preds = %bb.cm
  %i.ll = zext nneg i32 %i.le to i64
  %wide.trip.count = zext nneg i32 %i.lj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ll, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.lm = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv
  %i.ln = load i32, ptr %i.lm, align 4
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.ck, ptr noundef nonnull @.str.739, i32 noundef %i.ln)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit183, label %.lr.ph, !llvm.loop !19

rval_to_channel_set.exit173.thread:               ; preds = %bb.v, %rval_to_channel_set.exit173
  %i.lo = call ptr @expert_add_info(ptr noundef %4, ptr noundef %i.bz, ptr noundef nonnull @ei_nan_unknown_op_class) ; 0 uses
  br label %.loopexit183

.loopexit183:                                     ; preds = %.lr.ph, %bb.cm, %rval_to_channel_set.exit173.thread
  %i.lp = load i32, ptr @hf_nan_attr_availability_entry_entries_start_channel_number, align 4
  %i.lq = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.lp, ptr noundef %1, i32 noundef %i.cb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.lr = load i32, ptr @hf_nan_attr_availability_entry_entries_number_of_ch_included, align 4
  %i.ls = add i32 %.2190, 2
  %i.lt = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.lr, ptr noundef %1, i32 noundef %i.ls, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %rval_to_channel_set.exit.thread, %.loopexit183
  %i.lu = load i32, ptr @hf_nan_attr_availability_entry_entries_channel_set, align 4
  %i.lv = call ptr @wmem_strbuf_finalize(ptr noundef %i.ck)
  %i.lw = call ptr @proto_tree_add_string(ptr noundef %i.bz, i32 noundef %i.lu, ptr noundef %1, i32 noundef %i.cb, i32 noundef 2, ptr noundef %i.lv) ; 0 uses
  %i.lx = load i32, ptr @hf_nan_attr_availability_entry_entries_primary_channel_bitmap, align 4
  %i.ly = add i32 %.2190, 3
  %i.lz = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.lx, ptr noundef %1, i32 noundef %i.ly, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ma = load i64, ptr %i.d, align 8
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.loopexit
  %i.mc = load i32, ptr @hf_nan_attr_availability_entry_entries_aux_channel_bitmap, align 4
  %i.md = add i32 %.2190, 4
  %i.me = call ptr @proto_tree_add_item(ptr noundef %i.bz, i32 noundef %i.mc, ptr noundef %1, i32 noundef %i.md, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit
  %i.mf = add i32 %i.bx, %.2190
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph192, %bb.g, %bb.co
  %.3 = phi i32 [ %.2190, %.lr.ph192 ], [ %i.bu, %bb.g ], [ %i.mf, %bb.co ] ; 2 uses
  %i.mg = add nuw i64 %.0154191, 1                ; 2 uses
  %i.mh = load i64, ptr %i.e, align 8
  %i.mi = icmp ult i64 %i.mg, %i.mh
  br i1 %i.mi, label %.lr.ph192, label %._crit_edge, !llvm.loop !20

.loopexit184:                                     ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_ndc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32
  %i.b = icmp ult i16 %3, 11
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_nan_attr_ndc_id, align 4
  %i.e = add i32 %2, 3
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %i.e, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 9
  %i.h = load i32, ptr @hf_nan_attr_ndc_ctrl, align 4
  %i.i = load i32, ptr @ett_ndc_ctr, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @dissect_attr_ndc.ndc_ctr_fields, i32 noundef -2147483648) ; 0 uses
  %i.k = add i32 %2, 10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.037 = phi i32 [ %i.k, %bb.c ], [ %i.ad, %bb.d ] ; 6 uses
  %.03436 = phi i32 [ 7, %bb.c ], [ %i.ae, %bb.d ]
  %i.l = add i32 %.037, 3                         ; 2 uses
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.l)
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 4                  ; 3 uses
  %i.p = load i32, ptr @ett_ndc_entries, align 4
  %i.q = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %.037, i32 noundef %i.o, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.741) ; 4 uses
  %i.r = load i32, ptr @hf_nan_map_id, align 4
  %i.s = load i32, ptr @ett_device_ndc_map_id, align 4
  %i.t = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.q, ptr noundef %1, i32 noundef %.037, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull @dissect_attr_ndc.ndc_map_id_fields, i32 noundef -2147483648) ; 0 uses
  %i.u = add i32 %.037, 1
  %i.v = load i32, ptr @hf_nan_time_bitmap_ctrl, align 4
  %i.w = load i32, ptr @ett_time_bitmap_ctrl, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.q, ptr noundef %1, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull @time_bitmap_ctr_fields, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr @hf_nan_time_bitmap_len, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.y, ptr noundef %1, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_nan_time_bitmap, align 4
  %i.ab = add i32 %.037, 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.ab, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %i.o, %.037
  %i.ae = add nuw nsw i32 %i.o, %.03436           ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, %i.a
  br i1 %i.af, label %bb.d, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_service_id_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = urem i16 %3, 6
  %i.b = udiv exact i16 %3, 6
  %i.c = icmp ne i16 %i.a, 0
  %i.d = icmp eq i16 %3, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid, ptr noundef nonnull @.str.742) ; 0 uses
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i32 %2, 3
  %narrow = add nuw nsw i16 %i.b, 1
  %i.g = zext nneg i16 %narrow to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.020 = phi i32 [ %i.k, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.01419 = phi i32 [ %i.j, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.h = load i32, ptr @hf_nan_service_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %.01419, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.j = add i32 %.01419, 6
  %i.k = add nuw nsw i32 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.g
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_vendor_specific(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ieee80211_tagged_field_data, align 8 ; 5 uses
  %i.a = icmp ult i16 %3, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %2, 3
  %i.d = tail call ptr @tvb_new_subset_remaining(ptr noundef %1, i32 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.e, align 8
  %i.f = load ptr, ptr @ie_handle_table, align 8
  %i.g = call i32 @dissector_try_uint_with_data(ptr noundef %i.f, i32 noundef 221, ptr noundef %i.d, ptr noundef %4, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_ndl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32                       ; 3 uses
  %i.b = icmp ult i16 %3, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %2, 3
  %i.e = load i32, ptr @hf_nan_dialog_tokens, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 4
  %i.h = load i32, ptr @hf_nan_type_status, align 4
  %i.i = load i32, ptr @ett_type_status, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @dissect_attr_ndl.ndl_type_status_fields, i32 noundef -2147483648) ; 0 uses
  %i.k = add i32 %2, 5
  %i.l = load i32, ptr @hf_nan_reason_code, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = add i32 %2, 6                            ; 2 uses
  %i.o = load i32, ptr @hf_nan_attr_ndl_control, align 4
  %i.p = load i32, ptr @ett_ndl_control, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull @dissect_attr_ndl.ndl_control_fields, i32 noundef -2147483648) ; 0 uses
  %i.r = shl i32 %i.n, 3                          ; 3 uses
  %i.s = or disjoint i32 %i.r, 7
  %i.t = tail call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.s, i32 noundef 1)
  %i.u = or disjoint i32 %i.r, 6
  %i.v = tail call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.u, i32 noundef 1)
  %i.w = or disjoint i32 %i.r, 3
  %i.x = tail call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.w, i32 noundef 1)
  %i.y = add i32 %2, 7                            ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr @hf_nan_attr_ndl_reserved_peer_id, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %2, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.069 = phi i32 [ 5, %bb.d ], [ 4, %bb.c ]      ; 2 uses
  %.0 = phi i32 [ %i.ab, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %.not73 = icmp eq i8 %i.x, 0
  br i1 %.not73, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr @hf_nan_attr_ndl_max_idle, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ac, ptr noundef %1, i32 noundef %.0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ae = add i32 %.0, 2
  %i.af = or disjoint i32 %.069, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.170 = phi i32 [ %i.af, %bb.f ], [ %.069, %bb.e ] ; 3 uses
  %.1 = phi i32 [ %i.ae, %bb.f ], [ %.0, %bb.e ]  ; 2 uses
  %.not74 = icmp eq i8 %i.v, 0
  br i1 %.not74, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i32 %i.a, %.170
  %i.ah = load i32, ptr @ett_ndl_schedule_entries, align 4
  %i.ai = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %.1, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.743) ; 4 uses
  %i.aj = icmp samesign ult i32 %.170, %i.a
  br i1 %i.aj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.276 = phi i32 [ %i.ay, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %.27175 = phi i32 [ %i.ba, %.lr.ph ], [ %.170, %bb.h ]
  %i.ak = load i32, ptr @hf_nan_map_id, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %1, i32 noundef %.276, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = add i32 %.276, 1
  %i.an = load i32, ptr @hf_nan_time_bitmap_ctrl, align 4
  %i.ao = load i32, ptr @ett_time_bitmap_ctrl, align 4
  %i.ap = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ai, ptr noundef %1, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef nonnull @time_bitmap_ctr_fields, i32 noundef -2147483648) ; 0 uses
  %i.aq = add i32 %.276, 3                        ; 2 uses
  %i.ar = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.aq)
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  %i.at = load i32, ptr @hf_nan_time_bitmap_len, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.at, ptr noundef %1, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = add i32 %.276, 4                        ; 2 uses
  %i.aw = load i32, ptr @hf_nan_time_bitmap, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.ai, i32 noundef %i.aw, ptr noundef %1, i32 noundef %i.av, i32 noundef %i.as, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %i.av, %i.as
  %i.az = add nuw nsw i32 %.27175, 4
  %i.ba = add nuw nsw i32 %i.az, %i.as            ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, %i.a
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_device_capability_extension(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %3, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %2, 3
  %i.d = load i32, ptr @hf_nan_attr_device_capability_extension, align 4
  %i.e = load i32, ptr @ett_device_capability_extension, align 4
  %i.f = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, ptr noundef nonnull @dissect_attr_device_capability_extension.capability_info_fields, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_nan_identity_resolution(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32
  %i.b = icmp eq i16 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_nan_attr_identity_cipher_version, align 4
  %i.e = add i32 %2, 3                            ; 3 uses
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e)
  %cond = icmp eq i8 %i.g, 0
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_nan_attr_identity_resolution_nonce, align 4
  %i.i = add i32 %2, 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %i.i, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_nan_attr_identity_resolution_tag, align 4
  %i.l = add i32 %2, 12
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.l, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load i32, ptr @hf_nan_attr_reserved, align 4
  %i.o = add nsw i32 %i.a, -1
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.o, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_attr_nan_pairing_bootstrapping(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %3, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @expert_add_info(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @ei_nan_elem_len_invalid) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %2, 3
  %i.d = load i32, ptr @hf_nan_attr_pairing_bootstrapping_dialog_token, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %i.c, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.f = add i32 %2, 4                            ; 2 uses
end_hunk_0
