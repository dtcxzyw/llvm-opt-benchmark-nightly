Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@add_ff_s1g_twt_teardown:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_ieee80211_twt_bcast_teardown_all, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.c, i32 noundef %i.b, ptr noundef @ieee80211_twt_teardown_all, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i8 %i.a, 5
  switch i8 %i.e, label %default.unreachable1 [
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @hf_ieee80211_twt_bcast_flow, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.f, i32 noundef %i.b, ptr noundef @ieee80211_twt_neg_type2, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_ieee80211_twt_bcast_flow, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.h, i32 noundef %i.b, ptr noundef @ieee80211_twt_bcast_flow, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.j = load i32, ptr @hf_ieee80211_twt_individual_flow, align 4
  %i.k = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.j, i32 noundef %i.b, ptr noundef @ieee80211_twt_individual_flow, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  br label %bb.g

default.unreachable1:                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_quiet_time_period(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = load i32, ptr @hf_ieee80211_he_qtp_control, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = add i32 %2, 1                            ; 4 uses
  switch i8 %i.a, label %bb.d [
    i8 0, label %.sink.split
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_he_qtp_request_dialog_token, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_ieee80211_he_qtp_response_dialog_token, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = add i32 %2, 3
  %i.j = load i32, ptr @hf_ieee80211_he_qtp_response_status_code, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.c, %bb.b
  %.sink15 = phi i32 [ 3, %bb.b ], [ 4, %bb.c ]
  %hf_ieee80211_he_qtp_request_quiet_period_offset.sink = phi ptr [ @hf_ieee80211_he_qtp_request_quiet_period_offset, %bb.b ], [ @hf_ieee80211_he_qtp_response_quiet_period_offset, %bb.c ]
  %.sink12 = phi i32 [ 4, %bb.b ], [ 5, %bb.c ]
  %hf_ieee80211_he_qtp_request_quiet_period_duration.sink = phi ptr [ @hf_ieee80211_he_qtp_request_quiet_period_duration, %bb.b ], [ @hf_ieee80211_he_qtp_response_quiet_period_duration, %bb.c ]
  %.sink9 = phi i32 [ 6, %bb.b ], [ 7, %bb.c ]
  %hf_ieee80211_he_qtp_request_quiet_period_interval.sink = phi ptr [ @hf_ieee80211_he_qtp_request_quiet_period_interval, %bb.b ], [ @hf_ieee80211_he_qtp_response_quiet_period_interval, %bb.c ]
  %.sink6 = phi i32 [ 7, %bb.b ], [ 8, %bb.c ]
  %hf_ieee80211_he_qtp_response_repetition_count.sink.ph = phi ptr [ @hf_ieee80211_he_qtp_request_repetition_count, %bb.b ], [ @hf_ieee80211_he_qtp_response_repetition_count, %bb.c ]
  %.sink3.ph = phi i32 [ 8, %bb.b ], [ 9, %bb.c ]
  %hf_ieee80211_he_qtp_response_srv_specific_identif.sink.ph = phi ptr [ @hf_ieee80211_he_qtp_request_srv_specific_identif, %bb.b ], [ @hf_ieee80211_he_qtp_response_srv_specific_identif, %bb.c ]
  %.sink.ph = phi i32 [ 10, %bb.b ], [ 11, %bb.c ]
  %i.l = add i32 %2, %.sink15
  %i.m = load i32, ptr %hf_ieee80211_he_qtp_request_quiet_period_offset.sink, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add i32 %2, %.sink12
  %i.p = load i32, ptr %hf_ieee80211_he_qtp_request_quiet_period_duration.sink, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.r = add i32 %2, %.sink9
  %i.s = load i32, ptr %hf_ieee80211_he_qtp_request_quiet_period_interval.sink, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = add i32 %2, %.sink6
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.a
  %hf_ieee80211_he_qtp_response_repetition_count.sink = phi ptr [ @hf_ieee80211_he_qtp_setup_quiet_period_duration, %bb.a ], [ %hf_ieee80211_he_qtp_response_repetition_count.sink.ph, %.sink.split.sink.split ]
  %.sink5 = phi i32 [ %i.d, %bb.a ], [ %i.u, %.sink.split.sink.split ]
  %.sink3 = phi i32 [ 2, %bb.a ], [ %.sink3.ph, %.sink.split.sink.split ]
  %hf_ieee80211_he_qtp_response_srv_specific_identif.sink = phi ptr [ @hf_ieee80211_he_qtp_setup_srv_specific_identif, %bb.a ], [ %hf_ieee80211_he_qtp_response_srv_specific_identif.sink.ph, %.sink.split.sink.split ]
  %.sink = phi i32 [ 4, %bb.a ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.v = load i32, ptr %hf_ieee80211_he_qtp_response_repetition_count.sink, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %.sink5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %2, %.sink3
  %i.y = load i32, ptr %hf_ieee80211_he_qtp_response_srv_specific_identif.sink, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = add i32 %2, %.sink
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.aa, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_letoh40(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_bss_color_change(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_ieee80211_he_bss_color_change_switch_countdown, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %2, 1
  %i.d = load i32, ptr @hf_ieee80211_he_bss_color_change_new_color_info, align 4
  %i.e = load i32, ptr @ett_he_bss_new_color_info, align 4
  %i.f = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %1, ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, ptr noundef @bss_new_color_headers, i32 noundef 0, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint40(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @add_ff_eht_su_beamforming_rpt(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = trunc i64 %4 to i8                       ; 2 uses
  %i.h = and i8 %i.g, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store ptr null, ptr %i.f, align 8
  %narrow = add nuw nsw i8 %i.h, 1
  %i.i = zext nneg i8 %narrow to i32              ; 48 uses
  %i.j = load i32, ptr @ett_ff_eht_mimo_beamforming_report_snr, align 4
  %i.k = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.j, ptr noundef null, ptr noundef @.str.7979)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i32 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0155 = phi i32 [ %3, %bb.a ], [ %i.y, %bb.b ] ; 3 uses
  %i.l = tail call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.0155) ; 5 uses
  %i.m = load i32, ptr @hf_ieee80211_eht_compressed_beamforming_report_snr, align 4
  %i.n = sext i8 %i.l to i32
  %i.o = icmp eq i8 %i.l, 127
  %i.p = icmp eq i8 %i.l, -128
  %i.q = select i1 %i.p, ptr @.str.7989, ptr @.str.7990
  %i.r = select i1 %i.o, ptr @.str.7988, ptr %i.q
  %i.s = sitofp i8 %i.l to float
  %i.t = fadd nnan float %i.s, 8.800000e+01
  %i.u = fmul nnan float %i.t, 2.500000e-01
  %i.v = fpext float %i.u to double
  %i.w = zext i8 %i.l to i32
  %i.x = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.k, i32 noundef %i.m, ptr noundef %1, i32 noundef %.0155, i32 noundef 1, i32 noundef %i.n, ptr noundef @.str.7987, i32 noundef %indvars.iv, ptr noundef nonnull %i.r, double noundef %i.v, i32 noundef %i.w) ; 0 uses
  %i.y = add i32 %.0155, 1                        ; 35 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i32 %indvars.iv.next, %i.i
  br i1 %exitcond, label %bb.c, label %bb.b, !llvm.loop !198

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i8 %i.g, 4                          ; 9 uses
  %i.aa = trunc i64 %4 to i32
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = and i32 %i.ab, 7
  %i.ad = lshr i64 %4, 11
  %i.ae = trunc i64 %i.ad to i8
  %i.af = and i8 %i.ae, 1                         ; 5 uses
  %i.ag = lshr i64 %4, 21
  %i.ah = trunc i64 %i.ag to i16
  %i.ai = and i16 %i.ah, 511                      ; 6 uses
  %i.aj = and i64 %4, 68719476736
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  %. = select i1 %i.ak, i8 4, i8 6                ; 9 uses
  %.108 = select i1 %i.ak, i8 2, i8 4             ; 9 uses
  %i.al = load i32, ptr @ett_eht_beamforming_feedback_tree, align 4
  %i.am = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.al, ptr noundef nonnull %i.f, ptr noundef @.str.7981) ; 23 uses
  switch i32 %i.ac, label %bb.du [
    i32 0, label %bb.d
    i32 1, label %bb.o
    i32 2, label %bb.s
    i32 3, label %bb.al
    i32 4, label %bb.bu
  ]

bb.d:                                             ; preds = %bb.c
  %i.an = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ao = select i1 %i.an, i32 4, i32 16          ; 2 uses
  %i.ap = shl i32 %i.y, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr null, ptr %i.e, align 8
  %spec.select.i = select i1 %i.an, ptr @ru_242_tone_1_20MHz_ng4, ptr @ru_242_tone_1_20MHz_ng16
  %i.aq = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.ar = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.aq, ptr noundef nonnull %i.e, ptr noundef @.str.8007, i32 noundef 1) ; 2 uses
  %narrow.i = add nuw nsw i8 %i.z, 1
  %i.as = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.at = zext nneg i8 %. to i32                  ; 2 uses
  %i.au = zext nneg i8 %.108 to i32               ; 2 uses
  %i.av = getelementptr i8, ptr %2, i64 416       ; 2 uses
  %i.aw = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i = load ptr, ptr %i.av, align 8
  %i.ax = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ar, ptr noundef %1, ptr %.val.peel.i, i32 noundef %i.y, i32 noundef %i.ap, i32 noundef -122, i32 noundef %i.as, i32 noundef %i.i, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.aw)
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %bb.d
  %.sroa.1727.0.i = phi i32 [ -122, %bb.d ], [ %.sroa.1727.2.ph.i, %bb.n ] ; 5 uses
  %.sroa.424.1.i = phi ptr [ %spec.select.i, %bb.d ], [ %.sroa.424.3.ph.i, %bb.n ] ; 8 uses
  %.0.i = phi i32 [ %i.ax, %bb.d ], [ %i.bu, %bb.n ] ; 2 uses
  %.022.i = lshr i32 %.0.i, 3                     ; 3 uses
  %i.ay = getelementptr i8, ptr %.sroa.424.1.i, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %.sroa.1727.0.i, %i.az
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr i8, ptr %.sroa.424.1.i, i64 16
  %i.bc = load i8, ptr %i.bb, align 4, !range !9, !noundef !10
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %add_ff_eht_su_20MHz_rpt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %.sroa.424.1.i, i64 20 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp eq i32 %.sroa.1727.0.i, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr i8, ptr %.sroa.424.1.i, i64 24
  %i.bi = load i8, ptr %i.bh, align 4, !range !9, !noundef !10
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = add i32 %.sroa.1727.0.i, %i.ao
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %.sroa.424.1.i, i64 28
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, %.sroa.1727.0.i
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.bo = getelementptr i8, ptr %.sroa.424.1.i, i64 4
  %i.bp = load i8, ptr %i.bo, align 4, !range !9, !noundef !10
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr i8, ptr %.sroa.424.1.i, i64 8
  %i.bs = load i32, ptr %i.br, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i = phi i32 [ %i.bs, %bb.l ], [ %i.ao, %bb.k ]
  %storemerge.i.i = add i32 %.pn.i.i, %.sroa.1727.0.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.i, %bb.g
  %.sroa.1727.2.ph.i = phi i32 [ %i.bf, %bb.g ], [ %i.bn, %bb.j ], [ %i.bk, %bb.i ], [ %storemerge.i.i, %bb.m ] ; 2 uses
  %.sroa.424.3.ph.i = phi ptr [ %i.be, %bb.g ], [ %i.be, %bb.j ], [ %i.be, %bb.i ], [ %.sroa.424.1.i, %bb.m ]
  %i.bt = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i = load ptr, ptr %i.av, align 8
  %i.bu = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ar, ptr noundef %1, ptr %.val.i, i32 noundef %.022.i, i32 noundef %.0.i, i32 noundef %.sroa.1727.2.ph.i, i32 noundef %i.as, i32 noundef %i.i, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.bt)
  br label %bb.e, !llvm.loop !199

add_ff_eht_su_20MHz_rpt.exit:                     ; preds = %bb.f
  %i.bv = load ptr, ptr %i.e, align 8
  %i.bw = sub i32 %.022.i, %i.y                   ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.bv, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.bx = load ptr, ptr %i.f, align 8
  call void @proto_item_set_len(ptr noundef %i.bx, i32 noundef %i.bw)
  br label %bb.du

bb.o:                                             ; preds = %bb.c
  %i.by = icmp eq i8 %i.af, 0
  %i.bz = select i1 %i.by, i32 4, i32 16          ; 2 uses
  %i.ca = shl i32 %i.y, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr null, ptr %i.d, align 8
  %i.cb = zext nneg i16 %i.ai to i32              ; 2 uses
  %narrow.i109 = add nuw nsw i8 %i.z, 1
  %i.cc = zext nneg i8 %narrow.i109 to i32        ; 4 uses
  %i.cd = zext nneg i8 %. to i32                  ; 4 uses
  %i.ce = zext nneg i8 %.108 to i32               ; 4 uses
  %i.cf = getelementptr i8, ptr %2, i64 416       ; 4 uses
  %i.cg = and i32 %i.cb, 2
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.o
  %i.ci = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.cj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.ci, ptr noundef nonnull %i.d, ptr noundef @.str.8010, i32 noundef 1) ; 2 uses
  %i.ck = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i110 = load ptr, ptr %i.cf, align 8
  %i.cl = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.cj, ptr noundef %1, ptr %.val.peel.i110, i32 noundef %i.y, i32 noundef %i.ca, i32 noundef -244, i32 noundef %i.cc, i32 noundef %i.i, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.ck) ; 2 uses
  %.130.i156 = lshr i32 %i.cl, 3
  br label %bb.p

bb.p:                                             ; preds = %.peel.next.i, %bb.p
  %.130.i159 = phi i32 [ %.130.i156, %.peel.next.i ], [ %.130.i, %bb.p ]
  %.1.i158 = phi i32 [ %i.cl, %.peel.next.i ], [ %i.cn, %bb.p ]
  %.sroa.1336.1.i157 = phi i32 [ -244, %.peel.next.i ], [ %storemerge.i.i111, %bb.p ]
  %storemerge.i.i111 = add i32 %.sroa.1336.1.i157, %i.bz ; 3 uses
  %i.cm = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i112 = load ptr, ptr %i.cf, align 8
  %i.cn = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.cj, ptr noundef %1, ptr %.val.i112, i32 noundef %.130.i159, i32 noundef %.1.i158, i32 noundef %storemerge.i.i111, i32 noundef %i.cc, i32 noundef %i.i, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.cm) ; 3 uses
  %.130.i = lshr i32 %i.cn, 3                     ; 3 uses
  %i.co = icmp eq i32 %storemerge.i.i111, -4
  br i1 %i.co, label %next_eht_scidx.exit.i, label %bb.p, !llvm.loop !200

next_eht_scidx.exit.i:                            ; preds = %bb.p
  %i.cp = load ptr, ptr %i.d, align 8
  %i.cq = sub i32 %.130.i, %i.y
  call void @proto_item_set_len(ptr noundef %i.cp, i32 noundef %i.cq)
  br label %bb.q

bb.q:                                             ; preds = %next_eht_scidx.exit.i, %bb.o
  %.231.i = phi i32 [ %i.y, %bb.o ], [ %.130.i, %next_eht_scidx.exit.i ] ; 4 uses
  %.2.i = phi i32 [ %i.ca, %bb.o ], [ %i.cn, %next_eht_scidx.exit.i ]
  %i.cr = and i32 %i.cb, 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %add_ff_eht_su_40MHz_rpt.exit, label %.peel.next.1.i

.peel.next.1.i:                                   ; preds = %bb.q
  %i.ct = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.cu = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.231.i, i32 noundef -1, i32 noundef %i.ct, ptr noundef nonnull %i.d, ptr noundef @.str.8010, i32 noundef 2) ; 2 uses
  %i.cv = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.1.i = load ptr, ptr %i.cf, align 8
  %i.cw = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.cu, ptr noundef %1, ptr %.val.peel.1.i, i32 noundef %.231.i, i32 noundef %.2.i, i32 noundef 4, i32 noundef %i.cc, i32 noundef %i.i, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.cv) ; 2 uses
  %.130.1.i160 = lshr i32 %i.cw, 3
  br label %bb.r

next_eht_scidx.exit.1.i:                          ; preds = %bb.r
  %i.cx = load ptr, ptr %i.d, align 8
  %i.cy = sub i32 %.130.1.i, %.231.i
  call void @proto_item_set_len(ptr noundef %i.cx, i32 noundef %i.cy)
  br label %add_ff_eht_su_40MHz_rpt.exit

bb.r:                                             ; preds = %.peel.next.1.i, %bb.r
  %.130.1.i163 = phi i32 [ %.130.1.i160, %.peel.next.1.i ], [ %.130.1.i, %bb.r ]
  %.1.1.i162 = phi i32 [ %i.cw, %.peel.next.1.i ], [ %i.da, %bb.r ]
  %.sroa.1336.1.1.i161 = phi i32 [ 4, %.peel.next.1.i ], [ %storemerge.i.1.i, %bb.r ]
  %storemerge.i.1.i = add i32 %.sroa.1336.1.1.i161, %i.bz ; 3 uses
  %i.cz = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.1.i = load ptr, ptr %i.cf, align 8
  %i.da = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.cu, ptr noundef %1, ptr %.val.1.i, i32 noundef %.130.1.i163, i32 noundef %.1.1.i162, i32 noundef %storemerge.i.1.i, i32 noundef %i.cc, i32 noundef %i.i, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.cz) ; 2 uses
  %.130.1.i = lshr i32 %i.da, 3                   ; 3 uses
  %i.db = icmp eq i32 %storemerge.i.1.i, 244
  br i1 %i.db, label %next_eht_scidx.exit.1.i, label %bb.r, !llvm.loop !200

add_ff_eht_su_40MHz_rpt.exit:                     ; preds = %bb.q, %next_eht_scidx.exit.1.i
  %.231.1.i = phi i32 [ %.231.i, %bb.q ], [ %.130.1.i, %next_eht_scidx.exit.1.i ] ; 2 uses
  %i.dc = sub i32 %.231.1.i, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.dd = load ptr, ptr %i.f, align 8
  call void @proto_item_set_len(ptr noundef %i.dd, i32 noundef %i.dc)
  br label %bb.du

bb.s:                                             ; preds = %bb.c
  %i.de = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.df = select i1 %i.de, i8 4, i8 16            ; 2 uses
  %i.dg = shl i32 %i.y, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr null, ptr %i.c, align 8
  %i.dh = zext nneg i16 %i.ai to i32              ; 4 uses
  %i.di = icmp eq i16 %i.ai, 30
  br i1 %i.di, label %.peel.next110.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.dj = zext nneg i8 %i.df to i32               ; 4 uses
  %narrow.i113 = add nuw nsw i8 %i.z, 1
  %i.dk = zext nneg i8 %narrow.i113 to i32        ; 8 uses
  %i.dl = zext nneg i8 %. to i32                  ; 8 uses
  %i.dm = zext nneg i8 %.108 to i32               ; 8 uses
  %i.dn = getelementptr i8, ptr %2, i64 416       ; 8 uses
  %i.do = and i32 %i.dh, 2
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %.peel.next.i114

.peel.next110.i:                                  ; preds = %bb.s
  %spec.select.i118 = select i1 %i.de, ptr @ru_996_tone_80MHz_ng4, ptr @ru_996_tone_80MHz_ng16
  %i.dq = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.dr = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.dq, ptr noundef nonnull %i.c, ptr noundef @.str.8012, i32 noundef 1) ; 2 uses
  %i.ds = zext nneg i8 %i.df to i32               ; 2 uses
  %narrow60.i = add nuw nsw i8 %i.z, 1
  %i.dt = zext nneg i8 %narrow60.i to i32         ; 2 uses
  %i.du = zext nneg i8 %. to i32                  ; 2 uses
  %i.dv = zext nneg i8 %.108 to i32               ; 2 uses
  %i.dw = getelementptr i8, ptr %2, i64 416       ; 2 uses
  %i.dx = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val62.peel.i = load ptr, ptr %i.dw, align 8
  %i.dy = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.dr, ptr noundef %1, ptr %.val62.peel.i, i32 noundef %i.y, i32 noundef %i.dg, i32 noundef -500, i32 noundef %i.dt, i32 noundef %i.i, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dx)
  br label %bb.t

bb.t:                                             ; preds = %bb.ac, %.peel.next110.i
  %.sroa.571.1.i = phi ptr [ %spec.select.i118, %.peel.next110.i ], [ %.sroa.571.4.ph.i, %bb.ac ] ; 8 uses
  %.sroa.2879.0.i = phi i32 [ -500, %.peel.next110.i ], [ %.sroa.2879.5.ph.i, %bb.ac ] ; 5 uses
  %.0.i119 = phi i32 [ %i.dy, %.peel.next110.i ], [ %i.ev, %bb.ac ] ; 2 uses
  %.054.i = lshr i32 %.0.i119, 3                  ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.571.1.i, i64 12
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp eq i32 %.sroa.2879.0.i, %i.ea
  br i1 %i.eb, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr i8, ptr %.sroa.571.1.i, i64 16
  %i.ed = load i8, ptr %i.ec, align 4, !range !9, !noundef !10
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %next_eht_scidx.exit.i122, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr i8, ptr %.sroa.571.1.i, i64 20 ; 4 uses
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = icmp eq i32 %.sroa.2879.0.i, %i.eg
  br i1 %i.eh, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr i8, ptr %.sroa.571.1.i, i64 24
  %i.ej = load i8, ptr %i.ei, align 4, !range !9, !noundef !10
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.el = add i32 %.sroa.2879.0.i, %i.ds
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.em = getelementptr i8, ptr %.sroa.571.1.i, i64 28
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = add i32 %i.en, %.sroa.2879.0.i
  br label %bb.ac

bb.z:                                             ; preds = %bb.t
  %i.ep = getelementptr i8, ptr %.sroa.571.1.i, i64 4
  %i.eq = load i8, ptr %i.ep, align 4, !range !9, !noundef !10
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = getelementptr i8, ptr %.sroa.571.1.i, i64 8
  %i.et = load i32, ptr %i.es, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.i.i120 = phi i32 [ %i.et, %bb.aa ], [ %i.ds, %bb.z ]
  %storemerge.i.i121 = add i32 %.pn.i.i120, %.sroa.2879.0.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.x, %bb.v
  %.sroa.571.4.ph.i = phi ptr [ %i.ef, %bb.v ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ], [ %.sroa.571.1.i, %bb.ab ]
  %.sroa.2879.5.ph.i = phi i32 [ %i.eg, %bb.v ], [ %i.el, %bb.x ], [ %i.eo, %bb.y ], [ %storemerge.i.i121, %bb.ab ] ; 2 uses
  %i.eu = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val62.i = load ptr, ptr %i.dw, align 8
  %i.ev = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.dr, ptr noundef %1, ptr %.val62.i, i32 noundef %.054.i, i32 noundef %.0.i119, i32 noundef %.sroa.2879.5.ph.i, i32 noundef %i.dt, i32 noundef %i.i, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.eu)
  br label %bb.t, !llvm.loop !201

next_eht_scidx.exit.i122:                         ; preds = %bb.u
  %i.ew = load ptr, ptr %i.c, align 8
  %i.ex = sub i32 %.054.i, %i.y                   ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.ew, i32 noundef %i.ex)
  br label %add_ff_eht_su_80MHz_rpt.exit

.peel.next.i114:                                  ; preds = %.preheader.i
  %i.ey = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.ez = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.ey, ptr noundef nonnull %i.c, ptr noundef @.str.8013, i32 noundef 1) ; 2 uses
  %i.fa = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i115 = load ptr, ptr %i.dn, align 8
  %i.fb = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ez, ptr noundef %1, ptr %.val.peel.i115, i32 noundef %i.y, i32 noundef %i.dg, i32 noundef -500, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fa) ; 2 uses
  %.256.i224 = lshr i32 %i.fb, 3
  br label %bb.ad

bb.ad:                                            ; preds = %.peel.next.i114, %bb.ad
  %.256.i227 = phi i32 [ %.256.i224, %.peel.next.i114 ], [ %.256.i, %bb.ad ]
  %.2.i116226 = phi i32 [ %i.fb, %.peel.next.i114 ], [ %i.fd, %bb.ad ]
  %.sroa.2879.2.i225 = phi i32 [ -500, %.peel.next.i114 ], [ %storemerge.i64.i, %bb.ad ]
  %storemerge.i64.i = add i32 %.sroa.2879.2.i225, %i.dj ; 3 uses
  %i.fc = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i117 = load ptr, ptr %i.dn, align 8
  %i.fd = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ez, ptr noundef %1, ptr %.val.i117, i32 noundef %.256.i227, i32 noundef %.2.i116226, i32 noundef %storemerge.i64.i, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fc) ; 3 uses
  %.256.i = lshr i32 %i.fd, 3                     ; 3 uses
  %i.fe = icmp eq i32 %storemerge.i64.i, -260
  br i1 %i.fe, label %next_eht_scidx.exit69.i, label %bb.ad, !llvm.loop !202

next_eht_scidx.exit69.i:                          ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.c, align 8
  %i.fg = sub i32 %.256.i, %i.y
  call void @proto_item_set_len(ptr noundef %i.ff, i32 noundef %i.fg)
  br label %bb.ae

bb.ae:                                            ; preds = %next_eht_scidx.exit69.i, %.preheader.i
  %.357.i = phi i32 [ %i.y, %.preheader.i ], [ %.256.i, %next_eht_scidx.exit69.i ] ; 4 uses
  %.3.i = phi i32 [ %i.dg, %.preheader.i ], [ %i.fd, %next_eht_scidx.exit69.i ] ; 2 uses
  %i.fh = and i32 %i.dh, 4
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ag, label %.peel.next.i114.1

.peel.next.i114.1:                                ; preds = %bb.ae
  %i.fj = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.fk = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.357.i, i32 noundef -1, i32 noundef %i.fj, ptr noundef nonnull %i.c, ptr noundef @.str.8013, i32 noundef 2) ; 2 uses
  %i.fl = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i115.1 = load ptr, ptr %i.dn, align 8
  %i.fm = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.fk, ptr noundef %1, ptr %.val.peel.i115.1, i32 noundef %.357.i, i32 noundef %.3.i, i32 noundef -252, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fl) ; 2 uses
  %.256.i.1228 = lshr i32 %i.fm, 3
  br label %bb.af

bb.af:                                            ; preds = %.peel.next.i114.1, %bb.af
  %.256.i.1231 = phi i32 [ %.256.i.1228, %.peel.next.i114.1 ], [ %.256.i.1, %bb.af ]
  %.2.i116.1230 = phi i32 [ %i.fm, %.peel.next.i114.1 ], [ %i.fo, %bb.af ]
  %.sroa.2879.2.i.1229 = phi i32 [ -252, %.peel.next.i114.1 ], [ %storemerge.i64.i.1, %bb.af ]
  %storemerge.i64.i.1 = add i32 %.sroa.2879.2.i.1229, %i.dj ; 3 uses
  %i.fn = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i117.1 = load ptr, ptr %i.dn, align 8
  %i.fo = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.fk, ptr noundef %1, ptr %.val.i117.1, i32 noundef %.256.i.1231, i32 noundef %.2.i116.1230, i32 noundef %storemerge.i64.i.1, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fn) ; 3 uses
  %.256.i.1 = lshr i32 %i.fo, 3                   ; 3 uses
  %i.fp = icmp eq i32 %storemerge.i64.i.1, -12
  br i1 %i.fp, label %next_eht_scidx.exit69.i.1, label %bb.af, !llvm.loop !202

next_eht_scidx.exit69.i.1:                        ; preds = %bb.af
  %i.fq = load ptr, ptr %i.c, align 8
  %i.fr = sub i32 %.256.i.1, %.357.i
  call void @proto_item_set_len(ptr noundef %i.fq, i32 noundef %i.fr)
  br label %bb.ag

bb.ag:                                            ; preds = %next_eht_scidx.exit69.i.1, %bb.ae
  %.357.i.1 = phi i32 [ %.357.i, %bb.ae ], [ %.256.i.1, %next_eht_scidx.exit69.i.1 ] ; 4 uses
  %.3.i.1 = phi i32 [ %.3.i, %bb.ae ], [ %i.fo, %next_eht_scidx.exit69.i.1 ] ; 2 uses
  %i.fs = and i32 %i.dh, 8
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ai, label %.peel.next.i114.2

.peel.next.i114.2:                                ; preds = %bb.ag
  %i.fu = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.fv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.357.i.1, i32 noundef -1, i32 noundef %i.fu, ptr noundef nonnull %i.c, ptr noundef @.str.8013, i32 noundef 3) ; 2 uses
  %i.fw = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i115.2 = load ptr, ptr %i.dn, align 8
  %i.fx = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.fv, ptr noundef %1, ptr %.val.peel.i115.2, i32 noundef %.357.i.1, i32 noundef %.3.i.1, i32 noundef 12, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fw) ; 2 uses
  %.256.i.2232 = lshr i32 %i.fx, 3
  br label %bb.ah

bb.ah:                                            ; preds = %.peel.next.i114.2, %bb.ah
  %.256.i.2235 = phi i32 [ %.256.i.2232, %.peel.next.i114.2 ], [ %.256.i.2, %bb.ah ]
  %.2.i116.2234 = phi i32 [ %i.fx, %.peel.next.i114.2 ], [ %i.fz, %bb.ah ]
  %.sroa.2879.2.i.2233 = phi i32 [ 12, %.peel.next.i114.2 ], [ %storemerge.i64.i.2, %bb.ah ]
  %storemerge.i64.i.2 = add i32 %.sroa.2879.2.i.2233, %i.dj ; 3 uses
  %i.fy = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i117.2 = load ptr, ptr %i.dn, align 8
  %i.fz = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.fv, ptr noundef %1, ptr %.val.i117.2, i32 noundef %.256.i.2235, i32 noundef %.2.i116.2234, i32 noundef %storemerge.i64.i.2, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.fy) ; 3 uses
  %.256.i.2 = lshr i32 %i.fz, 3                   ; 3 uses
  %i.ga = icmp eq i32 %storemerge.i64.i.2, 252
  br i1 %i.ga, label %next_eht_scidx.exit69.i.2, label %bb.ah, !llvm.loop !202

next_eht_scidx.exit69.i.2:                        ; preds = %bb.ah
  %i.gb = load ptr, ptr %i.c, align 8
  %i.gc = sub i32 %.256.i.2, %.357.i.1
  call void @proto_item_set_len(ptr noundef %i.gb, i32 noundef %i.gc)
  br label %bb.ai

bb.ai:                                            ; preds = %next_eht_scidx.exit69.i.2, %bb.ag
  %.357.i.2 = phi i32 [ %.357.i.1, %bb.ag ], [ %.256.i.2, %next_eht_scidx.exit69.i.2 ] ; 4 uses
  %.3.i.2 = phi i32 [ %.3.i.1, %bb.ag ], [ %i.fz, %next_eht_scidx.exit69.i.2 ]
  %i.gd = and i32 %i.dh, 16
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ak, label %.peel.next.i114.3

.peel.next.i114.3:                                ; preds = %bb.ai
  %i.gf = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.gg = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.357.i.2, i32 noundef -1, i32 noundef %i.gf, ptr noundef nonnull %i.c, ptr noundef @.str.8013, i32 noundef 4) ; 2 uses
  %i.gh = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i115.3 = load ptr, ptr %i.dn, align 8
  %i.gi = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.gg, ptr noundef %1, ptr %.val.peel.i115.3, i32 noundef %.357.i.2, i32 noundef %.3.i.2, i32 noundef 260, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.gh) ; 2 uses
  %.256.i.3236 = lshr i32 %i.gi, 3
  br label %bb.aj

bb.aj:                                            ; preds = %.peel.next.i114.3, %bb.aj
  %.256.i.3239 = phi i32 [ %.256.i.3236, %.peel.next.i114.3 ], [ %.256.i.3, %bb.aj ]
  %.2.i116.3238 = phi i32 [ %i.gi, %.peel.next.i114.3 ], [ %i.gk, %bb.aj ]
  %.sroa.2879.2.i.3237 = phi i32 [ 260, %.peel.next.i114.3 ], [ %storemerge.i64.i.3, %bb.aj ]
  %storemerge.i64.i.3 = add i32 %.sroa.2879.2.i.3237, %i.dj ; 3 uses
  %i.gj = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i117.3 = load ptr, ptr %i.dn, align 8
  %i.gk = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.gg, ptr noundef %1, ptr %.val.i117.3, i32 noundef %.256.i.3239, i32 noundef %.2.i116.3238, i32 noundef %storemerge.i64.i.3, i32 noundef %i.dk, i32 noundef %i.i, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.gj) ; 2 uses
  %.256.i.3 = lshr i32 %i.gk, 3                   ; 3 uses
  %i.gl = icmp eq i32 %storemerge.i64.i.3, 500
  br i1 %i.gl, label %next_eht_scidx.exit69.i.3, label %bb.aj, !llvm.loop !202

next_eht_scidx.exit69.i.3:                        ; preds = %bb.aj
  %i.gm = load ptr, ptr %i.c, align 8
  %i.gn = sub i32 %.256.i.3, %.357.i.2
  call void @proto_item_set_len(ptr noundef %i.gm, i32 noundef %i.gn)
  br label %bb.ak

bb.ak:                                            ; preds = %next_eht_scidx.exit69.i.3, %bb.ai
  %.357.i.3 = phi i32 [ %.357.i.2, %bb.ai ], [ %.256.i.3, %next_eht_scidx.exit69.i.3 ]
  %i.go = sub i32 %.357.i.3, %i.y
  br label %add_ff_eht_su_80MHz_rpt.exit

add_ff_eht_su_80MHz_rpt.exit:                     ; preds = %next_eht_scidx.exit.i122, %bb.ak
  %.053.i = phi i32 [ %i.ex, %next_eht_scidx.exit.i122 ], [ %i.go, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.gp = load ptr, ptr %i.f, align 8
  call void @proto_item_set_len(ptr noundef %i.gp, i32 noundef %.053.i)
  %i.gq = add i32 %.053.i, %i.y
  br label %bb.du

bb.al:                                            ; preds = %bb.c
  %i.gr = icmp eq i8 %i.af, 0                     ; 3 uses
  %i.gs = select i1 %i.gr, i8 4, i8 16            ; 4 uses
  %i.gt = shl i32 %i.y, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8
  %i.gu = zext nneg i16 %i.ai to i32              ; 9 uses
  %i.gv = and i32 %i.gu, 30
  %i.gw = icmp eq i32 %i.gv, 30
  br i1 %i.gw, label %.peel.next224.i, label %.preheader211.i

.preheader211.i:                                  ; preds = %bb.al
  %i.gx = zext nneg i8 %i.gs to i32               ; 4 uses
  %narrow.i123 = add nuw nsw i8 %i.z, 1
  %i.gy = zext nneg i8 %narrow.i123 to i32        ; 8 uses
  %i.gz = zext nneg i8 %. to i32                  ; 8 uses
  %i.ha = zext nneg i8 %.108 to i32               ; 8 uses
  %i.hb = getelementptr i8, ptr %2, i64 416       ; 8 uses
  %i.hc = and i32 %i.gu, 2
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.ax, label %.peel.next.i125

.peel.next224.i:                                  ; preds = %bb.al
  %spec.select.i133 = select i1 %i.gr, ptr @ru_996_tone_160MHz_ng4, ptr @ru_996_tone_160MHz_ng16
  %i.he = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.hf = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.he, ptr noundef nonnull %i.b, ptr noundef @.str.8017, i32 noundef 1) ; 2 uses
  %i.hg = zext nneg i8 %i.gs to i32               ; 2 uses
  %narrow113.i = add nuw nsw i8 %i.z, 1
  %i.hh = zext nneg i8 %narrow113.i to i32        ; 2 uses
  %i.hi = zext nneg i8 %. to i32                  ; 2 uses
  %i.hj = zext nneg i8 %.108 to i32               ; 2 uses
  %i.hk = getelementptr i8, ptr %2, i64 416       ; 2 uses
  %i.hl = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val117.peel.i = load ptr, ptr %i.hk, align 8
  %i.hm = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.hf, ptr noundef %1, ptr %.val117.peel.i, i32 noundef %i.y, i32 noundef %i.gt, i32 noundef -1012, i32 noundef %i.hh, i32 noundef %i.i, i32 noundef %i.hi, i32 noundef %i.hj, i32 noundef %i.hl)
  br label %bb.am

bb.am:                                            ; preds = %bb.av, %.peel.next224.i
  %.sroa.8142.1.i = phi ptr [ %spec.select.i133, %.peel.next224.i ], [ %.sroa.8142.7.ph.i, %bb.av ] ; 8 uses
  %.sroa.54160.0.i = phi i32 [ -1012, %.peel.next224.i ], [ %.sroa.54160.10.ph.i, %bb.av ] ; 5 uses
  %.0.i134 = phi i32 [ %i.hm, %.peel.next224.i ], [ %i.ij, %bb.av ] ; 3 uses
  %.099.i = lshr i32 %.0.i134, 3                  ; 3 uses
  %i.hn = getelementptr i8, ptr %.sroa.8142.1.i, i64 12
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = icmp eq i32 %.sroa.54160.0.i, %i.ho
  br i1 %i.hp, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.hq = getelementptr i8, ptr %.sroa.8142.1.i, i64 16
  %i.hr = load i8, ptr %i.hq, align 4, !range !9, !noundef !10
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %next_eht_scidx.exit.i137, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ht = getelementptr i8, ptr %.sroa.8142.1.i, i64 20 ; 4 uses
  %i.hu = load i32, ptr %i.ht, align 4            ; 2 uses
  %i.hv = icmp eq i32 %.sroa.54160.0.i, %i.hu
  br i1 %i.hv, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr i8, ptr %.sroa.8142.1.i, i64 24
  %i.hx = load i8, ptr %i.hw, align 4, !range !9, !noundef !10
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hz = add i32 %.sroa.54160.0.i, %i.hg
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.ia = getelementptr i8, ptr %.sroa.8142.1.i, i64 28
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = add i32 %i.ib, %.sroa.54160.0.i
  br label %bb.av

bb.as:                                            ; preds = %bb.am
  %i.id = getelementptr i8, ptr %.sroa.8142.1.i, i64 4
  %i.ie = load i8, ptr %i.id, align 4, !range !9, !noundef !10
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ig = getelementptr i8, ptr %.sroa.8142.1.i, i64 8
  %i.ih = load i32, ptr %i.ig, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn.i.i135 = phi i32 [ %i.ih, %bb.at ], [ %i.hg, %bb.as ]
  %storemerge.i.i136 = add i32 %.pn.i.i135, %.sroa.54160.0.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar, %bb.aq, %bb.ao
  %.sroa.8142.7.ph.i = phi ptr [ %i.ht, %bb.ao ], [ %i.ht, %bb.aq ], [ %i.ht, %bb.ar ], [ %.sroa.8142.1.i, %bb.au ]
  %.sroa.54160.10.ph.i = phi i32 [ %i.hu, %bb.ao ], [ %i.hz, %bb.aq ], [ %i.ic, %bb.ar ], [ %storemerge.i.i136, %bb.au ] ; 2 uses
  %i.ii = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val117.i = load ptr, ptr %i.hk, align 8
  %i.ij = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.hf, ptr noundef %1, ptr %.val117.i, i32 noundef %.099.i, i32 noundef %.0.i134, i32 noundef %.sroa.54160.10.ph.i, i32 noundef %i.hh, i32 noundef %i.i, i32 noundef %i.hi, i32 noundef %i.hj, i32 noundef %i.ii)
  br label %bb.am, !llvm.loop !203

next_eht_scidx.exit.i137:                         ; preds = %bb.an
  %i.ik = load ptr, ptr %i.b, align 8
  %i.il = sub i32 %.099.i, %i.y
  call void @proto_item_set_len(ptr noundef %i.ik, i32 noundef %i.il)
  br label %.loopexit212.i

.peel.next.i125:                                  ; preds = %.preheader211.i
  %i.im = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.in = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %i.y, i32 noundef -1, i32 noundef %i.im, ptr noundef nonnull %i.b, ptr noundef @.str.8018, i32 noundef 1) ; 2 uses
  %i.io = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.peel.i = load ptr, ptr %i.hb, align 8
  %i.ip = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.in, ptr noundef %1, ptr %.val116.peel.i, i32 noundef %i.y, i32 noundef %i.gt, i32 noundef -1012, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.io) ; 2 uses
  %.2101.i192 = lshr i32 %i.ip, 3
  br label %bb.aw

bb.aw:                                            ; preds = %.peel.next.i125, %bb.aw
  %.2101.i195 = phi i32 [ %.2101.i192, %.peel.next.i125 ], [ %.2101.i, %bb.aw ]
  %.2.i126194 = phi i32 [ %i.ip, %.peel.next.i125 ], [ %i.ir, %bb.aw ]
  %.sroa.54160.2.i193 = phi i32 [ -1012, %.peel.next.i125 ], [ %storemerge.i119.i, %bb.aw ]
  %storemerge.i119.i = add i32 %.sroa.54160.2.i193, %i.gx ; 3 uses
  %i.iq = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.i = load ptr, ptr %i.hb, align 8
  %i.ir = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.in, ptr noundef %1, ptr %.val116.i, i32 noundef %.2101.i195, i32 noundef %.2.i126194, i32 noundef %storemerge.i119.i, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.iq) ; 3 uses
  %.2101.i = lshr i32 %i.ir, 3                    ; 3 uses
  %i.is = icmp eq i32 %storemerge.i119.i, -772
  br i1 %i.is, label %next_eht_scidx.exit124.i, label %bb.aw, !llvm.loop !204

next_eht_scidx.exit124.i:                         ; preds = %bb.aw
  %i.it = load ptr, ptr %i.b, align 8
  %i.iu = sub i32 %.2101.i, %i.y
  call void @proto_item_set_len(ptr noundef %i.it, i32 noundef %i.iu)
  br label %bb.ax

bb.ax:                                            ; preds = %next_eht_scidx.exit124.i, %.preheader211.i
  %.3102.i = phi i32 [ %i.y, %.preheader211.i ], [ %.2101.i, %next_eht_scidx.exit124.i ] ; 4 uses
  %.3.i127 = phi i32 [ %i.gt, %.preheader211.i ], [ %i.ir, %next_eht_scidx.exit124.i ] ; 2 uses
  %i.iv = and i32 %i.gu, 4
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.az, label %.peel.next.i125.1

.peel.next.i125.1:                                ; preds = %bb.ax
  %i.ix = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.iy = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.3102.i, i32 noundef -1, i32 noundef %i.ix, ptr noundef nonnull %i.b, ptr noundef @.str.8018, i32 noundef 2) ; 2 uses
  %i.iz = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.peel.i.1 = load ptr, ptr %i.hb, align 8
  %i.ja = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.iy, ptr noundef %1, ptr %.val116.peel.i.1, i32 noundef %.3102.i, i32 noundef %.3.i127, i32 noundef -764, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.iz) ; 2 uses
  %.2101.i.1196 = lshr i32 %i.ja, 3
  br label %bb.ay

bb.ay:                                            ; preds = %.peel.next.i125.1, %bb.ay
  %.2101.i.1199 = phi i32 [ %.2101.i.1196, %.peel.next.i125.1 ], [ %.2101.i.1, %bb.ay ]
  %.2.i126.1198 = phi i32 [ %i.ja, %.peel.next.i125.1 ], [ %i.jc, %bb.ay ]
  %.sroa.54160.2.i.1197 = phi i32 [ -764, %.peel.next.i125.1 ], [ %storemerge.i119.i.1, %bb.ay ]
  %storemerge.i119.i.1 = add i32 %.sroa.54160.2.i.1197, %i.gx ; 3 uses
  %i.jb = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.i.1 = load ptr, ptr %i.hb, align 8
  %i.jc = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.iy, ptr noundef %1, ptr %.val116.i.1, i32 noundef %.2101.i.1199, i32 noundef %.2.i126.1198, i32 noundef %storemerge.i119.i.1, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.jb) ; 3 uses
  %.2101.i.1 = lshr i32 %i.jc, 3                  ; 3 uses
  %i.jd = icmp eq i32 %storemerge.i119.i.1, -524
  br i1 %i.jd, label %next_eht_scidx.exit124.i.1, label %bb.ay, !llvm.loop !204

next_eht_scidx.exit124.i.1:                       ; preds = %bb.ay
  %i.je = load ptr, ptr %i.b, align 8
  %i.jf = sub i32 %.2101.i.1, %.3102.i
  call void @proto_item_set_len(ptr noundef %i.je, i32 noundef %i.jf)
  br label %bb.az

bb.az:                                            ; preds = %next_eht_scidx.exit124.i.1, %bb.ax
  %.3102.i.1 = phi i32 [ %.3102.i, %bb.ax ], [ %.2101.i.1, %next_eht_scidx.exit124.i.1 ] ; 4 uses
  %.3.i127.1 = phi i32 [ %.3.i127, %bb.ax ], [ %i.jc, %next_eht_scidx.exit124.i.1 ] ; 2 uses
  %i.jg = and i32 %i.gu, 8
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bb, label %.peel.next.i125.2

.peel.next.i125.2:                                ; preds = %bb.az
  %i.ji = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.jj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.3102.i.1, i32 noundef -1, i32 noundef %i.ji, ptr noundef nonnull %i.b, ptr noundef @.str.8018, i32 noundef 3) ; 2 uses
  %i.jk = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.peel.i.2 = load ptr, ptr %i.hb, align 8
  %i.jl = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.jj, ptr noundef %1, ptr %.val116.peel.i.2, i32 noundef %.3102.i.1, i32 noundef %.3.i127.1, i32 noundef -500, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.jk) ; 2 uses
  %.2101.i.2200 = lshr i32 %i.jl, 3
  br label %bb.ba

bb.ba:                                            ; preds = %.peel.next.i125.2, %bb.ba
  %.2101.i.2203 = phi i32 [ %.2101.i.2200, %.peel.next.i125.2 ], [ %.2101.i.2, %bb.ba ]
  %.2.i126.2202 = phi i32 [ %i.jl, %.peel.next.i125.2 ], [ %i.jn, %bb.ba ]
  %.sroa.54160.2.i.2201 = phi i32 [ -500, %.peel.next.i125.2 ], [ %storemerge.i119.i.2, %bb.ba ]
  %storemerge.i119.i.2 = add i32 %.sroa.54160.2.i.2201, %i.gx ; 3 uses
  %i.jm = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.i.2 = load ptr, ptr %i.hb, align 8
  %i.jn = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.jj, ptr noundef %1, ptr %.val116.i.2, i32 noundef %.2101.i.2203, i32 noundef %.2.i126.2202, i32 noundef %storemerge.i119.i.2, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.jm) ; 3 uses
  %.2101.i.2 = lshr i32 %i.jn, 3                  ; 3 uses
  %i.jo = icmp eq i32 %storemerge.i119.i.2, -260
  br i1 %i.jo, label %next_eht_scidx.exit124.i.2, label %bb.ba, !llvm.loop !204

next_eht_scidx.exit124.i.2:                       ; preds = %bb.ba
  %i.jp = load ptr, ptr %i.b, align 8
  %i.jq = sub i32 %.2101.i.2, %.3102.i.1
  call void @proto_item_set_len(ptr noundef %i.jp, i32 noundef %i.jq)
  br label %bb.bb

bb.bb:                                            ; preds = %next_eht_scidx.exit124.i.2, %bb.az
  %.3102.i.2 = phi i32 [ %.3102.i.1, %bb.az ], [ %.2101.i.2, %next_eht_scidx.exit124.i.2 ] ; 4 uses
  %.3.i127.2 = phi i32 [ %.3.i127.1, %bb.az ], [ %i.jn, %next_eht_scidx.exit124.i.2 ] ; 2 uses
  %i.jr = and i32 %i.gu, 16
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.loopexit212.i, label %.peel.next.i125.3

.peel.next.i125.3:                                ; preds = %bb.bb
  %i.jt = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.ju = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.3102.i.2, i32 noundef -1, i32 noundef %i.jt, ptr noundef nonnull %i.b, ptr noundef @.str.8018, i32 noundef 4) ; 2 uses
  %i.jv = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.peel.i.3 = load ptr, ptr %i.hb, align 8
  %i.jw = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ju, ptr noundef %1, ptr %.val116.peel.i.3, i32 noundef %.3102.i.2, i32 noundef %.3.i127.2, i32 noundef -252, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.jv) ; 2 uses
  %.2101.i.3204 = lshr i32 %i.jw, 3
  br label %bb.bc

bb.bc:                                            ; preds = %.peel.next.i125.3, %bb.bc
  %.2101.i.3207 = phi i32 [ %.2101.i.3204, %.peel.next.i125.3 ], [ %.2101.i.3, %bb.bc ]
  %.2.i126.3206 = phi i32 [ %i.jw, %.peel.next.i125.3 ], [ %i.jy, %bb.bc ]
  %.sroa.54160.2.i.3205 = phi i32 [ -252, %.peel.next.i125.3 ], [ %storemerge.i119.i.3, %bb.bc ]
  %storemerge.i119.i.3 = add i32 %.sroa.54160.2.i.3205, %i.gx ; 3 uses
  %i.jx = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val116.i.3 = load ptr, ptr %i.hb, align 8
  %i.jy = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.ju, ptr noundef %1, ptr %.val116.i.3, i32 noundef %.2101.i.3207, i32 noundef %.2.i126.3206, i32 noundef %storemerge.i119.i.3, i32 noundef %i.gy, i32 noundef %i.i, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.jx) ; 3 uses
  %.2101.i.3 = lshr i32 %i.jy, 3                  ; 3 uses
  %i.jz = icmp eq i32 %storemerge.i119.i.3, -12
  br i1 %i.jz, label %next_eht_scidx.exit124.i.3, label %bb.bc, !llvm.loop !204

next_eht_scidx.exit124.i.3:                       ; preds = %bb.bc
  %i.ka = load ptr, ptr %i.b, align 8
  %i.kb = sub i32 %.2101.i.3, %.3102.i.2
  call void @proto_item_set_len(ptr noundef %i.ka, i32 noundef %i.kb)
  br label %.loopexit212.i

.loopexit212.i:                                   ; preds = %bb.bb, %next_eht_scidx.exit124.i.3, %next_eht_scidx.exit.i137
  %.4103.i = phi i32 [ %.099.i, %next_eht_scidx.exit.i137 ], [ %.3102.i.2, %bb.bb ], [ %.2101.i.3, %next_eht_scidx.exit124.i.3 ] ; 7 uses
  %.4.i = phi i32 [ %.0.i134, %next_eht_scidx.exit.i137 ], [ %.3.i127.2, %bb.bb ], [ %i.jy, %next_eht_scidx.exit124.i.3 ] ; 3 uses
  %i.kc = and i32 %i.gu, 480
  %i.kd = icmp eq i32 %i.kc, 480
  br i1 %i.kd, label %.peel.next236.i, label %.preheader.i130

.preheader.i130:                                  ; preds = %.loopexit212.i
  %i.ke = zext nneg i8 %i.gs to i32               ; 4 uses
  %narrow109.i = add nuw nsw i8 %i.z, 1
  %i.kf = zext nneg i8 %narrow109.i to i32        ; 8 uses
  %i.kg = zext nneg i8 %. to i32                  ; 8 uses
  %i.kh = zext nneg i8 %.108 to i32               ; 8 uses
  %i.ki = getelementptr i8, ptr %2, i64 416       ; 8 uses
  %i.kj = and i32 %i.gu, 32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.bo, label %.peel.next228.i

.peel.next236.i:                                  ; preds = %.loopexit212.i
  %spec.select210.i = select i1 %i.gr, ptr getelementptr inbounds nuw (i8, ptr @ru_996_tone_160MHz_ng4, i64 40), ptr getelementptr inbounds nuw (i8, ptr @ru_996_tone_160MHz_ng16, i64 100)
  %i.kl = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.km = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.4103.i, i32 noundef -1, i32 noundef %i.kl, ptr noundef nonnull %i.b, ptr noundef @.str.8017, i32 noundef 2) ; 2 uses
  %i.kn = zext nneg i8 %i.gs to i32               ; 2 uses
  %narrow111.i = add nuw nsw i8 %i.z, 1
  %i.ko = zext nneg i8 %narrow111.i to i32        ; 2 uses
  %i.kp = zext nneg i8 %. to i32                  ; 2 uses
  %i.kq = zext nneg i8 %.108 to i32               ; 2 uses
  %i.kr = getelementptr i8, ptr %2, i64 416       ; 2 uses
  %i.ks = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val115.peel.i = load ptr, ptr %i.kr, align 8
  %i.kt = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.km, ptr noundef %1, ptr %.val115.peel.i, i32 noundef %.4103.i, i32 noundef %.4.i, i32 noundef 12, i32 noundef %i.ko, i32 noundef %i.i, i32 noundef %i.kp, i32 noundef %i.kq, i32 noundef %i.ks)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bm, %.peel.next236.i
  %.sroa.8142.4.i = phi ptr [ %spec.select210.i, %.peel.next236.i ], [ %.sroa.8142.11.ph.i, %bb.bm ] ; 8 uses
  %.sroa.54160.5.i = phi i32 [ 12, %.peel.next236.i ], [ %.sroa.54160.14.ph.i, %bb.bm ] ; 5 uses
  %.5.i = phi i32 [ %i.kt, %.peel.next236.i ], [ %i.lq, %bb.bm ] ; 2 uses
  %.5104.i = lshr i32 %.5.i, 3                    ; 3 uses
  %i.ku = getelementptr i8, ptr %.sroa.8142.4.i, i64 12
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = icmp eq i32 %.sroa.54160.5.i, %i.kv
  br i1 %i.kw, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.kx = getelementptr i8, ptr %.sroa.8142.4.i, i64 16
  %i.ky = load i8, ptr %i.kx, align 4, !range !9, !noundef !10
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %next_eht_scidx.exit131.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.la = getelementptr i8, ptr %.sroa.8142.4.i, i64 20 ; 4 uses
  %i.lb = load i32, ptr %i.la, align 4            ; 2 uses
  %i.lc = icmp eq i32 %.sroa.54160.5.i, %i.lb
  br i1 %i.lc, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr i8, ptr %.sroa.8142.4.i, i64 24
  %i.le = load i8, ptr %i.ld, align 4, !range !9, !noundef !10
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lg = add i32 %.sroa.54160.5.i, %i.kn
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %i.lh = getelementptr i8, ptr %.sroa.8142.4.i, i64 28
  %i.li = load i32, ptr %i.lh, align 4
  %i.lj = add i32 %i.li, %.sroa.54160.5.i
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bd
  %i.lk = getelementptr i8, ptr %.sroa.8142.4.i, i64 4
  %i.ll = load i8, ptr %i.lk, align 4, !range !9, !noundef !10
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ln = getelementptr i8, ptr %.sroa.8142.4.i, i64 8
  %i.lo = load i32, ptr %i.ln, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn.i125.i = phi i32 [ %i.lo, %bb.bk ], [ %i.kn, %bb.bj ]
  %storemerge.i126.i = add i32 %.pn.i125.i, %.sroa.54160.5.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi, %bb.bh, %bb.bf
  %.sroa.8142.11.ph.i = phi ptr [ %i.la, %bb.bf ], [ %i.la, %bb.bh ], [ %i.la, %bb.bi ], [ %.sroa.8142.4.i, %bb.bl ]
  %.sroa.54160.14.ph.i = phi i32 [ %i.lb, %bb.bf ], [ %i.lg, %bb.bh ], [ %i.lj, %bb.bi ], [ %storemerge.i126.i, %bb.bl ] ; 2 uses
  %i.lp = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val115.i = load ptr, ptr %i.kr, align 8
  %i.lq = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.km, ptr noundef %1, ptr %.val115.i, i32 noundef %.5104.i, i32 noundef %.5.i, i32 noundef %.sroa.54160.14.ph.i, i32 noundef %i.ko, i32 noundef %i.i, i32 noundef %i.kp, i32 noundef %i.kq, i32 noundef %i.lp)
  br label %bb.bd, !llvm.loop !205

next_eht_scidx.exit131.i:                         ; preds = %bb.be
  %i.lr = load ptr, ptr %i.b, align 8
  %i.ls = sub i32 %.5104.i, %.4103.i
  call void @proto_item_set_len(ptr noundef %i.lr, i32 noundef %i.ls)
  br label %add_ff_eht_su_160MHz_rpt.exit

.peel.next228.i:                                  ; preds = %.preheader.i130
  %i.lt = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.lu = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.4103.i, i32 noundef -1, i32 noundef %i.lt, ptr noundef nonnull %i.b, ptr noundef @.str.8019, i32 noundef 5) ; 2 uses
  %i.lv = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i131 = load ptr, ptr %i.ki, align 8
  %i.lw = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.lu, ptr noundef %1, ptr %.val.peel.i131, i32 noundef %.4103.i, i32 noundef %.4.i, i32 noundef 12, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.lv) ; 2 uses
  %.7106.i208 = lshr i32 %i.lw, 3
  br label %bb.bn

bb.bn:                                            ; preds = %.peel.next228.i, %bb.bn
  %.7106.i211 = phi i32 [ %.7106.i208, %.peel.next228.i ], [ %.7106.i, %bb.bn ]
  %.7.i210 = phi i32 [ %i.lw, %.peel.next228.i ], [ %i.ly, %bb.bn ]
  %.sroa.54160.7.i209 = phi i32 [ 12, %.peel.next228.i ], [ %storemerge.i133.i, %bb.bn ]
  %storemerge.i133.i = add i32 %.sroa.54160.7.i209, %i.ke ; 3 uses
  %i.lx = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i132 = load ptr, ptr %i.ki, align 8
  %i.ly = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.lu, ptr noundef %1, ptr %.val.i132, i32 noundef %.7106.i211, i32 noundef %.7.i210, i32 noundef %storemerge.i133.i, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.lx) ; 3 uses
  %.7106.i = lshr i32 %i.ly, 3                    ; 3 uses
  %i.lz = icmp eq i32 %storemerge.i133.i, 252
  br i1 %i.lz, label %next_eht_scidx.exit138.i, label %bb.bn, !llvm.loop !206

next_eht_scidx.exit138.i:                         ; preds = %bb.bn
  %i.ma = load ptr, ptr %i.b, align 8
  %i.mb = sub i32 %.7106.i, %.4103.i
  call void @proto_item_set_len(ptr noundef %i.ma, i32 noundef %i.mb)
  br label %bb.bo

bb.bo:                                            ; preds = %next_eht_scidx.exit138.i, %.preheader.i130
  %.8107.i = phi i32 [ %.4103.i, %.preheader.i130 ], [ %.7106.i, %next_eht_scidx.exit138.i ] ; 4 uses
  %.8.i = phi i32 [ %.4.i, %.preheader.i130 ], [ %i.ly, %next_eht_scidx.exit138.i ] ; 2 uses
  %i.mc = and i32 %i.gu, 64
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bq, label %.peel.next228.i.1

.peel.next228.i.1:                                ; preds = %bb.bo
  %i.me = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.mf = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.8107.i, i32 noundef -1, i32 noundef %i.me, ptr noundef nonnull %i.b, ptr noundef @.str.8019, i32 noundef 6) ; 2 uses
  %i.mg = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i131.1 = load ptr, ptr %i.ki, align 8
  %i.mh = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.mf, ptr noundef %1, ptr %.val.peel.i131.1, i32 noundef %.8107.i, i32 noundef %.8.i, i32 noundef 260, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.mg) ; 2 uses
  %.7106.i.1212 = lshr i32 %i.mh, 3
  br label %bb.bp

bb.bp:                                            ; preds = %.peel.next228.i.1, %bb.bp
  %.7106.i.1215 = phi i32 [ %.7106.i.1212, %.peel.next228.i.1 ], [ %.7106.i.1, %bb.bp ]
  %.7.i.1214 = phi i32 [ %i.mh, %.peel.next228.i.1 ], [ %i.mj, %bb.bp ]
  %.sroa.54160.7.i.1213 = phi i32 [ 260, %.peel.next228.i.1 ], [ %storemerge.i133.i.1, %bb.bp ]
  %storemerge.i133.i.1 = add i32 %.sroa.54160.7.i.1213, %i.ke ; 3 uses
  %i.mi = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i132.1 = load ptr, ptr %i.ki, align 8
  %i.mj = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.mf, ptr noundef %1, ptr %.val.i132.1, i32 noundef %.7106.i.1215, i32 noundef %.7.i.1214, i32 noundef %storemerge.i133.i.1, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.mi) ; 3 uses
  %.7106.i.1 = lshr i32 %i.mj, 3                  ; 3 uses
  %i.mk = icmp eq i32 %storemerge.i133.i.1, 500
  br i1 %i.mk, label %next_eht_scidx.exit138.i.1, label %bb.bp, !llvm.loop !206

next_eht_scidx.exit138.i.1:                       ; preds = %bb.bp
  %i.ml = load ptr, ptr %i.b, align 8
  %i.mm = sub i32 %.7106.i.1, %.8107.i
  call void @proto_item_set_len(ptr noundef %i.ml, i32 noundef %i.mm)
  br label %bb.bq

bb.bq:                                            ; preds = %next_eht_scidx.exit138.i.1, %bb.bo
  %.8107.i.1 = phi i32 [ %.8107.i, %bb.bo ], [ %.7106.i.1, %next_eht_scidx.exit138.i.1 ] ; 4 uses
  %.8.i.1 = phi i32 [ %.8.i, %bb.bo ], [ %i.mj, %next_eht_scidx.exit138.i.1 ] ; 2 uses
  %i.mn = and i32 %i.gu, 128
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.bs, label %.peel.next228.i.2

.peel.next228.i.2:                                ; preds = %bb.bq
  %i.mp = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.mq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.8107.i.1, i32 noundef -1, i32 noundef %i.mp, ptr noundef nonnull %i.b, ptr noundef @.str.8019, i32 noundef 7) ; 2 uses
  %i.mr = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i131.2 = load ptr, ptr %i.ki, align 8
  %i.ms = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.mq, ptr noundef %1, ptr %.val.peel.i131.2, i32 noundef %.8107.i.1, i32 noundef %.8.i.1, i32 noundef 524, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.mr) ; 2 uses
  %.7106.i.2216 = lshr i32 %i.ms, 3
  br label %bb.br

bb.br:                                            ; preds = %.peel.next228.i.2, %bb.br
  %.7106.i.2219 = phi i32 [ %.7106.i.2216, %.peel.next228.i.2 ], [ %.7106.i.2, %bb.br ]
  %.7.i.2218 = phi i32 [ %i.ms, %.peel.next228.i.2 ], [ %i.mu, %bb.br ]
  %.sroa.54160.7.i.2217 = phi i32 [ 524, %.peel.next228.i.2 ], [ %storemerge.i133.i.2, %bb.br ]
  %storemerge.i133.i.2 = add i32 %.sroa.54160.7.i.2217, %i.ke ; 3 uses
  %i.mt = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i132.2 = load ptr, ptr %i.ki, align 8
  %i.mu = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.mq, ptr noundef %1, ptr %.val.i132.2, i32 noundef %.7106.i.2219, i32 noundef %.7.i.2218, i32 noundef %storemerge.i133.i.2, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.mt) ; 3 uses
  %.7106.i.2 = lshr i32 %i.mu, 3                  ; 3 uses
  %i.mv = icmp eq i32 %storemerge.i133.i.2, 764
  br i1 %i.mv, label %next_eht_scidx.exit138.i.2, label %bb.br, !llvm.loop !206

next_eht_scidx.exit138.i.2:                       ; preds = %bb.br
  %i.mw = load ptr, ptr %i.b, align 8
  %i.mx = sub i32 %.7106.i.2, %.8107.i.1
  call void @proto_item_set_len(ptr noundef %i.mw, i32 noundef %i.mx)
  br label %bb.bs

bb.bs:                                            ; preds = %next_eht_scidx.exit138.i.2, %bb.bq
  %.8107.i.2 = phi i32 [ %.8107.i.1, %bb.bq ], [ %.7106.i.2, %next_eht_scidx.exit138.i.2 ] ; 4 uses
  %.8.i.2 = phi i32 [ %.8.i.1, %bb.bq ], [ %i.mu, %next_eht_scidx.exit138.i.2 ]
  %i.my = icmp samesign ult i16 %i.ai, 256
  br i1 %i.my, label %add_ff_eht_su_160MHz_rpt.exit, label %.peel.next228.i.3

.peel.next228.i.3:                                ; preds = %bb.bs
  %i.mz = load i32, ptr @ett_eht_beamforming_rpt_ru_index, align 4
  %i.na = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.am, ptr noundef %1, i32 noundef %.8107.i.2, i32 noundef -1, i32 noundef %i.mz, ptr noundef nonnull %i.b, ptr noundef @.str.8019, i32 noundef 8) ; 2 uses
  %i.nb = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.peel.i131.3 = load ptr, ptr %i.ki, align 8
  %i.nc = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.na, ptr noundef %1, ptr %.val.peel.i131.3, i32 noundef %.8107.i.2, i32 noundef %.8.i.2, i32 noundef 772, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.nb) ; 2 uses
  %.7106.i.3220 = lshr i32 %i.nc, 3
  br label %bb.bt

bb.bt:                                            ; preds = %.peel.next228.i.3, %bb.bt
  %.7106.i.3223 = phi i32 [ %.7106.i.3220, %.peel.next228.i.3 ], [ %.7106.i.3, %bb.bt ]
  %.7.i.3222 = phi i32 [ %i.nc, %.peel.next228.i.3 ], [ %i.ne, %bb.bt ]
  %.sroa.54160.7.i.3221 = phi i32 [ 772, %.peel.next228.i.3 ], [ %storemerge.i133.i.3, %bb.bt ]
  %storemerge.i133.i.3 = add i32 %.sroa.54160.7.i.3221, %i.ke ; 3 uses
  %i.nd = load i32, ptr @hf_ieee80211_eht_compressed_beamform_scidx, align 4
  %.val.i132.3 = load ptr, ptr %i.ki, align 8
  %i.ne = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.na, ptr noundef %1, ptr %.val.i132.3, i32 noundef %.7106.i.3223, i32 noundef %.7.i.3222, i32 noundef %storemerge.i133.i.3, i32 noundef %i.kf, i32 noundef %i.i, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.nd) ; 2 uses
  %.7106.i.3 = lshr i32 %i.ne, 3                  ; 3 uses
  %i.nf = icmp eq i32 %storemerge.i133.i.3, 1012
  br i1 %i.nf, label %next_eht_scidx.exit138.i.3, label %bb.bt, !llvm.loop !206

next_eht_scidx.exit138.i.3:                       ; preds = %bb.bt
  %i.ng = load ptr, ptr %i.b, align 8
  %i.nh = sub i32 %.7106.i.3, %.8107.i.2
  call void @proto_item_set_len(ptr noundef %i.ng, i32 noundef %i.nh)
  br label %add_ff_eht_su_160MHz_rpt.exit

add_ff_eht_su_160MHz_rpt.exit:                    ; preds = %bb.bs, %next_eht_scidx.exit138.i.3, %next_eht_scidx.exit131.i
  %.9.i = phi i32 [ %.5104.i, %next_eht_scidx.exit131.i ], [ %.8107.i.2, %bb.bs ], [ %.7106.i.3, %next_eht_scidx.exit138.i.3 ] ; 2 uses
  %i.ni = sub i32 %.9.i, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.nj = load ptr, ptr %i.f, align 8
  call void @proto_item_set_len(ptr noundef %i.nj, i32 noundef %i.ni)
  br label %bb.du
end_hunk_0
