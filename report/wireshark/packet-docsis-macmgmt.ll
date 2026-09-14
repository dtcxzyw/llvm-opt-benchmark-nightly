Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-docsis-macmgmt?download=true
inline.NumInlined: 62
inline.NumDeleted: 51
begin_hunk_0_@dissect_cmctrlreq_tlv:bb.a
  %i.cw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cr, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.cu, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  %i.cx = add nsw i32 %.034.i96, 2                ; 3 uses
  %i.cy = load ptr, ptr %i.b, align 8
  %i.cz = load i32, ptr %i.a, align 4
  %i.da = add i32 %i.cz, 2
  call void @proto_item_set_len(ptr noundef %i.cy, i32 noundef %i.da)
  switch i8 %i.cm, label %bb.ah [
    i8 1, label %bb.ab
    i8 2, label %bb.ae
  ]

bb.ab:                                            ; preds = %.lr.ph.i95
  %i.db = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load i32, ptr @hf_docsis_cmctrl_us_event_ch_id, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.cr, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.cx, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.df = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cw, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2141, i32 noundef %i.db) ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %.lr.ph.i95
  %i.dg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 2
  br i1 %i.dh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.di = load i32, ptr @hf_docsis_cmctrl_us_event_mask, align 4
  %i.dj = call ptr @proto_tree_add_item(ptr noundef %i.cr, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.cx, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dk = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cw, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2141, i32 noundef %i.dg) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %.lr.ph.i95
  %i.dl = load i32, ptr %i.a, align 4
  %i.dm = add i32 %i.dl, %i.cx                    ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %i.cl
  br i1 %i.dn, label %.lr.ph.i95, label %dissect_us_event.exit, !llvm.loop !70

dissect_us_event.exit:                            ; preds = %bb.ah, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.al

bb.ai:                                            ; preds = %bb.b
  %i.do = add i8 %i.p, -1
  %or.cond3 = icmp ult i8 %i.do, 2
  br i1 %or.cond3, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dp = load i32, ptr @hf_docsis_cmctrl_tlv_event, align 4
  %i.dq = zext i16 %i.ad to i32
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.dp, ptr noundef %0, i32 noundef %i.dq, i32 noundef %i.q, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ds = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2141, i32 noundef %i.q) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.z, %dissect_us_event.exit, %bb.p, %dissect_ds_event.exit, %bb.m, %bb.n, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %bb.e, %bb.b
  %i.dt = zext i8 %i.p to i16
  %i.du = add i16 %i.ad, %i.dt                    ; 2 uses
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.dv)
  %.not = icmp eq i32 %i.dw, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_cwt_tlv(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %dissect_cwt_us_encodings_tlv.exit
  %i.d = phi i32 [ 1, %.lr.ph ], [ %i.bw, %dissect_cwt_us_encodings_tlv.exit ] ; 2 uses
  %.062 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %dissect_cwt_us_encodings_tlv.exit ] ; 5 uses
  %i.e = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.062) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.d) ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 7 uses
  %i.i = load i32, ptr @hf_docsis_cwt_tlv, align 4
  %i.j = add nuw nsw i32 %i.h, 2
  %i.k = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.i, ptr noundef nonnull %0, i32 noundef %.062, i32 noundef %i.j, i32 noundef 0) ; 7 uses
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call ptr @val_to_str(ptr noundef %i.l, i32 noundef %i.f, ptr noundef nonnull @cwt_tlv_vals, ptr noundef nonnull @.str.2191)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.k, ptr noundef nonnull @.str.2169, ptr noundef %i.m)
  %i.n = load i32, ptr @ett_docsis_cwt_tlv, align 4
  %i.o = call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.n) ; 5 uses
  %i.p = load i32, ptr @hf_docsis_cwt_tlv_type, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %0, i32 noundef %.062, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_docsis_cwt_tlv_length, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add i32 %.062, 2                         ; 6 uses
  switch i8 %i.e, label %bb.v [
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i8 %i.g, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr @hf_docsis_cwt_phase_rotation, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.v, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

bb.e:                                             ; preds = %bb.c
  %i.x = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.h) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

bb.f:                                             ; preds = %bb.b
  %i.y = icmp eq i8 %i.g, 2
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @hf_docsis_cwt_max_duration, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.z, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ac = add i32 %i.ab, -1001
  %or.cond = icmp ult i32 %i.ac, -1000
  br i1 %or.cond, label %bb.h, label %dissect_cwt_us_encodings_tlv.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_docsis_cwt_out_of_range, ptr noundef nonnull @.str.2239, i32 noundef %i.ab) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.h) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

bb.j:                                             ; preds = %bb.b
  %i.af = add i32 %i.t, %i.h                      ; 3 uses
  %i.ag = add i32 %.062, 3                        ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.af
  br i1 %i.ah, label %.lr.ph73.i, label %._crit_edge74.i

.lr.ph73.i:                                       ; preds = %bb.j, %bb.t
  %i.ai = phi i32 [ %i.br, %bb.t ], [ %i.ag, %bb.j ] ; 2 uses
  %.06571.i = phi i32 [ %i.bq, %bb.t ], [ %i.t, %bb.j ] ; 4 uses
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.06571.i) ; 2 uses
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.ai) ; 4 uses
  %i.am = zext i8 %i.al to i32                    ; 7 uses
  %i.an = load i32, ptr @hf_docsis_cwt_us_encodings_tlv, align 4
  %i.ao = add nuw nsw i32 %i.am, 2
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.an, ptr noundef nonnull %0, i32 noundef %.06571.i, i32 noundef %i.ao, i32 noundef 0) ; 6 uses
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = call ptr @val_to_str(ptr noundef %i.aq, i32 noundef %i.ak, ptr noundef nonnull @cwt_us_encodings_tlv_vals, ptr noundef nonnull @.str.2191)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ap, ptr noundef nonnull @.str.2169, ptr noundef %i.ar)
  %i.as = load i32, ptr @ett_docsis_cwt_tlv, align 4
  %i.at = call ptr @proto_item_add_subtree(ptr noundef %i.ap, i32 noundef %i.as) ; 5 uses
  %i.au = load i32, ptr @hf_docsis_cwt_us_encodings_tlv_type, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.au, ptr noundef nonnull %0, i32 noundef %.06571.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @hf_docsis_cwt_us_encodings_tlv_length, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.aw, ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %.06571.i, 2                    ; 5 uses
  switch i8 %i.aj, label %bb.s [
    i8 1, label %bb.k
    i8 2, label %bb.n
    i8 3, label %bb.p
  ]

bb.k:                                             ; preds = %.lr.ph73.i
  %i.az = icmp eq i8 %i.al, 1
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr @hf_docsis_cwt_us_encodings_cid, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.ba, ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.bc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ap, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.am) ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %.lr.ph73.i
  %i.bd = load i32, ptr @ett_docsis_cwt_subtlv, align 4
  %i.be = call ptr @proto_tree_add_subtree(ptr noundef %i.at, ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef range(i32 0, 256) %i.h, i32 noundef %i.bd, ptr noundef null, ptr noundef nonnull @.str.2240)
  %invariant.op.i = add nsw i32 %i.am, -1
  %i.bf = icmp ugt i8 %i.al, 1
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.070.i = phi i32 [ %i.bj, %.lr.ph.i ], [ 0, %bb.n ] ; 2 uses
  %i.bg = load i32, ptr @hf_docsis_cwt_us_encodings_sc_index, align 4
  %i.bh = add i32 %.070.i, %i.ay
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = add nuw nsw i32 %.070.i, 2              ; 3 uses
  %5 = icmp slt i32 %i.bj, %invariant.op.i
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.0.lcssa.i = phi i32 [ 0, %bb.n ], [ %i.bj, %.lr.ph.i ]
  %.not69.i = icmp eq i32 %.0.lcssa.i, %i.am
  br i1 %.not69.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.bk = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ap, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.am) ; 0 uses
  br label %bb.t

bb.p:                                             ; preds = %.lr.ph73.i
  %i.bl = icmp eq i8 %i.al, 1
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr @hf_docsis_cwt_us_encodings_power_boost, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.bm, ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bo = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ap, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.am) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph73.i
  %i.bp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ap, ptr noundef nonnull @ei_docsis_mgmt_tlvtype_unknown, ptr noundef nonnull @.str.2170, i32 noundef %i.ak) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %._crit_edge.i, %bb.m, %bb.l
  %i.bq = add i32 %i.ay, %i.am                    ; 3 uses
  %i.br = add i32 %i.bq, 1                        ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.af
  br i1 %i.bs, label %.lr.ph73.i, label %._crit_edge74.i, !llvm.loop !73

._crit_edge74.i:                                  ; preds = %bb.t, %bb.j
  %.065.lcssa.i = phi i32 [ %i.t, %bb.j ], [ %i.bq, %bb.t ]
  %.not.i = icmp eq i32 %.065.lcssa.i, %i.af
  br i1 %.not.i, label %dissect_cwt_us_encodings_tlv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge74.i
  %i.bt = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef range(i32 0, 256) %i.h) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

bb.v:                                             ; preds = %bb.b
  %i.bu = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_docsis_mgmt_tlvtype_unknown, ptr noundef nonnull @.str.2194, i32 noundef %i.f) ; 0 uses
  br label %dissect_cwt_us_encodings_tlv.exit

dissect_cwt_us_encodings_tlv.exit:                ; preds = %bb.u, %._crit_edge74.i, %bb.i, %bb.g, %bb.h, %bb.d, %bb.e, %bb.v
  %i.bv = add i32 %i.t, %i.h                      ; 3 uses
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %4
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %dissect_cwt_us_encodings_tlv.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bv, %dissect_cwt_us_encodings_tlv.exit ]
  %.not = icmp eq i32 %.0.lcssa, %4
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.by = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %4) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ect_tlv(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %4, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 416        ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bj
  %i.f = phi i32 [ 1, %.lr.ph ], [ %i.hq, %bb.bj ] ; 2 uses
  %.046 = phi i32 [ 0, %.lr.ph ], [ %.pre-phi, %bb.bj ] ; 5 uses
  %i.g = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.046) ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.f)
  %i.j = zext i8 %i.i to i32                      ; 4 uses
  %i.k = load i32, ptr @hf_docsis_ect_tlv, align 4
  %i.l = add nuw nsw i32 %i.j, 2
  %i.m = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.k, ptr noundef nonnull %0, i32 noundef %.046, i32 noundef %i.l, i32 noundef 0) ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = call ptr @val_to_str(ptr noundef %i.n, i32 noundef %i.h, ptr noundef nonnull @ect_tlv_vals, ptr noundef nonnull @.str.2191)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.m, ptr noundef nonnull @.str.2169, ptr noundef %i.o)
  %i.p = load i32, ptr @ett_docsis_ect_tlv, align 4
  %i.q = call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.p) ; 3 uses
  %i.r = load i32, ptr @hf_docsis_ect_tlv_type, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %.046, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_docsis_ect_tlv_length, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %.046, 2                         ; 4 uses
  %cond = icmp eq i8 %i.g, 87
  br i1 %cond, label %bb.c, label %bb.bi

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.v, %i.j                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.x = add i32 %.046, 3                         ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph91.i, label %._crit_edge.i

.lr.ph91.i:                                       ; preds = %bb.c, %dissect_ect_control_method_tlv.exit.i
  %i.z = phi i32 [ %i.hm, %dissect_ect_control_method_tlv.exit.i ], [ %i.x, %bb.c ] ; 2 uses
  %.07990.i = phi i32 [ %i.hl, %dissect_ect_control_method_tlv.exit.i ], [ %i.v, %bb.c ] ; 6 uses
  %i.aa = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.07990.i) ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.z) ; 5 uses
  %i.ad = zext i8 %i.ac to i32                    ; 10 uses
  %i.ae = load i32, ptr @hf_docsis_ect_control_tlv, align 4
  %i.af = add nuw nsw i32 %i.ad, 2
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ae, ptr noundef nonnull %0, i32 noundef %.07990.i, i32 noundef %i.af, i32 noundef 0) ; 9 uses
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = call ptr @val_to_str(ptr noundef %i.ah, i32 noundef %i.ab, ptr noundef nonnull @ect_control_tlv_vals, ptr noundef nonnull @.str.2191)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ag, ptr noundef nonnull @.str.2169, ptr noundef %i.ai)
  %i.aj = load i32, ptr @ett_docsis_ect_tlv, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ag, i32 noundef %i.aj) ; 8 uses
  %i.al = load i32, ptr @hf_docsis_ect_control_tlv_type, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef nonnull %0, i32 noundef %.07990.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_docsis_ect_control_tlv_length, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.an, ptr noundef nonnull %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = add i32 %.07990.i, 2                    ; 11 uses
  switch i8 %i.aa, label %bb.bg [
    i8 1, label %.preheader.i
    i8 2, label %bb.d
    i8 3, label %bb.g
    i8 4, label %bb.aw
    i8 5, label %bb.az
    i8 6, label %bb.bc
  ]

.preheader.i:                                     ; preds = %.lr.ph91.i
  %.not92.i = icmp eq i8 %i.ac, 0
  br i1 %.not92.i, label %dissect_ect_control_method_tlv.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.089.i = phi i32 [ %i.at, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.aq = load i32, ptr @hf_docsis_ect_control_subband_direction, align 4
  %i.ar = add i32 %.089.i, %i.ap
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.aq, ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = add nuw nsw i32 %.089.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i, label %dissect_ect_control_method_tlv.exit.i, label %.lr.ph.i, !llvm.loop !75

bb.d:                                             ; preds = %.lr.ph91.i
  %i.au = icmp eq i8 %i.ac, 1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr @hf_docsis_ect_control_status, align 4
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.av, ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_ect_control_method_tlv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ax = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull @ei_docsis_mgmt_tlvlen_bad, ptr noundef nonnull @.str.2168, i32 noundef %i.ad) ; 0 uses
  br label %dissect_ect_control_method_tlv.exit.i

bb.g:                                             ; preds = %.lr.ph91.i
  %i.ay = add i32 %i.ap, %i.ad                    ; 3 uses
  %i.az = add i32 %.07990.i, 3                    ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ay
  br i1 %i.ba, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.au
  %i.bb = phi i32 [ %i.fp, %bb.au ], [ %i.az, %bb.g ] ; 2 uses
  %.056.i.i = phi i32 [ %.pre-phi.i.i, %bb.au ], [ %i.ap, %bb.g ] ; 6 uses
  %i.bc = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.056.i.i) ; 2 uses
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.bb)
  %i.bf = zext i8 %i.be to i32                    ; 6 uses
  %i.bg = load i32, ptr @hf_docsis_ect_control_method_tlv, align 4
  %i.bh = add nuw nsw i32 %i.bf, 2
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bg, ptr noundef nonnull %0, i32 noundef %.056.i.i, i32 noundef %i.bh, i32 noundef 0) ; 5 uses
  %i.bj = load ptr, ptr %i.e, align 8
  %i.bk = call ptr @val_to_str(ptr noundef %i.bj, i32 noundef %i.bd, ptr noundef nonnull @ect_control_method_tlv_vals, ptr noundef nonnull @.str.2191)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bi, ptr noundef nonnull @.str.2169, ptr noundef %i.bk)
  %i.bl = load i32, ptr @ett_docsis_ect_tlv, align 4
  %i.bm = call ptr @proto_item_add_subtree(ptr noundef %i.bi, i32 noundef %i.bl) ; 4 uses
  %i.bn = load i32, ptr @hf_docsis_ect_control_method_tlv_type, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %0, i32 noundef %.056.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_docsis_ect_control_method_tlv_length, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bp, ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.br = add i32 %.056.i.i, 2                    ; 7 uses
  switch i8 %i.bc, label %bb.at [
    i8 1, label %bb.h
    i8 2, label %bb.aa
  ]

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bs = add i32 %i.br, %i.bf                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bt = add i32 %.056.i.i, 3                    ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.bs
end_hunk_0
